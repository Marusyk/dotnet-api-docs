<!-- <Snippet1> -->
<%@ Page language="VB" %>
<%@ Register TagPrefix="aspSample" Namespace="Samples.AspNet.VB.Controls" Assembly="Samples.AspNet.VB" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
    <head>
        <title>Custom CheckBoxList - IRepeatInfoUser - VB.NET Example</title>
    </head>
    <body>
        <form id="Form1" method="post" runat="server">
            <h3>Custom CheckBoxList - IRepeatInfoUser - VB.NET Example</h3>
      <aspSample:CustomCheckBoxListIRepeatInfoUser id="CheckBoxList" runat="server">
                <asp:ListItem  Selected="True">Item 1</asp:ListItem>
                <asp:ListItem>Item 2</asp:ListItem>
                <asp:ListItem>Item 3</asp:ListItem>
                <asp:ListItem>Item 4</asp:ListItem>
                <asp:ListItem>Item 5</asp:ListItem>
                <asp:ListItem>Item 6</asp:ListItem>
            </aspSample:CustomCheckBoxListIRepeatInfoUser>
        </form>
    </body>
</html>
<!-- </Snippet1> -->
