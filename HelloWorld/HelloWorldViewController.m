//
//  HelloWorldViewController.m
//  HelloWorld
//
//  Created by Gao Jian on 2/22/13.
//  Copyright (c) 2013 Gao Jian. All rights reserved.
//

#import "HelloWorldViewController.h"

@interface HelloWorldViewController ()

@end

@implementation HelloWorldViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSURL *url = [[NSUserDefaults standardUserDefaults] URLForKey:@"URL"];
    NSLog(@"%@", url);
    [[UIApplication sharedApplication] openURL:url];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)showMessage
{
    UIAlertView *helloWorldAlert = [[UIAlertView alloc] initWithTitle:@"My First App" message: @"Hello World!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:@"exit", nil];
    [helloWorldAlert show];
}

@end
