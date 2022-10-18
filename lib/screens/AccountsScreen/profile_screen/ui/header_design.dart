import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
            
Path path_0 = Path();
    path_0.moveTo(0,0);
    path_0.lineTo(size.width,0);
    path_0.lineTo(size.width,size.height*0.8104752);
    path_0.lineTo(0,size.height*0.9734513);
    path_0.lineTo(0,0);
    path_0.close();

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.shader = ui.Gradient.linear(Offset(size.width*-55.78480,size.height*0.2794381), Offset(size.width*-45.86640,size.height*2.076832), [const Color(0xff4FC3F7).withOpacity(1),const Color(0xff5200FF).withOpacity(1)], [0,0.963542]);
canvas.drawPath(path_0,paint_0_fill);

Paint paint_1_fill = Paint()..style=PaintingStyle.fill;
paint_1_fill.shader = ui.Gradient.linear(Offset(size.width*0.5000000,0), Offset(size.width*0.5000000,size.height), [const Color(0xff4FC3F7).withOpacity(1),const Color(0xff5200FF).withOpacity(1)], [0,1]);
canvas.drawRect(Rect.fromLTWH(0,0,size.width,size.height),paint_1_fill);
}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
}
}