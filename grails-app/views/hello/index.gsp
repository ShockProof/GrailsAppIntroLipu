<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Interview </title>

    <asset:stylesheet src="bootstrap.css"/>
    <asset:javascript src="jquery-2.2.0.min.js"/>
    <asset:javascript src="bootstrap.js"/>
    <asset:javascript src="Application.js"/>
    <asset:javascript src="validation.js"/>
    <asset:javascript src="additional.js"/>

</head>
<body>

    <div class="jumbotron">
        <h2 style="text-align: center"> 
            <strong> ${person[0].name} joined on <g:formatDate format="yyyy-MM-dd" date="${person[0].joiningDay}"/> </strong>
        </h2>
    </div>

    <div class="container-fluid">
        <div class="row">

<!-- Person Table -->
            <div class="col-sm-8">
                <h2> table name </h2>
                <p> table description </p>
                <table class="table">

                    <thead>
                        <tr class="success">
                            <th>Name</th>
                            <th>Email</th>
                            <th>Joining Date</th>
                            <th>Post</th>
                        </tr>
                    </thead>

                    <tbody id="personlist">
                        <g:each in="${person}">
                            <tr class="info">
                                <td>${it.name}</td>
                                <td>${it.email}</td>
                                <td> <g:formatDate format="yyyy-MM-dd" date="${it.joiningDay}"/> </td>
                                <td>${it.post}</td>
                            </tr>
                        </g:each>

                    </tbody>

                </table>
            </div>

<!-- Form to add new Person -->
            <div class="col-sm-4 container jumbotron">
                <h2>Add new Person:</h2>
                <form id="myform" class="form-horizontal" >

                    <div class="form-group">
                        <label class="control-label col-sm-2">Name:</label>
                        <div class="col-sm-10">
                            <input type="name" name="name" class="form-control" id="newname" placeholder="Enter name" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-2">Email:</label>
                        <div class="col-sm-10">
                            <input type="email" name="email" class="form-control" id="newemail" placeholder="Enter email" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-2">Joining Date:</label>
                        <div class="col-sm-10">
                            <input type="date" name="newjoiningday" class="form-control" id="newjoiningday" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-2">Post:</label>
                        <div class="col-sm-10">
                            <select name="post" class="form-control" id="newpost" placeholder="Software Engineer" >
                                <option value="Software Engineer">Software Engineer</option>
                                <option value="Project Manager">Project Manager</option>
                                <option value="Human Resource">Human Resource</option>
                                <option value="Hardware Engineer">Hardware Engineer</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">        
                        <div class="col-sm-offset-2 col-sm-10">
                            <button class="btn btn-default" id="addnewperson" data-url="${createLink(controller:'hello',action:'insert')}"> Submit </button>
                        </div>
                    </div>
                </form>
            </div>

        </div>
    </div>

</body>
</html>
