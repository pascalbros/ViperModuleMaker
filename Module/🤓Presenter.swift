//
//  🤓Presenter.swift
//  %appname%
//
//  Created by %name% on %date%.
//  Copyright © %copyright%. All rights reserved.
//

import Foundation

class 🤓Presenter {
	
	fileprivate unowned let viewController: 🤓ViewController
	fileprivate let interactor: 🤓InteractorProtocol
	fileprivate let wireframe: 🤓WireframeProtocol
	
	init(viewController: 🤓ViewController, interactor: 🤓InteractorProtocol, wireframe: 🤓WireframeProtocol) {
		self.viewController = viewController
		self.interactor = interactor
		self.wireframe = wireframe
	}
}

extension 🤓Presenter: 🤓PresenterProtocol {

}

extension 🤓Presenter: 🤓DataProvider {
    
}

extension 🤓Presenter: 🤓EventHandler {
    
}

extension 🤓Presenter: 🤓InteractorOutput {
    
}
