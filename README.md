# WebPDemo

###[https://support.cloudinary.com/hc/en-us/articles/202521522-How-can-I-make-my-images-load-faster-](https://support.cloudinary.com/hc/en-us/articles/202521522-How-can-I-make-my-images-load-faster-)

#How can I make my images load faster?
 Avatar  Amit Sharon ,4 months ago Updated
>When your images load faster, your website's / mobile app's user experience is enhanced and metrics such as time on site and conversion rate improve as a result. To make your images load fast, you want their size to be as small as possible, and you want good caching and delivery architecture. When you use Cloudinary to deliver your images, they are served using market-leading Akamai CDN, so the caching and delivery part is solved. As for reducing image size, the following list includes the most effective and easy-to-implement tips for optimizing your images. 

###1. Scale images to display size
In your website or application you usually need to display images in specific dimensions, defined by the website's / application's graphic design. Use Cloudinary to smartly resize images to their actual display size, instead of having the client download large images and scale them on the client side. On Web and mobile Web you can automate resizing by taking advantage of Cloudinary's support for responsive design.

Use one of Cloudinary's multiple crop modes to achieve the exact visual result you are looking for.

###2. Adjust image quality
Cloudinary allows you to control the image quality - the higher the quality is, the heavier the resulting image is, and vice versa. Quality is configured in a 0-100 scale, or using Cloudinary's automatic quality setting. The default quality used by Cloudinary when a quality setting is not provided can be configured in the Cloudinary UI under Settings->Upload.

Note that quality adjustment doesn't impact PNGs, because it is a lossless format (see below about auto-converting PNG to JPG).

Expected images size / bandwidth save - between 10%-50% with auto quality (q_auto).

###3. Auto-select file format based on client detection
While the JPG format is most widely supported, some clients support more advanced and efficient file formats. The Chrome browser and Android devices (and even iOS devices when using Google's libwebp) support the Google WebP format, while the Internet Explorer browser supports Microsoft's JPEG XR format.

On website, including mobile web, simply set 'fetch format' to 'auto', and let Cloudinary auto-select the optimal file format for you (note: requires using Cloudinary's built-in Akamai CDN). For further reading see our WebP and JPEG-XR blog posts.

On native mobile app, set file format explicitly based on client-side logic by setting the 'format' attribute (or simply changing the file extension, e.g. http://res.cloudinary.com/demo/image/upload/sample.webp). Note that WebP is supported natively on Android (version 4 and up for lossy, and version 4.2.1 for lossless and transparency). On iOS it can be supported with libwebp, however, as WebP is not a native format on iOS decoding is not as efficient and there might be a performance toll, especially on older devices.

Note that setting fetch format to 'auto' ('f_auto' on the URL) cannot be part of a named transformation, as it should explicitly exist on the URL. It can be used together with a named transformation though, for example 't_my_transformation,f_auto'.

Expected images size / bandwidth save - about 30%.

###4. Convert PNG to JPG
The PNG format supports transparency while JPG doesn't. But PNG files are also much larger, and in many cases they are used by mistake in use cases where transparency not really needed. In these case it makes sense to convert them JPG.

Luckily, Cloudinary can auto-detect if PNG has transparency (alpha channel) and convert it to JPG in case it doesn't. To take advantage of that use Cloudinary's 'lossy' flag. On Web use the 'lossy' flag combined with the 'auto' fetch format (on URL this would be 'fl_lossy,f_auto') so that Cloudinary will also automatically convert to more efficient formats, such as WebP, when possible depending on the user browser.

In addition to auto-detection using the 'lossy' flag, it is also possible to force conversion to JPG by setting the 'format' parameter to 'jpg' when using Cloudinary's client library, or by simply changing the file extension on URL.

Expected images size / bandwidth save - up to 85%.

###5. Convert Animated GIF to WebM/MP4
If your website or application use short animated GIF-based video sequences, you can substantially reduce the size of these short video sequences by converting them to WebM/MP4.

In case you are looking to implement an autoplay experience, note that videos cannot be auto-played in iOS 9 and earlier. These restrictions have been lifted as of iOS 10 under certain conditions. 

Expected images size / bandwidth save - up to 95%.

More optimization - Cloudinary reports and actionable optimization tips
Cloudinary offers deep reporting and actionable optimization tips based on your specific usage patterns. Visit the Reports page in your Cloudinary web console to get insights and optimization suggestions.

##Quick tips
Optimize:
On Web use ‘f_auto,fl_lossy,q_auto’ 
On native mobile apps use ‘f_webp,q_auto’, and on iOS make sure to include Google’s libwebp.
Scale: Make sure to scale the images to the right size. Use Cloudinary's automatic responsive support on Web.
Social networks: Use optimized image URL in the 'og:image' tag used for social sharing. 
