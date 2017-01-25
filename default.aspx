<%@ Page Language="C#" %>
<script runat="server">
    public void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void ButtonNumber1_Click(object sender, EventArgs e)
    {
        DisplayTextBox1.Text = DisplayTextBox1.Text + "1";
    }

    protected void ButtonNumber2_Click(object sender, EventArgs e)
    {
        DisplayTextBox1.Text = DisplayTextBox1.Text + "2";
    }

    protected void ButtonNumber3_Click(object sender, EventArgs e)
    {
        DisplayTextBox1.Text = DisplayTextBox1.Text + "3";
    }

    protected void ButtonNumberPlus_Click(object sender, EventArgs e)
    {
        DisplayTextBox1.Text = DisplayTextBox1.Text + " + ";
    }

</script>
<html>
<head>
  <title>Single-File Page Model</title>
</head>
<body>
    <form runat="server">
        <table>
            <tr>
                <td colspan="4"></td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:TextBox ID="DisplayTextBox1" runat="server" Height="45px" Width="375px"
                        TextMode="MultiLine" Font-Bold="True" Font-Size="X-Large" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                        
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="ButtonNumber1" runat="server" Height="50px" Text="1"
                        Width="95px" OnClick="ButtonNumber1_Click" />
                </td>
                <td>
                    <asp:Button ID="ButtonNumber2" runat="server" Height="50px" Text="2"
                        Width="95px" OnClick="ButtonNumber2_Click" />
                </td>
                <td>
                    <asp:Button ID="ButtonNumber3" runat="server" Height="50px" Text="3"
                        Width="95px" ClientIDMode="AutoID" OnClick="ButtonNumber3_Click" />
                </td>
                <td>
                    <asp:Button ID="ButtonNumberPlus" runat="server" Height="50px" Text="+"
                        Width="95px" OnClick="ButtonNumberPlus_Click" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
