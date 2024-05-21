//package com.example.demo.infrastructure.config;
//
//import com.microsoft.azure.storage.CloudStorageAccount;
//import com.microsoft.azure.storage.blob.CloudBlobClient;
//import org.springframework.beans.factory.annotation.Value;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//
//@Configuration
//public class AzureBlobConfiguration {
//    @Value("${azure.storage.connection-string}")
//    private String connectionString;
//
//    @Value("${azure.storage.container-name}")
//    private String containerName;
//
//    @Bean
//    public CloudBlobClient cloudBlobClient() throws Exception {
//        CloudStorageAccount storageAccount = CloudStorageAccount.parse(connectionString);
//        return storageAccount.createCloudBlobClient();
//    }
//}
package com.example.demo.infrastructure.config;

import com.azure.storage.blob.BlobContainerClient;
import com.azure.storage.blob.BlobServiceClient;
import com.azure.storage.blob.BlobServiceClientBuilder;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class AzureBlobConfiguration {
    @Value("${azure.storage.connection-string}")
    private String connectionString;

    @Value("${azure.storage.container-name}")
    private String containerName;

    @Bean
    public BlobServiceClient blobServiceClient() {
        return new BlobServiceClientBuilder().connectionString(connectionString).buildClient();
    }

    @Bean
    public BlobContainerClient blobContainerClient(BlobServiceClient blobServiceClient) {
        return blobServiceClient.getBlobContainerClient(containerName);
    }
}
