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
        mainView.imageViewButton.addTarget(self, action: #selector(presentImageVC), for: .touchUpInside)
        
        mainView.autoPinEdgesToSuperviewEdges()
    }
    
    @objc func presentImageVC (){
        let imageVC = ImageViewController()
        self.navigationController?.pushViewController(imageVC, animated: true)
    }
}

