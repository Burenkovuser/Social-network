//
//  SocialMessage.m
//  FocusStart
//
//  Created by Vasilii on 14.08.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "SocialMessage.h"

@implementation SocialMessage

- (instancetype)initWithDate:(NSDate *)date title:(NSString *)title sorce:(NSURL *)sorce network:(Network)network {
    
    self = [super initWithDate:date title:title];
    if(self) {
        _sorce = sorce;
        _network = network;
    }
    return self;
}

@end
