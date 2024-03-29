//
//  ViewController.swift
//  ColorSlider
//
//  Created by Максим Сылка on 19.11.2023.
//

import UIKit

protocol SlidersViewColorDelegate: AnyObject {
    func setNewColor()
}

class SlidersViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    @IBOutlet var coloredView: UIView!
    
    //MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupColorOfView()
        coloredView.layer.cornerRadius = 15
        setupSliderColors()
    }
    //MARK: - IB Actions
    @IBAction func changeValueOfSlider(_ sender: UISlider) {
        changeValueOfLabel(sender)
        setupColorOfView()
    }
    //MARK: - Private Methods
    private func setupColorOfView() {
        coloredView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
            )
    }
    private func changeValueOfLabel (_ sender: UISlider) {
        switch sender {
            case redSlider:
                redValueLabel.text = String(format: "%.2f" ,redSlider.value)
            case greenSlider:
                greenValueLabel.text = String(format: "%.2f" ,greenSlider.value)
            case blueSlider:
                blueValueLabel.text = String(format: "%.2f" ,blueSlider.value)
            default:
                break
        }
    }
    private func setupSliderColors(){
        redSlider.value = Float.random(in: 0...1)
        redValueLabel.text = String(format: "%.2f" ,redSlider.value)
        greenSlider.value = Float.random(in: 0...1)
        greenValueLabel.text = String(format: "%.2f" ,greenSlider.value)
        blueSlider.value = Float.random(in: 0...1)
        blueValueLabel.text = String(format: "%.2f" ,blueSlider.value)
    }
}

extension SlidersViewController: SlidersViewColorDelegate {
    func setNewColor() {
        <#code#>
    }
}
