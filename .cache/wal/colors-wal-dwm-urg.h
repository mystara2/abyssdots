static const char norm_fg[] = "#c5c2c7";
static const char norm_bg[] = "#180e20";
static const char norm_border[] = "#675d72";

static const char sel_fg[] = "#c5c2c7";
static const char sel_bg[] = "#7953C5";
static const char sel_border[] = "#c5c2c7";

static const char urg_fg[] = "#c5c2c7";
static const char urg_bg[] = "#74489C";
static const char urg_border[] = "#74489C";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
