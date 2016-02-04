//
//  krmelin.swift
//  krmelinWeather
//
//  Created by Lukas Hrebik on 04.02.16.
//  Copyright © 2016 Lukas Hrebik. All rights reserved.
//

import Foundation
import Alamofire


class krmelin {
    private var _actualWeatherUrl: String!
    private var _temp: String!
    private var _name: String!
    private var _desc: String!
    
    var desc: String {
        get {
            if _desc == nil {
                return "CHYBA"
            }
            return _desc
        }
        
    }
    
    var name: String {
        return _name
    }
    
    var temp: String {
        get {
            if _temp == nil {
                return ""
            }
            return _temp
        }
   
    }
    
    init(nameLm: String) {
        
        _actualWeatherUrl = "\(URL_BASE)\(URL_CITY)\(URL_KEY)"
    }
    
    func downloadWeather(completed: DownloadComplete) {
        let url = NSURL(string: self._actualWeatherUrl)!
    
        Alamofire.request(.GET, url).responseJSON { response in
            let result = response.result
            if let dict = result.value as? Dictionary<String, AnyObject> {
    
            if let mainDetl = dict["main"] as? Dictionary<String, AnyObject> {
                if let tmp = mainDetl["temp"] as? Double {
                    self._temp = NSString(format: "%.0f", tmp) as String
                    }
                }
    
            if let weatherLb = dict["weather"] as? [Dictionary<String, AnyObject>] where weatherLb.count > 0 {
                    if let weDesc = weatherLb[0]["description"] as? String {
                        self._desc = weDesc
                    }
            }
                
           completed()
            }
}
}
}

