package com.atguigu.lease.web.app.controller.file;

import com.atguigu.lease.common.result.Result;
import com.atguigu.lease.web.app.service.FileService;
import io.minio.errors.*;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;

/**
 * APP 端文件上传接口
 * 提供头像等文件上传能力
 */
@Tag(name = "文件管理（APP）")
@RestController
@RequestMapping("/app/file")
public class FileUploadController {

  @Autowired
  private FileService fileService;

  /**
   * 上传文件
   *
   * @param file 上传的文件
   * @return 文件访问 URL
   */
  @Operation(summary = "上传文件")
  @PostMapping("/upload")
  public Result<String> upload(@RequestParam("file") MultipartFile file)
      throws ServerException, InsufficientDataException,
      ErrorResponseException, IOException, NoSuchAlgorithmException, InvalidKeyException,
      InvalidResponseException, XmlParserException, InternalException {
    String url = fileService.upload(file);
    return Result.ok(url);
  }
}
