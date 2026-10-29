//+------------------------------------------------------------------+
//|                                              iPhone MetaTrader 4 |
//|                   Copyright 2000-2020, MetaQuotes Software Corp. |
//|                                        http://www.metaquotes.net |
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//| шейдер работы с текстом                                          |
//+------------------------------------------------------------------+
attribute vec4  a_position;
attribute vec4  a_color;
attribute vec2  a_tex;
//--- out параметры
varying vec4    v_color;
varying vec2    v_tex;
//--- матрица проекции
uniform mat4    u_proj;
//---
void main(void)
  {
   gl_Position=u_proj*a_position;
   v_color    =a_color;
   v_tex      =a_tex;
  }
//+------------------------------------------------------------------+
