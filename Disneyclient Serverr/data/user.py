from sqlalchemy import Column, String, Boolean, Integer, TIMESTAMP
from sqlalchemy.sql import func
from data import Base

class User(Base):
    __tablename__ = "users"
    key = Column(String(16), primary_key=True)
    level = Column(String(10), default="GOLD_II")
    last_login = Column(TIMESTAMP, server_default=func.now())
    browser_access = Column(Boolean, default=True)
    browser_access_token = Column(String(40))
    flash_token = Column(String(32))
    key_hidden = Column(Boolean, default=False)
    connection_limit = Column(Integer, default=2)
    unknown_device_block = Column(Boolean, default=True)