# Deskripsi Program

Program ini merupakan contoh implementasi sederhana dari sebuah sistem manajemen proyek menggunakan bahasa pemrograman Dart. Program ini memodelkan hubungan antara klien, tim pengembang, tugas, dan proyek.

## Struktur Kode

1. **Kelas Person**: Merupakan kelas dasar yang memiliki atribut `name`, digunakan sebagai basis untuk kelas-kelas lainnya.

2. **Kelas Client**: Turunan dari kelas Person. Memiliki atribut tambahan yaitu `email`.

3. **Kelas Resource**: Turunan dari kelas Person. Memiliki atribut tambahan yaitu `role`.

4. **Kelas Team**: Mewakili sebuah tim dalam proyek. Memiliki atribut `name` dan list `resources` yang merupakan anggota tim.

5. **Kelas Task**: Mewakili sebuah tugas dalam proyek. Memiliki atribut `name`, `duration`, dan `isCompleted`. Method `completeTask()` digunakan untuk menyelesaikan tugas.

6. **Kelas Project**: Mewakili sebuah proyek. Memiliki atribut `name`, `dueDate`, list `tasks`, `team`, dan `client`. Method `completeProject()` digunakan untuk menyelesaikan semua tugas dalam proyek.

## Alur Program

1. Program dimulai dari fungsi `main()` yang berfungsi sebagai entry point.

2. Sebuah tim pengembang dibuat dengan menambahkan anggota-anggotanya.

3. Seorang klien dibuat dengan nama dan emailnya.

4. Sebuah proyek dibuat dengan nama proyek, tanggal jatuh tempo, tim yang akan melaksanakan proyek, dan klien yang memesan proyek.

5. Tugas-tugas ditambahkan ke dalam proyek.

6. Proyek dijalankan dan semua tugas dalam proyek diselesaikan.

## Konsep yang Digunakan

- Pewarisan kelas (inheritance) untuk kelas Client dan Resource yang mewarisi kelas Person.
- Penggunaan Future dan asynchronous operation untuk menandai penyelesaian tugas secara async.
- Penggunaan list untuk menyimpan tugas-tugas dalam proyek dan anggota tim dalam kelas Project dan Team.
- Penggunaan method untuk menambahkan resource ke dalam tim dan tugas ke dalam proyek.

