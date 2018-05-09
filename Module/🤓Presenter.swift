//
//  ListPresenter.swift
//  %appname%
//
//  Created by %name% on %date%.
//  Copyright © %copyright%. All rights reserved.
//

import UIKit

class 🤓Presenter {
	
	fileprivate unowned let viewController: 🤓ViewController
	fileprivate let interactor: 🤓InteractorInterface
	fileprivate let wireframe: 🤓WireframeInterface
	
	init(viewController: 🤓ViewController, interactor: 🤓InteractorInterface, wireframe: 🤓WireframeInterface) {
		self.viewController = viewController
		self.interactor = interactor
		self.wireframe = wireframe
	}
}

extension 🤓Presenter: 🤓PresenterInterface {

}
