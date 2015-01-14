//
//  Die.m
//  DieHard
//
//  Created by Syed Amaanullah on 1/14/15.
//  Copyright (c) 2015 Syed Amaanullah. All rights reserved.
//

#import "Die.h"

@implementation Die

-(void)roll {

    int randomTimeInSeconds = arc4random_uniform(10) + 1;
    NSLog(@"This happens 1st");
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(randomTimeInSeconds * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        int randomNumber = arc4random_uniform(6) + 1;
        NSLog(@"This happens 3rd: %d", randomNumber);
    });
    NSLog(@"This happens 2nd");

}


@end
