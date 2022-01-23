//
//  ScoreViewController.swift
//  YakyuQuiz
//
//  Created by 前谷翼 on 2021/12/25.
//

import UIKit

class ScoreViewController: UIViewController {
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var scoreImageView: UIImageView!
    
    var correct = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if correct <= 5 {
            self.scoreImageView.image = UIImage(named: "sport1")
        } else if correct >= 6 && correct <= 18 {
            self.scoreImageView.image = UIImage(named: "woman1")
        } else if correct >= 19 {
            self.scoreImageView.image = UIImage(named: "doage1")
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 2 ) {
            self.scoreImageView.isHidden = true
        }
        
        scoreLabel.text = "\(correct)問正解"
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func shareButtonAction(_ sender: Any) {
        let activityItems = ["\(correct)問正解しました.","#野球クイズ"]
        let activityVC = UIActivityViewController(activityItems: activityItems, applicationActivities: nil)
        self.present(activityVC, animated: true)
    }
    @IBAction func toTopButtonAction(_ sender: Any) {
        self.presentingViewController?.presentingViewController?.presentingViewController?.dismiss(animated: true)
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
