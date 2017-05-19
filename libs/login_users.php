<?php
  //Show errors
  error_reporting(E_ALL);
  ini_set('display_errors', 1);

  function console_log( $data ){
    echo '<script>';
    echo 'console.log('. json_encode( $data ) .')';
    echo '</script>';
  }
  //End Debug Error functions

  include_once('classes/ManageUsers.php');
  // register = name of the button in register page
  if(isset($_POST['register']))
  {
    session_start();
    $users = new ManageUsers();

    $username = $_POST['uname'];
    $password = $_POST['psw'];
    $repassword = $_POST['psw2'];
    $email = $_POST['email'];
    $numKeys = 0;
    $stamps = 0;
    $date = date("Y-m-d");
    $time = date("H:i:s");
    $lastLogin = $date ." ". $time;

    if(empty($username) || empty($email) || empty($password) || empty($repassword))
    {
      $error = 'All fields are required';
    }
    elseif ($password !== $repassword)
    {
      $error = 'Password does not match';
    }
    elseif(!filter_var($email,FILTER_VALIDATE_EMAIL))
    {
      $error = 'Email is not valid';
    }
    else
    {
      $check_availability = $users->getUserInfo($username);
      if($check_availability == 0)
      {
        $password = password_hash($password, PASSWORD_DEFAULT);
        $register_user = $users->registerUsers($username, $password, $email, $numKeys, $stamps, $lastLogin);
        if($register_user == 1)
        {
          $make_session = $users->getUserInfo($username);
          foreach ($make_session as $userSessions)
          {
            $_SESSION['player_name'] = $userSessions['username'];
            if(isset($_SESSION['player_name']))
            {
              header("location: ../avatar.php");
            }
          }
          print_r($make_session);
        }
      }
      else
      {
          $error = 'Username already exists';
      }
    }
  }
// login = name of the button in login page
  if(isset($_POST['login']))
  {
    session_start();
    $username = $_POST['uname'];
    $password = $_POST['psw'];

    if(empty($username) || empty($password))
    {
      $error = 'All fields are required';
    }
    else
    {
        $login_user = new ManageUsers();
        $auth_user = $login_user->loginUsers($username, $password);

        if($auth_user == 1)
        {
          $make_session = $login_user->getUserInfo($username);

          foreach ($make_session as $userSessions)
          {
            $_SESSION['player_name'] = $userSessions['username'];
            if(isset($_SESSION['player_name']))
            {
              header("location: planets.php");
            }
          }
          print_r($make_session);
        }
        else
        {
          $error = 'Invalid Credentials';
        }
    }
  }

 ?>
