```hack
function foo(x: int): int {
  return x + 1;
}

function bar(x: ?int): int {
  return foo(x);
}
```
This code will produce a runtime error if `x` is null in the `bar` function because `foo` expects an integer and will throw an exception when it receives null.  Hack's type system doesn't catch this because `?int` allows null values, and the type checker doesn't fully propagate the null possibility during function calls. This is a subtle issue because the error isn't a compile-time error, making it harder to debug.