//
//  TableViewController.swift
//  JJH_Swift3
//
//  Created by Jiajianhao on 2016/10/17.
//  Copyright © 2016年 com.TongHaoDevelopment. All rights reserved.
//  燕子不归春事晚，一汀烟雨杏花寒

import UIKit

class TableViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    //    var cities = ["BeiJing","ShangHai","TianJin","ChongQing"]
    var cities = ["北京","上海","天津","重庆","杭州","南京","广州","深圳","成都","苏州","无锡","常州","桂林","乌鲁木齐","沈阳","哈尔滨"]
    
    var mTableView = UITableView()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor=UIColor.white
        
        // Do any additional setup after loading the view.
        mTableView=UITableView(frame:self.view.frame,style:UITableViewStyle.plain)
        mTableView.dataSource=self
        mTableView.delegate = self
        self.view.addSubview(mTableView)
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return cities.count
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let indentifier = "CityTableViewCell"
        var cell:CityTableViewCell! = tableView.dequeueReusableCell(withIdentifier: indentifier) as? CityTableViewCell
        if cell == nil {
             cell=CityTableViewCell(style: .default, reuseIdentifier: indentifier)
        }
        cell.label_city.isHidden=true
        cell.image_city.isHidden=true
        cell.label_city.text = cities[indexPath.row]
        cell.label_city.isHidden=false
        cell.image_city.isHidden=false
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        
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
