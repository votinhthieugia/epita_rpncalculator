//
//  Brain.h
//  RPNCalculator
//
//  Created by Hoang Anh Doan on 5/4/16.
//  Copyright © 2016 Hoang Anh Doan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Brain : NSObject

@property(nonatomic) NSMutableArray *operands;

- (void)pushOperand:(double)operand;
- (double)performOperation:(NSString*)operatorName;
- (void)reset;

@end
