
/*
Copyright (c) 2019 The Khronos Group Inc.
Use of this source code is governed by an MIT-style license that can be
found in the LICENSE.txt file.
*/


#ifdef GL_ES
precision mediump float;
#endif
uniform struct s {
    int i;
} s1;

void main()
{
   s1.i = 1;  // uniforms are read only
}
