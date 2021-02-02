## Tasks History

Once a job is defined and ready to run, its actual running instances are named "Tasks". One job has one or many tasks that have a runtime Status : "Pending", "Running", "Complete" or "Error".

Each task will log its output to a specific logger. Most actions are pre-configured to send logs to the task logger, summarizing what exactly happened during run. 

All tasks history and their logs can be found under the job workflow panel. You can manually clear tasks from this list using the various delete buttons (delete one raw, select multiple then delete, delete all tasks). 

[:image:0_overview/tasks-logs.png]

**Note**: the task list is refreshed automatically, but as logs are sent internally in an asynchronous way, logs may take some time to appear just after a task has run.

## Printing information to logger

When creating your own custom job, it is very often useful to print out some informative (or even debugging) lines to check if you are correctly configuring your actions, queries or others. 

The **Empty Action** is an good tool to insert here and there inside your flow to print out the contents of the current messages passing along. Create a new action and select "Empty Action" in the action picker screen:

[:image:0_overview/logs-action-empty-select.png]

Then use the action parameter to input any message you want to print out. Remember that you can use Golang Templates here to print out a specific part of the action input!

[:image:0_overview/logs-action-empty-parameters.png]

You can also use the toggles to send this message to the Application Log. In that case, it will be appended to the standard syslog of Pydio Cells.
