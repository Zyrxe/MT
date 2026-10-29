//+------------------------------------------------------------------+
//|                                              iPhone MetaTrader 4 |
//|                   Copyright 2000-2020, MetaQuotes Software Corp. |
//|                                        http://www.metaquotes.net |
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//| шейдер для линий и прямоугольников                               |
//+------------------------------------------------------------------+
attribute vec4  a_position;
attribute vec4  a_color;
attribute float a_dist;
//--- out параметры
varying vec4    v_color;
varying float   v_distance;
//--- матрица проекции
uniform mat4    u_proj;
//---
void main(void)
  {
   gl_Position=u_proj*a_position;
   v_color    =a_color;
   v_distance =a_dist;
  }
//+------------------------------------------------------------------+
