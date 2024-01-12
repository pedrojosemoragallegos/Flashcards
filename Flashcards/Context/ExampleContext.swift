/*
 # In Context/DatabaseContext.py

 from sqlalchemy import create_engine
 from sqlalchemy.orm import sessionmaker

 class DatabaseContext:
     def __init__(self, connection_string):
         self.engine = create_engine(connection_string)
         self.Session = sessionmaker(bind=self.engine)

     def get_session(self):
         return self.Session()
*/
