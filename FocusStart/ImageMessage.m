//
//  ImageMessage.m
//  FocusStart
//
//  Created by Vasilii on 14.08.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "ImageMessage.h"

@implementation ImageMessage

- (instancetype)initWithDate:(NSDate *)date title:(NSString *)title source:(NSURL *)source {
    
    self = [super initWithDate:date title:title];
    if(self) {
        _source = source;
    }
    return self;
}

- (void)setImage:(UIImage *)image {
    _image = image;
}

@end
