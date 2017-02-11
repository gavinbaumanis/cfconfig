/**
* I represent the behavior of reading and writing CF engine config in the format compatible with a Lucee 4.x server context
* I extend the BaseConfig class, which represents the data itself.
*/
component accessors=true extends='cfconfig-services.models.BaseLucee' {
		
	/**
	* Constructor
	*/
	function init() {
		super.init();
		
		// Used when writing out a Lucee server context config file from the generic config
		setConfigFileTemplate( expandPath( '/cfconfig-services/resources/lucee4/lucee-server-base.xml' ) );
		
		// This is the file name used by this config file
		setConfigFileName( 'lucee-server.xml' );
		// This is where said config file is stored inside the server home
		setConfigRelativePathWithinServerHome( '/context/' );

		setFormat( 'luceeServer' );
		setVersion( '4' );
		
		return this;
	}	
}