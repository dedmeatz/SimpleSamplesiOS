//
//  Module.swift
//  SampleVIPER
//
//  Created by Karthik on 19/5/20.
//  Copyright © 2020 Karthik Aiyer. All rights reserved.
//

import Foundation

class Module {
	var output: ModuleOutput?
	
	init(output: ModuleOutput?) {
		self.output = output
	}
}

extension Module: ModuleInput {}
