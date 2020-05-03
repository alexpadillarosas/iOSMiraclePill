//
//  ViewController.m
//  MiraclePill
//
//  Created by alex on 2/5/20.
//  Copyright © 2020 alex. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
//NSArray* states = nil;
//NSArray* states = [[NSArray alloc]initWithObjects:@"NSW", @"WA", @"QLD", @"VIC", @"SA", @"TAS", nil]; <= this will give us an error, because here is only allowed constant values and this is an object, you can't create objects until runtime, with the exception of constant Strings, which are given a specific structure  and guaranteed to stay that way. What we can do is initialize the class NSArray in the initialize method. initialize is a class method which will be called before any other method is called on the ViewController class.

//+ (void)initialize
//{
//    if (self == [ViewController class]) {
//        states = @[@"NSW", @"WA", @"QLD", @"VIC", @"SA", @"TAS"];
//    }
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _states = @[@"NSW", @"WA", @"QLD", @"VIC", @"SA", @"TAS"];
    
    /**
            here are 3 different ways to indicate  the datasource and the delegate will be implemented in this controller.
     */
//    First way
//    self.statePicker.dataSource = self;
//    self.statePicker.delegate = self;
    
//    Second Way
    _statePicker.dataSource = self;
    _statePicker.delegate = self;
    
//    Third way
//    [[self statePicker] setDelegate:self];
//    [[self statePicker] setDataSource:self];

}

- (IBAction)stateButtonPressed:(id)sender {
   
    [[self statePicker] setHidden:NO];
}

//number of columns of data
- (NSInteger)numberOfComponentsInPickerView:(nonnull UIPickerView *)pickerView {
    return 1;
}
//set the number of rows in the component
- (NSInteger)pickerView:(nonnull UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return [[self states] count];
}
//here we set a title for each row
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
//    return [states objectAtIndex:row];
    return [self states][row];
}
//works everytime a row is selected
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    /**
     By default we set the statePicker to hidden in the properties.
     It gets visible when the user clicks the button Choose your state ( coded in stateButtonPressed method)
     Once the user select the state the statePicker gets hidden again (this is what happens in this method)
     */
    [[self statePickerButton] setTitle:[self states][row] forState:UIControlStateNormal];
    [[self statePicker] setHidden:YES];
}


@end
