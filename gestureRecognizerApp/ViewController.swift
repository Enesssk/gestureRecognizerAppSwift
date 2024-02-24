//
//  ViewController.swift
//  gestureRecognizerApp
//
//  Created by Enes Kala on 25.02.2024.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var myNameLabel: UILabel!
    
    var isRick = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(clickedImage))
        
        imageView.addGestureRecognizer(gestureRecognizer)
        
    }


    @IBOutlet weak var imageView: UIImageView!
    
    @objc func clickedImage(){
        
        if (isRick == true){
            
            imageView.image = UIImage(named: "twd")
            myNameLabel.text = "Rick Grimes"
            
            isRick = false
            
        }else{
            
            imageView.image = UIImage(named: "prisonbreak")
            myNameLabel.text = "Michael Scofield"
            
            isRick = true
        }
        
        
    }
    
}

