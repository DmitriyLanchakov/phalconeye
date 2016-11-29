{#
  +------------------------------------------------------------------------+
  | PhalconEye CMS                                                         |
  +------------------------------------------------------------------------+
  | Copyright (c) 2013-2016 PhalconEye Team (http://phalconeye.com/)       |
  +------------------------------------------------------------------------+
  | This source file is subject to the New BSD License that is bundled     |
  | with this package in the file LICENSE.txt.                             |
  |                                                                        |
  | If you did not receive a copy of the license and are unable to         |
  | obtain it through the world-wide-web, please send an email             |
  | to license@phalconeye.com so we can send you a copy immediately.       |
  +------------------------------------------------------------------------+
  | Author: Ivan Vorontsov <lantian.ivan@gmail.com>                 |
  | Author: Piotr Gasiorowski <p.gasiorowski@vipserv.org>                  |
  +------------------------------------------------------------------------+
#}

<!DOCTYPE html>
<html>
<head>
    <title>{{ helper('Setting', 'Core').get('title', '') }} | {% block title %}{% endblock %}</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="generator" content="PhalconEye - Open Source Content Management System">
    <link href="{{ static_url('favicon.ico') }}" rel="shortcut icon" type="image/x-icon"/>

    {{ assets.outputCss() }}
    {{ assets.outputInline(assets.collection('inlineCss'), 'css') }}

    <script type="text/javascript">
        {{ helper('I18n').render() }}
    </script>

    {%- block head -%}

    {%- endblock -%}

</head>
<body data-base-url="{{ config.core.baseUrl }}" data-static-url="{{ config.core.staticUrl }}"
      data-debug="{{ config.application.debug }}">
<div id="wrapper">

    <header>
        {% if contentHeader is defined %}
            {{ contentHeader }}
        {% endif %}

        {%- block header -%}
        {%- endblock -%}
    </header>

    <div class="system-container">
        {{ content() }}
    </div>

    <main role="main">
        {%- block content -%}
        {%- endblock -%}
    </main>

    <footer>
        {% if contentFooter is defined %}
            {{ contentFooter }}
        {% endif %}

        {%- block footer -%}
        {%- endblock -%}
    </footer>
</div>

{{ assets.outputJs() }}
{{ assets.outputInline(assets.collection('inlineJs'), 'js') }}
{{ helper('Profiler', 'Core').render() }}
</body>
</html>