//
//  ModuleViewModel.swift
//  SampleMVVM
//
//  Created by Karthik on 19/5/20.
//  Copyright © 2020 Karthik Aiyer. All rights reserved.
//

import Foundation

class ModuleViewModel {
	private var model: Module?
	
	init() {}
	
	init(model: Module) {
		self.model = model
	}
}
