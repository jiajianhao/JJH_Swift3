//
//  TextViewController.swift
//  JJH_Swift3
//
//  Created by Jiajianhao on 2016/10/17.
//  Copyright © 2016年 com.TongHaoDevelopment. All rights reserved.
//  燕子不归春事晚，一汀烟雨杏花寒

import UIKit

class TextViewController: UIViewController,UITextFieldDelegate,UIAlertViewDelegate,UIGestureRecognizerDelegate {
    var emailText = UITextField()
    var label_email = UILabel()
    var button_alert = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.view.backgroundColor=UIColor.white
        
        
        label_email = UILabel(frame:CGRect(x:20,y:30,width:50,height:30))
        label_email.backgroundColor=UIColor.clear
        label_email.text="邮箱"
        label_email.textColor=UIColor.black
        label_email.font = UIFont.systemFont(ofSize: 15)
        self.view.addSubview(label_email)
        
        
        emailText = UITextField(frame:CGRect(x:70,y:30,width:Screen_Width-70-20,height:30))
        emailText.backgroundColor=UIColor.clear
        emailText.keyboardType = UIKeyboardType.emailAddress
        emailText.textColor = UIColor(rgb:0x38c5ec)
        emailText.delegate=self
        emailText.layer.borderWidth=0.5
        emailText.layer.borderColor=UIColor.gray.cgColor
        emailText.layer.cornerRadius=2
        emailText.font=UIFont.systemFont(ofSize: 15)
        self.view.addSubview(emailText)
        
        
        
        button_alert = UIButton()
        button_alert.frame=CGRect(x:(Screen_Width-200)/2,y:100,width:200,height:50)
        button_alert.addTarget(self, action: #selector(pressBtn(sender:)), for: UIControlEvents.touchUpInside)
        button_alert.backgroundColor=UIColor(rgb:0x38c5ec)
        button_alert.setTitle("提交", for: UIControlState.normal)
        button_alert.setTitleColor(UIColor.white, for: UIControlState.normal)
        self.view.addSubview(button_alert)
        
        
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(hideKeyBoard)))
        
    }
    func pressBtn(sender : UIButton)  {
        if (emailText.text?.isEmpty)! {
            let alert : UIAlertView = UIAlertView(title: "提示", message: "请填写邮箱", delegate: self, cancelButtonTitle: "确认")
            alert.show()        }
        else{
            let alert : UIAlertView = UIAlertView(title: "提示", message: "邮箱已提交", delegate: self, cancelButtonTitle: "确认")
            alert.show()
        }
    }
    func hideKeyBoard() {
        emailText.resignFirstResponder()
        
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
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
