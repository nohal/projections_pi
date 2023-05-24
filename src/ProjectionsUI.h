///////////////////////////////////////////////////////////////////////////
// C++ code generated with wxFormBuilder (version Oct 12 2015)
// http://www.wxformbuilder.org/
//
// PLEASE DO "NOT" EDIT THIS FILE!
///////////////////////////////////////////////////////////////////////////

#ifndef __PROJECTIONSUI_H__
#define __PROJECTIONSUI_H__

#include <wx/artprov.h>
#include <wx/button.h>
#include <wx/colour.h>
#include <wx/dialog.h>
#include <wx/font.h>
#include <wx/gdicmn.h>
#include <wx/intl.h>
#include <wx/settings.h>
#include <wx/sizer.h>
#include <wx/string.h>
#include <wx/xrc/xmlres.h>

///////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////
/// Class PreferencesDialogBase
///////////////////////////////////////////////////////////////////////////////
class PreferencesDialogBase : public wxDialog {
private:
protected:
    wxButton* m_bAboutAuthor;

    // Virtual event handlers, overide them in your derived class
    virtual void OnAboutAuthor(wxCommandEvent& event) { event.Skip(); }

public:
    wxStdDialogButtonSizer* m_sdbSizer2;
    wxButton* m_sdbSizer2OK;

    PreferencesDialogBase(wxWindow* parent, wxWindowID id = wxID_ANY,
        const wxString& title = _("Projections Preferences"),
        const wxPoint& pos = wxDefaultPosition,
        const wxSize& size = wxSize(-1, -1),
        long style = wxCAPTION | wxDEFAULT_DIALOG_STYLE);
    ~PreferencesDialogBase();
};

#endif //__PROJECTIONSUI_H__
