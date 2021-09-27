//
//  ViewController.h
//  SnoozeInObjC
//
//  Created by Jeremy Warren on 9/27/21.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

// MARK: - Data
@property (weak, nonatomic) IBOutlet UILabel *timerLabel;
@property (weak, nonatomic) NSTimer *timer;
@property (nonatomic) NSInteger timeLeft;

// MARK: - Behaviors
- (IBAction)snoozeButtonTapped:(id)sender;

@end

