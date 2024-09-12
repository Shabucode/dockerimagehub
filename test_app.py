#as pytest is used, to detect any unit test files, it should start with test_

from app import app

#start any file/function with test for pytest to recognise unit test functions
def test_home():
   response=app.test_client().get("/")

   assert response.status_code==200
   assert response.data==b"Hello World!"