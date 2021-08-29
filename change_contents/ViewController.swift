//
//  ViewController.swift
//  change_contents
//
//  Created by 王昱淇 on 2021/8/24.
//

import UIKit

class ViewController: UIViewController {
  
    

    @IBOutlet weak var mortyImageView: UIImageView!
    
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var pictureView: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    @IBOutlet weak var conerRadiusSlider: UISlider!
    @IBOutlet weak var borderWidthSlider: UISlider!
    @IBOutlet weak var shadowOpacitySlider: UISlider!
    
    @IBOutlet weak var conerRadiusSwitch: UISwitch!
    @IBOutlet weak var borderWidthSwitch: UISwitch!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var alphaLabel: UILabel!
    @IBOutlet weak var conerRadiusLabel: UILabel!
    @IBOutlet weak var borderWidthLabel: UILabel!
    
    
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        colorView.layer.cornerRadius = 30
        pictureView.layer.cornerRadius = 30
        redLabel.text = "0.00"
        greenLabel.text = "0.00"
        blueLabel.text = "0.00"
        alphaLabel.text = "0.00"
        
    }

    @IBAction func changeColor(_ sender: UISlider) {
        mortyImageView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat (greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha:CGFloat(alphaSlider.value))
        
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text =  String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        alphaLabel.text =  String(format: "%.2f", alphaSlider.value)
    }
    
 // switch coner radius on or off and change color
    @IBAction func switchConerRadius(_ sender: Any) {
        if conerRadiusSwitch.isOn {
          conerRadiusSlider.isEnabled = true
            conerRadiusSlider.minimumTrackTintColor = UIColor.systemBrown
            conerRadiusSlider.thumbTintColor = UIColor.systemBrown
        } else if conerRadiusSwitch.isOn == false {
            conerRadiusSlider.isEnabled = false
            conerRadiusSlider.minimumTrackTintColor = UIColor.darkGray
            conerRadiusSlider.thumbTintColor = UIColor.darkGray
        }
    }
    
    
    // switch border width on or off and change color
    @IBAction func switchBorderWidth(_ sender: Any) {
        if borderWidthSwitch.isOn {
            borderWidthSlider.isEnabled = true
            borderWidthSlider.minimumTrackTintColor = UIColor.systemBrown
            borderWidthSlider.thumbTintColor = UIColor.systemBrown
        } else if borderWidthSwitch.isOn == false {
            borderWidthSlider.isEnabled = false
            borderWidthSlider.minimumTrackTintColor = UIColor.darkGray
            borderWidthSlider.thumbTintColor = UIColor.darkGray
        }
    }
    
    
    @IBAction func changeBound(_ sender: UISlider) {
        mortyImageView.layer.cornerRadius = CGFloat(conerRadiusSlider.value)
        conerRadiusLabel.text = String(format: "%.0f", conerRadiusSlider.value)
        
    }
    

    
    @IBAction func changeborderWidth(_ sender: Any) {
        mortyImageView.clipsToBounds = true
        mortyImageView.layer.borderWidth = CGFloat (borderWidthSlider.value)
        mortyImageView.layer.borderColor = UIColor.orange.cgColor
        borderWidthLabel.text = String(format: "%.0f", borderWidthSlider.value)
    }
    
   
    
    // clear coner radius button
    @IBAction func clearConerRadius(_ sender: Any) {
        conerRadiusLabel.text = "0"
        conerRadiusSlider.value = 0
        mortyImageView.layer.cornerRadius = CGFloat(conerRadiusSlider.value)
    }
    
    // clear border width button
    @IBAction func clearborderWidth(_ sender: Any) {
        borderWidthLabel.text = "0"
        borderWidthSlider.value = 0
        mortyImageView.layer.borderWidth = CGFloat(borderWidthSlider.value)
    }
    
    // clear shadow opacity button
    
    @IBAction func clearShadowOpacity(_ sender: Any) {
    }
    
    
}
