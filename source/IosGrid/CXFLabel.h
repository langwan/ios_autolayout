//
//  CXFLabel.h
//  IosGrid
//
//  Created by Langwan on 14/12/5.
//  Copyright (c) 2014年 chengxufan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CXFLayout.h"

typedef NS_ENUM(NSInteger, CXF_LABEL_SIZES) {
    CXF_LABEL_SIZES_SMALL = 0,
    CXF_LABEL_SIZES_COMMON,
    CXF_LABEL_SIZES_BIG,
    CXF_LABEL_SIZES_FULL
};

typedef NS_ENUM(NSInteger, CXF_LABEL_SCENE) {
    CXF_LABEL_SCENE_COMMON = 0
};

@interface CXFLabel : UILabel

@property(nonatomic, assign) CXFLayoutRow* row;
@property(nonatomic, assign) NSInteger size;
@property(nonatomic, assign) NSInteger scene;
@property(nonatomic, assign) NSInteger cols;
@property(nonatomic, assign) CGFloat height;
@property(nonatomic, strong) CXFLayoutColumn* column;

-(id)initWithParams:(CXFLayoutRow*) row size:(NSInteger)size scene:(NSInteger)scene;


@end
