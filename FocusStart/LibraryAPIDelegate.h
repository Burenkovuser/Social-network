//
//  LibraryAPIDelegate.h
//  FocusStart
//
//  Created by Vasilii on 20.08.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ImageMessage.h"

@protocol LibraryAPIDelegate <NSObject>


-(void) messagesHaveBeenDownloaded:(NSOrderedSet *) messages;
-(void) imageHaveBeenDownloaded:(ImageMessage *) messageImage
                       forIndex:(NSInteger) index;

@end
