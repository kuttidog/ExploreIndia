//
//  DescriptionViewController.swift
//  ExploreIndia
//
//  Created by Kulanthaivel, Myl (.) on 08/11/19.
//  Copyright © 2019 Kulanthaivel, Myl (.). All rights reserved.
//

import Foundation
import UIKit
import SnapKit


class DescriptionViewController: UIViewController {
    
    var appTitle: UILabel = {
        var title = UILabel()
        return title
    }()
    
    var label: UILabel = {
        var label = UILabel()
        return label
    }()

override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .gray
    
    view.addSubview(appTitle)
    appTitle.snp.makeConstraints { (make) in
        make.centerX.equalToSuperview()
        make.top.equalTo(250)
}
    
    view.addSubview(label)
    label.snp.makeConstraints { (make) in
        make.top.equalTo(appTitle.snp.top).offset(50)
        make.width.equalTo(200)
        make.height.equalTo(400)
    }
    
    }
}
