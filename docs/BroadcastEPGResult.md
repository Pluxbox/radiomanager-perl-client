# RadioManagerClient::Object::BroadcastEPGResult

## Load the model package
```perl
use RadioManagerClient::Object::BroadcastEPGResult;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**updated_at** | **DateTime** |  | 
**created_at** | **DateTime** |  | 
**deleted_at** | **DateTime** |  | 
**_external_station_id** | **int** |  | [optional] 
**program_id** | **int** |  | [optional] 
**model_type_id** | **int** |  | [optional] 
**station_id** | **int** |  | [optional] 
**field_values** | [**BroadcastFieldValues**](BroadcastFieldValues.md) |  | [optional] 
**title** | **string** |  | [optional] 
**start** | **DateTime** |  | [optional] 
**stop** | **DateTime** |  | [optional] 
**genre_id** | **int** |  | [optional] 
**description** | **string** |  | [optional] 
**short_name** | **string** |  | [optional] 
**medium_name** | **string** |  | [optional] 
**website** | **string** |  | [optional] 
**email** | **string** |  | [optional] 
**recommended** | **boolean** |  | [optional] 
**language** | **string** |  | [optional] 
**published** | **boolean** |  | [optional] 
**repetition_uid** | **string** |  | [optional] 
**repetition_type** | **string** |  | [optional] 
**repetition_end** | **DateTime** |  | [optional] 
**repetition_start** | **DateTime** |  | [optional] 
**repetition_days** | **string** |  | [optional] 
**pty_code_id** | **int** |  | [optional] 
**items** | [**BroadcastRelationsItems**](BroadcastRelationsItems.md) |  | [optional] 
**blocks** | [**BroadcastRelationsBlocks**](BroadcastRelationsBlocks.md) |  | [optional] 
**program** | [**BlockRelationsProgram**](BlockRelationsProgram.md) |  | [optional] 
**tags** | [**BroadcastRelationsTags**](BroadcastRelationsTags.md) |  | [optional] 
**presenters** | [**ARRAY[PresenterEPGResult]**](PresenterEPGResult.md) |  | [optional] 
**model_type** | [**BroadcastRelationsModelType**](BroadcastRelationsModelType.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


