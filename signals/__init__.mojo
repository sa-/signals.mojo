@value
struct State[T: AnyRegType]:
    var _value: T

    fn get(self) -> T:
        return self._value

    fn set(inout self, value: T):
        self._value = value


@value
struct Computed[inferred T: AnyRegType, func: fn () capturing -> T]:
    fn get(self) -> T:
        return func()