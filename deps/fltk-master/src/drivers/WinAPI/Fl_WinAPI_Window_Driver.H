//
// Definition of Windows window driver
// for the Fast Light Tool Kit (FLTK).
//
// Copyright 2010-2022 by Bill Spitzak and others.
//
// This library is free software. Distribution and use rights are outlined in
// the file "COPYING" which should have been included with this file.  If this
// file is missing or damaged, see the license at:
//
//     https://www.fltk.org/COPYING.php
//
// Please see the following page on how to report bugs and issues:
//
//     https://www.fltk.org/bugs.php
//

/**
 \file Fl_WinAPI_Window_Driver.H
 \brief Definition of Windows window driver.
 */

#ifndef FL_WINAPI_WINDOW_DRIVER_H
#define FL_WINAPI_WINDOW_DRIVER_H

#include "../../Fl_Window_Driver.H"
#include <windows.h>

/*
 Move everything here that manages the native window interface.

 There is one window driver for each Fl_Window. Window drivers manage window
 actions such as resizing, events, decoration, fullscreen modes, etc. . All
 drawing and rendering is managed by the Surface device and the associated
 graphics driver.

 - window specific event handling
 - window types and styles, depth, etc.
 - decorations

 ? where do we handle the interface between OpenGL/DirectX and Cocoa/Windows/Glx?
 */



class Fl_WinAPI_Window_Driver : public Fl_Window_Driver
{
  struct icon_data {
    const void *legacy_icon;
    Fl_RGB_Image **icons;
    int count;
    HICON big_icon;
    HICON small_icon;
  };
  struct shape_data_type {
    int lw_; ///<  width of shape image
    int lh_; ///<  height of shape image
    Fl_Image* shape_; ///<  shape image
    Fl_Bitmap *effective_bitmap_; ///<  auxiliary bitmap image
  } *shape_data_;
  int screen_num_;
private:
  void shape_bitmap_(Fl_Image* b);
  void shape_alpha_(Fl_Image* img, int offset);
public:
  Fl_WinAPI_Window_Driver(Fl_Window*);
  ~Fl_WinAPI_Window_Driver();
  static inline Fl_WinAPI_Window_Driver* driver(const Fl_Window *w) {return (Fl_WinAPI_Window_Driver*)Fl_Window_Driver::driver(w);}
  HDC private_dc; // used for OpenGL
  RECT border_width_title_bar_height(int &bx, int &by, int &bt);
  virtual void screen_num(int n);
  virtual int screen_num();

  struct icon_data *icon_;
  HCURSOR cursor;
  int custom_cursor;
  struct type_for_resize_window_between_screens {
    int screen;
    bool busy;
  };
  static type_for_resize_window_between_screens data_for_resize_window_between_screens_;
  void set_minmax(LPMINMAXINFO minmax);
  int fake_X_wm(int &X, int &Y, int &bt, int &bx, int &by, DWORD style = 0, DWORD styleEx = 0);
  void make_fullscreen(int X, int Y, int W, int H);
  // --- window data
  virtual int decorated_w();
  virtual int decorated_h();
  virtual const Fl_Image* shape();

  // --- window management
  virtual Fl_X *makeWindow();
  virtual void size_range() {
    // currently nothing to do
  }
  virtual void flush_double();
  virtual void flush_overlay();
  virtual void draw_begin();
  virtual void make_current();
  virtual void show();
  virtual void label(const char *name,const char *iname);
  virtual void resize(int X,int Y,int W,int H);
  virtual void hide();
  virtual void map();
  virtual void unmap();
  virtual void fullscreen_on();
  virtual void fullscreen_off(int X, int Y, int W, int H);
  virtual void iconize();
  virtual void decoration_sizes(int *top, int *left,  int *right, int *bottom);
  // --- window cursor stuff
  virtual int set_cursor(Fl_Cursor);
  virtual int set_cursor(const Fl_RGB_Image*, int, int);

  virtual void shape(const Fl_Image* img);
  virtual void icons(const Fl_RGB_Image *icons[], int count);
  virtual const void *icon() const;
  virtual void icon(const void * ic);
  virtual void free_icons();
  void set_icons(); // driver-internal support function
  // this one is implemented in Fl_win32.cxx
  virtual void capture_titlebar_and_borders(Fl_RGB_Image*& top, Fl_RGB_Image*& left, Fl_RGB_Image*& bottom, Fl_RGB_Image*& right);
  virtual int scroll(int src_x, int src_y, int src_w, int src_h, int dest_x, int dest_y,
                     void (*draw_area)(void*, int,int,int,int), void* data);
  static void resize_after_screen_change(void *data);
};


#endif // FL_WINAPI_WINDOW_DRIVER_H
