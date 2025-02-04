<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${msg("loginTitle")}</title>
    <link rel="stylesheet" href="${url.resourcesPath}/css/style.css">
</head>
<body>
    <form id="kc-form-login" action="${url.loginAction}" method="post">
    <div class="login-container">
    
      <#if message?has_content>
        <div class="error-message">
            ${message.summary}
        </div>
        </#if>


        <div class="input-group" id="name">
        <!-- User icon -->
        <svg xmlns="http://www.w3.org/2000/svg" height="20" width="20" fill="currentColor" viewBox="0 0 24 24">
            <path d="M12 12c2.67 0 8 1.34 8 4v2H4v-2c0-2.66 5.33-4 8-4zm0-2a3 3 0 100-6 3 3 0 000 6z"></path>
        </svg>
        <input  required id="username" name="username" type="text" placeholder="USERNAME" autofocus>
        </div>
        <div class="input-group" id="pass">
        <!-- Password icon -->
        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" viewBox="0 0 24 24">
            <path d="M12 1a5 5 0 00-5 5v4H6a3 3 0 00-3 3v6a3 3 0 003 3h12a3 3 0 003-3v-6a3 3 0 00-3-3h-1V6a5 5 0 00-5-5zm-3 5a3 3 0 116 0v4h-6V6zm3 9a1.5 1.5 0 100 3 1.5 1.5 0 000-3z"/>
        </svg>
        <input  id="password" name="password" type="password" placeholder="PASSWORD" >
        </div>
    
        <button class="login-button">LOGIN</button>
        <div class="forgot-password">
          <a href="${url.loginResetCredentialsUrl}">Forgot password?</a>
      </div>
    </div>
    </form>
</body>
<script>
    const nameContainer =  document.querySelector('#name')
    const passContainer = document.querySelector('#pass')

    const nameInput = document.querySelector('#username')
    const passInput = document.querySelector('#password')


    nameInput.addEventListener('focus', () => {
        nameContainer.classList.add('focused')
    })
    nameInput.addEventListener('blur', () => {
        nameContainer.classList.remove('focused')
    })

    passInput.addEventListener('focus', () => {
        passContainer.classList.add('focused')
    })
    passInput.addEventListener('blur', () => {
        passContainer.classList.remove('focused')
    })
</script>
</html>
