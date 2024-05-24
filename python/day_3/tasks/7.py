# importing needed libraries
import datetime

# a function to find out the alst occurence of your preferred day
def last_occurence_of_day(day):
    
    today_date = datetime.date.today() # get today's time
    
    # a dictionary containig weekdays along with their numbers
    weekday_num = {
        'Monday': 0,
        'Tuesday': 1,
        'Wednesday': 2,
        'Thursday': 3,
        'Friday': 4,
        'Saturday': 5,
        'Sunday': 6
    }
    
    day_num = weekday_num[day] # getting the number of your preferred day
    
    days_ago = (today_date.weekday() - day_num) % 7 # calculating how many days ago did your preferred day occured
    
    if days_ago == 0: # if your preferred day is today, we do not need it
        days_ago = 7 # we need the one that occured last time
    
    last_occurence_day = today_date - datetime.timedelta(days=days_ago) # we get the date when your preferred day last occured
    
    return last_occurence_day
    
preferred_day = input('Enter your preferred day: ')

result = last_occurence_of_day(preferred_day)

print(f"Your preferred day {preferred_day} last occured on {result}.")