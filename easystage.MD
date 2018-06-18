## Constants

<dl>
<dt><a href="#fs">fs</a></dt>
<dd></dd>
</dl>

## Typedefs

<dl>
<dt><a href="#createEtlScriptCB">createEtlScriptCB</a> : <code>function</code></dt>
<dd></dd>
<dt><a href="#extractGlobalConstansCB">extractGlobalConstansCB</a> : <code>function</code></dt>
<dd></dd>
<dt><a href="#extractLocalConstansCB">extractLocalConstansCB</a> : <code>function</code></dt>
<dd></dd>
<dt><a href="#extractChildNodesCB">extractChildNodesCB</a> : <code>function</code></dt>
<dd></dd>
</dl>

<a name="fs"></a>

## fs
**Kind**: global constant  
**Author**: Patrik SagatCreated at     : 2018-05-24 16:04:17 Last modified  : 2018-05-24 16:07:28  
<a name="createEtlScriptCB"></a>

## createEtlScriptCB : <code>function</code>
**Kind**: global typedef  

| Param | Type | Description |
| --- | --- | --- |
| err | <code>object</code> \| <code>null</code> | Custom object with `code` and `message` properties. If there is no error value is set to null. |

<a name="extractGlobalConstansCB"></a>

## extractGlobalConstansCB : <code>function</code>
**Kind**: global typedef  

| Param | Type | Description |
| --- | --- | --- |
| err | <code>object</code> \| <code>null</code> | Custom object with `code` and `message` properties. If there is no error value is set to null. |
| globalConstantsFilePath | <code>string</code> | Path to the XML file that contains extracted global constants. |

<a name="extractLocalConstansCB"></a>

## extractLocalConstansCB : <code>function</code>
**Kind**: global typedef  

| Param | Type | Description |
| --- | --- | --- |
| err | <code>object</code> \| <code>null</code> | Custom object with `code` and `message` properties. If there is no error value is set to null. |
| localConstantsFilePath | <code>string</code> | Path to the XML file that contains extracted local constants. |

<a name="extractChildNodesCB"></a>

## extractChildNodesCB : <code>function</code>
**Kind**: global typedef  

| Param | Type | Description |
| --- | --- | --- |
| err | <code>object</code> \| <code>null</code> | Custom object with `code` and `message` properties. If there is no error value is set to null. |
| extractedChildNodesFilePath | <code>string</code> | Path to the XML file that contains extracted XML child nodes. |

