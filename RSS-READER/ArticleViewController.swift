//
//  ViewController.swift
//  RSS-READER
//
//  Created by Hirono Yasuda on 2016/06/06.
//  Copyright © 2016年 hiro yasuda. All rights reserved.
//

import UIKit

class ArticleViewController: UIViewController {
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var sitesScrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.sitesScrollView.contentSize = CGSizeMake(self.view.frame.width * 3, self.view.frame.height)
        self.sitesScrollView.pagingEnabled = true
        
        setArticleTableView(0)
        setArticleTableView(self.view.frame.width)
        setArticleTableView(self.view.frame.width*2)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setArticleTableView(x: CGFloat) {
        let frame = CGRectMake(x, 0, self.view.frame.width, self.view.frame.height)
        let articleTabelView = ArticleTableView(frame: frame, style: UITableViewStyle.Plain)
        self.sitesScrollView.addSubview(articleTabelView)
        
    }

}

