(function _Base_s_() {

'use strict'; /**/

if( typeof module !== 'undefined' && module !== null )
{

  require( './Layer2.s' );
  module[ 'exports' ] = _global_.wTools;

  var _global = _global_; var _ = _global_.wTools;
  var Self = _global_.wTools;

}

// --
// export
// --

if( typeof module !== 'undefined' )
if( _global_.WTOOLS_PRIVATE )
delete require.cache[ module.id ];

if( typeof module !== 'undefined' && module !== null )
module[ 'exports' ] = Self;

})();
