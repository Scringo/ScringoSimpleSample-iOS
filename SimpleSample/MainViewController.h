//
//  MainViewController.h
//  SimpleSample
//
//  Created by Guy Federovsky on 27/10/13.
//  Copyright (c) 2013 Scringo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *swipeMessageLabel;
@property (weak, nonatomic) IBOutlet UIButton *scringoMenuButton;

-(id)initWithScringoButton:(BOOL)showScringoButton;
-(IBAction)scringoMenuClicked:(id)sender;

@end
