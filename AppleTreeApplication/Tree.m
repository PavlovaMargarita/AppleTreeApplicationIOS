//
//  Tree.m
//  AppleTreeApplication
//
//  Created by fpmi on 24.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "Tree.h"

@implementation Tree

-(id) init {
    self = [super init];
    if(self){
        _height = 10;
        _leafs = [[NSMutableArray alloc] init];
    }
    return  self;
}

-(int) getRandomLeafCount{
    int leafMin = 10;
    int leafMax = 20;
    int leafRandomCount = [self getRandomCountWithMinValue:leafMin withMaxValue:leafMax];
    return leafRandomCount;
}

-(int) getRandomCountWithMinValue:(int)min withMaxValue:(int)max{
    int randomCount = min + arc4random() % (max - min);
    return randomCount;
}

-(void) grow{
    _height++;
    NSUInteger leafRandomCount = [self getRandomLeafCount];
    for(int i = 0; i < leafRandomCount; i++){
        Leaf * leaf = [[Leaf alloc] init];
        [_leafs addObject:leaf];
    }
}

@end
