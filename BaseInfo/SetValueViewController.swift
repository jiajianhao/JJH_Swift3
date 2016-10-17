//
//  SetValueViewController.swift
//  JJH_Swift3
//
//  Created by Jiajianhao on 2016/10/17.
//  Copyright © 2016年 com.TongHaoDevelopment. All rights reserved.
//

import UIKit

class SetValueViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor=UIColor.white
        let city = "ShangHai" // 上海市
        var speed = 100 // 速度100迈
        speed = 120 //速度120迈
        print(city)
        print(speed)
        
        let dialog1 :String = "Here is" + city + "."
        let dialog2 :String = "Current speed is \(speed) km/h."
        
        print(dialog1)
        print(dialog2)
        
        let width : Int = 20
        let height : Float = 20.5
        print(width,height)

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
