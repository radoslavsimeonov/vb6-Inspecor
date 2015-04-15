Attribute VB_Name = "mSHBF"
Option Explicit

Private Type BROWSEINFO
        hWndOwner As Long           '�e�E�B���h�E�̃n���h��
        pidlRoot As Long            '�f�B���N�g�����[�g�i�A�C�e��ID�j�i[�萔�P]�Q�Ɓj
        pszDisplayName As String    '�\����
        lpszTitle As String         '�_�C�A���O�̃^�C�g��
        ulFlags As Long             '�t���O�i[�萔�Q]�Q�Ɓj
        lpfn As Long                '�R�[���o�b�N�֐��̃|�C���^
        lParam As String            '�R�[���o�b�N�֐��֓n���C�ӂ̃f�[�^
        iImage As Long              '�V�X�e���C���[�W���X�g
End Type

Private Const MAX_PATH As Long = 260 '�p�X�ő�T�C�Y
Public Enum SHBFClassID
    CSIDL_DESKTOP = &H0             '�f�X�N�g�b�v
    CSIDL_PROGRAMS = &H2            '�v���O����
    CSIDL_CONTROLS = &H3            '�R���g���[���p�l��
    CSIDL_PRINTERS = &H4            '�v�����^�[
    CSIDL_PERSONAL = &H5            '�p�[�\�i���iC:\My Documents...�j
    CSIDL_FAVORITES = &H6           '���C�ɓ���
    CSIDL_STARTUP = &H7             '�X�^�[�g�A�b�v
    CSIDL_RECENT = &H8              '�ŋߎg�����t�@�C��
    CSIDL_SENDTO = &H9              '����iC:\Windows\SendTo...�j
    CSIDL_BITBUCKET = &HA           '���ݔ�
    CSIDL_STARTMENU = &HB           '�X�^�[�g���j���[
    CSIDL_DESKTOPDIRECTORY = &H10   '�f�X�N�g�b�v�t�H���_
    CSIDL_DRIVES = &H11             '�h���C�u
    CSIDL_NETWORK = &H12            '�l�b�g���[�N
    CSIDL_NETHOOD = &H13            '�iC:\Windows\NetHood�j
    CSIDL_FONTS = &H14              '�t�H���g�iC:\Windows\Fonts�j
    CSIDL_TEMPLATES = &H15          '�e���v���[�g�iC:\Windows\ShellNew�j
    CSIDL_COMMON_STARTUP = &H18
End Enum

Public Enum SHBFFlags
    BIF_RETURNONLYFSDIRS = &H1          '�t�H���_�̂ݑI���\
    BIF_DONTGOBELOWDOMAIN = &H2         '�R���s���[�^�[��\��
    BIF_STATUSTEXT = &H4                '�X�e�[�^�X�\��
    BIF_RETURNFSANCESTORS = &H8         '�t�@�C���V�X�e���̂ݑI���\
    BIF_BROWSEFORCOMPUTER = &H1000      '�R���s���[�^�[�̂ݑI���\
    BIF_BROWSEFORPRINTER = &H2000       '�v�����^�[�̂ݑI���\
    BIF_BROWSEINCLUDEFILES = &H4000     '�S�đI���\
End Enum

Private Declare Function SHBrowseForFolder Lib "shell32" (lpbi As BROWSEINFO) As Long
Private Declare Function SHGetPathFromIDList Lib "shell32" (ByVal pidl As Long, ByVal pszPath As String) As Long
Private Declare Function SHSimpleIDListFromPath Lib "shell32.dll" Alias "#162" (ByVal strPath As String) As Long

Private m_Title As String
Private m_hWnd As Long
Private m_RootFolder As Long
Private m_UserRootFolder As String
Private m_Flags As Long

Public Property Get Title() As String
    Title = m_Title
End Property

Public Property Let Title(ByVal vNewValue As String)
    m_Title = vNewValue
End Property

Public Property Get hWnd() As Long
    hWnd = m_hWnd
End Property

Public Property Let hWnd(ByVal vNewValue As Long)
    m_hWnd = vNewValue
End Property

Public Property Get RootFolder() As SHBFClassID
    RootFolder = m_RootFolder
End Property

Public Property Let RootFolder(ByVal vNewValue As SHBFClassID)
    m_RootFolder = vNewValue
End Property

Public Property Get UserRootFolder() As String
    UserRootFolder = m_UserRootFolder
End Property

Public Property Let UserRootFolder(ByVal vNewValue As String)
    m_UserRootFolder = vNewValue
End Property

Public Property Get Flags() As SHBFFlags
    Flags = m_Flags
End Property

Public Property Let Flags(ByVal vNewValue As SHBFFlags)
    m_Flags = vNewValue
End Property

Public Function Show() As String
    Dim typeBRINF As BROWSEINFO
    Dim strPath As String
    Dim lngpidl As Long
    
    strPath = String$(MAX_PATH, vbNullChar)
    If m_Flags = 0 Then m_Flags = BIF_RETURNONLYFSDIRS
    
    With typeBRINF
        .hWndOwner = m_hWnd
        If m_RootFolder = -1 Then
            If UserRootFolder <> "" Then
                .pidlRoot = SHSimpleIDListFromPath(UserRootFolder)
            End If
        Else
            .pidlRoot = m_RootFolder
        End If
        .pszDisplayName = strPath
        .lpszTitle = m_Title & vbNullChar
        .ulFlags = m_Flags
    End With
    
    lngpidl = SHBrowseForFolder(typeBRINF)
        
    If typeBRINF.ulFlags And BIF_BROWSEFORCOMPUTER Then
        strPath = Left$(typeBRINF.pszDisplayName, InStr(typeBRINF.pszDisplayName, vbNullChar) - 1)
    Else
        If lngpidl = 0 Then
            strPath = vbNullString
        Else
            If SHGetPathFromIDList(lngpidl, strPath) = 0 Then
                strPath = vbNullString
            Else
                strPath = Left$(strPath, InStr(strPath, vbNullChar) - 1&)
            End If
        End If
    End If
    Show = strPath
End Function
