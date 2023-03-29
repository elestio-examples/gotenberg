# Gotenberg CI/CD pipeline

<a href="https://dash.elest.io/deploy?source=cicd&social=dockerCompose&url=https://github.com/elestio-examples/gotenberg"><img src="deploy-on-elestio.png" alt="Deploy on Elest.io" width="180px" /></a>

Deploy Gotenberg server with CI/CD on Elestio

<img src="gotenberg.png" style='width: 200px;'/>
<br/>
<br/>

# Once deployed ...

You can can open Gotenberg API here:

    URL: https://[CI_CD_DOMAIN]
    email: root
    password: [ADMIN_PASSWORD]

# Usage

## Chromium

The Chromium module interacts with the Chromium browser to convert HTML documents to PDF.

Basic example:

    curl \
    --request POST '[CI_CD_DOMAIN]/forms/chromium/convert/url' \
    --header 'Gotenberg-Output-Filename: result' \
    --form 'url="https://your-url.com"' \
    -u root:[ADMIN_PASSWORD] \
    -O -J

You can modily a lot of properties, for more examples: <a href="https://gotenberg.dev/docs/modules/chromium" target="_blank">Chromium's doc</a>

## LibreOffice

The LibreOffice module interacts with LibreOffice to convert documents to PDF.

Basic example:

    curl \
    --request POST '[CI_CD_DOMAIN]/forms/libreoffice/convert' \
    --form 'files=@"/path/to/file.docx"' \
    -u root:[ADMIN_PASSWORD] \
    -o my.pdf

You can modily a lot of properties, for more examples: <a href="https://gotenberg.dev/docs/modules/libreoffice" target="_blank">LibreOffice's doc</a>

## PDF Engines

The PDF Engines module gathers all engines that can manipulate PDF files.

Basic example:

    curl \
    --request POST '[CI_CD_DOMAIN]/forms/pdfengines/merge' \
    --form 'files=@"/path/to/pdf1.pdf"' \
    --form 'files=@"/path/to/pdf2.pdf"' \
    --form 'files=@"/path/to/pdf3.pdf"' \
    --form 'files=@"/path/to/pdf4.pdf"' \
    -u root:[ADMIN_PASSWORD] \
    -o my.pdf

You can modily a lot of properties, for more examples: <a href="https://gotenberg.dev/docs/modules/pdf-engines" target="_blank">PDF Engines's doc</a>
