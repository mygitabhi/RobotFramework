import openpyxl

# wk = openpyxl.load_workbook("../TestData/LoginData.xlsx")
# sh = wk["logindata"]
# print(sh.max_row)
# cell = sh.cell(1,1)
# print(cell.value)

def fetchUsername(SheetName):
    wk = openpyxl.load_workbook("../TestData/LoginData.xlsx")
    sh = wk[SheetName]
    cell = sh.cell(2,1)
    return cell.value
print(fetchUsername("logindata"))

def fetchPwd(SheetName):
    wk= openpyxl.load_workbook("../TestData/LoginData.xlsx")
    sh = wk[SheetName]
    cell = sh.cell(2,2)
    return cell.value
print(fetchPwd("logindata"))


