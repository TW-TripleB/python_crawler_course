#pip install pytesseract
import pytesseract
from PIL import Image
path=r"C:\Program Files\Tesseract-OCR\tesseract.exe"
pytesseract.pytesseract.tesseract_cmd=path
img=Image.open(r"003.jpg")
text=pytesseract.image_to_string(img,lang="chi_tra",config="--psm 10 -c tessedit_char_whitelist=0123456789")
print(text.strip())
