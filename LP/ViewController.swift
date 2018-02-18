//
//  ViewController.swift
//  LP
//
//  Created by travis davisson on 2/7/18.
//  Copyright © 2018 travis davisson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIApplication.shared.isIdleTimerDisabled = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didTapBlueLabelButton(_ sender: UIButton) {
        let value = sender.tag
        var labelValue = Int(self.blueLabel?.text ?? "0") ?? 0
        labelValue += value
        self.blueLabel.text = "\(labelValue)"
    }
    
    @IBAction func didTapBlueLabelHalf(_ sender: UIButton) {
        let labelValue = Double(self.blueLabel?.text ?? "0") ?? 0
        let labelIntValue = Int(floor(labelValue * 0.5))
        self.blueLabel.text = "\(labelIntValue)"
    }
    
    @IBAction func didTapRedLabelButton(_ sender: UIButton) {
        let value = sender.tag
        var labelValue = Int(self.redLabel?.text ?? "0") ?? 0
        labelValue += value
        self.redLabel.text = "\(labelValue)"
    }
    
    @IBAction func didTapRedLabelHalf(_ sender: UIButton) {
        let labelValue = Double(self.redLabel?.text ?? "0") ?? 0
        let labelIntValue = Int(floor(labelValue * 0.5))
        self.redLabel.text = "\(labelIntValue)"
    }
    
    @IBAction func resetGame(_ sender: UIButton) {
        self.blueLabel.text = "8000"
        self.redLabel.text = "8000"
        self.bottomLabel.text = ""
    }
    
    @IBAction func 💩🎅🏿(_ sender: UIButton) {
        
        if (arc4random_uniform(2) == 1) {
            self.bottomLabel.text = "💩"
        } else {
            self.bottomLabel.text = "🎅🏿"
        }
    }
    
    @IBAction func diceRoll(_ sender: UIButton) {
        let roll = arc4random_uniform(6)+1
        self.bottomLabel.text = "\(roll)"
    }
    
    
}

