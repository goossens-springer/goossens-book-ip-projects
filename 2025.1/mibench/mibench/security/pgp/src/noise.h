/*
 * Noise.h - get environmental noise for RNG
 *
 * The interface is system-independent, but the
 * implementation should be highly system-dependent,
 * to get at as much state as possible.
 */

#include "usuals.h"

word32 noise(void);
