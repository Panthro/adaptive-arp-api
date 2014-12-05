/*
 *
 * =| ADAPTIVE RUNTIME PLATFORM |=======================================================================================
 *
 * (C) Copyright 2013-2014 Carlos Lozano Diez t/a Adaptive.me <http://adaptive.me>.
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with
 * the License. You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on
 * an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations under the License.
 *
 * Original author:
 *
 *     * Carlos Lozano Diez
 *                 <http://github.com/carloslozano>
 *                 <http://twitter.com/adaptivecoder>
 *                 <mailto:carlos@adaptive.me>
 *
 * Contributors:
 *
 *     * Ferran Vila Conesa
 *                 <http://github.com/fnva>
 *                 <http://twitter.com/ferran_vila>
 *                 <mailto:ferran.vila.conesa@gmail.com>
 *
 *     * Aryslan
 *                 <http://github.com/Aryslan>
 *                 <http://twitter.com/Aryslan>
 *                 <mailto:ddbc@gft.com>
 *
 *     * Francisco Javier Martin Bueno
 *                 <https://github.com/kechis>
 *                 <mailto:kechis@gmail.com>
 *
 * =====================================================================================================================
 *
 */

package me.adaptive.arp.api;

/**
 * Represents a local or remote service request.
 */
public class ServiceRequest {

    /**
     * Request/Response data content (plain text).
     *
     * @since ARP1.0
     */
    private String content;
    /**
     * The request/response content type (MIME TYPE).
     *
     * @since ARP1.0
     */
    private String contentType;
    /**
     * The length in bytes for the Content field.
     *
     * @since ARP1.0
     */
    private int contentLength;
    /**
     * The byte[] representing the Content field.
     *
     * @since ARP1.0
     */
    private byte[] rawContent;
    /**
     * The headers array (name,value pairs) to be included on the I/O service request.
     *
     * @since ARP1.0
     */
    private Header[] headers;
    /**
     * The request method
     *
     * @since ARP1.0
     */
    private String method;
    /**
     * The HTTP procotol version to be used for this request.
     *
     * @since ARP1.0
     */
    private IService.ProtocolVersion protocolVersion;
    /**
     * The session context for the Request/Response.
     *
     * @since ARP1.0
     */
    private ISession session;

    /**
     * Encoding of the binary payload - by default assumed to be UTF8.
     */
    private String contentEncoding;

    /**
     * Constructor used by the implementation
     */
    public ServiceRequest() {
    }

    /**
     * Contructor used by the implementation
     *
     * @param content
     * @param contentType
     * @param contentLength
     * @param rawContent
     * @param headers
     * @param method
     * @param protocolVersion
     * @param session
     * @param contentEncoding
     * @since ARP1.0
     */
    public ServiceRequest(String content, String contentType, int contentLength, byte[] rawContent, Header[] headers, String method, IService.ProtocolVersion protocolVersion, ISession session, String contentEncoding) {
        this.content = content;
        this.contentType = contentType;
        this.contentLength = contentLength;
        this.rawContent = rawContent;
        this.headers = headers;
        this.method = method;
        this.protocolVersion = protocolVersion;
        this.session = session;
        this.contentEncoding = contentEncoding;
    }

    /**
     * Returns the protocol version
     *
     * @return protocolVersion enum
     * @since ARP1.0
     */
    public IService.ProtocolVersion getProtocolVersion() {
        return protocolVersion;
    }

    /**
     * Set the protocol version
     *
     * @param protocolVersion
     * @since ARP1.0
     */
    public void setProtocolVersion(IService.ProtocolVersion protocolVersion) {
        this.protocolVersion = protocolVersion;
    }

    /**
     * Returns the content
     *
     * @return content
     * @since ARP1.0
     */
    public String getContent() {
        return content;
    }

    /**
     * Set the content
     *
     * @param content
     * @since ARP1.0
     */
    public void setContent(String content) {
        this.content = content;
    }

    /**
     * Returns the content type
     *
     * @return contentType
     * @since ARP1.0
     */
    public String getContentType() {
        return contentType;
    }

    /**
     * Set the content type
     *
     * @param contentType
     * @since ARP1.0
     */
    public void setContentType(String contentType) {
        this.contentType = contentType;
    }

    /**
     * Returns the content length
     *
     * @return contentLength
     * @since ARP1.0
     */
    public int getContentLength() {
        return contentLength;
    }

    /**
     * Set the content length
     *
     * @param contentLength
     * @since ARP1.0
     */
    public void setContentLength(int contentLength) {
        this.contentLength = contentLength;
    }

    /**
     * Returns the byte[] of the content
     *
     * @return rawContent
     * @since ARP1.0
     */
    public byte[] getRawContent() {
        return rawContent;
    }

    /**
     * Set the byte[] of the content
     *
     * @param rawContent
     * @since ARP1.0
     */
    public void setRawContent(byte[] rawContent) {
        this.rawContent = rawContent;
    }

    /**
     * Returns the array of Header
     *
     * @return headers
     * @since ARP1.0
     */
    public Header[] getHeaders() {
        return headers;
    }

    /**
     * Set the array of Header
     *
     * @param headers
     * @since ARP1.0
     */
    public void setHeaders(Header[] headers) {
        this.headers = headers;
    }

    /**
     * Returns the method
     *
     * @return method
     * @since ARP1.0
     */
    public String getMethod() {
        return method;
    }

    /**
     * Set the method
     *
     * @param method
     * @since ARP1.0
     */
    public void setMethod(String method) {
        this.method = method;
    }

    /**
     * Returns the session object
     *
     * @return session
     * @since ARP1.0
     */
    public ISession getSession() {
        return session;
    }

    /**
     * Set the session object
     *
     * @param session
     * @since ARP1.0
     */
    public void setSession(ISession session) {
        this.session = session;
    }

    /**
     * Returns the content encoding
     *
     * @return contentEncoding
     * @since ARP1.0
     */
    public String getContentEncoding() {
        return contentEncoding;
    }

    /**
     * Set the content encoding
     *
     * @param contentEncoding
     * @since ARP1.0
     */
    public void setContentEncoding(String contentEncoding) {
        this.contentEncoding = contentEncoding;
    }
}