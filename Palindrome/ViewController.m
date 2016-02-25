//
//  ViewController.m
//  Palindrome
//
//  Created by Jonathan Kilgore on 1/13/16.
//  Copyright © 2016 Jonathan Kilgore. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (IBAction)onCheckTapped:(UIButton *)sender {
    
    NSString *palinedrome = self.textField.text;
    NSUInteger length = palinedrome.length;
    NSLog(@"palinedrome length == %lu", length);
    
    for (int i = 0; i < length / 2; i++) {
        NSLog(@"palinedrome [%i] == %c", i, [palinedrome characterAtIndex:i]);
        if ([palinedrome characterAtIndex:i] != [palinedrome characterAtIndex:length - i - 1]) {
            self.label.text = @"Not a palinedrome.";
            return;
        }
        
    }
    NSLog(@"Done.");
    self.label.text = @"It is a palinedrome.";
}

- (IBAction)onMakeTapped:(UIButton *)sender {
    NSString *firstPart = self.textField.text;
    NSMutableString *secondPart = [NSMutableString new];
    NSString *result = @"";
    
//    for (int i = firstPart.length - 1; i >= 0; i--) {
//        [secondPart appendString:[firstPart characterAtIndex:i]];
//    }
    
    
//    for (NSUInteger i = firstPart.length; i >= 0; i--) {
//        NSUInteger index = i -1;
//        
//        unichar c = [firstPart characterAtIndex:index];
//        result = [result stringByAppendingFormat:@"%C", c];
//    
//    //return;
//    }
    
    self.label.text = [NSString stringWithFormat:@"%@%@", firstPart, result];
}

@end
