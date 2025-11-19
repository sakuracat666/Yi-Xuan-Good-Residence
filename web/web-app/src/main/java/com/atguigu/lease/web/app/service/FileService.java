package com.atguigu.lease.web.app.service;

import io.minio.errors.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;

/**
 * APP 端文件服务
 * 用于处理文件上传逻辑
 */
public interface FileService {

  /**
   * 上传文件
   * 
   * @param file 上传的文件
   * @return 文件访问 URL
   */
  String upload(MultipartFile file) throws ServerException, InsufficientDataException, ErrorResponseException,
      IOException, NoSuchAlgorithmException, InvalidKeyException, InvalidResponseException,
      XmlParserException, InternalException;
}
