

-- | <p>Amazon DynamoDB is a fast, highly scalable, highly available, cost-effective non-relational database service.</p> <p>Amazon DynamoDB removes traditional scalability limitations on data storage while maintaining low latency and predictable performance.</p>
module AWS.DynamoDB where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)
import Data.Foreign as Foreign
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.NullOrUndefined as NullOrUndefined
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap as StrMap

import AWS.Request as Request
import AWS.Request.Types as Types

serviceName = "DynamoDB" :: String


-- | <p>Retrieves the attributes for multiple items from multiple tables using their primary keys.</p> <p>The maximum number of item attributes that can be retrieved for a single operation is 100. Also, the number of items retrieved is constrained by a 1 MB the size limit. If the response size limit is exceeded or a partial result is returned due to an internal processing failure, Amazon DynamoDB returns an <code>UnprocessedKeys</code> value so you can retry the operation starting with the next item to get.</p> <p>Amazon DynamoDB automatically adjusts the number of items returned per page to enforce this limit. For example, even if you ask to retrieve 100 items, but each individual item is 50k in size, the system returns 20 items and an appropriate <code>UnprocessedKeys</code> value so you can get the next page of results. If necessary, your application needs its own logic to assemble the pages of results into one set.</p>
batchGetItem :: forall eff. BatchGetItemInput -> Aff (exception :: EXCEPTION | eff) BatchGetItemOutput
batchGetItem = Request.request serviceName "batchGetItem" 


-- | <p>Allows to execute a batch of Put and/or Delete Requests for many tables in a single call. A total of 25 requests are allowed.</p> <p>There are no transaction guarantees provided by this API. It does not allow conditional puts nor does it support return values.</p>
batchWriteItem :: forall eff. BatchWriteItemInput -> Aff (exception :: EXCEPTION | eff) BatchWriteItemOutput
batchWriteItem = Request.request serviceName "batchWriteItem" 


-- | <p>Adds a new table to your account.</p> <p>The table name must be unique among those associated with the AWS Account issuing the request, and the AWS Region that receives the request (e.g. <code>us-east-1</code>).</p> <p>The <code>CreateTable</code> operation triggers an asynchronous workflow to begin creating the table. Amazon DynamoDB immediately returns the state of the table (<code>CREATING</code>) until the table is in the <code>ACTIVE</code> state. Once the table is in the <code>ACTIVE</code> state, you can perform data plane operations.</p>
createTable :: forall eff. CreateTableInput -> Aff (exception :: EXCEPTION | eff) CreateTableOutput
createTable = Request.request serviceName "createTable" 


-- | <p>Deletes a single item in a table by primary key.</p> <p>You can perform a conditional delete operation that deletes the item if it exists, or if it has an expected attribute value.</p>
deleteItem :: forall eff. DeleteItemInput -> Aff (exception :: EXCEPTION | eff) DeleteItemOutput
deleteItem = Request.request serviceName "deleteItem" 


-- | <p>Deletes a table and all of its items.</p> <p>If the table is in the <code>ACTIVE</code> state, you can delete it. If a table is in <code>CREATING</code> or <code>UPDATING</code> states then Amazon DynamoDB returns a <code>ResourceInUseException</code>. If the specified table does not exist, Amazon DynamoDB returns a <code>ResourceNotFoundException</code>.</p>
deleteTable :: forall eff. DeleteTableInput -> Aff (exception :: EXCEPTION | eff) DeleteTableOutput
deleteTable = Request.request serviceName "deleteTable" 


-- | <p>Retrieves information about the table, including the current status of the table, the primary key schema and when the table was created.</p> <p>If the table does not exist, Amazon DynamoDB returns a <code>ResourceNotFoundException</code>.</p>
describeTable :: forall eff. DescribeTableInput -> Aff (exception :: EXCEPTION | eff) DescribeTableOutput
describeTable = Request.request serviceName "describeTable" 


-- | <p>Retrieves a set of Attributes for an item that matches the primary key.</p> <p>The <code>GetItem</code> operation provides an eventually-consistent read by default. If eventually-consistent reads are not acceptable for your application, use <code>ConsistentRead</code>. Although this operation might take longer than a standard read, it always returns the last updated value.</p>
getItem :: forall eff. GetItemInput -> Aff (exception :: EXCEPTION | eff) GetItemOutput
getItem = Request.request serviceName "getItem" 


-- | <p>Retrieves a paginated list of table names created by the AWS Account of the caller in the AWS Region (e.g. <code>us-east-1</code>).</p>
listTables :: forall eff. ListTablesInput -> Aff (exception :: EXCEPTION | eff) ListTablesOutput
listTables = Request.request serviceName "listTables" 


-- | <p>Creates a new item, or replaces an old item with a new item (including all the attributes).</p> <p>If an item already exists in the specified table with the same primary key, the new item completely replaces the existing item. You can perform a conditional put (insert a new item if one with the specified primary key doesn't exist), or replace an existing item if it has certain attribute values.</p>
putItem :: forall eff. PutItemInput -> Aff (exception :: EXCEPTION | eff) PutItemOutput
putItem = Request.request serviceName "putItem" 


-- | <p>Gets the values of one or more items and its attributes by primary key (composite primary key, only).</p> <p>Narrow the scope of the query using comparison operators on the <code>RangeKeyValue</code> of the composite key. Use the <code>ScanIndexForward</code> parameter to get results in forward or reverse order by range key.</p>
query :: forall eff. QueryInput -> Aff (exception :: EXCEPTION | eff) QueryOutput
query = Request.request serviceName "query" 


-- | <p>Retrieves one or more items and its attributes by performing a full scan of a table.</p> <p>Provide a <code>ScanFilter</code> to get more specific results.</p>
scan :: forall eff. ScanInput -> Aff (exception :: EXCEPTION | eff) ScanOutput
scan = Request.request serviceName "scan" 


-- | <p>Edits an existing item's attributes.</p> <p>You can perform a conditional update (insert a new attribute name-value pair if it doesn't exist, or replace an existing name-value pair if it has certain expected attribute values).</p>
updateItem :: forall eff. UpdateItemInput -> Aff (exception :: EXCEPTION | eff) UpdateItemOutput
updateItem = Request.request serviceName "updateItem" 


-- | <p>Updates the provisioned throughput for the given table.</p> <p>Setting the throughput for a table helps you manage performance and is part of the Provisioned Throughput feature of Amazon DynamoDB.</p>
updateTable :: forall eff. UpdateTableInput -> Aff (exception :: EXCEPTION | eff) UpdateTableOutput
updateTable = Request.request serviceName "updateTable" 


-- | <p>The type of action for an item update operation. Only use the add action for numbers or sets; the specified value is added to the existing value. If a set of values is specified, the values are added to the existing set. Adds the specified attribute. If the attribute exists, it is replaced by the new value. If no value is specified, this removes the attribute and its value. If a set of values is specified, then the values in the specified set are removed from the old set.</p>
newtype AttributeAction = AttributeAction String
derive instance newtypeAttributeAction :: Newtype AttributeAction _
derive instance repGenericAttributeAction :: Generic AttributeAction _
instance showAttributeAction :: Show AttributeAction where
  show = genericShow
instance decodeAttributeAction :: Decode AttributeAction where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAttributeAction :: Encode AttributeAction where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype AttributeMap = AttributeMap (StrMap.StrMap AttributeValue)
derive instance newtypeAttributeMap :: Newtype AttributeMap _
derive instance repGenericAttributeMap :: Generic AttributeMap _
instance showAttributeMap :: Show AttributeMap where
  show = genericShow
instance decodeAttributeMap :: Decode AttributeMap where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAttributeMap :: Encode AttributeMap where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype AttributeName = AttributeName String
derive instance newtypeAttributeName :: Newtype AttributeName _
derive instance repGenericAttributeName :: Generic AttributeName _
instance showAttributeName :: Show AttributeName where
  show = genericShow
instance decodeAttributeName :: Decode AttributeName where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAttributeName :: Encode AttributeName where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>List of <code>Attribute</code> names. If attribute names are not specified then all attributes will be returned. If some attributes are not found, they will not appear in the result.</p>
newtype AttributeNameList = AttributeNameList (Array AttributeName)
derive instance newtypeAttributeNameList :: Newtype AttributeNameList _
derive instance repGenericAttributeNameList :: Generic AttributeNameList _
instance showAttributeNameList :: Show AttributeNameList where
  show = genericShow
instance decodeAttributeNameList :: Decode AttributeNameList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAttributeNameList :: Encode AttributeNameList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Map of attribute name to the new value and action for the update. The attribute names specify the attributes to modify, and cannot contain any primary key attributes.</p>
newtype AttributeUpdates = AttributeUpdates (StrMap.StrMap AttributeValueUpdate)
derive instance newtypeAttributeUpdates :: Newtype AttributeUpdates _
derive instance repGenericAttributeUpdates :: Generic AttributeUpdates _
instance showAttributeUpdates :: Show AttributeUpdates where
  show = genericShow
instance decodeAttributeUpdates :: Decode AttributeUpdates where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAttributeUpdates :: Encode AttributeUpdates where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>AttributeValue can be <code>String</code>, <code>Number</code>, <code>Binary</code>, <code>StringSet</code>, <code>NumberSet</code>, <code>BinarySet</code>.</p>
newtype AttributeValue = AttributeValue 
  { "S" :: NullOrUndefined.NullOrUndefined (StringAttributeValue)
  , "N" :: NullOrUndefined.NullOrUndefined (NumberAttributeValue)
  , "B" :: NullOrUndefined.NullOrUndefined (BinaryAttributeValue)
  , "SS" :: NullOrUndefined.NullOrUndefined (StringSetAttributeValue)
  , "NS" :: NullOrUndefined.NullOrUndefined (NumberSetAttributeValue)
  , "BS" :: NullOrUndefined.NullOrUndefined (BinarySetAttributeValue)
  }
derive instance newtypeAttributeValue :: Newtype AttributeValue _
derive instance repGenericAttributeValue :: Generic AttributeValue _
instance showAttributeValue :: Show AttributeValue where
  show = genericShow
instance decodeAttributeValue :: Decode AttributeValue where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAttributeValue :: Encode AttributeValue where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AttributeValue from required parameters
newAttributeValue :: AttributeValue
newAttributeValue  = AttributeValue { "B": (NullOrUndefined Nothing), "BS": (NullOrUndefined Nothing), "N": (NullOrUndefined Nothing), "NS": (NullOrUndefined Nothing), "S": (NullOrUndefined Nothing), "SS": (NullOrUndefined Nothing) }

-- | Constructs AttributeValue's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAttributeValue' :: ( { "S" :: NullOrUndefined.NullOrUndefined (StringAttributeValue) , "N" :: NullOrUndefined.NullOrUndefined (NumberAttributeValue) , "B" :: NullOrUndefined.NullOrUndefined (BinaryAttributeValue) , "SS" :: NullOrUndefined.NullOrUndefined (StringSetAttributeValue) , "NS" :: NullOrUndefined.NullOrUndefined (NumberSetAttributeValue) , "BS" :: NullOrUndefined.NullOrUndefined (BinarySetAttributeValue) } -> {"S" :: NullOrUndefined.NullOrUndefined (StringAttributeValue) , "N" :: NullOrUndefined.NullOrUndefined (NumberAttributeValue) , "B" :: NullOrUndefined.NullOrUndefined (BinaryAttributeValue) , "SS" :: NullOrUndefined.NullOrUndefined (StringSetAttributeValue) , "NS" :: NullOrUndefined.NullOrUndefined (NumberSetAttributeValue) , "BS" :: NullOrUndefined.NullOrUndefined (BinarySetAttributeValue) } ) -> AttributeValue
newAttributeValue'  customize = (AttributeValue <<< customize) { "B": (NullOrUndefined Nothing), "BS": (NullOrUndefined Nothing), "N": (NullOrUndefined Nothing), "NS": (NullOrUndefined Nothing), "S": (NullOrUndefined Nothing), "SS": (NullOrUndefined Nothing) }



-- | <p>A list of attribute values to be used with a comparison operator for a scan or query operation. For comparisons that require more than one value, such as a <code>BETWEEN</code> comparison, the AttributeValueList contains two attribute values and the comparison operator.</p>
newtype AttributeValueList = AttributeValueList (Array AttributeValue)
derive instance newtypeAttributeValueList :: Newtype AttributeValueList _
derive instance repGenericAttributeValueList :: Generic AttributeValueList _
instance showAttributeValueList :: Show AttributeValueList where
  show = genericShow
instance decodeAttributeValueList :: Decode AttributeValueList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAttributeValueList :: Encode AttributeValueList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Specifies the attribute to update and how to perform the update. Possible values: <code>PUT</code> (default), <code>ADD</code> or <code>DELETE</code>.</p>
newtype AttributeValueUpdate = AttributeValueUpdate 
  { "Value" :: NullOrUndefined.NullOrUndefined (AttributeValue)
  , "Action" :: NullOrUndefined.NullOrUndefined (AttributeAction)
  }
derive instance newtypeAttributeValueUpdate :: Newtype AttributeValueUpdate _
derive instance repGenericAttributeValueUpdate :: Generic AttributeValueUpdate _
instance showAttributeValueUpdate :: Show AttributeValueUpdate where
  show = genericShow
instance decodeAttributeValueUpdate :: Decode AttributeValueUpdate where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAttributeValueUpdate :: Encode AttributeValueUpdate where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AttributeValueUpdate from required parameters
newAttributeValueUpdate :: AttributeValueUpdate
newAttributeValueUpdate  = AttributeValueUpdate { "Action": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }

-- | Constructs AttributeValueUpdate's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAttributeValueUpdate' :: ( { "Value" :: NullOrUndefined.NullOrUndefined (AttributeValue) , "Action" :: NullOrUndefined.NullOrUndefined (AttributeAction) } -> {"Value" :: NullOrUndefined.NullOrUndefined (AttributeValue) , "Action" :: NullOrUndefined.NullOrUndefined (AttributeAction) } ) -> AttributeValueUpdate
newAttributeValueUpdate'  customize = (AttributeValueUpdate <<< customize) { "Action": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }



newtype BatchGetItemInput = BatchGetItemInput 
  { "RequestItems" :: (BatchGetRequestMap)
  }
derive instance newtypeBatchGetItemInput :: Newtype BatchGetItemInput _
derive instance repGenericBatchGetItemInput :: Generic BatchGetItemInput _
instance showBatchGetItemInput :: Show BatchGetItemInput where
  show = genericShow
instance decodeBatchGetItemInput :: Decode BatchGetItemInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBatchGetItemInput :: Encode BatchGetItemInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs BatchGetItemInput from required parameters
newBatchGetItemInput :: BatchGetRequestMap -> BatchGetItemInput
newBatchGetItemInput _RequestItems = BatchGetItemInput { "RequestItems": _RequestItems }

-- | Constructs BatchGetItemInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchGetItemInput' :: BatchGetRequestMap -> ( { "RequestItems" :: (BatchGetRequestMap) } -> {"RequestItems" :: (BatchGetRequestMap) } ) -> BatchGetItemInput
newBatchGetItemInput' _RequestItems customize = (BatchGetItemInput <<< customize) { "RequestItems": _RequestItems }



newtype BatchGetItemOutput = BatchGetItemOutput 
  { "Responses" :: NullOrUndefined.NullOrUndefined (BatchGetResponseMap)
  , "UnprocessedKeys" :: NullOrUndefined.NullOrUndefined (BatchGetRequestMap)
  }
derive instance newtypeBatchGetItemOutput :: Newtype BatchGetItemOutput _
derive instance repGenericBatchGetItemOutput :: Generic BatchGetItemOutput _
instance showBatchGetItemOutput :: Show BatchGetItemOutput where
  show = genericShow
instance decodeBatchGetItemOutput :: Decode BatchGetItemOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBatchGetItemOutput :: Encode BatchGetItemOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs BatchGetItemOutput from required parameters
newBatchGetItemOutput :: BatchGetItemOutput
newBatchGetItemOutput  = BatchGetItemOutput { "Responses": (NullOrUndefined Nothing), "UnprocessedKeys": (NullOrUndefined Nothing) }

-- | Constructs BatchGetItemOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchGetItemOutput' :: ( { "Responses" :: NullOrUndefined.NullOrUndefined (BatchGetResponseMap) , "UnprocessedKeys" :: NullOrUndefined.NullOrUndefined (BatchGetRequestMap) } -> {"Responses" :: NullOrUndefined.NullOrUndefined (BatchGetResponseMap) , "UnprocessedKeys" :: NullOrUndefined.NullOrUndefined (BatchGetRequestMap) } ) -> BatchGetItemOutput
newBatchGetItemOutput'  customize = (BatchGetItemOutput <<< customize) { "Responses": (NullOrUndefined Nothing), "UnprocessedKeys": (NullOrUndefined Nothing) }



-- | <p>A map of the table name and corresponding items to get by primary key. While requesting items, each table name can be invoked only once per operation.</p>
newtype BatchGetRequestMap = BatchGetRequestMap (StrMap.StrMap KeysAndAttributes)
derive instance newtypeBatchGetRequestMap :: Newtype BatchGetRequestMap _
derive instance repGenericBatchGetRequestMap :: Generic BatchGetRequestMap _
instance showBatchGetRequestMap :: Show BatchGetRequestMap where
  show = genericShow
instance decodeBatchGetRequestMap :: Decode BatchGetRequestMap where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBatchGetRequestMap :: Encode BatchGetRequestMap where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Table names and the respective item attributes from the tables.</p>
newtype BatchGetResponseMap = BatchGetResponseMap (StrMap.StrMap BatchResponse)
derive instance newtypeBatchGetResponseMap :: Newtype BatchGetResponseMap _
derive instance repGenericBatchGetResponseMap :: Generic BatchGetResponseMap _
instance showBatchGetResponseMap :: Show BatchGetResponseMap where
  show = genericShow
instance decodeBatchGetResponseMap :: Decode BatchGetResponseMap where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBatchGetResponseMap :: Encode BatchGetResponseMap where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The item attributes from a response in a specific table, along with the read resources consumed on the table during the request.</p>
newtype BatchResponse = BatchResponse 
  { "Items" :: NullOrUndefined.NullOrUndefined (ItemList)
  , "ConsumedCapacityUnits" :: NullOrUndefined.NullOrUndefined (ConsumedCapacityUnits)
  }
derive instance newtypeBatchResponse :: Newtype BatchResponse _
derive instance repGenericBatchResponse :: Generic BatchResponse _
instance showBatchResponse :: Show BatchResponse where
  show = genericShow
instance decodeBatchResponse :: Decode BatchResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBatchResponse :: Encode BatchResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs BatchResponse from required parameters
newBatchResponse :: BatchResponse
newBatchResponse  = BatchResponse { "ConsumedCapacityUnits": (NullOrUndefined Nothing), "Items": (NullOrUndefined Nothing) }

-- | Constructs BatchResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchResponse' :: ( { "Items" :: NullOrUndefined.NullOrUndefined (ItemList) , "ConsumedCapacityUnits" :: NullOrUndefined.NullOrUndefined (ConsumedCapacityUnits) } -> {"Items" :: NullOrUndefined.NullOrUndefined (ItemList) , "ConsumedCapacityUnits" :: NullOrUndefined.NullOrUndefined (ConsumedCapacityUnits) } ) -> BatchResponse
newBatchResponse'  customize = (BatchResponse <<< customize) { "ConsumedCapacityUnits": (NullOrUndefined Nothing), "Items": (NullOrUndefined Nothing) }



newtype BatchWriteItemInput = BatchWriteItemInput 
  { "RequestItems" :: (BatchWriteItemRequestMap)
  }
derive instance newtypeBatchWriteItemInput :: Newtype BatchWriteItemInput _
derive instance repGenericBatchWriteItemInput :: Generic BatchWriteItemInput _
instance showBatchWriteItemInput :: Show BatchWriteItemInput where
  show = genericShow
instance decodeBatchWriteItemInput :: Decode BatchWriteItemInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBatchWriteItemInput :: Encode BatchWriteItemInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs BatchWriteItemInput from required parameters
newBatchWriteItemInput :: BatchWriteItemRequestMap -> BatchWriteItemInput
newBatchWriteItemInput _RequestItems = BatchWriteItemInput { "RequestItems": _RequestItems }

-- | Constructs BatchWriteItemInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchWriteItemInput' :: BatchWriteItemRequestMap -> ( { "RequestItems" :: (BatchWriteItemRequestMap) } -> {"RequestItems" :: (BatchWriteItemRequestMap) } ) -> BatchWriteItemInput
newBatchWriteItemInput' _RequestItems customize = (BatchWriteItemInput <<< customize) { "RequestItems": _RequestItems }



-- | <p>A container for <code>BatchWriteItem</code> response</p>
newtype BatchWriteItemOutput = BatchWriteItemOutput 
  { "Responses" :: NullOrUndefined.NullOrUndefined (BatchWriteResponseMap)
  , "UnprocessedItems" :: NullOrUndefined.NullOrUndefined (BatchWriteItemRequestMap)
  }
derive instance newtypeBatchWriteItemOutput :: Newtype BatchWriteItemOutput _
derive instance repGenericBatchWriteItemOutput :: Generic BatchWriteItemOutput _
instance showBatchWriteItemOutput :: Show BatchWriteItemOutput where
  show = genericShow
instance decodeBatchWriteItemOutput :: Decode BatchWriteItemOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBatchWriteItemOutput :: Encode BatchWriteItemOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs BatchWriteItemOutput from required parameters
newBatchWriteItemOutput :: BatchWriteItemOutput
newBatchWriteItemOutput  = BatchWriteItemOutput { "Responses": (NullOrUndefined Nothing), "UnprocessedItems": (NullOrUndefined Nothing) }

-- | Constructs BatchWriteItemOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchWriteItemOutput' :: ( { "Responses" :: NullOrUndefined.NullOrUndefined (BatchWriteResponseMap) , "UnprocessedItems" :: NullOrUndefined.NullOrUndefined (BatchWriteItemRequestMap) } -> {"Responses" :: NullOrUndefined.NullOrUndefined (BatchWriteResponseMap) , "UnprocessedItems" :: NullOrUndefined.NullOrUndefined (BatchWriteItemRequestMap) } ) -> BatchWriteItemOutput
newBatchWriteItemOutput'  customize = (BatchWriteItemOutput <<< customize) { "Responses": (NullOrUndefined Nothing), "UnprocessedItems": (NullOrUndefined Nothing) }



-- | <p>A map of table name to list-of-write-requests.</p> <p>Key: The table name corresponding to the list of requests</p> <p>Value: Essentially a list of request items. Each request item could contain either a <code>PutRequest</code> or <code>DeleteRequest</code>. Never both.</p>
newtype BatchWriteItemRequestMap = BatchWriteItemRequestMap (StrMap.StrMap WriteRequests)
derive instance newtypeBatchWriteItemRequestMap :: Newtype BatchWriteItemRequestMap _
derive instance repGenericBatchWriteItemRequestMap :: Generic BatchWriteItemRequestMap _
instance showBatchWriteItemRequestMap :: Show BatchWriteItemRequestMap where
  show = genericShow
instance decodeBatchWriteItemRequestMap :: Decode BatchWriteItemRequestMap where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBatchWriteItemRequestMap :: Encode BatchWriteItemRequestMap where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype BatchWriteResponse = BatchWriteResponse 
  { "ConsumedCapacityUnits" :: NullOrUndefined.NullOrUndefined (ConsumedCapacityUnits)
  }
derive instance newtypeBatchWriteResponse :: Newtype BatchWriteResponse _
derive instance repGenericBatchWriteResponse :: Generic BatchWriteResponse _
instance showBatchWriteResponse :: Show BatchWriteResponse where
  show = genericShow
instance decodeBatchWriteResponse :: Decode BatchWriteResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBatchWriteResponse :: Encode BatchWriteResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs BatchWriteResponse from required parameters
newBatchWriteResponse :: BatchWriteResponse
newBatchWriteResponse  = BatchWriteResponse { "ConsumedCapacityUnits": (NullOrUndefined Nothing) }

-- | Constructs BatchWriteResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchWriteResponse' :: ( { "ConsumedCapacityUnits" :: NullOrUndefined.NullOrUndefined (ConsumedCapacityUnits) } -> {"ConsumedCapacityUnits" :: NullOrUndefined.NullOrUndefined (ConsumedCapacityUnits) } ) -> BatchWriteResponse
newBatchWriteResponse'  customize = (BatchWriteResponse <<< customize) { "ConsumedCapacityUnits": (NullOrUndefined Nothing) }



newtype BatchWriteResponseMap = BatchWriteResponseMap (StrMap.StrMap BatchWriteResponse)
derive instance newtypeBatchWriteResponseMap :: Newtype BatchWriteResponseMap _
derive instance repGenericBatchWriteResponseMap :: Generic BatchWriteResponseMap _
instance showBatchWriteResponseMap :: Show BatchWriteResponseMap where
  show = genericShow
instance decodeBatchWriteResponseMap :: Decode BatchWriteResponseMap where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBatchWriteResponseMap :: Encode BatchWriteResponseMap where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype BinaryAttributeValue = BinaryAttributeValue String
derive instance newtypeBinaryAttributeValue :: Newtype BinaryAttributeValue _
derive instance repGenericBinaryAttributeValue :: Generic BinaryAttributeValue _
instance showBinaryAttributeValue :: Show BinaryAttributeValue where
  show = genericShow
instance decodeBinaryAttributeValue :: Decode BinaryAttributeValue where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBinaryAttributeValue :: Encode BinaryAttributeValue where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype BinarySetAttributeValue = BinarySetAttributeValue (Array BinaryAttributeValue)
derive instance newtypeBinarySetAttributeValue :: Newtype BinarySetAttributeValue _
derive instance repGenericBinarySetAttributeValue :: Generic BinarySetAttributeValue _
instance showBinarySetAttributeValue :: Show BinarySetAttributeValue where
  show = genericShow
instance decodeBinarySetAttributeValue :: Decode BinarySetAttributeValue where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBinarySetAttributeValue :: Encode BinarySetAttributeValue where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype BooleanObject = BooleanObject Boolean
derive instance newtypeBooleanObject :: Newtype BooleanObject _
derive instance repGenericBooleanObject :: Generic BooleanObject _
instance showBooleanObject :: Show BooleanObject where
  show = genericShow
instance decodeBooleanObject :: Decode BooleanObject where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBooleanObject :: Encode BooleanObject where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>A comparison operator is an enumeration of several operations:</p> <ul> <li><code>EQ</code> for <em>equal</em>.</li> <li><code>NE</code> for <em>not equal</em>.</li> <li><code>IN</code> checks for exact matches.</li> <li><code>LE</code> for <em>less than or equal to</em>.</li> <li><code>LT</code> for <em>less than</em>.</li> <li><code>GE</code> for <em>greater than or equal to</em>.</li> <li><code>GT</code> for <em>greater than</em>.</li> <li><code>BETWEEN</code> for <em>between</em>.</li> <li><code>NOT_NULL</code> for <em>exists</em>.</li> <li><code>NULL</code> for <em>not exists</em>.</li> <li><code>CONTAINS</code> for substring or value in a set.</li> <li><code>NOT_CONTAINS</code> for absence of a substring or absence of a value in a set.</li> <li><code>BEGINS_WITH</code> for a substring prefix.</li> </ul> <p>Scan operations support all available comparison operators.</p> <p>Query operations support a subset of the available comparison operators: EQ, LE, LT, GE, GT, BETWEEN, and BEGINS_WITH.</p>
newtype ComparisonOperator = ComparisonOperator String
derive instance newtypeComparisonOperator :: Newtype ComparisonOperator _
derive instance repGenericComparisonOperator :: Generic ComparisonOperator _
instance showComparisonOperator :: Show ComparisonOperator where
  show = genericShow
instance decodeComparisonOperator :: Decode ComparisonOperator where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeComparisonOperator :: Encode ComparisonOperator where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Condition = Condition 
  { "AttributeValueList" :: NullOrUndefined.NullOrUndefined (AttributeValueList)
  , "ComparisonOperator" :: (ComparisonOperator)
  }
derive instance newtypeCondition :: Newtype Condition _
derive instance repGenericCondition :: Generic Condition _
instance showCondition :: Show Condition where
  show = genericShow
instance decodeCondition :: Decode Condition where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCondition :: Encode Condition where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Condition from required parameters
newCondition :: ComparisonOperator -> Condition
newCondition _ComparisonOperator = Condition { "ComparisonOperator": _ComparisonOperator, "AttributeValueList": (NullOrUndefined Nothing) }

-- | Constructs Condition's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCondition' :: ComparisonOperator -> ( { "AttributeValueList" :: NullOrUndefined.NullOrUndefined (AttributeValueList) , "ComparisonOperator" :: (ComparisonOperator) } -> {"AttributeValueList" :: NullOrUndefined.NullOrUndefined (AttributeValueList) , "ComparisonOperator" :: (ComparisonOperator) } ) -> Condition
newCondition' _ComparisonOperator customize = (Condition <<< customize) { "ComparisonOperator": _ComparisonOperator, "AttributeValueList": (NullOrUndefined Nothing) }



-- | <p>This exception is thrown when an expected value does not match what was found in the system.</p>
newtype ConditionalCheckFailedException = ConditionalCheckFailedException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeConditionalCheckFailedException :: Newtype ConditionalCheckFailedException _
derive instance repGenericConditionalCheckFailedException :: Generic ConditionalCheckFailedException _
instance showConditionalCheckFailedException :: Show ConditionalCheckFailedException where
  show = genericShow
instance decodeConditionalCheckFailedException :: Decode ConditionalCheckFailedException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeConditionalCheckFailedException :: Encode ConditionalCheckFailedException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ConditionalCheckFailedException from required parameters
newConditionalCheckFailedException :: ConditionalCheckFailedException
newConditionalCheckFailedException  = ConditionalCheckFailedException { "message": (NullOrUndefined Nothing) }

-- | Constructs ConditionalCheckFailedException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConditionalCheckFailedException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> ConditionalCheckFailedException
newConditionalCheckFailedException'  customize = (ConditionalCheckFailedException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>If set to <code>true</code>, then a consistent read is issued. Otherwise eventually-consistent is used.</p>
newtype ConsistentRead = ConsistentRead Boolean
derive instance newtypeConsistentRead :: Newtype ConsistentRead _
derive instance repGenericConsistentRead :: Generic ConsistentRead _
instance showConsistentRead :: Show ConsistentRead where
  show = genericShow
instance decodeConsistentRead :: Decode ConsistentRead where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeConsistentRead :: Encode ConsistentRead where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The number of Capacity Units of the provisioned throughput of the table consumed during the operation. <code>GetItem</code>, <code>BatchGetItem</code>, <code>BatchWriteItem</code>, <code>Query</code>, and <code>Scan</code> operations consume <code>ReadCapacityUnits</code>, while <code>PutItem</code>, <code>UpdateItem</code>, and <code>DeleteItem</code> operations consume <code>WriteCapacityUnits</code>.</p>
newtype ConsumedCapacityUnits = ConsumedCapacityUnits Number
derive instance newtypeConsumedCapacityUnits :: Newtype ConsumedCapacityUnits _
derive instance repGenericConsumedCapacityUnits :: Generic ConsumedCapacityUnits _
instance showConsumedCapacityUnits :: Show ConsumedCapacityUnits where
  show = genericShow
instance decodeConsumedCapacityUnits :: Decode ConsumedCapacityUnits where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeConsumedCapacityUnits :: Encode ConsumedCapacityUnits where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype CreateTableInput = CreateTableInput 
  { "TableName" :: (TableName)
  , "KeySchema" :: (KeySchema)
  , "ProvisionedThroughput" :: (ProvisionedThroughput)
  }
derive instance newtypeCreateTableInput :: Newtype CreateTableInput _
derive instance repGenericCreateTableInput :: Generic CreateTableInput _
instance showCreateTableInput :: Show CreateTableInput where
  show = genericShow
instance decodeCreateTableInput :: Decode CreateTableInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateTableInput :: Encode CreateTableInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateTableInput from required parameters
newCreateTableInput :: KeySchema -> ProvisionedThroughput -> TableName -> CreateTableInput
newCreateTableInput _KeySchema _ProvisionedThroughput _TableName = CreateTableInput { "KeySchema": _KeySchema, "ProvisionedThroughput": _ProvisionedThroughput, "TableName": _TableName }

-- | Constructs CreateTableInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateTableInput' :: KeySchema -> ProvisionedThroughput -> TableName -> ( { "TableName" :: (TableName) , "KeySchema" :: (KeySchema) , "ProvisionedThroughput" :: (ProvisionedThroughput) } -> {"TableName" :: (TableName) , "KeySchema" :: (KeySchema) , "ProvisionedThroughput" :: (ProvisionedThroughput) } ) -> CreateTableInput
newCreateTableInput' _KeySchema _ProvisionedThroughput _TableName customize = (CreateTableInput <<< customize) { "KeySchema": _KeySchema, "ProvisionedThroughput": _ProvisionedThroughput, "TableName": _TableName }



newtype CreateTableOutput = CreateTableOutput 
  { "TableDescription" :: NullOrUndefined.NullOrUndefined (TableDescription)
  }
derive instance newtypeCreateTableOutput :: Newtype CreateTableOutput _
derive instance repGenericCreateTableOutput :: Generic CreateTableOutput _
instance showCreateTableOutput :: Show CreateTableOutput where
  show = genericShow
instance decodeCreateTableOutput :: Decode CreateTableOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateTableOutput :: Encode CreateTableOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateTableOutput from required parameters
newCreateTableOutput :: CreateTableOutput
newCreateTableOutput  = CreateTableOutput { "TableDescription": (NullOrUndefined Nothing) }

-- | Constructs CreateTableOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateTableOutput' :: ( { "TableDescription" :: NullOrUndefined.NullOrUndefined (TableDescription) } -> {"TableDescription" :: NullOrUndefined.NullOrUndefined (TableDescription) } ) -> CreateTableOutput
newCreateTableOutput'  customize = (CreateTableOutput <<< customize) { "TableDescription": (NullOrUndefined Nothing) }



newtype Date = Date Types.Timestamp
derive instance newtypeDate :: Newtype Date _
derive instance repGenericDate :: Generic Date _
instance showDate :: Show Date where
  show = genericShow
instance decodeDate :: Decode Date where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDate :: Encode Date where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DeleteItemInput = DeleteItemInput 
  { "TableName" :: (TableName)
  , "Key" :: (Key)
  , "Expected" :: NullOrUndefined.NullOrUndefined (ExpectedAttributeMap)
  , "ReturnValues" :: NullOrUndefined.NullOrUndefined (ReturnValue)
  }
derive instance newtypeDeleteItemInput :: Newtype DeleteItemInput _
derive instance repGenericDeleteItemInput :: Generic DeleteItemInput _
instance showDeleteItemInput :: Show DeleteItemInput where
  show = genericShow
instance decodeDeleteItemInput :: Decode DeleteItemInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteItemInput :: Encode DeleteItemInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteItemInput from required parameters
newDeleteItemInput :: Key -> TableName -> DeleteItemInput
newDeleteItemInput _Key _TableName = DeleteItemInput { "Key": _Key, "TableName": _TableName, "Expected": (NullOrUndefined Nothing), "ReturnValues": (NullOrUndefined Nothing) }

-- | Constructs DeleteItemInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteItemInput' :: Key -> TableName -> ( { "TableName" :: (TableName) , "Key" :: (Key) , "Expected" :: NullOrUndefined.NullOrUndefined (ExpectedAttributeMap) , "ReturnValues" :: NullOrUndefined.NullOrUndefined (ReturnValue) } -> {"TableName" :: (TableName) , "Key" :: (Key) , "Expected" :: NullOrUndefined.NullOrUndefined (ExpectedAttributeMap) , "ReturnValues" :: NullOrUndefined.NullOrUndefined (ReturnValue) } ) -> DeleteItemInput
newDeleteItemInput' _Key _TableName customize = (DeleteItemInput <<< customize) { "Key": _Key, "TableName": _TableName, "Expected": (NullOrUndefined Nothing), "ReturnValues": (NullOrUndefined Nothing) }



newtype DeleteItemOutput = DeleteItemOutput 
  { "Attributes" :: NullOrUndefined.NullOrUndefined (AttributeMap)
  , "ConsumedCapacityUnits" :: NullOrUndefined.NullOrUndefined (ConsumedCapacityUnits)
  }
derive instance newtypeDeleteItemOutput :: Newtype DeleteItemOutput _
derive instance repGenericDeleteItemOutput :: Generic DeleteItemOutput _
instance showDeleteItemOutput :: Show DeleteItemOutput where
  show = genericShow
instance decodeDeleteItemOutput :: Decode DeleteItemOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteItemOutput :: Encode DeleteItemOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteItemOutput from required parameters
newDeleteItemOutput :: DeleteItemOutput
newDeleteItemOutput  = DeleteItemOutput { "Attributes": (NullOrUndefined Nothing), "ConsumedCapacityUnits": (NullOrUndefined Nothing) }

-- | Constructs DeleteItemOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteItemOutput' :: ( { "Attributes" :: NullOrUndefined.NullOrUndefined (AttributeMap) , "ConsumedCapacityUnits" :: NullOrUndefined.NullOrUndefined (ConsumedCapacityUnits) } -> {"Attributes" :: NullOrUndefined.NullOrUndefined (AttributeMap) , "ConsumedCapacityUnits" :: NullOrUndefined.NullOrUndefined (ConsumedCapacityUnits) } ) -> DeleteItemOutput
newDeleteItemOutput'  customize = (DeleteItemOutput <<< customize) { "Attributes": (NullOrUndefined Nothing), "ConsumedCapacityUnits": (NullOrUndefined Nothing) }



-- | <p>A container for a Delete BatchWrite request</p>
newtype DeleteRequest = DeleteRequest 
  { "Key" :: (Key)
  }
derive instance newtypeDeleteRequest :: Newtype DeleteRequest _
derive instance repGenericDeleteRequest :: Generic DeleteRequest _
instance showDeleteRequest :: Show DeleteRequest where
  show = genericShow
instance decodeDeleteRequest :: Decode DeleteRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteRequest :: Encode DeleteRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteRequest from required parameters
newDeleteRequest :: Key -> DeleteRequest
newDeleteRequest _Key = DeleteRequest { "Key": _Key }

-- | Constructs DeleteRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteRequest' :: Key -> ( { "Key" :: (Key) } -> {"Key" :: (Key) } ) -> DeleteRequest
newDeleteRequest' _Key customize = (DeleteRequest <<< customize) { "Key": _Key }



newtype DeleteTableInput = DeleteTableInput 
  { "TableName" :: (TableName)
  }
derive instance newtypeDeleteTableInput :: Newtype DeleteTableInput _
derive instance repGenericDeleteTableInput :: Generic DeleteTableInput _
instance showDeleteTableInput :: Show DeleteTableInput where
  show = genericShow
instance decodeDeleteTableInput :: Decode DeleteTableInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteTableInput :: Encode DeleteTableInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteTableInput from required parameters
newDeleteTableInput :: TableName -> DeleteTableInput
newDeleteTableInput _TableName = DeleteTableInput { "TableName": _TableName }

-- | Constructs DeleteTableInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteTableInput' :: TableName -> ( { "TableName" :: (TableName) } -> {"TableName" :: (TableName) } ) -> DeleteTableInput
newDeleteTableInput' _TableName customize = (DeleteTableInput <<< customize) { "TableName": _TableName }



newtype DeleteTableOutput = DeleteTableOutput 
  { "TableDescription" :: NullOrUndefined.NullOrUndefined (TableDescription)
  }
derive instance newtypeDeleteTableOutput :: Newtype DeleteTableOutput _
derive instance repGenericDeleteTableOutput :: Generic DeleteTableOutput _
instance showDeleteTableOutput :: Show DeleteTableOutput where
  show = genericShow
instance decodeDeleteTableOutput :: Decode DeleteTableOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteTableOutput :: Encode DeleteTableOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteTableOutput from required parameters
newDeleteTableOutput :: DeleteTableOutput
newDeleteTableOutput  = DeleteTableOutput { "TableDescription": (NullOrUndefined Nothing) }

-- | Constructs DeleteTableOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteTableOutput' :: ( { "TableDescription" :: NullOrUndefined.NullOrUndefined (TableDescription) } -> {"TableDescription" :: NullOrUndefined.NullOrUndefined (TableDescription) } ) -> DeleteTableOutput
newDeleteTableOutput'  customize = (DeleteTableOutput <<< customize) { "TableDescription": (NullOrUndefined Nothing) }



newtype DescribeTableInput = DescribeTableInput 
  { "TableName" :: (TableName)
  }
derive instance newtypeDescribeTableInput :: Newtype DescribeTableInput _
derive instance repGenericDescribeTableInput :: Generic DescribeTableInput _
instance showDescribeTableInput :: Show DescribeTableInput where
  show = genericShow
instance decodeDescribeTableInput :: Decode DescribeTableInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeTableInput :: Encode DescribeTableInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeTableInput from required parameters
newDescribeTableInput :: TableName -> DescribeTableInput
newDescribeTableInput _TableName = DescribeTableInput { "TableName": _TableName }

-- | Constructs DescribeTableInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeTableInput' :: TableName -> ( { "TableName" :: (TableName) } -> {"TableName" :: (TableName) } ) -> DescribeTableInput
newDescribeTableInput' _TableName customize = (DescribeTableInput <<< customize) { "TableName": _TableName }



newtype DescribeTableOutput = DescribeTableOutput 
  { "Table" :: NullOrUndefined.NullOrUndefined (TableDescription)
  }
derive instance newtypeDescribeTableOutput :: Newtype DescribeTableOutput _
derive instance repGenericDescribeTableOutput :: Generic DescribeTableOutput _
instance showDescribeTableOutput :: Show DescribeTableOutput where
  show = genericShow
instance decodeDescribeTableOutput :: Decode DescribeTableOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeTableOutput :: Encode DescribeTableOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeTableOutput from required parameters
newDescribeTableOutput :: DescribeTableOutput
newDescribeTableOutput  = DescribeTableOutput { "Table": (NullOrUndefined Nothing) }

-- | Constructs DescribeTableOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeTableOutput' :: ( { "Table" :: NullOrUndefined.NullOrUndefined (TableDescription) } -> {"Table" :: NullOrUndefined.NullOrUndefined (TableDescription) } ) -> DescribeTableOutput
newDescribeTableOutput'  customize = (DescribeTableOutput <<< customize) { "Table": (NullOrUndefined Nothing) }



newtype ErrorMessage = ErrorMessage String
derive instance newtypeErrorMessage :: Newtype ErrorMessage _
derive instance repGenericErrorMessage :: Generic ErrorMessage _
instance showErrorMessage :: Show ErrorMessage where
  show = genericShow
instance decodeErrorMessage :: Decode ErrorMessage where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeErrorMessage :: Encode ErrorMessage where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Designates an attribute for a conditional modification. The <code>Expected</code> parameter allows you to provide an attribute name, and whether or not Amazon DynamoDB should check to see if the attribute has a particular value before modifying it.</p>
newtype ExpectedAttributeMap = ExpectedAttributeMap (StrMap.StrMap ExpectedAttributeValue)
derive instance newtypeExpectedAttributeMap :: Newtype ExpectedAttributeMap _
derive instance repGenericExpectedAttributeMap :: Generic ExpectedAttributeMap _
instance showExpectedAttributeMap :: Show ExpectedAttributeMap where
  show = genericShow
instance decodeExpectedAttributeMap :: Decode ExpectedAttributeMap where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeExpectedAttributeMap :: Encode ExpectedAttributeMap where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Allows you to provide an attribute name, and whether or not Amazon DynamoDB should check to see if the attribute value already exists; or if the attribute value exists and has a particular value before changing it.</p>
newtype ExpectedAttributeValue = ExpectedAttributeValue 
  { "Value" :: NullOrUndefined.NullOrUndefined (AttributeValue)
  , "Exists" :: NullOrUndefined.NullOrUndefined (BooleanObject)
  }
derive instance newtypeExpectedAttributeValue :: Newtype ExpectedAttributeValue _
derive instance repGenericExpectedAttributeValue :: Generic ExpectedAttributeValue _
instance showExpectedAttributeValue :: Show ExpectedAttributeValue where
  show = genericShow
instance decodeExpectedAttributeValue :: Decode ExpectedAttributeValue where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeExpectedAttributeValue :: Encode ExpectedAttributeValue where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ExpectedAttributeValue from required parameters
newExpectedAttributeValue :: ExpectedAttributeValue
newExpectedAttributeValue  = ExpectedAttributeValue { "Exists": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }

-- | Constructs ExpectedAttributeValue's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExpectedAttributeValue' :: ( { "Value" :: NullOrUndefined.NullOrUndefined (AttributeValue) , "Exists" :: NullOrUndefined.NullOrUndefined (BooleanObject) } -> {"Value" :: NullOrUndefined.NullOrUndefined (AttributeValue) , "Exists" :: NullOrUndefined.NullOrUndefined (BooleanObject) } ) -> ExpectedAttributeValue
newExpectedAttributeValue'  customize = (ExpectedAttributeValue <<< customize) { "Exists": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }



newtype FilterConditionMap = FilterConditionMap (StrMap.StrMap Condition)
derive instance newtypeFilterConditionMap :: Newtype FilterConditionMap _
derive instance repGenericFilterConditionMap :: Generic FilterConditionMap _
instance showFilterConditionMap :: Show FilterConditionMap where
  show = genericShow
instance decodeFilterConditionMap :: Decode FilterConditionMap where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeFilterConditionMap :: Encode FilterConditionMap where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype GetItemInput = GetItemInput 
  { "TableName" :: (TableName)
  , "Key" :: (Key)
  , "AttributesToGet" :: NullOrUndefined.NullOrUndefined (AttributeNameList)
  , "ConsistentRead" :: NullOrUndefined.NullOrUndefined (ConsistentRead)
  }
derive instance newtypeGetItemInput :: Newtype GetItemInput _
derive instance repGenericGetItemInput :: Generic GetItemInput _
instance showGetItemInput :: Show GetItemInput where
  show = genericShow
instance decodeGetItemInput :: Decode GetItemInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetItemInput :: Encode GetItemInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetItemInput from required parameters
newGetItemInput :: Key -> TableName -> GetItemInput
newGetItemInput _Key _TableName = GetItemInput { "Key": _Key, "TableName": _TableName, "AttributesToGet": (NullOrUndefined Nothing), "ConsistentRead": (NullOrUndefined Nothing) }

-- | Constructs GetItemInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetItemInput' :: Key -> TableName -> ( { "TableName" :: (TableName) , "Key" :: (Key) , "AttributesToGet" :: NullOrUndefined.NullOrUndefined (AttributeNameList) , "ConsistentRead" :: NullOrUndefined.NullOrUndefined (ConsistentRead) } -> {"TableName" :: (TableName) , "Key" :: (Key) , "AttributesToGet" :: NullOrUndefined.NullOrUndefined (AttributeNameList) , "ConsistentRead" :: NullOrUndefined.NullOrUndefined (ConsistentRead) } ) -> GetItemInput
newGetItemInput' _Key _TableName customize = (GetItemInput <<< customize) { "Key": _Key, "TableName": _TableName, "AttributesToGet": (NullOrUndefined Nothing), "ConsistentRead": (NullOrUndefined Nothing) }



newtype GetItemOutput = GetItemOutput 
  { "Item" :: NullOrUndefined.NullOrUndefined (AttributeMap)
  , "ConsumedCapacityUnits" :: NullOrUndefined.NullOrUndefined (ConsumedCapacityUnits)
  }
derive instance newtypeGetItemOutput :: Newtype GetItemOutput _
derive instance repGenericGetItemOutput :: Generic GetItemOutput _
instance showGetItemOutput :: Show GetItemOutput where
  show = genericShow
instance decodeGetItemOutput :: Decode GetItemOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetItemOutput :: Encode GetItemOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetItemOutput from required parameters
newGetItemOutput :: GetItemOutput
newGetItemOutput  = GetItemOutput { "ConsumedCapacityUnits": (NullOrUndefined Nothing), "Item": (NullOrUndefined Nothing) }

-- | Constructs GetItemOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetItemOutput' :: ( { "Item" :: NullOrUndefined.NullOrUndefined (AttributeMap) , "ConsumedCapacityUnits" :: NullOrUndefined.NullOrUndefined (ConsumedCapacityUnits) } -> {"Item" :: NullOrUndefined.NullOrUndefined (AttributeMap) , "ConsumedCapacityUnits" :: NullOrUndefined.NullOrUndefined (ConsumedCapacityUnits) } ) -> GetItemOutput
newGetItemOutput'  customize = (GetItemOutput <<< customize) { "ConsumedCapacityUnits": (NullOrUndefined Nothing), "Item": (NullOrUndefined Nothing) }



-- | <p>This exception is thrown when the service has a problem when trying to process the request.</p>
newtype InternalServerError = InternalServerError 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeInternalServerError :: Newtype InternalServerError _
derive instance repGenericInternalServerError :: Generic InternalServerError _
instance showInternalServerError :: Show InternalServerError where
  show = genericShow
instance decodeInternalServerError :: Decode InternalServerError where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInternalServerError :: Encode InternalServerError where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InternalServerError from required parameters
newInternalServerError :: InternalServerError
newInternalServerError  = InternalServerError { "message": (NullOrUndefined Nothing) }

-- | Constructs InternalServerError's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInternalServerError' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> InternalServerError
newInternalServerError'  customize = (InternalServerError <<< customize) { "message": (NullOrUndefined Nothing) }



newtype ItemList = ItemList (Array AttributeMap)
derive instance newtypeItemList :: Newtype ItemList _
derive instance repGenericItemList :: Generic ItemList _
instance showItemList :: Show ItemList where
  show = genericShow
instance decodeItemList :: Decode ItemList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeItemList :: Encode ItemList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The primary key that uniquely identifies each item in a table. A primary key can be a one attribute (hash) primary key or a two attribute (hash-and-range) primary key.</p>
newtype Key = Key 
  { "HashKeyElement" :: (AttributeValue)
  , "RangeKeyElement" :: NullOrUndefined.NullOrUndefined (AttributeValue)
  }
derive instance newtypeKey :: Newtype Key _
derive instance repGenericKey :: Generic Key _
instance showKey :: Show Key where
  show = genericShow
instance decodeKey :: Decode Key where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeKey :: Encode Key where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Key from required parameters
newKey :: AttributeValue -> Key
newKey _HashKeyElement = Key { "HashKeyElement": _HashKeyElement, "RangeKeyElement": (NullOrUndefined Nothing) }

-- | Constructs Key's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKey' :: AttributeValue -> ( { "HashKeyElement" :: (AttributeValue) , "RangeKeyElement" :: NullOrUndefined.NullOrUndefined (AttributeValue) } -> {"HashKeyElement" :: (AttributeValue) , "RangeKeyElement" :: NullOrUndefined.NullOrUndefined (AttributeValue) } ) -> Key
newKey' _HashKeyElement customize = (Key <<< customize) { "HashKeyElement": _HashKeyElement, "RangeKeyElement": (NullOrUndefined Nothing) }



newtype KeyList = KeyList (Array Key)
derive instance newtypeKeyList :: Newtype KeyList _
derive instance repGenericKeyList :: Generic KeyList _
instance showKeyList :: Show KeyList where
  show = genericShow
instance decodeKeyList :: Decode KeyList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeKeyList :: Encode KeyList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The KeySchema identifies the primary key as a one attribute primary key (hash) or a composite two attribute (hash-and-range) primary key. Single attribute primary keys have one index value: a <code>HashKeyElement</code>. A composite hash-and-range primary key contains two attribute values: a <code>HashKeyElement</code> and a <code>RangeKeyElement</code>.</p>
newtype KeySchema = KeySchema 
  { "HashKeyElement" :: (KeySchemaElement)
  , "RangeKeyElement" :: NullOrUndefined.NullOrUndefined (KeySchemaElement)
  }
derive instance newtypeKeySchema :: Newtype KeySchema _
derive instance repGenericKeySchema :: Generic KeySchema _
instance showKeySchema :: Show KeySchema where
  show = genericShow
instance decodeKeySchema :: Decode KeySchema where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeKeySchema :: Encode KeySchema where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs KeySchema from required parameters
newKeySchema :: KeySchemaElement -> KeySchema
newKeySchema _HashKeyElement = KeySchema { "HashKeyElement": _HashKeyElement, "RangeKeyElement": (NullOrUndefined Nothing) }

-- | Constructs KeySchema's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKeySchema' :: KeySchemaElement -> ( { "HashKeyElement" :: (KeySchemaElement) , "RangeKeyElement" :: NullOrUndefined.NullOrUndefined (KeySchemaElement) } -> {"HashKeyElement" :: (KeySchemaElement) , "RangeKeyElement" :: NullOrUndefined.NullOrUndefined (KeySchemaElement) } ) -> KeySchema
newKeySchema' _HashKeyElement customize = (KeySchema <<< customize) { "HashKeyElement": _HashKeyElement, "RangeKeyElement": (NullOrUndefined Nothing) }



newtype KeySchemaAttributeName = KeySchemaAttributeName String
derive instance newtypeKeySchemaAttributeName :: Newtype KeySchemaAttributeName _
derive instance repGenericKeySchemaAttributeName :: Generic KeySchemaAttributeName _
instance showKeySchemaAttributeName :: Show KeySchemaAttributeName where
  show = genericShow
instance decodeKeySchemaAttributeName :: Decode KeySchemaAttributeName where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeKeySchemaAttributeName :: Encode KeySchemaAttributeName where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p><code>KeySchemaElement</code> is the primary key (hash or hash-and-range) structure for the table.</p>
newtype KeySchemaElement = KeySchemaElement 
  { "AttributeName" :: (KeySchemaAttributeName)
  , "AttributeType" :: (ScalarAttributeType)
  }
derive instance newtypeKeySchemaElement :: Newtype KeySchemaElement _
derive instance repGenericKeySchemaElement :: Generic KeySchemaElement _
instance showKeySchemaElement :: Show KeySchemaElement where
  show = genericShow
instance decodeKeySchemaElement :: Decode KeySchemaElement where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeKeySchemaElement :: Encode KeySchemaElement where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs KeySchemaElement from required parameters
newKeySchemaElement :: KeySchemaAttributeName -> ScalarAttributeType -> KeySchemaElement
newKeySchemaElement _AttributeName _AttributeType = KeySchemaElement { "AttributeName": _AttributeName, "AttributeType": _AttributeType }

-- | Constructs KeySchemaElement's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKeySchemaElement' :: KeySchemaAttributeName -> ScalarAttributeType -> ( { "AttributeName" :: (KeySchemaAttributeName) , "AttributeType" :: (ScalarAttributeType) } -> {"AttributeName" :: (KeySchemaAttributeName) , "AttributeType" :: (ScalarAttributeType) } ) -> KeySchemaElement
newKeySchemaElement' _AttributeName _AttributeType customize = (KeySchemaElement <<< customize) { "AttributeName": _AttributeName, "AttributeType": _AttributeType }



newtype KeysAndAttributes = KeysAndAttributes 
  { "Keys" :: (KeyList)
  , "AttributesToGet" :: NullOrUndefined.NullOrUndefined (AttributeNameList)
  , "ConsistentRead" :: NullOrUndefined.NullOrUndefined (ConsistentRead)
  }
derive instance newtypeKeysAndAttributes :: Newtype KeysAndAttributes _
derive instance repGenericKeysAndAttributes :: Generic KeysAndAttributes _
instance showKeysAndAttributes :: Show KeysAndAttributes where
  show = genericShow
instance decodeKeysAndAttributes :: Decode KeysAndAttributes where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeKeysAndAttributes :: Encode KeysAndAttributes where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs KeysAndAttributes from required parameters
newKeysAndAttributes :: KeyList -> KeysAndAttributes
newKeysAndAttributes _Keys = KeysAndAttributes { "Keys": _Keys, "AttributesToGet": (NullOrUndefined Nothing), "ConsistentRead": (NullOrUndefined Nothing) }

-- | Constructs KeysAndAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKeysAndAttributes' :: KeyList -> ( { "Keys" :: (KeyList) , "AttributesToGet" :: NullOrUndefined.NullOrUndefined (AttributeNameList) , "ConsistentRead" :: NullOrUndefined.NullOrUndefined (ConsistentRead) } -> {"Keys" :: (KeyList) , "AttributesToGet" :: NullOrUndefined.NullOrUndefined (AttributeNameList) , "ConsistentRead" :: NullOrUndefined.NullOrUndefined (ConsistentRead) } ) -> KeysAndAttributes
newKeysAndAttributes' _Keys customize = (KeysAndAttributes <<< customize) { "Keys": _Keys, "AttributesToGet": (NullOrUndefined Nothing), "ConsistentRead": (NullOrUndefined Nothing) }



-- | <p>This exception is thrown when the subscriber exceeded the limits on the number of objects or operations.</p>
newtype LimitExceededException = LimitExceededException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeLimitExceededException :: Newtype LimitExceededException _
derive instance repGenericLimitExceededException :: Generic LimitExceededException _
instance showLimitExceededException :: Show LimitExceededException where
  show = genericShow
instance decodeLimitExceededException :: Decode LimitExceededException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLimitExceededException :: Encode LimitExceededException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs LimitExceededException from required parameters
newLimitExceededException :: LimitExceededException
newLimitExceededException  = LimitExceededException { "message": (NullOrUndefined Nothing) }

-- | Constructs LimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLimitExceededException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> LimitExceededException
newLimitExceededException'  customize = (LimitExceededException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype ListTablesInput = ListTablesInput 
  { "ExclusiveStartTableName" :: NullOrUndefined.NullOrUndefined (TableName)
  , "Limit" :: NullOrUndefined.NullOrUndefined (ListTablesInputLimit)
  }
derive instance newtypeListTablesInput :: Newtype ListTablesInput _
derive instance repGenericListTablesInput :: Generic ListTablesInput _
instance showListTablesInput :: Show ListTablesInput where
  show = genericShow
instance decodeListTablesInput :: Decode ListTablesInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListTablesInput :: Encode ListTablesInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListTablesInput from required parameters
newListTablesInput :: ListTablesInput
newListTablesInput  = ListTablesInput { "ExclusiveStartTableName": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing) }

-- | Constructs ListTablesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTablesInput' :: ( { "ExclusiveStartTableName" :: NullOrUndefined.NullOrUndefined (TableName) , "Limit" :: NullOrUndefined.NullOrUndefined (ListTablesInputLimit) } -> {"ExclusiveStartTableName" :: NullOrUndefined.NullOrUndefined (TableName) , "Limit" :: NullOrUndefined.NullOrUndefined (ListTablesInputLimit) } ) -> ListTablesInput
newListTablesInput'  customize = (ListTablesInput <<< customize) { "ExclusiveStartTableName": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing) }



-- | <p>A number of maximum table names to return.</p>
newtype ListTablesInputLimit = ListTablesInputLimit Int
derive instance newtypeListTablesInputLimit :: Newtype ListTablesInputLimit _
derive instance repGenericListTablesInputLimit :: Generic ListTablesInputLimit _
instance showListTablesInputLimit :: Show ListTablesInputLimit where
  show = genericShow
instance decodeListTablesInputLimit :: Decode ListTablesInputLimit where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListTablesInputLimit :: Encode ListTablesInputLimit where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ListTablesOutput = ListTablesOutput 
  { "TableNames" :: NullOrUndefined.NullOrUndefined (TableNameList)
  , "LastEvaluatedTableName" :: NullOrUndefined.NullOrUndefined (TableName)
  }
derive instance newtypeListTablesOutput :: Newtype ListTablesOutput _
derive instance repGenericListTablesOutput :: Generic ListTablesOutput _
instance showListTablesOutput :: Show ListTablesOutput where
  show = genericShow
instance decodeListTablesOutput :: Decode ListTablesOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListTablesOutput :: Encode ListTablesOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListTablesOutput from required parameters
newListTablesOutput :: ListTablesOutput
newListTablesOutput  = ListTablesOutput { "LastEvaluatedTableName": (NullOrUndefined Nothing), "TableNames": (NullOrUndefined Nothing) }

-- | Constructs ListTablesOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTablesOutput' :: ( { "TableNames" :: NullOrUndefined.NullOrUndefined (TableNameList) , "LastEvaluatedTableName" :: NullOrUndefined.NullOrUndefined (TableName) } -> {"TableNames" :: NullOrUndefined.NullOrUndefined (TableNameList) , "LastEvaluatedTableName" :: NullOrUndefined.NullOrUndefined (TableName) } ) -> ListTablesOutput
newListTablesOutput'  customize = (ListTablesOutput <<< customize) { "LastEvaluatedTableName": (NullOrUndefined Nothing), "TableNames": (NullOrUndefined Nothing) }



newtype NumberAttributeValue = NumberAttributeValue String
derive instance newtypeNumberAttributeValue :: Newtype NumberAttributeValue _
derive instance repGenericNumberAttributeValue :: Generic NumberAttributeValue _
instance showNumberAttributeValue :: Show NumberAttributeValue where
  show = genericShow
instance decodeNumberAttributeValue :: Decode NumberAttributeValue where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNumberAttributeValue :: Encode NumberAttributeValue where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype NumberSetAttributeValue = NumberSetAttributeValue (Array NumberAttributeValue)
derive instance newtypeNumberSetAttributeValue :: Newtype NumberSetAttributeValue _
derive instance repGenericNumberSetAttributeValue :: Generic NumberSetAttributeValue _
instance showNumberSetAttributeValue :: Show NumberSetAttributeValue where
  show = genericShow
instance decodeNumberSetAttributeValue :: Decode NumberSetAttributeValue where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNumberSetAttributeValue :: Encode NumberSetAttributeValue where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PositiveIntegerObject = PositiveIntegerObject Int
derive instance newtypePositiveIntegerObject :: Newtype PositiveIntegerObject _
derive instance repGenericPositiveIntegerObject :: Generic PositiveIntegerObject _
instance showPositiveIntegerObject :: Show PositiveIntegerObject where
  show = genericShow
instance decodePositiveIntegerObject :: Decode PositiveIntegerObject where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePositiveIntegerObject :: Encode PositiveIntegerObject where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PositiveLongObject = PositiveLongObject Number
derive instance newtypePositiveLongObject :: Newtype PositiveLongObject _
derive instance repGenericPositiveLongObject :: Generic PositiveLongObject _
instance showPositiveLongObject :: Show PositiveLongObject where
  show = genericShow
instance decodePositiveLongObject :: Decode PositiveLongObject where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePositiveLongObject :: Encode PositiveLongObject where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Provisioned throughput reserves the required read and write resources for your table in terms of <code>ReadCapacityUnits</code> and <code>WriteCapacityUnits</code>. Values for provisioned throughput depend upon your expected read/write rates, item size, and consistency. Provide the expected number of read and write operations, assuming an item size of 1k and strictly consistent reads. For 2k item size, double the value. For 3k, triple the value, etc. Eventually-consistent reads consume half the resources of strictly consistent reads.</p>
newtype ProvisionedThroughput = ProvisionedThroughput 
  { "ReadCapacityUnits" :: (PositiveLongObject)
  , "WriteCapacityUnits" :: (PositiveLongObject)
  }
derive instance newtypeProvisionedThroughput :: Newtype ProvisionedThroughput _
derive instance repGenericProvisionedThroughput :: Generic ProvisionedThroughput _
instance showProvisionedThroughput :: Show ProvisionedThroughput where
  show = genericShow
instance decodeProvisionedThroughput :: Decode ProvisionedThroughput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeProvisionedThroughput :: Encode ProvisionedThroughput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ProvisionedThroughput from required parameters
newProvisionedThroughput :: PositiveLongObject -> PositiveLongObject -> ProvisionedThroughput
newProvisionedThroughput _ReadCapacityUnits _WriteCapacityUnits = ProvisionedThroughput { "ReadCapacityUnits": _ReadCapacityUnits, "WriteCapacityUnits": _WriteCapacityUnits }

-- | Constructs ProvisionedThroughput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newProvisionedThroughput' :: PositiveLongObject -> PositiveLongObject -> ( { "ReadCapacityUnits" :: (PositiveLongObject) , "WriteCapacityUnits" :: (PositiveLongObject) } -> {"ReadCapacityUnits" :: (PositiveLongObject) , "WriteCapacityUnits" :: (PositiveLongObject) } ) -> ProvisionedThroughput
newProvisionedThroughput' _ReadCapacityUnits _WriteCapacityUnits customize = (ProvisionedThroughput <<< customize) { "ReadCapacityUnits": _ReadCapacityUnits, "WriteCapacityUnits": _WriteCapacityUnits }



newtype ProvisionedThroughputDescription = ProvisionedThroughputDescription 
  { "LastIncreaseDateTime" :: NullOrUndefined.NullOrUndefined (Date)
  , "LastDecreaseDateTime" :: NullOrUndefined.NullOrUndefined (Date)
  , "NumberOfDecreasesToday" :: NullOrUndefined.NullOrUndefined (PositiveLongObject)
  , "ReadCapacityUnits" :: NullOrUndefined.NullOrUndefined (PositiveLongObject)
  , "WriteCapacityUnits" :: NullOrUndefined.NullOrUndefined (PositiveLongObject)
  }
derive instance newtypeProvisionedThroughputDescription :: Newtype ProvisionedThroughputDescription _
derive instance repGenericProvisionedThroughputDescription :: Generic ProvisionedThroughputDescription _
instance showProvisionedThroughputDescription :: Show ProvisionedThroughputDescription where
  show = genericShow
instance decodeProvisionedThroughputDescription :: Decode ProvisionedThroughputDescription where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeProvisionedThroughputDescription :: Encode ProvisionedThroughputDescription where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ProvisionedThroughputDescription from required parameters
newProvisionedThroughputDescription :: ProvisionedThroughputDescription
newProvisionedThroughputDescription  = ProvisionedThroughputDescription { "LastDecreaseDateTime": (NullOrUndefined Nothing), "LastIncreaseDateTime": (NullOrUndefined Nothing), "NumberOfDecreasesToday": (NullOrUndefined Nothing), "ReadCapacityUnits": (NullOrUndefined Nothing), "WriteCapacityUnits": (NullOrUndefined Nothing) }

-- | Constructs ProvisionedThroughputDescription's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newProvisionedThroughputDescription' :: ( { "LastIncreaseDateTime" :: NullOrUndefined.NullOrUndefined (Date) , "LastDecreaseDateTime" :: NullOrUndefined.NullOrUndefined (Date) , "NumberOfDecreasesToday" :: NullOrUndefined.NullOrUndefined (PositiveLongObject) , "ReadCapacityUnits" :: NullOrUndefined.NullOrUndefined (PositiveLongObject) , "WriteCapacityUnits" :: NullOrUndefined.NullOrUndefined (PositiveLongObject) } -> {"LastIncreaseDateTime" :: NullOrUndefined.NullOrUndefined (Date) , "LastDecreaseDateTime" :: NullOrUndefined.NullOrUndefined (Date) , "NumberOfDecreasesToday" :: NullOrUndefined.NullOrUndefined (PositiveLongObject) , "ReadCapacityUnits" :: NullOrUndefined.NullOrUndefined (PositiveLongObject) , "WriteCapacityUnits" :: NullOrUndefined.NullOrUndefined (PositiveLongObject) } ) -> ProvisionedThroughputDescription
newProvisionedThroughputDescription'  customize = (ProvisionedThroughputDescription <<< customize) { "LastDecreaseDateTime": (NullOrUndefined Nothing), "LastIncreaseDateTime": (NullOrUndefined Nothing), "NumberOfDecreasesToday": (NullOrUndefined Nothing), "ReadCapacityUnits": (NullOrUndefined Nothing), "WriteCapacityUnits": (NullOrUndefined Nothing) }



-- | <p>This exception is thrown when the level of provisioned throughput defined for the table is exceeded.</p>
newtype ProvisionedThroughputExceededException = ProvisionedThroughputExceededException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeProvisionedThroughputExceededException :: Newtype ProvisionedThroughputExceededException _
derive instance repGenericProvisionedThroughputExceededException :: Generic ProvisionedThroughputExceededException _
instance showProvisionedThroughputExceededException :: Show ProvisionedThroughputExceededException where
  show = genericShow
instance decodeProvisionedThroughputExceededException :: Decode ProvisionedThroughputExceededException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeProvisionedThroughputExceededException :: Encode ProvisionedThroughputExceededException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ProvisionedThroughputExceededException from required parameters
newProvisionedThroughputExceededException :: ProvisionedThroughputExceededException
newProvisionedThroughputExceededException  = ProvisionedThroughputExceededException { "message": (NullOrUndefined Nothing) }

-- | Constructs ProvisionedThroughputExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newProvisionedThroughputExceededException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> ProvisionedThroughputExceededException
newProvisionedThroughputExceededException'  customize = (ProvisionedThroughputExceededException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype PutItemInput = PutItemInput 
  { "TableName" :: (TableName)
  , "Item" :: (PutItemInputAttributeMap)
  , "Expected" :: NullOrUndefined.NullOrUndefined (ExpectedAttributeMap)
  , "ReturnValues" :: NullOrUndefined.NullOrUndefined (ReturnValue)
  }
derive instance newtypePutItemInput :: Newtype PutItemInput _
derive instance repGenericPutItemInput :: Generic PutItemInput _
instance showPutItemInput :: Show PutItemInput where
  show = genericShow
instance decodePutItemInput :: Decode PutItemInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePutItemInput :: Encode PutItemInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs PutItemInput from required parameters
newPutItemInput :: PutItemInputAttributeMap -> TableName -> PutItemInput
newPutItemInput _Item _TableName = PutItemInput { "Item": _Item, "TableName": _TableName, "Expected": (NullOrUndefined Nothing), "ReturnValues": (NullOrUndefined Nothing) }

-- | Constructs PutItemInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutItemInput' :: PutItemInputAttributeMap -> TableName -> ( { "TableName" :: (TableName) , "Item" :: (PutItemInputAttributeMap) , "Expected" :: NullOrUndefined.NullOrUndefined (ExpectedAttributeMap) , "ReturnValues" :: NullOrUndefined.NullOrUndefined (ReturnValue) } -> {"TableName" :: (TableName) , "Item" :: (PutItemInputAttributeMap) , "Expected" :: NullOrUndefined.NullOrUndefined (ExpectedAttributeMap) , "ReturnValues" :: NullOrUndefined.NullOrUndefined (ReturnValue) } ) -> PutItemInput
newPutItemInput' _Item _TableName customize = (PutItemInput <<< customize) { "Item": _Item, "TableName": _TableName, "Expected": (NullOrUndefined Nothing), "ReturnValues": (NullOrUndefined Nothing) }



-- | <p>A map of the attributes for the item, and must include the primary key values that define the item. Other attribute name-value pairs can be provided for the item.</p>
newtype PutItemInputAttributeMap = PutItemInputAttributeMap (StrMap.StrMap AttributeValue)
derive instance newtypePutItemInputAttributeMap :: Newtype PutItemInputAttributeMap _
derive instance repGenericPutItemInputAttributeMap :: Generic PutItemInputAttributeMap _
instance showPutItemInputAttributeMap :: Show PutItemInputAttributeMap where
  show = genericShow
instance decodePutItemInputAttributeMap :: Decode PutItemInputAttributeMap where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePutItemInputAttributeMap :: Encode PutItemInputAttributeMap where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PutItemOutput = PutItemOutput 
  { "Attributes" :: NullOrUndefined.NullOrUndefined (AttributeMap)
  , "ConsumedCapacityUnits" :: NullOrUndefined.NullOrUndefined (ConsumedCapacityUnits)
  }
derive instance newtypePutItemOutput :: Newtype PutItemOutput _
derive instance repGenericPutItemOutput :: Generic PutItemOutput _
instance showPutItemOutput :: Show PutItemOutput where
  show = genericShow
instance decodePutItemOutput :: Decode PutItemOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePutItemOutput :: Encode PutItemOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs PutItemOutput from required parameters
newPutItemOutput :: PutItemOutput
newPutItemOutput  = PutItemOutput { "Attributes": (NullOrUndefined Nothing), "ConsumedCapacityUnits": (NullOrUndefined Nothing) }

-- | Constructs PutItemOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutItemOutput' :: ( { "Attributes" :: NullOrUndefined.NullOrUndefined (AttributeMap) , "ConsumedCapacityUnits" :: NullOrUndefined.NullOrUndefined (ConsumedCapacityUnits) } -> {"Attributes" :: NullOrUndefined.NullOrUndefined (AttributeMap) , "ConsumedCapacityUnits" :: NullOrUndefined.NullOrUndefined (ConsumedCapacityUnits) } ) -> PutItemOutput
newPutItemOutput'  customize = (PutItemOutput <<< customize) { "Attributes": (NullOrUndefined Nothing), "ConsumedCapacityUnits": (NullOrUndefined Nothing) }



-- | <p>A container for a Put BatchWrite request</p>
newtype PutRequest = PutRequest 
  { "Item" :: (PutItemInputAttributeMap)
  }
derive instance newtypePutRequest :: Newtype PutRequest _
derive instance repGenericPutRequest :: Generic PutRequest _
instance showPutRequest :: Show PutRequest where
  show = genericShow
instance decodePutRequest :: Decode PutRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePutRequest :: Encode PutRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs PutRequest from required parameters
newPutRequest :: PutItemInputAttributeMap -> PutRequest
newPutRequest _Item = PutRequest { "Item": _Item }

-- | Constructs PutRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutRequest' :: PutItemInputAttributeMap -> ( { "Item" :: (PutItemInputAttributeMap) } -> {"Item" :: (PutItemInputAttributeMap) } ) -> PutRequest
newPutRequest' _Item customize = (PutRequest <<< customize) { "Item": _Item }



newtype QueryInput = QueryInput 
  { "TableName" :: (TableName)
  , "AttributesToGet" :: NullOrUndefined.NullOrUndefined (AttributeNameList)
  , "Limit" :: NullOrUndefined.NullOrUndefined (PositiveIntegerObject)
  , "ConsistentRead" :: NullOrUndefined.NullOrUndefined (ConsistentRead)
  , "Count" :: NullOrUndefined.NullOrUndefined (BooleanObject)
  , "HashKeyValue" :: (AttributeValue)
  , "RangeKeyCondition" :: NullOrUndefined.NullOrUndefined (Condition)
  , "ScanIndexForward" :: NullOrUndefined.NullOrUndefined (BooleanObject)
  , "ExclusiveStartKey" :: NullOrUndefined.NullOrUndefined (Key)
  }
derive instance newtypeQueryInput :: Newtype QueryInput _
derive instance repGenericQueryInput :: Generic QueryInput _
instance showQueryInput :: Show QueryInput where
  show = genericShow
instance decodeQueryInput :: Decode QueryInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeQueryInput :: Encode QueryInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs QueryInput from required parameters
newQueryInput :: AttributeValue -> TableName -> QueryInput
newQueryInput _HashKeyValue _TableName = QueryInput { "HashKeyValue": _HashKeyValue, "TableName": _TableName, "AttributesToGet": (NullOrUndefined Nothing), "ConsistentRead": (NullOrUndefined Nothing), "Count": (NullOrUndefined Nothing), "ExclusiveStartKey": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing), "RangeKeyCondition": (NullOrUndefined Nothing), "ScanIndexForward": (NullOrUndefined Nothing) }

-- | Constructs QueryInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newQueryInput' :: AttributeValue -> TableName -> ( { "TableName" :: (TableName) , "AttributesToGet" :: NullOrUndefined.NullOrUndefined (AttributeNameList) , "Limit" :: NullOrUndefined.NullOrUndefined (PositiveIntegerObject) , "ConsistentRead" :: NullOrUndefined.NullOrUndefined (ConsistentRead) , "Count" :: NullOrUndefined.NullOrUndefined (BooleanObject) , "HashKeyValue" :: (AttributeValue) , "RangeKeyCondition" :: NullOrUndefined.NullOrUndefined (Condition) , "ScanIndexForward" :: NullOrUndefined.NullOrUndefined (BooleanObject) , "ExclusiveStartKey" :: NullOrUndefined.NullOrUndefined (Key) } -> {"TableName" :: (TableName) , "AttributesToGet" :: NullOrUndefined.NullOrUndefined (AttributeNameList) , "Limit" :: NullOrUndefined.NullOrUndefined (PositiveIntegerObject) , "ConsistentRead" :: NullOrUndefined.NullOrUndefined (ConsistentRead) , "Count" :: NullOrUndefined.NullOrUndefined (BooleanObject) , "HashKeyValue" :: (AttributeValue) , "RangeKeyCondition" :: NullOrUndefined.NullOrUndefined (Condition) , "ScanIndexForward" :: NullOrUndefined.NullOrUndefined (BooleanObject) , "ExclusiveStartKey" :: NullOrUndefined.NullOrUndefined (Key) } ) -> QueryInput
newQueryInput' _HashKeyValue _TableName customize = (QueryInput <<< customize) { "HashKeyValue": _HashKeyValue, "TableName": _TableName, "AttributesToGet": (NullOrUndefined Nothing), "ConsistentRead": (NullOrUndefined Nothing), "Count": (NullOrUndefined Nothing), "ExclusiveStartKey": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing), "RangeKeyCondition": (NullOrUndefined Nothing), "ScanIndexForward": (NullOrUndefined Nothing) }



newtype QueryOutput = QueryOutput 
  { "Items" :: NullOrUndefined.NullOrUndefined (ItemList)
  , "Count" :: NullOrUndefined.NullOrUndefined (Int)
  , "LastEvaluatedKey" :: NullOrUndefined.NullOrUndefined (Key)
  , "ConsumedCapacityUnits" :: NullOrUndefined.NullOrUndefined (ConsumedCapacityUnits)
  }
derive instance newtypeQueryOutput :: Newtype QueryOutput _
derive instance repGenericQueryOutput :: Generic QueryOutput _
instance showQueryOutput :: Show QueryOutput where
  show = genericShow
instance decodeQueryOutput :: Decode QueryOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeQueryOutput :: Encode QueryOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs QueryOutput from required parameters
newQueryOutput :: QueryOutput
newQueryOutput  = QueryOutput { "ConsumedCapacityUnits": (NullOrUndefined Nothing), "Count": (NullOrUndefined Nothing), "Items": (NullOrUndefined Nothing), "LastEvaluatedKey": (NullOrUndefined Nothing) }

-- | Constructs QueryOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newQueryOutput' :: ( { "Items" :: NullOrUndefined.NullOrUndefined (ItemList) , "Count" :: NullOrUndefined.NullOrUndefined (Int) , "LastEvaluatedKey" :: NullOrUndefined.NullOrUndefined (Key) , "ConsumedCapacityUnits" :: NullOrUndefined.NullOrUndefined (ConsumedCapacityUnits) } -> {"Items" :: NullOrUndefined.NullOrUndefined (ItemList) , "Count" :: NullOrUndefined.NullOrUndefined (Int) , "LastEvaluatedKey" :: NullOrUndefined.NullOrUndefined (Key) , "ConsumedCapacityUnits" :: NullOrUndefined.NullOrUndefined (ConsumedCapacityUnits) } ) -> QueryOutput
newQueryOutput'  customize = (QueryOutput <<< customize) { "ConsumedCapacityUnits": (NullOrUndefined Nothing), "Count": (NullOrUndefined Nothing), "Items": (NullOrUndefined Nothing), "LastEvaluatedKey": (NullOrUndefined Nothing) }



-- | <p>This exception is thrown when the resource which is being attempted to be changed is in use.</p>
newtype ResourceInUseException = ResourceInUseException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeResourceInUseException :: Newtype ResourceInUseException _
derive instance repGenericResourceInUseException :: Generic ResourceInUseException _
instance showResourceInUseException :: Show ResourceInUseException where
  show = genericShow
instance decodeResourceInUseException :: Decode ResourceInUseException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResourceInUseException :: Encode ResourceInUseException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ResourceInUseException from required parameters
newResourceInUseException :: ResourceInUseException
newResourceInUseException  = ResourceInUseException { "message": (NullOrUndefined Nothing) }

-- | Constructs ResourceInUseException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceInUseException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> ResourceInUseException
newResourceInUseException'  customize = (ResourceInUseException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>This exception is thrown when the resource which is being attempted to be changed is in use.</p>
newtype ResourceNotFoundException = ResourceNotFoundException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeResourceNotFoundException :: Newtype ResourceNotFoundException _
derive instance repGenericResourceNotFoundException :: Generic ResourceNotFoundException _
instance showResourceNotFoundException :: Show ResourceNotFoundException where
  show = genericShow
instance decodeResourceNotFoundException :: Decode ResourceNotFoundException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResourceNotFoundException :: Encode ResourceNotFoundException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ResourceNotFoundException from required parameters
newResourceNotFoundException :: ResourceNotFoundException
newResourceNotFoundException  = ResourceNotFoundException { "message": (NullOrUndefined Nothing) }

-- | Constructs ResourceNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceNotFoundException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> ResourceNotFoundException
newResourceNotFoundException'  customize = (ResourceNotFoundException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>Use this parameter if you want to get the attribute name-value pairs before or after they are modified. For <code>PUT</code> operations, the possible parameter values are <code>NONE</code> (default) or <code>ALL_OLD</code>. For update operations, the possible parameter values are <code>NONE</code> (default) or <code>ALL_OLD</code>, <code>UPDATED_OLD</code>, <code>ALL_NEW</code> or <code>UPDATED_NEW</code>.</p> <ul> <li><code>NONE</code>: Nothing is returned.</li> <li><code>ALL_OLD</code>: Returns the attributes of the item as they were before the operation.</li> <li><code>UPDATED_OLD</code>: Returns the values of the updated attributes, only, as they were before the operation.</li> <li><code>ALL_NEW</code>: Returns all the attributes and their new values after the operation.</li> <li><code>UPDATED_NEW</code>: Returns the values of the updated attributes, only, as they are after the operation.</li> </ul>
newtype ReturnValue = ReturnValue String
derive instance newtypeReturnValue :: Newtype ReturnValue _
derive instance repGenericReturnValue :: Generic ReturnValue _
instance showReturnValue :: Show ReturnValue where
  show = genericShow
instance decodeReturnValue :: Decode ReturnValue where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeReturnValue :: Encode ReturnValue where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ScalarAttributeType = ScalarAttributeType String
derive instance newtypeScalarAttributeType :: Newtype ScalarAttributeType _
derive instance repGenericScalarAttributeType :: Generic ScalarAttributeType _
instance showScalarAttributeType :: Show ScalarAttributeType where
  show = genericShow
instance decodeScalarAttributeType :: Decode ScalarAttributeType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeScalarAttributeType :: Encode ScalarAttributeType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ScanInput = ScanInput 
  { "TableName" :: (TableName)
  , "AttributesToGet" :: NullOrUndefined.NullOrUndefined (AttributeNameList)
  , "Limit" :: NullOrUndefined.NullOrUndefined (PositiveIntegerObject)
  , "Count" :: NullOrUndefined.NullOrUndefined (BooleanObject)
  , "ScanFilter" :: NullOrUndefined.NullOrUndefined (FilterConditionMap)
  , "ExclusiveStartKey" :: NullOrUndefined.NullOrUndefined (Key)
  }
derive instance newtypeScanInput :: Newtype ScanInput _
derive instance repGenericScanInput :: Generic ScanInput _
instance showScanInput :: Show ScanInput where
  show = genericShow
instance decodeScanInput :: Decode ScanInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeScanInput :: Encode ScanInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ScanInput from required parameters
newScanInput :: TableName -> ScanInput
newScanInput _TableName = ScanInput { "TableName": _TableName, "AttributesToGet": (NullOrUndefined Nothing), "Count": (NullOrUndefined Nothing), "ExclusiveStartKey": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing), "ScanFilter": (NullOrUndefined Nothing) }

-- | Constructs ScanInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newScanInput' :: TableName -> ( { "TableName" :: (TableName) , "AttributesToGet" :: NullOrUndefined.NullOrUndefined (AttributeNameList) , "Limit" :: NullOrUndefined.NullOrUndefined (PositiveIntegerObject) , "Count" :: NullOrUndefined.NullOrUndefined (BooleanObject) , "ScanFilter" :: NullOrUndefined.NullOrUndefined (FilterConditionMap) , "ExclusiveStartKey" :: NullOrUndefined.NullOrUndefined (Key) } -> {"TableName" :: (TableName) , "AttributesToGet" :: NullOrUndefined.NullOrUndefined (AttributeNameList) , "Limit" :: NullOrUndefined.NullOrUndefined (PositiveIntegerObject) , "Count" :: NullOrUndefined.NullOrUndefined (BooleanObject) , "ScanFilter" :: NullOrUndefined.NullOrUndefined (FilterConditionMap) , "ExclusiveStartKey" :: NullOrUndefined.NullOrUndefined (Key) } ) -> ScanInput
newScanInput' _TableName customize = (ScanInput <<< customize) { "TableName": _TableName, "AttributesToGet": (NullOrUndefined Nothing), "Count": (NullOrUndefined Nothing), "ExclusiveStartKey": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing), "ScanFilter": (NullOrUndefined Nothing) }



newtype ScanOutput = ScanOutput 
  { "Items" :: NullOrUndefined.NullOrUndefined (ItemList)
  , "Count" :: NullOrUndefined.NullOrUndefined (Int)
  , "ScannedCount" :: NullOrUndefined.NullOrUndefined (Int)
  , "LastEvaluatedKey" :: NullOrUndefined.NullOrUndefined (Key)
  , "ConsumedCapacityUnits" :: NullOrUndefined.NullOrUndefined (ConsumedCapacityUnits)
  }
derive instance newtypeScanOutput :: Newtype ScanOutput _
derive instance repGenericScanOutput :: Generic ScanOutput _
instance showScanOutput :: Show ScanOutput where
  show = genericShow
instance decodeScanOutput :: Decode ScanOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeScanOutput :: Encode ScanOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ScanOutput from required parameters
newScanOutput :: ScanOutput
newScanOutput  = ScanOutput { "ConsumedCapacityUnits": (NullOrUndefined Nothing), "Count": (NullOrUndefined Nothing), "Items": (NullOrUndefined Nothing), "LastEvaluatedKey": (NullOrUndefined Nothing), "ScannedCount": (NullOrUndefined Nothing) }

-- | Constructs ScanOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newScanOutput' :: ( { "Items" :: NullOrUndefined.NullOrUndefined (ItemList) , "Count" :: NullOrUndefined.NullOrUndefined (Int) , "ScannedCount" :: NullOrUndefined.NullOrUndefined (Int) , "LastEvaluatedKey" :: NullOrUndefined.NullOrUndefined (Key) , "ConsumedCapacityUnits" :: NullOrUndefined.NullOrUndefined (ConsumedCapacityUnits) } -> {"Items" :: NullOrUndefined.NullOrUndefined (ItemList) , "Count" :: NullOrUndefined.NullOrUndefined (Int) , "ScannedCount" :: NullOrUndefined.NullOrUndefined (Int) , "LastEvaluatedKey" :: NullOrUndefined.NullOrUndefined (Key) , "ConsumedCapacityUnits" :: NullOrUndefined.NullOrUndefined (ConsumedCapacityUnits) } ) -> ScanOutput
newScanOutput'  customize = (ScanOutput <<< customize) { "ConsumedCapacityUnits": (NullOrUndefined Nothing), "Count": (NullOrUndefined Nothing), "Items": (NullOrUndefined Nothing), "LastEvaluatedKey": (NullOrUndefined Nothing), "ScannedCount": (NullOrUndefined Nothing) }



newtype StringAttributeValue = StringAttributeValue String
derive instance newtypeStringAttributeValue :: Newtype StringAttributeValue _
derive instance repGenericStringAttributeValue :: Generic StringAttributeValue _
instance showStringAttributeValue :: Show StringAttributeValue where
  show = genericShow
instance decodeStringAttributeValue :: Decode StringAttributeValue where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStringAttributeValue :: Encode StringAttributeValue where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype StringSetAttributeValue = StringSetAttributeValue (Array StringAttributeValue)
derive instance newtypeStringSetAttributeValue :: Newtype StringSetAttributeValue _
derive instance repGenericStringSetAttributeValue :: Generic StringSetAttributeValue _
instance showStringSetAttributeValue :: Show StringSetAttributeValue where
  show = genericShow
instance decodeStringSetAttributeValue :: Decode StringSetAttributeValue where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStringSetAttributeValue :: Encode StringSetAttributeValue where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype TableDescription = TableDescription 
  { "TableName" :: NullOrUndefined.NullOrUndefined (TableName)
  , "KeySchema" :: NullOrUndefined.NullOrUndefined (KeySchema)
  , "TableStatus" :: NullOrUndefined.NullOrUndefined (TableStatus)
  , "CreationDateTime" :: NullOrUndefined.NullOrUndefined (Date)
  , "ProvisionedThroughput" :: NullOrUndefined.NullOrUndefined (ProvisionedThroughputDescription)
  , "TableSizeBytes" :: NullOrUndefined.NullOrUndefined (Number)
  , "ItemCount" :: NullOrUndefined.NullOrUndefined (Number)
  }
derive instance newtypeTableDescription :: Newtype TableDescription _
derive instance repGenericTableDescription :: Generic TableDescription _
instance showTableDescription :: Show TableDescription where
  show = genericShow
instance decodeTableDescription :: Decode TableDescription where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTableDescription :: Encode TableDescription where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs TableDescription from required parameters
newTableDescription :: TableDescription
newTableDescription  = TableDescription { "CreationDateTime": (NullOrUndefined Nothing), "ItemCount": (NullOrUndefined Nothing), "KeySchema": (NullOrUndefined Nothing), "ProvisionedThroughput": (NullOrUndefined Nothing), "TableName": (NullOrUndefined Nothing), "TableSizeBytes": (NullOrUndefined Nothing), "TableStatus": (NullOrUndefined Nothing) }

-- | Constructs TableDescription's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTableDescription' :: ( { "TableName" :: NullOrUndefined.NullOrUndefined (TableName) , "KeySchema" :: NullOrUndefined.NullOrUndefined (KeySchema) , "TableStatus" :: NullOrUndefined.NullOrUndefined (TableStatus) , "CreationDateTime" :: NullOrUndefined.NullOrUndefined (Date) , "ProvisionedThroughput" :: NullOrUndefined.NullOrUndefined (ProvisionedThroughputDescription) , "TableSizeBytes" :: NullOrUndefined.NullOrUndefined (Number) , "ItemCount" :: NullOrUndefined.NullOrUndefined (Number) } -> {"TableName" :: NullOrUndefined.NullOrUndefined (TableName) , "KeySchema" :: NullOrUndefined.NullOrUndefined (KeySchema) , "TableStatus" :: NullOrUndefined.NullOrUndefined (TableStatus) , "CreationDateTime" :: NullOrUndefined.NullOrUndefined (Date) , "ProvisionedThroughput" :: NullOrUndefined.NullOrUndefined (ProvisionedThroughputDescription) , "TableSizeBytes" :: NullOrUndefined.NullOrUndefined (Number) , "ItemCount" :: NullOrUndefined.NullOrUndefined (Number) } ) -> TableDescription
newTableDescription'  customize = (TableDescription <<< customize) { "CreationDateTime": (NullOrUndefined Nothing), "ItemCount": (NullOrUndefined Nothing), "KeySchema": (NullOrUndefined Nothing), "ProvisionedThroughput": (NullOrUndefined Nothing), "TableName": (NullOrUndefined Nothing), "TableSizeBytes": (NullOrUndefined Nothing), "TableStatus": (NullOrUndefined Nothing) }



newtype TableName = TableName String
derive instance newtypeTableName :: Newtype TableName _
derive instance repGenericTableName :: Generic TableName _
instance showTableName :: Show TableName where
  show = genericShow
instance decodeTableName :: Decode TableName where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTableName :: Encode TableName where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype TableNameList = TableNameList (Array TableName)
derive instance newtypeTableNameList :: Newtype TableNameList _
derive instance repGenericTableNameList :: Generic TableNameList _
instance showTableNameList :: Show TableNameList where
  show = genericShow
instance decodeTableNameList :: Decode TableNameList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTableNameList :: Encode TableNameList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype TableStatus = TableStatus String
derive instance newtypeTableStatus :: Newtype TableStatus _
derive instance repGenericTableStatus :: Generic TableStatus _
instance showTableStatus :: Show TableStatus where
  show = genericShow
instance decodeTableStatus :: Decode TableStatus where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTableStatus :: Encode TableStatus where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype UpdateItemInput = UpdateItemInput 
  { "TableName" :: (TableName)
  , "Key" :: (Key)
  , "AttributeUpdates" :: (AttributeUpdates)
  , "Expected" :: NullOrUndefined.NullOrUndefined (ExpectedAttributeMap)
  , "ReturnValues" :: NullOrUndefined.NullOrUndefined (ReturnValue)
  }
derive instance newtypeUpdateItemInput :: Newtype UpdateItemInput _
derive instance repGenericUpdateItemInput :: Generic UpdateItemInput _
instance showUpdateItemInput :: Show UpdateItemInput where
  show = genericShow
instance decodeUpdateItemInput :: Decode UpdateItemInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateItemInput :: Encode UpdateItemInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateItemInput from required parameters
newUpdateItemInput :: AttributeUpdates -> Key -> TableName -> UpdateItemInput
newUpdateItemInput _AttributeUpdates _Key _TableName = UpdateItemInput { "AttributeUpdates": _AttributeUpdates, "Key": _Key, "TableName": _TableName, "Expected": (NullOrUndefined Nothing), "ReturnValues": (NullOrUndefined Nothing) }

-- | Constructs UpdateItemInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateItemInput' :: AttributeUpdates -> Key -> TableName -> ( { "TableName" :: (TableName) , "Key" :: (Key) , "AttributeUpdates" :: (AttributeUpdates) , "Expected" :: NullOrUndefined.NullOrUndefined (ExpectedAttributeMap) , "ReturnValues" :: NullOrUndefined.NullOrUndefined (ReturnValue) } -> {"TableName" :: (TableName) , "Key" :: (Key) , "AttributeUpdates" :: (AttributeUpdates) , "Expected" :: NullOrUndefined.NullOrUndefined (ExpectedAttributeMap) , "ReturnValues" :: NullOrUndefined.NullOrUndefined (ReturnValue) } ) -> UpdateItemInput
newUpdateItemInput' _AttributeUpdates _Key _TableName customize = (UpdateItemInput <<< customize) { "AttributeUpdates": _AttributeUpdates, "Key": _Key, "TableName": _TableName, "Expected": (NullOrUndefined Nothing), "ReturnValues": (NullOrUndefined Nothing) }



newtype UpdateItemOutput = UpdateItemOutput 
  { "Attributes" :: NullOrUndefined.NullOrUndefined (AttributeMap)
  , "ConsumedCapacityUnits" :: NullOrUndefined.NullOrUndefined (ConsumedCapacityUnits)
  }
derive instance newtypeUpdateItemOutput :: Newtype UpdateItemOutput _
derive instance repGenericUpdateItemOutput :: Generic UpdateItemOutput _
instance showUpdateItemOutput :: Show UpdateItemOutput where
  show = genericShow
instance decodeUpdateItemOutput :: Decode UpdateItemOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateItemOutput :: Encode UpdateItemOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateItemOutput from required parameters
newUpdateItemOutput :: UpdateItemOutput
newUpdateItemOutput  = UpdateItemOutput { "Attributes": (NullOrUndefined Nothing), "ConsumedCapacityUnits": (NullOrUndefined Nothing) }

-- | Constructs UpdateItemOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateItemOutput' :: ( { "Attributes" :: NullOrUndefined.NullOrUndefined (AttributeMap) , "ConsumedCapacityUnits" :: NullOrUndefined.NullOrUndefined (ConsumedCapacityUnits) } -> {"Attributes" :: NullOrUndefined.NullOrUndefined (AttributeMap) , "ConsumedCapacityUnits" :: NullOrUndefined.NullOrUndefined (ConsumedCapacityUnits) } ) -> UpdateItemOutput
newUpdateItemOutput'  customize = (UpdateItemOutput <<< customize) { "Attributes": (NullOrUndefined Nothing), "ConsumedCapacityUnits": (NullOrUndefined Nothing) }



newtype UpdateTableInput = UpdateTableInput 
  { "TableName" :: (TableName)
  , "ProvisionedThroughput" :: (ProvisionedThroughput)
  }
derive instance newtypeUpdateTableInput :: Newtype UpdateTableInput _
derive instance repGenericUpdateTableInput :: Generic UpdateTableInput _
instance showUpdateTableInput :: Show UpdateTableInput where
  show = genericShow
instance decodeUpdateTableInput :: Decode UpdateTableInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateTableInput :: Encode UpdateTableInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateTableInput from required parameters
newUpdateTableInput :: ProvisionedThroughput -> TableName -> UpdateTableInput
newUpdateTableInput _ProvisionedThroughput _TableName = UpdateTableInput { "ProvisionedThroughput": _ProvisionedThroughput, "TableName": _TableName }

-- | Constructs UpdateTableInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateTableInput' :: ProvisionedThroughput -> TableName -> ( { "TableName" :: (TableName) , "ProvisionedThroughput" :: (ProvisionedThroughput) } -> {"TableName" :: (TableName) , "ProvisionedThroughput" :: (ProvisionedThroughput) } ) -> UpdateTableInput
newUpdateTableInput' _ProvisionedThroughput _TableName customize = (UpdateTableInput <<< customize) { "ProvisionedThroughput": _ProvisionedThroughput, "TableName": _TableName }



newtype UpdateTableOutput = UpdateTableOutput 
  { "TableDescription" :: NullOrUndefined.NullOrUndefined (TableDescription)
  }
derive instance newtypeUpdateTableOutput :: Newtype UpdateTableOutput _
derive instance repGenericUpdateTableOutput :: Generic UpdateTableOutput _
instance showUpdateTableOutput :: Show UpdateTableOutput where
  show = genericShow
instance decodeUpdateTableOutput :: Decode UpdateTableOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateTableOutput :: Encode UpdateTableOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateTableOutput from required parameters
newUpdateTableOutput :: UpdateTableOutput
newUpdateTableOutput  = UpdateTableOutput { "TableDescription": (NullOrUndefined Nothing) }

-- | Constructs UpdateTableOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateTableOutput' :: ( { "TableDescription" :: NullOrUndefined.NullOrUndefined (TableDescription) } -> {"TableDescription" :: NullOrUndefined.NullOrUndefined (TableDescription) } ) -> UpdateTableOutput
newUpdateTableOutput'  customize = (UpdateTableOutput <<< customize) { "TableDescription": (NullOrUndefined Nothing) }



-- | <p>This structure is a Union of PutRequest and DeleteRequest. It can contain exactly one of <code>PutRequest</code> or <code>DeleteRequest</code>. Never Both. This is enforced in the code.</p>
newtype WriteRequest = WriteRequest 
  { "PutRequest" :: NullOrUndefined.NullOrUndefined (PutRequest)
  , "DeleteRequest" :: NullOrUndefined.NullOrUndefined (DeleteRequest)
  }
derive instance newtypeWriteRequest :: Newtype WriteRequest _
derive instance repGenericWriteRequest :: Generic WriteRequest _
instance showWriteRequest :: Show WriteRequest where
  show = genericShow
instance decodeWriteRequest :: Decode WriteRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeWriteRequest :: Encode WriteRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs WriteRequest from required parameters
newWriteRequest :: WriteRequest
newWriteRequest  = WriteRequest { "DeleteRequest": (NullOrUndefined Nothing), "PutRequest": (NullOrUndefined Nothing) }

-- | Constructs WriteRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWriteRequest' :: ( { "PutRequest" :: NullOrUndefined.NullOrUndefined (PutRequest) , "DeleteRequest" :: NullOrUndefined.NullOrUndefined (DeleteRequest) } -> {"PutRequest" :: NullOrUndefined.NullOrUndefined (PutRequest) , "DeleteRequest" :: NullOrUndefined.NullOrUndefined (DeleteRequest) } ) -> WriteRequest
newWriteRequest'  customize = (WriteRequest <<< customize) { "DeleteRequest": (NullOrUndefined Nothing), "PutRequest": (NullOrUndefined Nothing) }



newtype WriteRequests = WriteRequests (Array WriteRequest)
derive instance newtypeWriteRequests :: Newtype WriteRequests _
derive instance repGenericWriteRequests :: Generic WriteRequests _
instance showWriteRequests :: Show WriteRequests where
  show = genericShow
instance decodeWriteRequests :: Decode WriteRequests where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeWriteRequests :: Encode WriteRequests where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

