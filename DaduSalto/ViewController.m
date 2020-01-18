//
//  ViewController.m
//  DaduSalto
//
//  Created by Christian Stevanus on 18/01/20.
//  Copyright © 2020 Christian Stevanus. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)saltoButton:(id)sender {
    
    [self randomNumber];
}

-(void) randomNumber {
    
    int min = 1;
    int max = 7;
    
    int randomNumb = arc4random_uniform(max - min) + min;
    self.titleLabel.text = [NSString stringWithFormat:@"Rolled a %i", randomNumb];
    
    //implement to image
    self.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"Dice%i.png", randomNumb]];
}
@end
