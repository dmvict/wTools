( function _l3_Object_s_()
{

'use strict';

let _global = _global_;
let _ = _global_.wTools;
let Self = _global_.wTools.object = _global_.wTools.object || Object.create( null );

// --
// typing
// --

/**
 * Function objectIs checks incoming param whether it is object.
 * Returns "true" if incoming param is object. Othervise "false" returned.
 *
 * @example
 * let obj = { x : 100 };
 * _.objectIs(obj);
 * // returns true
 *
 * @example
 * _.objectIs( 10 );
 * // returns false
 *
 * @param { * } src.
 * @return { Boolean }.
 * @function objectIs
 * @namespace Tools
 */

function objectIs( src )
{
  return Object.prototype.toString.call( src ) === '[object Object]';
}

//

function objectLike( src ) /* xxx qqq : optimize */
{

  if( _.objectIs( src ) )
  return true;

  if( _.primitiveIs( src ) )
  return false;

  // if( _.longIs( src ) ) /* yyy */
  // return false;
  if( _.vectorIs( src ) )
  return false;

  if( _.routineIsTrivial( src ) )
  return false;

  if( _.setIs( src ) )
  return false;

  if( _.hashMapIs( src ) )
  return false;

  // yyy
  // for( let k in src )
  // return true;
  // return false;

  return true;
}

//

function objectLikeStandard( src ) /* xxx qqq : optimize */
{

  if( _.objectIs( src ) )
  return true;

  if( _.primitiveIs( src ) )
  return false;
  if( _.vectorIs( src ) )
  return false;
  if( _.routineIsTrivial( src ) )
  return false;
  if( _.setIs( src ) )
  return false;
  if( _.hashMapIs( src ) )
  return false;

  if( _.dateIs( src ) )
  return true
  if( _.regexpIs( src ) )
  return true

  return true;
}

//

function objectForTesting( o )
{
  let result;

  _.assert( arguments.length === 1 );
  partiableConstructorPure.prototype = Object.create( null );
  if( o.withConstructor )
  partiableConstructorPure.prototype.constructor = partiableConstructorPure;

  /* xxx : replace partiableMake */

  if( o.new )
  {
    if( o.pure )
    result = new partiableConstructorPure( o );
    else
    result = new partiableConstructorPolluted( o );
  }
  else
  {
    result = _objectMake( null, o );
  }

  if( o.withOwnConstructor )
  result.constructor = function ownConstructor(){}

  return result;

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

  function partiableConstructorPure( o )
  {
    return _objectMake( this, o );
  }

  /* */

  function partiableConstructorPolluted( o )
  {
    let result = _objectMake( this, o );
    if( !o.withConstructor )
    delete Object.getPrototypeOf( result ).constructor;
    return result
  }

  /* */

  function _objectMake( dst, o )
  {
    if( dst === null )
    if( o.pure )
    dst = Object.create( null );
    else
    dst = {};
    _.mapExtend( dst, o );
    if( o.withIterator )
    dst[ Symbol.iterator ] = _iterate;
    return dst;
  }

  /* */

}

objectForTesting.defaults =
{
  new : 0,
  pure : 0,
  withIterator : 0,
  withOwnConstructor : 0,
  withConstructor : 0,
  elements : null,
}

// --
// extension
// --

let ToolsExtension =
{

  // typing

  objectIs, /* qqq : optimize */
  objectLike, /* qqq : optimize */
  objectLikeStandard, /* qqq : optimize */

  //

  objectForTesting,

}

//

Object.assign( _, ToolsExtension );

// --
// export
// --

if( typeof module !== 'undefined' )
module[ 'exports' ] = _;

})();
