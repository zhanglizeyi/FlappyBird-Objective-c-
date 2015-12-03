//
//  UIViewController+Game.h
//  FlaapyBird
//
//  Created by ze li on 12/2/15.
//  Copyright © 2015 ze li. All rights reserved.
//

#import <UIKit/UIKit.h>

int BirdFlight;
int RandomTopPipePosion;
int RandomBottomPipePosion;

@interface Game : UIViewController
{

  IBOutlet UIImageView *Bird;
  IBOutlet UIButton *StartGame;
  
  IBOutlet UIImageView *PipeTop;
  IBOutlet UIImageView *PipeBottom;
  IBOutlet UIImageView *Top;
  IBOutlet UIImageView *Bottom;
  
  
  NSTimer *PipeMovement;
  NSTimer *BirdMovment;
}
-(IBAction)startGame:(id)sender;
-(void)birdMoving;
-(void)PipeMoving;
-(void)placePipe;

@end



