//
//  CityCoordinator.swift
//  ExploreIndia
//
//  Created by Kulanthaivel, Myl (.) on 11/11/19.
//  Copyright © 2019 Kulanthaivel, Myl (.). All rights reserved.
//

import Foundation
import UIKit

class CityCoordinator: Coordinator {
     
    private let router: UINavigationController
    let appTitle: String
    init(router: UINavigationController, appTitle: String) {
        self.appTitle = appTitle
        self.router = router
    }
    
    func start() {
        let vm = CityViewModel() //CityViewModel
        let vc = StateCityViewController(commonModel: vm)
        router.pushViewController(vc, animated: true)
    }
}



