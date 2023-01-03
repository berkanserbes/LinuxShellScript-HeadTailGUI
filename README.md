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