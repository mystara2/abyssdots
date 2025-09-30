/* Taken from https://github.com/djpohly/dwl/issues/466 */
#define COLOR(hex)    { ((hex >> 24) & 0xFF) / 255.0f, \
                        ((hex >> 16) & 0xFF) / 255.0f, \
                        ((hex >> 8) & 0xFF) / 255.0f, \
                        (hex & 0xFF) / 255.0f }

static const float rootcolor[]             = COLOR(0x0f1124ff);
static uint32_t colors[][3]                = {
	/*               fg          bg          border    */
	[SchemeNorm] = { 0xc3c3c8ff, 0x0f1124ff, 0x5e6074ff },
	[SchemeSel]  = { 0xc3c3c8ff, 0x6E6BCFff, 0x5551A7ff },
	[SchemeUrg]  = { 0xc3c3c8ff, 0x5551A7ff, 0x6E6BCFff },
};
