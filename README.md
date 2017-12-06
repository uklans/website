# UK LAN Techs Website

## Introduction

This is the website for UK LAN Techs. It is intended to be built as a Docker image and is from the maintained Ubuntu/Apache/PHP image provided by 1&1 Internet.

## Prerequesites

This website is built using Hugo. Please install [hugo](https://gohugo.io) before attempting to build the source until we update the docker image to automatically build

## Building the site
1) Install hugo
2) Edit files as appropriate
3) Check the site using
 # cd hugo
 # hugo server -D
4) Ensure all changes you wish to publish are undrafted
 # hugo undraft <>
4) Build the site
 # hugo
5) Submit a pull request

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
