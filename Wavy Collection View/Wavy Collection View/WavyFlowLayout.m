//
//  WavyFlowLayout.m
//  Wavy Collection View
//
//  Created by Paul on 2017-09-23.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "WavyFlowLayout.h"

@implementation WavyFlowLayout

-(NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect{
    NSArray<UICollectionViewLayoutAttributes*> *superAttrs = [super layoutAttributesForElementsInRect:rect];
    
    //copy attrs from super to avoid cached mismatch
    NSMutableArray<UICollectionViewLayoutAttributes*> *newAttrs = [[NSMutableArray alloc]init];
    
    newAttrs = [NSMutableArray arrayWithArray:superAttrs];
    
    //loops around a set 36 times-(set it to 10 in masterViewController) making rectange of same shape but different y position
    for (UICollectionViewLayoutAttributes *attributes in newAttrs) {
        attributes.frame = CGRectMake(attributes.frame.origin.x, arc4random_uniform(750), self.itemSize.width, self.itemSize.height);
    }
    
    
    return newAttrs;
    
}



-(void)prepareLayout{
    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    self.itemSize = CGSizeMake(100, 50);
    //set minimum interitem spacing to be huge to force all items to be on their own line
    self.minimumInteritemSpacing = CGFLOAT_MAX;
}





@end
