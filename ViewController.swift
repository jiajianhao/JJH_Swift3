//
//  ViewController.swift
//  JJH_Swift3
//
//  Created by Jiajianhao on 2016/10/17.
//  Copyright © 2016年 com.TongHaoDevelopment. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var baseInfo = ["let&var","DataType"]
    var widgets = ["Label+Button","Text","Table"]
    
    let mButton = UIButton()
    var mTableView = UITableView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor=UIColor.white
        self.title="Swift3"
        // Do any additional setup after loading the view, typically from a nib.
        
         mTableView=UITableView(frame:self.view.frame,style:UITableViewStyle.grouped)
         mTableView.dataSource=self
         mTableView.delegate = self
        self.view.addSubview(mTableView)
        

    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section==0 {
            return baseInfo.count

        }
        if section==1 {
            return widgets.count
        }
        
        return 0
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 10
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell : UITableViewCell = UITableViewCell()
 
        if indexPath.section == 0 {
            cell.textLabel?.text = baseInfo[indexPath.row]

        }
        if indexPath.section == 1 {
            cell.textLabel?.text = widgets[indexPath.row]

        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView .deselectRow(at: indexPath, animated: true)
        if indexPath.row == 0 && indexPath.section==0{
            let setvalueview = SetValueViewController()
            setvalueview.title=baseInfo[indexPath.row]
            self.navigationController?.pushViewController(setvalueview, animated: true)
        }
        
    }
    
    
    
    
    
    func pressBtn(sender : UIButton)  {
         //        if sender.tag==1 {
        self.navigationController?.pushViewController(SetValueViewController(), animated: true)
        //        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

