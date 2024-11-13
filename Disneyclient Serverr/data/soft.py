from sqlalchemy import Column, String, LargeBinary, TIMESTAMP
from sqlalchemy.sql import func
from data import Base
import sqlalchemy

class Soft(Base):
    __tablename__ = "soft"
    key = Column(String(16), primary_key=True)
    data = Column(LargeBinary(8388608))
