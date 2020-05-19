//
//  ModulePresenter.swift
//  SampleVIPER
//
//  Created by Karthik on 19/5/20.
//  Copyright © 2020 Karthik Aiyer. All rights reserved.
//

import Foundation

class ModulePresenter {
	var view: ModuleViewInterface?
	var interactor: ModuleInput?
	var wireframe: ModuleWireframeInterface?
	
	init(wireframe: ModuleWireframeInterface?) {
		self.wireframe = wireframe
	}
}

extension ModulePresenter: ModuleOutput {}

extension ModulePresenter: ModulePresenterInterface {}
