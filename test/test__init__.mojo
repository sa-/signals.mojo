from signals import State, Computed
from testing import assert_equal

def test_signal():
    var s = State(0)

    # Ideally we would write
    #   var c = Computed[lambda: s.get() * 2]()
    # but we're taking the scenic route for now 
    @parameter
    fn double() capturing -> Int:
        return s.get() * 2
        
    var c = Computed[double]()

    assert_equal(c.get(), 0)

    s.set(1)
    assert_equal(c.get(), 2)

    s.set(2)
    assert_equal(c.get(), 4)