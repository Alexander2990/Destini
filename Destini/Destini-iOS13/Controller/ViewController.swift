//
//  ViewController.swift
//  Destini-iOS13
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        
        updateUI()
        
    }
    
    func updateUI() {
        
        storyLabel.text = storyBrain.storyTitle()
        choice1Button.setTitle(storyBrain.choiceTitle1(), for: .normal)
        choice2Button.setTitle(storyBrain.choiceTitle2(), for: .normal)

        
    }
    
}

