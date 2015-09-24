//
//  AppleTree.m
//  AppleTreeApplication
//
//  Created by fpmi on 24.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "AppleTree.h"

@implementation AppleTree

-(id) init {
    self = [super init];
    if(self){
        _apples = [[NSMutableArray alloc] init];
        [self grow];
        
    }
    return  self;
}

-(int) getRandomAppleCount{
    int appleMin = 4;
    int appleMax = 10;
    int appleRandomCount = [self getRandomCountWithMinValue:appleMin withMaxValue:appleMax];
    return appleRandomCount;
}

-(void) grow{
    self.height++;
    int leafRandomCount = [self getRandomLeafCount];
    for(int i = 0; i < leafRandomCount; i++){
        Leaf * leaf = [[Leaf alloc] init];
        [self.leafs addObject:leaf];
    }
    
    int appleRandomCount = [self getRandomAppleCount];
    for(int i = 0; i < appleRandomCount; i++){
        Apple * apple = [[Apple alloc] init];
        [_apples addObject:apple];
    }
    
}

-(NSMutableArray *) shake{
    NSUInteger leafRandomCount = [self getRandomLeafCount];
    
    if(leafRandomCount > [self.leafs count]){
        leafRandomCount = [self.leafs count];
    }
    if(leafRandomCount > 0){
        Leaf * leaf;
        NSMutableArray *discardedLeafs = [[NSMutableArray alloc] init];
        
        for (leaf in self.leafs) {
            if(leafRandomCount == 0){
                break;
            } else {
                [discardedLeafs addObject:leaf];
                leafRandomCount--;
            }
        }
        
        [self.leafs removeObjectsInArray:discardedLeafs];
    }
    
    
    NSUInteger appleRandomCount = [self getRandomAppleCount];
    NSMutableArray *discardedApples = [[NSMutableArray alloc] init];
    
    if(appleRandomCount > [_apples count]){
        appleRandomCount = [_apples count];
    }
    if(appleRandomCount > 0){
        Apple * apple;
        for (apple in _apples) {
            if(appleRandomCount == 0){
                break;
            } else {
                [discardedApples addObject:apple];
                appleRandomCount--;
            }
        }
        
        [_apples removeObjectsInArray:discardedApples];
    }
    
    return discardedApples;
}

@end
