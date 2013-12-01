//
//  APViewController.h
//  LabelTouch
//
//  Created by Alberto Pasca on 01/12/13.
//  Copyright (c) 2013 albertopasca.it. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "APLabel.h"


@interface APViewController : UIViewController <APLabelDelegate>
{
  IBOutlet UILabel *_LetterFound;
  IBOutlet APLabel *_myLabel;
}

@end
