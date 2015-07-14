//
//  MainViewController.swift
//  AvatarMaker
//
//  Created by 山田宏道 on 2015/07/14.
//  Copyright (c) 2015年 Torques Inc. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
	
	@IBOutlet weak var wearImageView: UIImageView!
	
	var wearImageName: String!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// Do any additional setup after loading the view.
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	override func viewWillAppear(animated: Bool) {
		super.viewWillAppear(animated)
		
		self.updateAvatar()
	}
	
	func updateAvatar() {
		if( wearImageName != nil ){
			self.wearImageView.image	= UIImage(named: wearImageName)
		}
	}
	
}
