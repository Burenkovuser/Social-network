//
//  TextMessage.h
//  FocusStart
//
//  Created by Vasilii on 14.08.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "Message.h"

@interface TextMessage : Message

@property(copy, readonly, nonatomic) NSString * content;

-(instancetype) initWithDate:(NSDate *)date
                       title:(NSString *)title
                     content:(NSString *)content;

@end
