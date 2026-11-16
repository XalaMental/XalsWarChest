# License

This project uses different license terms for different parts of it. Read
the section that applies to the part you're interested in.

---

## 1. Addon Code and Custom Art (All Rights Reserved)

Applies to all `.lua`, `.toc`, `.xml` files and custom artwork, except the
bundled fonts covered in section 2 below.

Copyright (c) 2026 Xal. All rights reserved.

This code and artwork may not be copied, redistributed, modified, or reused
in another project, in whole or in part, without explicit permission from
the author. If you'd like to use, adapt, or build on any of it, ask first.

---

## 2. Bundled Fonts

`Fonts/Cinzel-Bold.ttf` (Cinzel Bold), `Fonts/Inter-Regular.ttf` (Inter
Regular), and `Fonts/Inter-SemiBold.ttf` (Inter SemiBold) are licensed under
the SIL Open Font License, not the terms above - see `Fonts/Cinzel-LICENSE.txt`
and `Fonts/Inter-LICENSE.txt` for the full text. They're redistributed here
exactly as their own licenses permit.

---

## 3. Bundled Libraries

`libs/LibStub`, `libs/CallbackHandler`, `libs/LibDataBroker` and
`libs/LibDBIcon` are third-party libraries redistributed under their own
licenses, not the terms in section 1.

---

## 4. Third-Party Game Data

Some of the source data in the WoW Forever build is compiled from facts
published by other projects, under their own licenses:

- The WoW Forever data files (`Forever*.lua`) — item, NPC, quest and drop
  relationships and spawn positions drawn from pfQuest, the game client's own
  tables, and public game databases, as compiled in the Polestar Codex data
  addon. Only facts (ids, names, levels, positions, drop chances) are used,
  not code or text. pfQuest's license applies to the part taken from it:

> MIT License
>
> Copyright (c) 2017-2021 Eric Mauser (Shagu)
>
> Permission is hereby granted, free of charge, to any person obtaining a copy
> of this software and associated documentation files (the "Software"), to deal
> in the Software without restriction, including without limitation the rights
> to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
> copies of the Software, and to permit persons to whom the Software is
> furnished to do so, subject to the following conditions:
>
> The above copyright notice and this permission notice shall be included in all
> copies or substantial portions of the Software.
>
> THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
> AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
> LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
> OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
> SOFTWARE.

---

## Summary

| Content | License | Can I fork/reuse it? |
|---|---|---|
| Addon code and custom art | All Rights Reserved | No — ask the author first |
| `Fonts/Cinzel-Bold.ttf` | SIL Open Font License | Yes — under the OFL's terms |
| `Fonts/Inter-Regular.ttf` | SIL Open Font License | Yes — under the OFL's terms |
| `Fonts/Inter-SemiBold.ttf` | SIL Open Font License | Yes — under the OFL's terms |
| `libs/*` | Their own licenses | Yes — under each library's terms |
| `Forever*.lua` data | MIT (pfQuest) and public facts | Yes — keep the notice in this file |
