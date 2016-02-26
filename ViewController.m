//
//  ViewController.m
//  TicTacToe
//
//  Created by JasonXu on 2/26/16.
//  Copyright (c) 2016 JasonXu. All rights reserved.
//

#import "ViewController.h"
#import "XorOcell.h"

@interface ViewController ()
@property (nonatomic) NSInteger counter;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    self.counter = 0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 9;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    XorOcell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"xorcell" forIndexPath:indexPath];
    cell.xolabel.text = @"";
    
    cell.contentView.layer.borderWidth = 2.0f;
    cell.contentView.layer.borderColor = [UIColor blackColor].CGColor;
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    XorOcell * cell = (XorOcell *)[collectionView cellForItemAtIndexPath:indexPath];
    cell.xolabel.text = self.counter % 2 ? @"X" : @"O";
    self.counter++;
    // call didWin Method;
}

/*
 "Player 1" Label and p2 winning
 [[self.nineByNine visibleCells] enumerateObjectsUsingBlock:^(XorOcell *cell, NSUInteger idx, BOOL *stop) {
 cell.xolabel.text = @"";
 }];
*/

- (IBAction)resetBoard:(id)sender {
    self.counter = 0;
    [[self.nineByNine visibleCells] enumerateObjectsUsingBlock:^(XorOcell *cell, NSUInteger idx, BOOL *stop) {
        cell.xolabel.text = @"";
    }];
}

@end
