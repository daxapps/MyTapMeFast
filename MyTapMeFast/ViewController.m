//
//  ViewController.m
//  MyTapMeFast
//
//  Created by Jason Crawford on 3/11/17.
//  Copyright © 2017 Jason Crawford. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    timeInt = 10;
    tapInt = 0;
    
    self.timeLabel.text = [NSString stringWithFormat:@"%i", timeInt];
    self.scoreLabel.text = [NSString stringWithFormat:@"%i", tapInt];
    
    self.tapMeButton.enabled = NO;
    self.tapMeButton.alpha = 0.5;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)startGame:(id)sender {
    
    if (timeInt == 10) {
        
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(startCounter) userInfo:nil repeats:YES];
        
        self.tapMeButton.enabled = YES;
        self.tapMeButton.alpha = 1.0;
        
        self.startGameButton.enabled = NO;
        self.startGameButton.alpha = 0.5;
        
        
    }
    
    if (timeInt == 0) {
        
        timeInt = 10;
        tapInt = 0;
        
        self.timeLabel.text = [NSString stringWithFormat:@"%i", timeInt];
        self.scoreLabel.text = [NSString stringWithFormat:@"%i", tapInt];
        
        [self.startGameButton setTitle:@"Start" forState:UIControlStateNormal];

    }
}

- (IBAction)tapButton:(id)sender {
    
    tapInt += 1;
    
    self.scoreLabel.text = [NSString stringWithFormat:@"%i", tapInt];
    
}

-(void)startCounter {
    
    timeInt -= 1;
    
    self.timeLabel.text = [NSString stringWithFormat:@"%i", timeInt];
    
    if (timeInt == 0) {
        
        [timer invalidate];
        
        self.tapMeButton.enabled = NO;
        self.tapMeButton.alpha = 0.5;
        
        self.startGameButton.enabled = YES;
        self.startGameButton.alpha = 1.0;
        
        [self.startGameButton setTitle:@"Restart" forState:UIControlStateNormal];
        
    }
    
}
@end







