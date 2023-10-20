import { defaultTheme, defineUserConfig } from 'vuepress'

export default defineUserConfig({
  lang: 'zh-CN',
  title: '你好， VuePress ！',
  description: '这是我的第一个 VuePress 站点',
  theme: defaultTheme({
    logo: '/images/logo.svg',
    // 默认主题配置
    navbar: [
        {
          text: '首页',
          link: '/',
        },
        {
            text: 'X.com',
            link: 'https://www.x.com/',
        },
      ],
  }),
})