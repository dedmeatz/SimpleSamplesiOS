//
//  ConfigProvider.swift
//  SampleProject
//
//  Created by Karthik Aiyer on 11/1/20.
//  Copyright © 2020 Karthik Aiyer. All rights reserved.
//

import Foundation

class ConfigProvider {
	static func apiUrl() -> String {
		return Bundle.main.infoDictionary?["APIUrl"] as? String ?? ""
	}
	
	static func apiKey() -> String {
		return Bundle.main.infoDictionary?["APIKey"] as? String ?? ""
	}
}
