//
//  SecondViewController.swift
//  Dressing Simulator
//
//  Created by Aaron on 11/6/19.
//  Copyright © 2019 Aaron. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var images = ["dress1","dress2","dress3","dress4"]
    var counter = 0
    
    var smallCounter = 0
    var medCounter = 0
    var largeCounter = 0
    var xlCounter = 0
   // var imageView: UIImageView?
    
    @IBAction func imageButton(_ sender: Any) {
        
        //Function
        var dressSize = sliderToSize()
        
        if(dressSize == 1 && counter == 0) {
            goToVC(viewBoard: "skinnyViewController")

        }
        else if dressSize == 2 && counter == 0{
            goToVC(viewBoard: "mediumViewController")
        }
        else if dressSize == 3 && counter == 0 {
            goToVC(viewBoard: "largeViewController")

        }
        else if dressSize == 4 && counter == 0{
            goToVC(viewBoard: "fattyViewController")

        }
        else if dressSize == 2 && counter == 1
        {
            goToVC(viewBoard: "mediumBlackVC")
        }
        else if dressSize == 3 && counter == 1
        {
            goToVC(viewBoard: "largeBlackVC")
        }
        else if dressSize == 1 && counter == 1
        {
            goToVC(viewBoard: "smallBlackVC")
        }
        else if dressSize == 4 && counter == 1
        {
            goToVC(viewBoard: "xLargeBlackVC")
        }
        
    }
    
    func sliderToSize() -> Int{
        if(SliderValues.globalBust >= 32 && SliderValues.globalBust <= 35) {
            smallCounter+=1
        }
        if(SliderValues.globalBust >= 36 && SliderValues.globalBust <= 39) {
            medCounter+=1
        }
        if(SliderValues.globalBust >= 40 && SliderValues.globalBust <= 43) {
            largeCounter+=1
        }
        if(SliderValues.globalBust >= 44 && SliderValues.globalBust <= 45) {
            xlCounter+=1
        }
        if(SliderValues.globalWaist >= 23 && SliderValues.globalWaist <= 28) {
            smallCounter+=1
        }
        if(SliderValues.globalWaist >= 29 && SliderValues.globalWaist <= 34) {
            medCounter+=1
        }
        if(SliderValues.globalWaist >= 35 && SliderValues.globalWaist <= 40) {
            largeCounter+=1
        }
        if(SliderValues.globalWaist >= 41 && SliderValues.globalWaist <= 48) {
            xlCounter+=1
        }
        if(SliderValues.globalHip >= 33 && SliderValues.globalHip <= 36) {
            smallCounter+=1
        }
        if(SliderValues.globalHip >= 37 && SliderValues.globalHip <= 40) {
            medCounter+=1
        }
        if(SliderValues.globalHip >= 41 && SliderValues.globalHip <= 44) {
            largeCounter+=1
        }
        if(SliderValues.globalHip >= 45 && SliderValues.globalHip <= 48) {
            xlCounter+=1
        }

        let sizeArray = [smallCounter, medCounter, largeCounter, xlCounter]
        var max = 0
        var sizeIndicator = 0
        if(sizeArray[0] > max) {
            max = sizeArray[0]
            sizeIndicator = 1
        }
        if(sizeArray[1] > max) {
            max = sizeArray[1]
            sizeIndicator = 2
        }
        if(sizeArray[2] > max) {
            max = sizeArray[2]
            sizeIndicator = 3
        }
        if(sizeArray[3] > max) {
            max = sizeArray[3]
            sizeIndicator = 4
        }
        //1 = small, 2 = medium, 3 = large, 4 = xl
        return(sizeIndicator)
    }

    
    
    func goToVC(viewBoard: String) {
          
          let storyboard = UIStoryboard(name: "Main", bundle: nil)
          let controller = storyboard.instantiateViewController(withIdentifier: viewBoard)
          self.present(controller, animated: true, completion: nil)
          // Safe Present
          if let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: viewBoard) as? SecondViewController
          {
              present(vc, animated: true, completion: nil)
          }
      }
    
    @IBAction func goRight(_ sender: Any)
    {
        let size = images.count - 1
        if(counter == size) {
          
        }
        else {
          
            counter+=1
            
            populateImageView()
        }
    }
    
    @IBAction func goLeft(_ sender: Any)
    {
        if(counter == 0) {
            
        }
        else {
            counter-=1
            
            populateImageView()
        }
    }

    override func viewDidLoad()
    {
        
        
        populateImageView()
    }
    
    func getImage() -> String
    {
           return images[counter]
    }
    
    func populateImageView()
    {
      //  myImageView.image = UIImage(named: "tick")
        
        let imageName = getImage()
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        
        imageView.frame = CGRect(x: 20, y: 180, width: 374, height: 527)
        self.view.addSubview(imageView)
        
        self.view.bringSubviewToFront( imageView)
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
