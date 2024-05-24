# a function to convert days into prefered hour, minutes, and seconds
def days_conversion(days):
    hours = days * 24 # in a day there are 24 hours
    minutes = days * 1440 # in a day there are 1440 minutes
    seconds = days * 86400 # in a day there are 86400 seconds
    
    print(f"Days in hours: {hours}")
    print(f"Days in minutes: {minutes}")
    print(f"Days in seconds: {seconds}")

days_conversion(3)


# a function to convert hours into preferred days, minutes, and seconds
def hours_conversion(hours):
    days = hours // 24 # in a day there are 24 hours
    minutes = hours * 60 # in an hour there are 60 minutes
    seconds = hours * 3600 # in an hour there are 3600 seconds
    
    print(f"Hours in days: {days}")
    print(f"Hours in minutes: {minutes}")
    print(f"Hours in seconds: {seconds}")

hours_conversion(24)


# a function to convert minutes into preferred days, hours, and seconds
def minutes_conversion(minutes):
    days = minutes // 1440 # in a day there are 1440 minutes
    hours = minutes // 60 # in an hour there are 60 minutes
    seconds = minutes * 60 # in a minute are 60 seconds
    
    print(f"Minutes in days: {days}")
    print(f"Minutes in hours: {hours}")
    print(f"Minutes in seconds: {seconds}")

minutes_conversion(1440)


# a function to convert minutes into preferred days, hours, and minutes
def seconds_conversion(seconds):
    days = seconds // 86400 # in a day there are 86400 seconds
    hours = seconds // 3600 # in an hour there are 3600 seconds
    minutes = seconds //  60 # in a minute there are 60 seconds
    
    print(f"Seconds in days: {days}")
    print(f"Seconds in hours: {hours}")
    print(f"Seconds in minutes: {minutes}")

seconds_conversion(86400)