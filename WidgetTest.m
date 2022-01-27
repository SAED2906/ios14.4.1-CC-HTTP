#import "WidgetTest.h"
#include <UIKit/UIKit.h>

@implementation WidgetTest

#pragma mark - Non-CAML approach

// Icon of your module
- (UIImage *)iconGlyph {
    return [UIImage imageNamed:@"ModuleIcon@2x" inBundle:[NSBundle bundleForClass:[self class]] compatibleWithTraitCollection:nil];
}

// Optional: Icon of your module, once selected 
- (UIImage *)selectedIconGlyph {
    return [UIImage imageNamed:@"ModuleIcon@2x" inBundle:[NSBundle bundleForClass:[self class]] compatibleWithTraitCollection:nil];
}

// Selected color of your module
- (UIColor *)selectedColor {
    return [UIColor blueColor];
}

#pragma mark - End Non-CAML approach

// Current state of your module
- (BOOL)isSelected {
    return NO;
}




- (void)setSelected:(BOOL)selected {
    if (selected) {
	
	UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Title"
                                                                           message:@"Message"
                                                                    preferredStyle:(UIAlertControllerStyleAlert)];

	UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel"
                                                    style:UIAlertActionStyleCancel
                                                  handler:^(UIAlertAction * _Nonnull action) {
                                                         // handle cancel response here. Doing nothing will dismiss the view.
                                                  }];
// add the cancel action to the alertController
[alert addAction:cancelAction];

// create an OK action
UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK"
                                                   style:UIAlertActionStyleDefault
                                                 handler:^(UIAlertAction * _Nonnull action) {
                                                         // handle response here.
                                                 }];
// add the OK action to the alert controller
[alert addAction:okAction];

//[self presentViewController:alert animated:YES completion:^{
//    // optional code for what happens after the alert controller has finished presenting
//}];
        // Your module turned selected/on, do something
    } else {
        // Your module turned unselected/off, do something
    }
}

@end
