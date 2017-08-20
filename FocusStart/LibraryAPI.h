//
//  LibraryAPI.h
//  FocusStart
//
//  Created by Vasilii on 18.08.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LibraryAPIDelegate.h"


@interface LibraryAPI : NSObject 

@property (weak) id<LibraryAPIDelegate> delegate;

+(LibraryAPI *) sharedInstance;
-(void) launch;
-(NSOrderedSet *) messages;

@end



