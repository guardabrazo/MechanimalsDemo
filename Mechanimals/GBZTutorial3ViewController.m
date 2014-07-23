//
//  GBZTutorial3ViewController.m
//  Mechanimals
//
//  Created by Federico Guardabrazo Vallejo on 23/07/14.
//  Copyright (c) 2014 guardabrazo. All rights reserved.
//

#import "GBZTutorial3ViewController.h"
#import "GBZGameViewController.h"

@interface GBZTutorial3ViewController ()

@end

@implementation GBZTutorial3ViewController

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
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor lightGrayColor];
    UIButton *gameButton = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 200, 100)];
    [gameButton addTarget:self action:@selector(goToGame) forControlEvents:UIControlEventTouchUpInside];
    gameButton.backgroundColor = [UIColor greenColor];
    [self.view addSubview:gameButton];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (void)goToGame{
    
    GBZGameViewController *gameVC = [[GBZGameViewController alloc]init];
    
    [(UINavigationController *)self.presentingViewController pushViewController:gameVC animated:NO];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
