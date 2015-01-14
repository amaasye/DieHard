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
    self.dieLabel.text = [NSString stringWithFormat:@"%d", value];
}

-(void)dieFellOffTable {
    self.dieLabel.text = @"💩";
}


@end
