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

#ifndef _MILLIONSEC_H_
#define _MILLIONSEC_H_

#include <bb/cascades/Application>
#include <bb/cascades/Label>
#include <bb/cascades/Page>
/**
 * HelloWorld Description:
 *
 * This sample application shows some of the very basic handling of
 * images and text in Cascades. Loading a QML for a simple hello
 * world sample application containing to images and a "Hello World"
 * text.
 *
 */
class millionSec: public QObject
{
Q_OBJECT

public:
    // This is our constructor that sets up the recipe.
    millionSec();
    ~millionSec();
//    Q_INVOKABLE QString calculate(const int &date, const int &month, const int &year);
    Q_INVOKABLE void calculate( int date);

private:
    /**
     * Function used to create and set the SceneCover of the application,
     * the cover is shown when the app is running in minimized mode.
     */
    void addApplicationCover();
    bb::cascades::Page *myResultPage;
    bb::cascades::Label *myLabel;
};

#endif // ifndef _MILLIONSEC_H_
