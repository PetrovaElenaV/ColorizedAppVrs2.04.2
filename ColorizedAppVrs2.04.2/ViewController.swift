//
//  ViewController.swift
//  ColorizedAppVrs2.04.2
//
//  Created by Elena Petrova on 11.08.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var colorRGBView: UIView!
    
    @IBOutlet var numberOfRedLabel: UILabel!
    @IBOutlet var numberOfGreenLabel: UILabel!
    @IBOutlet var numberOfBlueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupRedSlider()
        setupBlueSlider()
        setupGreenSlider()
        
        redSliderAction()
        greenSliderAction()
        blueSliderAction()
    }
    // MARK: - IBActions
    
    @IBAction func redSliderAction() {
        numberOfRedLabel.text = String(format:"%.2f", redSlider.value)
        colorRBG()
    }
    
    @IBAction func greenSliderAction() {
        numberOfGreenLabel.text = String(format: "%0.2f", greenSlider.value)
        colorRBG()
    }
    
    @IBAction func blueSliderAction() {
        numberOfBlueLabel.text = String(format: "%0.2f", blueSlider.value)
        colorRBG()
    }
    
    // MARK: - Private Slider
    
    private func setupRedSlider() {
        redSlider.value = 0.05
        redSlider.minimumTrackTintColor = .red
    }
    private func setupGreenSlider() {
        greenSlider.minimumTrackTintColor = .green
        greenSlider.value = 0.27
    }
    private func setupBlueSlider() {
        blueSlider.value = 0.49
    }
    private func colorRBG() {
        colorRGBView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
}
