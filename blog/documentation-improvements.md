---
title: Documentation Improvements
date: 2024-09-09
links:
  codeblocks: //nuejs.org/docs/tags.html#codeblocks
  header: //nuejs.org/docs/settings.html#header
numbered: true
---

Unsorted list of areas where documentation could possibly be improved;

### 1. Markdown Extensions docs 

Example "components" in Template syntax docs, have no filenames, so it's not intuitive what to name a "template" or component when creating one.

### 2. Links

[settings links][links] needs a worked `example`; see below

The description `[Link Label] [link_reference]` is possibly misleading, because it looks like the first piece means `Link` and `Label` instead of **the label of the Link that matches the label you used in you config**.

There is no actual worked example in the documentation; I had to find out how this actually worked by searching for "gds" in the github source code to find out it was actually quite simple. **Adding a worked example underneath the config** would follow [Gojko Adzic's specification by example mantra][gojko].

#### Suggested amendment; a worked "Example"

List of reference links to be used in the Markdown content in the form of [text&#8209;for&#8209;the&#8209;link][link_reference]. Links are supplied in a `name: url` format. For example:

```yaml .code
# name: url
links:
  gds: //bradfrost.com/blog/post/a-global-design-system/
  soc: //en.wikipedia.org/wiki/Separation_of_concerns
```

Given the above configuration; To create a link to "Brad Frost" with link text of "puts it" would be as follows;

```markdown
Or as **Brad Frost** [puts it][gds]
```

### 3. CodeBlocks

There's no indication in the [docs][codeblocks] of what Codeblocks are useful for? Or how they differ from simply using fenced codeblocks or `[code]` blocks. The following markdowns produce the identical output;

#### Triple backtick \`\`\`
````
  ```html
  <div @name='foo'><h1>hello!</h1></div>
  ```

  ```ts
    const foo = getTheThing({ x, y })
  ```
````

#### ... and \[codeblocks\]

````
  [codeblocks]
    <div @name='foo'><h1>hello!</h1></div>
    ---
    const foo = getTheThing({ x, y })
````

#### ... and \[code\]

````
[code]
  <div @name='foo'><h1>hello!</h1></div>

[code]
  const foo = getTheThing({ x, y })
````

#### all produce

Exactly the same output.

[code]
  <div @name='foo'><h1>hello!</h1></div>

[code]
  const foo = getTheThing({ x, y })


#### Thoughts
1. Fenced code blocks are already a well supported markdown standard and is supported by vscode with automatic language intellisense and colour coding.
2. If you view the source for this page, you save 3 lines using codeblocks, but that's the only minor difference that doesn't seem to justify three different ways to render code blocks?
3. Fenced code blocks are the most verbose, but literally only by 2 extra lines; then `[code]` which is only 1 line longer than using default markdown triple backtick.


### 4. Settings and metadata

Docs on settings and metadata needs an example of how to use a setting. For example, show how to add a site variable like {version} to a page footer. Or how to add it to the HTL layout for the global header.

Examples of real code that works, actually explain how things work 100 times more effectively than plain text.  

For example; [what are some simple valid HTML examples for header, footer, burger_menu][header] ? 


[button label="backity back back" href="/"]