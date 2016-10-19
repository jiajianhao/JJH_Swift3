//
//  ViewController.swift
//  JJH_Swift3
//
//  Created by Jiajianhao on 2016/10/17.
//  Copyright © 2016年 com.TongHaoDevelopment. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var baseInfo_arr = ["let&var","DataType"]
    var widgets_arr = ["Label+Button","Text","Table"]
    var video_arr = ["audio","video"]
    
    let mButton = UIButton()
    var mTableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isTranslucent=false

        self.view.backgroundColor=UIColor.white
        self.title="Swift3"
        // Do any additional setup after loading the view, typically from a nib.
        
         mTableView=UITableView(frame:self.view.frame,style:UITableViewStyle.grouped)
         mTableView.dataSource=self
         mTableView.delegate = self
        self.view.addSubview(mTableView)
        

    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section==0 {
            return baseInfo_arr.count
        }
        if section==1 {
            return widgets_arr.count
        }
        if section==2 {
            return video_arr.count
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
            cell.textLabel?.text = baseInfo_arr[indexPath.row]
        }
        if indexPath.section == 1 {
            cell.textLabel?.text = widgets_arr[indexPath.row]
        }
        if indexPath.section == 2 {
            cell.textLabel?.text = video_arr[indexPath.row]
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView .deselectRow(at: indexPath, animated: true)
        
        if indexPath.section == 0 {
            if indexPath.row == 0 {
                let view1 = SetValueViewController()
                view1.title=baseInfo_arr[indexPath.row]
                self.navigationController?.pushViewController(view1, animated: true)
            }
            if indexPath.row == 1 {
                let view1 = DataTypeViewController()
                view1.title=baseInfo_arr[indexPath.row]
                self.navigationController?.pushViewController(view1, animated: true)
            }
            
        }
        if indexPath.section == 1 {
            if indexPath.row == 0 {
                let view1 = ButtonViewController()
                view1.title=widgets_arr[indexPath.row]
                self.navigationController?.pushViewController(view1, animated: true)
            }
            if indexPath.row == 1 {
                let view1 = TextViewController()
                view1.title=widgets_arr[indexPath.row]
                self.navigationController?.pushViewController(view1, animated: true)
            }
            if indexPath.row == 2 {
                let view1 = TableViewController()
                view1.title=widgets_arr[indexPath.row]
                self.navigationController?.pushViewController(view1, animated: true)
            }
        }
        if indexPath.section == 2 {
            
        }
        
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

