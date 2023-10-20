---
lang: zh-CN
title: 页面的标题
description: 页面的描述
---

# Hello VuePress

- 标签： #bash #Cygwin #Windows
- 创建时间：2023-10-19 13:45:18

---
## 以下几种方式可以进入

1. 默认路径
	1. Cygwin默认进入`/home/gongcen`目录。
2. 转化为Cygwin下的目录
	1. 使用命令：`cd /cygdrive/e/github.com/volnet/v-labs`
3. 使用Windows下的目录
	1. 使用命令：`cd 'E:\github.com\volnet\v-labs'`，把Windows下的路径放置在单引号之中。


```ts{1,6-8}
import { defaultTheme, defineUserConfig } from 'vuepress'

export default defineUserConfig({
  title: '你好， VuePress',

  theme: defaultTheme({
    logo: 'https://vuejs.org/images/logo.png',
  }),
})
```


```md
<!-- 默认情况下，这里会被保持原样 -->
1 + 2 + 3 = {{ 1 + 2 + 3 }}
```

```md:no-v-pre
<!-- 这里会被 Vue 编译 -->
1 + 2 + 3 = {{ 1 + 2 + 3 }}
```

```js:no-v-pre
// 由于 JS 代码高亮，这里不会被正确编译
const onePlusTwoPlusThree = {{ 1 + 2 + 3 }}
```

一加一等于： {{ 1 + 1 }}

<span v-for="i in 3"> span: {{ i }} </span>

这是默认主题内置的 `<Badge />` 组件 <Badge text="演示" />
