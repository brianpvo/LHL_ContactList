//
//  main.m
//  ContactList
//
//  Created by Brian Vo on 2018-04-10.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL appOn = YES;
        ContactList *contactList = [[ContactList alloc] init];
        while (appOn) {
            InputCollector *inputCollector = [[InputCollector alloc] init];
            
            NSString *input = [inputCollector inputForPrompt:@"What would you like to do next?\n new - New Contact\n list - List all contacts\n show # - Contact detail\n find <keyword> - Find Contact\n quit - Exit Application\n"];
            
            if ([input isEqualToString:@"quit"]) {
                appOn = NO;
                break;
            }
            else if ([input isEqualToString:@"new"]) {
                BOOL exists = NO;
                Contact *contact = [[Contact alloc] init];
                NSString *fullName = [inputCollector inputForPrompt:@"Full Name"];
                NSString *email = [inputCollector inputForPrompt:@"Email"];
                contact.name = fullName;
                contact.email = email;
                
                // prevent duplicate contacts
                for (Contact *c in [contactList contactArray]) {
                    if ([[contact email] isEqualToString:[c email]]) {
                        exists = YES;
                    }
                }
                if (!exists) {
                    [[contactList contactArray] addObject:contact];
                } else {
                    NSLog(@"Error: Contact already exists");
                }
            }
            else if ([input isEqualToString:@"list"]) {
                [contactList print];
            }
            else if ([input containsString:@"show"]) {
                [contactList showContactDetail:input];
            }
            else if ([input containsString:@"find"]) {
                [contactList findContact:input];
            }
            else {
                NSLog(@"Invalid input");
            }
        }
    }
    return 0;
}
