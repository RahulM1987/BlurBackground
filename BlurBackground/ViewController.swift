//
//  ViewController.swift
//  BlurBackground
//
//  Created by Rahul Morade on 17/05/16.
//  Copyright © 2016 Rahul Morade. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let PicBlur=BlurImageBackground.init(frameR: CGRectMake(0, 40, self.view.bounds.size.width, 320), ImageName: "evoque.jpg")
        self.view.addSubview(PicBlur)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

