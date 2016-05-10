//
//  ViewController.m
//  RPNCalculator
//
//  Created by Hoang Anh Doan on 4/20/16.
//  Copyright © 2016 Hoang Anh Doan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize lblDisplay = _lblDisplay;
@synthesize brain = _brain;
@synthesize shouldContinue = _shouldContinue;

- (id)init {
    if (self = [super init]) {
        self.shouldContinue = NO;
    }
    
    return self;
}

- (Brain*)brain {
    if (!_brain) {
        _brain = [[Brain alloc] init];
    }
    
    return _brain;
}

- (IBAction)buttonCalculate:(UIButton *)sender {
    NSString *text = _lblDisplay.text;
    
    if ([text isEqualToString:@"0"] || self.shouldContinue) {
        text = @"";
    }
    
    text = [text stringByAppendingString:sender.currentTitle];
    self.lblDisplay.text = text;
}

- (IBAction)buttonOperator:(UIButton *)sender {
    if ([[self.brain operands] count] == 2) {
        double result = [self.brain performOperation:sender.currentTitle];
        self.lblDisplay.text = [NSString stringWithFormat:@"%f", result];
        self.shouldContinue = YES;
    }
}
- (IBAction)buttonGo:(UIButton *)sender {
    double operand = [self.lblDisplay.text doubleValue];
    [self.brain pushOperand:operand];
    self.lblDisplay.text = @"0";
}

- (IBAction)clear:(id)sender {
    [self.brain reset];
    self.lblDisplay.text = @"0";
    self.shouldContinue = NO;
}

@end
