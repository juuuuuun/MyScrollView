//
//  ViewController.m
//  MyScrollView
//
//  Created by Jun Oh on 2019-01-21.
//  Copyright © 2019 Jun Oh. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    MyScrollView* containingView = [[MyScrollView alloc] initWithFrame:self.view.bounds];
    containingView.contentSize = CGSizeMake(300, 750);
    [self.view addSubview:containingView];
    
    UIView* redView = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    [containingView addSubview:redView];
    redView.backgroundColor = [UIColor redColor];
    
    UIView* greenView = [[UIView alloc] initWithFrame:CGRectMake(150, 150, 150, 200)];
    [containingView addSubview:greenView];
    greenView.backgroundColor = [UIColor greenColor];
    
    UIView* blueView = [[UIView alloc] initWithFrame:CGRectMake(40, 400, 200, 150)];
    [containingView addSubview:blueView];
    blueView.backgroundColor = [UIColor blueColor];
    
    UIView* yellowView = [[UIView alloc] initWithFrame:CGRectMake(100, 600, 180, 150)];
    [containingView addSubview:yellowView];
    yellowView.backgroundColor = [UIColor yellowColor];
    
}


@end
