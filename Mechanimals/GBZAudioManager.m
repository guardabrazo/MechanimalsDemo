//
//  GBZAudioManager.m
//  Mechanimals
//
//  Created by Federico Guardabrazo Vallejo on 24/07/14.
//  Copyright (c) 2014 guardabrazo. All rights reserved.
//

#import "GBZAudioManager.h"

@implementation GBZAudioManager

+ (instancetype)sharedAudioManager{
    
    static dispatch_once_t once;
    static id sharedAudioManager;
    dispatch_once(&once, ^{
        sharedAudioManager = [[self alloc] init];
    });
    return sharedAudioManager;
}

- (id)init {
    if (self = [super init]) {
        
        dispatcher = [[PdDispatcher alloc] init]; [PdBase setDelegate:dispatcher];
        patch = [PdBase openFile:@"randomPentatonicWithShapes.pd"
                            path:[[NSBundle mainBundle] resourcePath]];
        if (!patch) {
            NSLog(@"Failed to open patch!");
        }
    }
    return self;
}

@end
