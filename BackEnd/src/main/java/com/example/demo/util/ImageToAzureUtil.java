//package com.example.demo.util;
//
//import com.microsoft.azure.storage.CloudStorageAccount;
//import com.microsoft.azure.storage.StorageException;
//import com.microsoft.azure.storage.blob.CloudBlobClient;
//import com.microsoft.azure.storage.blob.CloudBlobContainer;
//import com.microsoft.azure.storage.blob.CloudBlockBlob;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.beans.factory.annotation.Value;
//import org.springframework.stereotype.Component;
//import org.springframework.web.multipart.MultipartFile;
////
//import java.io.FileInputStream;
//import java.io.IOException;
//import java.net.URISyntaxException;
//import java.security.InvalidKeyException;
//
//@Component
//public class ImageToAzureUtil {
//
//    @Autowired
//    
//    private CloudBlobClient cloudBlobClient;
//
//    @Value("${azure.storage.container-name}")
//    private String containerName;
//
//    @Value("${azure.storage.connection-string}")
//    private String connectionString;
//
//    // upload image len azure
//    public String uploadImage(MultipartFile file) throws IOException, URISyntaxException, StorageException {
//        String fileName = file.getOriginalFilename();
//        CloudBlockBlob blob = cloudBlobClient.getContainerReference(containerName).getBlockBlobReference(fileName);
//        blob.upload(file.getInputStream(), file.getSize());
//        return blob.getUri().toString();
//    }
//
//    public String uploadImageToAzure(String imagePath) throws URISyntaxException, StorageException, IOException, InvalidKeyException {
//        CloudStorageAccount storageAccount = CloudStorageAccount.parse(connectionString);
//        CloudBlobClient blobClient = storageAccount.createCloudBlobClient();
//        CloudBlobContainer container = blobClient.getContainerReference(containerName);
//
//        String fileName = this.getImageFileName(imagePath);
//        // Tạo một đối tượng CloudBlockBlob để lưu trữ ảnh trên Azure Blob Storage
//        CloudBlockBlob blob = container.getBlockBlobReference(fileName);
//
//        // Đọc dữ liệu từ tệp ảnh
//        try (FileInputStream fileInputStream = new FileInputStream(imagePath)) {
//            // Tải lên ảnh lên Azure Blob Storage
//            blob.upload(fileInputStream, -1);
//        }
//
//        return blob.getUri().toString();
//    }
//
//    private String getImageFileName(String imageUrl) {
//        // Lấy phần cuối cùng của đường dẫn làm tên tệp ảnh
//        int lastIndexOfSlash = imageUrl.lastIndexOf("/");
//        return imageUrl.substring(lastIndexOfSlash + 1);
//    }
//
//}

package com.example.demo.util;

import com.azure.storage.blob.BlobContainerClient;
import com.azure.storage.blob.BlobServiceClient;
import com.azure.storage.blob.BlobServiceClientBuilder;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import java.io.IOException;
import java.util.UUID;

@Component
public class ImageToAzureUtil {

    @Value("${azure.storage.container-name}")
    private String containerName;

    @Value("${azure.storage.connection-string}")
    private String connectionString;

    // upload image len azure từ MultipartFile
    public String uploadImage(MultipartFile file) throws IOException {
        String fileName = UUID.randomUUID().toString() + "-" + file.getOriginalFilename();

        // Tạo BlobServiceClient từ connectionString
        BlobServiceClient blobServiceClient = new BlobServiceClientBuilder().connectionString(connectionString).buildClient();

        // Tạo container client
        BlobContainerClient containerClient = blobServiceClient.getBlobContainerClient(containerName);

        // Upload blob
        containerClient.getBlobClient(fileName).upload(file.getInputStream(), file.getSize());

        // Trả về URL của blob đã tải lên
        return containerClient.getBlobClient(fileName).getBlobUrl();
    }

    // upload image len azure từ đường dẫn của hình ảnh
    public String uploadImageToAzure(String imagePath) throws IOException {
        String fileName = UUID.randomUUID().toString() + "-" + getImageFileName(imagePath);

        // Tạo BlobServiceClient từ connectionString
        BlobServiceClient blobServiceClient = new BlobServiceClientBuilder().connectionString(connectionString).buildClient();

        // Tạo container client
        BlobContainerClient containerClient = blobServiceClient.getBlobContainerClient(containerName);

        // Tạo BlobClient từ đường dẫn hình ảnh
        // Upload blob
        containerClient.getBlobClient(fileName).uploadFromFile(imagePath);

        // Trả về URL của blob đã tải lên
        return containerClient.getBlobClient(fileName).getBlobUrl();
    }

    // Lấy phần cuối cùng của đường dẫn làm tên tệp ảnh
    private String getImageFileName(String imagePath) {
        String[] parts = imagePath.split("/");
        return parts[parts.length - 1];
    }

}

