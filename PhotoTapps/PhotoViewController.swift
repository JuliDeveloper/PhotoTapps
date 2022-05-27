//
//  PhotoViewController.swift
//  PhotoTapps
//
//  Created by Julia Romanenko on 03.03.2022.
//

import UIKit

class PhotoViewController: UIViewController {
   
    var image: UIImage?
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        photoImageView.image = image
        
    }
    
    @IBAction func shareButton(_ sender: UIButton) {
        
        let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        
        shareController.completionWithItemsHandler = { _, bool, _, _ in
            if bool {
                print("Succes")
            }
        }
        
        present(shareController, animated: true, completion: nil)
        
    }
    
}
