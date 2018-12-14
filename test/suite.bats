#!/usr/bin/env bats


@test "post_push hook is up-to-date" {
  run sh -c "cat Makefile | grep 'TAGS ?= ' | cut -d ' ' -f 3"
  [ "$status" -eq 0 ]
  [ ! "$output" = '' ]
  expected="$output"

  run sh -c "cat hooks/post_push | grep 'for tag in' \
                                 | cut -d '{' -f 2 \
                                 | cut -d '}' -f 1"
  [ "$status" -eq 0 ]
  [ ! "$output" = '' ]
  actual="$output"

  [ "$actual" = "$expected" ]
}


@test "contains node" {
  run docker run --rm $IMAGE which node
  [ "$status" -eq 0 ]
}

@test "node runs ok" {
  run docker run --rm $IMAGE node -v
  [ "$status" -eq 0 ]
}


@test "contains npm" {
  run docker run --rm $IMAGE which npm
  [ "$status" -eq 0 ]
}

@test "npm runs ok" {
  run docker run --rm $IMAGE npm -v
  [ "$status" -eq 0 ]
}


@test "contains git" {
  run docker run --rm $IMAGE which git
  [ "$status" -eq 0 ]
}

@test "git runs ok" {
  run docker run --rm $IMAGE git --help
  [ "$status" -eq 0 ]
}


@test "contains java" {
  run docker run --rm $IMAGE which java
  [ "$status" -eq 0 ]
}

@test "java runs ok" {
  run docker run --rm $IMAGE java -help
  [ "$status" -eq 0 ]
}
