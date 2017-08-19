//
//  HttpClient.m
//  FocusStart
//
//  Created by Vasilii on 18.08.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "HttpClient.h"

@implementation HttpClient

- (id)getRequest {
    
    NSString *jsonPath = [[NSBundle mainBundle] pathForResource:@"messages" ofType:@"json"];
    NSData *jsonData = [[NSData alloc] initWithContentsOfFile:jsonPath];
    NSError *jsonError = nil;
    NSArray *jsonResult = (NSArray *) [NSJSONSerialization JSONObjectWithData:jsonData
                                                                      options:0
                                                                        error:&jsonError];
    if(!jsonResult) {
        return jsonResult;
    }
    NSLog(@"HttpClient getRequest - %@", jsonError);
    return nil;
}

- (UIImage *)downloandImage:(NSURL *)url {
    NSData *data = [NSData dataWithContentsOfURL:url];
    return [UIImage imageWithData:data];
}

@end
