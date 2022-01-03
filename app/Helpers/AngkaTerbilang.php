<?php
function terbilang($angka)
{
  $angka = abs($angka);
  $baca = array("", "Satu", "Dua", "Tiga", "Empat", "Lima", "Enam", "Tujuh", "Delapan", "Sembilan", "Sepuluh", "Sebelas");

  $terbilang = "";
  if ($angka < 12) {
    $terbilang = " " . $baca[$angka];
  } else if ($angka < 20) {
    $terbilang = terbilang($angka - 10) . " Belas";
  } else if ($angka < 100) {
    $terbilang = terbilang($angka / 10) . " Puluh" . terbilang($angka % 10);
  } else if ($angka < 200) {
    $terbilang = " seratus" . terbilang($angka - 100);
  } else if ($angka < 1000) {
    $terbilang = terbilang($angka / 100) . " Ratus" . terbilang($angka % 100);
  } else if ($angka < 2000) {
    $terbilang = " seribu" . terbilang($angka - 1000);
  } else if ($angka < 1000000) {
    $terbilang = terbilang($angka / 1000) . " Ribu" . terbilang($angka % 1000);
  } else if ($angka < 1000000000) {
    $terbilang = terbilang($angka / 1000000) . " Juta" . terbilang($angka % 1000000);
  }
  return $terbilang;
}
