from selenium import webdriver
driver = webdriver.Chrome()
driver.get("https://github.com/login")
element=driver.find_element_by_id("login_field")
element.send_keys("bryce30090@gmail.com")
element2=driver.find_element_by_id("password")
element2.send_keys("nien610711")
element3=driver.find_element_by_name("commit")
element3.click()

