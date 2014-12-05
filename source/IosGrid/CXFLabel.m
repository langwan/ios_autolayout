//
//  CXFLabel.m
//  IosGrid
//
//  Created by Langwan on 14/12/5.
//  Copyright (c) 2014年 chengxufan. All rights reserved.
//

#import "CXFLabel.h"

@implementation CXFLabel

-(id)initWithParams:(CXFLayoutRow*) row size:(NSInteger)size scene:(NSInteger)scene {
    self = [super init];
    if(self == nil) {
        return nil;
    }
    
    self.scene = scene;
    self.size = size;
    self.row = row;
    
    self.height = 40.0f;
    if(self.size == CXF_BUTTON_SIZES_FULL) {
        self.cols = 12;
    } else if(self.size == CXF_BUTTON_SIZES_BIG) {
        self.cols = 6;
    } else if(self.size == CXF_BUTTON_SIZES_COMMON) {
        self.cols = 4;
    } else {
        self.cols = 3;
        self.height = 30.0f;
    }
    
    if(self.scene == CXF_LABEL_SCENE_COMMON) {
        
    }
    
    self.column = [[CXFLayoutColumn alloc] initWithLayout:self cols:self.cols height:self.height];
    [self.row addColumn:self.column];
    [self.row.layout.parentView addSubview:self];
    return self;
}



@end
