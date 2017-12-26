//
//  DetailViewController.swift
//  MathMonsters
//
//  Created by Chris Sullivan on 26/12/17.
//  Copyright © 2017 Sullivan Apps. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var weaponImageView: UIImageView!
    
    var monster: Monster? {
        didSet {
            refreshUI()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func refreshUI() {
        loadViewIfNeeded()
        nameLabel.text = monster?.name
        descriptionLabel.text = monster?.description
        iconImageView.image = monster?.icon
        weaponImageView.image = monster?.weaponImage
    }
}

extension DetailViewController: MonsterSelectionDelegate {
    func monsterSelected(_ newMonster: Monster) {
        monster = newMonster
    }
}
