---
title: "An Open Letter to Game Publishers"
subtitle: "Why you should make your CDNs available via HTTP"
date: 2017-12-06T11:54:27Z
draft: false
menu: "main"
weight: 3
---

With the wealth of current best-practice advice around HTTPS, many publishers are looking to move their CDN services to use HTTPS.  Whilst the benefits for moving to HTTPS are widely noted, there are a few potential drawbacks.  This letter is going to highlight the impact of this change on one specific use case:  LAN Parties.

Whilst this document will focus specifically on UK based LAN parties, this is merely because this is what we have accurate data on.  These findings can be extrapolated to many countries across the world that have a healthy and thriving LAN party scene. We also see similar issues in offices that allow games (such as games companies), events and increasingly in esports venues.

## The Problem

Most UK based LAN parties are run at either break-even or at a loss.  They are usually run by small teams of volunteers who have a passion for Gaming.  Because of the commercial constraints of these operations, they are usually limited in the speed of Internet connection that they are able to afford for their various events.  As an example, the largest LAN party in the UK is Insomnia (https://insomniagamingfestival.com/) This event regularly sells up to 3,500 ‘Bring Your Own Computer (BYOC)’ tickets, and the volunteers run the entire event off of a single 5Gbps connection.  In the UK, this is actually quite a generous “Average Bandwidth Per User” (ABPU) of around 1.4Mbps.

In order to make the gaming experience better for all users, LAN parties employ a range of techniques to minimize bandwidth usage as much as possible.  The most prevalent mechanism to do this is to perform on-site caching of bulk downloads.

The most popular solution for on-site caching is a Github project called lancachenet/monolithic (https://github.com/lancachenet/monolithic), which is the most current revision of various other projects such as steamcache/generic and steamcache/monolithic.  These projects provide prebuilt Docker containers for a full caching solution designed for LAN party organisers to be able to quickly and easily build a cache.  These projects have been pulled well over 2 million times from Dockerhub, showing that they are popular and in constant use across the world.  Linus Tech Tips has also put out a video showing how to use this project to perform caching for purposes other than LAN parties, which can be watched at  https://www.youtube.com/watch?v=gk1eKPRLaJA

(I will note at this point that uklans are the maintainers of the lancachenet project, and the associated cache-domains project found at https://github.com/uklans/cache-domains)


## The Implications

When running a LAN party, we want every attendee to be able to play the games that they want, with as little fuss as possible.  We also encourage ‘virality’ of games at events - sometimes by running specific games at pre-arranged times, or by offering internal tournaments.  In order for this to be successful, attendees need to be able to download and patch games as quickly as is feasible.  When this data is available from an on-site cache, they can usually download at their line-speed, (or their disk-speed which is often the limiting factor!). When a publisher uses HTTPS, games will be downloaded directly from the Internet, frequently multiple concurrent downloads from multiple attendees, and thus their download is generally placed into a ‘best effort’ queue.  (Gaming traffic is usually prioritised above all other traffic).

In reality, this means that attendees will see line-speed downloads for cached data, and highly variable download speeds for non-cached data, which could be as low as ~2Mbps!

As you can imagine, the preference for a large majority of attendees is to play a game they can download quickly, which often means uncached games are relegated to being a second-class citizen at LAN parties.


## The Solution

The simplest solution is to *not* use HTTPS for actual bulk downloads.  Our recommendation is to perform any sensitive operations over HTTPS, (this would include logins, collection of download manifests etc) and then perform the actual bulk download over HTTP.  By collecting manifests over HTTPS, you can guarantee that the manifest itself has not been tampered with.  The download client will usually have logic to compare the manifest data with the bulk download to ensure that the downloaded file has not been tampered with, and this will continue to work with this scenario. 

When downloads are arranged like this, we can insert a cache transparently using either simple solutions such as DNS overrides, through to transparent interception using WCCP and squid.  The important thing is that there is no requirement to modify the client directly (such as installing certs, overriding config files for games etc) which would not be permissible for situations where attendees are bringing their own hardware.

In addition, we would usually recommend that the download client is downloaded and updated directly over HTTPS, if you do not have a mechanism to validate the download client. 

This is the method employed by many Game publishers, including Valve, Origin, and recently we managed to bring Epic Games onboard who globally disabled HTTPS for game downloads a few weeks ago.

As slightly more complicated scenario is one that is employed by Riot Games.  They have provided us with a ‘trigger hostname’.  When the client is checking for updates, it does a DNS lookup on their ‘trigger hostname’ and if it resolves to local network address (RFC1918), it will identify that it is in a ‘LAN Party’ scenario, and will switch to using HTTP as a download mechanism.  Otherwise, it will usually download via HTTPS.  This allows Riot the ability (although it is not currently used) to display in the client to the end user that the downloads are coming from a ‘cached source’ rather than directly from Riot’s CDN servers.  This can provide an alerting mechanism to the client in case this behaviour is unexpected.

Steam will soon be moving to HTTPS downloads, but we have been working closely with them to provide a mechanism that will allow us to turn on HTTP downloads via the use of their Site License Server.  

## Need more information?

You can reach us at <a href="mailto:directors@uklans.net">directors@uklans.net</a> or <a href="mailto:team@lancache.net">team@lancache.net</a>.  We are always happy to discuss options and point you in the right direction. Among our team we have Infrastructure, Game Development,  and Caching expertise. 

