Parametrization is an essential feature of any workflow tool. Cells Flows flexible model allows you to set up parameters at various levels, and re-use them using advanced scripting capabilities.

## Action Parameters

Each action declares its own set of parameters that are typed (string, number, boolean, preset list of choices...) and can be edited directly in the interface.

In Edit mode, just click on an action to edit its parameters.

[:image:0_overview/anatomy-action-level-parameters.png]

As you can see, you can also rename the action to make your diagram flow more readable.
## Job-level Parameters

### Defining job-level parameters

You can define your own set of parameters at the job level. 

[:image:0_overview/anatomy-job-level-parameters.png]

Defining parameters at the job-level provides many advantages : 

 - **Centralize parameters management** and reeuse their values inside Actions, Filters and Queries.
 - **Parameters are typed** (string, number, boolean, preset list of choices...) to avoid human errors.
 - Manual and scheduled jobs run with the parameters preset values, but the "**Run With Custom Parameters**" option allows to apply specific values for just one specific run. 

Creating or editing parameter is simply done by clicking on the "+" button of the Parameters panel, or the "pencil" icon next to an existing parameter.

[:image:0_overview/anatomy-job-level-parameter-edit.png]

### Using job-level parameters

As such, these parameters are not used anywhere: it is your mission to use them inside your Actions parameters (any parameter) or Queries/Filters field values (only applicable to text fields).  This is done by using the Golang Template syntax `{{.JobParameters.ParameterName}}`. Below is an example used in the default "Personal Files Archive" job. 

 - Using `ArchivePath`, `ArchivePrefix` and `Format` in the "Compress" action parameters:

   [:image:0_overview/anatomy-job-level-parameter-usage-action.png]

    


 - Using `RootPath`, in the Query used for finding user personal folder:

   [:image:0_overview/anatomy-job-level-parameter-usage-filter.png]