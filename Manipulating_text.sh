#~/bin/bash

# 1. Display the contents of both fruit.txt and colour.txt one after the other.
cat fruit.txt colour.txt
# 2. Display the contents of both fruittxt and colour,txt side by side.
paste fruit.txt colour.txt
# 3. Add a line with the word "watermelon" to fruit.txt and a line with the  
# word pink to fruit.txt
echo "watermelon" >> fruit.txt
echo "pink" >> colour.txt
# 4. Create a new file called fruitcolour.txt that contains the content of fruit.txt
# and colour.txt side by side.
touch fruitcolour.txt && paste fruit.txt colour.txt > fruitcolour.txt
# 5. Create a new file called reversefruitcolour.txt that contains the content of fruit.txt
# and colour.txt side by side sorted in reverse alphabetical order.
touch reversefruitcolour.txt && cat fruitcolour.txt > reversefruitcolour.txt && sort -r reversefruitcolour.txt
# 6. Change reversefruitcolour.txt so that it only contains the line "I am colour blind".
echo "I am colour blind" > reversefruitcolour.txt


