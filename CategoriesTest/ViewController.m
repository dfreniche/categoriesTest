//
//  ViewController.m
//  CategoriesTest
//
//  Created by Diego Freniche Brito on 19/2/16.
//  Copyright © 2016 freniche. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Utilities.h"
#import "Categories/UIView+Utilities.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view thisMethodIsGoingToClash];
    [self.view anotherMethodInsideACategory];
    [self.view thisMethodIsInsideACategory];
    [self.view performSelector:@selector(thisMethodIsInsideACategory) withObject:nil];
}

@end
