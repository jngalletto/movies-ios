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
        settings.append(SettingOption(title: "Edit Profile", icon: "profile"))
        settings.append(SettingOption(title: "Terms and Conditions", icon: "terms"))
        settings.append(SettingOption(title: "Change Language", icon: "language"))
        settings.append(SettingOption(title: "Notifications", icon: "notifications"))
        settings.append(SettingOption(title: "Privacy Policy", icon: "privacy"))
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
            cell.optionIcon?.image = cell.optionIcon?.image!.withRenderingMode(.alwaysTemplate)
            cell.optionIcon?.tintColor = Constants.Colors.accentColor
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let currentCell = tableView.cellForRow(at: indexPath) as! SettingsOptionCell
        if currentCell.optionText.text == "Logout" {
            self.performSegue(withIdentifier: "segueLogout", sender: self)
        }
    }
}
