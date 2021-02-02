//
//  ViewController.swift
//  Lesson 2
//
//  Created by Nikita on 31.01.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var segmentedControll: UISegmentedControl!
    @IBOutlet var mainLabel: UILabel!
    @IBOutlet var slider: UISlider!
    @IBOutlet var textField: UITextField!
    @IBOutlet var datePicker: UIDatePicker!
    @IBOutlet var mainButton: UIButton!
    @IBOutlet var mainSwitch: NSLayoutConstraint!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: Segmented Controll
        segmentedControll.insertSegment(withTitle: "Third", at: 2, animated: false)
        
        // MARK: Label
        mainLabel.text = "Выбери же что-нибудь :)"
        mainLabel.font = mainLabel.font.withSize(30)
        mainLabel.textAlignment = .center
        mainLabel.numberOfLines = 2
        
        
        
        //MARK: Slider
        
        slider.value = 1
        slider.minimumValue = 1
        slider.maximumValue = 100
        slider.minimumTrackTintColor = .yellow
        slider.maximumTrackTintColor = .blue
        slider.thumbTintColor = UIColor(red: 255/255, green: 0/255, blue: 0/255, alpha: 1)
        
        
        // MARK: textField
        
        
        
        //MARK: mainButton
        
        mainButton.layer.cornerRadius = 10
    
        
       
        
    }



    @IBAction func actionSegmentedControll(_ sender: Any) {
    
        switch segmentedControll.selectedSegmentIndex {
        case 0:
            mainLabel.text = "Выбран первый сегмент"
            mainLabel.backgroundColor = .black
            mainLabel.textColor = .red
        case 1:
            mainLabel.text = "Выбран второй сегмент"
            mainLabel.backgroundColor = .white
            mainLabel.textColor = .blue
        case 2:
            mainLabel.text = "Выбран третий сегмент"
            mainLabel.backgroundColor = .yellow
            mainLabel.textColor = .purple
        default:
            break
        }
    
    }
    @IBAction func sliderAction(_ sender: Any) {
        mainLabel.text =  String(Int(slider.value))
    }
    
    
    
    
}

