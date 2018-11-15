//
//  ViewController.swift
//  Meme Maker
//
//  Created by bookr on 11/10/18.
//  Copyright © 2018 edu.cuny.bmcc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var topChoices: [CaptionOption] = [
        CaptionOption(emoji: "🕶", caption: "You know what's cool?"),
        CaptionOption(emoji: "💥", caption: "You know what makes me mad?"),
        CaptionOption(emoji: "💕", caption: "You know whatI love?")]
    
    var bottomChoices: [CaptionOption] = [
        CaptionOption(emoji: "🐱", caption: "Cats wearing hats"),
        CaptionOption(emoji: "🐕", caption: "Dogs carrying logs"),
        CaptionOption(emoji: "🐒", caption: "Monkeys being funky")]
    
    @IBOutlet weak var topcaptionSegmentedControl: UISegmentedControl!
    @IBOutlet weak var bottomcaptionSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var topCaptionLabel: UILabel!
    
    @IBOutlet weak var bottomCaptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        topcaptionSegmentedControl.removeAllSegments()
        for choice in topChoices {
            topcaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at:
            topChoices.count, animated: false)
            
            topcaptionSegmentedControl.selectedSegmentIndex = 0
          
         bottomcaptionSegmentedControl.removeAllSegments()
         for choice in bottomChoices {
            bottomcaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at:bottomChoices.count, animated: false)
            
            bottomcaptionSegmentedControl.selectedSegmentIndex = 0
            
            setLabels()
                
                
            }
        }
        
        
    }


    @IBAction func memeSelector(_ sender: UISegmentedControl) {
        setLabels()
    }
    
    func setLabels() {
        topCaptionLabel.text = topChoices[topcaptionSegmentedControl.selectedSegmentIndex].caption;
        bottomCaptionLabel.text =
            bottomChoices[bottomcaptionSegmentedControl.selectedSegmentIndex].caption;
    }


} //class


