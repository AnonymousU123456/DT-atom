# 源码补丁

鉴于本项目不编译适配vendor，而是直接使用官方vendor分区，所以难免会造成冲突，必须及时对源码进行修正。为规范化源码补丁，本文件夹所存补丁都是由`git format-patch -N`命令导出。

补丁基于的版本：android-14.0.0_r53

## 使用方法

请根据补丁所在的相对目录，依次进入源码中的对应目录，运行：
```
git am XXX.patch
```
由于Android源码更新频繁，极易出现补丁应用失败的情形，当未能成功应用补丁时，请运行：
```
git apply --reject XXX.patch
```
该命令将尝试尽可能的应用补丁，对于无法应用的补丁，将生成.rej文件，您需要查看.rej文件，人工在相应的源代码文件中添加.rej中未应用的补丁片段。当您在较新的Android版本上成功编译，并确保相关功能运行正常后，请使用以下命令：
```
git add .
git am --continue
git format-patch -1
```
导出补丁，并将新补丁通过Pull Request提交到本仓库，以方便其他用户编译使用。
