# #EXAMPLE:
#
#
# # def substract_function(a, b):
# #     return a - b
# #
# # robotFile.robot
# #
# # *** Settings ***
# # | Library | MyCustomLibrary.py
# #
# # *** Test Cases ***
# # ${result}=  Substract Function    10   3
# # Log To Console    ${result}
# # # Output = 7
#
# def master_yoda(text):
#     words = text.split()
#     print(words)
#     words.reverse()
#     return ' '.join(words)
#
# result=master_yoda("this is splitted")
# print(result)
# string = "Edureka Training"
# for i in string.split():
#     print (i, end=", ")

def myfunc(word):
    result = ""
    index = 0
    for letter in word:
        if index % 2 == 0:
            result += letter.upper()
        else:
            result += letter.lower()
        index += 1
    return result
res=myfunc("Abhi")
print(res)

