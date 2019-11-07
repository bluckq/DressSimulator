//
//  SecondViewController.swift
//  Dressing Simulator
//
//  Created by Aaron on 11/6/19.
//  Copyright © 2019 Aaron. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var dressScrollView: UIScrollView!
    
   var images = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        images = [#imageLiteral(resourceName: "Dress1medwhite"),#imageLiteral(resourceName: "Dress2medwhite"),#imageLiteral(resourceName: "Dress1med"),#imageLiteral(resourceName: "Dress2med")]
        
        for i in 0..<images.count {
            let imageView = UIImageView()
            let x = self.view.frame.size.width * CGFloat(i)
            imageView.frame = CGRect(x: x, y: 0, width: self.view.frame.width, height: self.view.frame.height)
            imageView.contentMode = .scaleAspectFit
            imageView.image = images[i]
                    
            dressScrollView.contentSize.width = dressScrollView.frame.size.width * CGFloat(i + 1)
            dressScrollView.addSubview(imageView)
            
            
        }

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
