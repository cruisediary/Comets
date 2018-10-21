public struct Comet {
    public var startPoint: CGPoint
    public var endPoint: CGPoint
    public var lineColor: UIColor
    
    public init(startPoint: CGPoint, endPoint: CGPoint, lineColor: UIColor) {
        self.startPoint = startPoint
        self.endPoint = endPoint
        self.lineColor = lineColor
    }
    
    public var linePath: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: startPoint)
        path.addLine(to: endPoint)
        return path
    }
    
    public func drawLine() -> CAShapeLayer {
        // create the line as a CAShapeLayer
        let lineLayer = CAShapeLayer()
        lineLayer.path = linePath.cgPath
        lineLayer.lineWidth = 0.5
        lineLayer.strokeColor = lineColor.cgColor
        return lineLayer
    }
    
    public func animate() -> CAEmitterLayer {
        // create emitter
        let emitter = CAEmitterLayer()
        emitter.emitterShape = .point
        emitter.emitterPosition = startPoint
        
        // create comet cell
        let cell = CAEmitterCell()
        cell.contents = contents
        cell.birthRate = 0.2 * Float(Int.random(in: 500 ... 2000 )) / 1000
        cell.lifetime = 10.0
        cell.velocity = 600
        cell.velocityRange = 400
        cell.emissionLongitude = calculateAngle()
        
        // add cell to the emitter
        emitter.emitterCells = [cell]
        return emitter
    }
    
    public var contents: Any? {
        let cometLayer = CAGradientLayer()
        cometLayer.colors = [UIColor.white.withAlphaComponent(0.0).cgColor, UIColor.white.cgColor]
        cometLayer.cornerRadius = 0.25
        cometLayer.frame = CGRect(x: 0, y: 0, width: 80, height: 0.5)
        cometLayer.locations = [0.0, 1.0]
        cometLayer.startPoint = CGPoint(x: 0, y: 0.5)
        cometLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        
        UIGraphicsBeginImageContextWithOptions(cometLayer.bounds.size, cometLayer.isOpaque, 0.0)
        defer { UIGraphicsEndImageContext() }
        guard let context = UIGraphicsGetCurrentContext() else { return nil }
        cometLayer.render(in: context)
        return UIGraphicsGetImageFromCurrentImageContext()?
            .rotate(radians: calculateAngle())?
            .cgImage
    }
    
    public func calculateAngle() -> CGFloat {
        let deltaX = endPoint.x - startPoint.x
        let deltaY = endPoint.y - startPoint.y
        return atan2(deltaY, deltaX)
    }
}
