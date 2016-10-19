//
//  ButtonViewController.swift
//  JJH_Swift3
//
//  Created by Jiajianhao on 2016/10/17.
//  Copyright © 2016年 com.TongHaoDevelopment. All rights reserved.
//  燕子不归春事晚，一汀烟雨杏花寒

import UIKit

class ButtonViewController: UIViewController {
    var label_state = UILabel()
    var button_change = UIButton()
    var state  = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor=UIColor.white
        
        // Do any additional setup after loading the view.
        
        label_state = UILabel(frame:CGRect(x:50,y:50,width:100,height:20))
        label_state.backgroundColor=UIColor.clear
        label_state.text="未点击"
        label_state.textColor=UIColor.black
        self.view.addSubview(label_state)
        
        
        button_change = UIButton(frame:CGRect(x:50,y:100,width:100,height:50))
        button_change.addTarget(self, action: #selector(pressBtn(sender:)), for: UIControlEvents.touchUpInside)
        button_change.backgroundColor=UIColor(rgb:0x38c5ec)
        button_change.setTitle("点击", for: UIControlState.normal)
        button_change.setTitle("取消", for: UIControlState.selected)
        button_change.setTitleColor(UIColor.black, for: UIControlState.normal)
        button_change.setTitleColor(UIColor.blue, for: UIControlState.selected)
        button_change.tag=1
        button_change.isSelected=false
        self.view.addSubview(button_change)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
    }
    
    func pressBtn(sender : UIButton)  {
        if state {
            label_state.text="未点击"
            button_change.isSelected=false
        }
        else{
            label_state.text="已点击"
            button_change.isSelected=true
        }
        state = !state
        //        if sender.tag == 1 {
        //            if state {
        //                label_state.text="未点击"
        //                button_change.isSelected=false
        //            }
        //            else{
        //                label_state.text="已点击"
        //                button_change.isSelected=true
        //            }
        //            state = !state
        //        }
        
        
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
