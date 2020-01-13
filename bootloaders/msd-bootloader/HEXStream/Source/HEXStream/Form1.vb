
#Region "Description & License"
'HEXStream
'Company:           Scene Double Ltd.
'Author:		    Ray Gordon
'Version:		    1.0
'Date:			    June 2008
'
'Acknowledgement:   Base conversion code derived from PIC1618QP (Quick Programmer AN851) application by Microchip Technology Inc.
' 
'License:		    Copyright (c)2008  Scene Double Ltd. / Ray Gordon (ray@scene-double.co.uk)
'
'					This software is provided 'as-is', without any express or implied warranty.
'					In no event will the authors be held liable for any damages arising from the use of this software.
'
' 					Permission is granted to anyone to use this software for any purpose, including commercial applications, 
'					and to alter it and redistribute it freely, subject to the following restrictions:
'
' 					1. The origin of this software must not be misrepresented; you must not claim that you wrote the original software. 
'					2. If you intend to use this software (or derivative) with a commercial product you must inform the authors prior to product release.
'   			    3. Altered source versions must be plainly marked as such, and must not be misrepresented as being the original software.
' 					4. This notice may not be removed or altered from any source distribution.
'
'
'Overview:		    Reformats PIC HEX files for use with programming via the USB MSD Bootloader
'
'                   Input File:     HEX file generated using MPLAB EXPORT function (Program Memory Only - No Configuration Bits, User ID, or EEPROM Memory)
'                                   Do not use regular hex file (generated on make) as this will not function correctly with the Bootloader
'
'                   Output File:    Bootloader compatible file with the extension '.pfw'
'
'                   Encryption:     Can optinally performs very basic encryption (obfuscation) as an example
'                                   (not secure - just annoying!)
'
'Notes:            1. Settings saved on exit
'                  2. There may be some superfluous code as this application is cut-down from a larger project
'
#End Region


Imports System.IO
'provides classes, including the FileSystemWatcher class, 
'which listens to the file system change notifications and raises events when a directory, 
'or file in a directory, changes. 

Public Class Form1
    Inherits System.Windows.Forms.Form
#Region " Windows Form Designer generated code "

    Public Sub New()
        MyBase.New()

        'This call is required by the Windows Form Designer.
        InitializeComponent()

        'Add any initialization after the InitializeComponent() call

    End Sub

    'Form overrides dispose to clean up the component list.
    Protected Overloads Overrides Sub Dispose(ByVal disposing As Boolean)
        If disposing Then
            If Not (components Is Nothing) Then
                components.Dispose()
            End If
        End If
        MyBase.Dispose(disposing)
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    Friend WithEvents OpenFileDialog1 As System.Windows.Forms.OpenFileDialog
    Friend WithEvents SaveFileDialog1 As System.Windows.Forms.SaveFileDialog
    Friend WithEvents txtOPENfile As System.Windows.Forms.TextBox
    Friend WithEvents txtSAVEfile As System.Windows.Forms.TextBox
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents MainMenu1 As System.Windows.Forms.MainMenu
    Friend WithEvents Label6 As System.Windows.Forms.Label
    Friend WithEvents Label9 As System.Windows.Forms.Label
    Friend WithEvents Browse As System.Windows.Forms.Button
    Friend WithEvents Convert As System.Windows.Forms.Button
    Friend WithEvents Label7 As System.Windows.Forms.Label
    Friend WithEvents chkEncrypt As System.Windows.Forms.CheckBox
    Friend WithEvents Encrypt_Key As System.Windows.Forms.TextBox
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents Encrypt_Key_Label As System.Windows.Forms.Label
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container
        Me.OpenFileDialog1 = New System.Windows.Forms.OpenFileDialog
        Me.SaveFileDialog1 = New System.Windows.Forms.SaveFileDialog
        Me.Label1 = New System.Windows.Forms.Label
        Me.Label2 = New System.Windows.Forms.Label
        Me.MainMenu1 = New System.Windows.Forms.MainMenu(Me.components)
        Me.Label6 = New System.Windows.Forms.Label
        Me.Label9 = New System.Windows.Forms.Label
        Me.Browse = New System.Windows.Forms.Button
        Me.Convert = New System.Windows.Forms.Button
        Me.Label7 = New System.Windows.Forms.Label
        Me.Encrypt_Key_Label = New System.Windows.Forms.Label
        Me.Encrypt_Key = New System.Windows.Forms.TextBox
        Me.chkEncrypt = New System.Windows.Forms.CheckBox
        Me.txtSAVEfile = New System.Windows.Forms.TextBox
        Me.txtOPENfile = New System.Windows.Forms.TextBox
        Me.Label3 = New System.Windows.Forms.Label
        Me.SuspendLayout()
        '
        'SaveFileDialog1
        '
        Me.SaveFileDialog1.FileName = "doc1"
        '
        'Label1
        '
        Me.Label1.Font = New System.Drawing.Font("Arial", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.ForeColor = System.Drawing.SystemColors.HighlightText
        Me.Label1.Location = New System.Drawing.Point(-1, 64)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(88, 16)
        Me.Label1.TabIndex = 7
        Me.Label1.Text = "Output as >>>"
        Me.Label1.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'Label2
        '
        Me.Label2.Font = New System.Drawing.Font("Arial", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label2.ForeColor = System.Drawing.SystemColors.HighlightText
        Me.Label2.Location = New System.Drawing.Point(296, 63)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(35, 24)
        Me.Label2.TabIndex = 8
        Me.Label2.Text = ".pfw"
        Me.Label2.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'Label6
        '
        Me.Label6.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.Label6.Font = New System.Drawing.Font("Arial", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label6.ForeColor = System.Drawing.SystemColors.HighlightText
        Me.Label6.Location = New System.Drawing.Point(5, 41)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(80, 16)
        Me.Label6.TabIndex = 13
        Me.Label6.Text = "Selected File "
        Me.Label6.TextAlign = System.Drawing.ContentAlignment.MiddleLeft
        '
        'Label9
        '
        Me.Label9.Font = New System.Drawing.Font("Arial", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label9.ForeColor = System.Drawing.SystemColors.HighlightText
        Me.Label9.Location = New System.Drawing.Point(94, 11)
        Me.Label9.Name = "Label9"
        Me.Label9.Size = New System.Drawing.Size(400, 24)
        Me.Label9.TabIndex = 16
        Me.Label9.Text = "Files will be saved to the same directory as the original"
        '
        'Browse
        '
        Me.Browse.BackColor = System.Drawing.SystemColors.Desktop
        Me.Browse.ForeColor = System.Drawing.SystemColors.HighlightText
        Me.Browse.Location = New System.Drawing.Point(505, 38)
        Me.Browse.Name = "Browse"
        Me.Browse.Size = New System.Drawing.Size(56, 24)
        Me.Browse.TabIndex = 21
        Me.Browse.Text = "Browse.."
        Me.Browse.UseVisualStyleBackColor = False
        '
        'Convert
        '
        Me.Convert.BackColor = System.Drawing.SystemColors.Desktop
        Me.Convert.ForeColor = System.Drawing.SystemColors.HighlightText
        Me.Convert.Location = New System.Drawing.Point(505, 129)
        Me.Convert.Name = "Convert"
        Me.Convert.Size = New System.Drawing.Size(56, 24)
        Me.Convert.TabIndex = 22
        Me.Convert.Text = "Convert"
        Me.Convert.UseVisualStyleBackColor = False
        '
        'Label7
        '
        Me.Label7.ForeColor = System.Drawing.SystemColors.ControlLightLight
        Me.Label7.Location = New System.Drawing.Point(392, 136)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(72, 16)
        Me.Label7.TabIndex = 24
        Me.Label7.Text = "Encrypt"
        '
        'Encrypt_Key_Label
        '
        Me.Encrypt_Key_Label.Font = New System.Drawing.Font("Arial", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Encrypt_Key_Label.ForeColor = System.Drawing.SystemColors.ControlLightLight
        Me.Encrypt_Key_Label.Location = New System.Drawing.Point(292, 115)
        Me.Encrypt_Key_Label.Name = "Encrypt_Key_Label"
        Me.Encrypt_Key_Label.Size = New System.Drawing.Size(96, 16)
        Me.Encrypt_Key_Label.TabIndex = 26
        Me.Encrypt_Key_Label.Text = "Encrypt Key"
        Me.Encrypt_Key_Label.TextAlign = System.Drawing.ContentAlignment.TopCenter
        '
        'Encrypt_Key
        '
        Me.Encrypt_Key.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper
        Me.Encrypt_Key.DataBindings.Add(New System.Windows.Forms.Binding("Text", Global.HEXStream.My.MySettings.Default, "Saved_Key", True, System.Windows.Forms.DataSourceUpdateMode.OnPropertyChanged))
        Me.Encrypt_Key.ImeMode = System.Windows.Forms.ImeMode.NoControl
        Me.Encrypt_Key.Location = New System.Drawing.Point(328, 136)
        Me.Encrypt_Key.MaxLength = 2
        Me.Encrypt_Key.Name = "Encrypt_Key"
        Me.Encrypt_Key.Size = New System.Drawing.Size(21, 20)
        Me.Encrypt_Key.TabIndex = 25
        Me.Encrypt_Key.Text = Global.HEXStream.My.MySettings.Default.Saved_Key
        '
        'chkEncrypt
        '
        Me.chkEncrypt.Checked = True
        Me.chkEncrypt.CheckState = Global.HEXStream.My.MySettings.Default.Encrypt_State
        Me.chkEncrypt.DataBindings.Add(New System.Windows.Forms.Binding("CheckState", Global.HEXStream.My.MySettings.Default, "Encrypt_State", True, System.Windows.Forms.DataSourceUpdateMode.OnPropertyChanged))
        Me.chkEncrypt.Location = New System.Drawing.Point(376, 136)
        Me.chkEncrypt.Name = "chkEncrypt"
        Me.chkEncrypt.Size = New System.Drawing.Size(16, 16)
        Me.chkEncrypt.TabIndex = 23
        Me.chkEncrypt.Text = "CheckBox1"
        '
        'txtSAVEfile
        '
        Me.txtSAVEfile.DataBindings.Add(New System.Windows.Forms.Binding("Text", Global.HEXStream.My.MySettings.Default, "Previous_Output_File", True, System.Windows.Forms.DataSourceUpdateMode.OnPropertyChanged))
        Me.txtSAVEfile.Location = New System.Drawing.Point(95, 63)
        Me.txtSAVEfile.Name = "txtSAVEfile"
        Me.txtSAVEfile.Size = New System.Drawing.Size(200, 20)
        Me.txtSAVEfile.TabIndex = 6
        Me.txtSAVEfile.Text = Global.HEXStream.My.MySettings.Default.Previous_Output_File
        '
        'txtOPENfile
        '
        Me.txtOPENfile.DataBindings.Add(New System.Windows.Forms.Binding("Text", Global.HEXStream.My.MySettings.Default, "Previous_File", True, System.Windows.Forms.DataSourceUpdateMode.OnPropertyChanged))
        Me.txtOPENfile.Location = New System.Drawing.Point(95, 39)
        Me.txtOPENfile.Name = "txtOPENfile"
        Me.txtOPENfile.Size = New System.Drawing.Size(400, 20)
        Me.txtOPENfile.TabIndex = 5
        Me.txtOPENfile.Text = Global.HEXStream.My.MySettings.Default.Previous_File
        '
        'Label3
        '
        Me.Label3.Font = New System.Drawing.Font("Arial", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label3.ForeColor = System.Drawing.SystemColors.HighlightText
        Me.Label3.Location = New System.Drawing.Point(237, 137)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(85, 20)
        Me.Label3.TabIndex = 27
        Me.Label3.Text = "One HEX Byte"
        '
        'Form1
        '
        Me.AutoScaleBaseSize = New System.Drawing.Size(5, 13)
        Me.BackColor = System.Drawing.SystemColors.ControlDarkDark
        Me.ClientSize = New System.Drawing.Size(566, 163)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.Encrypt_Key_Label)
        Me.Controls.Add(Me.Encrypt_Key)
        Me.Controls.Add(Me.Label7)
        Me.Controls.Add(Me.chkEncrypt)
        Me.Controls.Add(Me.Convert)
        Me.Controls.Add(Me.Browse)
        Me.Controls.Add(Me.Label9)
        Me.Controls.Add(Me.Label6)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.txtSAVEfile)
        Me.Controls.Add(Me.txtOPENfile)
        Me.ForeColor = System.Drawing.SystemColors.InfoText
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D
        Me.MaximizeBox = False
        Me.Menu = Me.MainMenu1
        Me.Name = "Form1"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "HEXStream - Firmware Formatter"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

#End Region

#Region "Variables"

    Public OPENmystream As Stream   'Holds file opened from 'File-Open' Dialog Box
    Public OPENfilename As String   'Holds FULL filename for selected file
    Public SAVEfilename As String   'Holds FULL path for new 'Regular Program Memory' file
    Public SAVEfilenameEE As String 'Holds FULL path for new 'EEData Memory' file
    Public myfile As String         'Holds filename from 'File-Open' Dialog Box WITHOUT EXTENSION
    Public mydir As String          'Holds directory for filename from 'File-Open' Dialog Box (i.e. C:\)
    Public myext As String          'Holds file extension for filename from 'File-Open' Dialog Box (i.e. .hex)
    Public message As String        'Holds message box string
    Public Key As Byte              'Holds sector encrption start key
    Public Byte5Buf As Byte         'Buffer for byte encryption
    Public Byte2Buf As Byte         'Buffer for byte encryption
    Public ByteBuf As Byte          'Buffer for byte encryption
    Public PICJ As Boolean = False  'Set if the file appears to be for a J series device to ensure the final 16-bytes are handled correctly
    Public Encrypt As Boolean = False 'If checked, Encrypt = True
    Public EncryptVal As Byte       'Encryption variable

#End Region

#Region "Form Functions"

    'Restore previously selected input and output files
    Private Sub Restore_Previous_Settings(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

        'Restore previously opened input file
        If Me.txtOPENfile.Text <> "" Then
            OPENfilename = Me.txtOPENfile.Text

            myfile = System.IO.Path.GetFileNameWithoutExtension(OPENfilename)
            mydir = System.IO.Path.GetDirectoryName(OPENfilename)
            myext = System.IO.Path.GetExtension(OPENfilename)

            'Restore previously opened output file
            Dim fileRPM As String = Me.txtSAVEfile.Text
            Me.txtSAVEfile.Focus()

        End If

    End Sub


    Public Function ImportHEX16file() As Integer  'Import and covert data file

        Dim InFile As StreamReader     'Creates new 'StreamReader' to read selected file from dialog box           
        Dim FileLine                   'Holds line data from the opened file 
        Dim InData(256) As Byte        'Array to hold a number of bytes 
        Dim LineData As String         'Holds 16 data bits from each file line 
        Dim LineDataCount As Byte      'Holds line data count 
        Dim LineAddr As Long           'Holds line address 
        Dim LineAddr_Low As Byte       'Holds 16-bit line address (low byte)  
        Dim LineAddr_High As Byte      'Holds 16-bit line address (high byte)
        Dim LineCode As Byte           'Hex file record type 
        Dim I As Integer               'Loop counter 
        Dim lineaddrhigh As Long = 0   'Holds high line address word  
        Dim InFile_stream2string As StreamReader    'Convert stream to string data 
        Dim stream2string As String    'Hold converted stream as string for testing
        Dim validate_stream As String  'Hold string to test
        Dim pfilename As String        'Output file name
        Dim sector_line_count As Integer = 28 '28 x 16-byte lines per sector
        Dim LineSum As Byte = 0         'Encryption variable


        'Output file 7-byte header 
        Dim Sector_Header() As Byte = {&HC1, &HD2, &HD3, 0, 0, &HA1, 0}

        'Note on input file format:
        'Must contain COMPLETE 16-byte lines (generate from MPLAB using EXPORT (Program memory only. No config etc.)
        'Maximum program memory size is 64K
        'Only exception is for J devices where the last two lines are split into two lines of 8-bytes then second of which contains configuration values
        'The PICJ flag is set to handle this case

        'Note on output file format:
        'File format is binary
        '8-byte sector header followed by 'lines' of 18-bytes (2 address + 16 data)
        'A 512-byte disk sector will therefore contain 28 'lines' (448 program bytes)
        '448 bytes is a 32/64-byte multiple which makes the PIC code simpler
        'The header is written at the start of each sector (i.e. every 512 bytes)
        'The header consists of the fixed 7-byte Sector Header plus a encryption status byte (0 if unencrypted, 1 if encrypted)


        InFile = File.OpenText(OPENfilename)  ' Open the file to read. (Filename from OpenFileDialog)
        InFile_stream2string = File.OpenText(OPENfilename) 'Create copy of stream to convert to string for testing

        Dim fileRPM As String = Me.txtSAVEfile.Text 'Set string from form to variable

        If mydir.Length = 3 Then                    'Test if file opened is located in root directory or sub-folder

            'File IS NOT located within a sub-folder

            SAVEfilename = mydir + fileRPM + ".pfw"

        Else
            'File IS located within a sub-folder

            SAVEfilename = mydir + "\" + fileRPM + ".pfw"

        End If

        pfilename = SAVEfilename  'Set path for new 'Regular Program Memory file
        Dim pfilestream As Stream = File.Create(pfilename) 'Use StreamWriter to create new file with above path


        'Create message to show the newly created files

        message = "Conversion Completed" & vbCrLf
        message = message + "Converted File " & OPENfilename & vbCrLf
        message = message + "Created File " & SAVEfilename & vbCrLf

        MessageBox.Show(message, "HEXStream File Conversion", MessageBoxButtons.OK, MessageBoxIcon.Information)

        'Run function to test file data
        stream2string = InFile_stream2string.ReadToEnd 'strip stream into string variable
        validate_stream = ValidateHEXFile(stream2string) 'run function 'ValidateHEXFile' to test data
        If validate_stream < 0 Then
            Exit Function
        End If

        'if the hex file is OK, then continue....

        Do While InFile.Peek() > -1     'While the opened file has data
            FileLine = InFile.ReadLine  'Read in each line

            'Output the 8-byte header once every sector (28 lines)
            If (sector_line_count = 28 And PICJ = False) Then
                'Write the sector file header 
                pfilestream.Write(Sector_Header, 0, 7)

                If Encrypt = True Then          'Set the next header byte to indicate if the sector is encrypted
                    pfilestream.WriteByte(1)
                Else
                    pfilestream.WriteByte(0)
                End If

                'Reset the line count
                sector_line_count = 1

            Else
                sector_line_count = sector_line_count + 1   'next line

            End If


            For I = 0 To 255            'Preset data array to 0xFF 
                InData(I) = 255
            Next I

            LineCode = 0

            If Mid(FileLine, 1, 1) = ":" Then

                'Parse the line
                LineDataCount = Val("&H" & Mid(FileLine, 2, 2))
                'Note: The input hex file will always have complete lines of 16 data bytes
                LineAddr = Val("&H" & Mid(FileLine, 4, 4)) And 65535
                LineAddr_Low = (ByteLo(WordLo(LineAddr)))           'Grab the low byte of the address
                LineAddr_High = (ByteHi(WordLo(LineAddr)))          'Grab the high byte of the address
                LineCode = Val("&H" & Mid(FileLine, 8, 2))          'Note the hex record type
                LineData = Mid(FileLine, 10, (LineDataCount * 2))   'Grab the program data


                Select Case LineCode    'Act according to hex record type

                    Case 0              'Data record

                        For I = 0 To LineDataCount - 1
                            InData(I) = Val("&h" & Mid(LineData, (I * 2) + 1, 2))
                        Next I

                        'Only convert program lines with a memory address < 64K
                        If lineaddrhigh = 0 And PICJ = False Then

                            LineSum = 0

                            'Output the high & low address bytes (in little-endian format)
                            pfilestream.WriteByte(LineAddr_Low)
                            pfilestream.WriteByte(LineAddr_High)


                            For I = 0 To LineDataCount - 1          'For each data byte on the line (16)

                                If Encrypt = True Then              'Obfuscate if required

                                    LineSum = LineSum Xor InData(I)
                                    InData(I) = InData(I) Xor (EncryptVal << 1) Xor (I + 117) Xor LineAddr_High Xor LineAddr_Low

                                End If

                                pfilestream.WriteByte(InData(I))    'Output the data byte

                            Next I

                            EncryptVal = EncryptVal Xor LineSum     'Update obfuscator

                            'If it's a short line (8-bytes) at this location then the code is for a J series PIC.
                            'The next 8 bytes will be the config bits which we don't want to place into the file, so a flag 
                            ' is set
                            If LineDataCount = 8 And LineAddr = &H7FF0 Then
                                PICJ = True
                            End If

                        End If

                    Case 1          'End of file record
                        Exit Do

                    Case 4          'Extended linear address record
                        lineaddrhigh = (Val("&h1" & Mid(FileLine, 10, 4)) And 65535)
                        'Note: this is set but anything >64k (e.g. config bits) is currently ignored
                        sector_line_count = sector_line_count - 1      'This line is not output

                End Select

            End If
        Loop

        'Finished processing so close all file streams
        InFile.Close()
        pfilestream.Flush()
        pfilestream.Close()

    End Function


    'Exit Application
    Private Sub MenuItem3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Me.Close()
    End Sub


    'Locate input hex file
    Private Sub Browse_Button_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Browse.Click
        Dim openFileDialog1 As New OpenFileDialog()

        openFileDialog1.Filter = "hex files (*.hex)|*.hex"
        openFileDialog1.FilterIndex = 2
        openFileDialog1.RestoreDirectory = True

        If openFileDialog1.ShowDialog() = DialogResult.OK Then
            OPENmystream = openFileDialog1.OpenFile
            OPENfilename = openFileDialog1.FileName
            Me.txtOPENfile.Text = openFileDialog1.FileName

            myfile = System.IO.Path.GetFileNameWithoutExtension(openFileDialog1.FileName)
            mydir = System.IO.Path.GetDirectoryName(openFileDialog1.FileName)
            myext = System.IO.Path.GetExtension(openFileDialog1.FileName)

            Me.txtSAVEfile.Text = myfile

            Dim fileRPM As String = Me.txtSAVEfile.Text

            Me.txtSAVEfile.Focus()

            If Not (OPENmystream Is Nothing) Then
                OPENmystream.Close()
            End If
        End If
    End Sub


    'Run function 'ImportHEX16file()' to convert and output formatted file for Bootloader
    Private Sub Convert_Button_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Convert.Click

        Encrypt = False
        PICJ = False
        If Me.chkEncrypt.Checked = True Then
            Encrypt = True
            EncryptVal = Key
        End If
        Call ImportHEX16file()

    End Sub


    'Handle encryption start key byte
    'Must enter two digits in hex
    Private Sub Key_Entered(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Encrypt_Key.Leave

        Dim HexChars As String = "0123456789ABCDEF"

        'Don't accept if not a valid two digit hex number
        If (Len(Me.Encrypt_Key.Text) <> 2 Or InStr(1, HexChars, Mid(Me.Encrypt_Key.Text, 1, 1)) < 1 Or InStr(1, HexChars, Mid(Me.Encrypt_Key.Text, 2, 1)) < 1) Then
            Me.Encrypt_Key.Text = ""
            Me.Encrypt_Key.Focus()

        Else
            Key = Val("&H" & Me.Encrypt_Key.Text)

        End If


    End Sub


#End Region

#Region "Convert Functions"

    'Taken from Open Source Twiddler object

    Public Function ByteHi(ByVal WordIn As Integer) As Byte
        ' Lop off low byte with divide. If less than
        ' zero, then account for sign bit (adding &h10000
        ' implicitly converts to Long before divide).
        If WordIn < 0 Then
            ByteHi = (WordIn + &H10000) \ &H100
        Else
            ByteHi = WordIn \ &H100
        End If
    End Function

    Public Function ByteLo(ByVal WordIn As Integer) As Byte
        ' Mask off high byte and return low.
        ByteLo = WordIn And &HFF
    End Function

    Public Function WordHi(ByVal LongIn As Long) As Integer
        ' Mask off low word then do integer divide to
        ' shift right by 16.
        WordHi = (LongIn And &HFFFF0000) \ &H10000
    End Function

    Public Function WordLo(ByVal LongIn As Long) As Integer
        ' Low word retrieved by masking off high word.
        ' If low word is too large, twiddle sign bit.
        If (LongIn And &HFFFF&) > &H7FFF Then
            WordLo = (LongIn And &HFFFF&) - &H10000
        Else
            WordLo = LongIn And &HFFFF&
        End If
    End Function





#End Region

#Region "HEX File Validation"

    'Function to validate opened file data
    Function ValidateHEXFile(ByVal InHEXFile As String) As Integer
        Dim Checksum As Integer
        Dim InFileLine As String
        Dim DataCount As Integer
        Dim AddrCode As Integer
        Dim Address As Long
        Dim DataByte As Integer
        Dim infile As StreamReader
        Dim i As Integer

        On Error GoTo ErrorHandler

        infile = File.OpenText(OPENfilename)

        'Check for an empty file
        If infile.Peek = -1 Then
            ValidateHEXFile = -1
            infile.Close()
            Exit Function
        End If

        'Validate the file before using it
        Do While infile.Peek <> -1
            InFileLine = infile.ReadLine

            AddrCode = 0
            If Mid(InFileLine, 1, 1) = "" Then
                DataByte = Asc(" ")
            Else
                DataByte = Asc(Mid(InFileLine, 1, 1))
            End If

            'check the line
            Select Case DataByte
                Case Asc(":")
                    AddrCode = Val("&H" & Mid(InFileLine, 8, 2))
                    DataCount = Val("&H" & Mid(InFileLine, 2, 2))
                    Address = Val("&H1" & Mid(InFileLine, 4, 4)) And 65535

                    Checksum = 0
                    For i = 0 To DataCount + 4
                        Checksum = Checksum + Val("&H" & Mid(InFileLine, (2 * i) + 2, 2))
                    Next i

                    If (Checksum And 255) <> 0 Then
                        ValidateHEXFile = -3
                        infile.Close()
                        Exit Function
                    End If
                Case Asc(" "), Asc(vbTab), Asc(vbCr), Asc(vbLf)
                Case Else
                    ValidateHEXFile = -4
                    infile.Close()
                    Exit Function
            End Select

            If AddrCode = 1 Then
                Exit Do
            End If

            If infile.Peek = -1 Then
                ValidateHEXFile = -5
                infile.Close()
                Exit Function
            End If
        Loop

        If ValidateHEXFile <> -2 Then
            ValidateHEXFile = 1
        End If

        infile.Close()
        Exit Function

ErrorHandler:
        Err.Clear()
        ValidateHEXFile = -6
        infile.Close()
    End Function

#End Region


End Class




