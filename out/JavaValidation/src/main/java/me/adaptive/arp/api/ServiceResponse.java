/**
--| ADAPTIVE RUNTIME PLATFORM |----------------------------------------------------------------------------------------

(C) Copyright 2013-2015 Carlos Lozano Diez t/a Adaptive.me <http://adaptive.me>.

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the
License. You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0 . Unless required by appli-
-cable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS,  WITHOUT
WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the  License  for the specific language governing
permissions and limitations under the License.

Original author:

    * Carlos Lozano Diez
            <http://github.com/carloslozano>
            <http://twitter.com/adaptivecoder>
            <mailto:carlos@adaptive.me>

Contributors:

    * See source code files for contributors.

-------------------------------------------| aut inveniam viam aut faciam |--------------------------------------------
*/

package me.adaptive.arp.api;

/**
   Represents a local or remote service response.

   @author Carlos Lozano Diez
   @since 1.0
   @version 1.0
*/
public class ServiceResponse {

     /**
        Request/Response data content (plain text).
     */
     private String content;
     /**
        The byte[] representing the binary Content.
     */
     private byte[] contentBinary;
     /**
        The length in bytes for the binary Content.
     */
     private int contentBinaryLength;
     /**
        Encoding of the binary payload - by default assumed to be UTF8.
     */
     private String contentEncoding;
     /**
        The length in bytes for the Content field.
     */
     private String contentLength;
     /**
        The request/response content type (MIME TYPE).
     */
     private String contentType;
     /**
        The headers array (name,value pairs) to be included on the I/O service request.
     */
     private Header[] headers;
     /**
        The session context for the Request/Response.
     */
     private ISession session;

     /**
        Constructor used by the implementation
     */
     public ServiceResponse() {
     }

     /**
        Constructor used by the implementation

        @param content
        @param contentType
        @param contentLength
        @param contentBinary
        @param contentBinaryLength
        @param headers
        @param session
        @param contentEncoding
        @since ARP1.0
     */
     public ServiceResponse(String content, String contentType, String contentLength, byte[] contentBinary, int contentBinaryLength, Header[] headers, ISession session, String contentEncoding) {
          this();
          this.content = content;
          this.contentType = contentType;
          this.contentLength = contentLength;
          this.contentBinary = contentBinary;
          this.contentBinaryLength = contentBinaryLength;
          this.headers = headers;
          this.session = session;
          this.contentEncoding = contentEncoding;
     }

     /**
        Returns the content

        @return content
        @since ARP1.0
     */
     public String getContent() {
          return this.content;
     }

     /**
        Set the content

        @param content
        @since ARP1.0
     */
     public void setContent(String content) {
          this.content = content;
     }

     /**
        Returns the binary content

        @return contentBinary
        @since ARP1.0
     */
     public byte[] getContentBinary() {
          return this.contentBinary;
     }

     /**
        Set the binary content

        @param contentBinary
        @since ARP1.0
     */
     public void setContentBinary(byte[] contentBinary) {
          this.contentBinary = contentBinary;
     }

     /**
        Retrusn the binary content length

        @return contentBinaryLength
        @since ARP1.0
     */
     public int getContentBinaryLength() {
          return this.contentBinaryLength;
     }

     /**
        Set the binary content length

        @param contentBinaryLength
        @since ARP1.0
     */
     public void setContentBinaryLength(int contentBinaryLength) {
          this.contentBinaryLength = contentBinaryLength;
     }

     /**
        Returns the content encoding

        @return contentEncoding
        @since ARP1.0
     */
     public String getContentEncoding() {
          return this.contentEncoding;
     }

     /**
        Set the content encoding

        @param contentEncoding
        @since ARP1.0
     */
     public void setContentEncoding(String contentEncoding) {
          this.contentEncoding = contentEncoding;
     }

     /**
        Returns the content length

        @return contentLength
        @since ARP1.0
     */
     public String getContentLength() {
          return this.contentLength;
     }

     /**
        Set the content length

        @param contentLength
        @since ARP1.0
     */
     public void setContentLength(String contentLength) {
          this.contentLength = contentLength;
     }

     /**
        Returns the content type

        @return contentType
        @since ARP1.0
     */
     public String getContentType() {
          return this.contentType;
     }

     /**
        Set the content type

        @param contentType
        @since ARP1.0
     */
     public void setContentType(String contentType) {
          this.contentType = contentType;
     }

     /**
        Returns the array of Header

        @return headers
        @since ARP1.0
     */
     public Header[] getHeaders() {
          return this.headers;
     }

     /**
        Set the array of Header

        @param headers
        @since ARP1.0
     */
     public void setHeaders(Header[] headers) {
          this.headers = headers;
     }

     /**
        Returns the method

        @return method
        @since ARP1.0
     */
     public ISession getSession() {
          return this.session;
     }

     /**
        Set the method

        @param session
        @since ARP1.0
     */
     public void setSession(ISession session) {
          this.session = session;
     }


}

/**
------------------------------------| Engineered with ♥ in Barcelona, Catalonia |--------------------------------------
*/