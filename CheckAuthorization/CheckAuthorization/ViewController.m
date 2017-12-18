//
//  ViewController.m
//  CheckAuthorization
//
//  Created by Rainy on 2017/12/18.
//  Copyright © 2017年 Rainy. All rights reserved.
//

#import "ViewController.h"
#import "CheckAuthorizationTool.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)Microphone:(id)sender {
    [CheckAuthorizationTool checkAudioAuthorizationGrand:^{
        NSLog(@"麦克风可使用！");
    } withNoPermission:^{
        NSLog(@"麦克风未授权！");
    }];
}
- (IBAction)Camera:(id)sender {
    [CheckAuthorizationTool checkCameraAuthorizationGrand:^{
        NSLog(@"相机可使用！");
    } withNoPermission:^{
        NSLog(@"相机未授权！");
    }];
}
- (IBAction)Photo:(id)sender {
    [CheckAuthorizationTool checkPhotoAlbumAuthorizationGrand:^{
         NSLog(@"相册可访问！");
    } withNoPermission:^{
         NSLog(@"相册未授权！");
    }];
}
- (IBAction)Location:(id)sender {
    [CheckAuthorizationTool checkLocationServiceAuthorization:^(BOOL authorizationAllow) {
        if (authorizationAllow) {
            NSLog(@"位置权限已开启！");
        }
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
