# CheckAuthorization

一.代码功能：

1.检查麦克风权限：

[CheckAuthorizationTool checkAudioAuthorizationGrand:^{

        NSLog(@"麦克风可使用！");
        
    } withNoPermission:^{
    
        NSLog(@"麦克风未授权！");
        
    }];

2.检查相机权限：

[CheckAuthorizationTool checkCameraAuthorizationGrand:^{

        NSLog(@"相机可使用！");
        
    } withNoPermission:^{
    
        NSLog(@"相机未授权！");
        
    }];

3.检查相册权限：

[CheckAuthorizationTool checkPhotoAlbumAuthorizationGrand:^{

         NSLog(@"相册可访问！");
         
    } withNoPermission:^{
    
         NSLog(@"相册未授权！");
         
    }];

4.检查位置权限：

/** 
 
 if (!authorizationAllow) {
 
     [locationManager requestWhenInUseAuthorization];
     
 }
 
 */
 
[CheckAuthorizationTool checkLocationServiceAuthorization:^(BOOL authorizationAllow) {

        if (authorizationAllow) {
        
            NSLog(@"位置权限已开启！");
            
        }
        
    }];
    
二.权限配置：

1.麦克风权限： 

Privacy - Microphone Usage Description  

是否允许此App使用你的麦克风？

2.相机权限：  

Privacy - Camera Usage Description  

是否允许此App使用你的相机？

3.相册权限：  

Privacy - Photo Library Usage Description  

是否允许此App访问你的媒体资料库？

4.通讯录权限：  

Privacy - Contacts Usage Description 

是否允许此App访问你的通讯录？

5.蓝牙权限： 

Privacy - Bluetooth Peripheral Usage Description 

是否许允此App使用蓝牙？

6.语音转文字权限： 

Privacy - Speech Recognition Usage Description  

是否允许此App使用语音识别？

7.日历权限： 

Privacy - Calendars Usage Description  

是否允许此App使用日历？

8.定位权限： 

Privacy - Location When In Use Usage Description  

我们需要通过您的地理位置信息获取您周边的相关数据 

定位权限: 

Privacy - Location Always Usage Description  

我们需要通过您的地理位置信息获取您周边的相关数据 

在工程的Info.plist文件中根据需求对应的添加键值对。
    
