//
//  ViewController.swift
//  Dressing Simulator
//
//  Created by Aaron on 11/6/19.
//  Copyright © 2019 Aaron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bustSlider: UISlider!
    @IBOutlet weak var bustSliderLabel: UILabel!
    @IBOutlet weak var waistSlider: CustomSlider!
    @IBOutlet weak var waistSliderLabel: UILabel!
    @IBOutlet weak var hipSlider: CustomSlider!
    @IBOutlet weak var hipSliderLabel: UILabel!
    @IBOutlet weak var helmSlider: CustomSlider!
    @IBOutlet weak var helSliderLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Grab all slider values as soon as app opens
        populateSliderLabel()
        
    }
    
    

    //reads slider values and shows them on the label
    @IBAction func bustSliderAction(_ sender: Any) {
        self.bustSliderLabel.text = String(format: "%.1f",self.bustSlider.value)
    }

    @IBAction func waistSliderAction(_ sender: Any) {
        self.waistSliderLabel.text = String(format: "%.1f",self.waistSlider.value)
    }
    
    @IBAction func hipSliderAction(_ sender: Any) {
        self.hipSliderLabel.text = String(format: "%.1f",self.hipSlider.value)
    }
    
    @IBAction func helpSliderAction(_ sender: Any) {
        self.helSliderLabel.text = String(format: "%.1f",self.helmSlider.value)
    }
    //end of label changes for view
    
    func populateSliderLabel()
    {
        self.bustSliderLabel.text = "\(self.bustSlider.value)"
        self.waistSliderLabel.text = "\(self.waistSlider.value)"
        self.hipSliderLabel.text = "\(self.hipSlider.value)"
        self.helSliderLabel.text = "\(self.helmSlider.value)"
    }
    
}

class CustomSlider : UISlider {
    
    override func trackRect(forBounds bounds: CGRect) -> CGRect {
        let point = CGPoint(x: bounds.minX, y: bounds.midY)
        return CGRect(origin: point, size: CGSize(width: bounds.width, height: 20))
    }
}
