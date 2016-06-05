//
//  ViewController.h
//  ShouldLeaveNow
//
//  Created by Aleksei Potov on 2/23/15.
//  Copyright (c) 2015 MonkeyBusiness LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *fromField;
@property (weak, nonatomic) IBOutlet UITextField *toField;
@property (weak, nonatomic) IBOutlet UILabel *timeInTraffic;

@end

