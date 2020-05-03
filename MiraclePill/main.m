//
//  main.m
//  MiraclePill
//
//  Created by alex on 2/5/20.
//  Copyright © 2020 alex. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
/**
 put in place all components
 
 When you get to the states component
 
 Drag the PickerView to show the states (NSW, QLD, etc), set it as hidden in it properties
 Add the protocols  to the ViewController.h   <UIPickerViewDelegate, UIPickerViewDataSource>
 To conform the protocols implement the  methods:
        numberOfComponentsInPickerView
        numberOfRowsInComponent
        titleForRow
 
        didSelectRow
 Create an array as property (in the .h file)  with the 6 states of Australia
 use the state array in the methods.
 make the method: didSelectRow, change the title of the button, whenever a row in the statePicker is selected, and hide the statePicker
 make the button make the statePicker not hidden when clicked.
 */


