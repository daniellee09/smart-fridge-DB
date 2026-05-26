package com.smartfridge.common;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import java.util.NoSuchElementException;
import java.util.stream.Collectors;

/**
 * 글로벌 예외 핸들러
   *
   * 기존에는 서비스에서 던진 예외가 Spring 기본 처리로 넘어가
   * {"timestamp":...,"status":500,"error":"Internal Server Error"} 형태로 반환되었습니다.
 * 이는 프론트엔드가 기대하는 ApiResponse { success, data, message } 형식과 불일치합니다.
 *
 * 이 핸들러를 통해 모든 예외를 ApiResponse.error(message) 형식으로 통일합니다.
   */
@RestControllerAdvice
  public class GlobalExceptionHandler {

    /** 존재하지 않는 리소스 조회 — 404 */
    @ExceptionHandler(NoSuchElementException.class)
        @ResponseStatus(HttpStatus.NOT_FOUND)
        public ApiResponse<Void> handleNotFound(NoSuchElementException ex) {
                  return ApiResponse.error(ex.getMessage());
        }

    /** @Valid 유효성 검사 실패 — 400 */
    @ExceptionHandler(MethodArgumentNotValidException.class)
        @ResponseStatus(HttpStatus.BAD_REQUEST)
        public ApiResponse<Void> handleValidation(MethodArgumentNotValidException ex) {
                  String message = ex.getBindingResult().getFieldErrors().stream()
                                    .map(fe -> fe.getField() + ": " + fe.getDefaultMessage())
                                    .collect(Collectors.joining(", "));
                  return ApiResponse.error(message);
        }

    /** 비즈니스 규칙 위반 등 일반 런타임 예외 — 400 */
    @ExceptionHandler(IllegalArgumentException.class)
        @ResponseStatus(HttpStatus.BAD_REQUEST)
        public ApiResponse<Void> handleIllegalArgument(IllegalArgumentException ex) {
                  return ApiResponse.error(ex.getMessage());
        }

    /** 그 외 처리되지 않은 예외 — 500 */
    @ExceptionHandler(Exception.class)
        @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
        public ApiResponse<Void> handleGeneral(Exception ex) {
                  return ApiResponse.error("서버 내부 오류가 발생했습니다.");
        }
  }
