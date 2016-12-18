//
//  SteveZUnlockView.h
//  05手势解锁
//
//  Created by apple on 15-6-10.
//  Copyright (c) 2015年 itcast. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SteveZUnlockView;
@protocol SteveZUnlockViewDelegate <NSObject>

- (BOOL)unlockView:(SteveZUnlockView *)unlockView withPassword:(NSString *)password;

@end

@interface SteveZUnlockView : UIView
@property (nonatomic, weak) id<SteveZUnlockViewDelegate> delegate;
@end
