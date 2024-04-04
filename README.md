# Delphi Android WebBroker Webserver

***********************************************
**Update:** This is built into Delphi as of 10.4.x
***********************************************

This is a standalone Web Broker app ported to Android. It has a TDataModule instead of a form, so there is no GUI. It is tested to work under [Android Things](https://developer.android.com/things) and [Emteria.OS](https://emteria.com/) on Raspberry Pi 3.

There is also a [C++Builder version](https://github.com/jimmckeeth/CppBuilderAndroidWebBroker).

I created a slide deck that walks through this in more detail. You can find the latest version on [Google Slides](https://docs.google.com/presentation/d/1KHIPEebq1ZrHHEugGpzBsW56vBfevgywa6L57g91XKo/edit?usp=sharing), or it is in this repository as a [PDF too](https://github.com/jimmckeeth/DelphiAndroidWebBroker/blob/master/doc/WebBroker%20on%20%20Raspberry%20Pi%20(Delphi%20%26%20C%2B%2BBuilder).pdf). I have a [blog post]([delphi.org/?p=3330](http://delphi.org/?p=3330)) with more information as well.

You will need to copy the following files (and possibly more) from your RTL folder into the RTL subfolder to compile for Android since they are not included in the Android package:

- Web.WebReq.pas
- Web.WebBroker.pas
- Web.WebConst.pas
- IdHTTPWebBrokerBridge.pas
- IdCompilerDefines.inc

This isn't officially supported, and only has limited testing. Your mileage may vary. 

This was developed and tested in [Delphi 10.3.1 Rio](https://www.embarcadero.com/products/delphi).
