//
//  ProfileViewController.swift
//  UberEats
//
//  Created by Rubiya on 28/05/19.
//  Copyright © 2019 Rubiya. All rights reserved.
//

import Foundation
import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    
    let profileViewModel = ProfileViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.nameLabel.text = "Rubiya Faniband"
    }
    
}

extension ProfileViewController: UITableViewDataSource,UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return profileViewModel.profileItem.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellId", for: indexPath)
        cell.textLabel?.text = profileViewModel.profileItem[indexPath.row].title
        cell.imageView?.image = UIImage.init(named:profileViewModel.profileItem[indexPath.row].image)
        return cell
    }
}


