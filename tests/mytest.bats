load harness

@test "mytest-1" {
  check '2 ** 2' '4'
}

@test "mytest-2" {
  check '-2 ** 3' '-8'
}

@test "mytest-3" {
  check '25 / 5' '5'
}

@test "mytest-4" {
  check '2 ** 3 + 3 * 2' '48'
}

@test "mytest-5" {
  check '(5 - 2) ** 3' '27'
}