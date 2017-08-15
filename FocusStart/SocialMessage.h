//
//  SocialMessage.h
//  FocusStart
//
//  Created by Vasilii on 14.08.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "Message.h"

typedef enum : NSUInteger {
    NetworkTwitter,
    NetworkFacebook,
    NetworkVkontakte,
} Network;

@interface SocialMessage : Message

@property(assign, readonly, nonatomic) Network network;
@property(copy, readonly, nonatomic) NSURL *sorce;

- (instancetype)initWithDate:(NSDate *)date title:(NSString *)title sorce:(NSURL *)sorce network:(Network) network;

@end
