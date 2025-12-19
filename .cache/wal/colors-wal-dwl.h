/* Taken from https://github.com/djpohly/dwl/issues/466 */
#define COLOR(hex)    { ((hex >> 24) & 0xFF) / 255.0f, \
                        ((hex >> 16) & 0xFF) / 255.0f, \
                        ((hex >> 8) & 0xFF) / 255.0f, \
                        (hex & 0xFF) / 255.0f }

static const float rootcolor[]             = COLOR(0x180e20ff);
static uint32_t colors[][3]                = {
	/*               fg          bg          border    */
	[SchemeNorm] = { 0xc5c2c7ff, 0x180e20ff, 0x675d72ff },
	[SchemeSel]  = { 0xc5c2c7ff, 0x7953C5ff, 0x74489Cff },
	[SchemeUrg]  = { 0xc5c2c7ff, 0x74489Cff, 0x7953C5ff },
};
