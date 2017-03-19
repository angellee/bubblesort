//
//  main.m
//  BubbleSort
//
//  Created by Angel Lee on 2016-02-13.
//  Copyright © 2016 Angel Lee. All rights reserved.
//

#import <Foundation/Foundation.h>

NSArray *bubbleSort(NSArray *arr);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSArray *arr = bubbleSort(@[@9, @8, @7, @6, @5]);
        
    }
    return 0;
}

NSArray *bubbleSort(NSArray *arr) {
    NSMutableArray *m_arr = [NSMutableArray arrayWithArray:arr];
    int max = (int)arr.count - 1;
    int i=0, j=0;
    while (j<arr.count) {
        i=0;
        while (i<max) {
            if (m_arr[i] > m_arr[i+1]) {
                NSNumber *temp = m_arr[i];
                m_arr[i] = m_arr[i+1];
                m_arr[i+1] = temp;
            }
            i++;
        }
        max--;
        j++;
    }
    return [m_arr copy];
}
