
//  MasterViewController.m
//  Wavy Collection View
//
//  Created by Paul on 2017-09-23.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "MasterViewController.h"
#import "LayoutCollectionViewCell.h"
#import "WavyFlowLayout.h"

@interface MasterViewController ()<UICollectionViewDelegate, UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;



@end

@implementation MasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.collectionView.backgroundView = [[UIView alloc]initWithFrame:CGRectZero];
    self.collectionView.backgroundColor = [UIColor greenColor];
    [self layoutSetup];
    
}


-(void)layoutSetup{

    WavyFlowLayout * wavyFlowLayout = [[WavyFlowLayout alloc]init];
     //sets the collectionView to our flow layout
    self.collectionView.collectionViewLayout = wavyFlowLayout;
    
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 13;

}


// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{

    LayoutCollectionViewCell *cell =[collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    
    
    return cell;

}










@end
