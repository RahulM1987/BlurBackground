//
//  BlurImageBackground.swift
//  BlurBackground
//
//  Created by Rahul Morade on 17/05/16.
//  Copyright © 2016 Rahul Morade. All rights reserved.
//

import UIKit

public class BlurImageBackground: UIView {

    var GetFrame: CGRect?
    var GetImageName: String?
    
    public init(frameR: CGRect, ImageName: String) {
        super.init(frame:frameR)
        GetImageName=ImageName
        GetFrame=frameR
        SetupView()
    }

     required public init?(coder aDecoder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
     }
    
    func SetupView()
    {
        let ImageViewBack: UIImageView=UIImageView(frame: GetFrame!)
        let ImageName: UIImage=UIImage.init(named: GetImageName!)!
        ImageViewBack.image=ImageName
        
        let ImageViewFront: UIImageView=UIImageView(frame:CGRectMake(((GetFrame?.origin.x)!+40), ((GetFrame?.origin.y)!+90), (GetFrame?.size.width)!-40, (GetFrame?.size.height)!-90))
        
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Light)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = ImageViewBack.bounds
        blurEffectView.autoresizingMask = [.FlexibleWidth, .FlexibleHeight] // for supporting device rotation
        
        ImageViewBack.addSubview(blurEffectView)
        
        
        ImageViewFront.center=ImageViewBack.center
        
        ImageViewFront.image=ImageName
        self.addSubview(ImageViewBack)
        self.addSubview(ImageViewFront)
    }
    
    
    
    
    

}
