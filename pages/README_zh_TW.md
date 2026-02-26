### 作者簡介 (Author profiles)

- 簡介位於 `pages/authors`
  - 建立一個以您的 authorid 命名的 mdx 檔案
  - 參考其他簡介檔案作為範例
- 作者的大頭照位於：`public/images/people`
- 作者支援的社群媒體圖標 (react-social-icons)：
  ![Socials](https://camo.githubusercontent.com/bb10ce76806a2db855ae9411682342b31f2857ce8ab62b8c0a46d3c3cdb77fdf/68747470733a2f2f7374617469632e72656163742d736f6369616c2d69636f6e732e636f6d2f726561646d652d696d6167652e706e67)

### 更新日誌/部落格 標頭範例 (Changelogs/Blog Headers example)

⚠️ 標題、螢幕截圖與作者資訊會自動填充於更新日誌/部落格中

```markdown
---
date: 2024-04-01
title: LibreChat v0.7.0
description: LibreChat v0.7.0 版本釋出
authorid: danny
ogImage: /images/changelog/2024-04-01-v0.7.0.png
---

import { ChangelogHeader } from "@/components/changelog/ChangelogHeader";

<ChangelogHeader />
```
