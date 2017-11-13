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
        let mainView : MainScreenNC  = storyboard.instantiateViewController(withIdentifier: "MainView") as! MainScreenNC
        let search : SearchEventNC  = storyboard.instantiateViewController(withIdentifier: "Search") as! SearchEventNC
        let profile : ProfileNC  = storyboard.instantiateViewController(withIdentifier: "Profile") as! ProfileNC
        let setting : SettingsNC  = storyboard.instantiateViewController(withIdentifier: "Setting") as! SettingsNC
        let addEvent : AddEventNC  = storyboard.instantiateViewController(withIdentifier: "AddEvent") as! AddEventNC
        
        tabMainView = mainView
        tabMainView.title = "MainView"
        tabMainView.tabBarItem.image = UIImage(named: "MainIcon.pdf")
        tabSearch = search
        tabSearch.title = "Search"
        tabSearch.tabBarItem.image = UIImage(named: "MainIcon.pdf")
        tabProfile = profile
        tabProfile.title = "Profile"
        tabProfile.tabBarItem.image = UIImage(named: "MainIcon.pdf")
        tabSettings = setting
        tabSettings.title = "Settings"
        tabSettings.tabBarItem.image = UIImage(named: "MainIcon.pdf")
        tabAddEvent = addEvent
        tabAddEvent.title = "Add Event"
        tabAddEvent.tabBarItem.image = UIImage(named: "MainIcon.pdf")
        
        var tabs = [UIViewController]()
        tabs += [mainView, search, profile,setting,addEvent]

        viewControllers = tabs
    }

}
