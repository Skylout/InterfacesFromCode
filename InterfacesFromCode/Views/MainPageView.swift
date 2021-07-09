//
//  MainPageView.swift
//  InterfacesFromCode
//
//  Created by Леонид on 07.07.2021.
//

import UIKit
import PureLayout

class MainPageView: UIView {
    var tableViewButton: UIButton!
    var imageViewButton: UIButton!
    
    var mustSetupConstraints = true
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        backgroundColor = .white
        
        tableViewButton = UIButton(frame: CGRect.zero)
        tableViewButton.backgroundColor = UIColor.black
        tableViewButton.setTitle("Table View", for: .normal)
        tableViewButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        tableViewButton.setTitleColor(UIColor.white, for: .normal)
        tableViewButton.titleLabel?.numberOfLines = 0
        tableViewButton.layer.cornerRadius = 10.0
        tableViewButton.startAnimatingPressActions()
        
        self.addSubview(tableViewButton)
        
        imageViewButton = UIButton(frame: CGRect.zero)
        imageViewButton.backgroundColor = UIColor.black
        imageViewButton.setTitle("Image View", for: .normal)
        imageViewButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        imageViewButton.setTitleColor(.white, for: .normal)
        imageViewButton.titleLabel?.numberOfLines = 0
        imageViewButton.layer.cornerRadius = 10.0
        imageViewButton.startAnimatingPressActions()

        self.addSubview(imageViewButton)
    }
    
    override func updateConstraints() {
        if mustSetupConstraints {
            tableViewButton.autoPinEdge(toSuperviewEdge: .left, withInset: UIScreen.main.bounds.width/4)
            tableViewButton.autoPinEdge(toSuperviewEdge: .right, withInset: UIScreen.main.bounds.width/4)
            tableViewButton.autoPinEdge(toSuperviewEdge: .top, withInset: UIScreen.main.bounds.height/3+50)
            
            imageViewButton.autoPinEdge(toSuperviewEdge: .left, withInset: UIScreen.main.bounds.width/4)
            imageViewButton.autoPinEdge(toSuperviewEdge: .right, withInset: UIScreen.main.bounds.width/4)
            imageViewButton.autoPinEdge(toSuperviewEdge: .bottom, withInset: UIScreen.main.bounds.height/3+50)
            mustSetupConstraints = false
        }
        super.updateConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
