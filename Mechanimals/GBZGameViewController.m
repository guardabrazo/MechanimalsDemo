//
//  GBZGameViewController.m
//  Mechanimals
//
//  Created by Federico Guardabrazo Vallejo on 22/07/14.
//  Copyright (c) 2014 guardabrazo. All rights reserved.
//

#import "GBZGameViewController.h"
#import "GBZMechanimalView.h"

@interface GBZGameViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation GBZGameViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

    self.textField.delegate = self;
    
    self.textField.font = [UIFont fontWithName:@"Arvo-Bold" size:50];

    
    
    
    GBZMechanimalView *mechanimal = [[GBZMechanimalView alloc]initWithFrame:CGRectMake(CGRectGetMidX(self.view.frame)-200, 300, 400, 400)];
    [self.view addSubview:mechanimal];
}

-(IBAction)hideKeyboard:(id)sender{
    
    [self.textField resignFirstResponder];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    [self.textField resignFirstResponder];
    return YES;
}

-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    
    if (textField.text.length + (string.length - range.length)>0) {
        textField.font = [UIFont fontWithName:@"FuturamaAlienAlphabetOne" size:70];
    }else{
        textField.font = [UIFont fontWithName:@"Arvo-Bold" size:50];
    }
    return YES;
}


@end
