vize_puanı = int(input("Lütfen Vize Notunuzu Giriniz: "))
final_puanı = int(input("lütfen Final Notunuzu Giriniz: "))

vize = vize_puanı / 100 * 30 
final = final_puanı / 100 * 70

ortalama = vize + final

print(f"{ortalama}")