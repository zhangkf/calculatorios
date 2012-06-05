//
//  ZKFViewController.h
//  Calculator
//
//  Created by twer on 5/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZKFViewController : UIViewController
{
    UITextField *result;
    NSString *firstNumber;
    NSString *secondNumber;
    NSString *operator;
}

@property(nonatomic, retain) IBOutlet UITextField *result;

-(IBAction)clickNumberBtn:(id)sender;

-(IBAction)clickOperatorBtn:(id)sender;
//
//-(IBAction)clickPointBtn:(id)sender;
//
-(IBAction)clickEqualBtn:(id)sender;


@end
