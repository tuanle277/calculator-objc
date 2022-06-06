//
//  ViewController.h
//  prog1
//
//  Created by tuanlm on 5/30/22.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *number;

- (IBAction) numbers: (UIButton *)sender;
- (IBAction) operation: (UIButton *)sender;
- (IBAction) AC: (UIButton *)sender;
- (IBAction) equal: (UIButton *)sender;


@end

