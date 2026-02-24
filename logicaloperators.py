db_ps = 1234
db_ka = "azra"

kullanıcı_adı = input("Lüstfen kullanıcı adınızı giriniz: ")
kullanıcı_şifre = int(input("Lütfen şifrenizi giriniz: "))

kontrol = db_ps == kullanıcı_şifre and db_ka == kullanıcı_adı

print(kontrol)