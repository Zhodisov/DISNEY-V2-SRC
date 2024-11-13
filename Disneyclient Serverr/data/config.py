from sqlalchemy import Column, String, LargeBinary, TIMESTAMP
from sqlalchemy.sql import func
from data import Base
import sqlalchemy
class Config(Base):
    __tablename__ = "config"
    key = Column(String(16), primary_key=True)
    tfm_menu = Column(sqlalchemy.JSON)