( function _Constructible_test_s_()
{

'use strict';

if( typeof module !== 'undefined' )
{
  let _ = require( '../Layer1.s' );
  _.include( 'wTesting' );
}

let _global = _global_;
let _ = _global_.wTools;

// --
// tests
// --

function typingBasic( test ) /* qqq for Yevhen : extend */
{

  test.case = 'str';
  var src = 'str';
  test.true( !_.constructible.like( src ) );
  test.true( !_.constructible.is( src ) );
  test.true( !_.objectLike( src ) );
  test.true( !_.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'number';
  var src = 13;
  test.true( !_.constructible.like( src ) );
  test.true( !_.constructible.is( src ) );
  test.true( !_.objectLike( src ) );
  test.true( !_.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = `bool`;
  var src = true;
  test.true( !_.constructible.like( src ) );
  test.true( !_.constructible.is( src ) );
  test.true( !_.objectLike( src ) );
  test.true( !_.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'set';
  var src = new Set();
  test.true( !_.constructible.like( src ) );
  test.true( !_.constructible.is( src ) );
  test.true( !_.objectLike( src ) );
  test.true( !_.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  /* */

  test.case = 'routine';
  var src = routine;
  test.true( _.constructible.like( src ) );
  test.true( _.constructible.is( src ) );
  test.true( !_.objectLike( src ) );
  test.true( !_.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  /* */

  test.case = 'regexp';
  var src = /abc/;
  test.true( _.constructible.like( src ) );
  test.true( _.constructible.is( src ) );
  test.true( _.objectLike( src ) );
  test.true( !_.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'date';
  var src = new Date();
  test.true( _.constructible.like( src ) );
  test.true( _.constructible.is( src ) );
  test.true( _.objectLike( src ) );
  test.true( !_.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  /* */

  test.case = 'Object with iterator';
  var src = { [ Symbol.iterator ] : 1 };
  test.true( !_.constructible.like( src ) );
  test.true( !_.constructible.is( src ) );
  test.true( _.objectLike( src ) );
  test.true( _.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'Pure map with iterator';
  var src = Object.create( null );
  src[ Symbol.iterator ] = 1;
  test.true( !_.constructible.like( src ) );
  test.true( !_.constructible.is( src ) );
  test.true( _.objectLike( src ) );
  test.true( _.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  /* */

  test.case = 'pure map';
  var src = Object.create( null );
  test.true( !_.constructible.like( src ) );
  test.true( !_.constructible.is( src ) );
  test.true( _.objectLike( src ) );
  test.true( _.objectIs( src ) );
  test.true( _.auxiliary.is( src ) );
  test.true( _.mapIs( src ) );
  test.true( _.mapIsPure( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'Object with custom prototype';
  var src = { a : 1 };
  Object.setPrototypeOf( src, { b : 2 } )
  test.true( !_.constructible.like( src ) );
  test.true( !_.constructible.is( src ) );
  test.true( _.objectLike( src ) );
  test.true( _.objectIs( src ) );
  test.true( _.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( _.auxiliary.isPrototyped( src ) );
  test.true( _.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'polluted map';
  var src = {};
  test.true( !_.constructible.like( src ) );
  test.true( !_.constructible.is( src ) );
  test.true( _.objectLike( src ) );
  test.true( _.objectIs( src ) );
  test.true( _.auxiliary.is( src ) );
  test.true( _.mapIs( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( _.auxiliary.isPolluted( src ) );
  test.true( _.mapIsPolluted( src ) );

  /* - */

  function routine() {}

}

//

function typingExtended( test )
{
  /*
    Not covered types :

    printer
    consequence
    worker
    logger
    procedure
  */

  test.case = 'number';
  var src = 1;
  test.true( !_.constructible.like( src ) );
  test.true( !_.constructible.is( src ) );
  test.true( !_.objectLike( src ) );
  test.true( !_.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'bool & boolLike & fuzzy';
  var src = true;
  test.true( !_.constructible.like( src ) );
  test.true( !_.constructible.is( src ) );
  test.true( !_.objectLike( src ) );
  test.true( !_.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'boolLike & number & fuzzyLike';
  var src = 1;
  test.true( !_.constructible.like( src ) );
  test.true( !_.constructible.is( src ) );
  test.true( !_.objectLike( src ) );
  test.true( !_.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'fuzzy';
  var src = _.maybe;
  test.true( !_.constructible.like( src ) );
  test.true( !_.constructible.is( src ) );
  test.true( !_.objectLike( src ) );
  test.true( !_.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'bigint';
  var src = 10n;
  test.true( !_.constructible.like( src ) );
  test.true( !_.constructible.is( src ) );
  test.true( !_.objectLike( src ) );
  test.true( !_.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'str & regexpLike';
  var src = 'str';
  test.true( !_.constructible.like( src ) );
  test.true( !_.constructible.is( src ) );
  test.true( !_.objectLike( src ) );
  test.true( !_.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'regexp & objectLike & constructible & constructibleLike';
  var src = /hello/g;
  test.true( _.constructible.like( src ) );
  test.true( _.constructible.is( src ) );
  test.true( _.objectLike( src ) );
  test.true( !_.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'ArgumentsArray & arrayLike';
  var src = _.argumentsArray.make();
  test.true( !_.constructible.like( src ) );
  test.true( !_.constructible.is( src ) );
  test.true( !_.objectLike( src ) );
  test.true( !_.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'unroll';
  var src = _.unrollMake([ 2, 3, 4 ]);
  test.true( !_.constructible.like( src ) );
  test.true( !_.constructible.is( src ) );
  test.true( !_.objectLike( src ) );
  test.true( !_.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'array';
  var src = [ 2, 3, 4 ];
  test.true( !_.constructible.like( src ) );
  test.true( !_.constructible.is( src ) );
  test.true( !_.objectLike( src ) );
  test.true( !_.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'long & longLike';
  var src = _.longMake([ 1, 2 ]);
  test.true( !_.constructible.like( src ) );
  test.true( !_.constructible.is( src ) );
  test.true( !_.objectLike( src ) );
  test.true( !_.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'vector & vectorLike';
  var src = new partibleConstructor({ elements : [ '1', '10' ], withIterator : 1, length : 2 });
  test.true( !_.constructible.like( src ) );
  test.true( !_.constructible.is( src ) );
  test.true( _.objectLike( src ) );
  test.true( _.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'partible & partibleLike';
  var src = new partibleConstructor({ elements : [ '1', '10' ], withIterator : 1 });
  test.true( _.constructible.like( src ) );
  test.true( _.constructible.is( src ) );
  test.true( _.objectLike( src ) );
  test.true( _.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'Global & GlobalReal';
  var src = global;
  test.true( !_.constructible.like( src ) );
  test.true( !_.constructible.is( src ) );
  test.true( _.objectLike( src ) );
  test.true( !_.objectIs( src ) );
  test.true( _.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( _.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( _.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'Global & GlobalDerived';
  var src = Object.create( global );
  test.true( !_.constructible.like( src ) );
  test.true( !_.constructible.is( src ) );
  test.true( _.objectLike( src ) );
  test.true( !_.objectIs( src ) );
  test.true( _.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( _.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( _.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'Object & ObjectLike & Container & ContainerLike';
  var src = { [ Symbol.iterator ] : 1 };
  test.true( !_.constructible.like( src ) );
  test.true( !_.constructible.is( src ) );
  test.true( _.objectLike( src ) );
  test.true( _.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'Object & ObjectLike & auxiliary & auxiliaryPrototyped & auxiliaryPolluted';
  var src = { a : 1 };
  Object.setPrototypeOf( src, { b : 2 } )
  test.true( !_.constructible.like( src ) );
  test.true( !_.constructible.is( src ) );
  test.true( _.objectLike( src ) );
  test.true( _.objectIs( src ) );
  test.true( _.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( _.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( _.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'Object & ObjectLike & auxiliary & map & mapPure';
  var src = Object.create( null );
  test.true( !_.constructible.like( src ) );
  test.true( !_.constructible.is( src ) );
  test.true( _.objectLike( src ) );
  test.true( _.objectIs( src ) );
  test.true( _.auxiliary.is( src ) );
  test.true( _.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( _.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'Object & ObjectLike & auxiliary & auxiliaryPolluted & map & mapPolluted & mapPrototyped';
  var src = {};
  test.true( !_.constructible.like( src ) );
  test.true( !_.constructible.is( src ) );
  test.true( _.objectLike( src ) );
  test.true( _.objectIs( src ) );
  test.true( _.auxiliary.is( src ) );
  test.true( _.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( _.auxiliary.isPolluted( src ) );
  test.true( _.mapIsPolluted( src ) );

  test.case = 'HashMap';
  var src = new HashMap();
  test.true( !_.constructible.like( src ) );
  test.true( !_.constructible.is( src ) );
  test.true( !_.objectLike( src ) );
  test.true( !_.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'Set & SetLike';
  var src = new Set();
  test.true( !_.constructible.like( src ) );
  test.true( !_.constructible.is( src ) );
  test.true( !_.objectLike( src ) );
  test.true( !_.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'BufferNode';
  var src = new BufferNode( 'str' );
  test.true( !_.constructible.like( src ) );
  test.true( !_.constructible.is( src ) );
  test.true( !_.objectLike( src ) );
  test.true( !_.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'BufferRaw';
  var src = new BufferRaw( 'str' );
  test.true( _.constructible.like( src ) );
  test.true( _.constructible.is( src ) );
  test.true( _.objectLike( src ) );
  test.true( !_.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'BufferRawShared';
  var src = new BufferRawShared( 'str' );
  test.true( _.constructible.like( src ) );
  test.true( _.constructible.is( src ) );
  test.true( _.objectLike( src ) );
  test.true( !_.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'BufferTyped';
  var src = new I8x( 20 );
  test.true( !_.constructible.like( src ) );
  test.true( !_.constructible.is( src ) );
  test.true( !_.objectLike( src ) );
  test.true( !_.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'BufferView';
  var src = new BufferView( new BufferRaw( 20 ) )
  test.true( _.constructible.like( src ) );
  test.true( _.constructible.is( src ) );
  test.true( _.objectLike( src ) );
  test.true( !_.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'BufferBytes & BufferTyped';
  var src = new U8x( 20 );
  test.true( !_.constructible.like( src ) );
  test.true( !_.constructible.is( src ) );
  test.true( !_.objectLike( src ) );
  test.true( !_.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'err';
  var src = _.err( 'error' );
  test.true( _.constructible.like( src ) );
  test.true( _.constructible.is( src ) );
  test.true( _.objectLike( src ) );
  test.true( !_.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'escape';
  var src = _.escape.make( 1 );
  test.true( _.constructible.like( src ) );
  test.true( _.constructible.is( src ) );
  test.true( _.objectLike( src ) );
  test.true( !_.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'interval & BufferTyped';
  var src = _.escape.make( new F32x( 2 ) );
  test.true( _.constructible.like( src ) );
  test.true( _.constructible.is( src ) );
  test.true( _.objectLike( src ) );
  test.true( !_.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'pair';
  var src = _.pair.make();
  test.true( !_.constructible.like( src ) );
  test.true( !_.constructible.is( src ) );
  test.true( !_.objectLike( src ) );
  test.true( !_.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'path & str';
  var src = '/a/b/';
  test.true( !_.constructible.like( src ) );
  test.true( !_.constructible.is( src ) );
  test.true( !_.objectLike( src ) );
  test.true( !_.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'propertyTransformer & filter';
  var src = _.property.filter[ 'dstAndSrcOwn' ];
  test.true( _.constructible.like( src ) );
  test.true( _.constructible.is( src ) );
  test.true( !_.objectLike( src ) );
  test.true( !_.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'propertyTransformer & mapper';
  var src = _.property.mapper[ 'assigning' ];
  test.true( _.constructible.like( src ) );
  test.true( _.constructible.is( src ) );
  test.true( !_.objectLike( src ) );
  test.true( !_.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'routine & routineLike';
  var src = routine;
  test.true( _.constructible.like( src ) );
  test.true( _.constructible.is( src ) );
  test.true( !_.objectLike( src ) );
  test.true( !_.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'timer';
  var src = _.time._begin( Infinity );;
  test.true( !_.constructible.like( src ) );
  test.true( !_.constructible.is( src ) );
  test.true( _.objectLike( src ) );
  test.true( _.objectIs( src ) );
  test.true( _.auxiliary.is( src ) );
  test.true( _.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( _.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );
  _.time.cancel( src );

  test.case = 'date & objectLike';
  var src = new Date();
  test.true( _.constructible.like( src ) );
  test.true( _.constructible.is( src ) );
  test.true( _.objectLike( src ) );
  test.true( !_.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'null';
  var src = null;
  test.true( !_.constructible.like( src ) );
  test.true( !_.constructible.is( src ) );
  test.true( !_.objectLike( src ) );
  test.true( !_.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'undefined';
  var src = undefined;
  test.true( !_.constructible.like( src ) );
  test.true( !_.constructible.is( src ) );
  test.true( !_.objectLike( src ) );
  test.true( !_.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'Symbol null';
  var src = _.null;
  test.true( !_.constructible.like( src ) );
  test.true( !_.constructible.is( src ) );
  test.true( !_.objectLike( src ) );
  test.true( !_.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'Symbol undefined';
  var src = _.undefined;
  test.true( !_.constructible.like( src ) );
  test.true( !_.constructible.is( src ) );
  test.true( !_.objectLike( src ) );
  test.true( !_.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'Symbol Nothing';
  var src = _.nothing;
  test.true( !_.constructible.like( src ) );
  test.true( !_.constructible.is( src ) );
  test.true( !_.objectLike( src ) );
  test.true( !_.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'primitive';
  var src = 5;
  test.true( !_.constructible.like( src ) );
  test.true( !_.constructible.is( src ) );
  test.true( !_.objectLike( src ) );
  test.true( !_.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'Symbol';
  var src = Symbol( 'a' );
  test.true( !_.constructible.like( src ) );
  test.true( !_.constructible.is( src ) );
  test.true( !_.objectLike( src ) );
  test.true( !_.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'ConsequenceLike & promiseLike & promise';
  var src = new Promise( ( resolve, reject ) => { return resolve( 0 ) } );
  test.true( _.constructible.like( src ) );
  test.true( _.constructible.is( src ) );
  test.true( _.objectLike( src ) );
  test.true( !_.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'stream';
  var src = require( 'stream' ).Readable();
  test.true( _.constructible.like( src ) );
  test.true( _.constructible.is( src ) );
  test.true( _.objectLike( src ) );
  test.true( _.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'console';
  var src = console;
  test.true( !_.constructible.like( src ) );
  test.true( !_.constructible.is( src ) );
  test.true( _.objectLike( src ) );
  test.true( _.objectIs( src ) );
  test.true( _.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( _.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( _.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  test.case = 'printerLike';
  var src = _global.logger;
  test.true( !_.constructible.like( src ) );
  test.true( !_.constructible.is( src ) );
  test.true( _.objectLike( src ) );
  test.true( _.objectIs( src ) );
  test.true( _.auxiliary.is( src ) );
  test.true( _.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( _.auxiliary.isPolluted( src ) );
  test.true( _.mapIsPolluted( src ) );

  test.case = 'process';
  var src = process;
  test.true( _.constructible.like( src ) );
  test.true( _.constructible.is( src ) );
  test.true( _.objectLike( src ) );
  test.true( !_.objectIs( src ) );
  test.true( !_.auxiliary.is( src ) );
  test.true( !_.mapIs( src ) );
  test.true( !_.auxiliary.isPrototyped( src ) );
  test.true( !_.mapIsPure( src ) );
  test.true( !_.auxiliary.isPolluted( src ) );
  test.true( !_.mapIsPolluted( src ) );

  /* - */

  function _iterate()
  {

    let iterator = Object.create( null );
    iterator.next = next;
    iterator.index = 0;
    iterator.instance = this;
    return iterator;

    function next()
    {
      let result = Object.create( null );
      result.done = this.index === this.instance.elements.length;
      if( result.done )
      return result;
      result.value = this.instance.elements[ this.index ];
      this.index += 1;
      return result;
    }

  }

  /* */

  function partibleConstructor( o )
  {
    return partibleMake( this, o );
  }

  /* */

  function partibleMake( dst, o )
  {
    if( dst === null )
    dst = Object.create( null );
    _.mapExtend( dst, o );
    if( o.withIterator )
    dst[ Symbol.iterator ] = _iterate;
    return dst;
  }

  function routine () {}

}

//

function typingObject( test ) /* qqq for Yevhen : extend */
{

  let sets =
  {
    withIterator : [ 0, 1 ],
    pure : [ 0, 1 ],
    withOwnConstructor : [ 0, 1 ],
    withConstructor : [ 0, 1 ],
    new : [ 0, 1 ],
  };
  let samples = _.eachSample({ sets });

  for( let env of samples )
  eachCase( env );

  function eachCase( env )
  {

    /* - */

    if( !env.new )
    {
      test.case = `${toStr( env )}`;
      var src = _.objectForTesting( { elements : [ '1', '10' ], ... env } );
      test.true( !_.constructible.is( src ) );

      test.identical( _.objectIs( src ), true );
      test.identical( _.objectLike( src ), true );
      test.identical( _.mapIs( src ), !env.withIterator );
      test.identical( _.auxiliary.is( src ), !env.withIterator );
      test.identical( _.auxiliary.isPrototyped( src ), false );
      test.identical( _.mapIsPure( src ), !!env.pure && !env.withIterator );
      test.identical( _.mapIsPolluted( src ), !env.pure && !env.withIterator );
      test.identical( _.auxiliary.isPolluted( src ), !env.pure && !env.withIterator );

    }

    /* - */

    if( env.new )
    {
      test.case = `${toStr( env )}`;
      // if( env.withIterator === 0 && env.pure === 0 && env.withOwnConstructor === 0 && env.withConstructor === 0 )
      // debugger;
      var src = _.objectForTesting( { elements : [ '1', '10' ], ... env } );

      test.true( !_.constructible.is( src ) ^ !!env.withConstructor );

      test.identical( _.objectIs( src ), true );
      test.identical( _.objectLike( src ), true );
      test.identical( _.mapIs( src ), false );
      test.identical( _.auxiliary.is( src ), !env.withIterator && !env.withConstructor );
      test.identical( _.auxiliary.isPrototyped( src ), !env.withIterator && !env.withConstructor );
      test.identical( _.mapIsPure( src ), false );
      test.identical( _.mapIsPolluted( src ), false );
      test.identical( _.auxiliary.isPolluted( src ), !env.pure && !env.withIterator && !env.withConstructor );

    }

    /* - */

  }

  function toStr( src )
  {
    return _globals_.testing.wTools.toStrSolo( src );
  }

}

//

/* qqq : wrote very good test for objectIs */
/* qqq  : use test.true() instead of test.identical() */
function objectLike( test ) /* qqq : rewrote the test */
{
  test.description = 'array-like entities should not overlap with array-like entities set';

  test.identical( _.objectLike( new ArrayBuffer( 10 ) ), true );
  test.identical( _.objectLike( new Float32Array( 10 ) ), false );
  test.identical( _.objectLike( new DataView( new ArrayBuffer( 10 ) ) ), true );
  test.identical( _.objectLike( new Array( 10 ) ), false );
  test.identical( _.objectLike( [ 1, 2, 3 ] ), false );
  test.identical( _.objectLike( new Map ), false );

  test.description = 'this entities are object-like';

  test.identical( _.objectLike( _global_ ), true );
  test.identical( _.objectLike( {} ), true );
  test.identical( _.objectLike( Object.create( null ) ), true );
}

// --
// declaration
// --

var Self =
{

  name : 'Tools.Constructible',
  silencing : 1,

  tests :
  {

    typingBasic,
    typingExtended,
    typingObject,
    objectLike,

  }

}

//

Self = wTestSuite( Self );
if( typeof module !== 'undefined' && !module.parent )
wTester.test( Self.name );

})();
