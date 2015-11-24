<html >
  <head>
    <meta charset="UTF-8">
    <title>IceMan-Server Authentication</title>
        <link rel="stylesheet" type="text/css" href="/login_style.css"/>
  </head>
  
  <body>

    <!--Google Font - Work Sans-->
<link href='https://fonts.googleapis.com/css?family=Work+Sans:400,300,700' rel='stylesheet' type='text/css'>
<form method="post" action="${postAction}" name="login_form">

<div class="container">
  <div class="profile">
    <button class="profile__avatar" id="toggleProfile">
     <img src="https://cdn4.iconfinder.com/data/icons/apple-touch-id/512/Touch_ID-512.png" alt="Avatar" /> 
    </button>

    <div class="profile__form">
      <div class="profile__fields">
        <p><loginError/></p>
        <div class="field">
          <input type="text" name="login" id="login" class="input" required pattern=.*\S.* novalidate />
          <label for="login" class="label">Username</label>
        </div>
        <div class="field">
          <input type="password" name="password" id="password" class="input" required pattern=.*\S.* novalidate/>
          <label for="password" class="label">Password</label>
        </div>
        <div class="profile__footer">
            <input class="btn" id="btn_auth" type="submit" value="${submitText}" />
        </div>
      </div>
     </div>
  </div>
</div>
    </form>
    
    <script>
    document.onload = open()
    document.getElementById('toggleProfile').addEventListener('click', function () {
      open();
    });
    function open(){
        console.log("Opening dialog");
        document.querySelector('.profile').classList.add('profile--open')
    };
  </script>
    
  </body>
</html>
