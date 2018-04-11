//
//  ContactList.m
//  ContactList
//
//  Created by Brian Vo on 2018-04-10.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

- (instancetype)init
{
    self = [super init];
    if (self) {
        _contactArray = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)addContact:(Contact *)newContact {
    [_contactArray addObject:newContact];
}

-(void)print {
    int index = 0;
    for (Contact *c in _contactArray) {
        NSLog(@"%i: %@ ()\n", index, [c name]);
        index++;
    }
}

-(void)showContactDetail:(NSString *) string {
    NSString* fixString = [string substringFromIndex:4];
    fixString = [fixString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    fixString = [fixString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    
    int index = [fixString intValue];
    
    
    if ([_contactArray count] > 0 && index < [_contactArray count]) {
        Contact *contact = [_contactArray objectAtIndex:index];
        NSLog(@"%@", [contact name]);
        NSLog(@"%@", [contact email]);
    } else {
        NSLog(@"Contact not found");
    }

}

@end
