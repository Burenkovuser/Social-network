//
//  Manager.m
//  FocusStart
//
//  Created by Vasilii on 18.08.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "Manager.h"
#import "Message.h"
#import "TextMessage.h"
#import "ImageMessage.h"
#import "SocialMessage.h"


@implementation Manager
{
    NSMutableOrderedSet *messages;
}

// в зависимости от данных создаем объект модели
- (void)constructMessageWithDictionary:(NSDictionary *) dictionary {
    
    if ([dictionary objectForKey:@"type"] && [dictionary objectForKey:@"date"] && [dictionary objectForKey:@"title"]) {
        
        Message *message = nil;
        NSString *stringType = [NSString stringWithFormat:@"%@", [dictionary objectForKey:@"type"]];
        NSString *title = [NSString stringWithFormat:@"%@", [dictionary objectForKey:@"title"]];
        NSString *stringDate = [NSString stringWithFormat:@"%@", [dictionary objectForKey:@"date"]];
        NSDateFormatter *dateFormater = [[NSDateFormatter alloc] init];
        [dateFormater setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
        NSDate *date = [dateFormater dateFromString:stringDate];
        
         if([stringType isEqualToString:@"text"]) {
            
            NSString *content = [NSString stringWithFormat:@"%@", [dictionary objectForKey:@"content"]];
            message = [[TextMessage alloc] initWithDate:date
                                                  title:title
                                                content:content];
             
         } else if ([stringType isEqualToString:@"image"]) {
             NSString *stringSource = [NSString stringWithFormat:@"%@", [dictionary objectForKey:@"source"]];
             NSURL *source = [[NSURL alloc] initWithString:stringSource];
             message = [[ImageMessage alloc] initWithDate:date
                                                    title:title
                                                   source:source];
             
         } else if ([stringType isEqualToString:@"social"]) {
             NSString *stringSource = [NSString stringWithFormat:@"%@", [dictionary objectForKey:@"source"]];
             NSURL *source = [[NSURL alloc] initWithString:stringSource];
             NSString *stringNetwork = [NSString stringWithFormat:@"%@", [dictionary objectForKey:@"network"]];
             Network network = 0;
             if ([stringNetwork isEqualToString:@"twitter"]) {
                 network = NetworkFacebook;
             } else if ([stringNetwork isEqualToString:@"facebook"]) {
                 network = NetworkFacebook;
             } else if ([stringNetwork isEqualToString:@"vkontacte"]) {
                 network = NetworkVkontakte;
         }
             message = [[SocialMessage alloc] initWithDate:date
                                                     title:title
                                                     sorce:source
                                                   network:network];
    }
        
        if (message) {
            [self addMessage:message];
        }
}
}
//сортировка по по возрастанию даты
- (void) addMessage:(Message *) message {
    [messages addObject:message];
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"date" ascending:YES];
    NSArray *sortDescriptors = [NSArray arrayWithObject:sortDescriptor];
    [messages sortUsingDescriptors:sortDescriptors];
}

//создаем массив словарей
-(void) constructMessagesWithArray:(NSArray*) array{
    if (array.count > 0) {
        for (NSDictionary* messageDictionary in array) {
            [self constructMessageWithDictionary:messageDictionary];
        }
    }
}
//инициализируем объект
- (instancetype)initWithObject:(id)object {
    self = [super init];
    if (self) {
        messages = [[NSMutableOrderedSet alloc] init];
        if ([object isKindOfClass:[NSArray class]]) {
            [self constructMessagesWithArray:(NSArray *) object];
        }
    }
    return self;
}

-(NSOrderedSet*) messages {
    return [messages copy];
}
    
@end
