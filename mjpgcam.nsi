; Script generated with the Venis Install Wizard

; Define your application name
!define APPNAME "mjpgcam"
!define APPVERSION 0.2
!define APPVERSIONPATH 0.0.2.0
!define APPFileVersion 0.2.02.11
!define APPNAMEANDVERSION "mjpgcam ${APPVERSION}"
!define APPDOMAIN "coolshou.idv.tw"
!define APPURL "https://github.com/coolshou/mjpgcam"
!define WIN64 

VIProductVersion ${APPFileVersion}
!define PRODUCT_REG_KEY "Microsoft\Windows\CurrentVersion\Uninstall\${APPNAME}"
; Main Install settings
Name "${APPNAMEANDVERSION}"
InstallDir "$PROGRAMFILES\mjpgcam"
InstallDirRegKey HKLM "Software\${APPNAME}" ""
OutFile "mjpgcam-setup-${APPVERSION}.exe"

; Use compression
SetCompressor LZMA

; Modern interface settings
!include "MUI.nsh"
!include "x64.nsh"
!include "FileFunc.nsh"

!define MUI_ABORTWARNING
!define MUI_ICON "images\${APPNAME}.ico"
!define MUI_FINISHPAGE_RUN "$INSTDIR\mjpgcam.exe"

!insertmacro MUI_PAGE_WELCOME
!insertmacro MUI_PAGE_LICENSE "LICENSE"
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_PAGE_FINISH

!insertmacro MUI_UNPAGE_CONFIRM
!insertmacro MUI_UNPAGE_INSTFILES

; Set languages (first is default language)
!insertmacro MUI_LANGUAGE "English"
!insertmacro MUI_RESERVEFILE_LANGDLL

VIAddVersionKey /LANG=${LANG_ENGLISH} "ProductName" "${APPNAME}"
VIAddVersionKey /LANG=${LANG_ENGLISH} "ProductVersion" "${APPVERSION}"
VIAddVersionKey /LANG=${LANG_ENGLISH} "Comments" "mjpeg webcam viewer"
VIAddVersionKey /LANG=${LANG_ENGLISH} "CompanyName" "${APPDOMAIN}"
VIAddVersionKey /LANG=${LANG_ENGLISH} "LegalTrademarks" "${APPNAME} is a trademark of ${APPDOMAIN}"
VIAddVersionKey /LANG=${LANG_ENGLISH} "LegalCopyright" "(C)2026 ${APPDOMAIN}"
VIAddVersionKey /LANG=${LANG_ENGLISH} "FileDescription" "${APPNAME}"
VIAddVersionKey /LANG=${LANG_ENGLISH} "FileVersion" "${APPFileVersion}"


Section "mjpgcam" Section1

	; Set Section properties
	SetOverwrite on

	; Set Section Files and Shortcuts
	SetOutPath "$INSTDIR\"
	File "images\mjpgcam.ico"
	File "release\mjpgcam-${APPVERSIONPATH}\Qt6Core.dll"
	File "release\mjpgcam-${APPVERSIONPATH}\Qt6Gui.dll"
	File "release\mjpgcam-${APPVERSIONPATH}\Qt6Network.dll"
	File "release\mjpgcam-${APPVERSIONPATH}\Qt6Svg.dll"
	File "release\mjpgcam-${APPVERSIONPATH}\Qt6Widgets.dll"
	File "release\mjpgcam-${APPVERSIONPATH}\d3dcompiler_47.dll"
	File "release\mjpgcam-${APPVERSIONPATH}\dxcompiler.dll"
	File "release\mjpgcam-${APPVERSIONPATH}\dxil.dll"
	File "release\mjpgcam-${APPVERSIONPATH}\icuuc.dll"
	File "release\mjpgcam-${APPVERSIONPATH}\mjpgcam.exe"
	File "release\mjpgcam-${APPVERSIONPATH}\opengl32sw.dll"
	File "release\mjpgcam-${APPVERSIONPATH}\vc_redist.x64.exe"
	SetOutPath "$INSTDIR\generic"
	File "release\mjpgcam-${APPVERSIONPATH}\generic\qtuiotouchplugin.dll"
	SetOutPath "$INSTDIR\iconengines"
	File "release\mjpgcam-${APPVERSIONPATH}\iconengines\qsvgicon.dll"
	SetOutPath "$INSTDIR\imageformats"
	File "release\mjpgcam-${APPVERSIONPATH}\imageformats\qgif.dll"
	File "release\mjpgcam-${APPVERSIONPATH}\imageformats\qicns.dll"
	File "release\mjpgcam-${APPVERSIONPATH}\imageformats\qico.dll"
	File "release\mjpgcam-${APPVERSIONPATH}\imageformats\qjpeg.dll"
	File "release\mjpgcam-${APPVERSIONPATH}\imageformats\qsvg.dll"
	File "release\mjpgcam-${APPVERSIONPATH}\imageformats\qtga.dll"
	File "release\mjpgcam-${APPVERSIONPATH}\imageformats\qtiff.dll"
	File "release\mjpgcam-${APPVERSIONPATH}\imageformats\qwbmp.dll"
	File "release\mjpgcam-${APPVERSIONPATH}\imageformats\qwebp.dll"
	SetOutPath "$INSTDIR\networkinformation"
	File "release\mjpgcam-${APPVERSIONPATH}\networkinformation\qnetworklistmanager.dll"
	SetOutPath "$INSTDIR\platforms"
	File "release\mjpgcam-${APPVERSIONPATH}\platforms\qwindows.dll"
	SetOutPath "$INSTDIR\styles"
	File "release\mjpgcam-${APPVERSIONPATH}\styles\qmodernwindowsstyle.dll"
	SetOutPath "$INSTDIR\tls"
	File "release\mjpgcam-${APPVERSIONPATH}\tls\qcertonlybackend.dll"
	File "release\mjpgcam-${APPVERSIONPATH}\tls\qschannelbackend.dll"
	SetOutPath "$INSTDIR\translations"
	File "release\mjpgcam-${APPVERSIONPATH}\translations\qt_ar.qm"
	File "release\mjpgcam-${APPVERSIONPATH}\translations\qt_bg.qm"
	File "release\mjpgcam-${APPVERSIONPATH}\translations\qt_ca.qm"
	File "release\mjpgcam-${APPVERSIONPATH}\translations\qt_cs.qm"
	File "release\mjpgcam-${APPVERSIONPATH}\translations\qt_da.qm"
	File "release\mjpgcam-${APPVERSIONPATH}\translations\qt_de.qm"
	File "release\mjpgcam-${APPVERSIONPATH}\translations\qt_en.qm"
	File "release\mjpgcam-${APPVERSIONPATH}\translations\qt_es.qm"
	File "release\mjpgcam-${APPVERSIONPATH}\translations\qt_fa.qm"
	File "release\mjpgcam-${APPVERSIONPATH}\translations\qt_fi.qm"
	File "release\mjpgcam-${APPVERSIONPATH}\translations\qt_fr.qm"
	File "release\mjpgcam-${APPVERSIONPATH}\translations\qt_gd.qm"
	File "release\mjpgcam-${APPVERSIONPATH}\translations\qt_he.qm"
	File "release\mjpgcam-${APPVERSIONPATH}\translations\qt_hr.qm"
	File "release\mjpgcam-${APPVERSIONPATH}\translations\qt_hu.qm"
	File "release\mjpgcam-${APPVERSIONPATH}\translations\qt_it.qm"
	File "release\mjpgcam-${APPVERSIONPATH}\translations\qt_ja.qm"
	File "release\mjpgcam-${APPVERSIONPATH}\translations\qt_ka.qm"
	File "release\mjpgcam-${APPVERSIONPATH}\translations\qt_ko.qm"
	File "release\mjpgcam-${APPVERSIONPATH}\translations\qt_lg.qm"
	File "release\mjpgcam-${APPVERSIONPATH}\translations\qt_lv.qm"
	File "release\mjpgcam-${APPVERSIONPATH}\translations\qt_nl.qm"
	File "release\mjpgcam-${APPVERSIONPATH}\translations\qt_nn.qm"
	File "release\mjpgcam-${APPVERSIONPATH}\translations\qt_pl.qm"
	File "release\mjpgcam-${APPVERSIONPATH}\translations\qt_pt_BR.qm"
	File "release\mjpgcam-${APPVERSIONPATH}\translations\qt_ru.qm"
	File "release\mjpgcam-${APPVERSIONPATH}\translations\qt_sk.qm"
	File "release\mjpgcam-${APPVERSIONPATH}\translations\qt_sv.qm"
	File "release\mjpgcam-${APPVERSIONPATH}\translations\qt_tr.qm"
	File "release\mjpgcam-${APPVERSIONPATH}\translations\qt_uk.qm"
	File "release\mjpgcam-${APPVERSIONPATH}\translations\qt_zh_CN.qm"
	File "release\mjpgcam-${APPVERSIONPATH}\translations\qt_zh_TW.qm"
	CreateShortCut "$DESKTOP\mjpgcam.lnk" "$INSTDIR\mjpgcam.exe"
	CreateDirectory "$SMPROGRAMS\mjpgcam"
	CreateShortCut "$SMPROGRAMS\mjpgcam\mjpgcam.lnk" "$INSTDIR\mjpgcam.exe"
	CreateShortCut "$SMPROGRAMS\mjpgcam\Uninstall.lnk" "$INSTDIR\uninstall.exe"

SectionEnd

Section -FinishSection

	WriteRegStr HKLM "Software\${APPNAME}" "" "$INSTDIR"
	WriteRegStr HKLM "Software\${PRODUCT_REG_KEY}" "DisplayName" "${APPNAME}"
	WriteRegStr HKLM "Software\${PRODUCT_REG_KEY}" "DisplayIcon" "$INSTDIR\${APPNAME}.ico"
	WriteRegStr HKLM "Software\${PRODUCT_REG_KEY}" "Publisher" "${APPDOMAIN}"
	WriteRegStr HKLM "Software\${PRODUCT_REG_KEY}" "DisplayVersion" "${APPFileVersion}"
	WriteRegStr HKLM "Software\${PRODUCT_REG_KEY}" "HelpLink" "${APPURL}"
	WriteRegDWORD HKLM "Software\${PRODUCT_REG_KEY}" "NoModify" "1"
	WriteRegDWORD HKLM "Software\${PRODUCT_REG_KEY}" "NoRepair" "1"
	WriteRegStr HKLM "Software\${PRODUCT_REG_KEY}" "UninstallString" "$INSTDIR\uninstall.exe"
	WriteUninstaller "$INSTDIR\uninstall.exe"
# size
	${GetSize} "$INSTDIR" "/S=0K" $0 $1 $2
	IntFmt $0 "0x%08X" $0
	WriteRegDWORD HKLM "Software\${PRODUCT_REG_KEY}" "EstimatedSize" "$0"
	
SectionEnd

; Modern install component descriptions
;!insertmacro MUI_FUNCTION_DESCRIPTION_BEGIN
;	!insertmacro MUI_DESCRIPTION_TEXT ${Section1} ""
;!insertmacro MUI_FUNCTION_DESCRIPTION_END

;Uninstall section
Section Uninstall
  !ifdef WIN64
		SetRegView 64
  !endif

	;Remove from registry...
	DeleteRegKey HKLM "Software\${PRODUCT_REG_KEY}"
	DeleteRegKey HKLM "SOFTWARE\${APPNAME}"

	; Delete self
	Delete "$INSTDIR\uninstall.exe"

	; Delete Shortcuts
	Delete "$DESKTOP\mjpgcam.lnk"
	Delete "$SMPROGRAMS\mjpgcam\mjpgcam.lnk"
	Delete "$SMPROGRAMS\mjpgcam\Uninstall.lnk"

	; Clean up mjpgcam
	Delete "$INSTDIR\mjpgcam.ico"
	Delete "$INSTDIR\Qt6Core.dll"
	Delete "$INSTDIR\Qt6Gui.dll"
	Delete "$INSTDIR\Qt6Network.dll"
	Delete "$INSTDIR\Qt6Svg.dll"
	Delete "$INSTDIR\Qt6Widgets.dll"
	Delete "$INSTDIR\d3dcompiler_47.dll"
	Delete "$INSTDIR\dxcompiler.dll"
	Delete "$INSTDIR\dxil.dll"
	Delete "$INSTDIR\icuuc.dll"
	Delete "$INSTDIR\mjpgcam.exe"
	Delete "$INSTDIR\opengl32sw.dll"
	Delete "$INSTDIR\vc_redist.x64.exe"
	Delete "$INSTDIR\generic\qtuiotouchplugin.dll"
	RMDir "$INSTDIR\generic"
	Delete "$INSTDIR\iconengines\qsvgicon.dll"
	RMDir "$INSTDIR\iconengines"
	Delete "$INSTDIR\imageformats\qgif.dll"
	Delete "$INSTDIR\imageformats\qicns.dll"
	Delete "$INSTDIR\imageformats\qico.dll"
	Delete "$INSTDIR\imageformats\qjpeg.dll"
	Delete "$INSTDIR\imageformats\qsvg.dll"
	Delete "$INSTDIR\imageformats\qtga.dll"
	Delete "$INSTDIR\imageformats\qtiff.dll"
	Delete "$INSTDIR\imageformats\qwbmp.dll"
	Delete "$INSTDIR\imageformats\qwebp.dll"
	RMDir "$INSTDIR\imageformats"
	Delete "$INSTDIR\networkinformation\qnetworklistmanager.dll"
	RMDir "$INSTDIR\networkinformation"
	Delete "$INSTDIR\platforms\qwindows.dll"
	RMDir "$INSTDIR\platforms"
	Delete "$INSTDIR\styles\qmodernwindowsstyle.dll"
	RMDir "$INSTDIR\styles"
	Delete "$INSTDIR\tls\qcertonlybackend.dll"
	Delete "$INSTDIR\tls\qschannelbackend.dll"
	RMDir "$INSTDIR\tls"
	Delete "$INSTDIR\translations\qt_ar.qm"
	Delete "$INSTDIR\translations\qt_bg.qm"
	Delete "$INSTDIR\translations\qt_ca.qm"
	Delete "$INSTDIR\translations\qt_cs.qm"
	Delete "$INSTDIR\translations\qt_da.qm"
	Delete "$INSTDIR\translations\qt_de.qm"
	Delete "$INSTDIR\translations\qt_en.qm"
	Delete "$INSTDIR\translations\qt_es.qm"
	Delete "$INSTDIR\translations\qt_fa.qm"
	Delete "$INSTDIR\translations\qt_fi.qm"
	Delete "$INSTDIR\translations\qt_fr.qm"
	Delete "$INSTDIR\translations\qt_gd.qm"
	Delete "$INSTDIR\translations\qt_he.qm"
	Delete "$INSTDIR\translations\qt_hr.qm"
	Delete "$INSTDIR\translations\qt_hu.qm"
	Delete "$INSTDIR\translations\qt_it.qm"
	Delete "$INSTDIR\translations\qt_ja.qm"
	Delete "$INSTDIR\translations\qt_ka.qm"
	Delete "$INSTDIR\translations\qt_ko.qm"
	Delete "$INSTDIR\translations\qt_lg.qm"
	Delete "$INSTDIR\translations\qt_lv.qm"
	Delete "$INSTDIR\translations\qt_nl.qm"
	Delete "$INSTDIR\translations\qt_nn.qm"
	Delete "$INSTDIR\translations\qt_pl.qm"
	Delete "$INSTDIR\translations\qt_pt_BR.qm"
	Delete "$INSTDIR\translations\qt_ru.qm"
	Delete "$INSTDIR\translations\qt_sk.qm"
	Delete "$INSTDIR\translations\qt_sv.qm"
	Delete "$INSTDIR\translations\qt_tr.qm"
	Delete "$INSTDIR\translations\qt_uk.qm"
	Delete "$INSTDIR\translations\qt_zh_CN.qm"
	Delete "$INSTDIR\translations\qt_zh_TW.qm"
  RMDir "$INSTDIR\translations"
	; Remove remaining directories
	RMDir "$SMPROGRAMS\mjpgcam"
	RMDir "$INSTDIR\"

SectionEnd

Function .onInit
# TODO: Silent mode/ Full mode
    ${If} ${RunningX64}
    !ifdef WIN64
            SetRegView 64
    !endif
    ${Else}
    !ifdef WIN64
            MessageBox MB_OK|MB_ICONSTOP 'This is the 64 bit ${APPNAME} installer$\r$\nClick Ok to quit Setup.' /SD IDOK
            Quit
    !endif
    ${EndIf}
    !ifdef WIN64
      strcpy $INSTDIR "$PROGRAMFILES64\${APPNAME}"
    !endif		
FunctionEnd

BrandingText "mjpg webcam viewer"

; eof