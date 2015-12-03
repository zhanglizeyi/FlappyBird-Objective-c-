//
//  UIViewController+Game.h
//  FlaapyBird
//
//  Created by ze li on 12/2/15.
//  Copyright © 2015 ze li. All rights reserved.
//

#import <UIKit/UIKit.h>

int BirdFlight;

@interface Game : UIViewController
{

  IBOutlet UIImageView *Bird;
  IBOutlet UIButton *StartGame;
  
  NSTimer *BirdMovment;
  
}
-(IBAction)startGame:(id)sender;
-(void)birdMoving;

@end



