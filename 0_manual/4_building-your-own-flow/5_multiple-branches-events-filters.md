When designing a Flow that implements a complex business requirements, you will often end-up creating different branches that react differently to their own specific stimulus. 

### Example

Here is our requirement: 
```
Wire Cells with a custom in-house tool that creates a thumbnail for specific file formats. 
```

First we need to create a simple job: 
- Listens to the "On Create File" events, 
- Filter them by extension, 
- Call our extractor API, 
- Store the thumbnail back as a metadata of the file. 

If we look closer, how can we make sure that the created thumbnail is deleted along with the original file? Ok, let's create an other flow: 
- Listen to "On Delete" file,  
- Removed corresponding thumbnail

And what about all the files that exist in the system _before_ we wired this in-house tool ? We can create a "Manual Flow": 
- Crawl the datasources looking for files that are missing our special thumbnails
- Process them accordingly (call extractore, store thumbnail).

**So we end up with 3 Flows here**. That's Ok. But now let's say that the list of extensions used to identify the candiate files may evolve in the future : we would create "Job Parameters" in each of the 3 Flows for that, and update them accordingly when required... You get the point, it is not very elegant. It would be much simpler to maintain one Flow that could handle all the cases. 

### Combining Triggers in one Flow

Using triggers filters, we can enable multiple different triggers for a given flow, and create as many branches as required to handle these. The key here is to attach one Trigger Filter per branch, to determine to which stimuli it must react. 

So for our example described above, we could enable events listening on "Create" and "Delete", as well as a Manual trigger, and simply create filters for each. Here is an example as used in the standard "Create thumbnails and extract EXIF" Flow.

[:image:0_overview/multiple-branches-triple-flow.png]