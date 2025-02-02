﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RedefinirSenha.aspx.cs" Inherits="PI4Sem.AgendaFacil.RedefinirSenha" Theme="PI4SemTheme" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Assembly="GoogleReCaptcha" Namespace="GoogleReCaptcha" TagPrefix="gcc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="X-UA-Compatible" content="IE=9" />
    <title></title>
    <link href="Templates/StyleSheet.css" type="text/css" rel="stylesheet" />
    <script language="javascript" type="text/javascript" src="../Templates/JScript.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Header-top-left.png" /></td>
                    <td width="100%" style="background-image: url('<%Response.Write(ImagePath); %>/header-top-right.png'); background-repeat: repeat-x; text-align: right; vertical-align: top; height: 30px;">
                        <div style="margin-top: 10px;">
                            <asp:Label ID="lblAmbiente" runat="server" Text="" CssClass="TextoCabecalho2" Style="vertical-align: bottom;"></asp:Label>&nbsp;
						<asp:Image ID="Image2" runat="server" ImageUrl="~/Images/bullet.png" AlternateText="bullet" Style="vertical-align: bottom;" />
                            <asp:Label ID="lblVersao" runat="server" CssClass="TextoCabecalho2" Style="vertical-align: bottom;"></asp:Label>&nbsp;
                        </div>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" width="100%" style="background-image: url('<%Response.Write(ImagePath); %>/header-bottom-left.png'); background-repeat: repeat-x; height: 30px;"></td>
                </tr>
                <tr>
                    <td style="text-align: center;">&nbsp;<br />
                        <br />
                        <br />
                    </td>
                </tr>
            </table>

            <table border="0" cellpadding="2" cellspacing="2" width="45%" style="margin-left: auto; margin-right: auto; border: solid 1px #002258;">
                <tr>
                    <td align="center" style="font-weight: bold" colspan="2">Redefinindo senha
                    </td>
                </tr>
                <tr>
                    <td align="center" class="ButtonTD" colspan="2">&nbsp;<asp:Button ID="btnSalvar" runat="server" Text="Solicitar nova senha" CssClass="Button" OnClick="BtnSalvar_Click" />
                        &nbsp;<asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CausesValidation="false" CssClass="Button" OnClick="BtnCancelar_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="FormViewValue" colspan="2">&nbsp;<asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Verifique os valores inválidos:" />
                    </td>
                </tr>
                <tr>
                    <td class="FormViewLabel">Login:</td>
                    <td class="FormViewValue">
                        <asp:TextBox ID="txtUsuario" runat="server" Text="" MaxLength="14" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Informe o login" ControlToValidate="txtUsuario">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="FormViewLabel" style="width: 40%">E-mail:</td>
                    <td class="FormViewValue" style="white-space: nowrap">
                        <asp:TextBox ID="txtEmail" runat="server" Text="" MaxLength="200" Width="300px" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Informe o Email" ControlToValidate="txtEmail">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" ControlToValidate="txtEmail" ErrorMessage="Email em formato inválido">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
            </table>
        </div>

        <asp:Panel ID="Panel1" runat="server" Width="354px" Style="text-align: center; margin-left: auto; margin-right: auto; margin-top: 15px">
            <table border="0" cellpadding="2" cellspacing="2" width="100%" style="margin-left: auto; margin-right: auto;">
                <tr>
                    <td class="" colspan="2" style="">
                        <div id="recaptcha" runat="server" style="padding-left: 22px">
                            <gcc:GoogleReCaptcha ID="ctrlGoogleReCaptcha" runat="server" />
                        </div>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:RoundedCornersExtender ID="RoundedCornersExtender2" runat="server" TargetControlID="Panel1" SkinID="RoundedCornersFiltro"></asp:RoundedCornersExtender>

        <asp:ScriptManager runat="server" ID="ScriptManager1" EnableScriptGlobalization="true" AsyncPostBackTimeout="300">
            <Scripts>
                <asp:ScriptReference Path="~/Scripts/AjaxControlToolkit/Bundle" />
            </Scripts>
        </asp:ScriptManager>
    </form>
</body>
</html>