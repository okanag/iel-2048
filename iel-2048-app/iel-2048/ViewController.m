//
//  ViewController.m
//  iel-2048
//
//  Created by Okan Agca on 04/04/14.
//  Copyright (c) 2014 yastikyorgan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSString *resourcePath = [[NSBundle mainBundle] bundlePath];
    NSString *pathToHtml = [NSString stringWithFormat:@"%@/Content",resourcePath];
    NSURL *baseURL = [[NSURL alloc] initFileURLWithPath:pathToHtml isDirectory:YES];
    
    NSString *loadedhtml = [NSString stringWithContentsOfFile:[[NSBundle mainBundle]
                                        pathForResource:@"index" ofType:@"html"
                                        inDirectory:@"Content"]
                              encoding:NSUTF8StringEncoding error:nil];

    [_webview loadHTMLString:loadedhtml baseURL:baseURL];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
