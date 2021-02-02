Cells Flows is a drag-n-drop tool that allows you to easily automate tasks on files and folders and on users or permissions in Pydio Cells.

### Why should I use Cells Flows? 

As file sharing and content collaboration usage grows inside your company, keeping things under control is an important part of the data administrator day-to-day work: monitoring storage usage, making sure files shared by former employees are not publicly shared, providing on-demand accesses to various collaborators... **All these tedious manual tasks can be replaced by automatic jobs that are triggered in a timely manner or based on various platform events**.

#### Drag-and-drop Interface on top of Cells Internal Scheduler

Cells Scheduler was added in Pydio Cells at day one to provide tasks management for features like Thumbnails Extraction, revoked token pruning, handling mailer queue, etc.  Cells Flows provides a **unique drag-and-drop interface** on top of this mature technology to build, modify and monitor automated jobs in your Cells instance.

[:image:0_overview/capture-folder-content-report.png]

#### Process files and folders, but also other internal data

Cells Flows primarily aims at processing files uploaded inside Cells: from moving them around, extracting textual contents from PDF or thumbnails/exif data, many processors are available out-of-the-box. However it can also process other data types: list all users with given attributes, apply some specific permissions to them, generate a CSV list and send it by email every day, etc.

[:image:0_overview/select-users.png]

#### React to events - Replace CRON

Event-based approach gives you the flexibility you need to react to many events. From new file uploaded or contents changed, to users sign-in or public link creation, Cells Flows have you covered to trigger jobs whenever required.  Jobs can also be scheduled to run on a timely manner, replacing good old CRON for starting tasks every hour, every days, etc.

[:image:0_overview/cron-like-schedule.png]

#### Cells Integration with external tools

Many Actions provide tools to interact with external services, from **webhooks** to **command-line** and **HTTP** calls. This makes
it easy to seamlessly integrate Cells inside your existing infrastructure and set of services. Easily connect Cells to feed your in-house service developed for specific file processing, and use Cells REST API to automatically trigger Jobs within Cells Flows. 

[:image:0_overview/hooks.png]

### High-level concepts

A **Job** represent the definition of a sequence of **Actions**, basic building blocks that can be chained together to process data. Just add an action and connect it to others, adding **Filters** on the data flow, or loading data from Cells internal services using **Queries**. 

[:image:0_overview/sample-job.png]

When **Trigger** conditions are met (based on events, schedule or when you run manually), a job will launch **Task** with your job-defined **Parameters**, and process all actions and log their results in the **Task Logs**.

[:image:0_overview/tasks-logs.png]