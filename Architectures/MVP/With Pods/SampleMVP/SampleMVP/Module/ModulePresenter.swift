//
//  ModuleViewModel.swift
//  SampleMVVM
//
//  Created by Karthik on 19/5/20.
//  Copyright © 2020 Karthik Aiyer. All rights reserved.
//

import Foundation

class ModulePresenter {
	private var model: Module?
	private var view: ModuleViewDelegate?
	
	init() {}
	
	init(model: Module, view: ModuleViewDelegate) {
		self.model = model
		self.view = view
	}
}
