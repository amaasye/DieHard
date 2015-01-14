//
//  ViewController.m
//  DieHard
//
//  Created by Syed Amaanullah on 1/14/15.
//  Copyright (c) 2015 Syed Amaanullah. All rights reserved.
//

#import "ViewController.h"
#import "Die.h"

@interface ViewController () <DieDelegate>
@property (weak, nonatomic) IBOutlet UILabel *dieLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}
- (IBAction)onRollDieButtonTapped:(UIButton *)sender {
    Die *funkyDie = [[Die alloc]init];
    funkyDie.delegate = self;
    [funkyDie roll];
}

-(void)dieRolledWithValue:(int)value {
    NSLog(@"Hi! I'm the view controller and the die told me it rolled: %d", value);
}


@end
