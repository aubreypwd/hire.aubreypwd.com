( function( $ ) {

	// Make sure form data is preserved using Savior.
	$( document ).ready( () => {
		if ( window.Savior && typeof window.Savior.init === 'function' ) {
			window.Savior.init( { selector: 'form', saveDelayMs: 100 } );
		}
	} );

} )( jQuery );
