<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo; section>
    <#if section = "title">
        ${msg("loginTitle",(realm.displayName!''))}
    <#elseif section = "header">
        <link href="${url.resourcesPath}/img/favicon.ico" rel="icon"/>
    <#elseif section = "form">
        <img id="logo" src="${url.resourcesPath}/img/ocf-logo.svg" alt="OCF logo">
        <h1>Log in to OCF</h1>
        <#if realm.password>
            <form id="kc-form-login" class="form" onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post">
                <label><span>${msg("username")}</span> <input name="username" autofocus="" required="" /></label>
                <label><span>${msg("password")}</span> <input name="password" type="password" required="" /></label>
                <button>Log in</button>
            </form>
            <p>Or <a href="https://www.ocf.berkeley.edu/account/register/">create an account</a>.</p>
        </#if>
        <#if social.providers??>
            <p class="para">${msg("selectAlternative")}</p>
            <div id="social-providers">
                <#list social.providers as p>
                <input class="social-link-style" type="button" onclick="location.href='${p.loginUrl}';" value="${p.displayName}"/>
                </#list>
            </div>
        </#if>
    </#if>
</@layout.registrationLayout>
