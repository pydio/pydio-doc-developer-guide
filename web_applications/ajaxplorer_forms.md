One common task you may have to handle when creating interfaces will be providing forms. Over the time, we developed our own form manager that provides tools to handle fields and values on both the client and the server side. The components implied are prefixed with “SF” or “standardForms” on both sides.

## Defining forms in XML
The definition of a set of form fields is generally done via XML, through a set of <**param**> elements. It can actually also be done via JavaScript, in that case you simply have to create javascript objects that contain the same keys as the **param** XML attributes. The attributes are described below (extract from the XSD).


	<xs:element name="param">
	<xs:complexType>

	<!-- Basic attributes: technical name of the field, label and description (help tooltip), mandatory or not -->
	<xs:attribute name="name" use="required" type="xs:NCName"/>
	<xs:attribute name="label" use="required"/>
	<xs:attribute name="description" use="required"/>
	<xs:attribute name="mandatory" type="xs:boolean"/>

	<!-- Type of field to display.
	Currently supported are:
	boolean, string, select (requires the choices attribute), hidden,
	plugin_instance:pType (will generate a list of available plugins for this type),
	-->
	<xs:attribute name="type" use="required" type="xs:Name"/>
	<!-- Type "select" specific field -->
	<xs:attribute name="choices"/>
	<!-- Type "upload" specific fields:
	uploadAction: server action to call for uploading image
	loadAction: server action to call for loading current image
	defaultImage: replacement image if no value is set
	-->
	<xs:attribute name="uploadAction" use="optional"/>
	<xs:attribute name="loadAction" use="optional"/>
	<xs:attribute name="defaultImage" use="optional"/>

	<!--
	These fields are various ways to group the some parameters together:
	. group: all fields with the same "group" value will appear in this group
	. replicationGroup: all fields in the same replication group will be in a sub-frame, with a "+" sign giving the ability to replicate the whole frame of fields/
	. group_switch_name/group_switch_value/group_switch_label : ability to have some fields appearing dynamically depending on a master "select" field. The select field must have its "choices" parameter set to group_switch:switchname.
	-->

	<xs:attribute name="group"/>
	<xs:attribute name="replicationGroup"/>
	<xs:attribute name="group_switch_name" use="optional"/>
	<xs:attribute name="group_switch_value" use="optional"/>
	<xs:attribute name="group_switch_label" use="optional"/>

	<!-- The default value -->
	<xs:attribute name="default"/>

	<!-- Plugins parameters specificities -->
	<xs:attribute name="no_templates" type="xs:boolean"/>
	<xs:attribute name="templates_only" type="xs:boolean"/>
	<xs:attribute name="scope"/>
	<xs:attribute name="repoScope"/>
	<xs:attribute name="editable" type="xs:boolean" use="optional"/>
	</xs:complexType>
	</xs:element>

##Handling the form
Once the form is defined, either as XML or JavaScript structure, you must use the FormManager class to handle the parameters and construct an HTML form. Instanciate the class to use its utilitary methods, as follow:


	var f = new FormManager();
	/* We know that the form parameters are available at a certain place in the XML registry */
	var params = f.parseParameters(pydio.getXmlRegistry(), "/path/to/the/params");
	/*
	We want to create the form inside a div element already stored in myDiv variable.
	See the createParametersInputs signature for more infor about the additional parameters
	*/
	f.createParametersInputs(myDiv, params);

Afterward, you’ll want to submit the form to the server. For that, we use the same FormManager class, through the method serializeParametersInputs. You can use the same class instance, but it’s not mandatory, it is not specially linked to a field.


	var f = new FormManager();
	/* Create an empty Hash to store the values */
	var params = $H();
	/* Call the method with optional prefix */
	f.serializeParametersInputs(myDiv, params, 'PARAMS_PREFIX');
	
If you set a prefix, it will be prepended to all query fields names.

And finally, you’ll have to parse these data to use them on the server side. Using the PHP method provided by AJXP_Utils parseStandardFormParameters, you’ll transform the data POSTed by your form to a usable associative array.

	/* Create an array to be fed by the function. We admin you are in a callback where the http query parameters are passed through the $httpVars variable */
	$formValues = array();
	/* You can pass the logged user to eventually store uploaded binaries inside the correct container (see binary context parameter as well) */
	AJXP_Utils::parseStandardFormParameters($httpVars, $formValues, AuthService::getLoggedUser(), "PARAMS_PREFIX");
	/* Now your $formValues should contain usable data, and $httpVars is reduced from all the specific standard forms parameters. */

	// Do something with the data.