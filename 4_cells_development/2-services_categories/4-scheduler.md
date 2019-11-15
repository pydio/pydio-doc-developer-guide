
### Services involved

Pydio comes with a powerful built-in scheduler that is composed of three different services:

- jobs: The jobs service is the main interface. It is in charge of persisting the jobs definition and the tasks statuses, and sending proper events when they change.
- timer: Timer service is a simple scheduler that will analyze job definitions and send task trigger events at a given time if necessary.
- tasks: The task runners are stateless, pool-based workers that react to timer events, node events or job change events to actually run the tasks.

The figure below shows how these three services interact.

[:image:1_cells_internals/schedulerservices.png]

Jobs are currently stored inside a BoltDB file, which implies that the job services cannot be scaled for the time being, but the task runners themselves can be easily dispatched on many servers, as they listen to events in a queued manner (only one node reads (consumes) a given event).

### Jobs and Actions

Jobs are defined by unitary Actions, that can be started in parallel or in a chained way. Actions are small pieces of code that are already compiled in the binary. Each step can take an input, define how to eventually filter this output, and send data to the output.
Below is a diagram of how actions are processed when actually running a task.

[:image:1_cells_internals/taskrunner.png]

### Preset Jobs

Pydio internally uses the scheduler to perform the following tasks

- Automatically extract thumbnails and EXIF data from images whenever they are created/modified.
- Create versions of any files whenever they change
- Archive database tables that are growing in size.

Pydio Client is able to send a PutJob request to the scheduler to trigger a specific action “sync-users”, which will synchronize an external directory (currently LDAP) with the internal API. See ‘client job sync-users’.
