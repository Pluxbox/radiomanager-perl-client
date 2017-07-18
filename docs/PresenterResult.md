# RadioManagerClient::Object::PresenterResult

## Load the model package
```perl
use RadioManagerClient::Object::PresenterResult;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**updated_at** | **DateTime** |  | 
**created_at** | **DateTime** |  | 
**deleted_at** | **DateTime** |  | 
**_external_station_id** | **int** |  | [optional] 
**model_type_id** | **int** |  | 
**field_values** | **ARRAY[object]** |  | [optional] 
**firstname** | **string** |  | [optional] 
**lastname** | **string** |  | [optional] 
**active** | **boolean** |  | [optional] 
**name** | **string** |  | [optional] 
**programs** | [**PresenterRelationsPrograms**](PresenterRelationsPrograms.md) |  | [optional] 
**broadcasts** | [**PresenterRelationsBroadcasts**](PresenterRelationsBroadcasts.md) |  | [optional] 
**model_type** | [**BroadcastRelationsModelType**](BroadcastRelationsModelType.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


