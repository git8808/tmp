<a name="module_patterns"></a>

## patterns

* [patterns](#module_patterns)
    * _static_
        * [.getDesignPatterns(id, query, callback)](#module_patterns.getDesignPatterns)
        * [.getDesignPattern()](#module_patterns.getDesignPattern)
        * [.createDesignPattern()](#module_patterns.createDesignPattern)
        * [.updateDesignPattern()](#module_patterns.updateDesignPattern)
    * _inner_
        * [~savePatternToDB(dpMetadata, callback)](#module_patterns..savePatternToDB)
        * [~updatePatternInDB(id, query, callback)](#module_patterns..updatePatternInDB)
        * [~saveFile(id, query, callback)](#module_patterns..saveFile)
        * [~exportDPMetadata(designPatternXmlString)](#module_patterns..exportDPMetadata) ⇒ <code>object</code>
        * [~savePatternToDBCB](#module_patterns..savePatternToDBCB) : <code>function</code>
        * [~savePatternToDBCB](#module_patterns..savePatternToDBCB) : <code>function</code>
        * [~savePatternToDBCB2](#module_patterns..savePatternToDBCB2) : <code>function</code>
        * [~savePatternToDBCB3](#module_patterns..savePatternToDBCB3) : <code>function</code>

<a name="module_patterns.getDesignPatterns"></a>

### patterns.getDesignPatterns(id, query, callback)
Update a design pattern in the database

**Kind**: static method of [<code>patterns</code>](#module_patterns)  

| Param | Type | Description |
| --- | --- | --- |
| id | <code>object</code> | ID of the desing pattern that will be updated. |
| query | <code>object</code> | A mongoose query to update the document in the database. |
| callback | <code>savePatternToDBCB2</code> | A callback to run. |

<a name="module_patterns.getDesignPattern"></a>

### patterns.getDesignPattern()
**Kind**: static method of [<code>patterns</code>](#module_patterns)  
**Api**: <code>get</code> /patterns/{dpid} Get a specific design pattern  
**Apiname**: Pattern  
**Apigroup**: Patterns  
**Apiheader**: Authorization Bearer token.  
**Apiexample**: <code>curl</code> Example usage:   curl -X GET localhost:3000/api/v1/patterns/dp_anboy_assign_ewc_code_bypassed  \     -H 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI1YWRiNzY1ZjZmMzJmODJlOWM2ZjU4YmUiLCJlbWFpbCI6ImVtYWlsQGVtYWlsLmNvbSIsIm5hbWUiOiJQYXRyaWsgU2FnYXQiLCJleHAiOjE1MjcxNzk5OTEsImlhdCI6MTUyNzA5MzU5MX0.1AjqV-AToiPSXUe2UxsJeeXhQNjd1Ra7_t-Qoxzlqxc'    curl -X GET localhost:3000/api/v1/patterns/dp_anboy_assign_ewc_code_bypassed?action=download  \     -H 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI1YWRiNzY1ZjZmMzJmODJlOWM2ZjU4YmUiLCJlbWFpbCI6ImVtYWlsQGVtYWlsLmNvbSIsIm5hbWUiOiJQYXRyaWsgU2FnYXQiLCJleHAiOjE1MjcxNzk5OTEsImlhdCI6MTUyNzA5MzU5MX0.1AjqV-AToiPSXUe2UxsJeeXhQNjd1Ra7_t-Qoxzlqxc'  
**Apisuccessexample**: Success-Response:HTTP/1.1 200 OK{  "_id": "dp_anboy_assign_ewc_code_bypassed",  "name": "dp_anboy_assign_ewc_code_bypassed",  "imgUrl": "https://www.dropbox.com/s/aeixkggi3z2t06o/dp_anboy_assign_ewc_code_bypassed.png?dl=1",  "_type": "parallel",  "description": "Assign Error/Warning/Clean code for the records which were not validated.",  "userUploader": "5adb765f6f32f82e9c6f58be",  "createdAt": "2018-05-24T10:28:25.436Z",  "updatedAt": "2018-05-24T10:30:08.330Z",  "__v": 0}  
**Apisuccessexample**: Success-ResponseDownload:HTTP/1.1 200 OK<?xml version="1.0" encoding="UTF-8"?><DSExport><Header CharacterSet="CP1252" ExportingTool="IBM InfoSphere DataStage Export (External)" ToolVersion="8" ServerName="DEV-INFOSPHERE.COM" ToolInstanceID="IDSS_DEV_01" Date="2014-10-08" Time="10:31:51" ServerVersion="9.1" ClientInstallPath="C:\InformationServer91\Clients\Classic"/><Job Identifier="dp_anboy_assign_ewc_code_bypassed" DateModified="2014-10-01" TimeModified="11.13.08"><Record Identifier="ROOT" Type="JobDefn" Readonly="0"><Property Name="Name">dp_anboy_assign_ewc_code_bypassed</Property><Property Name="Description">Assign Error/Warning/Clean code for the records which were not validated.</Property><!-- REST OF THE CONTENT WAS COMMENTED OUT --> </Job></DSExport>  
**Apiparam**: (Query string) {String} [action] Used to download a desing pattern as XML file:```action=download```  
**Apiuse**: DPNotFound  
<a name="module_patterns.createDesignPattern"></a>

### patterns.createDesignPattern()
**Kind**: static method of [<code>patterns</code>](#module_patterns)  
**Api**: <code>post</code> /patterns Create new design pattern  
**Apipermission**: Admin  
**Apiname**: CreatePattern  
**Apigroup**: Patterns  
**Apiheader**: Authorization Bearer token.  
**Apiheader**: Content-Type text/xml or application/xml  
**Apiexample**: <code>curl</code> Example usage:      curl -X POST localhost:3000/api/v1/design-patterns \      -H 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI1YWRiNzY1ZjZmMzJmODJlOWM2ZjU4YmUiLCJlbWFpbCI6ImVtYWlsQGVtYWlsLmNvbSIsIm5hbWUiOiJQYXRyaWsgU2FnYXQiLCJleHAiOjE1MjcxNzk5OTEsImlhdCI6MTUyNzA5MzU5MX0.1AjqV-AToiPSXUe2UxsJeeXhQNjd1Ra7_t-Qoxzlqxc' \      -H 'Content-Type: text/xml' \      -d '<?xml version="1.0" encoding="UTF-8"?>        <DSExport>        <Header CharacterSet="CP1252" ExportingTool="IBM InfoSphere DataStage Export" ToolVersion="8" ServerName="DEV-INFOSPHERE-E002.IKEADT.COM" ToolInstanceID="IDSS_DEV_01" Date="2014-10-08" Time="10.23.20" ServerVersion="9.1" />        <Job Identifier="dp_mikli_copy_dataset" DateModified="2014-08-13" TimeModified="10.49.29">        <Record Identifier="ROOT" Type="JobDefn" Readonly="0">        <Property Name="Name">dp_mikli_copy_dataset</Property>        <Property Name="Description">Copy data from one dataset to another</Property>        <!-- REST OF THE CONTENT WAS COMMENTED OUT -->         </Job>        </DSExport>        '  
**Apisuccessexample**: Success-Response:HTTP/1.1 201 Created{  "_id": "dp_mikli_copy_dataset",  "name": "dp_mikli_copy_dataset",  "imgUrl": "",  "_type": "parallel",  "description": "Copy data from one dataset to another",  "userUploader": "5adb765f6f32f82e9c6f58be",  "createdAt": "2018-05-25T07:23:20.337Z",  "updatedAt": "2018-05-25T07:23:20.337Z",  "__v": 0}  
**Apiuse**: MissingProperties  
<a name="module_patterns.updateDesignPattern"></a>

### patterns.updateDesignPattern()
Say hello.

**Kind**: static method of [<code>patterns</code>](#module_patterns)  
<a name="module_patterns..savePatternToDB"></a>

### patterns~savePatternToDB(dpMetadata, callback)
Save a design pattern's metadata to the database

**Kind**: inner method of [<code>patterns</code>](#module_patterns)  

| Param | Type | Description |
| --- | --- | --- |
| dpMetadata | <code>object</code> | New design pattern to store to the database. |
| callback | <code>savePatternToDBCB</code> | A callback to run. |

<a name="module_patterns..updatePatternInDB"></a>

### patterns~updatePatternInDB(id, query, callback)
Update a design pattern in the database

**Kind**: inner method of [<code>patterns</code>](#module_patterns)  

| Param | Type | Description |
| --- | --- | --- |
| id | <code>object</code> | ID of the desing pattern that will be updated. |
| query | <code>object</code> | A mongoose query to update the document in the database. |
| callback | <code>savePatternToDBCB2</code> | A callback to run. |

<a name="module_patterns..saveFile"></a>

### patterns~saveFile(id, query, callback)
Save a file to specified location. Will be overwritten if already exists.

**Kind**: inner method of [<code>patterns</code>](#module_patterns)  

| Param | Type | Description |
| --- | --- | --- |
| id | <code>object</code> | ID of the desing pattern that will be updated. |
| query | <code>object</code> | A mongoose query to update the document in the database. |
| callback | <code>savePatternToDBCB3</code> | A callback to run. |

<a name="module_patterns..exportDPMetadata"></a>

### patterns~exportDPMetadata(designPatternXmlString) ⇒ <code>object</code>
Exports metadata from a desing pattern XML string

**Kind**: inner method of [<code>patterns</code>](#module_patterns)  
**Returns**: <code>object</code> - designPattern - Design pattern object containing extracted metadata.  
**Throws**:

- <code>string</code> Invalid XML provided.


| Param | Type | Description |
| --- | --- | --- |
| designPatternXmlString | <code>string</code> | ID of the desing pattern that will be updated. |

<a name="module_patterns..savePatternToDBCB"></a>

### patterns~savePatternToDBCB : <code>function</code>
**Kind**: inner typedef of [<code>patterns</code>](#module_patterns)  

| Param | Type | Description |
| --- | --- | --- |
| err | <code>object</code> \| <code>null</code> | Custom object with `code` and `message` properties. If there is no error value is set to null. |
| pattern | <code>object</code> | The document inserted to the database. |

<a name="module_patterns..savePatternToDBCB"></a>

### patterns~savePatternToDBCB : <code>function</code>
**Kind**: inner typedef of [<code>patterns</code>](#module_patterns)  

| Param | Type | Description |
| --- | --- | --- |
| err | <code>object</code> \| <code>null</code> | Custom object with `code` and `message` properties. If there is no error value is set to null. |
| pattern | <code>object</code> | The document inserted to the database. |

<a name="module_patterns..savePatternToDBCB2"></a>

### patterns~savePatternToDBCB2 : <code>function</code>
**Kind**: inner typedef of [<code>patterns</code>](#module_patterns)  

| Param | Type | Description |
| --- | --- | --- |
| err | <code>object</code> \| <code>null</code> | Custom object with `code` and `message` properties. If there is no error value is set to null. |
| pattern | <code>object</code> | Updated document form the database. |

<a name="module_patterns..savePatternToDBCB3"></a>

### patterns~savePatternToDBCB3 : <code>function</code>
**Kind**: inner typedef of [<code>patterns</code>](#module_patterns)  

| Param | Type | Description |
| --- | --- | --- |
| err | <code>object</code> \| <code>null</code> | Custom object with `code` and `message` properties. If there is no error value is set to null. |

