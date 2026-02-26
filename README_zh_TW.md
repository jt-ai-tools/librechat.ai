# LibreChat 文件

[LibreChat](https://github.com/danny-avila/LibreChat) 的官方文件網站，使用 [Next.js 15](https://nextjs.org/) 與 [Fumadocs](https://fumadocs.vercel.app/) 構建。

**[www.librechat.ai](https://www.librechat.ai)**

## 技術棧

- **框架：** Next.js 15 (App Router)
- **文件引擎：** Fumadocs (fumadocs-mdx + fumadocs-ui)
- **樣式：** Tailwind CSS
- **圖標：** Lucide React
- **套件管理器：** Bun

## 本地開發

**先決條件：** [Bun](https://bun.sh/) 1.0+

1. 複製（Clone）此儲存庫
2. 將 `.env.template` 複製為 `.env.local` 並填入任何選用值
3. 安裝依賴項目：
   ```bash
   bun i
   ```
4. 啟動開發伺服器（使用 Turbopack）：
   ```bash
   bun dev
   ```
5. 開啟 [http://localhost:3333](http://localhost:3333)

**注意：** 在提交 Pull Request 之前，請務必執行 `bun run build` 以儘早發現構建錯誤。

## 專案結構

```
app/              # Next.js App Router 頁面 (文件、部落格、更新日誌、API 路由)
content/
  docs/           # 文件頁面 (MDX)
  blog/           # 部落格文章 (MDX)
  changelog/      # 更新日誌項目 (MDX)
components/       # React 元件 (首頁、UI、圖標等)
lib/              # 工具函式、圖標、MDX 元件、Nextra shims
public/           # 靜態資產
pages/            # 舊版頁面 (正在遷移至 app/)
source.config.ts  # Fumadocs 內容集合配置
```

### 文件內容

文件位於 `content/docs/` 並按章節組織。每個目錄都有一個 `meta.json` 用於控制側邊欄導航：

```json
{
  "title": "章節標題",
  "icon": "Wrench",
  "pages": ["index", "page-one", "page-two"]
}
```

只有在 `pages` 陣列中列出的頁面才會出現在側邊欄中。

## 腳本命令

| 命令 | 描述 |
|---------|-------------|
| `bun dev` | 在連接埠 3333 啟動開發伺服器 (Turbopack) |
| `bun run build` | 正式版構建 |
| `bun start` | 在連接埠 3333 啟動正式版伺服器 |
| `bun run lint` | 執行 ESLint 檢查 |
| `bun run prettier` | 使用 Prettier 格式化程式碼 |
| `bun run analyze` | 分析正式版打包大小 |

## 授權條款

[MIT](./LICENSE)
