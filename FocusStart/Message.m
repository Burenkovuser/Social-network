//
//  Message.m
//  FocusStart
//
//  Created by Vasilii on 14.08.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "Message.h"

@implementation Message

- (instancetype)initWithDate:(NSDate *)date title:(NSString *)title {
    
    self = [super init];
    if(self) {
        _date = date;
        _title = title;
    }
    return self;
}

@end
