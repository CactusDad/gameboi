// GUI class here
// will use sdl
#ifndef __GUI_H__
#define __GUI_H__
#include <SDL2/SDL.h>
#include <iostream>

const int SCREEN_WIDTH = 460;
const int SCREEN_HEIGHT = 444;

struct gui
{
    SDL_Window*   window;
    SDL_Surface*  surface;
    SDL_Renderer* renderer;
    SDL_Texture*  texture;

    gui();
    void init();
};
#endif //__GUI_H__
