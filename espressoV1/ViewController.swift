//
//  ViewController.swift
//  espressoV1
//
//  Created by Mike on 2/10/17.
//  Copyright © 2017 GoodGood. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    let videoManager =  VideoAPIManager()
    videoManager.getTodaysVideos { (videos) in
      
    }
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

