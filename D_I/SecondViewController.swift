//
//  SecondViewController.swift
//  D_I
//
//  Created by Rav on 12/03/2020.
//  Copyright © 2020 Rav. All rights reserved.
//

import UIKit

class SecondViewController: BaseViewController<SecondViewInjector> {
    
    private var cdProvider: CoreDataServiceProtocol?
    private var wbProvider: WebServiceProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        cdProvider?.attach(delegate: self)
        cdProvider?.fetchSomething()
        wbProvider?.attach(delegate: self)
        wbProvider?.getSomething()
    }

    override func inject(container: SecondViewInjector) {
        cdProvider = container.inject().CDProvider
        wbProvider = container.inject().WSProvider
    }
}

//MARK: - CoreDataServiceResponseProtocol
extension SecondViewController: CoreDataServiceResponseProtocol {
    func fetchSomethingResult() {
        print("[SecondViewController] FETCHING SOME NICE MODELS FROM CORE DATA")
    }
}

//MARK: - WebServiceResponseProtocol
extension SecondViewController: WebServiceResponseProtocol {
    func getSomethingResult() {
        print("[SecondViewController] GETTING REALLY AWESOME STUFF FROM REST API")
    }
}
