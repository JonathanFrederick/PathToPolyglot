import pytest

def pytest_addoption(parser):
    parser.addoption("--cmdopt", action="store", default="127.0.0.1:5000",
        help="address to give selenium")
        # TODO: add checks for address

@pytest.fixture
def cmdopt(request):
    return request.config.getoption("--cmdopt")
