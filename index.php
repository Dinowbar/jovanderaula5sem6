<?php

$servername = "localhost"; 
$database = "fernandobanco";
$username = "fernando@"; 
$password = "F3rnando1507@"; 

try {
    $conn = new PDO("mysql:host=$servername;dbname=$database;charset=utf8", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $sql = "SELECT Id_Cliente, Nome, Endereco, Cidade, Telefone FROM Clientes";
    $stmt = $conn->query($sql);

    echo "<!DOCTYPE html>
    <html>
    <head>
    <meta charset='UTF-8'>
    <title>Lista de Clientes</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
        }
        table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
            background-color: white;
            box-shadow: 0px 0px 8px rgba(0,0,0,0.1);
        }
        th {
            background-color: #007BFF;
            color: white;
            padding: 10px;
            text-align: left;
        }
        td {
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:nth-child(odd) {
            background-color: #ffffff;
        }
    </style>
    </head>
    <body>
    <h2 style='text-align:center;'>Lista de Clientes</h2>
    <table>
        <tr>
            <th>ID</th>
            <th>Nome</th>
            <th>Endereço</th>
            <th>Cidade</th>
            <th>Telefone</th>
        </tr>";

    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
        echo "<tr>
                <td>{$row['Id_Cliente']}</td>
                <td>{$row['Nome']}</td>
                <td>{$row['Endereco']}</td>
                <td>{$row['Cidade']}</td>
                <td>{$row['Telefone']}</td>
              </tr>";
    }

    echo "</table>
    </body>
    </html>";

} catch (PDOException $e) {
    echo "Erro na conexão ou consulta: " . $e->getMessage();
}
?>
