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
            <div class="branding">
                <svg width="320" height="100" viewBox="0 0 320 100" xmlns="http://www.w3.org/2000/svg">
                    <rect x="0" y="10" width="320" height="20" rx="10" fill="black"/>
                    <circle cx="12" cy="20" r="8" fill="white" stroke="black" stroke-width="4"/>
                    <circle cx="308" cy="20" r="8" fill="white" stroke="black" stroke-width="4"/>
                    <rect x="0" y="40" width="320" height="20" rx="10" fill="black"/>
                    <rect x="0" y="70" width="320" height="20" rx="10" fill="black"/>
                    <circle cx="12" cy="80" r="8" fill="white" stroke="black" stroke-width="4"/>
                </svg>
            </div>
            
            <#if message?has_content>
                <div class="error-message">${message.summary}</div>
            </#if>

            <div class="input-group">
                <input required id="username" name="username" type="text" placeholder="USERNAME" autofocus>
            </div>
            
            <div class="input-group">
                <input id="password" name="password" type="password" placeholder="PASSWORD">
            </div>
        
            <button class="login-button">ВОЙТИ</button>
            
            <div class="forgot-password">
                <a href="${url.loginResetCredentialsUrl}">Забыл пароль?</a>
            </div>
        </div>
    </form>
</body>
</html>