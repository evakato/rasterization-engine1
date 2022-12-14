//
// Definition of class Fl_Xlib_Graphics_Driver for the Fast Light Tool Kit (FLTK).
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
 \file Fl_Xlib_Graphics_Driver.H
 \brief Definition of X11 Xlib graphics driver.
 */

#ifndef FL_XLIB_GRAPHICS_DRIVER_H
#define FL_XLIB_GRAPHICS_DRIVER_H

#include <config.h>
#include <FL/Fl_Graphics_Driver.H>
#include <FL/platform.H>

#if HAVE_X11_XREGION_H
#   include <X11/Xregion.h>
#else // if the X11/Xregion.h header is not available, we assume this is the layout of an X11 Region:
typedef struct {
  short x1, x2, y1, y2;
} BOX;
struct _XRegion {
  long size;
  long numRects;
  BOX *rects;
  BOX extents;
};
#endif // HAVE_X11_XREGION_H

#if USE_PANGO
#include <pango/pango.h>
#endif

#define FL_XLIB_GRAPHICS_TRANSLATION_STACK_SIZE (20)

/**
 \brief The Xlib-specific graphics class.

 This class is implemented only on the Xlib platform.
 */
class Fl_Xlib_Graphics_Driver : public Fl_Scalable_Graphics_Driver {
private:
  int offset_x_, offset_y_; // translation between user and graphical coordinates: graphical = user + offset
  unsigned depth_; // depth of translation stack
  int stack_x_[FL_XLIB_GRAPHICS_TRANSLATION_STACK_SIZE]; // translation stack allowing cumulative translations
  int stack_y_[FL_XLIB_GRAPHICS_TRANSLATION_STACK_SIZE];
  virtual void set_current_();
  int clip_max_; // +/- x/y coordinate limit (16-bit coordinate space)
  virtual void draw_fixed(Fl_Pixmap *pxm, int XP, int YP, int WP, int HP, int cx, int cy);
  virtual void draw_fixed(Fl_Bitmap *pxm, int XP, int YP, int WP, int HP, int cx, int cy);
  virtual void draw_fixed(Fl_RGB_Image *rgb, int XP, int YP, int WP, int HP, int cx, int cy);
#if USE_PANGO
  double do_width_unscaled_(const char *str, int n);
#endif
protected:
  virtual void draw_image_unscaled(const uchar* buf, int X,int Y,int W,int H, int D=3, int L=0);
  virtual void draw_image_unscaled(Fl_Draw_Image_Cb cb, void* data, int X,int Y,int W,int H, int D=3);
  virtual void draw_image_mono_unscaled(const uchar* buf, int X,int Y,int W,int H, int D=1, int L=0);
  virtual void draw_image_mono_unscaled(Fl_Draw_Image_Cb cb, void* data, int X,int Y,int W,int H, int D=1);
#if HAVE_XRENDER
  virtual void draw_rgb(Fl_RGB_Image *rgb, int XP, int YP, int WP, int HP, int cx, int cy);
  int scale_and_render_pixmap(Fl_Offscreen pixmap, int depth, double scale_x, double scale_y, int XP, int YP, int WP, int HP);
#endif
  virtual int height_unscaled();
  virtual int descent_unscaled();
  virtual Fl_Region scale_clip(float f);
#if USE_XFT
  void drawUCS4(const void *str, int n, int x, int y);
#endif
#if USE_PANGO
  static PangoContext *pctxt_;
  static PangoFontMap *pfmap_;
  static PangoLayout *playout_;
public:
  virtual PangoFontDescription* pango_font_description() { return pfd_array[font()]; }
private:
  static PangoFontDescription **pfd_array; // one array element for each Fl_Font
  static int pfd_array_length;
  void do_draw(int from_right, const char *str, int n, int x, int y);
  static PangoContext *context();
  static void init_built_in_fonts();
#endif
  static GC gc_;
  uchar *mask_bitmap_;
  uchar **mask_bitmap() {return &mask_bitmap_;}
  XPoint *short_point;
#if USE_XFT
  static Window draw_window;
  static struct _XftDraw* draw_;
#endif
  void cache(Fl_RGB_Image *img);
public:
  Fl_Xlib_Graphics_Driver(void);
  virtual ~Fl_Xlib_Graphics_Driver();
  void translate_all(int dx, int dy);
  void untranslate_all();
  virtual void scale(float f);
  float scale() {return Fl_Graphics_Driver::scale();}
  virtual int has_feature(driver_feature mask) { return mask & NATIVE; }
  virtual void *gc() { return gc_; }
  virtual void gc(void *value);
  char can_do_alpha_blending();
#if USE_XFT
  static void destroy_xft_draw(Window id);
#endif
  static int fl_overlay;

  // --- bitmap stuff
  unsigned long create_bitmask(int w, int h, const uchar *array); // NOT virtual
  virtual void delete_bitmask(fl_uintptr_t bm);
  virtual void draw_unscaled(const char* str, int n, int x, int y);
  virtual void draw_unscaled(int angle, const char *str, int n, int x, int y);
  virtual void rtl_draw_unscaled(const char* str, int n, int x, int y);
  virtual void font_unscaled(Fl_Font face, Fl_Fontsize size);
  void cache(Fl_Pixmap *img);
  virtual void uncache_pixmap(fl_uintptr_t p);
  void cache(Fl_Bitmap *img);
  void uncache(Fl_RGB_Image *img, fl_uintptr_t &id_, fl_uintptr_t &mask_);
  virtual double width_unscaled(const char *str, int n);
  virtual double width_unscaled(unsigned int c);
  virtual void text_extents_unscaled(const char*, int n, int& dx, int& dy, int& w, int& h);
  virtual Fl_Fontsize size_unscaled();
  virtual void copy_offscreen(int x, int y, int w, int h, Fl_Offscreen pixmap, int srcx, int srcy);
  void add_rectangle_to_region(Fl_Region r, int x, int y, int w, int h);
  Fl_Region XRectangleRegion(int x, int y, int w, int h);
  void XDestroyRegion(Fl_Region r);
protected:
  virtual void transformed_vertex0(float x, float y);
  void fixloop();
  virtual void focus_rect(int x, int y, int w, int h);
  virtual void rectf_unscaled(int x, int y, int w, int h);
  virtual void colored_rectf(int x, int y, int w, int h, uchar r, uchar g, uchar b);
  virtual void line_unscaled(int x, int y, int x1, int y1);
  virtual void xyline_unscaled(int x, int y, int x1);
  virtual void *change_pen_width(int lwidth);
  virtual void reset_pen_width(void *data);
  virtual void yxline_unscaled(int x, int y, int y1);
  virtual void loop_unscaled(int x0, int y0, int x1, int y1, int x2, int y2);
  virtual void loop_unscaled(int x0, int y0, int x1, int y1, int x2, int y2, int x3, int y3);
  virtual void polygon_unscaled(int x0, int y0, int x1, int y1, int x2, int y2);
  virtual void polygon_unscaled(int x0, int y0, int x1, int y1, int x2, int y2, int x3, int y3);

  // Scaling and clipping stuff for internal usage.
  // Currently specific to Fl_Xlib_Graphics_Driver (16-bit coordinate clipping)
  // These methods must not be virtual so they can be inlined.
  // All these methods work with "real" drawing coordinates (after scaling).

  // Clipping limits
  int clip_max() { return clip_max_; }
  int clip_min() { return -clip_max_; }

  /*
    clip_xy() returns a single coordinate value clipped to the 16-bit
    coordinate space.

    This can be used to draw horizontal and vertical lines that can be
    handled by X. Each single coordinate value can be clipped individually
    and the result can be used directly, e.g. in fl_xyline() and fl_yxline().
  */
  int clip_xy(int x) {
    return (x < clip_min() ? clip_min() : (x > clip_max() ? clip_max() : x ));
  }

  // clip an arbitrary line
  int clip_line(int &x1, int &y1, int &x2, int &y2);

  // clip a rectangle
  int clip_rect(int &x, int &y, int &w, int &h);

  // draw a line after clipping (if visible)
  void draw_clipped_line(int x1, int y1, int x2, int y2);

  // --- clipping
  void push_clip(int x, int y, int w, int h);
  int clip_box(int x, int y, int w, int h, int &X, int &Y, int &W, int &H);
  int not_clipped(int x, int y, int w, int h);
  void restore_clip();
  void end_points();
  void end_line();
  void end_loop();
  void end_polygon();
  void end_complex_polygon();
  void gap();
  virtual void ellipse_unscaled(double xt, double yt, double rx, double ry);
  virtual void arc_unscaled(int x, int y, int w, int h, double a1, double a2);
  virtual void pie_unscaled(int x, int y, int w, int h, double a1, double a2);
  virtual void line_style_unscaled(int style, int width, char* dashes);
  void color(Fl_Color c);
  void set_color(Fl_Color i, unsigned int c);
  void free_color(Fl_Color i, int overlay);
  Fl_Color color() { return color_; }
  void color(uchar r, uchar g, uchar b);
  virtual float scale_font_for_PostScript(Fl_Font_Descriptor *desc, int s);
  virtual const char* get_font_name(Fl_Font fnum, int* ap);
  virtual int get_font_sizes(Fl_Font fnum, int*& sizep);
#if !USE_XFT
  virtual unsigned font_desc_size();
  virtual float scale_bitmap_for_PostScript();
#endif
  virtual const char *font_name(int num);
  virtual void font_name(int num, const char *name);
  virtual Fl_Font set_fonts(const char* xstarname);
};

#endif // FL_XLIB_GRAPHICS_DRIVER_H
