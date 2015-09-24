//
//  Tree.h
//  AppleTreeApplication
//
//  Created by fpmi on 24.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Leaf.h"

@interface Tree : NSObject

@property int height;

@property NSMutableArray * leafs;

-(void) grow;

-(int) getRandomLeafCount;

-(int) getRandomCountWithMinValue:(int)min withMaxValue:(int)max;

@end
