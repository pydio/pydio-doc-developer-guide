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

## Handling the form

Once the form is defined, either as XML or JavaScript structure, the "PydioForm" UI library contains all the necessary tools to generate a proper form to the user. The FormPanel react component is a "controlled" component: it takes a map of fields definition, an object of values, and changes are reflected through the "onChange" react "prop".

Here is an example below, used in the Profile panel

    import Pydio from 'pydio'
    const {FormPanel} = Pydio.requireLib('form')

    onFormChange: function(newValues, dirty, removeValues){
        // Do something with the new values
    }
        
    render(){
        return (
            <FormPanel
                className="current-user-edit"
                parameters={definitions}
                values={values}
                binary_context={"user_id="+this.props.pydio.user.id}
                onChange={this.onFormChange}
            />
        );
    }

You can either manually define a full javascript object for fields definition, using the same attributes as the ones defined in the XML \<param\> tag. Or the Manager class from the same library can be useful if you want to parse XML located at a given location in the registry

    import Pydio from 'pydio'
    const {Manager} = Pydio.requireLib('form')
    
    // Use XPath query to find all parameters that are defined to be displayed in the user profile panel
    const {pydio} = this.props;
    const definitions = Manager.parseParameters(pydio.getXmlRegistry(), "user/preferences/pref[@exposed='true']|//param[contains(@scope,'user') and @expose='true']");
    // ... now use it for FormPanel

Finally, you’ll want to submit the form to the server. If you have stored the values in the state of your component, and you can do whatever you want, using the api client to post data as key/value parameters, or eventually using `JSON.stringify()` to post whole values as a bunch.
 