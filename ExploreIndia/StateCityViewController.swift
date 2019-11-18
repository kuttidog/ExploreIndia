//
//  CommonViewController.swift
//  ExploreIndia
//
//  Created by Kulanthaivel, Myl (.) on 08/11/19.
//  Copyright © 2019 Kulanthaivel, Myl (.). All rights reserved.
//

import Foundation
import UIKit
import SnapKit


class StateCityViewController: UIViewController {
    
    weak var delegate: CommonUI?
//    let cityModel: CityViewModel
    let commonModel : CommonUI
    init(commonModel: CommonUI) {
        self.commonModel = commonModel
        super.init(nibName: nil, bundle: nil)
    }
//
//    init(cityModel: CityViewModel) {
//        self.cityModel = cityModel
//        super.init(nibName: nil, bundle: nil)
//    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupHomeUIElement() {
        appTitle.text = commonModel.appTitle
        label.text = commonModel.labelText
        holdertext.placeholder = commonModel.placeHolder
    }
//
//    func setupUIElemnt() {
////        appTitle.text = cityModel.appTitle
//        cityModel.startCity(appTitle: cityModel.appTitle)
//        label.text = cityModel.labelText
//        holdertext.placeholder = cityModel.placeHolder
//    }
    
    var appTitle: UILabel = {
       var title = UILabel()
       return title
    }()
    
    var label: UILabel = {
        var label = UILabel()
        return label
    }()
    
    var holdertext: UITextField = {
        var holdtext = UITextField()
       return holdtext
    }()
    
    var submit: UIButton = {
        var done = UIButton()
        done.setTitle("Done", for: .normal)
        done.addTarget(self, action: #selector(didTapDoneButton(sender:)), for: .touchUpInside)
        return done
    }()
    
    @objc func didTapDoneButton(sender:UIButton) {
        guard let state = holdertext.text else { return }
        commonModel.didTapDoneButton(appTitle: state)
//        delegate?.didTapDoneButton(appTitle: state)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
         view.backgroundColor = .gray
//        setupUIElemnt()
        setupHomeUIElement()
        
        view.addSubview(appTitle)
        appTitle.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.top.equalTo(250)
        }
        
        view.addSubview(label)
        label.snp.makeConstraints { (make) in
            make.top.equalTo(appTitle.snp.top).offset(50)
        }
        
        view.addSubview(holdertext)
        holdertext.snp.makeConstraints { (make) in
            make.top.equalTo(label.snp.top).offset(30)
        }
        
        
        view.addSubview(submit)
        submit.snp.makeConstraints { (make) in
            make.top.equalTo(holdertext.snp.top).offset(30)
        }
            
        }
    }
    
 


//@objc func didTapDoneButton(sender: UIButton) {
//
//    var state = (dictionaryExploreIndia["state"] as? [String : Any]) ?? [:]
//    let city = state["Andhra"] as? [String : String] ?? [:]
//    let cityDescription: String = city["\(holdertext.text!)"] ?? ""
//    let vc = DescriptionViewController(titleString: holdertext.text!, desc: cityDescription)
//    self.navigationController?.pushViewController(vc, animated: true)
//
//
//}
