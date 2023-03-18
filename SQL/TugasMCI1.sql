/*
ABDULLAH NASIH JASIR
5025211111
TUGAS MCI 1
*/

/* SOAL 1 */
SELECT nama, ukt FROM mahasiswa
WHERE ukt = (SELECT MAX(ukt) FROM mahasiswa)

/* SOAL 2 */
SELECT nama, ukt FROM mahasiswa
WHERE ukt = (SELECT MAX(ukt) FROM mahasiswa)
ORDER BY nama ASC

/* SOAL 3 */
SELECT COUNT(nama) AS Jumlah_Mahasiswa FROM mahasiswa
WHERE ipk >= 3.5 AND semester = 8

/* SOAL 4 */
SELECT nama, ukt,
CASE
	WHEN ukt <= 1000000 THEN 'A'
	WHEN ukt > 1000000 AND ukt <= 2000000 THEN 'B'
	ELSE 'C'
END AS Golongan
FROM mahasiswa

/* SOAL 5 */
SELECT nama, b.* FROM (
	SELECT semester, MAX(ipk) as ipk FROM mahasiswa GROUP BY semester) b
	JOIN mahasiswa ON mahasiswa.semester = b.semester AND mahasiswa.ipk = b.ipk
	ORDER BY semester, nama ASC