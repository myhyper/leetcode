This repository is TDD based problem solver for Leetcode.

### Set up
```bash
bundle install --path .bundle
```

### Start to watch
```bash
bundle exec guard
```
Whenever you update your `.rb` files, rspec will be run each time.

### Make some change
Change `lib/my_leet.rb` file to solve your problem.
Change `spec/my_leet_spec.rb` file to test your solution.
If you pass all the test cases, you can simply copy all content of `my_leet.rb` to submit your code.

### Stop to watch
```bash
Ctrl + c
```
AND
```rb
exit()
```
