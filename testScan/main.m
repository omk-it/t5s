//
//  main.m
//  testScan
//
//  Created by Admin on 6/13/13.
//  Copyright (c) 2013 Admin. All rights reserved.
//
#define DOCUMENTS [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject]
#import <UIKit/UIKit.h>

#import "ScanAppDelegate.h"

int main(int argc, char *argv[])

{
    NSString *filePathBundleXML = [[NSBundle mainBundle] pathForResource:@"menu"ofType:@"xml"];
    NSData *xmlData = [NSData dataWithContentsOfFile:filePathBundleXML];
    
    NSString *filePathDocXML = [DOCUMENTS stringByAppendingPathComponent:@"menu.xml"];
	[xmlData writeToFile:filePathDocXML atomically:YES];
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([ScanAppDelegate class]));
    }
}
