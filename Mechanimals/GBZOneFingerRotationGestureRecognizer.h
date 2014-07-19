//
//  CircularGestureRecognizer.h
//

#import <Foundation/Foundation.h>
#import <UIKit/UIGestureRecognizerSubclass.h>

@protocol GBZOneFingerRotationGestureRecognizerDelegate <NSObject>

@optional
- (void) rotation: (CGFloat) angle;
- (void) finalAngle: (CGFloat) angle;

@end

@interface GBZOneFingerRotationGestureRecognizer : UIGestureRecognizer{
    
    CGPoint midPoint;
    CGFloat innerRadius;
    CGFloat outerRadius;
    CGFloat cumulatedAngle;
    id <GBZOneFingerRotationGestureRecognizerDelegate> target;
}

- (id) initWithMidPoint: (CGPoint) midPoint
            innerRadius: (CGFloat) innerRadius
            outerRadius: (CGFloat) outerRadius
                 target: (id) target;
- (void)reset;
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event;
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event;
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event;
- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event;

@end
