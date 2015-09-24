//
//  AppleTree.h
//  AppleTreeApplication
//
//  Created by fpmi on 24.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tree.h"
#import "Apple.h"

@interface AppleTree : Tree

@property NSMutableArray * apples;

-(NSMutableArray *) shake;

@end
