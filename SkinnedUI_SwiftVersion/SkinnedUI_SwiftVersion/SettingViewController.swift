//
//  SettingViewController.swift
//  SkinnedUI_SwiftVersion
//
//  Created by junge on 15/3/29.
//  Copyright (c) 2015年 junge. All rights reserved.
//

import UIKit

class SettingViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "setting";
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func changeColor(sender: UIButton)
    {
        switch (sender.tag)
        {
            case 1:
                ThemeManager.sharedInstance.setColorString("red");
                break;
            case 2:
                ThemeManager.sharedInstance.setColorString("blue");
                break;
            case 3:
                ThemeManager.sharedInstance.setColorString("black");
                break;
            default:
                ThemeManager.sharedInstance.setColorString("blue");
                break;
        }
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
