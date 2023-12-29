/* Defines etc to allow use in stand-alone benchmark 
 *
 * Paul Kelly  Imperial College London  2008
 */

#include <stdlib.h>

/* #define HAVE_STDINT_H 1 */

#define __real_free free
#define __real_malloc malloc

#define DECLARE(t, f, argt) /*NOTHING*/

#define CALL_REAL(fname, arg) __real_ ## fname (arg)

