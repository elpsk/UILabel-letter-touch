//
//  APLabel.h
//  Test
//
//  Created by Alberto Pasca on 01/12/13.
//  Copyright (c) 2013 albertopasca.it. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol APLabelDelegate <NSObject>

@required
- (void) didLetterFound:(char)letter;

@end


@interface APLabel : UILabel

@property (nonatomic, assign) id <APLabelDelegate> delegate;

@end
