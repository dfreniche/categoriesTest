//
//  UIView+Utilities.m
//  CategoriesTest
//
//  Created by Diego Freniche Brito on 19/2/16.
//  Copyright © 2016 freniche. All rights reserved.
//

#import "UIView+Utilities.h"

@implementation UIView (Utilities)


- (void)thisMethodIsInsideACategory {
    NSLog(@"Inside first catgory");
}

- (void)thisMethodIsGoingToClash {
    NSLog(@"This is inside %@", [self class]);
}

@end
