As explained in the first section of [Anatomy of a Flow](./anatomy-flow), a core concept of the workflow is how the "data" transits from one action to another inside ActionMessages. 

As soon as your Flow grows, you will want to try it with specific inputs to see if it's working properly.

Generally, the only way would be to use real data, and repeat the process of tweaking, saving, running, and looking at the output. It can quickly become very cumbersome.

Cells Flows has the ability to inspect the values of all messages passing along. This proves a real time-saver for complex Flows.

## Enabling messages debugging

You can switch the debug mode on for Cells Flows with the following **Environment** variable: 
```
export CELLS_JOBS_LOG_LEVEL=debug
```
And **restart Cells**. 

Once the debugging is on, you can toggle the DEBUG level of the task logs using the `{}` button. They contain a lot of information, particularly all messages that are received by all actions, and outputted at the end of all actions. 

[:image:0_overview/debugging-debugs-in-logs.png]

The messages are displayed as expandable JSON objects, showing all the properties of the messages in a very detailed way.

[:image:0_overview/debugging-debugs-in-logs-expanded.png]

## Following messages in the Graph

When loading the DEBUG level logs for a given task, you will see that they also appear **directly inside the Flow Graph**! You can now visually follow what happened during the task.

To see the content of a message, simply click on the `{}` symbol: it will appear in a pop-up, and you can expand the JSON (as in the logs). To keep this pop-up open while looking at another message, you can "Pin" it (and then move it arround if you want). 

[:image:0_overview/debugging-debugs-in-graph.png]

Pinning a message is especially useful when an action has received a collection of objects as Input. In that case, you can click on the "tag" icon to filter the messages to a specific object occurence, showing how the rest of the Flow behaved **for this particular object**. 

[:image:0_overview/debugging-debugs-in-graph-one-popup.png]

The example below shows a first image of messages where we can see that two nodes where received by the first action. By filtering inputs, we show that the first node (image 2) was passing the filter condition, while the seconde node (image 3) was not.

[:image:0_overview/debugging-debugs-pinpopup-pass.png]

[:image:0_overview/debugging-debugs-pinpopup-fail.png]

