const {penjumlahan, pengurangan, pembagian, perkalian} = require('./FilePertama.js');
const HasilAkhir = pengurangan(penjumlahan(pembagian(4000, 2), 25), 2);
console.log(HasilAkhir);
