//
//  HomeCoordinator.swift
//  ExploreIndia
//
//  Created by Kulanthaivel, Myl (.) on 08/11/19.
//  Copyright © 2019 Kulanthaivel, Myl (.). All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator {
   func start()
}

class HomeCoordinator: Coordinator {
    var vc: StateCityViewController!
    private let router: UINavigationController
    init(router: UINavigationController = UINavigationController()) {
    self.router = router
    }
    
    func start() {
        let vm = HomeViewModel()
        vc = StateCityViewController(commonModel: vm)
        router.pushViewController(vc, animated: true)
    }
}

//extension HomeCoordinator: CommonViewable  {
//    var appTitle: String {
//        let cv: CityViewModel
//        cv.appTitle =
//    }
//    
//    var labelText: String {
//        
//    }
//    
//    var placeHolder: String {
//        
//    }
//    
//    func didTapDoneButton(appTitle: String) {
//        
//        let vm = CityViewModel()
//        vc = StateCityViewController(cityModel: vm)
//        vc.delegate = self
//    }
    

//}

