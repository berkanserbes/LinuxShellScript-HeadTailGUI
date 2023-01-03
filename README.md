## :black_nib: Head ve Tail Komutları Nedir ve Nasıl Kullanılır?
head ve tail komutları, bir dosyanın başını veya sonunu göstermek için kullanılan Linux komutlarıdır.
Bu komutlar, dosyanın birkaç satırını görüntülemek için kullanılır.

head komutu, bir dosyanın başını gösterir. Örneğin, "head dosya.txt" komutu, dosya.txt dosyasının ilk 10 satırını gösterir. Bu değer varsayılandır ve değiştirilebilir. Örneğin, "head -n 5 dosya.txt" komutu, dosya.txt dosyasının ilk 5 satırını gösterir.

tail komutu ise, bir dosyanın sonunu gösterir. Örneğin, "tail dosya.txt" komutu, dosya.txt dosyasının son 10 satırını gösterir. Bu değer de varsayılandır ve değiştirilebilir. Örneğin, "tail -n 5 dosya.txt" komutu, dosya.txt dosyasının son 5 satırını gösterir.

Bu komutlar, genellikle log dosyalarını izlemek veya dosyaların son değişikliklerini görmek için kullanılır. Örneğin, bir sunucunun çalışma kaydını izlemek için "tail -f /var/log/syslog" komutu kullanılabilir. Bu komut, syslog dosyasının son satırlarını gösterir ve dosya değiştiğinde otomatik olarak güncellenir.