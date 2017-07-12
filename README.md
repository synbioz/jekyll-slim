# Jekyll-slim

[![Gem Version](http://img.shields.io/gem/v/jekyll-slim.svg?style=flat)](#)
[![Dependency
Status](http://img.shields.io/gemnasium/slim-template/jekyll-slim.svg?style=flat)](https://gemnasium.com/slim-template/jekyll-slim)
[![Code
Climate](http://img.shields.io/codeclimate/github/slim-template/jekyll-slim.svg?style=flat)](https://codeclimate.com/github/slim-template/jekyll-slim)
[![Build Status](http://img.shields.io/travis/slim-template/jekyll-slim.svg?style=flat)](https://travis-ci.org/slim-template/jekyll-slim)

A gem that adds [slim-lang](http://slim-lang.com) support to [Jekyll](http://github.com/mojombo/jekyll). Works for for pages, includes and layouts.

## Installation

Add this line to your Gemfile:

    gem 'jekyll-slim'
    gem 'slim', github: 'slim-template/slim'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jekyll-slim

In your Jekyll project's `_plugins` directory:

    # _plugins/jekyll-slim.rb
    require 'jekyll-slim'

### Important!

This gem requires slim from the github master branch for now.

## Usage

The gem will convert all the `.slim` files in your project's directory into HTML. That includes files in sub-directories, includes and layouts. Example:

```slim
# _layouts/default.slim
html
  head
  body
    .content-wrapper {{ content }}
```
To include a partial, use the `slim` liquid tag instead of `include`:

```slim
# index.slim
---
layout: default
---

section.content Content goes here.
% include footer.slim

```

### Options

Is possible to set options available for Slim engine through the `slim` key in `_config.yml`. Example:

```yaml
# _config.yml
slim:
  pretty: true
  format: html5
```

### Context

The slim context is set to acess a `SlimContext` object which has a `site` method, used to access `config`. Be careful because this is a breaking change.

This allows you to access configuration information in your slim file. Example:

```slim
html
  head
  body
    .content-wrapper
      = "slim pretty mode: #{ site.config['slim']['pretty'].to_s }"
```

The `SlimContext` object will be kept across calls, allowing you to easily set
`@instance_variables` that can be accessed by **all slim files** even those included with the `slim`
liquid tag. Those are more or less global variables in slim templates, so be careful when you use them.

## Looking for maintainers

We are looking for maintainers for this gem.

## Credit

Jekyll-slim was heavily inspired by [jekyll-haml](https://github.com/samvincent/jekyll-haml). It is free software, and may be redistributed under the terms specified in the LICENSE file.
