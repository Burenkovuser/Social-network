//
//  TextMessage.m
//  FocusStart
//
//  Created by Vasilii on 14.08.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "TextMessage.h"

@implementation TextMessage

- (instancetype)initWithDate:(NSDate *)date title:(NSString *)title content:(NSString *)content {
    
    self = [super initWithDate:date title:title];
    if(self) {
        _content = content;
    }
    return self;
}

@end
