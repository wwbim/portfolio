# 个人主页与 GitHub Pages 部署指引

欢迎使用为您全新定制的 **WANG Wei 个人专业主页（Portfolio & Professional Profile）**。

相比原先 Carrd 页面的简单纵向堆叠，新版主页为您带来了全面的视觉与交互升级：
- **现代化科技质感暗黑风**：采用深度工程蓝/深空灰配色，搭配微光粒子背景与毛玻璃悬浮卡片（Glassmorphism）。
- **完全自由的排版与分类体系**：
  - **Hero 顶级介绍区**：突出“20 年土木工程经验、10 年 BIM/VDC 数字化战略落地”、核心资质背书与快速联系通道。
  - **核心能力矩阵（Core Expertise Bento）**：清晰分类 4D 虚拟施工、实景激光扫描/无人机航测、三维施工动画、多专业模型协调（Revizto/Navisworks）、360度虚拟漫游与 5D 工程量 Power BI 分析。
  - **作品画廊（Featured Gallery）**：完整继承并升华了 Carrd 的 9 大作品板块，采用大图卡片与微交互悬停动效。
  - **重点基础设施项目（Landmark Infrastructure）**：结构化展示了新加坡 LTA 汤申-东海岸线（Havelock/Mayflower）、跨岛线 CR116 宏茂桥枢纽、樟宜走廊、璧山车厂加改建等代表作。
  - **20年职业生涯里程碑（Career Timeline）**：从早期的地铁屏蔽门深化设计一路成长到顶尖承包商 BIM 经理的成长轨迹。
  - **全渠道联络网（Contact Grid）**：一键直达 Outlook 邮箱、WhatsApp、Telegram、LinkedIn 以及 YouTube 频道。

---

## 快速本地预览

在您的电脑本地，只需双击打开：
`outputs\index.html`
即可在任意浏览器中全屏查看与交互体验。

---

## 方式一：发布到您的 GitHub Pages（推荐）

GitHub Pages 支持通过个人域名或免费的二级域名访问：`https://<你的GitHub用户名>.github.io`。

### 操作步骤：
1. 打开浏览器登录 [GitHub.com](https://github.com) 并创建一个新仓库（New Repository）：
   - 仓库名称填写：`<你的GitHub用户名>.github.io`（例如如果用户名是 `wwbim`，仓库名就叫 `wwbim.github.io`）。
   - 仓库属性选择：**Public**（公开）。
2. 将 `outputs` 文件夹下的 `index.html` 上传到该仓库的根目录。
3. 进入该仓库的 **Settings** -> **Pages**：
   - **Source** 选择 `Deploy from a branch`。
   - **Branch** 选择 `main` 分支，路径选择 `/ (root)`，点击 **Save**。
4. 等待 1~2 分钟，GitHub 会生成访问链接，您的专属个人主页即正式全球上线！

---

## 方式二：绑定您的自定义域名（如 wwbim.com）

如果您持有自己的独立域名：
1. 在仓库根目录下新建一个名为 `CNAME` 的文本文件，内容为您想绑定的域名（例如 `wwbim.com` 或 `www.wwbim.com`）。
2. 在您的域名 DNS 服务商（如 Cloudflare, GoDaddy, 阿里云等）处添加解析记录：
   - 针对根域名：添加 4 条 A 记录指向 GitHub Pages IP：
     - `185.199.108.153`
     - `185.199.109.153`
     - `185.199.110.153`
     - `185.199.111.153`
   - 针对二级域名（如 www）：添加一条 CNAME 记录指向 `<你的GitHub用户名>.github.io`。
3. 在 GitHub 仓库的 **Settings** -> **Pages** 中勾选 **Enforce HTTPS** 即可自动开通 SSL 免费证书。
