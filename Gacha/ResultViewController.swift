//
//  ResultViewController.swift
//  Gacha
//
//  Created by 吉江恵 on 2024/05/08.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var backGroundImageView: UIImageView!
    @IBOutlet var characterImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        
       var number = Int.random(in: 0...9)
    
        
        switch number {
        case 9:
            characterImageView.image = UIImage(named: "IoTmesh")
            backGroundImageView.image = UIImage(named: "bgBlue")
        case 7, 8:
            characterImageView.image = UIImage(named: "camera")
            backGroundImageView.image = UIImage(named: "bgGreen")
        case 0...6:
            characterImageView.image = UIImage(named: "iphone")
            backGroundImageView.image = UIImage(named: "bgRed")
        default:
            print("error")
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // アニメーション
        self.characterImageView.center = self.view.center
        UIView.animate(withDuration: 1.0, delay: 0, options: [.curveEaseIn, .autoreverse, .repeat], animations: {
            self.characterImageView.center.y += 10.0
        }) { _ in
            self.characterImageView.center.y -= 10.0
        }
    }
    
    @IBAction func back() {
        self.dismiss(animated: true, completion: nil)
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
