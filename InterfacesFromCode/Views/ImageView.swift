//
//  ImageView.swift
//  InterfacesFromCode
//
//  Created by Леонид on 09.07.2021.
//

import UIKit
import PureLayout

class ImageView: UIView {
    var image: UIImageView!

    var mustSetupConstraints = true
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        self.backgroundColor = .white
        
        image = UIImageView()
        image.scalesLargeContentImage = true
        image.layer.borderWidth = 1.0
        image.layer.borderColor = UIColor.gray.cgColor
        image.layer.cornerRadius = 4.0
        self.addSubview(image)
    }
    
    override func updateConstraints() {
        if mustSetupConstraints{
            image.autoPinEdge(toSuperviewEdge: .top, withInset: UIScreen.main.bounds.width/5)
            image.autoPinEdge(toSuperviewEdge: .left, withInset: 10)
            image.autoPinEdge(toSuperviewEdge: .right, withInset: 10)
            image.autoPinEdge(toSuperviewEdge: .bottom, withInset: 30)
            mustSetupConstraints = false
        }
        super.updateConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
