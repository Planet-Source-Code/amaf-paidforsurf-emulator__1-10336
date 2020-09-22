VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "SHDOCVW.DLL"
Object = "{48E59290-9880-11CF-9754-00AA00C00908}#1.0#0"; "MSINET.OCX"
Begin VB.Form Form1 
   Caption         =   "paidforsurf emulator created by amaf"
   ClientHeight    =   2700
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7095
   LinkTopic       =   "Form1"
   ScaleHeight     =   2700
   ScaleWidth      =   7095
   StartUpPosition =   3  'Windows Default
   Begin InetCtlsObjects.Inet Inet2 
      Left            =   3360
      Top             =   2280
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
   End
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   60000
      Left            =   5880
      Top             =   2280
   End
   Begin VB.Frame Frame3 
      Caption         =   "emulator clicks"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   120
      TabIndex        =   9
      Top             =   1800
      Width           =   2055
      Begin VB.TextBox Text1 
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   120
         TabIndex        =   11
         Text            =   "url"
         Top             =   480
         Width           =   1815
      End
      Begin VB.CheckBox Check1 
         Appearance      =   0  'Flat
         BackColor       =   &H80000004&
         Caption         =   "emulate"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   120
         TabIndex        =   10
         Top             =   240
         Width           =   1215
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "ad window"
      Height          =   1575
      Left            =   2280
      TabIndex        =   7
      Top             =   120
      Width           =   4695
      Begin SHDocVwCtl.WebBrowser WebBrowser1 
         Height          =   1095
         Left            =   120
         TabIndex        =   8
         Top             =   360
         Width           =   4455
         ExtentX         =   7858
         ExtentY         =   1931
         ViewMode        =   0
         Offline         =   0
         Silent          =   0
         RegisterAsBrowser=   0
         RegisterAsDropTarget=   1
         AutoArrange     =   0   'False
         NoClientEdge    =   0   'False
         AlignLeft       =   0   'False
         NoWebView       =   0   'False
         HideFileNames   =   0   'False
         SingleClick     =   0   'False
         SingleSelection =   0   'False
         NoFolders       =   0   'False
         Transparent     =   0   'False
         ViewID          =   "{0057D0E0-3573-11CF-AE69-08002B2E1262}"
         Location        =   "http:///"
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "user settings"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1575
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   2055
      Begin VB.CommandButton Command1 
         Caption         =   "connect"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   120
         TabIndex        =   6
         Top             =   1080
         Width           =   975
      End
      Begin VB.TextBox Text2 
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   120
         TabIndex        =   5
         Text            =   "username"
         Top             =   360
         Width           =   1815
      End
      Begin VB.TextBox Text3 
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   120
         TabIndex        =   4
         Text            =   "password"
         Top             =   720
         Width           =   1815
      End
      Begin VB.CommandButton Command2 
         Caption         =   "stop"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   1080
         TabIndex        =   3
         Top             =   1080
         Width           =   855
      End
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   20000
      Left            =   6600
      Top             =   2400
   End
   Begin InetCtlsObjects.Inet Inet1 
      Left            =   360
      Top             =   3120
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
   End
   Begin VB.TextBox txtHeader 
      Height          =   285
      Left            =   -3720
      TabIndex        =   0
      Top             =   2760
      Width           =   3975
   End
   Begin MSWinsockLib.Winsock Winsock1 
      Left            =   120
      Top             =   3120
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.Label status 
      BackStyle       =   0  'Transparent
      Caption         =   "status: not connect"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3840
      TabIndex        =   1
      Top             =   2400
      Width           =   3975
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
' paidforsurf example by amaf
' this was created for a example and so far
' this works 110%. you may want to correct
' anything that you want changed. this uses
' 2 inet controls and 1 webbrowser control.
' atleast give me credit for this!
' amaf@email.com
' www.envy.nu/amaf

Private Sub Check1_Click()
If Check1.Value = 1 Then MsgBox "right click on a banner inside the ad window, and click copy shortcut. after that goto the 'url' textbox and paste the url in the textbox.", 64, "emulate clicks"
End Sub
Private Sub Command1_Click()
Dim txt As String
Dim b() As Byte
' this will set the timer to 0 and will try to
' log-in to paidforsurf. first it will open the
' page and get the source code to it. after that
' it will open the source(txt) and emulate.
timerad = 0
' open page
b() = Inet1.OpenURL("www.paidforsurf.com/bar/nlogin.asp?username=" + Text2.Text + "&userspassword=" + Text3.Text, 1)
txt = ""
' get source
For t = 0 To UBound(b) - 1
txt = txt + Chr(b(t))
Next
' check for errors
If LCase$(txt) = "http://www.paidforsurf.com/bar/cbadusername.htm" Then status.Caption = "status: bad un": Exit Sub
If LCase$(txt) = "http://www.paidforsurf.com/bar/cbadpassword.htm" Then status.Caption = "status: bad pw": Exit Sub
txtHeader = txt
' open ad's
WebBrowser1.Navigate txt
status.Caption = "status: connected"
Timer1.Enabled = True
End Sub
Private Sub Command2_Click()
WebBrowser1.Navigate "about:blank"
Timer1.Enabled = False
timerad = 0
End Sub

Private Sub Form_Load()
End Sub

Private Sub Timer1_Timer()
WebBrowser1.Refresh
End Sub

Private Sub Timer2_Timer()
timerad = timerad + 1
If timerad = 30 And Check1.Value = 1 Then
Inet2.OpenURL Text1.Text
timerad = 0
End If
End Sub
