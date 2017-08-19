//
//  HttpClient.h
//  FocusStart
//
//  Created by Vasilii on 18.08.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface HttpClient : NSObject

-(id) getRequest;
-(UIImage *) downloandImage:(NSURL *) url;

@end
