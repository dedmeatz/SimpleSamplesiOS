//
//  ModuleFactory.swift
//  SampleVIPER
//
//  Created by Karthik on 19/5/20.
//  Copyright © 2020 Karthik Aiyer. All rights reserved.
//

import Foundation

class ModuleFactory {
	private var view: ModuleViewInterface?
	
	private var wireframe: ModuleWireframeInterface {
		return ModuleWireframe(view: view)
	}
	
	private var presenter: ModulePresenter {
		return ModulePresenter(wireframe: wireframe)
	}
	
	private var interactor: Module {
		return Module(output: presenter)
	}
	
	init(view: ModuleViewController) {
		self.view = view
		view.presenter = presenter
		
		presenter.view = view
		presenter.interactor = interactor
	}
}
