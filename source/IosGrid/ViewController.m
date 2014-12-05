//
//  ViewController.m
//  IosGrid
//
//  Created by Langwan on 14/11/25.
//  Copyright (c) 2014年 chengxufan. All rights reserved.
//

#import "ViewController.h"
#import "GridView.h"
#import "CXFLayout.h"



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.view.backgroundColor = [UIColor whiteColor];
    GridView* gridView = [[GridView alloc]initWithFrame:CGRectMake(0.0f,0.0f,self.view.bounds.size.width,self.view.bounds.size.height)];
    gridView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:gridView];
    
    UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"applogo.png"]];
    imageView.contentMode = UIViewContentModeScaleAspectFit ;
    
    CXFLayout* layout = [[CXFLayout alloc] initWithParams:self.view];
    //CXFLayout* layout = [[CXFLayout alloc] initWithParams:self.view columns:12];
    //CXFLayout* layout = [[CXFLayout alloc] initWithParams:self.view columns:12 lineSpacing:20.0f];
    
    CXFLayoutRow *row = [[CXFLayoutRow alloc] initWithParams:layout];
    
    CXFLabel *label = [[CXFLabel alloc]initWithParams:row size:CXF_LABEL_SIZES_FULL scene:CXF_LABEL_SCENE_COMMON];
    label.column.height = 120.0f;
    
    row = [[CXFLayoutRow alloc] initWithParams:layout];
    
    CXFTextField *textFiled = [[CXFTextField alloc]initWithParams:row size:CXF_TEXTFIELD_SIZES_FULL scene:CXF_TEXTFIELD_SCENE_COMMON];
    textFiled.placeholder = @"请填写手机或账号";
    
    row = [[CXFLayoutRow alloc] initWithParams:layout];
    
    textFiled = [[CXFTextField alloc]initWithParams:row size:CXF_TEXTFIELD_SIZES_FULL scene:CXF_TEXTFIELD_SCENE_COMMON];
    textFiled.placeholder = @"请填写密码";
    
    
    row = [[CXFLayoutRow alloc] initWithParams:layout];
    
    CXFButton * button = [[CXFButton alloc]initWithParams:row size:CXF_BUTTON_SIZES_BIG scene:CXF_BUTTON_SCENE_LINK];
    [button setTitle:@"忘记密码" forState:UIControlStateNormal];
    button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    
    button = [[CXFButton alloc]initWithParams:row size:CXF_BUTTON_SIZES_BIG scene:CXF_BUTTON_SCENE_LINK];
    [button setTitle:@"注册账号" forState:UIControlStateNormal];
    button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
    
    row = [[CXFLayoutRow alloc] initWithParams:layout];
    button = [[CXFButton alloc]initWithParams:row size:CXF_BUTTON_SIZES_FULL scene:CXF_BUTTON_SCENE_IMPORTANT];
    [button setTitle:@"登录" forState:UIControlStateNormal];
    
    row = [[CXFLayoutRow alloc] initWithParams:layout];
    label = [[CXFLabel alloc]initWithParams:row size:CXF_LABEL_SIZES_FULL scene:CXF_LABEL_SCENE_COMMON];
    [label setText:@"github.com/langwan/iosgrid"];
    
    [layout draw];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
