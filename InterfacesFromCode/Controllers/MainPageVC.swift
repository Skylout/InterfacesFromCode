//
//  ViewController.swift
//  InterfacesFromCode
//
//  Created by Леонид on 07.07.2021.
//

import UIKit
import PureLayout

class MainPageVC: UIViewController {

    var mainView: MainPageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView = MainPageView(frame: CGRect.zero)
        self.view.addSubview(mainView)
        
        mainView.autoPinEdgesToSuperviewEdges()
    }

}

