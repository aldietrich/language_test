//
//  ViewController.swift
//  language_test
//
//  Created by Andrew Dietrich on 4/1/20.
//  Copyright © 2020 Andrew Dietrich. All rights reserved.
//

import UIKit
import ZendeskCoreSDK
import SupportSDK

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loadHC(_ sender: Any) {
        
       Support.instance!.helpCenterLocaleOverride = "en-us"

        let helpCenter = HelpCenterUi.buildHelpCenterOverviewUi(withConfigs: [])
        self.navigationController?.pushViewController(helpCenter, animated: true)
    }
    
    
    @IBAction func loadHCru(_ sender: Any) {
        
        Support.instance!.helpCenterLocaleOverride = "ru"
        
        let helpCenter = HelpCenterUi.buildHelpCenterOverviewUi(withConfigs: [])
             self.navigationController?.pushViewController(helpCenter, animated: true)
        
    }
    
    
    
}

