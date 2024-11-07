<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #35466a;
            color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .form-container {
            background-color: #6079c3;
            padding: 20px;
            width: 400px;
            border-radius: 10px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
        }

        .form-container h2 {
            text-align: center;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            font-weight: bold;
        }

        .form-group input {
            width: 100%;
            padding: 10px;
            border-radius: 5px; 
        }

        .form-group button {
            width: 100%;
            padding: 10px;
            background-color: #204e5e; 
            border-radius: 5px; 
            color: white; 
        }
        
        .form-group button:hover {
           background-color:#5067a8; 
       }
    </style>
</head>
<body>

    <div class="form-container">
        <h2>Login</h2>
        <form id="loginForm">
            <div class="form-group">
                <label for="username">Usuário</label>
                <input type="text" id="username" required>
            </div>
            <div class="form-group">
                <label for="password">Senha</label>
                <input type="password" id="password" required>
            </div>
            <div class="form-group">
                <button type="button" onclick="autenticar()">Entrar</button>
            </div>
        </form>
    </div>

    <script>
        function autenticar() {
            const username = document.getElementById('username').value;
            const password = document.getElementById('password').value;

            // Aqui você pode definir um usuário e senha fixos para teste
            const usuarioValido = 'usuario';
            const senhaValida = 'senha123';

            if (username === usuarioValido && password === senhaValida) {
                alert('Login bem-sucedido!');
                localStorage.setItem('loggedIn', 'true'); // Armazenar estado de login
                window.location.href = 'index.html'; // Redireciona para a página inicial
            } else {
                alert('Usuário ou senha incorretos.');
            }
        }
    </script>

</body>
</html>
