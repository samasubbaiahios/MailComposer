//
//  ViewController.m
//  MailSample
//
//  Created by Venkata Subbaiah Sama on 02/12/19.
//  Copyright © 2019 Venkata. All rights reserved.
//

#import "ViewController.h"
#import <MessageUI/MessageUI.h>

@interface ViewController ()<MFMailComposeViewControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if ([MFMailComposeViewController canSendMail]) {
        //Your code will go here
        MFMailComposeViewController *mail = [[MFMailComposeViewController alloc] init];
        mail.mailComposeDelegate = self;
        [mail setSubject:@"Sample Email"];
        [mail setMessageBody:@"This is demo how the navigation is!!!" isHTML:NO];
        [mail setToRecipients:@[]];
        [self presentViewController:mail animated:YES completion:NULL];
    } else {
        //This device cannot send email
    }

}
- (void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error {
    switch (result) {
        case MFMailComposeResultSent:
            //Email sent
            break;
        case MFMailComposeResultSaved:
            //Email saved
            break;
        case MFMailComposeResultCancelled:
            //Handle cancelling of the email
            break;
        case MFMailComposeResultFailed:
            //Handle failure to send.
            break;
        default:
            //A failure occurred while completing the email
            break;
    }
    [self dismissViewControllerAnimated:YES completion:NULL];
}


@end
