//+------------------------------------------------------------------+
//|                                              iPhone MetaTrader 4 |
//|                   Copyright 2000-2020, MetaQuotes Software Corp. |
//|                                        http://www.metaquotes.net |
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//| шейдер для линий и прямоугольников                               |
//+------------------------------------------------------------------+
precision mediump float;
//--- in параметры
varying lowp vec4 v_color;
varying float     v_distance;
//---
uniform float     u_dash;
const lowp vec4   invisible=vec4(1.0,1.0,1.0,0.0);
//--- 
void main(void)
  {
   if(u_dash>0.0)
     {
      //--- если задана прерывистая линия, отсекаем часть пикселов (должен быть включен альфа-блендинг)
      if(mod(v_distance,u_dash*2.0)>u_dash) gl_FragColor=invisible;
      else                                  gl_FragColor=v_color;
     }
   else // иначе просто рисуем
      gl_FragColor=v_color;
  }
//+------------------------------------------------------------------+
