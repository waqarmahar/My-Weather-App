//
//  ViewController.h
//  My Weather App
//
//  Created by Muhammad Iqbal on 29/04/2015.
//  Copyright (c) 2015 Muhammad Iqbal. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ViewController : UIViewController{
    IBOutlet UIButton* button1;
    IBOutlet UIButton* button2;
    IBOutlet UIButton* button3;
    IBOutlet UIButton* button4;
    
}
@property (nonatomic, retain) UIButton *button1;
@property (nonatomic, retain) UIButton *button2;
@property (nonatomic, retain) UIButton *button3;
@property (nonatomic, retain) UIButton *button4;

- (IBAction)pressButtonManchester:(id)sender;
- (IBAction)pressButtonLeeds:(id)sender;
- (IBAction)pressButtonSheffield:(id)sender;
- (IBAction)pressButtonLondon:(id)sender;


@end
