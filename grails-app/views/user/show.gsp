<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>App42 Sample Grails-Redis Application</title>
    <link href="${resource(dir:'css',file:'style-User-Input-Form.css')}" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="${resource(dir:'js',file:'jquery-1.6.4.js')}"></script>
  </head>
  <body>
    <div class="App42PaaS_header_wrapper">
      <div class="App42PaaS_header_inner">
        <div class="App42PaaS_header">
          <div class="logo"><a href="http://app42paas.shephertz.com"><img border="0" alt="App42PaaS" src="${resource(dir:'images',file:'logo.png')}"></img></a>
          </div>
        </div>
      </div>
    </div>
    <div class="App42PaaS_body_wrapper">
      <div class="App42PaaS_body">
        <div class="App42PaaS_body_inner">
          <div class="contactPage_title">
            <g:if test="${userInstance != null && userInstance.size() != 0}">
            <table>
              <thead class='table-head'>
                <tr>
                  <td>Name</td>
                </tr>
              </thead>
              <tbody>
              <g:each in="${userInstance}" var="user">
                <tr>
                  <td>${user}</td>
                </tr>
                </g:each>
              </tbody>
            </table>
            </g:if>
            <g:else>
              <h1>No data</h1><br/><br/>
            </g:else>
              <br/>
            <g:link controller="user" action="index" style='font-size: 18px;'>Back</g:link>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
