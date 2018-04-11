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
        NSLog(@"%i: %@ ()", index, [c name]);
        index++;
    }
}

@end
