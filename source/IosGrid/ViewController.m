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
    self.view.backgroundColor = [UIColor grayColor];
    GridView* gridView = [[GridView alloc]initWithFrame:CGRectMake(0.0f,0.0f,self.view.bounds.size.width,self.view.bounds.size.height)];
    gridView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:gridView];
    
    UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"applogo.png"]];
    imageView.contentMode = UIViewContentModeScaleAspectFit ;
   
    CXFLayout* layout = [[CXFLayout alloc] initWithParams:self.view columns:12];

    CXFLayoutRow *row = [[CXFLayoutRow alloc] initWithParams:layout];
    CXFButton * button = [[CXFButton alloc]initWithParams:row size:CXF_BUTTON_SIZES_BIG scene:CXF_BUTTON_SCENE_IMPORTANT];
    
    
    button = [[CXFButton alloc]initWithParams:row size:CXF_BUTTON_SIZES_SMALL scene:CXF_BUTTON_SCENE_COMMON];
    row = [[CXFLayoutRow alloc] initWithParams:layout];
    button = [[CXFButton alloc]initWithParams:row size:CXF_BUTTON_SIZES_COMMON scene:CXF_BUTTON_SCENE_DISABLE];
    
    [layout draw];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
