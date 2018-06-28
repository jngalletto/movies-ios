//
//  SettingsViewController.swift
//  MoviesApp
//
//  Created by Joaquin Galletto on 6/26/18.
//  Copyright © 2018 Joaquin Galletto. All rights reserved.
//

import Foundation
import UIKit

class SettingsOptionCell: UITableViewCell {
    
    @IBOutlet weak var optionIcon: UIImageView!
    @IBOutlet weak var optionText: UILabel!
}

class SettingsViewController : UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var settingsOptionTableCiew: UITableView!
    var settings = [SettingOption]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settingsOptionTableCiew.delegate = self
        settingsOptionTableCiew.dataSource = self
        setup()
    }
    
    func setup() {
        settings.append(SettingOption(title: "Edit Profile", icon: "logout"))
        settings.append(SettingOption(title: "Terms and Conditions", icon: "logout"))
        settings.append(SettingOption(title: "Change Language", icon: "logout"))
        settings.append(SettingOption(title: "Notifications", icon: "logout"))
        settings.append(SettingOption(title: "Privacy Policy", icon: "logout"))
        settings.append(SettingOption(title: "Logout", icon: "logout"))
        self.settingsOptionTableCiew.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "settingsOptionCell") as! SettingsOptionCell
        if self.settings.count > 0 {
            let cellSetting = settings[indexPath.row]
            
            let title = cellSetting.title
            let icon = cellSetting.icon
            
            cell.optionText?.text = title
            cell.optionIcon?.image = UIImage(named: icon)
        }
        return cell
    }
}
