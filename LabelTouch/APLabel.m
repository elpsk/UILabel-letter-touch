//
//  APLabel.m
//  Test
//
//  Created by Alberto Pasca on 01/12/13.
//  Copyright (c) 2013 albertopasca.it. All rights reserved.
//

#import "APLabel.h"


@implementation APLabel

- (id)initWithCoder:(NSCoder *)aDecoder
{
  if ( self = [super initWithCoder:aDecoder])
  {
    self.backgroundColor          = [UIColor greenColor];
    self.userInteractionEnabled   = YES;
  }
  return self;
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
  UITouch *touch = [[touches allObjects] objectAtIndex:0];
  CGPoint pos    = [touch locationInView:self];
	
  int sizes[self.text.length];
  for ( int i=0; i<self .text.length; i++ )
  {
    char letter         = [self.text characterAtIndex:i];
    NSString *letterStr = [NSString stringWithFormat:@"%c", letter];
    
    CGSize letterSize   = [letterStr sizeWithFont:self.font];
    sizes[i]            = letterSize.width;
  }
	
  int sum = 0;
  for ( int i=0; i<self.text.length; i++)
  {
    sum += sizes[i];
    if ( sum >= pos.x )
    {
      [ _delegate didLetterFound:[ self.text characterAtIndex:i] ];
      return;
    }
  }
}


@end
