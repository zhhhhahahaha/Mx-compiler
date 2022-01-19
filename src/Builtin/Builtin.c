#include <stdio.h>
#include <string.h>
#include <stdlib.h>


void print (char* str){
    printf("%s", str);
}

void println(char *str){
    printf("%s\n", str);
}

void printInt(int n){
    printf("%d", n);
}

void printlnInt(int n){
    printf("%d\n", n);
}

char* getString(){
    char *ret = (char*) malloc(sizeof(char) * 256);
    scanf("%s", ret);
    return ret;
}

int getInt(){
    int i;
    scanf("%d", &i);
    return i;
}

char* toString(int i){
    char* p;
    p = malloc(21 * sizeof(char));
    sprintf(p, "%d", i);
    return p;
}

int string_length(char *p){
    return strlen(p);
}

char* string_substring(char* str, int left, int right){
    char* ret = (char*)malloc(sizeof(char));
    *ret = '\0';
    for(int i = left, len = 1; i < right; i++){
        char* tmp = (char*)malloc(sizeof(char)*(++len));
        tmp[0] = '\0';
        strcpy(tmp, ret);
        tmp[len-2] = str[i], tmp[len-1] = '\0';
        free(ret);
        ret = tmp;
    }
    return ret;
}

int string_parseInt(char *p){
    int tmp = 0;
    sscanf(p, "%d", &tmp);
    return tmp;
}

int string_ord(char* p, int pos){
    return (int)p[pos];
}

char* string_add(char* p1, char* p2){
    char* tmp = malloc(sizeof(char) * (strlen(p1)+strlen(p2)+1));
    tmp[0] = '\0';
    strcpy(tmp, p1);
    strcat(tmp, p2);
    return tmp;
}


