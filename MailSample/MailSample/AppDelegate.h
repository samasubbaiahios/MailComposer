//
//  AppDelegate.h
//  MailSample
//
//  Created by Venkata Subbaiah Sama on 02/12/19.
//  Copyright © 2019 Venkata. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentCloudKitContainer *persistentContainer;

- (void)saveContext;


@end

