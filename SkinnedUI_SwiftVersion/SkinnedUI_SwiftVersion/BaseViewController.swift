//
//  BaseViewController.swift
//  SkinnedUI_SwiftVersion
//
//  Created by junge on 15/3/29.
//  Copyright (c) 2015年 junge. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
         self.unRegitserAsObserver();
        self.regitserAsObserver();
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func regitserAsObserver()
    {
        var center = NSNotificationCenter.defaultCenter();
        center.addObserver(self, selector:"configureViews", name: ThemeDidChangeNotification, object: nil);
    }
    
    func unRegitserAsObserver()
    {
        var center = NSNotificationCenter.defaultCenter();
        center.removeObserver(self);
    }
    
    func configureViews()
    {
        let currentColor = ThemeManager.sharedInstance.getColorString();
        if (currentColor != nil && currentColor!.isEqualToString("red"))
        {
            self.view.backgroundColor = UIColor.redColor();
        }
        else if(currentColor != nil && currentColor!.isEqualToString("black"))
        {
            self.view.backgroundColor = UIColor.blackColor();
        }
        else
        {
            self.view.backgroundColor = UIColor.blueColor();
        }
    }
    
    
//    - (void)regitserAsObserver
//    {
//    NSNotificationCenter *center = [NSNotificationCenter defaultCenter];
//    [center addObserver:self
//    selector:@selector(configureViews)
//    name:ThemeDidChangeNotification
//    object:nil];
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
