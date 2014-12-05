//
//  CXFLayout.h
//  IosGrid
//
//  Created by Langwan on 14/11/26.
//  Copyright (c) 2014年 chengxufan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CXFLayoutColumn.h"
#import "CXFLayoutRow.h"
#import "CXFLayoutDevice.h"
#import "CXFButton.h"
#import "CXFTextField.h"
#import "CXFLabel.h"


@interface CXFLayout : NSObject


@property(nonatomic, assign) NSInteger deviceId;
@property(nonatomic, assign) UIView* parentView;
@property(nonatomic, strong) NSMutableArray* rows;

@property(nonatomic, assign) CGFloat columns;
@property(nonatomic, assign) CGFloat borderWithBase;
@property(nonatomic, assign) CGFloat columnBorderWidth;
@property(nonatomic, assign) CGFloat lineSpacing;
@property(nonatomic, assign) CGFloat leftBorderWidth;
@property(nonatomic, assign) CGFloat rightBorderWidth;
@property(nonatomic, assign) CGFloat columnWidth;

-(id)initWithParams:(UIView *)parentView;
-(id)initWithParams:(UIView *)parentView columns:(NSInteger)columns;
-(id)initWithParams:(UIView *)parentView columns:(NSInteger)columns lineSpacing:(CGFloat)lineSpacing;


-(void)addRow:(CXFLayoutRow*) row;
-(void)addColumn:(CXFLayoutRow*)row column:(CXFLayoutColumn*)column;
-(void)draw;
-(void)drawGrid;
@end
