import requests
from bs4 import BeautifulSoup
html_doc = """
<html><head><title>Hello World</title></head>
<body><h2>Test Header</h2>
<p>This is a test.</p>
<a id="link1" href="/my_link1">Link 1</a>
<a id="link2" href="/my_link2">Link 2</a>
<p>Hello, <b class="boldtext">Bold Text</b></p>
</body></html>
"""
soup=BeautifulSoup(html_doc,"html.parser")

h2=soup.find("h2").text.strip()

p=soup.find("p").text.strip()

print(h2)

print(p)


h2_arr=soup.find_all("h2")

p_arr=soup.find_all("p")

print(h2_arr)

print(p_arr)

a=soup.find("a")
href1=a.get("href")
print(a)
print(href1)
print()
a_arr=soup.find_all("a")
for i in a_arr:
    print(i.text)
    print(i["href"])
    print()
    