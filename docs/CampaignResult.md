# RadioManagerClient::Object::CampaignResult

## Load the model package
```perl
use RadioManagerClient::Object::CampaignResult;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**updated_at** | **DateTime** |  | 
**created_at** | **DateTime** |  | 
**deleted_at** | **DateTime** |  | 
**item** | [**ARRAY[Item]**](Item.md) |  | [optional] 
**_external_station_id** | **int** |  | [optional] 
**model_type_id** | **int** |  | 
**field_values** | **object** |  | [optional] 
**title** | **string** |  | [optional] 
**start** | **DateTime** |  | 
**stop** | **DateTime** |  | 
**recommended** | **boolean** |  | [optional] 
**description** | **string** |  | [optional] 
**items** | [**CampaignRelationsItems**](CampaignRelationsItems.md) |  | [optional] 
**model_type** | [**BroadcastRelationsModelType**](BroadcastRelationsModelType.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


