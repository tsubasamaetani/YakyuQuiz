//
//  SelectLevelViewController.swift
//  YakyuQuiz
//
//  Created by 前谷翼 on 2021/12/26.
//

import UIKit

class SelectLevelViewController: UIViewController {
    @IBOutlet var ballimageView: UIImageView!
    @IBOutlet var ballimageView2: UIImageView!
    @IBOutlet var ballimageView3: UIImageView!
    @IBOutlet var ballimageView4: UIImageView!
    @IBOutlet var ballimageView5: UIImageView!
    @IBOutlet var ballimageView6: UIImageView!
    @IBOutlet var level1Button: UIButton!
    @IBOutlet var level2Button: UIButton!
    @IBOutlet var level3Button: UIButton!
    
    
    var selectTag = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        ballimageView.image = UIImage(named: "ball")
        ballimageView2.image = UIImage(named: "ball")
        ballimageView3.image = UIImage(named: "ball")
        ballimageView4.image = UIImage(named: "ball")
        ballimageView5.image = UIImage(named: "ball")
        ballimageView6.image = UIImage(named: "ball")
        
        level1Button.layer.borderWidth = 2
        level1Button.layer.borderColor = UIColor.black.cgColor
        
        level2Button.layer.borderWidth = 2
        level2Button.layer.borderColor = UIColor.black.cgColor
        
        level3Button.layer.borderWidth = 2
        level3Button.layer.borderColor = UIColor.black.cgColor
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let quizVC = segue.destination as! QuizViewController
        quizVC.selectLevel = selectTag
    }
    
    @IBAction func levelButtonAction(sender: UIButton) {
        print(sender.tag)
        selectTag = sender.tag
        performSegue(withIdentifier: "toQuizVC", sender: nil)
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
