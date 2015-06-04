# UIViewController-Alert

iOS7 and 8 compatible convenience methods for displaying alerts and action sheets

## Installation 

Use Cocoapods to add to your project:
```
pod 'UIViewController+Alert'
```
or download the source and manually add it to your project.


## Usage
At the top of your view controller, add this `import` statement:
```
#import <UIViewController+Alert/UIViewController+Alert.h>
```
**Displaying an Action Sheet**
```
// define the text to be displayed in the action sheet
NSArray *options = @[@"Option 1", @"Option 2"];

// define the actions to occur when tapping on an option
NSArray *handlers = @[^{ NSLog(@"Option 1 callback"); }, ^{ NSLog(@"Option 2 callback"); }];

// show the action sheet
[self showActionSheetWithTitle:@"Title" message:@"Message" options:options handlers:handlers];
```

**Displaying an Alert**
```
[self showAlertWithTitle:@"Title" andMessage:@"Message"];
```
