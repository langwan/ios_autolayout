//
//  CXFTextField.m
//  IosGrid
//
//  Created by Langwan on 14/12/5.
//  Copyright (c) 2014年 chengxufan. All rights reserved.
//

#import "CXFTextField.h"

@implementation CXFTextField

-(id)initWithParams:(CXFLayoutRow*) row size:(NSInteger)size scene:(NSInteger)scene {
    self = [super init];
    if(self == nil) {
        return nil;
    }
    
    self.scene = scene;
    self.size = size;
    self.row = row;
    
    if(self.size == CXF_TEXTFIELD_SIZES_FULL) {
        self.cols = 12;
        self.height = 40.0f;
    } else if(self.size == CXF_TEXTFIELD_SIZES_BIG) {
        self.cols = 6;
        self.height = 40.0f;
    } else if(self.size == CXF_TEXTFIELD_SIZES_COMMON) {
        self.cols = 4;
        self.height = 40.0f;
    } else {
        self.cols = 3;
        self.height = 30.0f;
    }
    
    if(self.scene == CXF_TEXTFIELD_SCENE_COMMON) {
        self.backgroundColor = [UIColor whiteColor];
        self.layer.borderColor = [[UIColor grayColor] CGColor];
        self.layer.borderWidth = 0.5f;
    } else if(self.scene == CXF_TEXTFIELD_SCENE_IMPORTANT) {
        self.backgroundColor = [UIColor orangeColor];
    } else {
        self.backgroundColor = [UIColor grayColor];
    }
    
    self.column = [[CXFLayoutColumn alloc] initWithLayout:self cols:self.cols height:self.height];
    [self.row addColumn:self.column];
    [self.row.layout.parentView addSubview:self];
    return self;
}

- (CGRect)textRectForBounds:(CGRect)bounds {
    return CGRectInset( bounds , 10 , 10 );
}

- (CGRect)editingRectForBounds:(CGRect)bounds {
    return CGRectInset( bounds , 10 , 10 );
}

@end
