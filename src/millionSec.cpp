/* Copyright (c) 2012 Research In Motion Limited.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
#include "millionSec.h"
#include <bb/cascades/NavigationPane>
#include <bb/cascades/DropDown>
#include <bb/cascades/QmlDocument>
#include <bb/cascades/SceneCover>
#include <bb/cascades/AbstractCover>
#include <bb/cascades/Container>
#include <bb/system/SystemToast>
#include <bb/cascades/Page>
#include <QDateTime>
#include <QSettings>

using namespace bb::cascades;

millionSec::millionSec()
{
    // Obtain a QMLDocument and load it into the qml variable, using build patterns.
    QmlDocument *qml = QmlDocument::create("asset:///home.qml");
    QmlDocument *qmlResult = QmlDocument::create("asset:///result.qml").parent(qml);
    qml->setParent(this);
    qml->setContextProperty("home",this);


    NavigationPane *nav = qml->createRootObject<NavigationPane>();
    Page *result = qmlResult->createRootObject<Page>();
    // If the QML document is valid, we process it.
    if (!qml->hasErrors()) {

        // Create the application Page from QMLDocument.
        //Page *appPage = qml->createRootObject<Page>();
    	myResultPage = result->findChild<Page*>("resultPage");

    	myLabel = myResultPage->findChild<Label*>("strLabel");

        if (nav) {
            // Set the main scene for the application to the Page.
            Application::instance()->setScene(nav);
            //calculate();
        }
    }
}

void millionSec::addApplicationCover() {
    // A small UI consisting of just an ImageView in a Container is set up
    // and used as the cover for the application when running in minimized mode.
    QmlDocument *qmlCover = QmlDocument::create("asset:///minimized.qml").parent(this);

    if (!qmlCover->hasErrors()) {
        // Create the QML Container from using the QMLDocument.
        Container *coverContainer = qmlCover->createRootObject<Container>();

        // Create a SceneCover and set the application cover
        SceneCover *sceneCover = SceneCover::create().content(coverContainer);
        Application::instance()->setCover(sceneCover);
    }
}

void millionSec::calculate( int date ) {
//QString millionSec::calculate( const int &date, const int &month, const int &year ) {
	QSettings settings;
	//settings.
	QDateTime qdt;
	qdt = qdt.currentDateTime();
	QString timeinStr = qdt.toString();
	timeinStr = date + " ";
	myLabel->setText("Hello");


}
millionSec::~millionSec(){

}
//
//void millionSec::calculate( ){
//
//}
