//
//  ContactList.h
//  ContactList
//
//  Created by Brian Vo on 2018-04-10.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property NSMutableArray *contactArray;

-(void)addContact:(Contact *)newContact;

-(void)print;

@end
