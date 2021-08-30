//
//  ViewController.swift
//  change_contents
//
//  Created by 王昱淇 on 2021/8/24.
//

import UIKit

class ViewController: UIViewController {
 
    @IBOutlet weak var catImageView: UIImageView!
    
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var pictureView: UIView!
    @IBOutlet weak var gradientView: UIView!
    @IBOutlet weak var shadowView: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    @IBOutlet weak var conerRadiusSlider: UISlider!
    @IBOutlet weak var borderWidthSlider: UISlider!
    @IBOutlet weak var shadowOpacitySlider: UISlider!
    @IBOutlet weak var gradientSlider: UISlider!
    
    @IBOutlet weak var conerRadiusSwitch: UISwitch!
    @IBOutlet weak var borderWidthSwitch: UISwitch!
    @IBOutlet weak var shadowOpacitySwitch: UISwitch!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var alphaLabel: UILabel!
    @IBOutlet weak var conerRadiusLabel: UILabel!
    @IBOutlet weak var borderWidthLabel: UILabel!
    @IBOutlet weak var shadowOpacityLabel: UILabel!
    @IBOutlet weak var gradientLabel: UILabel!
    
    let gradientLayer = CAGradientLayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        colorView.layer.cornerRadius = 30
        pictureView.layer.cornerRadius = 30
        redLabel.text = "0.00"
        greenLabel.text = "0.00"
        blueLabel.text = "0.00"
        alphaLabel.text = "0.00"
        gradientLabel.text = "0.00"

    }

    @IBAction func changeColor(_ sender: UISlider) {
        catImageView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat (greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha:CGFloat(alphaSlider.value))
        
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text =  String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        alphaLabel.text =  String(format: "%.2f", alphaSlider.value)
    }
    
    // cat default color
    @IBAction func defaultColor(_ sender: Any) {
        redSlider.value = 90/255
        greenSlider.value = 201/255
        blueSlider.value = 232/255
        alphaSlider.value = 1
        
        catImageView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat (greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha:CGFloat(alphaSlider.value))
        
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text =  String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        alphaLabel.text =  String(format: "%.2f", alphaSlider.value)
    }
    
    // cat radom color
    @IBAction func randomColor(_ sender: Any) {
        redSlider.value = Float.random(in: 0...1)
        greenSlider.value = Float.random(in: 0...1)
        blueSlider.value = Float.random(in: 0...1)
        alphaSlider.value = Float.random(in: 0...1)
        
        catImageView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat (greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha:CGFloat(alphaSlider.value))
        
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text =  String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        alphaLabel.text =  String(format: "%.2f", alphaSlider.value)
    }
    
    
    @IBAction func changeGradient(_ sender: Any) {
       
        gradientLayer.colors = [UIColor(red: 246/255, green: 190/255, blue: 214/255, alpha: 1).cgColor,UIColor(red: 180/255, green: 211/255, blue: 246/255, alpha: 1).cgColor]
        gradientLayer.frame = CGRect(x: 0, y: 0, width: 414, height: 896)
        gradientLayer.locations = [0,NSNumber(value: gradientSlider.value)]
        
        gradientView.layer.addSublayer(gradientLayer)
      
        gradientLabel.text = String(format: "%.2f", gradientSlider.value)
     
    }
    
    @IBAction func changeWhiteBackground(_ sender: Any) {

        gradientLayer.colors = [UIColor.white.cgColor]
        gradientSlider.value = 0
        gradientView.layer.addSublayer(gradientLayer)
        gradientLabel.text = "0.00"
    }
    
    
    
 // switch coner radius on or off and change color
    @IBAction func switchConerRadius(_ sender: Any) {
        if conerRadiusSwitch.isOn {
          conerRadiusSlider.isEnabled = true
            conerRadiusSlider.minimumTrackTintColor = UIColor(red: 235/255, green: 105/255, blue: 164/255, alpha: 1)
            conerRadiusSlider.thumbTintColor = UIColor(red: 235/255, green: 105/255, blue: 164/255, alpha: 1)
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
            borderWidthSlider.minimumTrackTintColor = UIColor(red: 235/255, green: 105/255, blue: 164/255, alpha: 1)
            borderWidthSlider.thumbTintColor = UIColor(red: 235/255, green: 105/255, blue: 164/255, alpha: 1)
        } else if borderWidthSwitch.isOn == false {
            borderWidthSlider.isEnabled = false
            borderWidthSlider.minimumTrackTintColor = UIColor.darkGray
            borderWidthSlider.thumbTintColor = UIColor.darkGray
        }
    }
    
    
    // switch shadow opacity on or off and change color
    @IBAction func switchShadowOpacity(_ sender: Any) {
        if shadowOpacitySwitch.isOn {
            shadowOpacitySlider.isEnabled = true
            shadowOpacitySlider.minimumTrackTintColor = UIColor(red: 235/255, green: 105/255, blue: 164/255, alpha: 1)
            shadowOpacitySlider.thumbTintColor = UIColor(red: 235/255, green: 105/255, blue: 164/255, alpha: 1)
        } else if shadowOpacitySwitch.isOn == false {
            shadowOpacitySlider.isEnabled = false
            shadowOpacitySlider.minimumTrackTintColor = UIColor.darkGray
            shadowOpacitySlider.thumbTintColor = UIColor.darkGray
        }
    }
    
    
    // coner radius Slider
    @IBAction func changeConerRadius(_ sender: Any) {
     setConerRadius()
    }
    
    func setConerRadius() {
        catImageView.layer.cornerRadius = CGFloat(conerRadiusSlider.value)
        shadowView.layer.cornerRadius = CGFloat(conerRadiusSlider.value)
        conerRadiusLabel.text = String(format: "%.0f", conerRadiusSlider.value)
    }


    // border width Slider
    @IBAction func changeborderWidth(_ sender: Any) {
       setBorderWidth()
    }
    
    func setBorderWidth() {
        catImageView.clipsToBounds = true
        catImageView.layer.borderWidth = CGFloat (borderWidthSlider.value)
        catImageView.layer.borderColor = UIColor.yellow.cgColor
        borderWidthLabel.text = String(format: "%.0f", borderWidthSlider.value)
    }
    
    // shadow opacity Slider
    @IBAction func changeShadowOpacity(_ sender: Any) {
        setShadowOpacity()
    }
    
    func setShadowOpacity() {
        
        shadowView.layer.cornerRadius = CGFloat(conerRadiusSlider.value)
        shadowView.layer.shadowOffset = CGSize(width: 0, height: 0)
        shadowView.layer.shadowOpacity = shadowOpacitySlider.value
        shadowOpacityLabel.text = String(format: "%.1f", shadowOpacitySlider.value)
    }
    
    // clear coner radius button
    @IBAction func clearConerRadius(_ sender: Any) {
        conerRadiusLabel.text = "0"
        conerRadiusSlider.value = 0
        catImageView.layer.cornerRadius = CGFloat(conerRadiusSlider.value)
        shadowView.layer.cornerRadius = CGFloat(conerRadiusSlider.value)
    }
    
    // clear border width button
    @IBAction func clearborderWidth(_ sender: Any) {
        borderWidthLabel.text = "0"
        borderWidthSlider.value = 0
        catImageView.layer.borderWidth = CGFloat(borderWidthSlider.value)
    }
    
    // clear shadow opacity button
    
    @IBAction func clearShadowOpacity(_ sender: Any) {
        shadowOpacityLabel.text = "0"
        shadowOpacitySlider.value = 0
        shadowView.layer.shadowOpacity = shadowOpacitySlider.value
    }
    
    
    // random image border set
    @IBAction func randomImageSet(_ sender: Any)
    {
        // on/on/on 1
        if conerRadiusSwitch.isOn && borderWidthSwitch.isOn && shadowOpacitySwitch.isOn {
            
        conerRadiusSlider.value = Float(CGFloat.random(in: 1...100))
        borderWidthSlider.value = Float.random(in: 1...20)
        shadowOpacitySlider.value = Float.random(in: 0...1)
          
            setConerRadius()
            setBorderWidth()
            setShadowOpacity()
        }
        // on/off/off 2
         else if conerRadiusSwitch.isOn && borderWidthSwitch.isOn == false && shadowOpacitySwitch.isOn == false {
            
            conerRadiusSlider.value = Float(CGFloat.random(in: 1...100))
           setConerRadius()
            
            borderWidthSlider.isEnabled = false
            shadowOpacitySlider.isEnabled = false
        }
        // on/on/off 3
        else if conerRadiusSwitch.isOn && borderWidthSwitch.isOn && shadowOpacitySwitch.isOn == false {
            conerRadiusSlider.value = Float(CGFloat.random(in: 1...100))
            borderWidthSlider.value = Float.random(in: 1...20)
            setConerRadius()
            setBorderWidth()
            shadowOpacitySlider.isEnabled = false
        }
        // on/off/on 4
        else if  conerRadiusSwitch.isOn && borderWidthSwitch.isOn == false && shadowOpacitySwitch.isOn {
            conerRadiusSlider.value = Float(CGFloat.random(in: 1...100))
            shadowOpacitySlider.value = Float.random(in: 0...1)
                setConerRadius()
                setShadowOpacity()
            borderWidthSlider.isEnabled = false
        }
        // off/on/on 5
        else if conerRadiusSwitch.isOn == false && borderWidthSwitch.isOn && shadowOpacitySwitch.isOn {
            borderWidthSlider.value = Float.random(in: 1...20)
            shadowOpacitySlider.value = Float.random(in: 0...1)
                setBorderWidth()
                setShadowOpacity()
            conerRadiusSlider.isEnabled = false
        }
        // off/on/off 6
        else  if conerRadiusSwitch.isOn == false && borderWidthSwitch.isOn && shadowOpacitySwitch.isOn == false {
            borderWidthSlider.value = Float.random(in: 1...20)
            setBorderWidth()
            conerRadiusSlider.isEnabled = false
            shadowOpacitySlider.isEnabled = false
            }
        // off/off/on 7
        else  if conerRadiusSwitch.isOn == false && borderWidthSwitch.isOn == false && shadowOpacitySwitch.isOn {
            shadowOpacitySlider.value = Float.random(in: 0...1)
            setShadowOpacity()
            conerRadiusSlider.isEnabled = false
            borderWidthSlider.isEnabled = false
            }
        // off/off/off 8
        else if conerRadiusSwitch.isOn == false && borderWidthSwitch.isOn == false && shadowOpacitySwitch.isOn == false {
            conerRadiusSlider.isEnabled = false
            borderWidthSlider.isEnabled = false
            shadowOpacitySlider.isEnabled = false
        }
        
    }
    
}
