# Clash of Categories

Categories are a way to extend the functionality of a class without _extending_ it in the OOP sense. That is, you add methods to that class without creating a subclass. An introduction to Categories can be found [here](), but more or less if you do something like:

```
//  UIView+Utilities.h

#import <UIKit/UIKit.h>

@interface UIView (Utilities)
- (void)thisMethodIsInsideACategory;
@end

---

//  UIView+Utilities.m

#import "UIView+Utilities.h"

@implementation UIView (Utilities)

- (void)thisMethodIsInsideACategory {
    NSLog(@"Inside first catgory");
}

@end

```

You have two files, called UIView+Utilities.h and UIView+Utilities.m that _extend_ the UIView class adding a new method called _thisMethodIsInsideACategory_. The categoy has a tag (in this case _Utilities_) that allow you to expand this class adding multiple categories.

Once you import this category in your source code, you can do:

```
#import "ViewController.h"
#import "UIView+Utilities.h"


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view thisMethodIsInsideACategory];
}

@end


```

So far, so good. But what if you have two categories in your project with __the exact same file name and the exact same category identifier__? Let's look at the Clash Of Categories.

## The two conflicting categories

As you can see in the repo