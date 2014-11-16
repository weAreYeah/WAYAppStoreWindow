WAYAppStoreWindow
=========

WAYAppStoreWindow is our approach to let you use INAppStoreWindow like features in OS X Yosemite without the warnings.

It's a drop-in replacement for **INAppStoreWindow**, which switches its class implementation at runtime between **WAYWindow** and **INAppStoreWindow**, depending on the OS X version.

The motivation behind this class is the following warning while running applications using *INAppStoreWindow* in OS X 10.10 Yosemite:

	NSWindow warning: adding an unknown subview: <INMovableByBackgroundContainerView: 0x600000120780>
	2014-11-16 14:26:45.245 WAYAppStoreWindowDemo[12114:305020] Call stack:
	[...]

We introduced ```WAYWindow``` which provides the same interface, to a certain extent, as INAppStoreWindow. ```WAYWindow``` lets you specify a custom window titlebar height and add subviews to the titlebar. You can also define custom margins for the standard window buttons and center them. However ```WAYWindow``` has been built to work on OS X Yosemite only.

This class, ```WAYAppStoreWindow``` switches its internal implementation at runtime. If the app is running on pre-Yosemite OS X versions, ```INAppStoreWindow``` will be used, otherwise ```WAYWindow``` will be used.

Note that you need to add both of the following dependencies:

* [WAYWindow](https://github.com/weAreYeah/WAYWindow/)
* [INAppStoreWindow](https://github.com/indragiek/INAppStoreWindow/)

The interface of this class is highly constrained. Not all of the properties you can customize for ```INAppStoreWindow``` instances are supported, and you should use this approach with care. Make sure to test before you deploy.

Many thanks to [@indragie](http://twitter.com/indragie) for his [INAppStoreWindow](https://github.com/indragiek/INAppStoreWindow/).

Usage
-----

1. Drag a new NSWindow instance to your XIB
2. Set the class of the instance to WAYAppStoreWindow

**Migrating from INAppStoreWindow:**

1. Change the class of your ```INAppStoreWindow``` instance to ```WAYAppStoreWindow```.
2. Test a lot.

Interesting
-----------
We are new, weAreYeah.com.
Follow us on [@weAreYeah](http://twitter.com/weAreYeah) for upcoming goodies.

License
-------
Licensed under the BSD License <http://www.opensource.org/licenses/bsd-license>
THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY
EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED
TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF
THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

![We are Yeah!](http://www.weAreYeah.com/weAreYeah@2x.png)
