//
//  CityTableViewCell.swift
//  JJH_Swift3
//
//  Created by Jiajianhao on 2016/10/18.
//  Copyright © 2016年 com.TongHaoDevelopment. All rights reserved.
//  燕子不归春事晚，一汀烟雨杏花寒

import UIKit

class CityTableViewCell: UITableViewCell {
    var label_city = UILabel()
    var image_city = UIImageView()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.label_city=UILabel()
        self.image_city=UIImageView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        self.backgroundColor=UIColor.clear

        label_city.frame=CGRect(x:60,y:10,width:150,height:40)
        label_city.backgroundColor=UIColor.clear
        label_city.textColor=UIColor.orange
        label_city.font=UIFont.systemFont(ofSize: 15)

        self.addSubview(label_city)
        
        
        image_city.frame=CGRect(x:20,y:20,width:20,height:20)
        image_city.backgroundColor=UIColor.clear
        image_city.image=UIImage.init(named: "city")
        self.addSubview(image_city)


        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
