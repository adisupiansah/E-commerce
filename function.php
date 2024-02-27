<?php

    $conn = mysqli_connect("localhost", "root", "", "ndrshoop");


    function query($query) {
        global $conn;

        $result = mysqli_query($conn, $query); 
        $rows = [];
        while ($row = mysqli_fetch_assoc($result) ) {
            $rows[] = $row;
        }
        return $rows;
    }

function register($data) {
    global $conn;

    $username = strtolower(stripslashes($data['username']));
    $password = mysqli_escape_string($conn, $data['password']);
    $password2 = mysqli_escape_string($conn, $data['password2']);

    // cek username, apakah sudah terdaftar sebelumnya ?
    $result = mysqli_query($conn, "SELECT username FROM user WHERE username = '$username'");

    if (mysqli_fetch_assoc($result) ) {
        echo "
        <script>
            alert('maaf nama user sudah terdaftar sebelumnya');
        </script>
        ";

        return false;
    }

    // cek konfirmasi password,, apakah sama 

    if ($password !== $password2) {
        # code...
        echo "
        <script>
            alert('password tidak sesuai');
        </script>
        
        ";
        return false;
    }

    // enkripsi password (ubah password menjadi random di database)
    $password = password_hash($password, PASSWORD_DEFAULT);

    // tambahkan user baru di database ketika selesai mendaftar
    mysqli_query($conn, "INSERT INTO user VALUES('', '$username', '$password')");

    return mysqli_affected_rows($conn);
}


function komentar($data) {

    global $conn;

    $nama = htmlspecialchars($data['nama']);
    $komentar = htmlspecialchars($data['komentar']);

    $query = "INSERT INTO tbkomentar (nama, komentar) VALUES ('$nama', '$komentar')";

                mysqli_query($conn, $query);

}