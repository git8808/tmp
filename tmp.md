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
**Apiexample**: <code>curl</code> Example usage:
**Apisuccessexample**: Success-Response:
**Apisuccessexample**: Success-ResponseDownload:
**Apiparam**: (Query string) {String} [action] Used to download a desing pattern as XML file:
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
**Apiexample**: <code>curl</code> Example usage:
**Apisuccessexample**: Success-Response:
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
