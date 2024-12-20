//******************************************************************************
//  file:     util_helper_math.vh
//
//  author:   JAY CONVERTINO
//
//  date:     2022/08/19
//
//  about:    Brief
//  helper functions for verilog relating to math.
//
//  license: License MIT
//  Copyright 2022 Jay Convertino
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to
//  deal in the Software without restriction, including without limitation the
//  rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
//  sell copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
//  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
//  IN THE SOFTWARE.
//******************************************************************************

// function: clogb2
//
// Copied from the IEEE 1364-2001 Standard, int clogb2(value) will return the log base 2 of the argument (value), rounded up to the nearest integer.
function integer clogb2;
  input integer value;
  begin
      value = value - 1;
      for (clogb2 = 0; value > 0; clogb2 = clogb2 + 1) begin
          value = value >> 1;
      end
  end
endfunction

// function: cmax
//
// int cmax(max1, max2) ... will return the number that is the max of the arguments max1, max2.
function integer cmax;
  input integer max1;
  input integer max2;
  begin
    //if they are equal, return max2 as the max.. cause what does it matter?
    if(max1 > max2) begin
      cmax = max1;
    end else begin
      cmax = max2;
    end
  end
endfunction

// function: abs
//
// int abs(value) ... will return the absolute value of the argument passed.
function integer abs;
  input integer value;
  begin
    if(value < 0) begin
      abs = value * -1;
    end else begin
      abs = value;
    end
  end
endfunction
