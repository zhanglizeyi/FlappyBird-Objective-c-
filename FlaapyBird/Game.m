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

  StartGame.hidden = true;
  
  BirdMovment = [NSTimer scheduledTimerWithTimeInterval:0.05 target:self
                selector:@selector(birdMoving) userInfo:nil repeats:YES];
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
    Bird.layer.cornerRadius = 20;
    Bird.layer.masksToBounds = YES;
  }
  
  if(BirdFlight < 0){
    Bird.image = [UIImage imageNamed:@"FlappyDown.png"];
    Bird.layer.cornerRadius = 20;
    Bird.layer.masksToBounds = YES;
  }
  
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
  BirdFlight = 30;
}

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
   
  Bird.image = [UIImage imageNamed:@"FlappyBird.png"];
  Bird.layer.cornerRadius = 20;
  Bird.layer.masksToBounds = YES;
  
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end