const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#180e20", /* black   */
  [1] = "#74489C", /* red     */
  [2] = "#7953C5", /* green   */
  [3] = "#A24D9F", /* yellow  */
  [4] = "#9655A7", /* blue    */
  [5] = "#A666D5", /* magenta */
  [6] = "#CD73E4", /* cyan    */
  [7] = "#c5c2c7", /* white   */

  /* 8 bright colors */
  [8]  = "#675d72",  /* black   */
  [9]  = "#74489C",  /* red     */
  [10] = "#7953C5", /* green   */
  [11] = "#A24D9F", /* yellow  */
  [12] = "#9655A7", /* blue    */
  [13] = "#A666D5", /* magenta */
  [14] = "#CD73E4", /* cyan    */
  [15] = "#c5c2c7", /* white   */

  /* special colors */
  [256] = "#180e20", /* background */
  [257] = "#c5c2c7", /* foreground */
  [258] = "#c5c2c7",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
