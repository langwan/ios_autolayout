//
//  CXFTextField.h
//  IosGrid
//
//  Created by Langwan on 14/12/5.
//  Copyright (c) 2014年 chengxufan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CXFLayout.h"

typedef NS_ENUM(NSInteger, CXF_TEXTFIELD_SIZES) {
    CXF_TEXTFIELD_SIZES_SMALL = 0,
    CXF_TEXTFIELD_SIZES_COMMON,
    CXF_TEXTFIELD_SIZES_BIG,
    CXF_TEXTFIELD_SIZES_FULL
};

typedef NS_ENUM(NSInteger, CXF_TEXTFIELD_SCENE) {
    CXF_TEXTFIELD_SCENE_COMMON = 0,
    CXF_TEXTFIELD_SCENE_IMPORTANT,
    CXF_TEXTFIELD_SCENE_DISABLE
};

@interface CXFTextField : UITextField

@property(nonatomic, assign) CXFLayoutRow* row;
@property(nonatomic, assign) NSInteger size;
@property(nonatomic, assign) NSInteger scene;
@property(nonatomic, assign) NSInteger cols;
@property(nonatomic, assign) CGFloat height;
@property(nonatomic, strong) CXFLayoutColumn* column;

-(id)initWithParams:(CXFLayoutRow*) row size:(NSInteger)size scene:(NSInteger)scene;

@end
