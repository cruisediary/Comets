//
//  ViewController.swift
//  Example
//
//  Created by Cruz on 18/10/2018.
//  Copyright © 2018 Cruz. All rights reserved.
//

import UIKit
import Comets
import Flags
import Gradients
import SnapKit

class ViewController: UIViewController {
    
    let backgroundLayer = Gradients.amourAmour.layer
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = Flag(countryCode: "SE")?.emoji
        label.font = UIFont.systemFont(ofSize: 36)
        label.textColor = .white
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.layer.addSublayer(backgroundLayer)
        view.addSubview(titleLabel)
        titleLabel.snp.makeConstraints { maker in
            maker.center.equalToSuperview()
        }
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        backgroundLayer.frame = view.bounds
    }
}

