<!-- <Snippet1> -->
<%@Page  Language="VB" %>
<%@Import Namespace="System.Web.Mail" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

 Sub OnDSUpdatedHandler(ByVal source As Object, ByVal e As SqlDataSourceStatusEventArgs)
    If e.AffectedRows > 0 Then
        ' Perform any additional processing, 
        ' such as setting a status label after the operation.        
        Label1.Text = Request.LogonUserIdentity.Name & _
            " changed user information successfully!"
    Else 
        Label1.Text = "No data updated!"
    End If
 End Sub 'OnDSUpdatedHandler
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
  <head runat="server">
    <title>ASP.NET Example</title>
</head>
<body>
    <form id="form1" runat="server">

      <asp:SqlDataSource
          id="SqlDataSource1"
          runat="server"
          DataSourceMode="DataSet"
          ConnectionString="<%$ ConnectionStrings:MyNorthwind%>"
          SelectCommand="SELECT EmployeeID,FirstName,LastName,Title FROM Employees"
          UpdateCommand="Update Employees SET FirstName=@FirstName,LastName=@LastName,Title=@Title WHERE EmployeeID=@EmployeeID"
          OnUpdated="OnDSUpdatedHandler">
      </asp:SqlDataSource>

      <asp:GridView
          id="GridView1"
          runat="server"
          AutoGenerateColumns="False"
          DataKeyNames="EmployeeID"
          AutoGenerateEditButton="True"
          DataSourceID="SqlDataSource1">
          <columns>
              <asp:BoundField HeaderText="First Name" DataField="FirstName" />
              <asp:BoundField HeaderText="Last Name" DataField="LastName" />
              <asp:BoundField HeaderText="Title" DataField="Title" />
          </columns>
      </asp:GridView>

      <asp:Label
          id="Label1"
          runat="server">
      </asp:Label>

    </form>
  </body>
</html>
<!-- </Snippet1> -->