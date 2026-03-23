BEGIN {

FS = ","

opsi = ARGV[2]

delete ARGV[2]

if (opsi != "a" && opsi != "b" && opsi != "c" && opsi != "d" && opsi != "e"){
	print "Instruksi yang diminta tidak valid, gunakan a, b, c, d, atau e"
	error_input = 1
	exit}
}

NR > 1 && error_input != 1 {
count_passenger++

gerbong = $4
if (gerbong != "") {
list_gerbong[gerbong] = 1
}

nama = $1
usia = $2

if (usia > usia_tertua) {
	usia_tertua = usia
	nama_tertua = nama
}

total_usia += usia

kelas = $3
if (kelas == "Business") {
count_business++
}
}

END {
if (error_input == 1) {
exit}
if (opsi == "a"){
	print "jumlah seluruh penumpang KANJ adalah" count_passenger " orang"
	}

else if (opsi == "b"){
jumlah_gerbong = 0
for (g in list_gerbong) {
jumlah_gerbong++
}
print "Jumlah gerbong penumpang KANJ adalah " jumlah_gerbong
}

else if (opsi == "c") {
print nama_tertua " adalah penumpang kereta tertua dengan usia " usia_tertua "tahun"
}

else if (opsi == "d") {
rata_rata = total_usia/count_passenger
print "Rata-rata usia penumpang adalah " rata_rata " tahun"
}

else if (opsi == "e"){
print "Jumlah penumpang kelas Business adalah " count_business
}
}
