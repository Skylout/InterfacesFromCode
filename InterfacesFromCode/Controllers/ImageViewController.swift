//
//  ImageViewController.swift
//  InterfacesFromCode
//
//  Created by Леонид on 07.07.2021.
//

import UIKit

class ImageViewController: UIViewController {
    var imageView: ImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView = ImageView()
        ImageManager.shared.getImageFromURL(url: "https://pbs.twimg.com/media/E4YjvCcXwAEgvsN?format=jpg&name=large") { recievedImage in
            self.imageView.image.image = recievedImage
        }
        self.view.addSubview(imageView)
        
        imageView.autoPinEdgesToSuperviewEdges()
    }

}
