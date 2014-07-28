//
//  ViewController.m
//  StoreKitDemo
//
//  Created by Lailei Huang on 28/07/2014.
//  Copyright (c) 2014 alex.huang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showStoreView:(id)sender {
    SKStoreProductViewController *storeViewController =
        [[SKStoreProductViewController alloc] init];
    
    storeViewController.delegate = self;
    
    NSDictionary *parameters = @{SKStoreProductParameterITunesItemIdentifier:
                                     [NSNumber numberWithInteger:357410832]};
    NSLog(@"Clicked buy now");
    
    [storeViewController loadProductWithParameters:parameters completionBlock:^(BOOL result, NSError *error) {
        NSLog(@"try load product");
        if (result) {
            [self presentViewController:storeViewController
                               animated:YES completion:nil];
        }else{
            NSLog(@"Result is NO");
        }
    }];
    
}

#pragma mark -
#pragma mark SKStoreProductViewControllerDelegate

-(void) productViewControllerDidFinish:(SKStoreProductViewController *)viewController{
    [viewController dismissViewControllerAnimated:YES completion:nil];
}

@end
