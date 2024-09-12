---
title: Bugs and issues
date: 2024-09-07
links:
  353: //github.com/nuejs/nue/issues/353
  352: //github.com/nuejs/nue/issues/352
  351: //github.com/nuejs/nue/issues/351
  350: //github.com/nuejs/nue/issues/350
  348: //github.com/nuejs/nue/issues/348
  343: //github.com/nuejs/nue/issues/343
  356: //github.com/nuejs/nue/issues/356
  includes: //nuejs.org/docs/project-structure.html#:~:text=statement%20as%20follows%3A-,include,-%3A%20%5Bsyntax
  excludes: //nuejs.org/docs/project-structure.html#exclude
  361: //github.com/nuejs/nue/issues/361
---

## Issues and feature requests

These are some issues I've already raised on github with dev team

1. [Markdown extension docs should include instructions to "include" the components][352]
1. [Better error message when markdown extension is mispelled][351]
1. [Use "snippets" pattern to import test code into docs][350]
1. [Support inline <span> components in markdown][348]
1. [Glow to please support line numbers when using fence blocks][343]
1. [Adding [codetabs] to any markdown page gives runtime chrome error Failed to resolve module][353]
1. [Access to current Nuejs version as a system variable][356]

## Things that need discussion or polish (my 2 cents)

The following things I didn't quite feel the love;

### Libraries, Include, Exclude

1. Including and Excluding assets felt like a very manual way to optimise payload.  It feels like it should simply `not exist` ? i.e. couldnt Nue just employ some kind of smart tree shaking to determine what things are needed and what are not and deliver an optimal payload automatically? 
2. Does this mean that javascript code won't behave as expected? 
3. How do I import just one function from a library?
4. If two different pages both import just a function from a lib, how do you write singletons (static) instances?

### 3. Stability?

1. I know I said in my "fabulous features" that because so much has been removed it feels really rock solid. That's kind of true, but there are moments where things just suddenly don't behave and I can't report it as a bug because the dev team say they can't reproduce, and it feels like I'm gaslighting myself.
1. For the issue above, it turns out I actually had remembered `[! /img/myimage.jpg]` totally correctly, but for some unknow reason, Nue just REFUSED to render the image, instead it rendered the actual markdown. The only way I managed to get it working was to cut and paste `[! img/favicon.jpg]` from a different project, and suddenly it started working again, as if one of the characters I had typed had some encoding issue, or the generated code by the nue compile step has an encoding problem. This is not the first time this type of "HUH???" moment ...has happened. I even stopped and started nue, and deleted the `.dist` folder just in case. I will have to watch this space carefully.
1. I normally wouldnt make such a big deal of this; but, when trying to learn a new system, if you hit one of these bugs during your learning, it can be a dealbreaker that is so confusing that you just give up and move on and use something that actually works for you. So, I will be watching very carefully to see if this happens again soon enough for me to say this is actually a real concern. The next time this happens, I'm going to deploy the page, and see if the bug is local to my machine, or persists to production. 

Update: it happened again, and literally in this very page. (Which is why there's a bit of gobblygook in the text a bit further up just to surround the two instances of the image tags)

This is quite important; because I believe these types of issues go unreported. A new user doesnt even know that something is an issue, they just think they've misunderstood it, and decide, "this is too complicated for me", or, "it's not as simple as the authors claim it is" and they dont report it as a bug.

### update: 11pm Thur 12th

1. [I reported the bug on github issues][361]; and it was picked up by 1 of the devs, we had an exchange on github issues and we identified the root cause and found a simple workaround within 2 hours. 

[button label="backity back back" href="/"]