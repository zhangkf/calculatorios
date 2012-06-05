//
//  ZKFViewController.m
//  Calculator
//
//  Created by twer on 5/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ZKFViewController.h"

@interface ZKFViewController ()

@end

@implementation ZKFViewController

@synthesize result;


-(IBAction)clickNumberBtn:(id)sender
{
    UIButton *btn = sender;
    if(operator == nil)
    {
        firstNumber = [firstNumber stringByAppendingString:[btn currentTitle]];
        result.text = firstNumber;    
    }else{
        secondNumber = [secondNumber stringByAppendingString:[btn currentTitle]];
        result.text = secondNumber;    
    }
    
    
}

-(IBAction)clickOperatorBtn:(id)sender{
    UIButton *btn = sender;
    operator = [btn currentTitle];
    secondNumber = @"";
    
}

-(IBAction)clickEqualBtn:(id)sender
{
    if([operator isEqualToString:@"+"])
    {    
        float number1 = [firstNumber floatValue];
        float number2 = [secondNumber floatValue];
        result.text = [NSString stringWithFormat:@"%f", number1 + number2 ];
    }
    
    if([operator isEqualToString:@"-"])
    {    
        float number1 = [firstNumber floatValue];
        float number2 = [secondNumber floatValue];
        result.text = [NSString stringWithFormat:@"%f", number1 - number2 ];
    }
    
    if([operator isEqualToString:@"*"])
    {    
        float number1 = [firstNumber floatValue];
        float number2 = [secondNumber floatValue];
        result.text = [NSString stringWithFormat:@"%f", number1 * number2 ];
    }
    
    if([operator isEqualToString:@"/"])
    {    
        float number1 = [firstNumber floatValue];
        float number2 = [secondNumber floatValue];
        result.text = [NSString stringWithFormat:@"%f", number1 / number2 ];
    }
}


- (void)viewDidLoad
{
    [super viewDidLoad];

    firstNumber = @"";
    secondNumber = @"";
    operator = nil;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
