<article>

<h1>deja-vu</H1>
<h2>Identify Hidden Links in Websites by Analyzing Old Snapshots from WayBack Machine</h2>

<p>The deja-vu project helps penetration testers identify "hidden" links that existed in previous versions of a website, but are now "hidden" or forgotten.<br>
It's designed as a *passive* extension of the <a href="http://code.google.com/p/zaproxy/" target="_blank">OWASP Zed Attack Proxy (ZAP)</a> project (Java), and uses cache repositories (e.g. WayBack machine) to compare the current website to older snapshots.
The project provides an automated method for analyzing archive sites' snapshots, and helps pentesters discover new leads for redundant or unhandled vulnerabilities. 
.</p>

<p>Developed by <a href="http://www.hacktics.com" target="_blank">Hacktics ASC</a><br>
<a href="http://www.hacktics.com" target="_blank"><img src="http://diviner.googlecode.com/files/hacktics_logo.jpg" /></a></p>

<hr/>
<img src="https://payload-manager.googlecode.com/files/dejavu.png" alt="deja-vu in action"><br>

<p>
<h2>Requirements:</h2>
<ul>
<li> deja-vu requires Java <u>1.7.x</u>, and was tested with ZAP v.2.1.x.</li>
<li> Verify that ZAP proxy is executed using Java 1.7.x, prior to running the installer.</li>
</ul>
</p>

<p><h2>How Does it Work?</h2>
The application can be used in the following manner:
<ol>
<li> The deja-vu project is designed to enable penetration testers to define specific years for cache repositories (e.g. WayBack machine) that might include old snapshots of a target site, and compare the content of the cache repositories for these dates against the current version of the web site.</li>
<li> When a match is found (a link that exists in the snapshot, but isn't visible in the current version of the website), the application categorizes a lead under the indicated year.</li>
<li> A penetration tester can use the deja-vu toolset to extract each lead, check if it still exists in the current version of the website, and use ZAP's manual toolset or automatic scanner to scan it for vulnerabilities.</li>
<li> The application currently supports only one cache repository (WayBack), supports snapshot search *by years*, and does not limit the range of years (although it affects performance).</li>
</ol>
</p>

<p>
<h2>Installing and Using the deja-vu Extension</h2>
In order to work with the deja-vu extension, please follow these instructions:
<ol>
<li> Install ZAP from the following link:
https://www.owasp.org/index.php/OWASP_Zed_Attack_Proxy_Project</li>
<li> Use the installer, or copy the addon (jar file) to the ZAP installed directory:
%programfiles%\OWASP\Zed Attack Proxy\plugin</li>
<li> Open ZAP and select  "Tools > deja-vu – Config"</li>
<li> Define your targeted domain. In order to refer all different sub-domains, include the domain suffix (for example, for www.sample.com just use sample.com).</li>
<li> Click on "Get Years" button to check whether valid snapshots exist for this domain. This may give you the entire snapshots' range of the targeted site.</li>
<li> In order to optimize the test, we suggest not trying an insane range of years. For example, if the "Get Years" function shows that there are snapshots valid for 2000-2013, then it's probably best to use a range of 3-5 years, such as 2002-2005 or 2005-2008 ranges.</li>
<li> After manually/automatically crawling the site, various "hidden" links will begin to appear under the "Alerts" tab with the following properties: <br>
<ul>
<li> The archive source (i.e., WayBack)</li>
<li> Specific year</li>
<li> Relevant URL changes (the URLs that exist on the cached page but does not exist in the corresponded original link).</li>
</ul>
</li>
<li> By right clicking on one of the alerts you can select to use "deja-vu - Copy Links" in order to copy all disclosed links, and test them via a fuzzer.</li>
<li> In addition, you can click on one of the disclosed links and use the "Caching - Get Archive Page" to examine the WayBack response for that specific year.</li>
</ol>
</p>

<p>
<b>Note:</b> The add-on identifies differences between years and categorizes each link by its snapshot year. For example, if the link only exists in 2007 and not in 2006, then it is found under the 2007 category. It currently does not support categorizing by days or months. Using this information it is possible to remove irrelevant / familiar links and focus only on the relevant ones.
</p>

<p>
<h2>Developers</h2>
deja-vu is developed and maintained by <a href="https://twitter.com/nivselatwit">Niv Sela</a>.
</p>

<p>
<h2>Features</h2>

<table border="0">
<tr><td><b><u>Hidden Link Detection</u></b>
</td></tr>
<tr><td valign="top">
<ul>
<li><I>Parse links in pages from ZAP's history, and do the same for cached versions</I></li>
<li><I>Compare links from cache repository snapshots from several years back to the current page version (passive)</I></li>
<li><I>Identify pages that exists in snapshots and are not visible (linked) in the current version of the page</I></li>
<li><I>Customzid range of years, Customized website scope</I></li>
</ul>
</td></tr>

<tr><td><b><u>Supported Cache Repositories</u></b>
</td></tr>
<tr><td valign="top">
<ul>
<li><I>WayBack machine</I></li>
</ul>
</td></tr>
</table>
</p>

<p>
<h2>Copyright</h2>
</p>
<p>Deja-Vu - An extension for OWASP Zed Attack Proxy (ZAP) that identifies hidden website pages by analyzing previous page snapshots in Wayback machine.</p>

<p>Copyright (C) 2013, Hacktics ASC, Ernst & Young.</p>

<p>This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.</p>

<p>This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.</p>

<p>You should have received a copy of the GNU General Public License along with this program.  If not, see <a href="http://www.gnu.org/licenses/">http://www.gnu.org/licenses</a>.</p>

</article>