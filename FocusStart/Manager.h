//
//  Manager.h
//  FocusStart
//
//  Created by Vasilii on 18.08.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Manager : NSObject

- (instancetype) initWithObject:(id) object;
- (NSOrderedSet *) messages;

@end
