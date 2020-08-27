<div class="tab-content" id="loginContent">
    <div id="login" class="tab-pane active">
        <form method="post" action="${sri.buildUrl("login").url}" class="form-signin" id="login_form">
            <div class="loginHeading">
                <h2 id="loginTitle" class="text-center">${ec.l10n.localize("Chua Project")}</h2>
                <h5 id="loginSubHeading" class="text-muted text-center">${ec.l10n.localize("Number one app for all things NBA")}</h5>
            </div>
            <input type="text" name="username" value="${(ec.getWeb().getErrorParameters().get("username"))!""}" placeholder="${ec.l10n.localize("Username")}" required="required" class="form-control loginInput" id="login_form_username">
            <input type="password" name="password" placeholder="${ec.l10n.localize("Password")}" required="required" class="form-control loginInput">
            <button class="btn btn-lg btn-block" type="submit">${ec.l10n.localize("Sign In")}</button>
            <div class="text-center"><a class="" href="#reset" data-toggle="tab">${ec.l10n.localize("Forgot password?")}</a><span class="split">|</span><a class="" href="#change" data-toggle="tab">${ec.l10n.localize("Change Password")}</a></div>
        </form>
        <div class="text-center belowForm"><span>Don't have an account?<a href="#signup" data-toggle="tab">${ec.l10n.localize("Sign up here!")}</a></span></div>
    </div>
    <div id="signup" class="tab-pane">
        <form method="post" action="${sri.buildUrl("createUser").url}" class="form-signin" id="create_form">
            <div class="loginHeading"><p class="text-muted text-center ">${ec.l10n.localize("Don't have a Chua Project account? Don't worry! It's free and easy.")}</p></div>
            <input type="hidden" name="moquiSessionToken" value="${ec.web.sessionToken}">
            <input type="text" name="username" placeholder="${ec.l10n.localize("Username")}" required="required" class="form-control loginInput">
            <input type="email" name="emailAddress" placeholder="${ec.l10n.localize("Email Address")}" required="required" class="form-control loginInput">
            <input type="password" name="newPassword" placeholder="${ec.l10n.localize("New Password")}" required="required" class="form-control loginInput">
            <input type="password" name="newPasswordVerify" placeholder="${ec.l10n.localize("New Password Verify")}" required="required" class="form-control loginInput">
            <button class="btn btn-lg btn-block" type="submit">${ec.l10n.localize("Sign Up")}</button>
        </form>
        <div class="text-center belowForm"><span>Already have an account? <a href="#login" data-toggle="tab">${ec.l10n.localize("Sign In!")}</a></span></div>
    </div>
    <div id="reset" class="tab-pane">
        <form method="post" action="${sri.buildUrl("resetPassword").url}" class="form-signin" id="reset_form">
            <div class="loginHeading"><h4 class="text-muted text-center ">${ec.l10n.localize("Enter username to reset password.")}</h4></div>
            <input type="hidden" name="moquiSessionToken" value="${ec.web.sessionToken}">
            <input type="text" name="username" placeholder="${ec.l10n.localize("Username")}" required="required" class="form-control loginInput">
            <button class="btn btn-lg btn-danger btn-block" type="submit">${ec.l10n.localize("Reset &amp; Email Password")}</button>
        </form>
        <div class="text-center belowForm">
            <a class="changeFormBottom" href="#login" data-toggle="tab">${ec.l10n.localize("Login")}</a>
            <a class="changeFormBottom" href="#signup" data-toggle="tab">${ec.l10n.localize("Sign Up")}</a>
        </div>
    </div>
    <div id="change" class="tab-pane">
        <form method="post" action="${sri.buildUrl("changePassword").url}" class="form-signin" id="change_form">
            <div class="loginHeading"><h4 class="text-muted text-center">${ec.l10n.localize("Forgot Password? Enter Details Below.")}</h4></div>
            <input type="hidden" name="moquiSessionToken" value="${ec.web.sessionToken}">
            <input type="text" name="username" value="${(ec.getWeb().getErrorParameters().get("username"))!""}" placeholder="${ec.l10n.localize("Username")}" required="required" class="form-control loginInput">
            <input type="password" name="oldPassword" placeholder="${ec.l10n.localize("Old Password")}" required="required" class="form-control loginInput">
            <input type="password" name="newPassword" placeholder="${ec.l10n.localize("New Password")}" required="required" class="form-control loginInput">
            <input type="password" name="newPasswordVerify" placeholder="${ec.l10n.localize("New Password Verify")}" required="required" class="form-control loginInput">
            <button class="btn btn-lg btn-danger btn-block" type="submit">${ec.l10n.localize("Change Password")}</button>
        </form>
        <div class="text-center belowForm">
            <a class="changeFormBottom" href="#login" data-toggle="tab">${ec.l10n.localize("Login")}</a>
            <a class="changeFormBottom" href="#signup" data-toggle="tab">${ec.l10n.localize("Sign Up")}</a>
        </div>
    </div>
</div>