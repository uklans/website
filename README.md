# UK LAN Techs Website

## Introduction

This is the website for UK LAN Techs. It is intended to be built as a Docker image and is from the maintained Ubuntu/Apache/PHP image provided by 1&1 Internet.

## Prerequisites

This website is built using Hugo. Please install [hugo](https://gohugo.io) for local development.

## Building the site

The site will be built and deployed automatically when a version is pushed to master.

## Live Build Status

The resulting docker image will be built automatically and be seen at (https://hub.docker.com/r/uklans/website/)

## Adding a new member page

If you are a member of UKLans and wish to add your information to the website please follow the instructions below
* Fork this repository
* Add yourself to the members list in hugo/content/sections/members.md
* Create a new file in hugo/content/members/yourlan.md 
* Look at the [StratLAN](https://raw.githubusercontent.com/uklans/website/master/hugo/content/members/stratlan.md) / [epic.LAN](https://raw.githubusercontent.com/uklans/website/master/hugo/content/members/epiclan.md) pages for a good format
* Create a pull request

## Issues and Feedback

Please raise all issues and feedback on GitHub at [uklans/website](https://github.com/uklans/website/issues).

## License

The MIT License (MIT)

Copyright (c) 2017 UK LAN Techs

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
