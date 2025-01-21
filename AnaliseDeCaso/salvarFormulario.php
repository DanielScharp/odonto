<?php
// Configuração do banco de dados
$host = '193.203.175.154'; // Endereço do servidor
$dbname = 'u901027689_Teste'; // Nome do banco de dados
$username = 'u901027689_t1'; // Usuário do banco
$password = 'j7t2YX25_root'; // Senha do banco
try {
    // Conexão com o banco de dados usando PDO
    $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Verifica se o formulário foi enviado
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        // Obtendo os dados do formulário
        $dentista = $_POST['Dentista'] ?? null;
        $crosp = $_POST['CROSP'] ?? null;
        $pacienteNome = $_POST['Paciente_Nome'] ?? null;
        $pacienteCPF = $_POST['Paciente CPF'] ?? null;
        $pacienteNascimento = $_POST['Paciente Data de Nascimento'] ?? null;
        $pacienteCelular = $_POST['Paciente Celular'] ?? null;
        $queixasPrincipais = $_POST['Queixas Principais'] ?? null;
        $aceitaQueixaPrincipal = $_POST['O paciente aceita tratamento apenas da queixa principal mesmo que não seja possível chegar nas seis chaves de Andrews?'] ?? null;

        // Lida com o upload do arquivo
        if (isset($_FILES['arquivo']) && $_FILES['arquivo']['error'] === UPLOAD_ERR_OK) {
            // Pasta para salvar os arquivos
            $uploadDir = 'uploads/';
            if (!is_dir($uploadDir)) {
                mkdir($uploadDir, 0777, true); // Cria a pasta se não existir
            }

            // Obtém informações do arquivo enviado
            $fileTmpPath = $_FILES['arquivo']['tmp_name'];
            $fileName = $_FILES['arquivo']['name'];
            $fileExtension = pathinfo($fileName, PATHINFO_EXTENSION);
            $allowedExtensions = ['pdf', 'jpg', 'jpeg', 'png', 'doc', 'docx'];

            // Valida a extensão do arquivo
            if (in_array(strtolower($fileExtension), $allowedExtensions)) {
                // Gera um nome único para o arquivo
                $newFileName = uniqid() . '.' . $fileExtension;
                $destinationPath = $uploadDir . $newFileName;

                // Move o arquivo para o diretório de uploads
                if (move_uploaded_file($fileTmpPath, $destinationPath)) {
                    // Prepara a query de inserção
                    $stmt = $pdo->prepare("
                        INSERT INTO formulario (
                            dentista, crosp, paciente_nome, paciente_cpf, paciente_nascimento, paciente_celular, queixas_principais, aceita_queixa_principal, arquivo
                        ) VALUES (
                            :dentista, :crosp, :paciente_nome, :paciente_cpf, :paciente_nascimento, :paciente_celular, :queixas_principais, :aceita_queixa_principal, :arquivo
                        )
                    ");

                    // Executa a query com os dados do formulário
                    $stmt->execute([
                        ':dentista' => $dentista,
                        ':crosp' => $crosp,
                        ':paciente_nome' => $pacienteNome,
                        ':paciente_cpf' => $pacienteCPF,
                        ':paciente_nascimento' => $pacienteNascimento,
                        ':paciente_celular' => $pacienteCelular,
                        ':queixas_principais' => $queixasPrincipais,
                        ':aceita_queixa_principal' => $aceitaQueixaPrincipal,
                        ':arquivo' => $destinationPath,
                    ]);

                    // Retorna uma mensagem de sucesso
                    echo json_encode(['success' => true, 'message' => 'Formulário enviado com sucesso!']);
                } else {
                    throw new Exception('Erro ao mover o arquivo para o diretório de upload.');
                }
            } else {
                throw new Exception('Tipo de arquivo não permitido.');
            }
        } else {
            throw new Exception('Erro no upload do arquivo.');
        }
    }
} catch (Exception $e) {
    // Retorna uma mensagem de erro
    echo json_encode(['success' => false, 'message' => $e->getMessage()]);
    exit;
}
?>