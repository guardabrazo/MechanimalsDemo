//
//  GBZAudioManager.h
//  Mechanimals
//
//  Created by Federico Guardabrazo Vallejo on 24/07/14.
//  Copyright (c) 2014 guardabrazo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PdDispatcher.h"

@interface GBZAudioManager : NSObject{

    PdDispatcher *dispatcher;
    void *patch;
}

+ (instancetype)sharedAudioManager;

@end
