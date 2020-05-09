//
//  BaseViewController.swift
//  D_I
//
//  Created by Rav on 29/04/2020.
//  Copyright © 2020 Rav. All rights reserved.
//

import UIKit

class BaseViewController<T:Injectable>: UIViewController {
 
    func inject(container: T) {}
}
