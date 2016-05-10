//
//  Brain.m
//  RPNCalculator
//
//  Created by Hoang Anh Doan on 5/4/16.
//  Copyright © 2016 Hoang Anh Doan. All rights reserved.
//

#import "Brain.h"

@implementation Brain

@synthesize operands = _operands;

- (void)setOperands:(NSMutableArray *)operands {
    self.operands = operands;
}

- (NSMutableArray*)operands {
    if (!_operands) {
        _operands = [[NSMutableArray alloc] init];
    }
    
    return _operands;
}

- (void)pushOperand:(double)operand {
    NSNumber *number = [[NSNumber alloc] initWithDouble:operand];
    [self.operands addObject:number];
}

- (double)performOperation:(NSString *)operatorName {
    double result = 0;
    
    NSNumber *number = (NSNumber*)[self.operands objectAtIndex:0];
    double first = [number doubleValue];
    [self.operands removeObjectAtIndex:0];
    
    number = (NSNumber*)[self.operands objectAtIndex:0];
    double second = [number doubleValue];
    [self.operands removeObjectAtIndex:0];
    
    if ([operatorName isEqualToString:@"+"]) {
        result = first + second;
    } else if ([operatorName isEqualToString:@"-"]) {
        result = first - second;
    } else if ([operatorName isEqualToString:@"*"]) {
        result = first * second;
    } else if ([operatorName isEqualToString:@"/"]) {
        if (!second == 0) {
            result = first / second;
        }
    }
    
    number = [[NSNumber alloc] initWithDouble:result];
    [self.operands addObject:number];
    return result;
}

- (void)reset {
    [self.operands removeAllObjects];
}

@end
