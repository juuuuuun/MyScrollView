//
//  MyScrollView.h
//  MyScrollView
//
//  Created by Jun Oh on 2019-01-21.
//  Copyright © 2019 Jun Oh. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyScrollView : UIView

@property (nonatomic) CGSize contentSize;
@property (nonatomic) UIPanGestureRecognizer* panGesture;

@end

NS_ASSUME_NONNULL_END
