//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Jun Oh on 2019-01-21.
//  Copyright © 2019 Jun Oh. All rights reserved.
//

#import "MyScrollView.h"

@implementation MyScrollView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(viewPanned:)];
        [self addGestureRecognizer:_panGesture];
        NSLog(@"%f", self.frame.origin.y);
        NSLog(@"%f", self.frame.size.height);
    }
    return self;
}

- (void) viewPanned:(UIPanGestureRecognizer *)gesture {
    [self setFrame:CGRectMake(self.frame.origin.x, self.frame.origin.y+ [gesture translationInView:self].y, self.frame.size.width, self.frame.size.height)];
    
    
    if(self.frame.origin.y > 0) {
        [self setFrame:CGRectMake(self.frame.origin.x, 0, self.frame.size.width, self.frame.size.height)];
    } else if(self.frame.origin.y < self.frame.size.height-self.contentSize.height) {
        [self setFrame:CGRectMake(self.frame.origin.x, self.frame.size.height-self.contentSize.height, self.frame.size.width, self.frame.size.height)];
    }
    //self.transform = CGAffineTransformMakeTranslation(0, [gesture translationInView:self].y);
    [gesture setTranslation:CGPointZero inView:self];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
