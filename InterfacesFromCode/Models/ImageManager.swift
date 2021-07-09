//
//  ImageManager.swift
//  InterfacesFromCode
//
//  Created by Леонид on 09.07.2021.
//

import UIKit

class ImageManager {
    static var shared = ImageManager()
    
    func getImageFromURL (url: String, completion: @escaping (_ image: UIImage)->()){
        guard let validatedURL = URL(string: url) else { return }
        let session = URLSession.shared
        session.dataTask(with: validatedURL) { (data, response, error) in
            if let data = data, let image = UIImage(data: data){
                DispatchQueue.main.async {
                    completion(image)
                }
            }
        }.resume()
        
    }
}
