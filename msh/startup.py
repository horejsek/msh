
import datetime
import functools
import json
import os
import pickle
import re
import sys
import time
import types

try:
    import readline
except ImportError:
    print('Module readline not available.')
else:
    import rlcompleter
    readline.parse_and_bind('tab: complete')

