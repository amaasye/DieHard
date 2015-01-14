//
//  Die.h
//  DieHard
//
//  Created by Syed Amaanullah on 1/14/15.
//  Copyright (c) 2015 Syed Amaanullah. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol DieDelegate
-(void)dieRolledWithValue:(int)value;
-(void)dieFellOffTable;
@end

@interface Die : NSObject
-(void)roll;

@property id<DieDelegate> delegate;
@end
