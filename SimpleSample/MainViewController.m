//
//  MainViewController.m
//  SimpleSample
//
//  Created by Guy Federovsky on 27/10/13.
//  Copyright (c) 2013 Scringo. All rights reserved.
//

#import "MainViewController.h"

#import <Scringo/Scringo.h>

@interface MainViewController ()
@property (nonatomic, assign) BOOL showScringoButton;
@end

@implementation MainViewController

-(id)initWithScringoButton:(BOOL)showScringoButton {
    self = [super initWithNibName:@"mainView" bundle:nil];
    if (self) {
        self.showScringoButton = showScringoButton;
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

	// Do any additional setup after loading the view.
    if (self.showScringoButton) {
        self.scringoMenuButton.hidden = NO;
        self.swipeMessageLabel.hidden = YES;
    } else {
        self.scringoMenuButton.hidden = YES;
        self.swipeMessageLabel.hidden = NO;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)scringoMenuClicked:(id)sender {
    [Scringo openMenuWithNavigationController:self.navigationController withScringoNavControllerEnabled:NO];
}

@end
