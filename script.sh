#! /bin/bash

# Kullanıcı sağ üstte yer alan kapat butonuna tıklarsa programdan çıkmasını sağlayan fonksiyon. 
checkClose() {
if [ $? != 0 ]
then
    exit 1
fi
}

while [ 1 ]
do
   FILE=$(zenity --file-selection --title="Bir dosya seciniz")
   checkClose

   option=$(zenity --list \
	        --title="Menu" \
		--text="Yapmak istediğiniz işlemi seçiniz" \
		--width=800 --height=300 \
		--column="Option" --column="Description" \
		"Tam görünüm"  "Dosyanın tüm içeriğini görüntüler" \
		"Özel görünüm"  "Kullanıcının girdiği satır numaralarına göre dosyanın içeriğini görüntüler" \
		"Çıkış yap" "Programdan çıkış yapar")
   checkClose

   if [ "$option" == "Tam görünüm" ]
   then
       cat $FILE > content.txt
       zenity --text-info \
              --title="İçerik" \
              --filename="content.txt" \
              --width=600 \
              --height=600
       checkClose

   elif [ "$option" == "Özel görünüm" ]
   then
      lowerIndex=$(zenity --entry \
		          --title="Entry Number" \
		          --text="Başlangıç index degerini giriniz:" \
		          --entry-text "1")
      checkClose

      while [[ "$lowerIndex" < "1"  ]]
      do
        (zenity --warning \
                --text="Baslangic degeri 1'den küçük olmamalı" \
	        --width=250 \
                --height=100 )
        lowerIndex=$(zenity --entry \
                            --title="Entry Number" \
                            --text="Yeniden başlangıç index degerini giriniz:" \
                            --entry-text "1")
        checkClose
     done

      higherIndex=$(zenity --entry \
                           --title="Entry Number" \
                           --text="Bitiş index degerini girin:" \
                           --entry-text "1")
      checkClose

      while [[ $lowerIndex -gt $higherIndex ]]
      do
        (zenity --warning \
                --text="Bitiş index değeri başlangıç index değerinden küçük olmamalı" \
                --width=350 \
                --height=100 )
        higherIndex=$(zenity --entry \
                             --title="Entry Number" \
                             --text="Bitiş index degerini yeniden giriniz:" \
                             --entry-text "1")
       checkClose
      done

      cat $FILE | head -n $higherIndex | tail -n `expr $higherIndex - $lowerIndex + 1` > content.txt

      zenity --text-info \
             --title="İçerik" \
             --filename="content.txt" \
             --width=600 \
             --height=600
      checkClose

   elif [ "$option" == "Çıkış yap" ]
   then
       zenity --question --text="Uygulamadan çıkmak istediğinize emin misiniz?" \
              --width=300 --height=200 \
              --ok-label="Evet" --cancel-label="Hayır"
       if [ $? == 0 ]
       then
           break
       fi
       checkClose
   fi
done
