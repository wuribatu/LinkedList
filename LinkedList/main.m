//
//  main.m
//  LinkedList
//
//  Created by Batu on 6/30/16.
//  Copyright © 2016 wuribatu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "List.h"
#import "ListElemt.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建元素
        List *list = [[List alloc] init];
        [list listInit:list];
        
        ListElemt *element1 = [[ListElemt alloc]init];
        element1->data = [NSNumber numberWithInt:1];
        
        ListElemt *element2 = [[ListElemt alloc]init];
        element2->data = [NSNumber numberWithInt:2];
        
        ListElemt *element3 = [[ListElemt alloc]init];
        element3->data = [NSNumber numberWithInt:3];
        
        
        ListElemt *element4 = [[ListElemt alloc]init];
        element4->data = [NSNumber numberWithInt:4];
        
        
        ListElemt *element5 = [[ListElemt alloc]init];
        element5->data = [NSNumber numberWithInt:5];
        
        ListElemt *element6 = [[ListElemt alloc]init];
        element6->data = [NSNumber numberWithInt:6];
        //创建元素
        [list listInsNext:list over:list->head over:element1];
        [list listInsNext:list over:element1 over:element2];
        [list listInsNext:list over:element2 over:element3];
        [list listInsNext:list over:element3 over:element4];
        [list listInsNext:list over:element4 over:element5];
        [list listInsNext:list over:element5 over:element6];
        
        
        [list outPut:list];
        //删除element2后的元素element3
        [list listRemNext:list over:element2];
        
        printf("===========================================\n");
        printf("插入完成\n");
        printf("===========================================\n");
        
        
        [list outPut:list];
        printf("===========================================\n");
        printf("删除完成\n");
        printf("===========================================\n");
    }
    return 0;
}
