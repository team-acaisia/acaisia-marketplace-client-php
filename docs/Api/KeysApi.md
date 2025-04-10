# Acaisia\Marketplace\KeysApi

All URIs are relative to http://localhost:1318/v1, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**createKey()**](KeysApi.md#createKey) | **POST** /keys | Create an API key |
| [**listKeys()**](KeysApi.md#listKeys) | **GET** /keys | List all keys |


## `createKey()`

```php
createKey($create_api_key_request): \Acaisia\Marketplace\Model\CreateApiKeyResponse
```

Create an API key

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: user_login
$config = Acaisia\Marketplace\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Acaisia\Marketplace\Api\KeysApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$create_api_key_request = new \Acaisia\Marketplace\Model\CreateApiKeyRequest(); // \Acaisia\Marketplace\Model\CreateApiKeyRequest

try {
    $result = $apiInstance->createKey($create_api_key_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling KeysApi->createKey: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **create_api_key_request** | [**\Acaisia\Marketplace\Model\CreateApiKeyRequest**](../Model/CreateApiKeyRequest.md)|  | [optional] |

### Return type

[**\Acaisia\Marketplace\Model\CreateApiKeyResponse**](../Model/CreateApiKeyResponse.md)

### Authorization

[user_login](../../README.md#user_login)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`, `application/text`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `listKeys()`

```php
listKeys(): \Acaisia\Marketplace\Model\ApiKeyResponse[]
```

List all keys

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: user_login
$config = Acaisia\Marketplace\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Acaisia\Marketplace\Api\KeysApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->listKeys();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling KeysApi->listKeys: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\Acaisia\Marketplace\Model\ApiKeyResponse[]**](../Model/ApiKeyResponse.md)

### Authorization

[user_login](../../README.md#user_login)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/text`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
