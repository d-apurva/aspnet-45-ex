<%@ Page Language="C#" %>
 <script language="c#" runat="server">

        protected void ButtonNumberPlus_Click(object sender, EventArgs e)
        {
            DisplayTextBox1.Text = DisplayTextBox1.Text + ".";
        }

        protected void ButtonNumberPlus_Click(object sender, EventArgs e)
        {
            DisplayTextBox1.Text = DisplayTextBox1.Text + " + ";
        }

        protected void ButtonNumberMinus_Click(object sender, EventArgs e)
        {
            DisplayTextBox1.Text = DisplayTextBox1.Text + " - ";
        }

        protected void ButtonNumberMulti_Click(object sender, EventArgs e)
        {
            DisplayTextBox1.Text = DisplayTextBox1.Text + " * ";
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

        protected void ButtonNumber4_Click(object sender, EventArgs e)
        {
            DisplayTextBox1.Text = DisplayTextBox1.Text + "4";
        }

        protected void ButtonNumber5_Click(object sender, EventArgs e)
        {
            DisplayTextBox1.Text = DisplayTextBox1.Text + "5";
        }

        protected void ButtonNumber6_Click(object sender, EventArgs e)
        {
            DisplayTextBox1.Text = DisplayTextBox1.Text + "6";
        }

        protected void ButtonNumber7_Click(object sender, EventArgs e)
        {
            DisplayTextBox1.Text = DisplayTextBox1.Text + "7";
        }

        protected void ButtonNumber8_Click(object sender, EventArgs e)
        {
            DisplayTextBox1.Text = DisplayTextBox1.Text + "8";
        }

        protected void ButtonNumber9_Click(object sender, EventArgs e)
        {
            DisplayTextBox1.Text = DisplayTextBox1.Text + "9";
        }

        protected void ButtonNumber0_Click(object sender, EventArgs e)
        {
            DisplayTextBox1.Text = DisplayTextBox1.Text + "0";
        }

        protected void Button25_Click(object sender, EventArgs e)
        {
            DisplayTextBox1.Text = "";
        }

        protected void Button24_Click(object sender, EventArgs e)
        {
            string DisplayText = DisplayTextBox1.Text;
            int LastIndex = DisplayText.Length;
            DisplayTextBox1.Text = DisplayTextBox1.Text.Remove(LastIndex - 1);

        }

        protected void ButtonNumberEqual_Click(object sender, EventArgs e)
        {

            try
            {
                string nr = DisplayTextBox1;

                string[] expresie;
                char operatie = ' ';
                decimal rezultat = 0;
                decimal numar = 0;

                if (nr == null)
                    return;

                expresie = nr.Split(' ');

                if (decimal.TryParse(expresie[0], out numar))
                {
                    rezultat = numar;
                }
                for (int i = 1; i < expresie.Length; ++i)
                {
                    if (expresie[i] == "+" || expresie[i] == "-" || expresie[i] == "*" || expresie[i] == "/")
                        operatie = expresie[i][0];
                    else if (decimal.TryParse(expresie[i], out numar))
                    {
                        if (operatie != ' ')
                        {
                            switch (operatie)
                            {
                                case '+':
                                    {
                                        rezultat = rezultat + numar;
                                        break;
                                    }
                                case '-':
                                    {
                                        rezultat = rezultat - numar;
                                        break;
                                    }

                                case '*':
                                    {
                                        rezultat = rezultat * numar;
                                        break;
                                    }
                                case '/':
                                    {
                                        rezultat = rezultat / numar;
                                        break;
                                    }
                            }

                            operatie = ' ';
                        }
                    }

                }

                DisplayTextBox1.Text = rezultat.ToString();
            }

            catch
            {
                DisplayTextBox1.Text = "ERROR";
            }

        }

        protected void btnDiv_Click(object sender, EventArgs e)
        {
            DisplayTextBox1.Text = DisplayTextBox1.Text + " / ";
        }

    </script>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link href="main.css" rel="stylesheet" />
    <title>Click2cloud, Welcome to Calculator on OpenShift</title>
</head>
<body>
    <form runat="server">
        <section class="container">
            <hgroup>
                <h1>click2cloud, Welcome to Calculator on OpenShift</h1>
            </hgroup>

        
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
                            <asp:Button ID="Button24" runat="server" Height="50px" Text="DEL"
                                Width="95px" OnClick="Button24_Click" />
                        </td>
                        <td>
                            <asp:Button ID="Button25" runat="server" Height="50px" Text="AC"
                                Width="95px" OnClick="Button25_Click" />
                        </td>
                        <td>
                            <asp:Button ID="ButtonNumberdot" runat="server" Height="50px" Text="."
                                Width="95px" OnClick="ButtonNumberdot_Click" />
                        </td>
                         <td>
                    <asp:Button ID="btnDiv" runat="server" Height="50px" Text="/" Width="95px" OnClick="btnDiv_Click" />
                </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="ButtonNumber7" runat="server" Height="50px" Text="7"
                                Width="95px" OnClick="ButtonNumber7_Click" />
                        </td>
                        <td>
                            <asp:Button ID="ButtonNumber8" runat="server" Height="50px" Text="8"
                                Width="95px" OnClick="ButtonNumber8_Click" />
                        </td>
                        <td>
                            <asp:Button ID="ButtonNumber9" runat="server" Height="50px" Text="9"
                                Width="95px" OnClick="ButtonNumber9_Click" />
                        </td>
                        <td>
                            <asp:Button ID="ButtonNumberMulti" runat="server" Height="50px" Text="X"
                                Width="95px" OnClick="ButtonNumberMulti_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="ButtonNumber4" runat="server" Height="50px" Text="4"
                                Width="95px" OnClick="ButtonNumber4_Click" />
                        </td>
                        <td>
                            <asp:Button ID="ButtonNumber5" runat="server" Height="50px" Text="5"
                                Width="95px" OnClick="ButtonNumber5_Click" />
                        </td>
                        <td>
                            <asp:Button ID="ButtonNumber6" runat="server" Height="50px" Text="6"
                                Width="95px" OnClick="ButtonNumber6_Click" />
                        </td>
                        <td>
                            <asp:Button ID="ButtonNumberMinus" runat="server" Height="50px" Text="_"
                                Width="95px" OnClick="ButtonNumberMinus_Click" />
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
                    <tr>
                        <td>
                            <asp:Button ID="ButtonNumber0" runat="server" Height="50px" Text="0"
                                Width="95px" OnClick="ButtonNumber0_Click" />
                        </td>
                        <td colspan="3">
                            <asp:Button ID="ButtonNumberEqual" runat="server" Height="50px" Text="="
                                Width="293px" OnClick="ButtonNumberEqual_Click" />
                        </td>
                    </tr>
                </table>
        
            <footer>
                <div class="logo"><a href="http://click2cloud.net/" target="_blank"></a></div>
            </footer>
        </section>
    </form>
</body>
</html>
