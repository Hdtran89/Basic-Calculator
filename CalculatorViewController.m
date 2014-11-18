//
//  CalculatorViewController.m
//  Calculator
//
//  Created by Hieu Tran on 10/1/13.
//  Copyright (c) 2013 Hieu Tran. All rights reserved.
//

#import "CalculatorViewController.h"

@interface CalculatorViewController ()

@end

@implementation CalculatorViewController



- (IBAction)DigitOperator:(id)sender {
    if (currentoperator == 0) {
        result = value;
    }
    else{
        switch (currentoperator) {
            case 1:
                result += value;
                break;
            case 2:
                result -= value;
                break;
            case 3:
                result  *= value;
                break;
            case 4:
                result  /= value;
                break;
            default:
                break;
    };
    }
    value = 0;
    display.text = [NSString stringWithFormat:@"%2f",result];
    if ([sender tag] == 0) {
        result = 0;
        currentoperator = [sender tag];
    }
}

- (IBAction)DigitPress:(id)sender {
    value = value * 10 +(float)[sender tag];
    display.text = [NSString stringWithFormat:@"%2f", value];
}

- (IBAction)ClearAll:(id)sender {
    value = 0;
    display.text = @"0";
}
@end
