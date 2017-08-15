//
//  ImageMessage.h
//  FocusStart
//
//  Created by Vasilii on 14.08.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "Message.h"
#import <UIKit/UIKit.h>

@interface ImageMessage : Message

@property(copy, readonly, nonatomic) NSURL *source;
@property(copy, nonatomic) UIImage *image;

- (instancetype)initWithDate:(NSDate *)date
                       title:(NSString *)title
                      source:(NSURL*) source;

@end
