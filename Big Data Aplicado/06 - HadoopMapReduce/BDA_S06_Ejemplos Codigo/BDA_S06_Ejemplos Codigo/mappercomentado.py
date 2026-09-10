import sys  # Importa el módulo sys para acceder a la entrada estándar
import io   # Importa el módulo io para trabajar con flujos de texto
import re   # Importa el módulo re para el procesamiento de expresiones regulares
import nltk # Importa el módulo nltk para el procesamiento de lenguaje natural
nltk.download('stopwords',quiet=True)  # Descarga la lista de palabras vacías en inglés
from nltk.corpus import stopwords # Importa la lista de palabras vacías

punctuations = '''!()-[]{};:'"\,<>./?@#$%^&*_~'''  # Define signos de puntuación

stop_words = set(stopwords.words('english'))  # Obtiene las palabras vacías en inglés
input_stream = io.TextIOWrapper(sys.stdin.buffer, encoding='latin1')  # Configura la entrada estándar

for line in input_stream:  # Itera sobre cada línea de entrada
  line = line.strip()  # Elimina espacios en blanco al principio y al final de la línea
  line = re.sub(r'[^\w\s]', '',line)  # Elimina caracteres de puntuación
  line = line.lower()  # Convierte la línea a minúsculas
  
  for x in line:  # Itera sobre cada carácter en la línea
    if x in punctuations:  # Si el carácter es una puntuación
      line=line.replace(x, " ")  # Reemplaza la puntuación por espacios en blanco 

  words=line.split()  # Divide la línea en palabras
  for word in words:  # Itera sobre cada palabra en la línea
    if word not in stop_words:  # Si la palabra no está en la lista de palabras vacías
      print('%s\t%s' % (word, 1))  # Imprime la palabra y un contador igual a 1
