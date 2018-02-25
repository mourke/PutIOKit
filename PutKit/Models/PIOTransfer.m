//
//  PIOTransfer.m
//  PutKit
//
//  Copyright © 2018 Mark Bourke.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE
//

#import "PIOTransfer.h"
#import "PIOObjectProtocol.h"

@interface PIOTransfer() <PIOObjectProtocol>

@end

@implementation PIOTransfer

- (nullable instancetype)initFromDictionary:(NSDictionary * _Nonnull)dictionary {
    self = [super init];
    
    if (self) {
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
        
        _dateOfCreation = [dateFormatter dateFromString:[dictionary objectForKey:@"created_at"]];
        _seedToPeerRatio = [[dictionary objectForKey:@"current_ratio"] floatValue];
        _downloadSpeed = [[dictionary objectForKey:@"down_speed"] doubleValue];
        _totalDownloaded = [[dictionary objectForKey:@"downloaded"] integerValue];
        _identifier = [[dictionary objectForKey:@"id"] integerValue];
        _name = [dictionary objectForKey:@"name"];
        _peers = [[dictionary objectForKey:@"peers_connected"] integerValue];
        _peersLeaching = [[dictionary objectForKey:@"peers_getting_from_us"] integerValue];
        _peersGiving = [[dictionary objectForKey:@"peers_sending_to_us"] integerValue];
        _percentageDownloaded = [[dictionary objectForKey:@"percent_done"] doubleValue];
        _parentIdentifier = [[dictionary objectForKey:@"save_parent_id"] integerValue];
        _timeSeeding = [[dictionary objectForKey:@"seconds_seeding"] doubleValue];
        _size = [[dictionary objectForKey:@"size"] integerValue];
        _status = [dictionary objectForKey:@"status"];
        _statusMessage = [dictionary objectForKey:@"status_message"];
        _uploadSpeed = [[dictionary objectForKey:@"up_speed"] doubleValue];
        _totalUploaded = [[dictionary objectForKey:@"uploaded"] doubleValue];
        
        if (_dateOfCreation != nil &&
            !isnan(_seedToPeerRatio) &&
            !isnan(_downloadSpeed) &&
            !isnan(_totalDownloaded) &&
            !isnan(_identifier) &&
            _name != nil &&
            !isnan(_peers) &&
            !isnan(_peersLeaching) &&
            !isnan(_peersGiving) &&
            !isnan(_percentageDownloaded) &&
            !isnan(_parentIdentifier) &&
            !isnan(_timeSeeding) &&
            !isnan(_size) &&
            ![_status isEqualToString:PIOTransferStatusUnknown] &&
            _statusMessage != nil &&
            !isnan(_uploadSpeed) &&
            !isnan(_totalUploaded))
        {
            _callbackURL = [NSURL URLWithString:[dictionary objectForKey:@"callback_url"]];
            NSString *errorMessage = [dictionary objectForKey:@"error_message"];
            if (errorMessage != nil) {
                _error = [NSError errorWithDomain:@"io.put.kit.error" code:-1 userInfo:@{NSLocalizedDescriptionKey: errorMessage}];
            }
            
            id estimatedTimeRemaining = [dictionary objectForKey:@"estimated_time"];
            if (estimatedTimeRemaining != [NSNull null]) _estimatedTimeRemaining = [estimatedTimeRemaining doubleValue];
            
            id fileIdentifier = [dictionary objectForKey:@"file_id"];
            if (fileIdentifier != [NSNull null]) _fileIdentifier = [fileIdentifier integerValue];
            
            id source = [dictionary objectForKey:@"source"];
            if ([source isKindOfClass:NSString.class]) _source = source;
            
            id subscriptionIdentifier = [dictionary objectForKey:@"subscription_id"];
            if (subscriptionIdentifier != [NSNull null]) _subscriptionIdentifier = [subscriptionIdentifier integerValue];
            
            id trackerMessage = [dictionary objectForKey:@"tracker_message"];
            if ([trackerMessage isKindOfClass:NSString.class]) _trackerMessage = trackerMessage;
            
            NSString *dateFinishedString = [dictionary objectForKey:@"finished_at"];
            
            if (dateFinishedString != nil) _dateFinished = [dateFormatter dateFromString:dateFinishedString];
            
            _willExtract = [[dictionary objectForKey:@"extract"] boolValue];
            _private = [[dictionary objectForKey:@"is_private"] boolValue];
            
            return self;
        }
    }
    
    return nil;
}

@end
