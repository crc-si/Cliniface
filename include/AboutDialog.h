/************************************************************************
 * Copyright (C) 2021 SIS Research Ltd & Richard Palmer
 *
 * Cliniface is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Cliniface is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 ************************************************************************/

#ifndef Cliniface_AboutDialog_h
#define Cliniface_AboutDialog_h

#include <QDialog>

namespace Ui { class AboutDialog;}
namespace Cliniface {

class AboutDialog : public QDialog
{ Q_OBJECT
public:
    explicit AboutDialog(QWidget *parent = nullptr);
    ~AboutDialog() override;

private:
    Ui::AboutDialog *_ui;

    void insertHeader();
    void appendPara( const QString&);
    void finishContent();
    void insertContent();
    AboutDialog( const AboutDialog&) = delete;
    void operator=( const AboutDialog&) = delete;
};  // end class

}   // end namespace

#endif
