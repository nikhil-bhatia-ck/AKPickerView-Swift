//
//  ViewController.swift
//  AKPickerViewSample
//
//  Created by Akio Yasui on 2/10/15.
//  Copyright (c) 2015 Akio Yasui. All rights reserved.
//

import UIKit

class ViewController: UIViewController, AKPickerViewDataSource, AKPickerViewDelegate {

	@IBOutlet var pickerView: AKPickerView!

	let titles = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]

	override func viewDidLoad() {
		super.viewDidLoad()
		self.pickerView.delegate = self
		self.pickerView.dataSource = self

		self.pickerView.font = UIFont(name: "HelveticaNeue-Light", size: 20)!
		self.pickerView.highlightedFont = UIFont.boldSystemFont(ofSize: 20)//UIFont(name: "HelveticaNeue-Bold", size: 25)!
        self.pickerView.highlightedTextColor = UIColor.red
		self.pickerView.pickerViewStyle = .flat
		self.pickerView.maskDisabled = false
		self.pickerView.reloadData()
        self.pickerView.circleSelectedItem = true
        self.pickerView.circleSelectedItemDiameter = 45.0
        self.pickerView.circleSelectedItemWidth = 2.0
	}

	// MARK: - AKPickerViewDataSource

	func numberOfItemsInPickerView(_ pickerView: AKPickerView) -> Int {
		return self.titles.count
	}

	/*

	Image Support
	-------------
	Please comment '-pickerView:titleForItem:' entirely and
	uncomment '-pickerView:imageForItem:' to see how it works.

	*/
	func pickerView(_ pickerView: AKPickerView, titleForItem item: Int) -> String {
		return self.titles[item]
	}

//	func pickerView(_ pickerView: AKPickerView, imageForItem item: Int) -> UIImage {
//		return UIImage(named: self.titles[item])!
//	}

	// MARK: - AKPickerViewDelegate
	func pickerView(_ pickerView: AKPickerView, didSelectItem item: Int) {
		print("Your favorite city is \(self.titles[item])")
	}

	/*

	Label Customization
	-------------------
	You can customize labels by their any properties (except for fonts,)
	and margin around text.
	These methods are optional, and ignored when using images.

	*/

	
    func pickerView(_ pickerView: AKPickerView, configureLabel label: UILabel, forItem item: Int) {
//        if let label = pickerView.itemLabel(item: item) {
//            if pickerView.selectedItem != item {
//                label.layer.borderWidth = 0.0
//                label.layer.cornerRadius = 0.0
//                label.layer.borderColor = UIColor.white.cgColor
//            }
//        }
    }
    
	func pickerView(_ pickerView: AKPickerView, marginForItem item: Int) -> CGSize {
        return CGSize(width: 40,height: 20)
	}
	

	/*

	UIScrollViewDelegate Support
	----------------------------
	AKPickerViewDelegate inherits UIScrollViewDelegate.
	You can use UIScrollViewDelegate methods
	by simply setting pickerView's delegate.

	*/

	func scrollViewDidScroll(_ scrollView: UIScrollView) {
		// println("\(scrollView.contentOffset.x)")
	}
	
}
