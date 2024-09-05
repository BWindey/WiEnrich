#pragma once

/*
 * Find all [PATTERNS] and replace them with their ansi escape values.
 * Lots of assertions possible, look at the README for more info, 
 * and a list of possible PATTERNS.
 * This function returns a pointer to the same in-place-modified string for 
 * ease of use, but remember to not pass a string literal to the function!
 * String literarls are read-only, so the function will seg-fault while 
 * trying to modify the string in-place.
 */
char* wiEnrich(char*);
