//
//  UIViewController+Game.m
//  FlaapyBird
//
//  Created by ze li on 12/2/15.
//  Copyright © 2015 ze li. All rights reserved.
//

#import "Game.h"

@interface Game ()

@end

@implementation Game

-(IBAction)startGame:(id)sender{
  
  PipeTop.hidden = NO;
  PipeBottom.hidden = NO;
  StartGame.hidden = YES;
  
  BirdMovment = [NSTimer scheduledTimerWithTimeInterval:0.05 target:self
                selector:@selector(birdMoving) userInfo:nil repeats:YES];
  
  [self placePipe];
  
  PipeMovement = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(PipeMoving) userInfo:nil repeats:YES];
}


-(void)PipeMoving{
  PipeTop.center = CGPointMake(PipeTop.center.x - 1, PipeTop.center.y);
  PipeBottom.center = CGPointMake(PipeBottom.center.x - 1, PipeBottom.center.y);
  
  if(PipeTop.center.x < -28){
    [self placePipe];
  }
}


-(void)placePipe{
  //from 0 to 349
  RandomTopPipePosion = arc4random() %350;
  RandomTopPipePosion = RandomTopPipePosion - 228;
  //-228 to 122
  RandomBottomPipePosion = RandomTopPipePosion + 655;
  
  PipeTop.center = CGPointMake(340, RandomTopPipePosion);
  PipeBottom.center = CGPointMake(340, RandomBottomPipePosion);
}

-(void)birdMoving{
  
  //BirdFlight need to change while bird flying
  Bird.center = CGPointMake(Bird.center.x, Bird.center.y - BirdFlight);
  
  //
  BirdFlight = BirdFlight - 5;

  if(BirdFlight < -10){
    BirdFlight = -10;
  }
  
  
  if(BirdFlight > 0){
    Bird.image = [UIImage imageNamed:@"FlappyBird.png"];
    Bird.layer.cornerRadius = 30;
    Bird.layer.masksToBounds = YES;
  }
  
  if(BirdFlight < 0){
    Bird.image = [UIImage imageNamed:@"FlappyDown.png"];
    Bird.layer.cornerRadius = 30;
    Bird.layer.masksToBounds = YES;
  }
  
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
  BirdFlight = 30;
}

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  
  PipeTop.hidden = YES;
  PipeBottom.hidden = YES;
  
  Bird.image = [UIImage imageNamed:@"FlappyBird.png"];
  Bird.layer.cornerRadius = 30;
  Bird.layer.masksToBounds = YES;
  
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end