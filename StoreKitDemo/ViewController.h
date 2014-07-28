//
//  ViewController.h
//  StoreKitDemo
//
//  Created by Lailei Huang on 28/07/2014.
//  Copyright (c) 2014 alex.huang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <StoreKit/StoreKit.h>


@interface ViewController : UIViewController <SKStoreProductViewControllerDelegate>

- (IBAction)showStoreView:(id)sender;

@end
