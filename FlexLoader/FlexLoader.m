
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "FLEXManager.h"

static __attribute__((constructor)) void _init_flex_loader() {
    NSLog(@"FlexLoader start!");
    [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidFinishLaunchingNotification object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification *note) {
        [[FLEXManager sharedManager] showExplorer];
    }];
}
