//
//  ViewController.swift
//  project1
//
//  Created by Nguyen Nghia on 2021-10-22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var gameNameLabel: UILabel!
    @IBOutlet var gameLogoImg: UIImageView!
    @IBOutlet var totalScoreTV: UITextView!
    @IBOutlet var randomNumberTV: UITextView!
    @IBOutlet var gameSlider: UISlider!
    @IBOutlet var tryBtn: UIButton!
    @IBOutlet var checkBtn: UIButton!
    @IBOutlet var resetBtn: UIButton!
    @IBOutlet var infoBtn: UIButton!
    var iTotalScore: Int = 0
    
    override func viewDidLoad() {
      super.viewDidLoad()
        infoBtn.layer.cornerRadius = infoBtn.frame.size.width/2
        infoBtn.clipsToBounds = true
        
    }
    
    @IBAction func generateRandomNumber(_ sender: UIButton){
        let _randomInt = Int.random(in: 0...10)
        randomNumberTV.text = String(_randomInt)
        gameSlider.value = 0
        gameSlider.minimumValue = 0;
        gameSlider.maximumValue = 10;
    }
    
    @IBAction func checkResult(_ sender: UIButton){
        let _randomNumber = Int(randomNumberTV.text)
        let _gameSliderVal = Int(gameSlider.value)
        if( _gameSliderVal == _randomNumber){
            iTotalScore += 10
            totalScoreTV.text = String(iTotalScore)
        } else {
            totalScoreTV.text = String(iTotalScore)
        }
    }
    
    @IBAction func resetTheGame(_ sender: UIButton){
        iTotalScore = 0
        totalScoreTV.text = "Total Score"
        randomNumberTV.text = "Random Number"
        gameSlider.value = 0.5
        gameSlider.minimumValue = 0;
        gameSlider.maximumValue = 1;
    }
    
    // for testing slider
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        var currentValue = Int(sender.value)
        print("Slider changing to \(currentValue) ?")

    }
}

