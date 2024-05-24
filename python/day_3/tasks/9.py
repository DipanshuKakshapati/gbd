# importing needed libraries
from datetime import datetime
import pytz

# conference time in chicago
conference_time_chicago = datetime(2012, 12, 21, 9, 30, 0)

# declaring timezone of Chicago
chicago_tz = pytz.timezone('America/Chicago')

#declaring timezone of Bangalore
bangalore_tz = pytz.timezone('Asia/Kolkata')

# localizing timezone of Chicago to handle daylight savings and avoid erros
localize_chicago_tz = chicago_tz.localize(conference_time_chicago)

# converting the localized timezone of Chicago to Bangalore
bangalore_time = localize_chicago_tz.astimezone(bangalore_tz)

print(f"Time in Bangalore, India when the conference call starts in Chicago: {bangalore_time}")