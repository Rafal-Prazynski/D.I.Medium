//
//  CoreDataService.swift
//  D_I
//
//  Created by Rav on 12/03/2020.
//  Copyright © 2020 Rav. All rights reserved.
//

import Foundation

protocol CoreDataServiceProtocol {
    func fetchSomething()
    func attach(delegate: CoreDataServiceResponseProtocol)
}

protocol CoreDataServiceResponseProtocol: class{
    func fetchSomethingResult()
}

class CoreDataProvider: CoreDataServiceProtocol {
    
    private weak var delegate: CoreDataServiceResponseProtocol?
    
    func attach(delegate: CoreDataServiceResponseProtocol) {
        self.delegate = delegate
    }
    
    func fetchSomething() {
        delegate?.fetchSomethingResult()
    }
}
