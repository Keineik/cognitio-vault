---
title: Cognitio Vault
description: A personal knowledge base and blog
params:
  body_class: td-navbar-links-all-active
---

{{% blocks/cover
  title="Welcome to Cognitio Vault"
  height="full td-below-navbar"
  image_anchor="top"
%}}

<!-- prettier-ignore -->
{{% _param description %}}
{.display-6}

<!-- prettier-ignore -->
<div class="td-cta-buttons my-5">
  <a {{% _param btn-lg primary %}} href="docs/">
    Explore
  </a>
  <a {{% _param btn-lg secondary %}}
    href="{{% param github_repo %}}"
    target="_blank" rel="noopener noreferrer">
    View on GitHub
  </a>
</div>

{{% blocks/link-down color="info" %}}

{{% /blocks/cover %}}

{{% blocks/lead color="white" %}}

Cognitio Vault is my personal knowledge base and blog &mdash; a place to document
what I learn, share insights, and build in public.

{{% /blocks/lead %}}

{{% blocks/section color="primary" type="row" %}}

{{% blocks/feature title="Knowledge Base" icon="fa-book" %}}

Organized notes and documentation on topics I'm exploring and mastering.

{{% /blocks/feature %}}

{{% blocks/feature
  title="Blog" icon="fa-pen-nib"
%}}

Thoughts, tutorials, and reflections on software engineering and beyond.

{{% /blocks/feature %}}

{{% blocks/feature
  title="Built in Public" icon="fab fa-github"
  url="https://github.com/keineik/cognitio-vault"
%}}

This site is open source. Feel free to explore the code or contribute.

{{% /blocks/feature %}}

{{% /blocks/section %}}
