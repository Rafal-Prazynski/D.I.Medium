//
//  InjectorContainer.swift
//  D_I
//
//  Created by Rav on 12/03/2020.
//  Copyright © 2020 Rav. All rights reserved.
//

import Foundation

protocol Injectable {
    associatedtype ReturnType
    func inject() -> ReturnType
}

struct FirstViewInjector: Injectable {
    typealias ReturnType = CoreDataServiceProtocol
    
    func inject() -> ReturnType {
        CoreDataProvider()
    }
}

struct SecondViewInjector: Injectable {
    typealias ReturnType = (CDProvider: CoreDataServiceProtocol, WSProvider: WebServiceProtocol)
    
    func inject() -> ReturnType {
        (CoreDataProvider(),WebServiceProvider())
    }
}

