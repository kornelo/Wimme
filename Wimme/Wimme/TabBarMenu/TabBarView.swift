//
//  TabBarView.swift
//  Wimme
//
//  Created by Tom on 11.11.2017.
//  Copyright © 2017 DudEski. All rights reserved.
//

import UIKit


class TabBarView: UITabBarController {

    override func viewDidLoad() {
      
    
        var tabMainView: UIViewController
        var tabSearch: UIViewController
        var tabProfile: UIViewController
        var tabSettings: UIViewController
        var tabAddEvent: UIViewController
    
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let mainView : MainScreenVC  = storyboard.instantiateViewController(withIdentifier: "MainView") as! MainScreenVC
        let search : SearchEventVC  = storyboard.instantiateViewController(withIdentifier: "Search") as! SearchEventVC
        let profile : ProfileScreenVC  = storyboard.instantiateViewController(withIdentifier: "Profile") as! ProfileScreenVC
        let setting : SettingsVC  = storyboard.instantiateViewController(withIdentifier: "Setting") as! SettingsVC
        let addEvent : AddEventVC  = storyboard.instantiateViewController(withIdentifier: "AddEvent") as! AddEventVC
        
        tabMainView = mainView
        tabMainView.title = "MainView"
        tabMainView.tabBarItem.image = UIImage(named: "1.png")
        tabSearch = search
        tabSearch.title = "Search"
        tabSearch.tabBarItem.image = UIImage(named: "1.png")
        tabProfile = profile
        tabProfile.title = "Profile"
        tabProfile.tabBarItem.image = UIImage(named: "1.png")
        tabSettings = setting
        tabSettings.title = "Settings"
        tabSettings.tabBarItem.image = UIImage(named: "1.png")
        tabAddEvent = addEvent
        tabAddEvent.title = "Add Event"
        tabAddEvent.tabBarItem.image = UIImage(named: "1.png")
        
        var tabs = [UIViewController]()
        tabs += [mainView, search, profile,setting,addEvent]

        viewControllers = tabs
    }

}
