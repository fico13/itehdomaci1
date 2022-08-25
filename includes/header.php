
<?php require_once "classes/Korisnik.php"; ?>
<?php 

  if (session_status() == PHP_SESSION_NONE) {
    session_start();
  }

?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Ficova knjizara</title>
  <link rel="stylesheet" href="https://bootswatch.com/4/lux/bootstrap.min.css">
  <script src="https://kit.fontawesome.com/5c5689b7a2.js"></script>
  <link rel="stylesheet" href="css/styles.css">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-primary" style="margin-bottom: 3rem;">
  <a class="navbar-brand" href="index.php">Ficova knjizara</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarColor01">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.php">Knjige <span class="sr-only">(current)</span></a>
      </li>
    <?php if(Korisnik::ulogovan()){ ?>
        <li class="nav-item">
            <a class="nav-link" href="#">Ulogovani kao: <strong><?php echo $_SESSION['korisnik']['nadimak']; ?></strong></a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="odjava.php">Odjavi se</a>
        </li>
    <?php }else{ ?>
        <li class="nav-item">
            <a class="nav-link" href="login.php">Prijavi se</a>
        </li>

        <li class="nav-item">
            <a class="nav-link" href="register.php">Registruj se</a>
        </li>
    <?php } ?>
    </ul>
    <form class="form-inline my-2 my-lg-0" id="trazi-form" method="POST">
      <input class="form-control mr-sm-2" id="trazi-input" name="trazi-text" type="text" placeholder="Traži naslov">
      <button class="btn btn-secondary my-2 my-sm-0" name="trazi" type="submit">Traži</button>
    </form>
  </div>
</nav>