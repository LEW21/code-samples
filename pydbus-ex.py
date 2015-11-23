"""https://github.com/LEW21/pydbus"""

import sys
sys.path += ['pydbus/']

from pydbus import SessionBus

bus = SessionBus()
notifications = bus.get('.Notifications')

notifications.Notify('test', 0, 'dialog-information', "Hello World!", "pydbus works :)", [], {}, 5000)
