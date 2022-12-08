Cells Flows Jobs can be started in many ways: reacting to Cells events, based on a schedule, or manually, or even by end-users using WebHooks and buttons.

## Event-based Triggers

To create a job that will react to certain events, use Event-based triggers. Image below shows the list of available events.

[:image:0_overview/anatomy-triggers-list-part1.png]

[:image:0_overview/anatomy-triggers-list-part2.png]

### Combining Multiple Events

A job can be programmed to start based on multiple events (for example jobs are often started on "File Created" or "File Modified" event), but as a rule of thumb make sure to combine only **events of the same type**. As explained in the Data Types section, events will feed their triggering data (e.g. "The modified File", "The user who logged in") in the first action Input, and that action will generally expect a specific data type.

[:image:0_overview/anatomy-triggers-events-multiple.png]

## Schedule-based Triggers

Running jobs on a timely manner is done by using Schedule-based trigger.  

[:image:0_overview/anatomy-triggers-schedule.png]

Note that scheduled jobs can also be run manually.

## Starting Jobs Manually

You can simply start a manual or scheduled job using the RUN NOW button in the top-right hand of the screen.

[:image:0_overview/anatomy-triggers-manual.png]

## WebHooks

WebHooks are a powerful way for enabling users interaction with you admin-defined Flow. See the [Dedicated Section](./webhooks-buttons) to learn more about WebHooks.