//
//  LibraryAPI.m
//  FocusStart
//
//  Created by Vasilii on 18.08.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "LibraryAPI.h"
#import "HttpClient.h"
#import "Manager.h"

@implementation LibraryAPI

{
    HttpClient *httpClient;;
    Manager *manager;
}

+(LibraryAPI *) sharedInstance {
    static LibraryAPI *_sharedInstance = nil;
    static dispatch_once_t onePredicate;
    dispatch_once(&onePredicate, ^{
        _sharedInstance = [[LibraryAPI alloc] init];
    });
    return _sharedInstance;
}

-(void)launch {
    httpClient = [[HttpClient alloc] init];
    id requstedObject = [httpClient getRequest];
    
    NSOrderedSet *messages;
    if (requstedObject) {
        manager = [[Manager alloc] initWithObject:requstedObject];
        messages = [manager messages];
        [self.delegate messagesHaveBeenDownloaded:messages];
    }
    [self downloadImagesWithMessages: messages];
}

-(void) downloadImagesWithMessages:(NSOrderedSet*) messages{
    for ( int i = 0 ; i < messages.count ; i++) {
        if ([messages[i] isKindOfClass:[ImageMessage class]]) {
            dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^(void){
                ImageMessage *messageImage = (ImageMessage*) messages[i];
                UIImage *image = [httpClient downloadImage:messageImage.source];
                [messageImage setImage:image];
                [self.delegate imageHaveBeenDownloaded:messageImage forIndex:i];
            });
        }
    }
}

- (NSOrderedSet*) messages{
    if (manager) {
        return [manager messages];
    }
    return [[NSOrderedSet alloc] init];
}

@end
