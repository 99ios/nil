//
//  ViewController.m
//  nil
//
//  Created by 史昕 on 16/5/24.
//  Copyright © 2016年 史昕. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, copy) NSString *string3;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
   
    NSString *string1;
    NSString *string2 = nil;
    NSLog(@"%p--%p--%p",string1,string2,self.string3);
    
    
    int *nullNum = NULL;
    int num = 1;
    nullNum = &num;
    NSLog(@"%d",*nullNum);
    
    Class class = [NSString class];
    if (class != Nil) {
        NSLog(@"class name: %@", class);
    }
    
    NSArray *nullArray = @[[NSNull null],[NSNull null]];
    NSLog(@"%@",nullArray);
    
}



@end
