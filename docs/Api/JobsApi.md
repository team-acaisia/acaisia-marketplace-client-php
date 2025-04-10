# Acaisia\Marketplace\JobsApi

All URIs are relative to http://localhost:1318/v1, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**createJob()**](JobsApi.md#createJob) | **POST** /jobs | Create a new job |
| [**getJob()**](JobsApi.md#getJob) | **GET** /jobs/{id} | Get the status of a specific job |
| [**listJobs()**](JobsApi.md#listJobs) | **GET** /jobs | List all jobs |


## `createJob()`

```php
createJob($create_job_request): \Acaisia\Marketplace\Model\CreateJobResponse
```

Create a new job

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: api_key
$config = Acaisia\Marketplace\Configuration::getDefaultConfiguration()->setApiKey('X-ACAISIA-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Acaisia\Marketplace\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-ACAISIA-API-KEY', 'Bearer');


$apiInstance = new Acaisia\Marketplace\Api\JobsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$create_job_request = new \Acaisia\Marketplace\Model\CreateJobRequest(); // \Acaisia\Marketplace\Model\CreateJobRequest

try {
    $result = $apiInstance->createJob($create_job_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling JobsApi->createJob: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **create_job_request** | [**\Acaisia\Marketplace\Model\CreateJobRequest**](../Model/CreateJobRequest.md)|  | [optional] |

### Return type

[**\Acaisia\Marketplace\Model\CreateJobResponse**](../Model/CreateJobResponse.md)

### Authorization

[api_key](../../README.md#api_key)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`, `application/text`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getJob()`

```php
getJob($id): \Acaisia\Marketplace\Model\JobResponse
```

Get the status of a specific job

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: api_key
$config = Acaisia\Marketplace\Configuration::getDefaultConfiguration()->setApiKey('X-ACAISIA-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Acaisia\Marketplace\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-ACAISIA-API-KEY', 'Bearer');


$apiInstance = new Acaisia\Marketplace\Api\JobsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string | Identifier of the job

try {
    $result = $apiInstance->getJob($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling JobsApi->getJob: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**| Identifier of the job | |

### Return type

[**\Acaisia\Marketplace\Model\JobResponse**](../Model/JobResponse.md)

### Authorization

[api_key](../../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/text`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `listJobs()`

```php
listJobs(): \Acaisia\Marketplace\Model\JobResponse[]
```

List all jobs

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: api_key
$config = Acaisia\Marketplace\Configuration::getDefaultConfiguration()->setApiKey('X-ACAISIA-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Acaisia\Marketplace\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-ACAISIA-API-KEY', 'Bearer');


$apiInstance = new Acaisia\Marketplace\Api\JobsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->listJobs();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling JobsApi->listJobs: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\Acaisia\Marketplace\Model\JobResponse[]**](../Model/JobResponse.md)

### Authorization

[api_key](../../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/text`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
