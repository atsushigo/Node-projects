define({ "api": [
  {
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "optional": false,
            "field": "varname1",
            "description": "<p>No type.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "varname2",
            "description": "<p>With type.</p>"
          }
        ]
      }
    },
    "type": "",
    "url": "",
    "version": "0.0.0",
    "filename": "./apidoc/main.js",
    "group": "/Users/Sam/Desktop/node/0606api_server/apidoc/main.js",
    "groupTitle": "/Users/Sam/Desktop/node/0606api_server/apidoc/main.js",
    "name": ""
  },
  {
    "type": "post",
    "url": "/my/updatePassword",
    "title": "更改updatePassword接口",
    "name": "更改updatePassword接口",
    "group": "Userinfo",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Authorization",
            "description": "<p>需攜帶登入後拿到的token(格式為&quot;Bearer &quot;+你的token)</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n  \"Authorization\": 需攜帶登入後拿到的token(格式為\"Bearer \"+你的token)\n}",
          "type": "json"
        }
      ]
    },
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "oldPassword",
            "description": "<p>原密碼</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "newPassword",
            "description": "<p>新密碼</p>"
          }
        ]
      }
    },
    "success": {
      "examples": [
        {
          "title": "Success-Response:",
          "content": "HTTP/1.1 200 OK",
          "type": "json"
        }
      ]
    },
    "version": "0.0.0",
    "filename": "./app.js",
    "groupTitle": "Userinfo",
    "error": {
      "fields": {
        "Error 4xx": [
          {
            "group": "Error 4xx",
            "optional": false,
            "field": "UnknownError",
            "description": "<p>404未知錯誤</p>"
          },
          {
            "group": "Error 4xx",
            "optional": false,
            "field": "ParamsError",
            "description": "<p>400返回各個錯誤傳值錯誤訊息</p>"
          },
          {
            "group": "Error 4xx",
            "optional": false,
            "field": "UnauthorizedError",
            "description": "<p>401身份認證失敗</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Error-Response:",
          "content": "HTTP/1.1 404 Not Found\n{\n  \"message\": \"未知錯誤\"\n}",
          "type": "json"
        },
        {
          "title": "Error-Response:",
          "content": "HTTP/1.1 400 Not Found\n{\n  \"message\": \"返回各個錯誤傳值錯誤訊息\"\n}",
          "type": "json"
        },
        {
          "title": "Error-Response:",
          "content": "HTTP/1.1 401 Not Found\n{\n  \"message\": \"身份認證失敗\"\n}",
          "type": "json"
        }
      ]
    }
  },
  {
    "type": "post",
    "url": "/my/updatePic",
    "title": "更改updatePic接口",
    "name": "更改updatePic接口",
    "group": "Userinfo",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Authorization",
            "description": "<p>需攜帶登入後拿到的token(格式為&quot;Bearer &quot;+你的token)</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n  \"Authorization\": 需攜帶登入後拿到的token(格式為\"Bearer \"+你的token)\n}",
          "type": "json"
        }
      ]
    },
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "user_pic",
            "description": "<p>格式需是base64處理過的字串，例如 data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADoAAAA6CAYAAADhu0ooAAAFP0lEQVR4nO2bX0gcRxzH</p>"
          }
        ]
      }
    },
    "success": {
      "examples": [
        {
          "title": "Success-Response:",
          "content": "HTTP/1.1 200 OK",
          "type": "json"
        }
      ]
    },
    "version": "0.0.0",
    "filename": "./app.js",
    "groupTitle": "Userinfo",
    "error": {
      "fields": {
        "Error 4xx": [
          {
            "group": "Error 4xx",
            "optional": false,
            "field": "UnknownError",
            "description": "<p>404未知錯誤</p>"
          },
          {
            "group": "Error 4xx",
            "optional": false,
            "field": "ParamsError",
            "description": "<p>400返回各個錯誤傳值錯誤訊息</p>"
          },
          {
            "group": "Error 4xx",
            "optional": false,
            "field": "UnauthorizedError",
            "description": "<p>401身份認證失敗</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Error-Response:",
          "content": "HTTP/1.1 404 Not Found\n{\n  \"message\": \"未知錯誤\"\n}",
          "type": "json"
        },
        {
          "title": "Error-Response:",
          "content": "HTTP/1.1 400 Not Found\n{\n  \"message\": \"返回各個錯誤傳值錯誤訊息\"\n}",
          "type": "json"
        },
        {
          "title": "Error-Response:",
          "content": "HTTP/1.1 401 Not Found\n{\n  \"message\": \"身份認證失敗\"\n}",
          "type": "json"
        }
      ]
    }
  },
  {
    "type": "post",
    "url": "/my/userinfo",
    "title": "更新userinfo接口",
    "name": "更新userinfo接口",
    "group": "Userinfo",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Authorization",
            "description": "<p>需攜帶登入後拿到的token(格式為&quot;Bearer &quot;+你的token)</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n  \"Authorization\": 需攜帶登入後拿到的token(格式為\"Bearer \"+你的token)\n}",
          "type": "json"
        }
      ]
    },
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "nickname",
            "description": "<p>暱稱</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "email",
            "description": "<p>email</p>"
          }
        ]
      }
    },
    "success": {
      "examples": [
        {
          "title": "Success-Response:",
          "content": "HTTP/1.1 200 OK",
          "type": "json"
        }
      ]
    },
    "version": "0.0.0",
    "filename": "./app.js",
    "groupTitle": "Userinfo",
    "error": {
      "fields": {
        "Error 4xx": [
          {
            "group": "Error 4xx",
            "optional": false,
            "field": "UnknownError",
            "description": "<p>404未知錯誤</p>"
          },
          {
            "group": "Error 4xx",
            "optional": false,
            "field": "ParamsError",
            "description": "<p>400返回各個錯誤傳值錯誤訊息</p>"
          },
          {
            "group": "Error 4xx",
            "optional": false,
            "field": "UnauthorizedError",
            "description": "<p>401身份認證失敗</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Error-Response:",
          "content": "HTTP/1.1 404 Not Found\n{\n  \"message\": \"未知錯誤\"\n}",
          "type": "json"
        },
        {
          "title": "Error-Response:",
          "content": "HTTP/1.1 400 Not Found\n{\n  \"message\": \"返回各個錯誤傳值錯誤訊息\"\n}",
          "type": "json"
        },
        {
          "title": "Error-Response:",
          "content": "HTTP/1.1 401 Not Found\n{\n  \"message\": \"身份認證失敗\"\n}",
          "type": "json"
        }
      ]
    }
  },
  {
    "type": "get",
    "url": "/my/userinfo",
    "title": "獲取userinfo接口",
    "name": "獲取userinfo接口",
    "group": "Userinfo",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Authorization",
            "description": "<p>需攜帶登入後拿到的token(格式為&quot;Bearer &quot;+你的token)</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n  \"Authorization\": 需攜帶登入後拿到的token(格式為\"Bearer \"+你的token)\n}",
          "type": "json"
        }
      ]
    },
    "success": {
      "examples": [
        {
          "title": "Success-Response:",
          "content": "HTTP/1.1 200 OK",
          "type": "json"
        }
      ]
    },
    "version": "0.0.0",
    "filename": "./app.js",
    "groupTitle": "Userinfo",
    "error": {
      "fields": {
        "Error 4xx": [
          {
            "group": "Error 4xx",
            "optional": false,
            "field": "UnknownError",
            "description": "<p>404未知錯誤</p>"
          },
          {
            "group": "Error 4xx",
            "optional": false,
            "field": "ParamsError",
            "description": "<p>400返回各個錯誤傳值錯誤訊息</p>"
          },
          {
            "group": "Error 4xx",
            "optional": false,
            "field": "UnauthorizedError",
            "description": "<p>401身份認證失敗</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Error-Response:",
          "content": "HTTP/1.1 404 Not Found\n{\n  \"message\": \"未知錯誤\"\n}",
          "type": "json"
        },
        {
          "title": "Error-Response:",
          "content": "HTTP/1.1 400 Not Found\n{\n  \"message\": \"返回各個錯誤傳值錯誤訊息\"\n}",
          "type": "json"
        },
        {
          "title": "Error-Response:",
          "content": "HTTP/1.1 401 Not Found\n{\n  \"message\": \"身份認證失敗\"\n}",
          "type": "json"
        }
      ]
    }
  },
  {
    "type": "post",
    "url": "/api/login",
    "title": "login接口",
    "name": "login接口",
    "group": "User",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "username",
            "description": "<p>帳號</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "password",
            "description": "<p>密碼</p>"
          }
        ]
      }
    },
    "success": {
      "examples": [
        {
          "title": "Success-Response:",
          "content": "HTTP/1.1 200 OK",
          "type": "json"
        }
      ]
    },
    "version": "0.0.0",
    "filename": "./app.js",
    "groupTitle": "User",
    "error": {
      "fields": {
        "Error 4xx": [
          {
            "group": "Error 4xx",
            "optional": false,
            "field": "UnknownError",
            "description": "<p>404未知錯誤</p>"
          },
          {
            "group": "Error 4xx",
            "optional": false,
            "field": "ParamsError",
            "description": "<p>400返回各個錯誤傳值錯誤訊息</p>"
          },
          {
            "group": "Error 4xx",
            "optional": false,
            "field": "UnauthorizedError",
            "description": "<p>401身份認證失敗</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Error-Response:",
          "content": "HTTP/1.1 404 Not Found\n{\n  \"message\": \"未知錯誤\"\n}",
          "type": "json"
        },
        {
          "title": "Error-Response:",
          "content": "HTTP/1.1 400 Not Found\n{\n  \"message\": \"返回各個錯誤傳值錯誤訊息\"\n}",
          "type": "json"
        },
        {
          "title": "Error-Response:",
          "content": "HTTP/1.1 401 Not Found\n{\n  \"message\": \"身份認證失敗\"\n}",
          "type": "json"
        }
      ]
    }
  },
  {
    "type": "post",
    "url": "/api/register",
    "title": "register接口",
    "name": "register接口",
    "group": "User",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "username",
            "description": "<p>帳號</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "password",
            "description": "<p>密碼</p>"
          }
        ]
      }
    },
    "success": {
      "examples": [
        {
          "title": "Success-Response:",
          "content": "HTTP/1.1 200 OK",
          "type": "json"
        }
      ]
    },
    "version": "0.0.0",
    "filename": "./app.js",
    "groupTitle": "User",
    "error": {
      "fields": {
        "Error 4xx": [
          {
            "group": "Error 4xx",
            "optional": false,
            "field": "UnknownError",
            "description": "<p>404未知錯誤</p>"
          },
          {
            "group": "Error 4xx",
            "optional": false,
            "field": "ParamsError",
            "description": "<p>400返回各個錯誤傳值錯誤訊息</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Error-Response:",
          "content": "HTTP/1.1 404 Not Found\n{\n  \"message\": \"未知錯誤\"\n}",
          "type": "json"
        },
        {
          "title": "Error-Response:",
          "content": "HTTP/1.1 400 Not Found\n{\n  \"message\": \"返回各個錯誤傳值錯誤訊息\"\n}",
          "type": "json"
        }
      ]
    }
  },
  {
    "type": "post",
    "url": "/my/article/updateCategory",
    "title": "修改(更新)文章分類articleCategory接口",
    "name": "修改更新文章分類articleCategory接口",
    "group": "articleCategory",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Authorization",
            "description": "<p>需攜帶登入後拿到的token(格式為&quot;Bearer &quot;+你的token)</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n  \"Authorization\": 需攜帶登入後拿到的token(格式為\"Bearer \"+你的token)\n}",
          "type": "json"
        }
      ]
    },
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "id",
            "description": "<p>id</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "name",
            "description": "<p>文章名稱</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "alias",
            "description": "<p>別稱</p>"
          }
        ]
      }
    },
    "success": {
      "examples": [
        {
          "title": "Success-Response:",
          "content": "HTTP/1.1 200 OK",
          "type": "json"
        }
      ]
    },
    "version": "0.0.0",
    "filename": "./app.js",
    "groupTitle": "articleCategory",
    "error": {
      "fields": {
        "Error 4xx": [
          {
            "group": "Error 4xx",
            "optional": false,
            "field": "UnknownError",
            "description": "<p>404未知錯誤</p>"
          },
          {
            "group": "Error 4xx",
            "optional": false,
            "field": "ParamsError",
            "description": "<p>400返回各個錯誤傳值錯誤訊息</p>"
          },
          {
            "group": "Error 4xx",
            "optional": false,
            "field": "UnauthorizedError",
            "description": "<p>401身份認證失敗</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Error-Response:",
          "content": "HTTP/1.1 404 Not Found\n{\n  \"message\": \"未知錯誤\"\n}",
          "type": "json"
        },
        {
          "title": "Error-Response:",
          "content": "HTTP/1.1 400 Not Found\n{\n  \"message\": \"返回各個錯誤傳值錯誤訊息\"\n}",
          "type": "json"
        },
        {
          "title": "Error-Response:",
          "content": "HTTP/1.1 401 Not Found\n{\n  \"message\": \"身份認證失敗\"\n}",
          "type": "json"
        }
      ]
    }
  },
  {
    "type": "get",
    "url": "/my/article/deleteCategory/:id",
    "title": "刪除文章分類articleCategory接口",
    "name": "刪除文章分類articleCategory接口",
    "group": "articleCategory",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Authorization",
            "description": "<p>需攜帶登入後拿到的token(格式為&quot;Bearer &quot;+你的token)</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n  \"Authorization\": 需攜帶登入後拿到的token(格式為\"Bearer \"+你的token)\n}",
          "type": "json"
        }
      ]
    },
    "parameter": {
      "examples": [
        {
          "title": "Request-Example:",
          "content": "{\n  /my/article/deleteCategory/1\n}",
          "type": "json"
        }
      ]
    },
    "success": {
      "examples": [
        {
          "title": "Success-Response:",
          "content": "HTTP/1.1 200 OK",
          "type": "json"
        }
      ]
    },
    "version": "0.0.0",
    "filename": "./app.js",
    "groupTitle": "articleCategory",
    "error": {
      "fields": {
        "Error 4xx": [
          {
            "group": "Error 4xx",
            "optional": false,
            "field": "UnknownError",
            "description": "<p>404未知錯誤</p>"
          },
          {
            "group": "Error 4xx",
            "optional": false,
            "field": "ParamsError",
            "description": "<p>400返回各個錯誤傳值錯誤訊息</p>"
          },
          {
            "group": "Error 4xx",
            "optional": false,
            "field": "UnauthorizedError",
            "description": "<p>401身份認證失敗</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Error-Response:",
          "content": "HTTP/1.1 404 Not Found\n{\n  \"message\": \"未知錯誤\"\n}",
          "type": "json"
        },
        {
          "title": "Error-Response:",
          "content": "HTTP/1.1 400 Not Found\n{\n  \"message\": \"返回各個錯誤傳值錯誤訊息\"\n}",
          "type": "json"
        },
        {
          "title": "Error-Response:",
          "content": "HTTP/1.1 401 Not Found\n{\n  \"message\": \"身份認證失敗\"\n}",
          "type": "json"
        }
      ]
    }
  },
  {
    "type": "post",
    "url": "/my/article/addCategory",
    "title": "新增文章分類articleCategory接口",
    "name": "新增文章分類articleCategory接口",
    "group": "articleCategory",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Authorization",
            "description": "<p>需攜帶登入後拿到的token(格式為&quot;Bearer &quot;+你的token)</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n  \"Authorization\": 需攜帶登入後拿到的token(格式為\"Bearer \"+你的token)\n}",
          "type": "json"
        }
      ]
    },
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "name",
            "description": "<p>文章名稱</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "alias",
            "description": "<p>別稱</p>"
          }
        ]
      }
    },
    "success": {
      "examples": [
        {
          "title": "Success-Response:",
          "content": "HTTP/1.1 200 OK",
          "type": "json"
        }
      ]
    },
    "version": "0.0.0",
    "filename": "./app.js",
    "groupTitle": "articleCategory",
    "error": {
      "fields": {
        "Error 4xx": [
          {
            "group": "Error 4xx",
            "optional": false,
            "field": "UnknownError",
            "description": "<p>404未知錯誤</p>"
          },
          {
            "group": "Error 4xx",
            "optional": false,
            "field": "ParamsError",
            "description": "<p>400返回各個錯誤傳值錯誤訊息</p>"
          },
          {
            "group": "Error 4xx",
            "optional": false,
            "field": "UnauthorizedError",
            "description": "<p>401身份認證失敗</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Error-Response:",
          "content": "HTTP/1.1 404 Not Found\n{\n  \"message\": \"未知錯誤\"\n}",
          "type": "json"
        },
        {
          "title": "Error-Response:",
          "content": "HTTP/1.1 400 Not Found\n{\n  \"message\": \"返回各個錯誤傳值錯誤訊息\"\n}",
          "type": "json"
        },
        {
          "title": "Error-Response:",
          "content": "HTTP/1.1 401 Not Found\n{\n  \"message\": \"身份認證失敗\"\n}",
          "type": "json"
        }
      ]
    }
  },
  {
    "type": "get",
    "url": "/my/article/cates/:id",
    "title": "根據特定id獲取那筆資料articleCategory接口",
    "name": "根據id獲取article接口",
    "group": "articleCategory",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Authorization",
            "description": "<p>需攜帶登入後拿到的token(格式為&quot;Bearer &quot;+你的token)</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n  \"Authorization\": 需攜帶登入後拿到的token(格式為\"Bearer \"+你的token)\n}",
          "type": "json"
        }
      ]
    },
    "parameter": {
      "examples": [
        {
          "title": "Request-Example:",
          "content": "{\n  my/article/cates/1\n}",
          "type": "json"
        }
      ]
    },
    "success": {
      "examples": [
        {
          "title": "Success-Response:",
          "content": "HTTP/1.1 200 OK",
          "type": "json"
        }
      ]
    },
    "version": "0.0.0",
    "filename": "./app.js",
    "groupTitle": "articleCategory",
    "error": {
      "fields": {
        "Error 4xx": [
          {
            "group": "Error 4xx",
            "optional": false,
            "field": "UnknownError",
            "description": "<p>404未知錯誤</p>"
          },
          {
            "group": "Error 4xx",
            "optional": false,
            "field": "ParamsError",
            "description": "<p>400返回各個錯誤傳值錯誤訊息</p>"
          },
          {
            "group": "Error 4xx",
            "optional": false,
            "field": "UnauthorizedError",
            "description": "<p>401身份認證失敗</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Error-Response:",
          "content": "HTTP/1.1 404 Not Found\n{\n  \"message\": \"未知錯誤\"\n}",
          "type": "json"
        },
        {
          "title": "Error-Response:",
          "content": "HTTP/1.1 400 Not Found\n{\n  \"message\": \"返回各個錯誤傳值錯誤訊息\"\n}",
          "type": "json"
        },
        {
          "title": "Error-Response:",
          "content": "HTTP/1.1 401 Not Found\n{\n  \"message\": \"身份認證失敗\"\n}",
          "type": "json"
        }
      ]
    }
  },
  {
    "type": "get",
    "url": "/my/article/cates",
    "title": "獲取articleCategory接口",
    "name": "獲取article接口",
    "group": "articleCategory",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Authorization",
            "description": "<p>需攜帶登入後拿到的token(格式為&quot;Bearer &quot;+你的token)</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n  \"Authorization\": 需攜帶登入後拿到的token(格式為\"Bearer \"+你的token)\n}",
          "type": "json"
        }
      ]
    },
    "success": {
      "examples": [
        {
          "title": "Success-Response:",
          "content": "HTTP/1.1 200 OK",
          "type": "json"
        }
      ]
    },
    "version": "0.0.0",
    "filename": "./app.js",
    "groupTitle": "articleCategory",
    "error": {
      "fields": {
        "Error 4xx": [
          {
            "group": "Error 4xx",
            "optional": false,
            "field": "UnknownError",
            "description": "<p>404未知錯誤</p>"
          },
          {
            "group": "Error 4xx",
            "optional": false,
            "field": "ParamsError",
            "description": "<p>400返回各個錯誤傳值錯誤訊息</p>"
          },
          {
            "group": "Error 4xx",
            "optional": false,
            "field": "UnauthorizedError",
            "description": "<p>401身份認證失敗</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Error-Response:",
          "content": "HTTP/1.1 404 Not Found\n{\n  \"message\": \"未知錯誤\"\n}",
          "type": "json"
        },
        {
          "title": "Error-Response:",
          "content": "HTTP/1.1 400 Not Found\n{\n  \"message\": \"返回各個錯誤傳值錯誤訊息\"\n}",
          "type": "json"
        },
        {
          "title": "Error-Response:",
          "content": "HTTP/1.1 401 Not Found\n{\n  \"message\": \"身份認證失敗\"\n}",
          "type": "json"
        }
      ]
    }
  },
  {
    "type": "post",
    "url": "/my/article/add",
    "title": "發布文章article接口",
    "name": "發布文章article接口",
    "group": "article",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Authorization",
            "description": "<p>需攜帶登入後拿到的token(格式為&quot;Bearer &quot;+你的token)</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "    {\n      \"Authorization\": 需攜帶登入後拿到的token(格式為\"Bearer \"+你的token)\n       請求資料的格式需要是FormData格式因為要存檔案\n\t\t  目前此接口只支援用postman測試 要在Body裡面用form-data裡面把cover_img的KEY那邊選File並上傳本地檔案到伺服器\n    }",
          "type": "json"
        }
      ]
    },
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "title",
            "description": "<p>文章名稱</p>"
          },
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "cate_id",
            "description": "<p>文章種類id</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "content",
            "description": "<p>文章內容</p>"
          },
          {
            "group": "Parameter",
            "type": "Blob",
            "optional": false,
            "field": "cover_img",
            "description": "<p>文章封面圖片(需要選擇本地檔案上傳)</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "state",
            "description": "<p>文章狀態(&quot;已發布&quot;or&quot;草稿&quot;)</p>"
          }
        ]
      }
    },
    "success": {
      "examples": [
        {
          "title": "Success-Response:",
          "content": "HTTP/1.1 200 OK",
          "type": "json"
        }
      ]
    },
    "version": "0.0.0",
    "filename": "./app.js",
    "groupTitle": "article",
    "error": {
      "fields": {
        "Error 4xx": [
          {
            "group": "Error 4xx",
            "optional": false,
            "field": "UnknownError",
            "description": "<p>404未知錯誤</p>"
          },
          {
            "group": "Error 4xx",
            "optional": false,
            "field": "ParamsError",
            "description": "<p>400返回各個錯誤傳值錯誤訊息</p>"
          },
          {
            "group": "Error 4xx",
            "optional": false,
            "field": "UnauthorizedError",
            "description": "<p>401身份認證失敗</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Error-Response:",
          "content": "HTTP/1.1 404 Not Found\n{\n  \"message\": \"未知錯誤\"\n}",
          "type": "json"
        },
        {
          "title": "Error-Response:",
          "content": "HTTP/1.1 400 Not Found\n{\n  \"message\": \"返回各個錯誤傳值錯誤訊息\"\n}",
          "type": "json"
        },
        {
          "title": "Error-Response:",
          "content": "HTTP/1.1 401 Not Found\n{\n  \"message\": \"身份認證失敗\"\n}",
          "type": "json"
        }
      ]
    }
  }
] });
