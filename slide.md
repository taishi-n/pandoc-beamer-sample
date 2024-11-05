---
title: "Pandoc beamer sample"
subtitle: "with pympress"
author: "taishi-n"
institute: "qiita"
date: \today
theme: metropolis
---

## 基本的な使い方

### 数式

\metroset{block=fill}

#### Fourier Transform

$$X(\omega) = \int _{-\infty} ^{\infty} x(t) \exp \left(- j{2\pi f t}\right) \mathrm{d}t$$
$$x(t) = \int _{-\infty} ^{\infty} X(\omega) \exp \left( j{2\pi f t}\right) \mathrm{d}\omega$$

#### Discrete Fourier Transform

$$X_k = \sum _{n=0} ^{N-1} x_n \exp \left(- j\frac{2\pi n k}{N} \right)$$
$$x_n = \sum _{k=0} ^{N-1} x_n \exp \left(+ j\frac{2\pi n k}{N} \right)$$

### 画像の挿入

![](spec.pdf)

## 応用編

### カラム分割

::: columns
:::: {.column width=40%}

- 列に分割して何かを並べたい時に重宝します
- この例では左側 40%右側 60%としています

::::

:::: {.column width=60%}

- もちろん画像や数式の挿入もできます

![](spec.pdf)

$$X_k = \sum _{n=0} ^{N-1} x_n \exp \left(- j\frac{2\pi n k}{N} \right)$$

::::
:::

### TeX コードの直接入力

- どうしても markdown で無理があるという場合は TeX コードを直接打ち込むこともできます

```{=latex}
\begin{figure}[t]
\centering
\includegraphics[height=.5\textwidth]{spec.pdf}
\end{figure}
```

### note 機能

- スピーカーノート
- プリアンブルに下記を追加
  ```
  \mode<beamer>{
    \setbeameroption{show notes on second screen}
    \setbeamertemplate{note page}[plain]
  }
  ```
- [pympress](https://github.com/Cimbali/pympress)と連携可能

::: notes

- いわゆるスピーカーノートです
- プリアンブルに次のような命令を書くことで左側にスライド本体，右側に台本が表示された横長の pdf が生成されます
- pympress で生成された pdf を開いて，スピーカーノートが右側にあることを設定で与えるとﾊﾟﾜﾎﾟの発表者画面のようになります
- 時間管理もできてなにげに便利です

:::

### 動画の再生

- pympress を使えば動画も再生可能
  ```{=latex}
  \movie[height=18pt]{\includegraphics[height=18pt]{mix.png}}{mix.mp4}
  ```
