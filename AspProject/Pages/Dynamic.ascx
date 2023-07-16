<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Dynamic.ascx.cs" Inherits="AspProject.Pages.Dynamic" %>
<div class="card" style="width: 18rem;">
  <img src="<%:Image %>" class="card-img-top" alt="Image">
  <div class="card-body">
    <h5 class="card-title"><%:Title %></h5>
    <p class="card-text"><%:Description %></p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>
