//
//  ViewController.swift
//  SampleMVP
//
//  Created by Karthik on 19/5/20.
//  Copyright © 2020 Karthik Aiyer. All rights reserved.
//

import UIKit

class ModuleViewController: UIViewController {

	private var presenter: ModulePresenter?
	
	override func viewDidLoad() {
		super.viewDidLoad()
		presenter = ModulePresenter()
	}
}

extension ModuleViewController: ModuleViewDelegate { }
