
 PDF Actions: split pages, merge pages, create from markdown

### Parameters
|Label (internal name)|Type|Default|Description|
|---|---|---|---|
|**Break on Error** (breakOnError)|boolean|false|Whether to break or ignore PDF-specific errors|
|**Single Input Data** (singleInput)|Possible Values Below|inputNode|Source for the PDF raw data, applicable only for 'Split' and 'Watermark' commands|
|**&nbsp;&nbsp;&nbsp;&bull; Input Node** (inputNode)|singleInput|<no value>||
|**&nbsp;&nbsp;&nbsp;&bull; Custom Path** (customPath)|singleInput|<no value>||
|**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Custom Path** (reader_alternatePath)|string|<no value>|Set path here if you want to override {{.Node.Path}}|
|**&nbsp;&nbsp;&nbsp;&bull; Incoming Data from LastOutput.RawBody** (lastOutputRaw)|singleInput|<no value>||
|**Command** (command)|Possible Values Below||PDF Operation to apply|
|**&nbsp;&nbsp;&nbsp;&bull; Split Pages** (split)|command|<no value>||
|**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Optional list of pages** (pages)|string|<no value>|List of Pages - "1 2 4" for specific pages,  "1-4" for range, or "1-" for all|
|**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Directory where to place extracted pages** (split-target-dir)|string|{{.Node.Path  or  dir}}|Name of the resulting file, inside the origin folder|
|**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Page Prefix** (split-target-prefix)|string|{{.Node.Path  or  base  or  replace ".pdf" ""}}|Prefix used for naming extracted pages, like prefix-{number}.pdf (inferred from the filename by default)|
|**&nbsp;&nbsp;&nbsp;&bull; Join Pages** (join)|command|<no value>||
|**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Write To Target (see below)** (writeToFile)|boolean|true|Write to file or just keep data in-memory and pass to next action via RawBody|
|**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Name of the resulting file** (target-name)|string|{{.Node.Path  or  dir}}/joined-pages.pdf|Name of the resulting file, inside the origin folder|
|**&nbsp;&nbsp;&nbsp;&bull; Add Watermark** (watermark)|command|<no value>||
|**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Type of the Watermark** (wType)|select, possible values: Text (text),<br/>Image (image)|text|Either Text or Image|
|**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Text or Path to Image** (wContent)|string||Depending on the 'Type' chosen enter watermark text or a full path to an image here|
|**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Watermark On Top** (wTop)|boolean|false|Whether to put watermark on top or behind content|
|**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Additional Watermark Description** (wDescription)|string||Please check https://pdfcpu.io/core/watermark for detailed description flags|
|**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Optional list of pages** (wPages)|string|1-|List of Pages - "1 2 4" for specific pages,  "1-4" for range, or "1-" for all|
|**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Write To Target (set below)** (writeToFile)|boolean|true|Write to file or just keep data in-memory and pass to next action via RawBody|
|**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Target PDF (original file by default)** (wTarget)|string||Leave empty to override original document, put an alternative path|





