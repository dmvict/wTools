if( typeof module !== 'undefined' )
require( 'wTools' );
var _ = wTools;

var typedArray = new Uint8Array([1, 2, 3, 4, 5, 5 ]);

// Input element
var got = _.longRemoveDuplicates( typedArray );
logger.log( 'result', got )