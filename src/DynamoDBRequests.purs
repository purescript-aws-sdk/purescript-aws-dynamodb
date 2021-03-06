
module AWS.DynamoDB.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.DynamoDB as DynamoDB
import AWS.DynamoDB.Types as DynamoDBTypes


-- | <p>Retrieves the attributes for multiple items from multiple tables using their primary keys.</p> <p>The maximum number of item attributes that can be retrieved for a single operation is 100. Also, the number of items retrieved is constrained by a 1 MB the size limit. If the response size limit is exceeded or a partial result is returned due to an internal processing failure, Amazon DynamoDB returns an <code>UnprocessedKeys</code> value so you can retry the operation starting with the next item to get.</p> <p>Amazon DynamoDB automatically adjusts the number of items returned per page to enforce this limit. For example, even if you ask to retrieve 100 items, but each individual item is 50k in size, the system returns 20 items and an appropriate <code>UnprocessedKeys</code> value so you can get the next page of results. If necessary, your application needs its own logic to assemble the pages of results into one set.</p>
batchGetItem :: forall eff. DynamoDB.Service -> DynamoDBTypes.BatchGetItemInput -> Aff (exception :: EXCEPTION | eff) DynamoDBTypes.BatchGetItemOutput
batchGetItem (DynamoDB.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "batchGetItem"


-- | <p>Allows to execute a batch of Put and/or Delete Requests for many tables in a single call. A total of 25 requests are allowed.</p> <p>There are no transaction guarantees provided by this API. It does not allow conditional puts nor does it support return values.</p>
batchWriteItem :: forall eff. DynamoDB.Service -> DynamoDBTypes.BatchWriteItemInput -> Aff (exception :: EXCEPTION | eff) DynamoDBTypes.BatchWriteItemOutput
batchWriteItem (DynamoDB.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "batchWriteItem"


-- | <p>Adds a new table to your account.</p> <p>The table name must be unique among those associated with the AWS Account issuing the request, and the AWS Region that receives the request (e.g. <code>us-east-1</code>).</p> <p>The <code>CreateTable</code> operation triggers an asynchronous workflow to begin creating the table. Amazon DynamoDB immediately returns the state of the table (<code>CREATING</code>) until the table is in the <code>ACTIVE</code> state. Once the table is in the <code>ACTIVE</code> state, you can perform data plane operations.</p>
createTable :: forall eff. DynamoDB.Service -> DynamoDBTypes.CreateTableInput -> Aff (exception :: EXCEPTION | eff) DynamoDBTypes.CreateTableOutput
createTable (DynamoDB.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createTable"


-- | <p>Deletes a single item in a table by primary key.</p> <p>You can perform a conditional delete operation that deletes the item if it exists, or if it has an expected attribute value.</p>
deleteItem :: forall eff. DynamoDB.Service -> DynamoDBTypes.DeleteItemInput -> Aff (exception :: EXCEPTION | eff) DynamoDBTypes.DeleteItemOutput
deleteItem (DynamoDB.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteItem"


-- | <p>Deletes a table and all of its items.</p> <p>If the table is in the <code>ACTIVE</code> state, you can delete it. If a table is in <code>CREATING</code> or <code>UPDATING</code> states then Amazon DynamoDB returns a <code>ResourceInUseException</code>. If the specified table does not exist, Amazon DynamoDB returns a <code>ResourceNotFoundException</code>.</p>
deleteTable :: forall eff. DynamoDB.Service -> DynamoDBTypes.DeleteTableInput -> Aff (exception :: EXCEPTION | eff) DynamoDBTypes.DeleteTableOutput
deleteTable (DynamoDB.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteTable"


-- | <p>Retrieves information about the table, including the current status of the table, the primary key schema and when the table was created.</p> <p>If the table does not exist, Amazon DynamoDB returns a <code>ResourceNotFoundException</code>.</p>
describeTable :: forall eff. DynamoDB.Service -> DynamoDBTypes.DescribeTableInput -> Aff (exception :: EXCEPTION | eff) DynamoDBTypes.DescribeTableOutput
describeTable (DynamoDB.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeTable"


-- | <p>Retrieves a set of Attributes for an item that matches the primary key.</p> <p>The <code>GetItem</code> operation provides an eventually-consistent read by default. If eventually-consistent reads are not acceptable for your application, use <code>ConsistentRead</code>. Although this operation might take longer than a standard read, it always returns the last updated value.</p>
getItem :: forall eff. DynamoDB.Service -> DynamoDBTypes.GetItemInput -> Aff (exception :: EXCEPTION | eff) DynamoDBTypes.GetItemOutput
getItem (DynamoDB.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getItem"


-- | <p>Retrieves a paginated list of table names created by the AWS Account of the caller in the AWS Region (e.g. <code>us-east-1</code>).</p>
listTables :: forall eff. DynamoDB.Service -> DynamoDBTypes.ListTablesInput -> Aff (exception :: EXCEPTION | eff) DynamoDBTypes.ListTablesOutput
listTables (DynamoDB.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listTables"


-- | <p>Creates a new item, or replaces an old item with a new item (including all the attributes).</p> <p>If an item already exists in the specified table with the same primary key, the new item completely replaces the existing item. You can perform a conditional put (insert a new item if one with the specified primary key doesn't exist), or replace an existing item if it has certain attribute values.</p>
putItem :: forall eff. DynamoDB.Service -> DynamoDBTypes.PutItemInput -> Aff (exception :: EXCEPTION | eff) DynamoDBTypes.PutItemOutput
putItem (DynamoDB.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "putItem"


-- | <p>Gets the values of one or more items and its attributes by primary key (composite primary key, only).</p> <p>Narrow the scope of the query using comparison operators on the <code>RangeKeyValue</code> of the composite key. Use the <code>ScanIndexForward</code> parameter to get results in forward or reverse order by range key.</p>
query :: forall eff. DynamoDB.Service -> DynamoDBTypes.QueryInput -> Aff (exception :: EXCEPTION | eff) DynamoDBTypes.QueryOutput
query (DynamoDB.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "query"


-- | <p>Retrieves one or more items and its attributes by performing a full scan of a table.</p> <p>Provide a <code>ScanFilter</code> to get more specific results.</p>
scan :: forall eff. DynamoDB.Service -> DynamoDBTypes.ScanInput -> Aff (exception :: EXCEPTION | eff) DynamoDBTypes.ScanOutput
scan (DynamoDB.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "scan"


-- | <p>Edits an existing item's attributes.</p> <p>You can perform a conditional update (insert a new attribute name-value pair if it doesn't exist, or replace an existing name-value pair if it has certain expected attribute values).</p>
updateItem :: forall eff. DynamoDB.Service -> DynamoDBTypes.UpdateItemInput -> Aff (exception :: EXCEPTION | eff) DynamoDBTypes.UpdateItemOutput
updateItem (DynamoDB.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateItem"


-- | <p>Updates the provisioned throughput for the given table.</p> <p>Setting the throughput for a table helps you manage performance and is part of the Provisioned Throughput feature of Amazon DynamoDB.</p>
updateTable :: forall eff. DynamoDB.Service -> DynamoDBTypes.UpdateTableInput -> Aff (exception :: EXCEPTION | eff) DynamoDBTypes.UpdateTableOutput
updateTable (DynamoDB.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateTable"
