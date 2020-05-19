//
//  ModuleWireframe.swift
//  SampleVIPER
//
//  Created by Karthik on 19/5/20.
//  Copyright © 2020 Karthik Aiyer. All rights reserved.
//

import Foundation

class ModuleWireframe {
	var view: ModuleViewInterface?
	
	init(view: ModuleViewInterface?) {
		self.view = view
	}
}

extension ModuleWireframe: ModuleWireframeInterface {}
