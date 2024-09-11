
---
include: [ ]

---

## Documentation Improvements?

1. Example "components" in Template syntax docs, have no filenames, so it's not intuitive what to name a "template" or component when creating one.
2. [settings links][links] needs a worked `example`; see below

The description `[Link Label] [link_reference]` is possibly misleading, because it looks like the first piece means `Link` and `Label` instead of **the label of the Link that matches the label you used in you config**.

There is no actual worked example in the documentation; I had to find out how this actually worked by searching for "gds" in the github source code to find out it was actually quite simple. **Adding a worked example underneath the config** would follow [Gojko Adzic's specification by example mantra][gojko].

#### Suggested amendment

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
