//
//  Apple.m
//  AppleTreeApplication
//
//  Created by fpmi on 17.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "Apple.h"

@implementation Apple

-(id) init {
    self = [super init];
    if(self){
        _isBreaking = NO;
        _isOnTree = YES;
        _stones = 2;
        _color = GREEN;
    }
    return  self;
}

- (Color) mature{
    if(_color == RED){
        NSLog(@"Apple already matured");
    } else {
        _color = RED;
    }
    return _color;
    
}

- (void) breaking{
    if(!_isBreaking){
        _isBreaking = YES;
    } else {
        NSLog(@"Warning!!! Apple was broken");
    }
}

@end
