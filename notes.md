## I'm pondering
Initially, I wondered how to draw textboxes. There are a lot of ways to do it, but I think it's a more contained problem than the real challenge: scalable, maintainable, data-driven dialogue trees.

One of the coolest and most compelling systems I've looked into is by FriendlyCosmonaut. It relies on some implied / optional properties set by the NPC object itself, which is then fed into a dialogue management script. It keeps things simple while providing a lot of flexibility for adding new features and updating dialogue.

Some problems I find with such a system (and most I've seen so far) is in managing complex dialogue trees with multiple conditions and cyclic edges. Assuming my game is the length of a classic JRPG from the SNES era, there's quite a lot of dialogue to manage. Locking conversations into an NPC object leads me to think that conversations with the same NPC will require one of the following (which are not ideal): 
  - multiple objects for the same NPC at different points in the game
  - many, many lines of dialogue code in the UserEvent0 file. I'm talking heaps of dialogue.

...