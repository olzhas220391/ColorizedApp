//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Olzhas on 29.08.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 15
        setColor()
        setValue(for: redLabel, greenLabel, blueLabel)
        
    }

    @IBAction func sliderAction(_ sender: UISlider) {
        setColor()
        switch sender {
        case redSlider:
            redLabel.text = string(from: sender)
        case greenSlider:
            greenLabel.text = string(from: sender)
        default:
            blueLabel.text = string(from: sender)
        }
    }

    private func setColor(){
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
            )
    }
    
    private func setValue(for labels: UILabel...) {
        labels.forEach { label in
            switch label {
            case redLabel:
                redLabel.text = string(from: redSlider)
            case greenLabel:
                greenLabel.text = string(from: greenSlider)
            default:
                blueLabel.text = string(from: blueSlider)
            }
        }
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}

//final class ViewController: UIViewController {
//
//    @IBOutlet weak var colorView: UIView!
//
//    @IBOutlet weak var redLabel: UILabel!
//    @IBOutlet weak var greenLabel: UILabel!
//    @IBOutlet weak var blueLabel: UILabel!
//
//    @IBOutlet weak var redSlider: UISlider!
//    @IBOutlet weak var greenSlider: UISlider!
//    @IBOutlet weak var blueSlider: UISlider!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        colorView.layer.cornerRadius = 15
//        setColor()
//        setValue(for: redLabel, greenLabel, blueLabel)
//    }
//
//    @IBAction func sliderAction(_ sender: UISlider) {
//        setColor()
//        switch sender {
//        case redSlider:
//            redLabel.text = string(from: sender)
//        case greenSlider:
//            greenLabel.text = string(from: sender)
//        default:
//            blueLabel.text = string(from: sender)
//        }
//    }
//
//    private func setColor() {
//        colorView.backgroundColor = UIColor(
//            red: CGFloat(redSlider.value),
//            green: CGFloat(greenSlider.value),
//            blue: CGFloat(blueSlider.value),
//            alpha: 1
//        )
//    }
//
//    private func setValue(for labels: UILabel...) {
//        labels.forEach { label in
//            switch label {
//            case redLabel:
//                redLabel.text = string(from: redSlider)
//            case greenLabel:
//                greenLabel.text = string(from: greenSlider)
//            default:
//                blueLabel.text = string(from: blueSlider)
//            }
//        }
//    }
//
//    private func string(from slider: UISlider) -> String {
//        String(format: "%.2f", slider.value)
//    }
//}
