# Comets
☄️ Comets: Animating Particles in Swift

![Swift](https://img.shields.io/badge/Swift-4.2-orange.svg)
[![Version](https://img.shields.io/cocoapods/v/Comets.svg?style=flat)](http://cocoapods.org/pods/Comets)
[![License](https://img.shields.io/cocoapods/l/Comets.svg?style=flat)](http://cocoapods.org/pods/Comets)
[![Platform](https://img.shields.io/cocoapods/p/Comets.svg?style=flat)](http://cocoapods.org/pods/Comets)

![comet.gif](README/comet.gif)

animation made by [kevin](https://medium.com/@kwijst) as part of Voicy design

implements **Bennet van der Linden** [medium](https://medium.com/call-voicy/comets-animating-particles-in-swift-3431a7f1b250) Comets: Animating Particles in Swift

## Example
```swift
// Customize your comet
let width = view.bounds.width
let height = view.bounds.height
let comets = [Comet(startPoint: CGPoint(x: 100, y: 0),
                    endPoint: CGPoint(x: 0, y: 100),
                    lineColor: UIColor.white.withAlphaComponent(0.2)),
              Comet(startPoint: CGPoint(x: 0.4 * width, y: 0),
                    endPoint: CGPoint(x: width, y: 0.8 * width),
                    lineColor: UIColor.white.withAlphaComponent(0.2)),
              Comet(startPoint: CGPoint(x: 0.8 * width, y: 0),
                    endPoint: CGPoint(x: width, y: 0.2 * width),
                    lineColor: UIColor.white.withAlphaComponent(0.2)),
              Comet(startPoint: CGPoint(x: width, y: 0.2 * height),
                    endPoint: CGPoint(x: 0, y: 0.25 * height),
                    lineColor: UIColor.white.withAlphaComponent(0.2)),
              Comet(startPoint: CGPoint(x: 0, y: height - 0.8 * width),
                    endPoint: CGPoint(x: 0.6 * width, y: height),
                    lineColor: UIColor.white.withAlphaComponent(0.2)),
              Comet(startPoint: CGPoint(x: width - 100, y: height),
                    endPoint: CGPoint(x: width, y: height - 100),
                    lineColor: UIColor.white.withAlphaComponent(0.2)),
              Comet(startPoint: CGPoint(x: 0, y: 0.8 * height),
                    endPoint: CGPoint(x: width, y: 0.75 * height),
                    lineColor: UIColor.white.withAlphaComponent(0.2))]

// draw line track and animate
for comet in comets {
    view.layer.addSublayer(comet.drawLine())
    view.layer.addSublayer(comet.animate())
}
```

![comet.gif](README/Comets.gif)

## Requirements
Comets is written in  Xcode 10, Swift 4.2, iOS 9.0 Required

## 📲 Installation
Comets is available through [Cocoapods](http://cocoapods.org)

### Cocoapods
```ruby
pod "Comets"
```

## ❤️ Contribution
Pull requests are always welcomed 🏄🏼

## 👨‍💻 Author
cruz, cruzdiary@gmail.com

## 🛡 License

Comets is available under the MIT license. See the LICENSE file for more info.
