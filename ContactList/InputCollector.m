//
//  InputCollector.m
//  ContactList
//
//  Created by Brian Vo on 2018-04-10.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString {
    NSLog(@"%@", promptString);
    char inputChar[255];
    fgets(inputChar, 255, stdin);
    
    NSString* inputString = [NSString stringWithCString:inputChar encoding:NSUTF8StringEncoding];
    inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    inputString = [inputString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    
    return inputString;
}

@end
