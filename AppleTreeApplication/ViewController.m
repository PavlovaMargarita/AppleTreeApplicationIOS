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
@property (weak, nonatomic) IBOutlet UILabel *property1;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    AppDelegate * appdelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    self.apple = appdelegate.apple;
}
- (IBAction)growPress:(id)sender {
    NSLog(@"test");
    NSLog(@"apple %d", self.apple.stones);
    [self.property1 setText:@"AAA"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
