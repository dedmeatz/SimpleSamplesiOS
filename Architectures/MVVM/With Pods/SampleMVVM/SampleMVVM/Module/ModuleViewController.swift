//
//  ViewController.swift
//  SampleMVVM
//
//  Created by Karthik on 19/5/20.
//  Copyright © 2020 Karthik Aiyer. All rights reserved.
//

import UIKit

class ModuleViewController: UIViewController {

	private var viewModel: ModuleViewModel?
	
	override func viewDidLoad() {
		super.viewDidLoad()
		viewModel = ModuleViewModel()
	}
}

