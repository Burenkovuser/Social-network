//
//  LibraryAPI.h
//  FocusStart
//
//  Created by Vasilii on 18.08.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LibraryAPI : NSObject

+(LibraryAPI *) sharedInstance;
-(void) launch;
-(NSOrderedSet *) message;

@end
