Apache Tika is an independant, open source, content extractor that supports a very wide range of file formats. It can
even support OCR for extracting text from images. 

This flow sends file contents to Tika and gets the textual information to be indexed internally by the Cells search engine. 
This textual content is stored on Cells side to avoid having to resend file to Tika on re-indexation. Job is also in charge 
of cleaning associated metadata on file deletion, and can be triggered manually to re-extract contents from all compatible files (can be handy when first enabling job to run on existing files).

Tika provides also metadata extraction, that can be indexed by Cells search engine as well.