//
//  List.h
//  LinkedList
//
//  Created by Batu on 6/30/16.
//  Copyright © 2016 wuribatu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ListElemt.h"

@interface List : NSObject{
    @public ListElemt *head;
    @public ListElemt *tail;
    @public int size;
}
//初始化链表
-(void)listInit :(List*) list;
//在指定的element后添加newElement
-(int)listInsNext:(List*) list over:(ListElemt *) element over:(ListElemt *)newElement;
//移除指定element后的元素
-(int)listRemNext:(List*) list over:(ListElemt *) element;
//输出链表
-(void)outPut:(List*) list;


#define list_size(list)((list)->size)

#define list_head(list)((list)->head)
#define list_tail(list)((list)->tail)
#define list_is_head(list,element)((element)==(list)->head ? 1:0)
#define list_is_tail(element)((element)->next = NULL ? 1：0)
#define list_data(element)((element)->data)
#define list_next(element)((element)->data)

@end
