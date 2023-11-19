//
//  ViewController.swift
//  ColorSlider
//
//  Created by Максим Сылка on 19.11.2023.
//

import UIKit

final class ViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!

    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    @IBOutlet var coloredView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabelsOfSlider()
        coloredView.layer.cornerRadius = 15
    }
    
    @IBAction func ValueOfSliderChanges(_ sender: Any) {
        let currentColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
     
        coloredView.backgroundColor = currentColor
        setupLabelsOfSlider()
    }
    
    private func setupLabelsOfSlider() {
        redValueLabel.text = String(format: "%.2f" ,redSlider.value)
        greenValueLabel.text = String(format: "%.2f" ,greenSlider.value)
        blueValueLabel.text = String(format: "%.2f" ,blueSlider.value)
    }
    
}

