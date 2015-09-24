//
//  ViewController.m
//  AppleTreeApplication
//
//  Created by fpmi on 17.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *countOfApples;
@property (weak, nonatomic) IBOutlet UILabel *countOfLeafs;
@property (weak, nonatomic) IBOutlet UILabel *treeHeight;
@property (weak, nonatomic) IBOutlet UILabel *property1;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    AppDelegate * appdelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    self.appleTree = appdelegate.appleTree;
    
    [self.countOfApples setText:@"AAA"];
}

- (IBAction)growPress:(id)sender {
    [self.appleTree grow];
    [self setValuesToLabels];
    
}

- (IBAction)shakePress:(id)sender {
    [self.appleTree shake];
    [self setValuesToLabels];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) setValuesToLabels{
    [self.countOfApples setText:[NSString stringWithFormat:@"%zd", [self.appleTree.apples count]]];
    [self.countOfLeafs setText:[NSString stringWithFormat:@"%zd", [self.appleTree.leafs count]]];
    [self.treeHeight setText:[NSString stringWithFormat:@"%d", self.appleTree.height]];
}

@end
