import os
from contextlib import contextmanager


@contextmanager
def pushd(path):
    """Context manager to change directory and return to previous directory."""
    prev = os.getcwd()
    os.chdir(path)
    try:
        yield
    finally:
        os.chdir(prev)
