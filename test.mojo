from signals.main import get_msg
from testing import assert_equal

fn main():
    _ = assert_equal(get_msg(), "We're in business")
