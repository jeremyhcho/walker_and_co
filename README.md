## Run
```
ruby game_spec.rb
```

## Description

**game.rb**

Few assumptions were made with the limited description given for the exercise. One
was that this summary was some sort of "leaderboard" for a given game, thus the
naming convention for the file and class.

Created two instance methods: `#raw_summary` and `#sorted_summary` to break up
the functionality of converting file to hash, and then sorting the hash. You might
notice that I've sorted the hash and then reversed it which might indicate unnecessary
run through but as the benchmark might show - apparently this method runs the fastest
in Ruby. There were no constraints given so I just optimized for speed rather than space.

Includes an arbitrary `String` monkeypatch that adds coloring functionality for
STD_OUT statements on the terminal. Not really necessary - wouldn't normally do this
if we were dealing with a project that was important.

**game_spec.rb**

Spec file for the two instance methods on the `Game` class. Bare bones spec file
with no dependencies besides internal Ruby class: `Benchmark`.

**input_file.csv**

Minimal data given in the exercise

**large_input_file.csv**

Large file that I generated programmatically to deal with 5000 unique names to ensure
it wouldn't take a significant amount of time.
