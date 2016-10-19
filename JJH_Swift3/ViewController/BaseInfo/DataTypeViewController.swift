//
//  DataTypeViewController.swift
//  JJH_Swift3
//
//  Created by Jiajianhao on 2016/10/17.
//  Copyright © 2016年 com.TongHaoDevelopment. All rights reserved.
//  燕子不归春事晚，一汀烟雨杏花寒

//简单介绍几个数据类型，整型，浮点型，字符串，数组, 字典, data

import UIKit

class DataTypeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor=UIColor.white
        
        let city = "ShangHai" // 上海市
        print(city)
        
        let count : Int = 1 //数量
        let count_str : String = String(count)
        print(count)
        print(count_str)
        
        let weight = 1.233 // 重量 1.23 kg
        let weight_str : String = String(weight)
        let weight_str2 = String(format: "%.2f", weight)
        print(weight)
        print(weight_str)
        print(weight_str2)
        
        let dialog1 :String = "Here is " + city + "."
        print("dialog1:",dialog1)
        
        //数组
        var cities = ["北京","上海","天津","重庆","杭州","南京","广州","深圳","成都","苏州","无锡","常州","桂林","乌鲁木齐","沈阳","哈尔滨"]
        cities.append("珠海")
        print("cities:",cities)
        
        for cityName in cities {
            if cityName == "上海" {
                print("范围覆盖上海市")
            }
        }
        
        let speed_arr = [100,90,80,100,120]
        for speed in speed_arr {
            switch speed {
            case 100:
                print("当前速度100km/h")
                break;
            case 90:
                print("当前速度90km/h")
                break;
                
            default:
                print("当前速度\(speed)km/h")
                break;
                
            }
        }
        
        
        //字典
        let dic : NSMutableDictionary = ["name":"Fred","tel":"12345678"]
        print("dic:",dic)
        
        dic.setValue("上海浦东东方路", forKey: "address")
        print("dic:",dic)
        
        //NSData
        let data : NSData = dialog1.data(using: String.Encoding.utf8, allowLossyConversion: false)! as NSData//UTF8编码 字符串转NSData
        print("data:",data)
        
        let dialog2 =  String(data: data as Data, encoding: String.Encoding(rawValue: String.Encoding.utf8.rawValue)) //NSData 转 String
        print("dialog2:",dialog2)
        if( dialog1 == dialog2){
            print("ok")// 这里会打印这句话
        }
        
        let dataTemp = dialog1.data(using:String.Encoding.utf8)
        print("dataTemp:",dataTemp)
        
        let testString : String = NSString(data: dataTemp!, encoding: String.Encoding.utf8.rawValue)! as String
        print("testString:",testString)
        
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
