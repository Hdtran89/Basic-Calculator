//
//  CalculatorViewController.h
//  Calculator
//
//  Created by Hieu Tran on 10/1/13.
//  Copyright (c) 2013 Hieu Tran. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CalculatorViewController : UIViewController{
    float value;
    float result;
    int currentoperator;
    IBOutlet UILabel *display;
}


- (IBAction)DigitOperator:(id)sender;
- (IBAction)DigitPress:(id)sender;
- (IBAction)ClearAll:(id)sender;

@end
