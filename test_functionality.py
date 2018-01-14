from selenium import webdriver
from unittest import TestCase
from os import environ



def test_math():
    assert 4 == 2 + 2


class TestIndex(TestCase):
    # def __init__(self, cmdopt):
    #     self.cmdopt = cmdopt

    def setUp(self):
        self.driver = webdriver.Firefox()
        self.driver.get('http://'+environ['TEST_ADDRESS'])

    def test_code(self):
        # self.driver.get(self.cmdopt)
        assert 'e' in self.driver.title

    def tearDown(self):
        self.driver.close()

def test_address(cmdopt):
    print(cmdopt)

    assert 1
