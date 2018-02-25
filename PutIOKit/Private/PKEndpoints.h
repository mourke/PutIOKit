//
//  PKEndpoints.h
//  PutIOKit
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

#import <Foundation/NSString.h>

extern NSString * const kPKEndpointAuthenticate;
extern NSString * const kPKEndpointAccessToken;

extern NSString * const kPKEndpointFiles;
extern NSString * const kPKEndpointListFiles;
extern NSString * const kPKEndpointSearchFiles;
extern NSString * const kPKEndpointUploadFiles;
extern NSString * const kPKEndpointCreateFolder;
extern NSString * const kPKEndpointDeleteFiles;
extern NSString * const kPKEndpointRenameFile;
extern NSString * const kPKEndpointMoveFile;
extern NSString * const kPKEndpointShareFiles;
extern NSString * const kPKEndpointSharedFiles;

extern NSString * const kPKEndpointListEvents;
extern NSString * const kPKEndpointDeleteEvents;

extern NSString * const kPKEndpointTransfers;
extern NSString * const kPKEndpointListTransfers;
extern NSString * const kPKEndpointAddTransfer;
extern NSString * const kPKEndpointRetryTransfer;
extern NSString * const kPKEndpointCancelTransfer;
extern NSString * const kPKEndpointCleanTransfers;

extern NSString * const kPKEndpointFriends;
extern NSString * const kPKEndpointListFriends;
extern NSString * const kPKEndpointFriendRequests;

extern NSString * const kPKEndpointAccountInfo;
extern NSString * const kPKEndpointAccountSettings;
