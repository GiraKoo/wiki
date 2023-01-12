# GiString

开源项目托管地址：  

- [Gitee](https://gitee.com/girakoo/gi_string.git)  
- [Github](https://github.com/GiraKoo/gi_string.git)

## 介绍

模仿Java的String，StringBuilder，StringBuffer等类，对std::string进行扩展，实现一个内存安全，可以开箱即用的，便捷的字符串类。
当前采用char*进行内部数据管理。通过拷贝构造函数创建的对象将使用同一块char*地址。
对于字符串的任何修改，都将产生新的char*。

如果对本项目感兴趣，发现问题，都可以给我（girakoo@163.com）发送邮件。
我将尽量完善本类。

除此之外，我们准备了一个针对GiraKoo系列项目的WiKi网站，欢迎访问。
https://www.girakoo.com/

## 核心功能

- [ ] 集成String的基本操作。
- [ ] 多字符集支持。
- [ ] std::string和char*相互转换支持。
- [ ] 格式化文本支持。
- [ ] 拆分字符串支持。
- [ ] 基于std::vector原理的字符串内存优化。
- [ ] 集成StringBuilder的字符串操作。
- [ ] 通过内存池优化字符串对于内存的使用。

## 进度

- 2022/11/16 [feat] 头文件创建，补充部分类java api。追加中文注释。

## 参与贡献

1. Fork 本仓库
2. 新建 feature/xxxx 分支
3. 提交代码
4. 新建 Pull Request

![logo.png](https://girakoo.com/img/logo.png)