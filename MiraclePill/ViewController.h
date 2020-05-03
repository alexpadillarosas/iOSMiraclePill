//
//  ViewController.h
//  MiraclePill
//
//  Created by alex on 2/5/20.
//  Copyright © 2020 alex. All rights reserved.
//

#import <UIKit/UIKit.h>
//here we implement 2 protocols for the PickerView :  <UIPickerViewDelegate, UIPickerViewDataSource>
//don't forget to add the  <>  this is how we implement protocols in objective-c
@interface ViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

@property (weak, nonatomic) IBOutlet UIPickerView *statePicker;
@property (weak, nonatomic) IBOutlet UIButton *statePickerButton;

@property NSArray* states;

@end

