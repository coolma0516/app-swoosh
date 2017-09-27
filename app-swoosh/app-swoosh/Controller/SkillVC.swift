//
//  SkillVC.swift
//  app-swoosh
//
//  Created by Jian Ma on 2017/9/25.
//  Copyright © 2017年 Jian Ma. All rights reserved.
//

import UIKit

class SkillVC: UIViewController {
    var player: Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(player.desiredLeage)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func onBeginnerTapped(_ sender: Any) {
        player.selectedSkillLevel = "Beginner"
    }
    
    @IBAction func onBallerTapped(_ sender: Any) {
        player.selectedSkillLevel = "Baller"
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
