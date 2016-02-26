//
//  ViewController.h
//  TicTacToe
//
//  Created by JasonXu on 2/26/16.
//  Copyright (c) 2016 JasonXu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UICollectionViewDelegate, UICollectionViewDataSource>
@property (nonatomic, weak) IBOutlet UICollectionView * nineByNine;

- (IBAction)resetBoard:(id)sender;

@end

