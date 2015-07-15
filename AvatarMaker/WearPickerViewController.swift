//
//  WearPickerViewController.swift
//  AvatarMaker
//
//  Created by 山田宏道 on 2015/07/14.
//  Copyright (c) 2015年 Torques Inc. All rights reserved.
//

import UIKit

protocol WearPickerProtocol {
	func wearImageSelected( wearImageName: String )
}

class WearPickerViewController: UIViewController {
	var wearPickerDelegate: WearPickerProtocol?
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// Do any additional setup after loading the view.
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	@IBAction func wear0Pressed(sender: AnyObject) {
		self.selectWearImage("AvatarWear0")
	}
	
	@IBAction func wear1Pressed(sender: AnyObject) {
		self.selectWearImage("AvatarWear1")
	}
	
	@IBAction func wear2Pressed(sender: AnyObject) {
		self.selectWearImage("AvatarWear2")
	}
	
	@IBAction func wear3Pressed(sender: AnyObject) {
		self.selectWearImage("AvatarWear3")
	}
	
	func selectWearImage( imageName: String ) {
		println("select - \(imageName)")
		
		// TODO: 実装.
		if( wearPickerDelegate != nil ){
			wearPickerDelegate?.wearImageSelected(imageName)
		}
		
		self.navigationController?.popViewControllerAnimated(true)
	}
}
