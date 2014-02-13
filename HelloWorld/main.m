//
//  main.m
//  HelloWorld
//
//  Created by Gao Jian on 2/22/13.
//  Copyright (c) 2013 Gao Jian. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "HelloWorldAppDelegate.h"

int main(int argc, char *argv[])
{
    //get the args from command line
    
    if (argc == 1){
        NSURL *url = [NSURL URLWithString:@"http://www.google.com"];
        [[NSUserDefaults standardUserDefaults] setURL:url forKey:@"URL"];
    }
    else{
        NSString *str_url = [NSString stringWithFormat:@"%s", argv[1]];
        NSURL *url = [NSURL URLWithString:str_url];
        [[NSUserDefaults standardUserDefaults] setURL:url forKey:@"URL"];
    }
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([HelloWorldAppDelegate class]));
    }
}
