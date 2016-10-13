//
//  CollectionViewController.m
//  Collection
//
//  Created by 灏月 on 16/10/13.
//  Copyright © 2016年 灏月. All rights reserved.
//

#import "CollectionViewController.h"

@interface CollectionViewController ()

@end

@implementation CollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (instancetype)init {
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    
    CGFloat margin = 10;
    
    CGFloat w = [UIScreen mainScreen].bounds.size.width;
    
    CGFloat WH = (w - margin * 3) / 2;
    layout.itemSize = CGSizeMake(WH, WH);
    
    layout.minimumLineSpacing = margin;
    layout.minimumInteritemSpacing = margin;
    
    layout.collectionView.showsVerticalScrollIndicator = NO;
    layout.collectionView.showsHorizontalScrollIndicator = NO;
    layout.collectionView.alwaysBounceVertical = YES;
    
    layout.sectionInset = UIEdgeInsetsMake(margin, margin, margin, margin);
    return [super initWithCollectionViewLayout:layout];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.collectionView.backgroundColor = [UIColor lightGrayColor];
    
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
}


#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 2;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 2;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    cell.backgroundColor = [UIColor redColor];
    
    return cell;
}

@end
