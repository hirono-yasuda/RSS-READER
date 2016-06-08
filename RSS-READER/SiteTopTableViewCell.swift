//
//  SiteTopTableViewCell.swift
//  RSS-READER
//
//  Created by Hirono Yasuda on 2016/06/08.
//  Copyright © 2016年 hiro yasuda. All rights reserved.
//

import UIKit

class SiteTopTableViewCell: UITableViewCell {
    @IBOutlet weak var siteImageView: UIImageView!
    @IBOutlet weak var imageMaskView: UIView!
    @IBOutlet weak var siteName: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        setsiteImageView()
        setimageMaskView()
        setsiteName()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setsiteImageView() {
        self.siteImageView.contentMode = UIViewContentMode.ScaleAspectFill
        self.siteImageView.layer.masksToBounds = true
    }
    func setimageMaskView() {
        self.imageMaskView.alpha = 0.6
        
    }
    func setsiteName() {
        self.siteName.textColor = UIColor.whiteColor()
        self.siteName.textAlignment = NSTextAlignment.Center
        self.siteName.font = UIFont(name: "Helvetica-Light", size: 40)
    }
    
}
