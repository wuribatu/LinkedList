//
//  List.m
//  LinkedList
//
//  Created by Batu on 6/30/16.
//  Copyright © 2016 wuribatu. All rights reserved.
//

#import "List.h"

@implementation List
//初始化链表
-(void) listInit:(List *)list{
    list->size = 0;
    list->head = NULL;
    list->tail = NULL;
    return;
}

//在元素element后插入newElement

-(int)listInsNext:(List *)list over:(ListElemt *)element over:(ListElemt *)newElement{
    
    
    if(newElement==NULL){
        return -1;
    }
    
    if(element==NULL){
        if(list_size(list)==0){
            list->tail = newElement;
        }
        newElement->next = list->head;
        list->head = newElement;
        
    }
    else{
        if(element==NULL){
            list->tail = newElement;
        }
        newElement->next = element->next;
        element->next = newElement;
    }
    
    list->size++;
    
    return 0;
}

//移除指定element后的元素
-(int)listRemNext:(List *)list over:(ListElemt *)element{
    
    ListElemt *oldEmement;
    
    if(list_size(list)==0){
        return -1;
    }
    if (element==NULL) {
        oldEmement = list->head;
        list->head = list->head->next;
        
        if(list_size(list)==0){
            list->tail = NULL;
        }
    }
    else{
        if(element->next==NULL){
            return -1;
        }
        oldEmement = element->next;
        element->next = element->next->next;
        
        if(element->next == NULL){
            list->tail = element;
        }
    }
    // free((__bridge void *)(oldEmement));
    return 0;
}

//输出链表
-(void)outPut:(List *)list{
    ListElemt *pre = list->head;
    while (pre!=nil) {
        NSLog(@"%@",pre->data);
        pre = pre->next;
        
        
    }
}

@end
