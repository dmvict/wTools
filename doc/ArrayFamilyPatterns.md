# Array Families of routines [![Array methods](https://travis-ci.org/Wandalen/wTools.svg?branch=master)]
(https://github.com/Wandalen/wTools/blob/master/out.debug/dwtools/abase/l0/fLong.s)

## Definition

  fLong.s contains a collection of functions to work with arrays ( Append, remove or replace elements are some of the functionalities covered ).
  In this file, we are going to see the families of arrayRemove, arrayAppend and arrayReplace methods, in order to better understand how the naming patterns work, and see the differences between the functions of a same family.

## Naming patterns

  Many function names contain patterns to help us understand the behaviour of each routine, here comes a quick summary of the information a function name can give us:

  The format of a function name will be: array { Op } { Tense } { Second } { How }, where:

  { Op } can be one of [ Append, Prepend, Remove, Flatten, Replace ], corresponding to the action to perform.  

  { Tense } can be - ( nothing ) or ed, giving information on what to return ( the output value ).

  { Second } can be one of [ - , element, array, arrays ], refering to how to treat the src argument.

  { How } can be one of [ - , Once, OnceStrictly ], and tell us how to treat the repeats.

  For more information on these patters please see *ArrayRoutines.md*.

## Methods of arrayAppend

  Let´s see now all the different functions that cover the functionality of appending elements to an the array
  ( the small family of arrayFlatten methods has been included in the last row - it is not related with arrayAppend ):

  The table rows and columns correspond to naming patterns, and by combining them we get the full function names. For example the cell of the row *'Array'* and the column *'edOnce'* corresponds to the function *arrayAppendedArrayOnce*. The values inside the cells are the outputs of these functions ( for the example *arrayAppendedArrayOnce* returns the number of appended elements ).

  | **arrayAppend** | **-** | **Once** | **OnceStrictly** | **ed** | **edOnce** | **edOnceStrictly** |
  | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
  | **-** | - \| dst | dst | dst | - \| index | index | - \| index |
  | **Element** | dst | - \| dst | - \| dst | index \| appended element | - \| appended element | - \| appended element |
  | **Array** | dst | dst | dst | number | number | - \| number |
  | **Arrays** | dst | dst | dst | number | number | - \| number |
  | **arrayFlatten** | dst | dst | dst | number | number | - \| number |

  Where:
  - *-* means thet the corresponding function hasn´t been developped.
  - *dst* corresponds to the input array with the appended element( s ) included at its end.
  - *index* corresponds to the position of the appended element in the destination array ( -1 if not appended ).
  - *number* corresponds to the number of appended elements.
  - *index* | *appended element* means that the corresponding function currently returns *index*, but should
  return *appended element*.

## Methods of arrayRemove

  Let´s see now all the different functions that cover the functionality of removing elements from the array:

  | **arrayRemove** | **-** | **Once** | **OnceStrictly** | **ed** | **edOnce** | **edOnceStrictly** |
  | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
  | **-** | dst | dst | dst | number | index | index |
  | **Element** | dst | dst | dst | number | index \| removed element | removed element |
  | **Array** | dst | dst | dst | number | number | number |
  | **Arrays** | dst | dst | dst | number | number | number |
  | **All** | dst \| - | - | - | number \| - | - | - |

## Methods of arrayReplace

  Let´s see now all the different functions that cover the functionality of replacing elements in the array:

  | **arrayReplace** | **-** | **Once** | **OnceStrictly** | **ed** | **edOnce** | **edOnceStrictly** |
  | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
  | **-** | - \| dst | dst | dst | - \| number | index | index |
  | **Element** | - \| dst | - \| dst | - \| dst | - \| number | - \| replaced element |  - \| replaced element |
  | **Array** | - \| dst | dst | dst | - \| number | number | - \| number |
  | **Arrays** | - \| dst | - \| dst | - \| dst | - \| number | - \| number | - \| number |
  | **All** | dst \| - | - | - | number \| - | - | - |


## Try out

```
npm install
node sample/SampleArrayRemove.s
```