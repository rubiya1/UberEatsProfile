//
//  ProfileViewModel.swift
//  UberEats
//
//  Created by Rubiya on 28/05/19.
//  Copyright © 2019 Rubiya. All rights reserved.
//

import Foundation
import UIKit

class ProfileViewModel {
    
    var profileItem:[ProfileItems] {
        return updateProfileItems()
    }
    
    func updateProfileItems() -> [ProfileItems] {
        return [ProfileItems(title: "Your Fevorites", image: "Heart"),
                ProfileItems(title: "Payment", image: "Payment"),
                ProfileItems(title: "Help", image: "Help"),
                ProfileItems(title: "Promotions", image: "Promotion"),
                ProfileItems(title: "Free Delivery", image: "Delivery"),
                ProfileItems(title: "Uber Delivery", image: "Uber Delivery"),
                ProfileItems(title: "Settings", image: "settings")]
    }
    
}
struct ProfileItems {
    let title: String
    let image: String
}
