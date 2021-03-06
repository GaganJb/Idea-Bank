<?php require_once "functions.php"; ?>
<?php
  db_connect();
  // if user is logged in, redirect to home page
  if(is_auth()) {
    redirect_to("home.php");
  }
?>

<?php include "header.php" ?>

<!-- main -->
<main class="container">
  <!-- messages -->
  
  <?php if(isset($_GET['login_error'])): ?>
    <div class="alert alert-danger">
      <p>Invalid username or password!</p>
    </div>
  <?php endif; ?>

  <?php if(isset($_GET['logged_in'])): ?>
    <div class="alert alert-danger">
      <p>You are not logged in!</p>
    </div>
  <?php endif; ?>
  <!-- ./messages -->

 <h1 class="text-center" style = "border:2px solid hsl(0,80%,40%); border-radius:100px;width:500px;margin-left: 330px">Welcome to Idea Bank! <br><small> Platform to encourage ideas and problem solving.</small></h1>
  </div>

  <div class="row">
    <div class="col-md-6" style="margin-left: 300px">
      <h4>Login</h4>

      <!-- login form -->
      <form method="post" action="login.php">
        <div class="form-group">
            <input class="form-control" type="text" name="name" placeholder="Username">
          </div>

          <div class="form-group">
            <input class="form-control" type="password" name="password" placeholder="Password">
          </div>

          <div class="form-group">
            <input class="btn btn-primary" style = "background-color: hsl(0,80%,40%);" type="submit" name="login" value="Login">
          </div>
      </form>
      <!-- ./login form -->
    </div>
    
  </div>
 
</main>
<!-- ./main -->

<?php include "footer.php" ?>