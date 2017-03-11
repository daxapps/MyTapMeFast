//
//  ViewController.h
//  MyTapMeFast
//
//  Created by Jason Crawford on 3/11/17.
//  Copyright © 2017 Jason Crawford. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    NSTimer *timer;
    
    int timeInt;
    int tapInt;
    
}

@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UIButton *tapMeButton;
@property (weak, nonatomic) IBOutlet UIButton *startGameButton;

- (IBAction)startGame:(id)sender;
- (IBAction)tapButton:(id)sender;








@end

