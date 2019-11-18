//
//  Commonviable.swift
//  ExploreIndia
//
//  Created by Kulanthaivel, Myl (.) on 12/11/19.
//  Copyright © 2019 Kulanthaivel, Myl (.). All rights reserved.
//

import Foundation


protocol CommonUI: class {
    
    var appTitle: String {get }
    var labelText: String {get }
    var placeHolder: String {get }
    func didTapDoneButton(appTitle: String) -> ()
}



//protocol CommonViewable: class {
//    func UiSetup(appTitle: String, labelText: String, placeHolder: String) -> ()
//}
