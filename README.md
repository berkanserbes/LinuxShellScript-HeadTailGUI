## :black_nib: Head ve Tail Komutları Nedir ve Nasıl Kullanılır?
head ve tail komutları, bir dosyanın başını veya sonunu göstermek için kullanılan Linux komutlarıdır.
Bu komutlar, dosyanın birkaç satırını görüntülemek için kullanılır.

* head komutu, bir dosyanın başını gösterir. Örneğin, "head dosya.txt" komutu, dosya.txt dosyasının ilk 10 satırını gösterir. Bu değer varsayılandır ve değiştirilebilir. Örneğin, "head -n 5 dosya.txt" komutu, dosya.txt dosyasının ilk 5 satırını gösterir.

* tail komutu ise, bir dosyanın sonunu gösterir. Örneğin, "tail dosya.txt" komutu, dosya.txt dosyasının son 10 satırını gösterir. Bu değer de varsayılandır ve değiştirilebilir. Örneğin, "tail -n 5 dosya.txt" komutu, dosya.txt dosyasının son 5 satırını gösterir.

Bu komutlar, genellikle log dosyalarını izlemek veya dosyaların son değişikliklerini görmek için kullanılır. Örneğin, bir sunucunun çalışma kaydını izlemek için "tail -f /var/log/syslog" komutu kullanılabilir. Bu komut, syslog dosyasının son satırlarını gösterir ve dosya değiştiğinde otomatik olarak güncellenir.

## :bulb: Zenity Nedir?
Zenity, Linux ve Unix benzeri işletim sistemlerinde kullanılan bir açık kaynaklı kütüphanedir. Zenity, çeşitli türlerde pencereler oluşturarak kullanıcıdan bilgi toplar. Örnek olarak, bir mesaj penceresi oluşturarak kullanıcıdan bir onay isteyebilir, bir dosya seçim penceresi oluşturarak kullanıcıdan bir dosya seçmesi isteyebilir veya bir şifre penceresi oluşturarak kullanıcıdan bir şifre girmesini isteyebilir. Bu sayede, komut satırı uygulamaları kullanıcı arayüzüne sahip olabilir ve daha kullanıcı dostu hale gelebilir.
Zenity hakkında daha detaylı bilgi edinmek için [tıklayınız.](https://ostechnix.com/zenity-create-gui-dialog-boxes-in-bash-scripts/)

## :electric_plug: Gerekli Kurulumlar ve Uygulamanın Çalıştırılması
* Uygulamayı çalıştırabilmek için Linux tabanlı bir işletim sistemine veya sanal makineye kurulmuş bir Linux tabanlı işletim
  sistemine ihtiyacınız var.

* Linux makinenize Zenity kütüphanesini kurmak için aşağıdaki komutları sırasıyla terminalinize yazın. <br>
   `sudo apt-get update -y` <br>
   `sudo apt-get install -y zenity`

   Kurulumun başarıyla tamamlanıp tamamlanmadığını öğrenmek için aşağıdaki komutu terminalinize yazın. <br>
   `zenity --version`

* Terminal üzerinden bu projeyi aşağıdaki şekilde cihazınıza klonlayınız. <br>
  `git clone https://github.com/berkanserbes/LinuxShellScript-HeadTailGUI.git`

* Aşağıdaki komutla projenin bulunduğu dizine gidiniz. <br>
  `cd ./LinuxShellScript-HeadTailGUI/`

* Projenin bulunduğu dizine girdikten sonra aşağıdaki komutu terminalinize yazarak uygulamayı çalıştırabilirsiniz. <br>
  `bash script.sh`

## :information_source: :framed_picture: Uygulamanın Açıklanması ve Uygulama İçi Görüntüler
![File Selection](https://github.com/berkanserbes/LinuxShellScript-HeadTailGUI/blob/main/Screenshot/file-selection.png?raw=true)

* Programı ilk çalıştırdığınızda bir dosya seçim penceresiyle karşılaşırsınız. <br>
  Burada içeriğini görüntülemek istediğiniz bir dosya seçersiniz.

  > :bangbang: Uyarı: Seçtiğiniz dosya türünün .sh, .txt gibi text tipinde bir dosya olduğundan emin olunuz. <br>
    .jpg, .png gibi görüntü dosya türlerini seçtiğinizde uygulama doğru bir şekilde çalışmaz! 

<br>

![Menu](https://github.com/berkanserbes/LinuxShellScript-HeadTailGUI/blob/main/Screenshot/menu.png?raw=true)

* Menü kısmında Tam görünüm, Özel görünüm ve Çıkış yap adlı 3 farklı opsiyonumuz var.
* Tam görünüm opsiyonunu seçtiğinizde bir önceki pencerede seçtiğiniz dosyanın tüm satırlarını görüntüler. <br>
  
![Full Content](https://github.com/berkanserbes/LinuxShellScript-HeadTailGUI/blob/main/Screenshot/FullContent.png?raw=true)

* Özel görünüm opsiyonunu seçtiğinizde ilk olarak kullanıcıdan bir başlangıç değeri girmesini ister bu değer gösterilecek içeriğin başlangıç satırını temsil eder.
  > Not: Başlangıç değerine 1 sayısından daha küçük bir değer girilirse aşağıdaki gibi bir uyarı penceresi çıkar ve başlangıç değerinin yeniden girilmesi istenir.

![Start Value](https://github.com/berkanserbes/LinuxShellScript-HeadTailGUI/blob/main/Screenshot/start2.png?raw=true)

![Start Value Error](https://github.com/berkanserbes/LinuxShellScript-HeadTailGUI/blob/main/Screenshot/start-err.png?raw=true)

* Kullanıcı geçerli bir başlangıç değeri girdikten sonra bitiş değerinin girileceği pencereye yönlendirilir. Bitiş değeri gösterilecek içeriğin son satırını temsil eder.
  > Not: Bitiş değerine başlangıç değerinden daha küçük bir değer girilirse aşağıdaki gibi bir uyarı penceresi çıkar ve bitiş değerinin yeniden girilmesi istenir.
  
![End Value](https://github.com/berkanserbes/LinuxShellScript-HeadTailGUI/blob/main/Screenshot/end-1.png?raw=true)  

![End Value Error](https://github.com/berkanserbes/LinuxShellScript-HeadTailGUI/blob/main/Screenshot/end-2.png?raw=true)

* Kullanıcı geçerli bir başlangıç değeri ve bitiş değeri girdikten sonra bu girilen satır numaraları da dahil olmak üzere aradaki tüm satırlar görüntülenir.

![Specific Content](https://github.com/berkanserbes/LinuxShellScript-HeadTailGUI/blob/main/Screenshot/show-specific.png?raw=true)

<br>

> :mag_right: İpucu: Eğer seçilen dosyanın spesifik bir satırını görüntülemek için başlangıç ve bitiş değerlerine aynı değeri girin.