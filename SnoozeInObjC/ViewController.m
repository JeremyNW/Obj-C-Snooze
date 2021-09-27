//
//  ViewController.m
//  SnoozeInObjC
//
//  Created by Jeremy Warren on 9/27/21.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (IBAction)snoozeButtonTapped:(id)sender {
    [self.timer invalidate];
    self.timeLeft = 30;
    self.timerLabel.text = @"30";
    self.timerLabel.textColor = UIColor.systemGreenColor;
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(updateTimer) userInfo:NULL repeats:YES];
}

- (void)updateTimer {
    self.timeLeft -= 1;
    self.timerLabel.text = [NSString stringWithFormat:@"%ld", (long)self.timeLeft];

    if (self.timeLeft <= 0) {
        [self.timer invalidate];
        self.timerLabel.textColor = UIColor.systemRedColor;
    }
}

@end
