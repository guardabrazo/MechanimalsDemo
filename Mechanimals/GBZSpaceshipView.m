//
//  GBZSpaceshipView.m
//  SpriteKitViewTest
//
//  Created by Federico Guardabrazo Vallejo on 20/07/14.
//  Copyright (c) 2014 guardabrazo. All rights reserved.
//

#import "GBZSpaceshipView.h"

@implementation GBZSpaceshipView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    
    CGRect frame = rect;
    //// Color Declarations
    UIColor* color4 = [UIColor colorWithRed: 0.969 green: 0.911 blue: 0.729 alpha: 1];
    UIColor* color6 = [UIColor colorWithRed: 0.923 green: 0.753 blue: 0.37 alpha: 1];
    UIColor* color7 = [UIColor colorWithRed: 0.844 green: 0.796 blue: 0.643 alpha: 1];
    UIColor* color8 = [UIColor colorWithRed: 0.326 green: 0.326 blue: 0.326 alpha: 1];
    UIColor* color9 = [UIColor colorWithRed: 0.775 green: 0.584 blue: 0.313 alpha: 1];
    UIColor* color10 = [UIColor colorWithRed: 0.239 green: 0.239 blue: 0.239 alpha: 1];
    
    
    //// Subframes
    CGRect group = CGRectMake(CGRectGetMinX(frame) + 0.06, CGRectGetMinY(frame) + 0.2, floor((CGRectGetWidth(frame) - 0.06) * 1.00069 + 0.3) + 0.2, floor((CGRectGetHeight(frame) - 0.2) * 0.99925 - 0.09) + 0.59);
    
    
    //// Group
    {
        //// Group 2
        {
        }
        
        
        //// Group 3
        {
            //// Bezier Drawing
            UIBezierPath* bezierPath = UIBezierPath.bezierPath;
            [bezierPath moveToPoint: CGPointMake(CGRectGetMinX(group) + 0.69366 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.54259 * CGRectGetHeight(group))];
            [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.50001 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.54265 * CGRectGetHeight(group))];
            [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.50005 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.54265 * CGRectGetHeight(group))];
            [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.50005 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.11891 * CGRectGetHeight(group))];
            [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.61168 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.11940 * CGRectGetHeight(group))];
            [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.69573 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.48060 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.66350 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.21063 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.69573 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.33874 * CGRectGetHeight(group))];
            [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.69366 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.54259 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.69573 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.50159 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.69502 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.52228 * CGRectGetHeight(group))];
            [bezierPath closePath];
            bezierPath.miterLimit = 4;
            
            [color7 setFill];
            [bezierPath fill];
        }
        
        
        //// Group 4
        {
            //// Bezier 2 Drawing
            UIBezierPath* bezier2Path = UIBezierPath.bezierPath;
            [bezier2Path moveToPoint: CGPointMake(CGRectGetMinX(group) + 0.61168 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.11940 * CGRectGetHeight(group))];
            [bezier2Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.50001 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.00000 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.58060 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.06466 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.54246 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.02320 * CGRectGetHeight(group))];
            [bezier2Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.38862 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.11891 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.45768 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.02312 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.41965 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.06441 * CGRectGetHeight(group))];
            [bezier2Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.61140 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.11891 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.38862 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.11891 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.61140 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.11891 * CGRectGetHeight(group))];
            bezier2Path.miterLimit = 4;
            
            [color8 setFill];
            [bezier2Path fill];
        }
        
        
        //// Group 5
        {
        }
        
        
        //// Group 6
        {
            //// Bezier 3 Drawing
            UIBezierPath* bezier3Path = UIBezierPath.bezierPath;
            [bezier3Path moveToPoint: CGPointMake(CGRectGetMinX(group) + 0.59076 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.87527 * CGRectGetHeight(group))];
            [bezier3Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.56446 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.91085 * CGRectGetHeight(group))];
            [bezier3Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.43566 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.91085 * CGRectGetHeight(group))];
            [bezier3Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.56446 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.91085 * CGRectGetHeight(group))];
            [bezier3Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.43566 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.91085 * CGRectGetHeight(group))];
            [bezier3Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.40936 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.87527 * CGRectGetHeight(group))];
            [bezier3Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.50004 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.87358 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.43937 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.87415 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.46960 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.87358 * CGRectGetHeight(group))];
            [bezier3Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.59070 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.87527 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.53048 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.87358 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.56071 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.87415 * CGRectGetHeight(group))];
            bezier3Path.miterLimit = 4;
            
            [color7 setFill];
            [bezier3Path fill];
        }
        
        
        //// Group 7
        {
            //// Bezier 4 Drawing
            UIBezierPath* bezier4Path = UIBezierPath.bezierPath;
            [bezier4Path moveToPoint: CGPointMake(CGRectGetMinX(group) + 0.96906 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.70056 * CGRectGetHeight(group))];
            [bezier4Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.90753 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.70058 * CGRectGetHeight(group))];
            [bezier4Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.90753 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.70058 * CGRectGetHeight(group))];
            [bezier4Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.93823 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.64136 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.91627 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.67828 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.92661 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.65833 * CGRectGetHeight(group))];
            [bezier4Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.96892 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.70057 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.94984 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.65833 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.96018 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.67827 * CGRectGetHeight(group))];
            bezier4Path.miterLimit = 4;
            
            [color8 setFill];
            [bezier4Path fill];
        }
        
        
        //// Group 8
        {
            //// Bezier 5 Drawing
            UIBezierPath* bezier5Path = UIBezierPath.bezierPath;
            [bezier5Path moveToPoint: CGPointMake(CGRectGetMinX(group) + 0.69366 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.54259 * CGRectGetHeight(group))];
            [bezier5Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.69573 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.48060 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.69502 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.52228 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.69573 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.50159 * CGRectGetHeight(group))];
            [bezier5Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.61140 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.11891 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.69573 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.33874 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.66322 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.21014 * CGRectGetHeight(group))];
            [bezier5Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.50005 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.11891 * CGRectGetHeight(group))];
            [bezier5Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.50005 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.54265 * CGRectGetHeight(group))];
            [bezier5Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.50001 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.54265 * CGRectGetHeight(group))];
            [bezier5Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.69366 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.54259 * CGRectGetHeight(group))];
            [bezier5Path closePath];
            bezier5Path.miterLimit = 4;
            
            [color7 setFill];
            [bezier5Path fill];
        }
        
        
        //// Group 9
        {
            //// Bezier 6 Drawing
            UIBezierPath* bezier6Path = UIBezierPath.bezierPath;
            [bezier6Path moveToPoint: CGPointMake(CGRectGetMinX(group) + 0.30636 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.54259 * CGRectGetHeight(group))];
            [bezier6Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.50001 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.54265 * CGRectGetHeight(group))];
            [bezier6Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.49998 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.54265 * CGRectGetHeight(group))];
            [bezier6Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.49998 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.11891 * CGRectGetHeight(group))];
            [bezier6Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.38862 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.11891 * CGRectGetHeight(group))];
            [bezier6Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.30429 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.48060 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.33680 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.21014 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.30429 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.33874 * CGRectGetHeight(group))];
            [bezier6Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.30636 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.54259 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.30429 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.50159 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.30500 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.52228 * CGRectGetHeight(group))];
            [bezier6Path closePath];
            bezier6Path.miterLimit = 4;
            
            [color4 setFill];
            [bezier6Path fill];
        }
        
        
        //// Group 10
        {
            //// Group 11
            {
                //// Group 12
                {
                    //// Bezier 7 Drawing
                    UIBezierPath* bezier7Path = UIBezierPath.bezierPath;
                    [bezier7Path moveToPoint: CGPointMake(CGRectGetMinX(group) + 0.67824 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.27377 * CGRectGetHeight(group))];
                    [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.72442 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.23944 * CGRectGetHeight(group))];
                    [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.72443 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.23943 * CGRectGetHeight(group))];
                    [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.69810 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.22078 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.71649 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.23293 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.70771 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.22670 * CGRectGetHeight(group))];
                    [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.66448 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.20313 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.68749 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.21426 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.67623 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.20838 * CGRectGetHeight(group))];
                    [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.60816 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.23173 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.66447 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.20312 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.60816 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.23173 * CGRectGetHeight(group))];
                    [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.60822 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.23172 * CGRectGetHeight(group))];
                    [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.54700 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.21656 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.58952 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.22480 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.56891 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.21963 * CGRectGetHeight(group))];
                    [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.54698 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.21649 * CGRectGetHeight(group))];
                    [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.54011 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.17215 * CGRectGetHeight(group))];
                    [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.54011 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.17214 * CGRectGetHeight(group))];
                    [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.50001 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.17039 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.52701 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.17099 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.51363 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.17039 * CGRectGetHeight(group))];
                    [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.45591 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.17251 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.48499 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.17039 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.47029 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.17112 * CGRectGetHeight(group))];
                    [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.44901 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.21719 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.45591 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.17250 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.44901 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.21719 * CGRectGetHeight(group))];
                    [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.44900 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.21714 * CGRectGetHeight(group))];
                    [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.38828 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.23305 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.42722 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.22048 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.40677 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.22590 * CGRectGetHeight(group))];
                    [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.38820 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.23297 * CGRectGetHeight(group))];
                    [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.33231 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.20462 * CGRectGetHeight(group))];
                    [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.33228 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.20461 * CGRectGetHeight(group))];
                    [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.30191 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.22078 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.32169 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.20948 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.31155 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.21487 * CGRectGetHeight(group))];
                    [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.27316 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.24143 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.29131 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.22730 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.28173 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.23421 * CGRectGetHeight(group))];
                    [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.31974 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.27602 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.27314 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.24144 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.31974 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.27602 * CGRectGetHeight(group))];
                    [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.31969 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.27600 * CGRectGetHeight(group))];
                    [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.29503 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.31361 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.30845 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.28749 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.30002 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.30014 * CGRectGetHeight(group))];
                    [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.29493 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.31359 * CGRectGetHeight(group))];
                    [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.22273 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.31781 * CGRectGetHeight(group))];
                    [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.22271 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.31781 * CGRectGetHeight(group))];
                    [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.21988 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.34244 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.22085 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.32585 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.21988 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.33407 * CGRectGetHeight(group))];
                    [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.22332 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.36952 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.21988 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.35165 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.22105 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.36070 * CGRectGetHeight(group))];
                    [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.29607 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.37375 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.22331 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.36953 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.29607 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.37375 * CGRectGetHeight(group))];
                    [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.29598 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.37374 * CGRectGetHeight(group))];
                    [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.32188 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.41106 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.30141 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.38712 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.31024 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.39969 * CGRectGetHeight(group))];
                    [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.32176 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.41110 * CGRectGetHeight(group))];
                    [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.27559 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.44543 * CGRectGetHeight(group))];
                    [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.27558 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.44545 * CGRectGetHeight(group))];
                    [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.30192 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.46410 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.28351 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.45195 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.29229 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.45818 * CGRectGetHeight(group))];
                    [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.33553 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.48175 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.31253 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.47061 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.32377 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.47649 * CGRectGetHeight(group))];
                    [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.39185 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.45315 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.33555 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.48176 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.39185 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.45315 * CGRectGetHeight(group))];
                    [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.39180 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.45316 * CGRectGetHeight(group))];
                    [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.45306 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.46833 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.41052 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.46008 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.43112 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.46526 * CGRectGetHeight(group))];
                    [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.45304 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.46839 * CGRectGetHeight(group))];
                    [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.45991 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.51273 * CGRectGetHeight(group))];
                    [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.45991 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.51274 * CGRectGetHeight(group))];
                    [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.50001 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.51448 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.47301 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.51389 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.48640 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.51448 * CGRectGetHeight(group))];
                    [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.54411 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.51237 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.51501 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.51448 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.52974 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.51376 * CGRectGetHeight(group))];
                    [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.55099 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.46769 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.54412 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.51237 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.55099 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.46769 * CGRectGetHeight(group))];
                    [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.55099 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.46773 * CGRectGetHeight(group))];
                    [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.61173 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.45184 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.57278 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.46440 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.59323 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.45898 * CGRectGetHeight(group))];
                    [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.61180 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.45190 * CGRectGetHeight(group))];
                    [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.66772 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.48026 * CGRectGetHeight(group))];
                    [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.66773 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.48027 * CGRectGetHeight(group))];
                    [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.69810 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.46410 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.67831 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.47540 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.68847 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.47000 * CGRectGetHeight(group))];
                    [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.72685 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.44345 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.70871 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.45758 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.71828 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.45067 * CGRectGetHeight(group))];
                    [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.68028 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.40886 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.72686 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.44344 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.68028 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.40886 * CGRectGetHeight(group))];
                    [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.68031 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.40888 * CGRectGetHeight(group))];
                    [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.70498 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.37128 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.69156 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.39739 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.69998 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.38474 * CGRectGetHeight(group))];
                    [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.70509 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.37129 * CGRectGetHeight(group))];
                    [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.77728 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.36707 * CGRectGetHeight(group))];
                    [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.77729 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.36707 * CGRectGetHeight(group))];
                    [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.78015 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.34244 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.77917 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.35903 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.78015 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.35080 * CGRectGetHeight(group))];
                    [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.77671 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.31535 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.78015 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.33322 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.77897 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.32418 * CGRectGetHeight(group))];
                    [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.70394 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.31112 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.77671 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.31535 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.70394 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.31112 * CGRectGetHeight(group))];
                    [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.70401 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.31110 * CGRectGetHeight(group))];
                    [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.67816 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.27384 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.69859 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.29773 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.68978 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.28519 * CGRectGetHeight(group))];
                    bezier7Path.miterLimit = 4;
                    
                    [color6 setFill];
                    [bezier7Path fill];
                }
            }
            
            
            //// Group 13
            {
                //// Bezier 8 Drawing
                UIBezierPath* bezier8Path = UIBezierPath.bezierPath;
                [bezier8Path moveToPoint: CGPointMake(CGRectGetMinX(group) + 0.50001 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.27928 * CGRectGetHeight(group))];
                [bezier8Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.60283 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.34244 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.55679 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.27928 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.60283 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.30756 * CGRectGetHeight(group))];
                [bezier8Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.50001 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.40559 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.60283 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.37732 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.55679 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.40559 * CGRectGetHeight(group))];
                [bezier8Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.39717 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.34244 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.44320 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.40559 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.39717 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.37732 * CGRectGetHeight(group))];
                [bezier8Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.50001 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.27928 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.39717 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.30756 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.44320 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.27928 * CGRectGetHeight(group))];
                [bezier8Path closePath];
                bezier8Path.miterLimit = 4;
                
                [color9 setFill];
                [bezier8Path fill];
            }
        }
        
        
        //// Group 14
        {
            //// Bezier 9 Drawing
            UIBezierPath* bezier9Path = UIBezierPath.bezierPath;
            [bezier9Path moveToPoint: CGPointMake(CGRectGetMinX(group) + 0.69366 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.54259 * CGRectGetHeight(group))];
            [bezier9Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.59069 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.87521 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.68457 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.67727 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.64627 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.79542 * CGRectGetHeight(group))];
            [bezier9Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.59070 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.87520 * CGRectGetHeight(group))];
            [bezier9Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.87659 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.90224 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.68876 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.87872 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.78434 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.88791 * CGRectGetHeight(group))];
            [bezier9Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.87637 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.88573 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.87645 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.89677 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.87637 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.89127 * CGRectGetHeight(group))];
            [bezier9Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.87870 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.83277 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.87637 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.86767 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.87717 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.84998 * CGRectGetHeight(group))];
            [bezier9Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.87719 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.83277 * CGRectGetHeight(group))];
            [bezier9Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.69366 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.54259 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.77529 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.81784 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.69366 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.69358 * CGRectGetHeight(group))];
            [bezier9Path closePath];
            bezier9Path.miterLimit = 4;
            
            [color7 setFill];
            [bezier9Path fill];
        }
        
        
        //// Group 15
        {
            //// Bezier 10 Drawing
            UIBezierPath* bezier10Path = UIBezierPath.bezierPath;
            [bezier10Path moveToPoint: CGPointMake(CGRectGetMinX(group) + 0.50005 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.54265 * CGRectGetHeight(group))];
            [bezier10Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.50005 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.87358 * CGRectGetHeight(group))];
            [bezier10Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.59070 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.87520 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.53048 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.87358 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.56071 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.87412 * CGRectGetHeight(group))];
            [bezier10Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.59069 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.87521 * CGRectGetHeight(group))];
            [bezier10Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.69366 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.54259 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.64627 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.79542 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.68457 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.67727 * CGRectGetHeight(group))];
            bezier10Path.miterLimit = 4;
            
            [color10 setFill];
            [bezier10Path fill];
        }
        
        
        //// Group 16
        {
            //// Bezier 11 Drawing
            UIBezierPath* bezier11Path = UIBezierPath.bezierPath;
            [bezier11Path moveToPoint: CGPointMake(CGRectGetMinX(group) + 0.30636 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.54259 * CGRectGetHeight(group))];
            [bezier11Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.40933 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.87521 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.31545 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.67727 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.35375 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.79542 * CGRectGetHeight(group))];
            [bezier11Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.40932 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.87520 * CGRectGetHeight(group))];
            [bezier11Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.12343 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.90224 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.31126 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.87872 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.21568 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.88791 * CGRectGetHeight(group))];
            [bezier11Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.12365 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.88573 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.12357 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.89677 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.12365 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.89127 * CGRectGetHeight(group))];
            [bezier11Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.12132 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.83277 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.12365 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.86767 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.12285 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.84998 * CGRectGetHeight(group))];
            [bezier11Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.12283 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.83277 * CGRectGetHeight(group))];
            [bezier11Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.30636 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.54259 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.22473 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.81784 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.30636 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.69358 * CGRectGetHeight(group))];
            [bezier11Path closePath];
            bezier11Path.miterLimit = 4;
            
            [color4 setFill];
            [bezier11Path fill];
        }
        
        
        //// Group 17
        {
            //// Bezier 12 Drawing
            UIBezierPath* bezier12Path = UIBezierPath.bezierPath;
            [bezier12Path moveToPoint: CGPointMake(CGRectGetMinX(group) + 0.49998 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.54265 * CGRectGetHeight(group))];
            [bezier12Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.49998 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.87358 * CGRectGetHeight(group))];
            [bezier12Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.40932 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.87520 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.46954 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.87358 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.43931 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.87412 * CGRectGetHeight(group))];
            [bezier12Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.40933 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.87521 * CGRectGetHeight(group))];
            [bezier12Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.30636 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.54259 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.35375 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.79542 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.31545 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.67727 * CGRectGetHeight(group))];
            bezier12Path.miterLimit = 4;
            
            [color8 setFill];
            [bezier12Path fill];
        }
        
        
        //// Group 18
        {
            //// Bezier 13 Drawing
            UIBezierPath* bezier13Path = UIBezierPath.bezierPath;
            [bezier13Path moveToPoint: CGPointMake(CGRectGetMinX(group) + 0.93825 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.70056 * CGRectGetHeight(group))];
            [bezier13Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.93825 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.97208 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.93825 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.70056 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.93825 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.97208 * CGRectGetHeight(group))];
            [bezier13Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.88078 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.97208 * CGRectGetHeight(group))];
            [bezier13Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.88268 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.97208 * CGRectGetHeight(group))];
            [bezier13Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.87637 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.88522 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.87857 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.94451 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.87637 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.91536 * CGRectGetHeight(group))];
            [bezier13Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.90753 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.70058 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.87637 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.81607 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.88795 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.75220 * CGRectGetHeight(group))];
            [bezier13Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.93825 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.70056 * CGRectGetHeight(group))];
            [bezier13Path closePath];
            bezier13Path.miterLimit = 4;
            
            [color4 setFill];
            [bezier13Path fill];
        }
        
        
        //// Group 19
        {
            //// Bezier 14 Drawing
            UIBezierPath* bezier14Path = UIBezierPath.bezierPath;
            [bezier14Path moveToPoint: CGPointMake(CGRectGetMinX(group) + 0.88268 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.97208 * CGRectGetHeight(group))];
            [bezier14Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.99378 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.97208 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.88268 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.97208 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.99377 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.97208 * CGRectGetHeight(group))];
            [bezier14Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.98883 * CGRectGetWidth(group), CGRectGetMinY(group) + 1.00000 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.99235 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.98158 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.99070 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.99090 * CGRectGetHeight(group))];
            [bezier14Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.88762 * CGRectGetWidth(group), CGRectGetMinY(group) + 1.00000 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.98883 * CGRectGetWidth(group), CGRectGetMinY(group) + 1.00000 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.88762 * CGRectGetWidth(group), CGRectGetMinY(group) + 1.00000 * CGRectGetHeight(group))];
            [bezier14Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.88268 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.97208 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.88576 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.99090 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.88410 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.98158 * CGRectGetHeight(group))];
            [bezier14Path closePath];
            bezier14Path.miterLimit = 4;
            
            [color8 setFill];
            [bezier14Path fill];
        }
        
        
        //// Group 20
        {
            //// Bezier 15 Drawing
            UIBezierPath* bezier15Path = UIBezierPath.bezierPath;
            [bezier15Path moveToPoint: CGPointMake(CGRectGetMinX(group) + 0.93812 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.70056 * CGRectGetHeight(group))];
            [bezier15Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.93811 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.97208 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.93812 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.70056 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.93812 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.97208 * CGRectGetHeight(group))];
            [bezier15Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.99559 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.97208 * CGRectGetHeight(group))];
            [bezier15Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.99369 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.97208 * CGRectGetHeight(group))];
            [bezier15Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 1.00000 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.88522 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.99779 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.94451 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 1.00000 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.91536 * CGRectGetHeight(group))];
            [bezier15Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.96884 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.70058 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 1.00000 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.81607 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.98842 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.75220 * CGRectGetHeight(group))];
            [bezier15Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.93812 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.70056 * CGRectGetHeight(group))];
            [bezier15Path closePath];
            bezier15Path.miterLimit = 4;
            
            [color7 setFill];
            [bezier15Path fill];
        }
        
        
        //// Group 21
        {
            //// Bezier 16 Drawing
            UIBezierPath* bezier16Path = UIBezierPath.bezierPath;
            [bezier16Path moveToPoint: CGPointMake(CGRectGetMinX(group) + 0.09269 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.70056 * CGRectGetHeight(group))];
            [bezier16Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.03116 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.70058 * CGRectGetHeight(group))];
            [bezier16Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.03116 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.70058 * CGRectGetHeight(group))];
            [bezier16Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.06186 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.64136 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.03990 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.67828 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.05024 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.65833 * CGRectGetHeight(group))];
            [bezier16Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.09255 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.70057 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.07347 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.65833 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.08381 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.67827 * CGRectGetHeight(group))];
            bezier16Path.miterLimit = 4;
            
            [color8 setFill];
            [bezier16Path fill];
        }
        
        
        //// Group 22
        {
            //// Bezier 17 Drawing
            UIBezierPath* bezier17Path = UIBezierPath.bezierPath;
            [bezier17Path moveToPoint: CGPointMake(CGRectGetMinX(group) + 0.06188 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.70056 * CGRectGetHeight(group))];
            [bezier17Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.06189 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.97208 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.06188 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.70056 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.06188 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.97208 * CGRectGetHeight(group))];
            [bezier17Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.00441 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.97208 * CGRectGetHeight(group))];
            [bezier17Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.00631 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.97208 * CGRectGetHeight(group))];
            [bezier17Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.00000 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.88522 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.00221 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.94451 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.00000 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.91536 * CGRectGetHeight(group))];
            [bezier17Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.03116 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.70058 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.00000 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.81607 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.01158 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.75220 * CGRectGetHeight(group))];
            [bezier17Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.06188 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.70056 * CGRectGetHeight(group))];
            [bezier17Path closePath];
            bezier17Path.miterLimit = 4;
            
            [color4 setFill];
            [bezier17Path fill];
        }
        
        
        //// Group 23
        {
            //// Bezier 18 Drawing
            UIBezierPath* bezier18Path = UIBezierPath.bezierPath;
            [bezier18Path moveToPoint: CGPointMake(CGRectGetMinX(group) + 0.00631 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.97208 * CGRectGetHeight(group))];
            [bezier18Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.11741 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.97208 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.00631 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.97208 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.11740 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.97208 * CGRectGetHeight(group))];
            [bezier18Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.11246 * CGRectGetWidth(group), CGRectGetMinY(group) + 1.00000 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.11598 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.98158 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.11433 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.99090 * CGRectGetHeight(group))];
            [bezier18Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.01126 * CGRectGetWidth(group), CGRectGetMinY(group) + 1.00000 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.11246 * CGRectGetWidth(group), CGRectGetMinY(group) + 1.00000 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.01126 * CGRectGetWidth(group), CGRectGetMinY(group) + 1.00000 * CGRectGetHeight(group))];
            [bezier18Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.00631 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.97208 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.00939 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.99090 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.00773 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.98158 * CGRectGetHeight(group))];
            [bezier18Path closePath];
            bezier18Path.miterLimit = 4;
            
            [color8 setFill];
            [bezier18Path fill];
        }
        
        
        //// Group 24
        {
            //// Bezier 19 Drawing
            UIBezierPath* bezier19Path = UIBezierPath.bezierPath;
            [bezier19Path moveToPoint: CGPointMake(CGRectGetMinX(group) + 0.06175 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.70056 * CGRectGetHeight(group))];
            [bezier19Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.06175 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.97208 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.06175 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.70056 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.06175 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.97208 * CGRectGetHeight(group))];
            [bezier19Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.11922 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.97208 * CGRectGetHeight(group))];
            [bezier19Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.11732 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.97208 * CGRectGetHeight(group))];
            [bezier19Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.12363 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.88522 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.12143 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.94451 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.12363 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.91536 * CGRectGetHeight(group))];
            [bezier19Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.09247 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.70058 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.12363 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.81607 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.11205 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.75220 * CGRectGetHeight(group))];
            [bezier19Path addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.06175 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.70056 * CGRectGetHeight(group))];
            [bezier19Path closePath];
            bezier19Path.miterLimit = 4;
            
            [color7 setFill];
            [bezier19Path fill];
        }
    }}

@end
