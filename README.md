# 21tiko Game Portal Website Source

This repositiry contains source code for 21tiko Game Portal.

# Live website

Is abailable at [https://webpages.tuni.fi/21tiko/](https://webpages.tuni.fi/21tiko/).

# Features

-   Translation support
-   Game list
    -   Website
    -   Play Store
    -   App Store
    -   Client website
    -   Winner position (1 to x)
-   Template engine (Smarty)
-   Router (Bramus router)
-   Smarty template caching
-   Static browser caching for HTML + media
-   GZip files

# Requirements

-   PHP (developed on v7.3.20)
-   Composer (developed using phar executable v2.3.4)
-   FontAwesome 6 kit (get it free from [here](https://fontawesome.com/))

# Installation

Download source files (the Git repository) and extract it to the web location you will be using.

## Install depedencies

```bash
composer install
```

or with phar:

```bash
php composer.phar install
```

## Configure

In `configs/general.php` set system path and server path.

Add your FontAwesome 6 kit to line 15 the header in the `templates/{$config["smarty"]["template_dir"]}/includes/header.tpl` file.

Add in games at `configs/games.php`.

Create new project game listings in `templates/{$config["smarty"]["template_dir"]}/index.tpl`.

```html
<div class="bg-light py-3">
    <div class="container my-5">
        <div class="row align-items-center">
            <div class="col-md-3 pe-md-5 p-md-0 p-5 pt-0">
                <img src="https://projects.tuni.fi/uploads/2021/05/7f09fa63-ruoko_logo-1600x847.png" alt="RUOKO" class="w-100" loading="lazy" />
            </div>
            <div class="col">
                <p class="fs-4">{$lang->ruoko_text}</p>
                <a class="btn btn-primary btn-lg" target="ruoko_site" href="{$lang->ruoko_link}"> <i class="fa-solid fa-fw fa-arrow-up-right-from-square pe-1"></i> {$lang->read_more} </a>
            </div>
        </div>
    </div>
</div>
<div class="container my-5">
    <div class="games row row-cols-xs-1 row-cols-sm-2 row-cols-md-3 row-cols-xl-5 py-4">{foreach from=$games item=item} {if $item->project == "ruoko"} {include 'includes/game.tpl' item=$item} {/if} {/foreach}</div>
</div>
```

## Ready

After this you are ready to edit the html as you like.

## Template file structure:

template_name

```
├── css                             # Directory for CSS
│   ├── theme.css                   # CSS source
│   └── theme.min.css               # Minified CSS (this file is used unless changed)
├── error.tpl                       # Error template, used on errors like 404
├── img                             # Image directory
│   ├── eakr-en-light.svg           # EU logo
│   ├── eakr-en.svg                 # EU logo
│   ├── eakr-light.svg              # EU logo
│   ├── eakr.svg                    # EU logo
│   ├── fusilli-rgb.svg             # Fusilli logo
│   ├── games                       # Game logos
│   │   ├── image.webp              # Example file
│   │   └── retina                  # Retina files
│   │       ├── image.webp          # Example file
│   ├── leverage-eu.svg             # EU logo
│   ├── tamk_logo_en.svg            # TAMK logo
│   ├── tamk_logo.svg               # TAMK logo
│   ├── tiko-logo-eng-valkoinen.png # TIKO logo
│   ├── vipuvoimaa-eu.svg           # EU logo
│   ├── virma-rgb.svg               # VIRMA logo
│   └── virma.svg                   # VIRMA logo
├── includes                        # Template includes
│   ├── footer.tpl                  # Footer template
│   ├── game.tpl                    # Game template (single game which is replicated for each games in index)
│   └── header.tpl                  # Header Template
├── index.tpl                       # Index
```
