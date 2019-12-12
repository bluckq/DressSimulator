//
//  ViewController.swift
//  Dressing Simulator
//
//  Created by Aaron on 11/6/19.
//  Copyright © 2019 Aaron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bustSlider: CustomSlider!
    @IBOutlet weak var bustSliderLabel: UILabel!
    @IBOutlet weak var waistSlider: CustomSlider!
    @IBOutlet weak var waistSliderLabel: UILabel!
    @IBOutlet weak var hipSlider: CustomSlider!
    @IBOutlet weak var hipSliderLabel: UILabel!
    @IBOutlet weak var helmSlider: CustomSlider!
    @IBOutlet weak var helSliderLabel: UILabel!
    
    
    
    
    @IBAction func nextButton(_ sender: Any) {
      //  let sliderValues = SliderValues()
        
        SliderValues.globalBust = Int(bustSlider.value)
        SliderValues.globalWaist = Int(waistSlider.value)
        SliderValues.globalHip = Int(hipSlider.value)
        
        print(SliderValues.globalBust)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Grab all slider values as soon as app opens
        populateSliderLabel()
        
    }
    
    

    //reads slider values and shows them on the label
    @IBAction func bustSliderAction(_ sender: Any) {
        self.bustSliderLabel.text = String(format: "%i",Int(self.bustSlider.value))
        
    //.1f
    }
    
    

    @IBAction func waistSliderAction(_ sender: Any) {
        self.waistSliderLabel.text = String(format: "%i",Int(self.waistSlider.value))
    }
    
    @IBAction func hipSliderAction(_ sender: Any) {
        self.hipSliderLabel.text = String(format: "%i",Int(self.hipSlider.value))
    }
    
    @IBAction func helpSliderAction(_ sender: Any) {
        self.helSliderLabel.text = String(format: "%i",Int(self.helmSlider.value))
    }
    //end of label changes for view
    
    func populateSliderLabel()
    {
        self.bustSliderLabel.text = "\(Int(self.bustSlider.value))"
        self.waistSliderLabel.text = "\(Int(self.waistSlider.value))"
        self.hipSliderLabel.text = "\(Int(self.hipSlider.value))"
        self.helSliderLabel.text = "\(Int(self.helmSlider.value))"
    }
    
}

class CustomSlider : UISlider {
    
    override func trackRect(forBounds bounds: CGRect) -> CGRect {
        let point = CGPoint(x: bounds.minX, y: bounds.midY)
        return CGRect(origin: point, size: CGSize(width: bounds.width, height: 20))
    }
}
