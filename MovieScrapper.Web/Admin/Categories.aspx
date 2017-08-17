﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Categories.aspx.cs" Inherits="MovieScrapper.Admin.Categories" MasterPageFile="~/Site.Master" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" >
    <link href="AdminStyleSheet.css" rel="stylesheet" />
        <div>
            <asp:Button ID="AddCategoryButton" cssClass="adminMemuButton" runat="server" OnClick="AddCategoryButton_Click" Text="Add category"  />           
            <asp:Button ID="EditUsers" cssClass="adminMemuButton" runat="server" OnClick="EditUsersButton_Click" Text="Edit Users"  />
            <asp:Button ID="ShowChangeDateButton" cssClass="adminMemuButton" runat="server" OnClick="ShowChangeDateButton_Click" Text="Stop the Game"  />

            <div class="changeDate">                
                <asp:Calendar ID="Calendar1" cssClass="hidden" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
                <asp:Button ID="ChangeStopGameDateButton" cssClass=" hidden" runat="server" OnClick="ChangeDateButton_Click" Text="Save"  />
                <asp:CustomValidator id="CustomValidator1" runat="server" Display="Dynamic" ErrorMessage="Please select a date"  OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
            </div>

            <hr />
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ObjectDataSource1"
                ItemType="MovieScrapper.Entities.Category" OnItemCommand="Repeater1_ItemCommand">
                <ItemTemplate>
                   <div class="item"> 
                        <div class="title">
                            <asp:Label ID="CategoryTtleLabel"  runat="server" cssClass="categoryTitle" Text='<%# Item.CategoryTtle %>' />                               
                        </div>                       
                        <asp:Button runat="server" ID="EditCategory" cssClass="adminButton" Text="Edit category" CommandName="EditCategory" CommandArgument='<%# Item.Id %>'  />
                        <br />                       
                        <asp:Button runat="server" ID="ShowMoviesInThisCategoryButton" cssClass="adminButton" CommandName="ShowMoviesInThisCategory" CommandArgument='<%# Item.Id %>' Text="Edit movies"  />                        
                   </div>
                </ItemTemplate>
            </asp:Repeater>
            <br />
            <hr />            
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetAll"
                TypeName="MovieScrapper.Business.CategoryService"></asp:ObjectDataSource>

        </div>
</asp:Content>
