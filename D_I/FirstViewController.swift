//
//  FirstViewController.swift
//  D_I
//
//  Created by Rav on 12/03/2020.
//  Copyright © 2020 Rav. All rights reserved.
//

import UIKit

class FirstViewController: BaseViewController<FirstViewInjector> {
    
    private var cdProvider: CoreDataServiceProtocol?
        
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        
        cdProvider?.attach(delegate: self)
        cdProvider?.fetchSomething()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let secondVC = SecondViewController()
        secondVC.inject(container: SecondViewInjector())
        present(secondVC, animated: true, completion: nil)
    }

    override func inject(container: FirstViewInjector) {
        cdProvider = container.inject()
    }
}

//MARK: - CoreDataServiceResponseProtocol
extension FirstViewController: CoreDataServiceResponseProtocol {
    func fetchSomethingResult() {
        print("[FirstViewController] FETCHING SOME NICE MODELS FROM CORE DATA")
    }
}
