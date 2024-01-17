<?php
// Conectar ao banco de dados
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "cadastro";

// Criar uma conexão
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar a conexão
if ($conn->connect_error) {
    die("Erro de conexão com o banco de dados: " . $conn->connect_error);
}

// Obter dados do formulário (certifique-se de validar e escapar os dados)
$nome = mysqli_real_escape_string($conn, $_POST['nome']);
$email = mysqli_real_escape_string($conn, $_POST['email']);
$telefone = mysqli_real_escape_string($conn, $_POST['telefone']);
$senha = password_hash($_POST['senha'], PASSWORD_DEFAULT); // Criptografar a senha

// Inserir dados no banco de dados (use instrução preparada para prevenir SQL injection)
$sql = "INSERT INTO usuarios (nome, email, telefone, senha) VALUES (?, ?, ?, ?)";
$stmt = $conn->prepare($sql);

if ($stmt) {
    $stmt->bind_param("ssss", $nome, $email, $telefone, $senha);
    if ($stmt->execute()) {
        $stmt->close();
        $conn->close();
        header("Location: sucesso.php"); // Corrigido: Redirecionar para a página de sucesso
        exit();
    } else {
        echo "Erro ao inserir dados: " . $stmt->error;
    }
} else {
    echo "Erro na preparação da declaração: " . $conn->error;
}

// Fechar a conexão
$conn->close();
?>
