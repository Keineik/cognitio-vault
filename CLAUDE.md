# Guidelines for Working with Cognitio Vault

This document provides guidelines for AI agents and developers working with this Hugo/Docsy repository.

## Project Overview

- **Site**: Cognitio Vault - a personal knowledge base and blog
- **Framework**: Hugo with Docsy theme (installed as Hugo module)
- **Package Manager**: npm (wraps Hugo commands with project-specific flags)
- **Dev Server**: `npm run serve` or `make serve` (live reload enabled)

## Key Commands

| Command | Purpose |
|---------|---------|
| `npm install` | Install dependencies |
| `npm run serve` | Start dev server with live reload |
| `npm run build:production` | Production build |
| `npm run test` | Run link checks |

## Important: Documentation Research

**Always web-search for Docsy/Hugo documentation before making changes.** Many LLMs are not trained on the latest Docsy features, and data may be stale. The official docs are at:

- Docsy: https://www.docsy.dev/docs/
- Hugo: https://gohugo.io/documentation/

## Content Structure

### Directory Layout

```
content/en/
├── _index.md          # Homepage
├── blog/              # Blog posts
│   └── YYYY/MM/DD/    # Date-based permalinks
├── docs/              # Documentation sections
│   ├── section-name/
│   │   ├── _index.md  # Section landing page
│   │   └── page.md    # Individual pages
```

### Adding New Content

**New folder with index:**
1. Create folder: `content/en/docs/your-section/`
2. Create `_index.md` with front matter:
   ```yaml
   ---
   title: Section Title
   weight: 10  # Controls ordering in sidebar
   ---
   ```

**New page in existing folder:**
1. Create `page-name.md` in the section folder
2. Add front matter:
   ```yaml
   ---
   title: Page Title
   weight: 20
   description: Brief description for SEO
   tags: [tag1, tag2]
   categories: [Category Name]
   ---
   ```

### Images

Place images in an `images/` subfolder at the same level as the content:

```
content/en/docs/getting-started/
├── _index.md
├── images/
│   └── screenshot.png
└── another-page.md
```

Reference in markdown: `![Alt text](images/screenshot.png)`

**Do NOT place images alongside .md files.**

### Taxonomies (Tags & Categories)

Tags and categories are applied to **individual pages** via front matter, not to folders:

```yaml
---
title: My Page
tags: [hugo, webdev, tutorial]
categories: [Guides]
---
```

Hugo auto-generates listing pages at `/tags/` and `/categories/`.

## Working with Content Files

**Always read the full file before editing.** Content files may have front matter, shortcodes, and cross-references that affect the entire page. Reading only a section can lead to broken edits.

## Context Management

When performing searches that could pollute the main agent context, **spawn subagents** to handle:

- Web searches for documentation
- Codebase searches across multiple files
- Reference/link searches (finding related content to link together)
- Any operation that returns large amounts of data

Subagents should return only condensed, essential results to the main agent.

## Important: Avoid Generated Files

**NEVER read, grep, or search inside files/folders listed in `.gitignore`.** These are generated artifacts and will pollute context with stale data:

- `/public/` - Hugo build output
- `resources/` - Hugo processed resources
- `node_modules/` - npm dependencies
- `package-lock.json` - npm lock file

Always search only in source files (content, layouts, assets, config).

## SCSS Customization

Project override files in `assets/scss/`:

| File | Purpose |
|------|---------|
| `_variables_project.scss` | SCSS variables before Bootstrap (colors, fonts) |
| `_variables_project_after_bs.scss` | SCSS variables after Bootstrap (color maps) |
| `_styles_project.scss` | Custom CSS rules |

## Testing

Before committing content changes, run:

```bash
npm run test
```

This checks for broken links and other issues.
