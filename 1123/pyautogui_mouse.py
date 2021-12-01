import pyautogui
import time

print("drawing https://canavas.apps.chrome/")
time.sleep(5)

pyautogui.moveTo(x=500,y=550)
pyautogui.dragTo(x=1153,y=350,duration=1,button="left")
pyautogui.dragTo(x=1114,y=795,duration=1,button="left")
pyautogui.dragTo(x=500,y=550,duration=1,button="left")
