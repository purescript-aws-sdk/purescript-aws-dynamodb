## Module AWS.DynamoDB.Types

#### `options`

``` purescript
options :: Options
```

#### `AttributeAction`

``` purescript
newtype AttributeAction
  = AttributeAction String
```

<p>The type of action for an item update operation. Only use the add action for numbers or sets; the specified value is added to the existing value. If a set of values is specified, the values are added to the existing set. Adds the specified attribute. If the attribute exists, it is replaced by the new value. If no value is specified, this removes the attribute and its value. If a set of values is specified, then the values in the specified set are removed from the old set.</p>

##### Instances
``` purescript
Newtype AttributeAction _
Generic AttributeAction _
Show AttributeAction
Decode AttributeAction
Encode AttributeAction
```

#### `AttributeMap`

``` purescript
newtype AttributeMap
  = AttributeMap (StrMap AttributeValue)
```

##### Instances
``` purescript
Newtype AttributeMap _
Generic AttributeMap _
Show AttributeMap
Decode AttributeMap
Encode AttributeMap
```

#### `AttributeName`

``` purescript
newtype AttributeName
  = AttributeName String
```

##### Instances
``` purescript
Newtype AttributeName _
Generic AttributeName _
Show AttributeName
Decode AttributeName
Encode AttributeName
```

#### `AttributeNameList`

``` purescript
newtype AttributeNameList
  = AttributeNameList (Array AttributeName)
```

<p>List of <code>Attribute</code> names. If attribute names are not specified then all attributes will be returned. If some attributes are not found, they will not appear in the result.</p>

##### Instances
``` purescript
Newtype AttributeNameList _
Generic AttributeNameList _
Show AttributeNameList
Decode AttributeNameList
Encode AttributeNameList
```

#### `AttributeUpdates`

``` purescript
newtype AttributeUpdates
  = AttributeUpdates (StrMap AttributeValueUpdate)
```

<p>Map of attribute name to the new value and action for the update. The attribute names specify the attributes to modify, and cannot contain any primary key attributes.</p>

##### Instances
``` purescript
Newtype AttributeUpdates _
Generic AttributeUpdates _
Show AttributeUpdates
Decode AttributeUpdates
Encode AttributeUpdates
```

#### `AttributeValue`

``` purescript
newtype AttributeValue
  = AttributeValue { "S" :: NullOrUndefined (StringAttributeValue), "N" :: NullOrUndefined (NumberAttributeValue), "B" :: NullOrUndefined (BinaryAttributeValue), "SS" :: NullOrUndefined (StringSetAttributeValue), "NS" :: NullOrUndefined (NumberSetAttributeValue), "BS" :: NullOrUndefined (BinarySetAttributeValue) }
```

<p>AttributeValue can be <code>String</code>, <code>Number</code>, <code>Binary</code>, <code>StringSet</code>, <code>NumberSet</code>, <code>BinarySet</code>.</p>

##### Instances
``` purescript
Newtype AttributeValue _
Generic AttributeValue _
Show AttributeValue
Decode AttributeValue
Encode AttributeValue
```

#### `newAttributeValue`

``` purescript
newAttributeValue :: AttributeValue
```

Constructs AttributeValue from required parameters

#### `newAttributeValue'`

``` purescript
newAttributeValue' :: ({ "S" :: NullOrUndefined (StringAttributeValue), "N" :: NullOrUndefined (NumberAttributeValue), "B" :: NullOrUndefined (BinaryAttributeValue), "SS" :: NullOrUndefined (StringSetAttributeValue), "NS" :: NullOrUndefined (NumberSetAttributeValue), "BS" :: NullOrUndefined (BinarySetAttributeValue) } -> { "S" :: NullOrUndefined (StringAttributeValue), "N" :: NullOrUndefined (NumberAttributeValue), "B" :: NullOrUndefined (BinaryAttributeValue), "SS" :: NullOrUndefined (StringSetAttributeValue), "NS" :: NullOrUndefined (NumberSetAttributeValue), "BS" :: NullOrUndefined (BinarySetAttributeValue) }) -> AttributeValue
```

Constructs AttributeValue's fields from required parameters

#### `AttributeValueList`

``` purescript
newtype AttributeValueList
  = AttributeValueList (Array AttributeValue)
```

<p>A list of attribute values to be used with a comparison operator for a scan or query operation. For comparisons that require more than one value, such as a <code>BETWEEN</code> comparison, the AttributeValueList contains two attribute values and the comparison operator.</p>

##### Instances
``` purescript
Newtype AttributeValueList _
Generic AttributeValueList _
Show AttributeValueList
Decode AttributeValueList
Encode AttributeValueList
```

#### `AttributeValueUpdate`

``` purescript
newtype AttributeValueUpdate
  = AttributeValueUpdate { "Value" :: NullOrUndefined (AttributeValue), "Action" :: NullOrUndefined (AttributeAction) }
```

<p>Specifies the attribute to update and how to perform the update. Possible values: <code>PUT</code> (default), <code>ADD</code> or <code>DELETE</code>.</p>

##### Instances
``` purescript
Newtype AttributeValueUpdate _
Generic AttributeValueUpdate _
Show AttributeValueUpdate
Decode AttributeValueUpdate
Encode AttributeValueUpdate
```

#### `newAttributeValueUpdate`

``` purescript
newAttributeValueUpdate :: AttributeValueUpdate
```

Constructs AttributeValueUpdate from required parameters

#### `newAttributeValueUpdate'`

``` purescript
newAttributeValueUpdate' :: ({ "Value" :: NullOrUndefined (AttributeValue), "Action" :: NullOrUndefined (AttributeAction) } -> { "Value" :: NullOrUndefined (AttributeValue), "Action" :: NullOrUndefined (AttributeAction) }) -> AttributeValueUpdate
```

Constructs AttributeValueUpdate's fields from required parameters

#### `BatchGetItemInput`

``` purescript
newtype BatchGetItemInput
  = BatchGetItemInput { "RequestItems" :: BatchGetRequestMap }
```

##### Instances
``` purescript
Newtype BatchGetItemInput _
Generic BatchGetItemInput _
Show BatchGetItemInput
Decode BatchGetItemInput
Encode BatchGetItemInput
```

#### `newBatchGetItemInput`

``` purescript
newBatchGetItemInput :: BatchGetRequestMap -> BatchGetItemInput
```

Constructs BatchGetItemInput from required parameters

#### `newBatchGetItemInput'`

``` purescript
newBatchGetItemInput' :: BatchGetRequestMap -> ({ "RequestItems" :: BatchGetRequestMap } -> { "RequestItems" :: BatchGetRequestMap }) -> BatchGetItemInput
```

Constructs BatchGetItemInput's fields from required parameters

#### `BatchGetItemOutput`

``` purescript
newtype BatchGetItemOutput
  = BatchGetItemOutput { "Responses" :: NullOrUndefined (BatchGetResponseMap), "UnprocessedKeys" :: NullOrUndefined (BatchGetRequestMap) }
```

##### Instances
``` purescript
Newtype BatchGetItemOutput _
Generic BatchGetItemOutput _
Show BatchGetItemOutput
Decode BatchGetItemOutput
Encode BatchGetItemOutput
```

#### `newBatchGetItemOutput`

``` purescript
newBatchGetItemOutput :: BatchGetItemOutput
```

Constructs BatchGetItemOutput from required parameters

#### `newBatchGetItemOutput'`

``` purescript
newBatchGetItemOutput' :: ({ "Responses" :: NullOrUndefined (BatchGetResponseMap), "UnprocessedKeys" :: NullOrUndefined (BatchGetRequestMap) } -> { "Responses" :: NullOrUndefined (BatchGetResponseMap), "UnprocessedKeys" :: NullOrUndefined (BatchGetRequestMap) }) -> BatchGetItemOutput
```

Constructs BatchGetItemOutput's fields from required parameters

#### `BatchGetRequestMap`

``` purescript
newtype BatchGetRequestMap
  = BatchGetRequestMap (StrMap KeysAndAttributes)
```

<p>A map of the table name and corresponding items to get by primary key. While requesting items, each table name can be invoked only once per operation.</p>

##### Instances
``` purescript
Newtype BatchGetRequestMap _
Generic BatchGetRequestMap _
Show BatchGetRequestMap
Decode BatchGetRequestMap
Encode BatchGetRequestMap
```

#### `BatchGetResponseMap`

``` purescript
newtype BatchGetResponseMap
  = BatchGetResponseMap (StrMap BatchResponse)
```

<p>Table names and the respective item attributes from the tables.</p>

##### Instances
``` purescript
Newtype BatchGetResponseMap _
Generic BatchGetResponseMap _
Show BatchGetResponseMap
Decode BatchGetResponseMap
Encode BatchGetResponseMap
```

#### `BatchResponse`

``` purescript
newtype BatchResponse
  = BatchResponse { "Items" :: NullOrUndefined (ItemList), "ConsumedCapacityUnits" :: NullOrUndefined (ConsumedCapacityUnits) }
```

<p>The item attributes from a response in a specific table, along with the read resources consumed on the table during the request.</p>

##### Instances
``` purescript
Newtype BatchResponse _
Generic BatchResponse _
Show BatchResponse
Decode BatchResponse
Encode BatchResponse
```

#### `newBatchResponse`

``` purescript
newBatchResponse :: BatchResponse
```

Constructs BatchResponse from required parameters

#### `newBatchResponse'`

``` purescript
newBatchResponse' :: ({ "Items" :: NullOrUndefined (ItemList), "ConsumedCapacityUnits" :: NullOrUndefined (ConsumedCapacityUnits) } -> { "Items" :: NullOrUndefined (ItemList), "ConsumedCapacityUnits" :: NullOrUndefined (ConsumedCapacityUnits) }) -> BatchResponse
```

Constructs BatchResponse's fields from required parameters

#### `BatchWriteItemInput`

``` purescript
newtype BatchWriteItemInput
  = BatchWriteItemInput { "RequestItems" :: BatchWriteItemRequestMap }
```

##### Instances
``` purescript
Newtype BatchWriteItemInput _
Generic BatchWriteItemInput _
Show BatchWriteItemInput
Decode BatchWriteItemInput
Encode BatchWriteItemInput
```

#### `newBatchWriteItemInput`

``` purescript
newBatchWriteItemInput :: BatchWriteItemRequestMap -> BatchWriteItemInput
```

Constructs BatchWriteItemInput from required parameters

#### `newBatchWriteItemInput'`

``` purescript
newBatchWriteItemInput' :: BatchWriteItemRequestMap -> ({ "RequestItems" :: BatchWriteItemRequestMap } -> { "RequestItems" :: BatchWriteItemRequestMap }) -> BatchWriteItemInput
```

Constructs BatchWriteItemInput's fields from required parameters

#### `BatchWriteItemOutput`

``` purescript
newtype BatchWriteItemOutput
  = BatchWriteItemOutput { "Responses" :: NullOrUndefined (BatchWriteResponseMap), "UnprocessedItems" :: NullOrUndefined (BatchWriteItemRequestMap) }
```

<p>A container for <code>BatchWriteItem</code> response</p>

##### Instances
``` purescript
Newtype BatchWriteItemOutput _
Generic BatchWriteItemOutput _
Show BatchWriteItemOutput
Decode BatchWriteItemOutput
Encode BatchWriteItemOutput
```

#### `newBatchWriteItemOutput`

``` purescript
newBatchWriteItemOutput :: BatchWriteItemOutput
```

Constructs BatchWriteItemOutput from required parameters

#### `newBatchWriteItemOutput'`

``` purescript
newBatchWriteItemOutput' :: ({ "Responses" :: NullOrUndefined (BatchWriteResponseMap), "UnprocessedItems" :: NullOrUndefined (BatchWriteItemRequestMap) } -> { "Responses" :: NullOrUndefined (BatchWriteResponseMap), "UnprocessedItems" :: NullOrUndefined (BatchWriteItemRequestMap) }) -> BatchWriteItemOutput
```

Constructs BatchWriteItemOutput's fields from required parameters

#### `BatchWriteItemRequestMap`

``` purescript
newtype BatchWriteItemRequestMap
  = BatchWriteItemRequestMap (StrMap WriteRequests)
```

<p>A map of table name to list-of-write-requests.</p> <p>Key: The table name corresponding to the list of requests</p> <p>Value: Essentially a list of request items. Each request item could contain either a <code>PutRequest</code> or <code>DeleteRequest</code>. Never both.</p>

##### Instances
``` purescript
Newtype BatchWriteItemRequestMap _
Generic BatchWriteItemRequestMap _
Show BatchWriteItemRequestMap
Decode BatchWriteItemRequestMap
Encode BatchWriteItemRequestMap
```

#### `BatchWriteResponse`

``` purescript
newtype BatchWriteResponse
  = BatchWriteResponse { "ConsumedCapacityUnits" :: NullOrUndefined (ConsumedCapacityUnits) }
```

##### Instances
``` purescript
Newtype BatchWriteResponse _
Generic BatchWriteResponse _
Show BatchWriteResponse
Decode BatchWriteResponse
Encode BatchWriteResponse
```

#### `newBatchWriteResponse`

``` purescript
newBatchWriteResponse :: BatchWriteResponse
```

Constructs BatchWriteResponse from required parameters

#### `newBatchWriteResponse'`

``` purescript
newBatchWriteResponse' :: ({ "ConsumedCapacityUnits" :: NullOrUndefined (ConsumedCapacityUnits) } -> { "ConsumedCapacityUnits" :: NullOrUndefined (ConsumedCapacityUnits) }) -> BatchWriteResponse
```

Constructs BatchWriteResponse's fields from required parameters

#### `BatchWriteResponseMap`

``` purescript
newtype BatchWriteResponseMap
  = BatchWriteResponseMap (StrMap BatchWriteResponse)
```

##### Instances
``` purescript
Newtype BatchWriteResponseMap _
Generic BatchWriteResponseMap _
Show BatchWriteResponseMap
Decode BatchWriteResponseMap
Encode BatchWriteResponseMap
```

#### `BinaryAttributeValue`

``` purescript
newtype BinaryAttributeValue
  = BinaryAttributeValue String
```

##### Instances
``` purescript
Newtype BinaryAttributeValue _
Generic BinaryAttributeValue _
Show BinaryAttributeValue
Decode BinaryAttributeValue
Encode BinaryAttributeValue
```

#### `BinarySetAttributeValue`

``` purescript
newtype BinarySetAttributeValue
  = BinarySetAttributeValue (Array BinaryAttributeValue)
```

##### Instances
``` purescript
Newtype BinarySetAttributeValue _
Generic BinarySetAttributeValue _
Show BinarySetAttributeValue
Decode BinarySetAttributeValue
Encode BinarySetAttributeValue
```

#### `BooleanObject`

``` purescript
newtype BooleanObject
  = BooleanObject Boolean
```

##### Instances
``` purescript
Newtype BooleanObject _
Generic BooleanObject _
Show BooleanObject
Decode BooleanObject
Encode BooleanObject
```

#### `ComparisonOperator`

``` purescript
newtype ComparisonOperator
  = ComparisonOperator String
```

<p>A comparison operator is an enumeration of several operations:</p> <ul> <li><code>EQ</code> for <em>equal</em>.</li> <li><code>NE</code> for <em>not equal</em>.</li> <li><code>IN</code> checks for exact matches.</li> <li><code>LE</code> for <em>less than or equal to</em>.</li> <li><code>LT</code> for <em>less than</em>.</li> <li><code>GE</code> for <em>greater than or equal to</em>.</li> <li><code>GT</code> for <em>greater than</em>.</li> <li><code>BETWEEN</code> for <em>between</em>.</li> <li><code>NOT_NULL</code> for <em>exists</em>.</li> <li><code>NULL</code> for <em>not exists</em>.</li> <li><code>CONTAINS</code> for substring or value in a set.</li> <li><code>NOT_CONTAINS</code> for absence of a substring or absence of a value in a set.</li> <li><code>BEGINS_WITH</code> for a substring prefix.</li> </ul> <p>Scan operations support all available comparison operators.</p> <p>Query operations support a subset of the available comparison operators: EQ, LE, LT, GE, GT, BETWEEN, and BEGINS_WITH.</p>

##### Instances
``` purescript
Newtype ComparisonOperator _
Generic ComparisonOperator _
Show ComparisonOperator
Decode ComparisonOperator
Encode ComparisonOperator
```

#### `Condition`

``` purescript
newtype Condition
  = Condition { "AttributeValueList" :: NullOrUndefined (AttributeValueList), "ComparisonOperator" :: ComparisonOperator }
```

##### Instances
``` purescript
Newtype Condition _
Generic Condition _
Show Condition
Decode Condition
Encode Condition
```

#### `newCondition`

``` purescript
newCondition :: ComparisonOperator -> Condition
```

Constructs Condition from required parameters

#### `newCondition'`

``` purescript
newCondition' :: ComparisonOperator -> ({ "AttributeValueList" :: NullOrUndefined (AttributeValueList), "ComparisonOperator" :: ComparisonOperator } -> { "AttributeValueList" :: NullOrUndefined (AttributeValueList), "ComparisonOperator" :: ComparisonOperator }) -> Condition
```

Constructs Condition's fields from required parameters

#### `ConditionalCheckFailedException`

``` purescript
newtype ConditionalCheckFailedException
  = ConditionalCheckFailedException { message :: NullOrUndefined (ErrorMessage) }
```

<p>This exception is thrown when an expected value does not match what was found in the system.</p>

##### Instances
``` purescript
Newtype ConditionalCheckFailedException _
Generic ConditionalCheckFailedException _
Show ConditionalCheckFailedException
Decode ConditionalCheckFailedException
Encode ConditionalCheckFailedException
```

#### `newConditionalCheckFailedException`

``` purescript
newConditionalCheckFailedException :: ConditionalCheckFailedException
```

Constructs ConditionalCheckFailedException from required parameters

#### `newConditionalCheckFailedException'`

``` purescript
newConditionalCheckFailedException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> ConditionalCheckFailedException
```

Constructs ConditionalCheckFailedException's fields from required parameters

#### `ConsistentRead`

``` purescript
newtype ConsistentRead
  = ConsistentRead Boolean
```

<p>If set to <code>true</code>, then a consistent read is issued. Otherwise eventually-consistent is used.</p>

##### Instances
``` purescript
Newtype ConsistentRead _
Generic ConsistentRead _
Show ConsistentRead
Decode ConsistentRead
Encode ConsistentRead
```

#### `ConsumedCapacityUnits`

``` purescript
newtype ConsumedCapacityUnits
  = ConsumedCapacityUnits Number
```

<p>The number of Capacity Units of the provisioned throughput of the table consumed during the operation. <code>GetItem</code>, <code>BatchGetItem</code>, <code>BatchWriteItem</code>, <code>Query</code>, and <code>Scan</code> operations consume <code>ReadCapacityUnits</code>, while <code>PutItem</code>, <code>UpdateItem</code>, and <code>DeleteItem</code> operations consume <code>WriteCapacityUnits</code>.</p>

##### Instances
``` purescript
Newtype ConsumedCapacityUnits _
Generic ConsumedCapacityUnits _
Show ConsumedCapacityUnits
Decode ConsumedCapacityUnits
Encode ConsumedCapacityUnits
```

#### `CreateTableInput`

``` purescript
newtype CreateTableInput
  = CreateTableInput { "TableName" :: TableName, "KeySchema" :: KeySchema, "ProvisionedThroughput" :: ProvisionedThroughput }
```

##### Instances
``` purescript
Newtype CreateTableInput _
Generic CreateTableInput _
Show CreateTableInput
Decode CreateTableInput
Encode CreateTableInput
```

#### `newCreateTableInput`

``` purescript
newCreateTableInput :: KeySchema -> ProvisionedThroughput -> TableName -> CreateTableInput
```

Constructs CreateTableInput from required parameters

#### `newCreateTableInput'`

``` purescript
newCreateTableInput' :: KeySchema -> ProvisionedThroughput -> TableName -> ({ "TableName" :: TableName, "KeySchema" :: KeySchema, "ProvisionedThroughput" :: ProvisionedThroughput } -> { "TableName" :: TableName, "KeySchema" :: KeySchema, "ProvisionedThroughput" :: ProvisionedThroughput }) -> CreateTableInput
```

Constructs CreateTableInput's fields from required parameters

#### `CreateTableOutput`

``` purescript
newtype CreateTableOutput
  = CreateTableOutput { "TableDescription" :: NullOrUndefined (TableDescription) }
```

##### Instances
``` purescript
Newtype CreateTableOutput _
Generic CreateTableOutput _
Show CreateTableOutput
Decode CreateTableOutput
Encode CreateTableOutput
```

#### `newCreateTableOutput`

``` purescript
newCreateTableOutput :: CreateTableOutput
```

Constructs CreateTableOutput from required parameters

#### `newCreateTableOutput'`

``` purescript
newCreateTableOutput' :: ({ "TableDescription" :: NullOrUndefined (TableDescription) } -> { "TableDescription" :: NullOrUndefined (TableDescription) }) -> CreateTableOutput
```

Constructs CreateTableOutput's fields from required parameters

#### `Date`

``` purescript
newtype Date
  = Date Timestamp
```

##### Instances
``` purescript
Newtype Date _
Generic Date _
Show Date
Decode Date
Encode Date
```

#### `DeleteItemInput`

``` purescript
newtype DeleteItemInput
  = DeleteItemInput { "TableName" :: TableName, "Key" :: Key, "Expected" :: NullOrUndefined (ExpectedAttributeMap), "ReturnValues" :: NullOrUndefined (ReturnValue) }
```

##### Instances
``` purescript
Newtype DeleteItemInput _
Generic DeleteItemInput _
Show DeleteItemInput
Decode DeleteItemInput
Encode DeleteItemInput
```

#### `newDeleteItemInput`

``` purescript
newDeleteItemInput :: Key -> TableName -> DeleteItemInput
```

Constructs DeleteItemInput from required parameters

#### `newDeleteItemInput'`

``` purescript
newDeleteItemInput' :: Key -> TableName -> ({ "TableName" :: TableName, "Key" :: Key, "Expected" :: NullOrUndefined (ExpectedAttributeMap), "ReturnValues" :: NullOrUndefined (ReturnValue) } -> { "TableName" :: TableName, "Key" :: Key, "Expected" :: NullOrUndefined (ExpectedAttributeMap), "ReturnValues" :: NullOrUndefined (ReturnValue) }) -> DeleteItemInput
```

Constructs DeleteItemInput's fields from required parameters

#### `DeleteItemOutput`

``` purescript
newtype DeleteItemOutput
  = DeleteItemOutput { "Attributes" :: NullOrUndefined (AttributeMap), "ConsumedCapacityUnits" :: NullOrUndefined (ConsumedCapacityUnits) }
```

##### Instances
``` purescript
Newtype DeleteItemOutput _
Generic DeleteItemOutput _
Show DeleteItemOutput
Decode DeleteItemOutput
Encode DeleteItemOutput
```

#### `newDeleteItemOutput`

``` purescript
newDeleteItemOutput :: DeleteItemOutput
```

Constructs DeleteItemOutput from required parameters

#### `newDeleteItemOutput'`

``` purescript
newDeleteItemOutput' :: ({ "Attributes" :: NullOrUndefined (AttributeMap), "ConsumedCapacityUnits" :: NullOrUndefined (ConsumedCapacityUnits) } -> { "Attributes" :: NullOrUndefined (AttributeMap), "ConsumedCapacityUnits" :: NullOrUndefined (ConsumedCapacityUnits) }) -> DeleteItemOutput
```

Constructs DeleteItemOutput's fields from required parameters

#### `DeleteRequest`

``` purescript
newtype DeleteRequest
  = DeleteRequest { "Key" :: Key }
```

<p>A container for a Delete BatchWrite request</p>

##### Instances
``` purescript
Newtype DeleteRequest _
Generic DeleteRequest _
Show DeleteRequest
Decode DeleteRequest
Encode DeleteRequest
```

#### `newDeleteRequest`

``` purescript
newDeleteRequest :: Key -> DeleteRequest
```

Constructs DeleteRequest from required parameters

#### `newDeleteRequest'`

``` purescript
newDeleteRequest' :: Key -> ({ "Key" :: Key } -> { "Key" :: Key }) -> DeleteRequest
```

Constructs DeleteRequest's fields from required parameters

#### `DeleteTableInput`

``` purescript
newtype DeleteTableInput
  = DeleteTableInput { "TableName" :: TableName }
```

##### Instances
``` purescript
Newtype DeleteTableInput _
Generic DeleteTableInput _
Show DeleteTableInput
Decode DeleteTableInput
Encode DeleteTableInput
```

#### `newDeleteTableInput`

``` purescript
newDeleteTableInput :: TableName -> DeleteTableInput
```

Constructs DeleteTableInput from required parameters

#### `newDeleteTableInput'`

``` purescript
newDeleteTableInput' :: TableName -> ({ "TableName" :: TableName } -> { "TableName" :: TableName }) -> DeleteTableInput
```

Constructs DeleteTableInput's fields from required parameters

#### `DeleteTableOutput`

``` purescript
newtype DeleteTableOutput
  = DeleteTableOutput { "TableDescription" :: NullOrUndefined (TableDescription) }
```

##### Instances
``` purescript
Newtype DeleteTableOutput _
Generic DeleteTableOutput _
Show DeleteTableOutput
Decode DeleteTableOutput
Encode DeleteTableOutput
```

#### `newDeleteTableOutput`

``` purescript
newDeleteTableOutput :: DeleteTableOutput
```

Constructs DeleteTableOutput from required parameters

#### `newDeleteTableOutput'`

``` purescript
newDeleteTableOutput' :: ({ "TableDescription" :: NullOrUndefined (TableDescription) } -> { "TableDescription" :: NullOrUndefined (TableDescription) }) -> DeleteTableOutput
```

Constructs DeleteTableOutput's fields from required parameters

#### `DescribeTableInput`

``` purescript
newtype DescribeTableInput
  = DescribeTableInput { "TableName" :: TableName }
```

##### Instances
``` purescript
Newtype DescribeTableInput _
Generic DescribeTableInput _
Show DescribeTableInput
Decode DescribeTableInput
Encode DescribeTableInput
```

#### `newDescribeTableInput`

``` purescript
newDescribeTableInput :: TableName -> DescribeTableInput
```

Constructs DescribeTableInput from required parameters

#### `newDescribeTableInput'`

``` purescript
newDescribeTableInput' :: TableName -> ({ "TableName" :: TableName } -> { "TableName" :: TableName }) -> DescribeTableInput
```

Constructs DescribeTableInput's fields from required parameters

#### `DescribeTableOutput`

``` purescript
newtype DescribeTableOutput
  = DescribeTableOutput { "Table" :: NullOrUndefined (TableDescription) }
```

##### Instances
``` purescript
Newtype DescribeTableOutput _
Generic DescribeTableOutput _
Show DescribeTableOutput
Decode DescribeTableOutput
Encode DescribeTableOutput
```

#### `newDescribeTableOutput`

``` purescript
newDescribeTableOutput :: DescribeTableOutput
```

Constructs DescribeTableOutput from required parameters

#### `newDescribeTableOutput'`

``` purescript
newDescribeTableOutput' :: ({ "Table" :: NullOrUndefined (TableDescription) } -> { "Table" :: NullOrUndefined (TableDescription) }) -> DescribeTableOutput
```

Constructs DescribeTableOutput's fields from required parameters

#### `ErrorMessage`

``` purescript
newtype ErrorMessage
  = ErrorMessage String
```

##### Instances
``` purescript
Newtype ErrorMessage _
Generic ErrorMessage _
Show ErrorMessage
Decode ErrorMessage
Encode ErrorMessage
```

#### `ExpectedAttributeMap`

``` purescript
newtype ExpectedAttributeMap
  = ExpectedAttributeMap (StrMap ExpectedAttributeValue)
```

<p>Designates an attribute for a conditional modification. The <code>Expected</code> parameter allows you to provide an attribute name, and whether or not Amazon DynamoDB should check to see if the attribute has a particular value before modifying it.</p>

##### Instances
``` purescript
Newtype ExpectedAttributeMap _
Generic ExpectedAttributeMap _
Show ExpectedAttributeMap
Decode ExpectedAttributeMap
Encode ExpectedAttributeMap
```

#### `ExpectedAttributeValue`

``` purescript
newtype ExpectedAttributeValue
  = ExpectedAttributeValue { "Value" :: NullOrUndefined (AttributeValue), "Exists" :: NullOrUndefined (BooleanObject) }
```

<p>Allows you to provide an attribute name, and whether or not Amazon DynamoDB should check to see if the attribute value already exists; or if the attribute value exists and has a particular value before changing it.</p>

##### Instances
``` purescript
Newtype ExpectedAttributeValue _
Generic ExpectedAttributeValue _
Show ExpectedAttributeValue
Decode ExpectedAttributeValue
Encode ExpectedAttributeValue
```

#### `newExpectedAttributeValue`

``` purescript
newExpectedAttributeValue :: ExpectedAttributeValue
```

Constructs ExpectedAttributeValue from required parameters

#### `newExpectedAttributeValue'`

``` purescript
newExpectedAttributeValue' :: ({ "Value" :: NullOrUndefined (AttributeValue), "Exists" :: NullOrUndefined (BooleanObject) } -> { "Value" :: NullOrUndefined (AttributeValue), "Exists" :: NullOrUndefined (BooleanObject) }) -> ExpectedAttributeValue
```

Constructs ExpectedAttributeValue's fields from required parameters

#### `FilterConditionMap`

``` purescript
newtype FilterConditionMap
  = FilterConditionMap (StrMap Condition)
```

##### Instances
``` purescript
Newtype FilterConditionMap _
Generic FilterConditionMap _
Show FilterConditionMap
Decode FilterConditionMap
Encode FilterConditionMap
```

#### `GetItemInput`

``` purescript
newtype GetItemInput
  = GetItemInput { "TableName" :: TableName, "Key" :: Key, "AttributesToGet" :: NullOrUndefined (AttributeNameList), "ConsistentRead" :: NullOrUndefined (ConsistentRead) }
```

##### Instances
``` purescript
Newtype GetItemInput _
Generic GetItemInput _
Show GetItemInput
Decode GetItemInput
Encode GetItemInput
```

#### `newGetItemInput`

``` purescript
newGetItemInput :: Key -> TableName -> GetItemInput
```

Constructs GetItemInput from required parameters

#### `newGetItemInput'`

``` purescript
newGetItemInput' :: Key -> TableName -> ({ "TableName" :: TableName, "Key" :: Key, "AttributesToGet" :: NullOrUndefined (AttributeNameList), "ConsistentRead" :: NullOrUndefined (ConsistentRead) } -> { "TableName" :: TableName, "Key" :: Key, "AttributesToGet" :: NullOrUndefined (AttributeNameList), "ConsistentRead" :: NullOrUndefined (ConsistentRead) }) -> GetItemInput
```

Constructs GetItemInput's fields from required parameters

#### `GetItemOutput`

``` purescript
newtype GetItemOutput
  = GetItemOutput { "Item" :: NullOrUndefined (AttributeMap), "ConsumedCapacityUnits" :: NullOrUndefined (ConsumedCapacityUnits) }
```

##### Instances
``` purescript
Newtype GetItemOutput _
Generic GetItemOutput _
Show GetItemOutput
Decode GetItemOutput
Encode GetItemOutput
```

#### `newGetItemOutput`

``` purescript
newGetItemOutput :: GetItemOutput
```

Constructs GetItemOutput from required parameters

#### `newGetItemOutput'`

``` purescript
newGetItemOutput' :: ({ "Item" :: NullOrUndefined (AttributeMap), "ConsumedCapacityUnits" :: NullOrUndefined (ConsumedCapacityUnits) } -> { "Item" :: NullOrUndefined (AttributeMap), "ConsumedCapacityUnits" :: NullOrUndefined (ConsumedCapacityUnits) }) -> GetItemOutput
```

Constructs GetItemOutput's fields from required parameters

#### `InternalServerError`

``` purescript
newtype InternalServerError
  = InternalServerError { message :: NullOrUndefined (ErrorMessage) }
```

<p>This exception is thrown when the service has a problem when trying to process the request.</p>

##### Instances
``` purescript
Newtype InternalServerError _
Generic InternalServerError _
Show InternalServerError
Decode InternalServerError
Encode InternalServerError
```

#### `newInternalServerError`

``` purescript
newInternalServerError :: InternalServerError
```

Constructs InternalServerError from required parameters

#### `newInternalServerError'`

``` purescript
newInternalServerError' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> InternalServerError
```

Constructs InternalServerError's fields from required parameters

#### `ItemList`

``` purescript
newtype ItemList
  = ItemList (Array AttributeMap)
```

##### Instances
``` purescript
Newtype ItemList _
Generic ItemList _
Show ItemList
Decode ItemList
Encode ItemList
```

#### `Key`

``` purescript
newtype Key
  = Key { "HashKeyElement" :: AttributeValue, "RangeKeyElement" :: NullOrUndefined (AttributeValue) }
```

<p>The primary key that uniquely identifies each item in a table. A primary key can be a one attribute (hash) primary key or a two attribute (hash-and-range) primary key.</p>

##### Instances
``` purescript
Newtype Key _
Generic Key _
Show Key
Decode Key
Encode Key
```

#### `newKey`

``` purescript
newKey :: AttributeValue -> Key
```

Constructs Key from required parameters

#### `newKey'`

``` purescript
newKey' :: AttributeValue -> ({ "HashKeyElement" :: AttributeValue, "RangeKeyElement" :: NullOrUndefined (AttributeValue) } -> { "HashKeyElement" :: AttributeValue, "RangeKeyElement" :: NullOrUndefined (AttributeValue) }) -> Key
```

Constructs Key's fields from required parameters

#### `KeyList`

``` purescript
newtype KeyList
  = KeyList (Array Key)
```

##### Instances
``` purescript
Newtype KeyList _
Generic KeyList _
Show KeyList
Decode KeyList
Encode KeyList
```

#### `KeySchema`

``` purescript
newtype KeySchema
  = KeySchema { "HashKeyElement" :: KeySchemaElement, "RangeKeyElement" :: NullOrUndefined (KeySchemaElement) }
```

<p>The KeySchema identifies the primary key as a one attribute primary key (hash) or a composite two attribute (hash-and-range) primary key. Single attribute primary keys have one index value: a <code>HashKeyElement</code>. A composite hash-and-range primary key contains two attribute values: a <code>HashKeyElement</code> and a <code>RangeKeyElement</code>.</p>

##### Instances
``` purescript
Newtype KeySchema _
Generic KeySchema _
Show KeySchema
Decode KeySchema
Encode KeySchema
```

#### `newKeySchema`

``` purescript
newKeySchema :: KeySchemaElement -> KeySchema
```

Constructs KeySchema from required parameters

#### `newKeySchema'`

``` purescript
newKeySchema' :: KeySchemaElement -> ({ "HashKeyElement" :: KeySchemaElement, "RangeKeyElement" :: NullOrUndefined (KeySchemaElement) } -> { "HashKeyElement" :: KeySchemaElement, "RangeKeyElement" :: NullOrUndefined (KeySchemaElement) }) -> KeySchema
```

Constructs KeySchema's fields from required parameters

#### `KeySchemaAttributeName`

``` purescript
newtype KeySchemaAttributeName
  = KeySchemaAttributeName String
```

##### Instances
``` purescript
Newtype KeySchemaAttributeName _
Generic KeySchemaAttributeName _
Show KeySchemaAttributeName
Decode KeySchemaAttributeName
Encode KeySchemaAttributeName
```

#### `KeySchemaElement`

``` purescript
newtype KeySchemaElement
  = KeySchemaElement { "AttributeName" :: KeySchemaAttributeName, "AttributeType" :: ScalarAttributeType }
```

<p><code>KeySchemaElement</code> is the primary key (hash or hash-and-range) structure for the table.</p>

##### Instances
``` purescript
Newtype KeySchemaElement _
Generic KeySchemaElement _
Show KeySchemaElement
Decode KeySchemaElement
Encode KeySchemaElement
```

#### `newKeySchemaElement`

``` purescript
newKeySchemaElement :: KeySchemaAttributeName -> ScalarAttributeType -> KeySchemaElement
```

Constructs KeySchemaElement from required parameters

#### `newKeySchemaElement'`

``` purescript
newKeySchemaElement' :: KeySchemaAttributeName -> ScalarAttributeType -> ({ "AttributeName" :: KeySchemaAttributeName, "AttributeType" :: ScalarAttributeType } -> { "AttributeName" :: KeySchemaAttributeName, "AttributeType" :: ScalarAttributeType }) -> KeySchemaElement
```

Constructs KeySchemaElement's fields from required parameters

#### `KeysAndAttributes`

``` purescript
newtype KeysAndAttributes
  = KeysAndAttributes { "Keys" :: KeyList, "AttributesToGet" :: NullOrUndefined (AttributeNameList), "ConsistentRead" :: NullOrUndefined (ConsistentRead) }
```

##### Instances
``` purescript
Newtype KeysAndAttributes _
Generic KeysAndAttributes _
Show KeysAndAttributes
Decode KeysAndAttributes
Encode KeysAndAttributes
```

#### `newKeysAndAttributes`

``` purescript
newKeysAndAttributes :: KeyList -> KeysAndAttributes
```

Constructs KeysAndAttributes from required parameters

#### `newKeysAndAttributes'`

``` purescript
newKeysAndAttributes' :: KeyList -> ({ "Keys" :: KeyList, "AttributesToGet" :: NullOrUndefined (AttributeNameList), "ConsistentRead" :: NullOrUndefined (ConsistentRead) } -> { "Keys" :: KeyList, "AttributesToGet" :: NullOrUndefined (AttributeNameList), "ConsistentRead" :: NullOrUndefined (ConsistentRead) }) -> KeysAndAttributes
```

Constructs KeysAndAttributes's fields from required parameters

#### `LimitExceededException`

``` purescript
newtype LimitExceededException
  = LimitExceededException { message :: NullOrUndefined (ErrorMessage) }
```

<p>This exception is thrown when the subscriber exceeded the limits on the number of objects or operations.</p>

##### Instances
``` purescript
Newtype LimitExceededException _
Generic LimitExceededException _
Show LimitExceededException
Decode LimitExceededException
Encode LimitExceededException
```

#### `newLimitExceededException`

``` purescript
newLimitExceededException :: LimitExceededException
```

Constructs LimitExceededException from required parameters

#### `newLimitExceededException'`

``` purescript
newLimitExceededException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> LimitExceededException
```

Constructs LimitExceededException's fields from required parameters

#### `ListTablesInput`

``` purescript
newtype ListTablesInput
  = ListTablesInput { "ExclusiveStartTableName" :: NullOrUndefined (TableName), "Limit" :: NullOrUndefined (ListTablesInputLimit) }
```

##### Instances
``` purescript
Newtype ListTablesInput _
Generic ListTablesInput _
Show ListTablesInput
Decode ListTablesInput
Encode ListTablesInput
```

#### `newListTablesInput`

``` purescript
newListTablesInput :: ListTablesInput
```

Constructs ListTablesInput from required parameters

#### `newListTablesInput'`

``` purescript
newListTablesInput' :: ({ "ExclusiveStartTableName" :: NullOrUndefined (TableName), "Limit" :: NullOrUndefined (ListTablesInputLimit) } -> { "ExclusiveStartTableName" :: NullOrUndefined (TableName), "Limit" :: NullOrUndefined (ListTablesInputLimit) }) -> ListTablesInput
```

Constructs ListTablesInput's fields from required parameters

#### `ListTablesInputLimit`

``` purescript
newtype ListTablesInputLimit
  = ListTablesInputLimit Int
```

<p>A number of maximum table names to return.</p>

##### Instances
``` purescript
Newtype ListTablesInputLimit _
Generic ListTablesInputLimit _
Show ListTablesInputLimit
Decode ListTablesInputLimit
Encode ListTablesInputLimit
```

#### `ListTablesOutput`

``` purescript
newtype ListTablesOutput
  = ListTablesOutput { "TableNames" :: NullOrUndefined (TableNameList), "LastEvaluatedTableName" :: NullOrUndefined (TableName) }
```

##### Instances
``` purescript
Newtype ListTablesOutput _
Generic ListTablesOutput _
Show ListTablesOutput
Decode ListTablesOutput
Encode ListTablesOutput
```

#### `newListTablesOutput`

``` purescript
newListTablesOutput :: ListTablesOutput
```

Constructs ListTablesOutput from required parameters

#### `newListTablesOutput'`

``` purescript
newListTablesOutput' :: ({ "TableNames" :: NullOrUndefined (TableNameList), "LastEvaluatedTableName" :: NullOrUndefined (TableName) } -> { "TableNames" :: NullOrUndefined (TableNameList), "LastEvaluatedTableName" :: NullOrUndefined (TableName) }) -> ListTablesOutput
```

Constructs ListTablesOutput's fields from required parameters

#### `NumberAttributeValue`

``` purescript
newtype NumberAttributeValue
  = NumberAttributeValue String
```

##### Instances
``` purescript
Newtype NumberAttributeValue _
Generic NumberAttributeValue _
Show NumberAttributeValue
Decode NumberAttributeValue
Encode NumberAttributeValue
```

#### `NumberSetAttributeValue`

``` purescript
newtype NumberSetAttributeValue
  = NumberSetAttributeValue (Array NumberAttributeValue)
```

##### Instances
``` purescript
Newtype NumberSetAttributeValue _
Generic NumberSetAttributeValue _
Show NumberSetAttributeValue
Decode NumberSetAttributeValue
Encode NumberSetAttributeValue
```

#### `PositiveIntegerObject`

``` purescript
newtype PositiveIntegerObject
  = PositiveIntegerObject Int
```

##### Instances
``` purescript
Newtype PositiveIntegerObject _
Generic PositiveIntegerObject _
Show PositiveIntegerObject
Decode PositiveIntegerObject
Encode PositiveIntegerObject
```

#### `PositiveLongObject`

``` purescript
newtype PositiveLongObject
  = PositiveLongObject Number
```

##### Instances
``` purescript
Newtype PositiveLongObject _
Generic PositiveLongObject _
Show PositiveLongObject
Decode PositiveLongObject
Encode PositiveLongObject
```

#### `ProvisionedThroughput`

``` purescript
newtype ProvisionedThroughput
  = ProvisionedThroughput { "ReadCapacityUnits" :: PositiveLongObject, "WriteCapacityUnits" :: PositiveLongObject }
```

<p>Provisioned throughput reserves the required read and write resources for your table in terms of <code>ReadCapacityUnits</code> and <code>WriteCapacityUnits</code>. Values for provisioned throughput depend upon your expected read/write rates, item size, and consistency. Provide the expected number of read and write operations, assuming an item size of 1k and strictly consistent reads. For 2k item size, double the value. For 3k, triple the value, etc. Eventually-consistent reads consume half the resources of strictly consistent reads.</p>

##### Instances
``` purescript
Newtype ProvisionedThroughput _
Generic ProvisionedThroughput _
Show ProvisionedThroughput
Decode ProvisionedThroughput
Encode ProvisionedThroughput
```

#### `newProvisionedThroughput`

``` purescript
newProvisionedThroughput :: PositiveLongObject -> PositiveLongObject -> ProvisionedThroughput
```

Constructs ProvisionedThroughput from required parameters

#### `newProvisionedThroughput'`

``` purescript
newProvisionedThroughput' :: PositiveLongObject -> PositiveLongObject -> ({ "ReadCapacityUnits" :: PositiveLongObject, "WriteCapacityUnits" :: PositiveLongObject } -> { "ReadCapacityUnits" :: PositiveLongObject, "WriteCapacityUnits" :: PositiveLongObject }) -> ProvisionedThroughput
```

Constructs ProvisionedThroughput's fields from required parameters

#### `ProvisionedThroughputDescription`

``` purescript
newtype ProvisionedThroughputDescription
  = ProvisionedThroughputDescription { "LastIncreaseDateTime" :: NullOrUndefined (Date), "LastDecreaseDateTime" :: NullOrUndefined (Date), "NumberOfDecreasesToday" :: NullOrUndefined (PositiveLongObject), "ReadCapacityUnits" :: NullOrUndefined (PositiveLongObject), "WriteCapacityUnits" :: NullOrUndefined (PositiveLongObject) }
```

##### Instances
``` purescript
Newtype ProvisionedThroughputDescription _
Generic ProvisionedThroughputDescription _
Show ProvisionedThroughputDescription
Decode ProvisionedThroughputDescription
Encode ProvisionedThroughputDescription
```

#### `newProvisionedThroughputDescription`

``` purescript
newProvisionedThroughputDescription :: ProvisionedThroughputDescription
```

Constructs ProvisionedThroughputDescription from required parameters

#### `newProvisionedThroughputDescription'`

``` purescript
newProvisionedThroughputDescription' :: ({ "LastIncreaseDateTime" :: NullOrUndefined (Date), "LastDecreaseDateTime" :: NullOrUndefined (Date), "NumberOfDecreasesToday" :: NullOrUndefined (PositiveLongObject), "ReadCapacityUnits" :: NullOrUndefined (PositiveLongObject), "WriteCapacityUnits" :: NullOrUndefined (PositiveLongObject) } -> { "LastIncreaseDateTime" :: NullOrUndefined (Date), "LastDecreaseDateTime" :: NullOrUndefined (Date), "NumberOfDecreasesToday" :: NullOrUndefined (PositiveLongObject), "ReadCapacityUnits" :: NullOrUndefined (PositiveLongObject), "WriteCapacityUnits" :: NullOrUndefined (PositiveLongObject) }) -> ProvisionedThroughputDescription
```

Constructs ProvisionedThroughputDescription's fields from required parameters

#### `ProvisionedThroughputExceededException`

``` purescript
newtype ProvisionedThroughputExceededException
  = ProvisionedThroughputExceededException { message :: NullOrUndefined (ErrorMessage) }
```

<p>This exception is thrown when the level of provisioned throughput defined for the table is exceeded.</p>

##### Instances
``` purescript
Newtype ProvisionedThroughputExceededException _
Generic ProvisionedThroughputExceededException _
Show ProvisionedThroughputExceededException
Decode ProvisionedThroughputExceededException
Encode ProvisionedThroughputExceededException
```

#### `newProvisionedThroughputExceededException`

``` purescript
newProvisionedThroughputExceededException :: ProvisionedThroughputExceededException
```

Constructs ProvisionedThroughputExceededException from required parameters

#### `newProvisionedThroughputExceededException'`

``` purescript
newProvisionedThroughputExceededException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> ProvisionedThroughputExceededException
```

Constructs ProvisionedThroughputExceededException's fields from required parameters

#### `PutItemInput`

``` purescript
newtype PutItemInput
  = PutItemInput { "TableName" :: TableName, "Item" :: PutItemInputAttributeMap, "Expected" :: NullOrUndefined (ExpectedAttributeMap), "ReturnValues" :: NullOrUndefined (ReturnValue) }
```

##### Instances
``` purescript
Newtype PutItemInput _
Generic PutItemInput _
Show PutItemInput
Decode PutItemInput
Encode PutItemInput
```

#### `newPutItemInput`

``` purescript
newPutItemInput :: PutItemInputAttributeMap -> TableName -> PutItemInput
```

Constructs PutItemInput from required parameters

#### `newPutItemInput'`

``` purescript
newPutItemInput' :: PutItemInputAttributeMap -> TableName -> ({ "TableName" :: TableName, "Item" :: PutItemInputAttributeMap, "Expected" :: NullOrUndefined (ExpectedAttributeMap), "ReturnValues" :: NullOrUndefined (ReturnValue) } -> { "TableName" :: TableName, "Item" :: PutItemInputAttributeMap, "Expected" :: NullOrUndefined (ExpectedAttributeMap), "ReturnValues" :: NullOrUndefined (ReturnValue) }) -> PutItemInput
```

Constructs PutItemInput's fields from required parameters

#### `PutItemInputAttributeMap`

``` purescript
newtype PutItemInputAttributeMap
  = PutItemInputAttributeMap (StrMap AttributeValue)
```

<p>A map of the attributes for the item, and must include the primary key values that define the item. Other attribute name-value pairs can be provided for the item.</p>

##### Instances
``` purescript
Newtype PutItemInputAttributeMap _
Generic PutItemInputAttributeMap _
Show PutItemInputAttributeMap
Decode PutItemInputAttributeMap
Encode PutItemInputAttributeMap
```

#### `PutItemOutput`

``` purescript
newtype PutItemOutput
  = PutItemOutput { "Attributes" :: NullOrUndefined (AttributeMap), "ConsumedCapacityUnits" :: NullOrUndefined (ConsumedCapacityUnits) }
```

##### Instances
``` purescript
Newtype PutItemOutput _
Generic PutItemOutput _
Show PutItemOutput
Decode PutItemOutput
Encode PutItemOutput
```

#### `newPutItemOutput`

``` purescript
newPutItemOutput :: PutItemOutput
```

Constructs PutItemOutput from required parameters

#### `newPutItemOutput'`

``` purescript
newPutItemOutput' :: ({ "Attributes" :: NullOrUndefined (AttributeMap), "ConsumedCapacityUnits" :: NullOrUndefined (ConsumedCapacityUnits) } -> { "Attributes" :: NullOrUndefined (AttributeMap), "ConsumedCapacityUnits" :: NullOrUndefined (ConsumedCapacityUnits) }) -> PutItemOutput
```

Constructs PutItemOutput's fields from required parameters

#### `PutRequest`

``` purescript
newtype PutRequest
  = PutRequest { "Item" :: PutItemInputAttributeMap }
```

<p>A container for a Put BatchWrite request</p>

##### Instances
``` purescript
Newtype PutRequest _
Generic PutRequest _
Show PutRequest
Decode PutRequest
Encode PutRequest
```

#### `newPutRequest`

``` purescript
newPutRequest :: PutItemInputAttributeMap -> PutRequest
```

Constructs PutRequest from required parameters

#### `newPutRequest'`

``` purescript
newPutRequest' :: PutItemInputAttributeMap -> ({ "Item" :: PutItemInputAttributeMap } -> { "Item" :: PutItemInputAttributeMap }) -> PutRequest
```

Constructs PutRequest's fields from required parameters

#### `QueryInput`

``` purescript
newtype QueryInput
  = QueryInput { "TableName" :: TableName, "AttributesToGet" :: NullOrUndefined (AttributeNameList), "Limit" :: NullOrUndefined (PositiveIntegerObject), "ConsistentRead" :: NullOrUndefined (ConsistentRead), "Count" :: NullOrUndefined (BooleanObject), "HashKeyValue" :: AttributeValue, "RangeKeyCondition" :: NullOrUndefined (Condition), "ScanIndexForward" :: NullOrUndefined (BooleanObject), "ExclusiveStartKey" :: NullOrUndefined (Key) }
```

##### Instances
``` purescript
Newtype QueryInput _
Generic QueryInput _
Show QueryInput
Decode QueryInput
Encode QueryInput
```

#### `newQueryInput`

``` purescript
newQueryInput :: AttributeValue -> TableName -> QueryInput
```

Constructs QueryInput from required parameters

#### `newQueryInput'`

``` purescript
newQueryInput' :: AttributeValue -> TableName -> ({ "TableName" :: TableName, "AttributesToGet" :: NullOrUndefined (AttributeNameList), "Limit" :: NullOrUndefined (PositiveIntegerObject), "ConsistentRead" :: NullOrUndefined (ConsistentRead), "Count" :: NullOrUndefined (BooleanObject), "HashKeyValue" :: AttributeValue, "RangeKeyCondition" :: NullOrUndefined (Condition), "ScanIndexForward" :: NullOrUndefined (BooleanObject), "ExclusiveStartKey" :: NullOrUndefined (Key) } -> { "TableName" :: TableName, "AttributesToGet" :: NullOrUndefined (AttributeNameList), "Limit" :: NullOrUndefined (PositiveIntegerObject), "ConsistentRead" :: NullOrUndefined (ConsistentRead), "Count" :: NullOrUndefined (BooleanObject), "HashKeyValue" :: AttributeValue, "RangeKeyCondition" :: NullOrUndefined (Condition), "ScanIndexForward" :: NullOrUndefined (BooleanObject), "ExclusiveStartKey" :: NullOrUndefined (Key) }) -> QueryInput
```

Constructs QueryInput's fields from required parameters

#### `QueryOutput`

``` purescript
newtype QueryOutput
  = QueryOutput { "Items" :: NullOrUndefined (ItemList), "Count" :: NullOrUndefined (Int), "LastEvaluatedKey" :: NullOrUndefined (Key), "ConsumedCapacityUnits" :: NullOrUndefined (ConsumedCapacityUnits) }
```

##### Instances
``` purescript
Newtype QueryOutput _
Generic QueryOutput _
Show QueryOutput
Decode QueryOutput
Encode QueryOutput
```

#### `newQueryOutput`

``` purescript
newQueryOutput :: QueryOutput
```

Constructs QueryOutput from required parameters

#### `newQueryOutput'`

``` purescript
newQueryOutput' :: ({ "Items" :: NullOrUndefined (ItemList), "Count" :: NullOrUndefined (Int), "LastEvaluatedKey" :: NullOrUndefined (Key), "ConsumedCapacityUnits" :: NullOrUndefined (ConsumedCapacityUnits) } -> { "Items" :: NullOrUndefined (ItemList), "Count" :: NullOrUndefined (Int), "LastEvaluatedKey" :: NullOrUndefined (Key), "ConsumedCapacityUnits" :: NullOrUndefined (ConsumedCapacityUnits) }) -> QueryOutput
```

Constructs QueryOutput's fields from required parameters

#### `ResourceInUseException`

``` purescript
newtype ResourceInUseException
  = ResourceInUseException { message :: NullOrUndefined (ErrorMessage) }
```

<p>This exception is thrown when the resource which is being attempted to be changed is in use.</p>

##### Instances
``` purescript
Newtype ResourceInUseException _
Generic ResourceInUseException _
Show ResourceInUseException
Decode ResourceInUseException
Encode ResourceInUseException
```

#### `newResourceInUseException`

``` purescript
newResourceInUseException :: ResourceInUseException
```

Constructs ResourceInUseException from required parameters

#### `newResourceInUseException'`

``` purescript
newResourceInUseException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> ResourceInUseException
```

Constructs ResourceInUseException's fields from required parameters

#### `ResourceNotFoundException`

``` purescript
newtype ResourceNotFoundException
  = ResourceNotFoundException { message :: NullOrUndefined (ErrorMessage) }
```

<p>This exception is thrown when the resource which is being attempted to be changed is in use.</p>

##### Instances
``` purescript
Newtype ResourceNotFoundException _
Generic ResourceNotFoundException _
Show ResourceNotFoundException
Decode ResourceNotFoundException
Encode ResourceNotFoundException
```

#### `newResourceNotFoundException`

``` purescript
newResourceNotFoundException :: ResourceNotFoundException
```

Constructs ResourceNotFoundException from required parameters

#### `newResourceNotFoundException'`

``` purescript
newResourceNotFoundException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> ResourceNotFoundException
```

Constructs ResourceNotFoundException's fields from required parameters

#### `ReturnValue`

``` purescript
newtype ReturnValue
  = ReturnValue String
```

<p>Use this parameter if you want to get the attribute name-value pairs before or after they are modified. For <code>PUT</code> operations, the possible parameter values are <code>NONE</code> (default) or <code>ALL_OLD</code>. For update operations, the possible parameter values are <code>NONE</code> (default) or <code>ALL_OLD</code>, <code>UPDATED_OLD</code>, <code>ALL_NEW</code> or <code>UPDATED_NEW</code>.</p> <ul> <li><code>NONE</code>: Nothing is returned.</li> <li><code>ALL_OLD</code>: Returns the attributes of the item as they were before the operation.</li> <li><code>UPDATED_OLD</code>: Returns the values of the updated attributes, only, as they were before the operation.</li> <li><code>ALL_NEW</code>: Returns all the attributes and their new values after the operation.</li> <li><code>UPDATED_NEW</code>: Returns the values of the updated attributes, only, as they are after the operation.</li> </ul>

##### Instances
``` purescript
Newtype ReturnValue _
Generic ReturnValue _
Show ReturnValue
Decode ReturnValue
Encode ReturnValue
```

#### `ScalarAttributeType`

``` purescript
newtype ScalarAttributeType
  = ScalarAttributeType String
```

##### Instances
``` purescript
Newtype ScalarAttributeType _
Generic ScalarAttributeType _
Show ScalarAttributeType
Decode ScalarAttributeType
Encode ScalarAttributeType
```

#### `ScanInput`

``` purescript
newtype ScanInput
  = ScanInput { "TableName" :: TableName, "AttributesToGet" :: NullOrUndefined (AttributeNameList), "Limit" :: NullOrUndefined (PositiveIntegerObject), "Count" :: NullOrUndefined (BooleanObject), "ScanFilter" :: NullOrUndefined (FilterConditionMap), "ExclusiveStartKey" :: NullOrUndefined (Key) }
```

##### Instances
``` purescript
Newtype ScanInput _
Generic ScanInput _
Show ScanInput
Decode ScanInput
Encode ScanInput
```

#### `newScanInput`

``` purescript
newScanInput :: TableName -> ScanInput
```

Constructs ScanInput from required parameters

#### `newScanInput'`

``` purescript
newScanInput' :: TableName -> ({ "TableName" :: TableName, "AttributesToGet" :: NullOrUndefined (AttributeNameList), "Limit" :: NullOrUndefined (PositiveIntegerObject), "Count" :: NullOrUndefined (BooleanObject), "ScanFilter" :: NullOrUndefined (FilterConditionMap), "ExclusiveStartKey" :: NullOrUndefined (Key) } -> { "TableName" :: TableName, "AttributesToGet" :: NullOrUndefined (AttributeNameList), "Limit" :: NullOrUndefined (PositiveIntegerObject), "Count" :: NullOrUndefined (BooleanObject), "ScanFilter" :: NullOrUndefined (FilterConditionMap), "ExclusiveStartKey" :: NullOrUndefined (Key) }) -> ScanInput
```

Constructs ScanInput's fields from required parameters

#### `ScanOutput`

``` purescript
newtype ScanOutput
  = ScanOutput { "Items" :: NullOrUndefined (ItemList), "Count" :: NullOrUndefined (Int), "ScannedCount" :: NullOrUndefined (Int), "LastEvaluatedKey" :: NullOrUndefined (Key), "ConsumedCapacityUnits" :: NullOrUndefined (ConsumedCapacityUnits) }
```

##### Instances
``` purescript
Newtype ScanOutput _
Generic ScanOutput _
Show ScanOutput
Decode ScanOutput
Encode ScanOutput
```

#### `newScanOutput`

``` purescript
newScanOutput :: ScanOutput
```

Constructs ScanOutput from required parameters

#### `newScanOutput'`

``` purescript
newScanOutput' :: ({ "Items" :: NullOrUndefined (ItemList), "Count" :: NullOrUndefined (Int), "ScannedCount" :: NullOrUndefined (Int), "LastEvaluatedKey" :: NullOrUndefined (Key), "ConsumedCapacityUnits" :: NullOrUndefined (ConsumedCapacityUnits) } -> { "Items" :: NullOrUndefined (ItemList), "Count" :: NullOrUndefined (Int), "ScannedCount" :: NullOrUndefined (Int), "LastEvaluatedKey" :: NullOrUndefined (Key), "ConsumedCapacityUnits" :: NullOrUndefined (ConsumedCapacityUnits) }) -> ScanOutput
```

Constructs ScanOutput's fields from required parameters

#### `StringAttributeValue`

``` purescript
newtype StringAttributeValue
  = StringAttributeValue String
```

##### Instances
``` purescript
Newtype StringAttributeValue _
Generic StringAttributeValue _
Show StringAttributeValue
Decode StringAttributeValue
Encode StringAttributeValue
```

#### `StringSetAttributeValue`

``` purescript
newtype StringSetAttributeValue
  = StringSetAttributeValue (Array StringAttributeValue)
```

##### Instances
``` purescript
Newtype StringSetAttributeValue _
Generic StringSetAttributeValue _
Show StringSetAttributeValue
Decode StringSetAttributeValue
Encode StringSetAttributeValue
```

#### `TableDescription`

``` purescript
newtype TableDescription
  = TableDescription { "TableName" :: NullOrUndefined (TableName), "KeySchema" :: NullOrUndefined (KeySchema), "TableStatus" :: NullOrUndefined (TableStatus), "CreationDateTime" :: NullOrUndefined (Date), "ProvisionedThroughput" :: NullOrUndefined (ProvisionedThroughputDescription), "TableSizeBytes" :: NullOrUndefined (Number), "ItemCount" :: NullOrUndefined (Number) }
```

##### Instances
``` purescript
Newtype TableDescription _
Generic TableDescription _
Show TableDescription
Decode TableDescription
Encode TableDescription
```

#### `newTableDescription`

``` purescript
newTableDescription :: TableDescription
```

Constructs TableDescription from required parameters

#### `newTableDescription'`

``` purescript
newTableDescription' :: ({ "TableName" :: NullOrUndefined (TableName), "KeySchema" :: NullOrUndefined (KeySchema), "TableStatus" :: NullOrUndefined (TableStatus), "CreationDateTime" :: NullOrUndefined (Date), "ProvisionedThroughput" :: NullOrUndefined (ProvisionedThroughputDescription), "TableSizeBytes" :: NullOrUndefined (Number), "ItemCount" :: NullOrUndefined (Number) } -> { "TableName" :: NullOrUndefined (TableName), "KeySchema" :: NullOrUndefined (KeySchema), "TableStatus" :: NullOrUndefined (TableStatus), "CreationDateTime" :: NullOrUndefined (Date), "ProvisionedThroughput" :: NullOrUndefined (ProvisionedThroughputDescription), "TableSizeBytes" :: NullOrUndefined (Number), "ItemCount" :: NullOrUndefined (Number) }) -> TableDescription
```

Constructs TableDescription's fields from required parameters

#### `TableName`

``` purescript
newtype TableName
  = TableName String
```

##### Instances
``` purescript
Newtype TableName _
Generic TableName _
Show TableName
Decode TableName
Encode TableName
```

#### `TableNameList`

``` purescript
newtype TableNameList
  = TableNameList (Array TableName)
```

##### Instances
``` purescript
Newtype TableNameList _
Generic TableNameList _
Show TableNameList
Decode TableNameList
Encode TableNameList
```

#### `TableStatus`

``` purescript
newtype TableStatus
  = TableStatus String
```

##### Instances
``` purescript
Newtype TableStatus _
Generic TableStatus _
Show TableStatus
Decode TableStatus
Encode TableStatus
```

#### `UpdateItemInput`

``` purescript
newtype UpdateItemInput
  = UpdateItemInput { "TableName" :: TableName, "Key" :: Key, "AttributeUpdates" :: AttributeUpdates, "Expected" :: NullOrUndefined (ExpectedAttributeMap), "ReturnValues" :: NullOrUndefined (ReturnValue) }
```

##### Instances
``` purescript
Newtype UpdateItemInput _
Generic UpdateItemInput _
Show UpdateItemInput
Decode UpdateItemInput
Encode UpdateItemInput
```

#### `newUpdateItemInput`

``` purescript
newUpdateItemInput :: AttributeUpdates -> Key -> TableName -> UpdateItemInput
```

Constructs UpdateItemInput from required parameters

#### `newUpdateItemInput'`

``` purescript
newUpdateItemInput' :: AttributeUpdates -> Key -> TableName -> ({ "TableName" :: TableName, "Key" :: Key, "AttributeUpdates" :: AttributeUpdates, "Expected" :: NullOrUndefined (ExpectedAttributeMap), "ReturnValues" :: NullOrUndefined (ReturnValue) } -> { "TableName" :: TableName, "Key" :: Key, "AttributeUpdates" :: AttributeUpdates, "Expected" :: NullOrUndefined (ExpectedAttributeMap), "ReturnValues" :: NullOrUndefined (ReturnValue) }) -> UpdateItemInput
```

Constructs UpdateItemInput's fields from required parameters

#### `UpdateItemOutput`

``` purescript
newtype UpdateItemOutput
  = UpdateItemOutput { "Attributes" :: NullOrUndefined (AttributeMap), "ConsumedCapacityUnits" :: NullOrUndefined (ConsumedCapacityUnits) }
```

##### Instances
``` purescript
Newtype UpdateItemOutput _
Generic UpdateItemOutput _
Show UpdateItemOutput
Decode UpdateItemOutput
Encode UpdateItemOutput
```

#### `newUpdateItemOutput`

``` purescript
newUpdateItemOutput :: UpdateItemOutput
```

Constructs UpdateItemOutput from required parameters

#### `newUpdateItemOutput'`

``` purescript
newUpdateItemOutput' :: ({ "Attributes" :: NullOrUndefined (AttributeMap), "ConsumedCapacityUnits" :: NullOrUndefined (ConsumedCapacityUnits) } -> { "Attributes" :: NullOrUndefined (AttributeMap), "ConsumedCapacityUnits" :: NullOrUndefined (ConsumedCapacityUnits) }) -> UpdateItemOutput
```

Constructs UpdateItemOutput's fields from required parameters

#### `UpdateTableInput`

``` purescript
newtype UpdateTableInput
  = UpdateTableInput { "TableName" :: TableName, "ProvisionedThroughput" :: ProvisionedThroughput }
```

##### Instances
``` purescript
Newtype UpdateTableInput _
Generic UpdateTableInput _
Show UpdateTableInput
Decode UpdateTableInput
Encode UpdateTableInput
```

#### `newUpdateTableInput`

``` purescript
newUpdateTableInput :: ProvisionedThroughput -> TableName -> UpdateTableInput
```

Constructs UpdateTableInput from required parameters

#### `newUpdateTableInput'`

``` purescript
newUpdateTableInput' :: ProvisionedThroughput -> TableName -> ({ "TableName" :: TableName, "ProvisionedThroughput" :: ProvisionedThroughput } -> { "TableName" :: TableName, "ProvisionedThroughput" :: ProvisionedThroughput }) -> UpdateTableInput
```

Constructs UpdateTableInput's fields from required parameters

#### `UpdateTableOutput`

``` purescript
newtype UpdateTableOutput
  = UpdateTableOutput { "TableDescription" :: NullOrUndefined (TableDescription) }
```

##### Instances
``` purescript
Newtype UpdateTableOutput _
Generic UpdateTableOutput _
Show UpdateTableOutput
Decode UpdateTableOutput
Encode UpdateTableOutput
```

#### `newUpdateTableOutput`

``` purescript
newUpdateTableOutput :: UpdateTableOutput
```

Constructs UpdateTableOutput from required parameters

#### `newUpdateTableOutput'`

``` purescript
newUpdateTableOutput' :: ({ "TableDescription" :: NullOrUndefined (TableDescription) } -> { "TableDescription" :: NullOrUndefined (TableDescription) }) -> UpdateTableOutput
```

Constructs UpdateTableOutput's fields from required parameters

#### `WriteRequest`

``` purescript
newtype WriteRequest
  = WriteRequest { "PutRequest" :: NullOrUndefined (PutRequest), "DeleteRequest" :: NullOrUndefined (DeleteRequest) }
```

<p>This structure is a Union of PutRequest and DeleteRequest. It can contain exactly one of <code>PutRequest</code> or <code>DeleteRequest</code>. Never Both. This is enforced in the code.</p>

##### Instances
``` purescript
Newtype WriteRequest _
Generic WriteRequest _
Show WriteRequest
Decode WriteRequest
Encode WriteRequest
```

#### `newWriteRequest`

``` purescript
newWriteRequest :: WriteRequest
```

Constructs WriteRequest from required parameters

#### `newWriteRequest'`

``` purescript
newWriteRequest' :: ({ "PutRequest" :: NullOrUndefined (PutRequest), "DeleteRequest" :: NullOrUndefined (DeleteRequest) } -> { "PutRequest" :: NullOrUndefined (PutRequest), "DeleteRequest" :: NullOrUndefined (DeleteRequest) }) -> WriteRequest
```

Constructs WriteRequest's fields from required parameters

#### `WriteRequests`

``` purescript
newtype WriteRequests
  = WriteRequests (Array WriteRequest)
```

##### Instances
``` purescript
Newtype WriteRequests _
Generic WriteRequests _
Show WriteRequests
Decode WriteRequests
Encode WriteRequests
```


