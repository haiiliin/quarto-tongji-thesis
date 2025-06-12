# quarto-tongji-thesis

A [Quarto](https://quarto.org/) template for thesis of Tongji University. Modified from [marquistj13/TongjiThesis](https://github.com/marquistj13/TongjiThesis).

## Creating a New Article

To create a new article using this format:

```bash
quarto use template haiiliin/quarto-tongji-thesis
```

This will create a new directory with an example document that uses this format.

## Using with an Existing Document

To add this format to an existing document:

```bash
quarto add haiiliin/quarto-tongji-thesis
```

Then, add the format to your document options:

```yaml
format:
  tongji-thesis-pdf: default
```

## Options

- `degree`: Degree, `master` or `doctor`, by default `doctor`
- `title`: 中文标题
- `headingtitle`: 中文页眉标题
- `abstract`: 中文摘要
- `keywords`: 中文关键词
- `author`: 中文作者
- `studentnumber`: 学号
- `cmajorfirst`: 一级专业
- `cmajorsecond`: 二级专业
- `cdepartment`: 院系
- `csupervisor`: 导师
- `cassosupervisor`: 副导师
- `cfunds`: 基金
- `etitle`: English title
- `eauthor`: English author
- `eabstract`: English abstract
- `ekeywords`: English keywords
- `emajorfirst`: English major first
- `emajorsecond`: English major second
- `edepartment`: English department
- `esupervisor`: English supervisor
- `eassosupervisor`: English associate supervisor
- `efunds`: English funds
- `denotation`: List of notations in the `denotation` environment
- `acknowledgement`: Acknowledgement
- `resume`: Resume
