<nav id="navBar" class="navbar">
  <div class="container-fluid">
    <header class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <div class="centerNav">
          <div id="brand">
            <a href="${sri.buildUrl("#").getUrl()}" class="navbar-brand"><img src="/images/nba-logo.png" alt="Home"></a>
            <p class="navbar-brand">Chua Project</p>
          </div>
        </div>
    </header>
    <div id="navbarContent" class="collapse navbar-collapse navbar-ex1-collapse">
        <div class="navbar-left">
            <a class="leftNavBtns" class="" href="/">HOME</a>
            <a class="leftNavBtns">TEAMS</a>
        </div>
        <#if ec.user.userId??>
            <div class="navbar-right">
                <a type="button" class="accountBtn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    ${(ec.getUser().getUserAccount().username)!} <span class="userIcon fa fa-user"></span>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="/m/accountPage">Dashboard</a></li>
                    <li role="separator" class="divider"></li>
                    <li>
                         <a href="#" onclick="switchDarkLight();" data-toggle="tooltip" data-original-title="${ec.l10n.localize("Switch Dark/Light")}" data-placement="bottom">
                              <span id="darkLight">Dark Mode</span>
                              <i id="darkLightIcon" class="fa fa-moon-o" aria-hidden="true"></i>
                         </a>
                    </li>
                    <li><a href="${sri.buildUrl("logout").url}">Sign Out</i></a></li>
                </ul>
            </div>
        <#else>
            <div class="navbar-right">
                <a href="/m/LoginForm" class="accountBtn">SIGN IN</a>
            </div>
        </#if>
    </div>
  </div>
</nav>

<script>
    $('.navbar [data-toggle="tooltip"]').tooltip({ placement:'bottom', trigger:'hover' });
    function switchDarkLight() {
        $("body").toggleClass("bg-dark");
        $("body").toggleClass("bg-light");
        $("#darkLightIcon").toggleClass("fa fa-moon-o fa fa-sun-o");
        $("#darkLight").text(($("#darkLight").text() == 'Dark Mode') ? 'Light Mode' : 'Dark Mode');
        var currentStyle = $("body").hasClass("bg-dark") ? "bg-dark" : "bg-light";
    }
</script>
