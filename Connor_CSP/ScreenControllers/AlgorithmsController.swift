//
//  AlgorithmsController.swift
//  Connor_CSP
//
//  Created by Oleary, CONNOR on 10/26/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

public class AlgorithmsController: UIViewController{
    
    @IBOutlet weak var algorithmText: UILabel!
    
    private func setupAlgorithm() -> Void
    {
        var algorithmSteps: [String] = []
        
        //TODO: Define algorithm and all steps
        let algorithm :String = ""
        let stepOne :String = "Step 1: Open Eclipse"
        let stepTwo :String = "Step 2: Right click and click “Project”, Enter a name for it, and create it"
        let stepThree :String = "Step 3: Open the new project by left clicking the arrows to the left of it"
        let stepFour :String = "Step 4: Identify the “src” folder within the project and right click it and click “package”, give it a name and put .runner at the end of it and create it, repeat this step once entering .model instead of .runner"
        let stepFive :String = "Step 5: Right click the runner model and click “Class”. Name your class one word with a capital letter at the start of each new word instead of a space. After you have given an appropriate name, add Runner to the end of it without any spaces, repeat this step but add Controller to the end of the name instead of Runner"
        let stepSix :String = "Step 6: Open up github and click File -> New Repository. Name it the same as whatever you named your Java project. Under Local Path, click choose and give it the route to where you created your workspace for eclipse. Click create repository"
        let stepSeven :String = "Step 7: At the top of your screen, click Repository -> Repository settings -> ignored Files. Under ignored files type in:         bin/         *.class     .DS_Store And then click save"
        let stepEight :String = "Step 8: Under the commit button, click undo and replace initial commit with a full sentence Describing what you are creating."
        
        
        //TODO: Finish adding all steps to the algorithm
        algorithmSteps = [stepOne, stepTwo, stepThree, stepFour, stepFive, stepSix, stepSeven, stepEight]
        
        let attributesDictionary = [NSAttributedStringKey.font : algorithmText.font]
        let fullAttributedString = NSMutableAttributedString(string: algorithm, attributes: attributesDictionary)
        
        for step in algorithmSteps
        {
            let bullet :String = "🎱"
            let formattedStep :String = "\n\(bullet) \(step)"
            let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
            let paragraphStyle = createParagraphStyle()
            
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : paragraphStyle], range: NSMakeRange(0,attributedStringStep.length))
            fullAttributedString.append(attributedStringStep)
        }
        
        algorithmText.attributedText = fullAttributedString
    }
    
    
    
    private func createParagraphStyle() -> NSParagraphStyle{
        let paragraphStyle: NSMutableParagraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .left
        paragraphStyle.defaultTabInterval = 15
        paragraphStyle.firstLineHeadIndent = 20
        paragraphStyle.headIndent = 35
        
        return paragraphStyle
    }
    
    override public func viewDidLoad(){
        super.viewDidLoad()
        setupAlgorithm()
    }
    override public func didReceiveMemoryWarning(){
        
    }
}
