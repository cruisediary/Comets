public struct Comet {
    public var startPoint: CGPoint
    public var endPoint: CGPoint
    public var lineColor: UIColor
    
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
        lineLayer.lineWidth = 4
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
        cell.contents = UIImage(named: "Comet")?
            .rotate(radians: calculateAngle())?
            .cgImage
        cell.birthRate = 0.2 * Float(Int.random(in: 500 ... 2000 )) / 1000
        cell.lifetime = 10.0
        cell.velocity = 600
        cell.velocityRange = 400
        cell.emissionLongitude = calculateAngle()
        
        // add cell to the emitter
        emitter.emitterCells = [cell]
        return emitter
    }
    
    public func calculateAngle() -> CGFloat {
        let deltaX = endPoint.x - startPoint.x
        let deltaY = endPoint.y - startPoint.y
        return atan2(deltaY, deltaX)
    }
}
