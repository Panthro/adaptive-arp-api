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

    * Ferran Vila Conesa
             <http://github.com/fnva>
             <http://twitter.com/ferran_vila>
             <mailto:ferran.vila.conesa@gmail.com>

    * See source code files for contributors.

Release:

    * @version v2.0.4

-------------------------------------------| aut inveniam viam aut faciam |--------------------------------------------
*/

using System;

namespace Adaptive.Arp.Api
{
     /**
        Structure representing a remote or local service access end-point.

        @author Aryslan
        @since ARP1.0
        @version 1.0
     */
     public class ServiceEndpoint : APIBean
     {

          /**
             The remote service host (alias or IP).
          */
          public string Host { get; set; }
          /**
             The remote service paths (to be added to the host and port url).
          */
          public ServicePath[] Paths { get; set; }
          /**
             The remote service accessible port.
          */
          public int Port { get; set; }
          /**
             The proxy url - if needed - to access the remote service. If IP and port are used, use the following syntax: "http://<IP>:<Port>".
          */
          public string Proxy { get; set; }
          /**
             The remote service scheme.
          */
          public string Scheme { get; set; }

          /**
             Default Constructor

             @since ARP1.0
          */
          public ServiceEndpoint()  {
          }

          /**
             Constructor with parameters

             @param Host   Remote service host
             @param Paths  Remote service Paths
             @param Port   Remote service Port
             @param Proxy  Proxy url "http://IP_ADDRESS:PORT_NUMBER"
             @param Scheme Remote service scheme
             @since ARP1.0
          */
          public ServiceEndpoint(string Host, ServicePath[] Paths, int Port, string Proxy, string Scheme) : base () {
               this.Host = Host;
               this.Paths = Paths;
               this.Port = Port;
               this.Proxy = Proxy;
               this.Scheme = Scheme;
          }

          /**
             Returns the Remote service host

             @return Remote service host
             @since ARP1.0
          */
          public string GetHost() {
               return this.Host;
          }

          /**
             Set the Remote service host

             @param Host Remote service host
             @since ARP1.0
          */
          public void SetHost(string Host) {
               this.Host = Host;
          }

          /**
             Returns the Remote service Paths

             @return Remote service Paths
             @since ARP1.0
          */
          public ServicePath[] GetPaths() {
               return this.Paths;
          }

          /**
             Set the Remote service Paths

             @param Paths Remote service Paths
             @since ARP1.0
          */
          public void SetPaths(ServicePath[] Paths) {
               this.Paths = Paths;
          }

          /**
             Returns the Remote service Port

             @return Remote service Port
             @since ARP1.0
          */
          public int GetPort() {
               return this.Port;
          }

          /**
             Set the Remote service Port

             @param Port Remote service Port
             @since ARP1.0
          */
          public void SetPort(int Port) {
               this.Port = Port;
          }

          /**
             Return the Proxy url

             @return Proxy url
             @since ARP1.0
          */
          public string GetProxy() {
               return this.Proxy;
          }

          /**
             Set the Proxy url

             @param Proxy Proxy url
             @since ARP1.0
          */
          public void SetProxy(string Proxy) {
               this.Proxy = Proxy;
          }

          /**
             Returns the Remote service scheme

             @return Remote service scheme
             @since ARP1.0
          */
          public string GetScheme() {
               return this.Scheme;
          }

          /**
             Set the Remote service scheme

             @param Scheme Remote service scheme
             @since ARP1.0
          */
          public void SetScheme(string Scheme) {
               this.Scheme = Scheme;
          }


     }
}

/**
------------------------------------| Engineered with ♥ in Barcelona, Catalonia |--------------------------------------
*/
