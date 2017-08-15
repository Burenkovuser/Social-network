//
//  Message.h
//  FocusStart
//
//  Created by Vasilii on 14.08.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Message : NSObject

@property(copy, readonly, nonatomic) NSDate *date;
@property(copy, readonly, nonatomic) NSString * title;

-(instancetype)initWithDate:(NSDate *) date
                      title:(NSString *) title;

@end
