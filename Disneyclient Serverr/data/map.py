from sqlalchemy import Column, String, LargeBinary, TIMESTAMP
from sqlalchemy.sql import func
from data import Base

class Map(Base):
    __tablename__ = "map"
    key = Column(String(16), primary_key=True)
    data = Column(LargeBinary)
    modified = Column(TIMESTAMP, server_default=func.now(), onupdate=func.current_timestamp())
