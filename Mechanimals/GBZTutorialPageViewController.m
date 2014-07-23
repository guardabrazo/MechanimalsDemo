//
//  GBZTutorialPageViewController.m
//  Mechanimals
//
//  Created by Federico Guardabrazo Vallejo on 21/07/14.
//  Copyright (c) 2014 guardabrazo. All rights reserved.
//

#import "GBZTutorialPageViewController.h"
#import "GBZTutorial0ViewController.h"
#import "GBZTutorial1ViewController.h"
#import "GBZTutorial2ViewController.h"
#import "GBZTutorial3ViewController.h"


@interface GBZTutorialPageViewController ()

@property (strong, nonatomic) NSArray *pages;


@end

@implementation GBZTutorialPageViewController

-(void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
    self.delegate = self;
    self.dataSource = self;
//    self.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height+40);
    
    GBZTutorial0ViewController *initialViewController = [self.pages firstObject];
    
    NSArray *viewControllers = [NSArray arrayWithObject:initialViewController];
    
    [self setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
    
    
}

- (NSArray *)pages{
    
    if(!_pages){
        GBZTutorial0ViewController *tutorial0 = [[GBZTutorial0ViewController alloc]init];
        GBZTutorial1ViewController *tutorial1 = [[GBZTutorial1ViewController alloc]init];
        GBZTutorial2ViewController *tutorial2 = [[GBZTutorial2ViewController alloc]init];
        GBZTutorial3ViewController *tutorial3 = [[GBZTutorial3ViewController alloc]init];
        _pages = @[tutorial0, tutorial1, tutorial2, tutorial3];
    }
    return _pages;
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController {
    
    if (nil == viewController) {
        return _pages[0];
    }
    NSInteger idx = [_pages indexOfObject:viewController];
    NSParameterAssert(idx != NSNotFound);
    if (idx <= 0) {
        // we're at the end of the _pages array
        return nil;
    }
    // return the previous page's view controller
    return _pages[idx - 1];
    
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController {
    
    if (nil == viewController) {
        return _pages[0];
    }
    NSInteger idx = [_pages indexOfObject:viewController];
    NSParameterAssert(idx != NSNotFound);
    if (idx >= [_pages count] - 1) {
        // we're at the end of the _pages array
        return nil;
    }
    // return the next page's view controller
    return _pages[idx + 1];
}

- (NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController {
    // The number of items reflected in the page indicator.
  
    
    return self.pages.count;
}

- (NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController {
    // The selected item reflected in the page indicator.
    return 0;
}

-(void)viewDidLayoutSubviews {
    UIView *view = self.view;
    NSArray *subviews = view.subviews;
    if( [subviews count] == 2 ) {
        UIScrollView *scrollView = nil;
        UIPageControl *pageControl = nil;
        for (UIView* view in subviews ) {
            if( [view isKindOfClass:[UIScrollView class]] ) {
                scrollView = (UIScrollView*)view;
            } else if( [view isKindOfClass:[UIPageControl class]] ) {
                pageControl = (UIPageControl*)view;
            }
        }
        if(pageControl != nil ) {
            // expand scroll view to fit entire view
            scrollView.frame = view.bounds;
            // put page control in front
            [view bringSubviewToFront:pageControl];
        }
    }
    [super viewDidLayoutSubviews];
}

@end
