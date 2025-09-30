const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0f1124", /* black   */
  [1] = "#5551A7", /* red     */
  [2] = "#6E6BCF", /* green   */
  [3] = "#837BD8", /* yellow  */
  [4] = "#9A8AB7", /* blue    */
  [5] = "#A099EF", /* magenta */
  [6] = "#CBB7F9", /* cyan    */
  [7] = "#c3c3c8", /* white   */

  /* 8 bright colors */
  [8]  = "#5e6074",  /* black   */
  [9]  = "#5551A7",  /* red     */
  [10] = "#6E6BCF", /* green   */
  [11] = "#837BD8", /* yellow  */
  [12] = "#9A8AB7", /* blue    */
  [13] = "#A099EF", /* magenta */
  [14] = "#CBB7F9", /* cyan    */
  [15] = "#c3c3c8", /* white   */

  /* special colors */
  [256] = "#0f1124", /* background */
  [257] = "#c3c3c8", /* foreground */
  [258] = "#c3c3c8",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
