Attribute VB_Name = "mUtility"
'������������������������������������������������������������������������
'
'             �v���W�F�N�g���ʊ֐����[�e�B���e�B ���W���[��
'
'������������������������������������������������������������������������
Option Explicit
'�������� API�錾 ��������
Declare Sub MoveMemory Lib "KERNEL32" Alias "RtlMoveMemory" (pDest As Any, pSource As Any, ByVal dwLength As Long)
Declare Sub CopyMemory Lib "KERNEL32" Alias "RtlMoveMemory" (pDest As Any, pSrc As Any, ByVal ByteLen As Long)
Declare Function StrLen Lib "KERNEL32" Alias "lstrlenW" (ByVal Ptr As Long) As Long
Declare Function PtrToStr Lib "KERNEL32" Alias "lstrcpyW" (RetVal As Byte, ByVal Ptr As Long) As Long
Declare Function StrToPtr Lib "KERNEL32" Alias "lstrcpyW" (ByVal Ptr As Long, Source As Byte) As Long

'------------------------
' �A�h���X��蕶����擾
'------------------------
' lngPoint  : �A�h���X
'
' �߂�l    : ������
Public Function GetPtrToStrA(lngPoint As Long) As String
    Dim byteBuffer(500) As Byte
    Call PtrToStr(byteBuffer(0), lngPoint)
    GetPtrToStrA = Left$(byteBuffer, StrLen(lngPoint))
End Function

'------------------------
' ��������A�h���X�擾
'------------------------
' str    : ������
'
' �߂�l : �A�h���X
'Public Function GetStrToPtrA(str As String) As Long
'    Dim byteBuffer() As Byte
'    byteBuffer() = str & vbNullChar
'    byteBuffer() = StrConv(byteBuffer(), vbFromUnicode)
'    GetStrToPtrA = StrPtr(byteBuffer())
'End Function

