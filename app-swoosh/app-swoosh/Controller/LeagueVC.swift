//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Jian Ma on 2017/9/24.
//  Copyright © 2017年 Jian Ma. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    @IBOutlet weak var nextBtn: BorderButton!
    
    var player: Player!
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
        // Do any additional setup after loading the view.
    }
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeage(leagueType: "Mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeage(leagueType: "Womens")
        
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeage(leagueType: "Coed")
    }
    
    func selectLeage(leagueType: String) {
        player.desiredLeage = leagueType
        nextBtn.isEnabled = true
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }
    
}
