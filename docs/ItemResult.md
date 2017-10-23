# RadioManagerClient::Object::ItemResult

## Load the model package
```perl
use RadioManagerClient::Object::ItemResult;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**updated_at** | **DateTime** |  | [optional] 
**created_at** | **DateTime** |  | [optional] 
**deleted_at** | **DateTime** |  | [optional] 
**data_modified** | **int** |  | [optional] 
**order** | **int** |  | [optional] 
**templateblock_id** | **int** |  | [optional] 
**templateitem_id** | **int** |  | [optional] 
**_external_station_id** | **int** |  | [optional] 
**model_type_id** | **int** |  | 
**block_id** | **int** |  | [optional] 
**external_id** | **string** |  | [optional] 
**field_values** | **object** |  | [optional] 
**title** | **string** |  | [optional] 
**duration** | **int** |  | [optional] 
**start** | **DateTime** |  | [optional] 
**status** | **string** |  | [optional] 
**import** | **int** |  | [optional] 
**campaign_id** | **int** |  | [optional] 
**recommended** | **boolean** |  | [optional] 
**station_draft_id** | **int** |  | [optional] 
**program_draft_id** | **int** |  | [optional] 
**user_draft_id** | **int** |  | [optional] 
**static_start** | **boolean** |  | [optional] 
**details** | **string** |  | [optional] 
**block** | [**ItemRelationsBlock**](ItemRelationsBlock.md) |  | [optional] 
**broadcast** | [**BlockRelationsBroadcast**](BlockRelationsBroadcast.md) |  | [optional] 
**program** | [**ItemRelationsProgram**](ItemRelationsProgram.md) |  | [optional] 
**contacts** | [**ItemRelationsContacts**](ItemRelationsContacts.md) |  | [optional] 
**tags** | [**ItemRelationsTags**](ItemRelationsTags.md) |  | [optional] 
**campaign** | [**ItemRelationsCampaign**](ItemRelationsCampaign.md) |  | [optional] 
**model_type** | [**BroadcastRelationsModelType**](BroadcastRelationsModelType.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


