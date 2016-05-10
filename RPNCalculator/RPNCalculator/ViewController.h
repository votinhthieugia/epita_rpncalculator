//
//  ViewController.h
//  RPNCalculator
//
//  Created by Hoang Anh Doan on 4/20/16.
//  Copyright © 2016 Hoang Anh Doan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Brain.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *lblDisplay;
@property (nonatomic) Brain *brain;
@property (nonatomic) BOOL shouldContinue;

@end

