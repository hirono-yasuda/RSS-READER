//
//  ArticleTableView.swift
//  RSS-READER
//
//  Created by Hirono Yasuda on 2016/06/08.
//  Copyright © 2016年 hiro yasuda. All rights reserved.
//

import UIKit

class ArticleTableView: UITableView,UITableViewDelegate,UITableViewDataSource {
    
    let blue = UIColor(red: 92.0/255, green: 192.0/255, blue: 210.0/255, alpha: 1.0)
    
    override init(frame: CGRect, style: UITableViewStyle) {
        super.init(frame: frame, style: style)
        
        self.delegate = self
        self.dataSource = self
        
        self.registerNib(UINib(nibName: "SiteTopTableViewCell", bundle: nil),forCellReuseIdentifier: "SiteTopTableViewCell")
        self.registerNib(UINib(nibName: "ArticleTableViewCell",bundle: nil), forCellReuseIdentifier: "ArticleTableViewCell")
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else {
        return 10
        }
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath.section == 0 {
        return 200
        } else {
            return 85
        }
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
        let cell = tableView.dequeueReusableCellWithIdentifier("SiteTopTableViewCell",forIndexPath: indexPath) as! SiteTopTableViewCell
        cell.siteImageView.image = UIImage(named: "wired_top_image")
        cell.siteName.text = "WIRED"
        cell.imageMaskView.backgroundColor = blue
        return cell
        } else {
            let cell = tableView.dequeueReusableCellWithIdentifier("ArticleTableViewCell",forIndexPath: indexPath) as! ArticleTableViewCell
            return cell
        }
    }
        /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
