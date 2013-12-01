//
//  APViewController.m
//  LabelTouch
//
//  Created by Alberto Pasca on 01/12/13.
//  Copyright (c) 2013 albertopasca.it. All rights reserved.
//

#import "APViewController.h"

@interface APViewController ()

@end


@implementation APViewController

- (void)viewDidLoad
{
	[super viewDidLoad];

  _myLabel.delegate = self;
}


// +---------------------------------------------------------------------------+
#pragma mark - Delegate
// +---------------------------------------------------------------------------+



- (void)didLetterFound:(char)letter
{
  _LetterFound.text = [NSString stringWithFormat:@"%c", letter];
}


@end
