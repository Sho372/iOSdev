//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by user169300 on 4/30/20.
//  Copyright © 2020 user169300. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    var responses: [Answer]!

    @IBOutlet weak var resultsAnswerLable: UILabel!
    @IBOutlet weak var resultsDefinitionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        calculatePersonalityResult()

        // Do any additional setup after loading the view.
    }
    
    func calculatePersonalityResult() {
        var frequencyOfAnswers: [AnimalType: Int] = [:]
        let responseTypes = responses.map {$0.type}
        
        for response in responseTypes {
            let newCount: Int
            
            if let oldCount = frequencyOfAnswers[response] {
                newCount = oldCount + 1
            } else {
                newCount = 1
            }
            
            frequencyOfAnswers[response] = newCount
        }

        let mostCommonAnswer = frequencyOfAnswers.sorted(by:
        { $0.1 > $1.1 }).first!.key
        
        resultsAnswerLable.text = "You are a \(mostCommonAnswer.rawValue)"
        resultsDefinitionLabel.text = mostCommonAnswer.definition
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
