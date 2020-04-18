//
//  ViewController.swift
//  Guess_theFlag_swift
//
//  Created by Mayurii Gajbhiye on 17/04/20.
//  Copyright © 2020 Mayurii Gajbhiye. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    
    @IBOutlet weak var viewContent: UIView!
    var countries = [String]()
    var score  = 0
    var correctAns = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
   
     //   shadow()
  
        countries  += ["India","Africa","USA","Japan","Denmark","China","Srilanka","Canada","Australia","Austria","Algeria","Zimbambe","Germany","Algeria","Argentina","Brazil","Indonesia","Philedelphia","Taiwan","NewZealand","Chicago"]
        //   countries.append("Austria")

        
        btn1.layer.borderWidth = 1
        btn2.layer.borderWidth = 1
        btn3.layer.borderWidth = 1
        
        btn1.layer.borderColor = #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)
        btn2.layer.borderColor = #colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1)
        btn3.layer.borderColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
              
        
        questionsSequence(action: nil)
    }

    
    //give Tag in mainstory board
    
    func questionsSequence(action:UIAlertAction! = nil){
        
        countries.shuffle()
        correctAns = Int.random(in: 0...2)
        
        btn1.setImage(UIImage(named: countries[0]), for: UIControl.State.normal)//like enum
        btn2.setImage(UIImage(named: countries[1]), for: UIControl.State.normal)
             
        btn3.setImage(UIImage(named: countries[2]), for: UIControl.State.normal)
             
        title = countries[correctAns].uppercased()//not Working Check???
  
    
    }
    
    
    
    @IBAction func btn1Action(_ sender: UIButton) {
        
        var title:String
        
        if sender.tag == correctAns{
            title = "Correct"
            score += 1
        }else{
            
            title = "Wrong"
            score -= 1
        }
    
        let Alert = UIAlertController(title: title, message: "Your Score is \(score)", preferredStyle: .alert)
        Alert.addAction(UIAlertAction(title: "CONTINUE", style: .default, handler: questionsSequence))//give parameter in func
        present(Alert, animated: true) {
            
        }
        
        
//        if sender.tag ==  10{
//            title  = "You Won"
//        }else{
//            
//            title = "Try again"
//        }
        
    }

    
    
//    func shadow(){
//    viewContent.layer.shadowColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
//     viewContent.layer.shadowOpacity = 20
//        viewContent.layer.shadowOffset = CGSize.zero
//     viewContent.layer.shadowRadius = 4
//        viewContent.layer.cornerRadius = 50
//
//    }
}


