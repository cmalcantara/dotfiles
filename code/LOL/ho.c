#include <stdio.h>
#include <ncurses.h>

int main(void){

    initscr();
    printw("Hello World !!!\n");

    refresh();
    printw("hi\n\n");
    
    getch();
    endwin();

    return 0;
}
