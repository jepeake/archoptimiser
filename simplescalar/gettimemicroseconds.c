/* gettimemicroseconds()
 *
 * Get current time of day in microseconds.
 *
 * Paul Kelly   Imperial College London  2008
 */

#include <stdio.h>
#include <sys/time.h>

unsigned long gettimemicroseconds()
{
  struct timeval t;
  unsigned long r;

  (void) gettimeofday(&t, NULL);

  r = t.tv_sec * 1000000;
  
  r += t.tv_usec;

  return r;
}
