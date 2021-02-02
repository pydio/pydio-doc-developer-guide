At this step, you may have understood that various use cases may many actions of a job to be started in parallel. 

Make sure to be aware of this powerful feature, as it can have an important drawback: **running tons of tasks in parallel may quickly result in overloading your server CPU!**. To avoid that issue, jobs define a "Max. Parallel Tasks" parameter that you defined to tell the internal queue to never run more than XX action instances at the same time.  

### Example

Let's have a look at the internal job used for extracting images thumbnails and exif metadata: 

[:image:0_overview/anatomy-parallel-example.png]

Now imagine when some user is uploading 1000 JPG images at once to Cells rapidly. 

 - Event Trigger could eventually receive 1000 "Create Node" events in a very short period of time
 - For all these images both "Create Thumbs" and "Extract EXIF" will be launched. These actions require reading the entire file and manipulating image pixels, and are CPU-heavy. 

Without any restrictions, you could end up having Cells processing 2000 heavy-load actions concurrently!
If you notice the **Max. Parallel Tasks: 5** value, we avoid this batch-processing images only 5 by 5.

Of course, if you have dimensioned your server CPU/RAM to handle super high load, you could decide to raise this value to accelerate thumbnails generation within limits acceptable by your hardware.
