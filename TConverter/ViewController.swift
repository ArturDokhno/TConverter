//
//  ViewController.swift
//  TConverter
//
//  Created by Артур Дохно on 06.11.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var cenliusLabel: UILabel!
    @IBOutlet var fahrenheitLabel: UILabel!
    @IBOutlet var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        let temperatureCelsius = Int(round(sender.value))
        cenliusLabel.text = "\(temperatureCelsius)ºC"
        
        let fahrenheitTemperature = Int(round((sender.value * 9 / 5) + 32))
        fahrenheitLabel.text = "\(fahrenheitTemperature)ºF"
    }
}

