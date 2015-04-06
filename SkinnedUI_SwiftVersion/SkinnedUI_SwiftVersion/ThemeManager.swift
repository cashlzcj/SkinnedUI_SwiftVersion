//
//  ThemeManager.swift
//  SkinnedUI_SwiftVersion
//
//  Created by junge on 15/3/29.
//  Copyright (c) 2015年 junge. All rights reserved.
//

import UIKit

/*
class WithSingleton {
    class var sharedInstance :WithSingleton {
        struct Singleton {
            static let instance = WithSingleton()
        }
        
        return Singleton.instance
    }
}*/

//    override init()  坑爹的
//    {
//        super.init();
//    }

let ThemeDidChangeNotification = "me.ilvu.theme.change";

class ThemeManager: NSObject {
    
    var colorString: NSString?;
    
    class var sharedInstance: ThemeManager
    {
        struct Singleton
        {
            static let instance = ThemeManager();
        }
        
        return Singleton.instance;
    }
    
    func setColorString(strColor : NSString)
    {
        if colorString != nil && colorString!.isEqualToString(strColor)
        {
            return;
        }
        
        colorString = strColor;
        NSNotificationCenter.defaultCenter().postNotificationName(ThemeDidChangeNotification, object: nil);
    }
    
    func getColorString()->NSString?
    {
        if(nil == colorString)
        {
            colorString = "blue";
        }
        return colorString;
    }
   
}
