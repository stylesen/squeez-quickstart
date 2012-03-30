import uuid
import datetime

def get_hash():
    """Returns a random hash of 8 characters."""

    return str(uuid.uuid4()).split('-')[0]

def get_expiry():
    """Gives the expiry timestamp which is 3 days old from current timestamp."""

    today = datetime.datetime.today()
    expiry = today + datetime.timedelta(3)
    return expiry.strftime('%Y-%m-%d %H:%M:%S')
