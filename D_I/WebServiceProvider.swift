//
//  WebServiceProvider.swift
//  D_I
//
//  Created by Rav on 12/03/2020.
//  Copyright © 2020 Rav. All rights reserved.
//

import Foundation

protocol WebServiceProtocol {
    func getSomething()
    func attach(delegate: WebServiceResponseProtocol)
}

protocol WebServiceResponseProtocol: class {
    func getSomethingResult()
}

class WebServiceProvider: WebServiceProtocol {
    
    private weak var delegate: WebServiceResponseProtocol?
    
    func attach(delegate: WebServiceResponseProtocol) {
        self.delegate = delegate
    }
    
    func getSomething() {
        delegate?.getSomethingResult()
    }
}

