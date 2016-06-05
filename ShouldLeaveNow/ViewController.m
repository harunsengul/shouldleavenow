//
//  ViewController.m
//  ShouldLeaveNow
//
//  Created by Aleksei Potov on 2/23/15.
//  Copyright (c) 2015 MonkeyBusiness LLC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onNavigate:(id)sender {
    UILocalNotification *localNotification = [[UILocalNotification alloc] init];
    localNotification.fireDate = [NSDate dateWithTimeIntervalSinceNow:5];
    localNotification.alertBody = @"Time in traffic";
    localNotification.timeZone = [NSTimeZone defaultTimeZone];
    
    //[[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
    
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Time to leave!" message:@"Time to leave!" preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
        handler:^(UIAlertAction * action) {}]];
    
    //[self presentViewController:alert animated:YES completion:nil];
    
    /*
    NSString* URLforRequest=[[NSString stringWithFormat:@"http://dev.virtualearth.net/REST/V1/Routes/Driving?wp.0=%@&wp.1=%@&key=xxx", [self.fromField text], [self.toField text]] stringByAddingPercentEscapesUsingEncoding: NSASCIIStringEncoding];
    NSURLRequest* requests = [NSURLRequest requestWithURL:[NSURL URLWithString:URLforRequest]];

    [NSURLConnection sendAsynchronousRequest:requests queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *error){
        
        if (error == nil && data) {
            NSDictionary* directions = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:&error];
            
            if (error) {
                NSLog(@"%@",error);
            }

            if ([[directions objectForKey:@"statusCode"] intValue] == 200) {
                NSNumber* travelDuration = [[[[[directions objectForKey:@"resourceSets"] objectAtIndex:0] objectForKey:@"resources"] objectAtIndex:0] objectForKey:@"travelDuration"];
                NSNumber* travelDurationTraffic = [[[[[directions objectForKey:@"resourceSets"] objectAtIndex:0] objectForKey:@"resources"] objectAtIndex:0] objectForKey:@"travelDurationTraffic"];
                NSString* delay = [[[NSDateComponentsFormatter alloc] init] stringFromTimeInterval:(travelDurationTraffic.intValue - travelDuration.intValue)];
                [self.timeInTraffic setText:[NSString stringWithFormat:@"Time in traffic: %@", delay]];
                NSLog(@"time in traffic: %@", delay);
            }
        } else NSLog(@"%@",error);
    }];

    NSLog(@"URL: %@", URLforRequest);
     */
}

@end
