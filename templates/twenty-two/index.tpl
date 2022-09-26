<div class="container my-5">
    <div class="row py-5">
        <div class="col fs-4">
            <p>{$lang->homedesc_1}</p>
        </div>
        <div class="col fs-4">
            <p>{$lang->homedesc_2}</p>
        </div>
    </div>
    <div class="row text-center py-5">
        <div class="col">
            <span class="d-block text-primary fw-bold" style="font-size:5rem;">3</span>
            <span class="d-block fs-2">{$lang->projects}</span>
        </div>
        <div class="col">
            <span class="d-block text-primary fw-bold" style="font-size:5rem;">8</span>
            <span class="d-block fs-2">{$lang->courses}</span>
        </div>
        <div class="col">
            <span class="d-block text-primary fw-bold" style="font-size:5rem;">120</span>
            <span class="d-block fs-2">{$lang->students}</span>
        </div>
        <div class="col">
            <span class="d-block text-primary fw-bold" style="font-size:5rem;">22</span>
            <span class="d-block fs-2">{$lang->games}</span>
        </div>
    </div>
</div>
<div class="bg-light py-3">
    <div class="container my-5">
        <div class="row align-items-center">
            <div class="col-md-3 pe-md-5 p-md-0 p-5 pt-0">
                <img src="{$config->syspath}/templates/twenty-two/img/virma-rgb.svg" alt="VIRMA" class="w-100" loading=lazy />
            </div>
            <div class="col">
                <p class="fs-4">{$lang->virma_text}</p>
                <a class="btn btn-primary btn-lg" target="virma_site" href="{$lang->virma_link}">
                    <i class="fa-solid fa-fw fa-arrow-up-right-from-square pe-1"></i> {$lang->read_more}
                </a>
            </div>
        </div>
    </div>
</div>
<div class="container my-5">
    <div class="games row row-cols-xs-1 row-cols-sm-2 row-cols-md-3 row-cols-xl-5 py-4">
        {foreach from=$games item=item}
            {if $item->project == "virma"}
                {include 'includes/game.tpl' item=$item}
            {/if}
        {/foreach}
    </div>
</div>
<div class="bg-light py-3">
    <div class="container my-5">
        <div class="row align-items-center">
            <div class="col-md-3 pe-md-5 p-md-0 p-5 pt-0">
                <img src="{$config->syspath}/templates/twenty-two/img/fusilli-rgb.svg" alt="Fusilli" class="w-100" loading=lazy />
            </div>
            <div class="col">
                <p class="fs-4">{$lang->fusilli_text}</p>
                <a class="btn btn-primary btn-lg" target="fusilli_site" href="{$lang->fusilli_link}">
                    <i class="fa-solid fa-fw fa-arrow-up-right-from-square pe-1"></i> {$lang->read_more}
                </a>
            </div>
        </div>
    </div>
</div>
<div class="container my-5">
    <div class="games row row-cols-xs-1 row-cols-sm-2 row-cols-md-3 row-cols-xl-5 py-4">
        {foreach from=$games item=item}
            {if $item->project == "fusilli"}
                {include 'includes/game.tpl' item=$item}
            {/if}
        {/foreach}
    </div>
</div>
<div class="bg-light py-3">
    <div class="container my-5">
        <div class="row align-items-center">
            <div class="col-md-3 pe-md-5 p-md-0 p-5 pt-0">
                <img src="https://projects.tuni.fi/uploads/2021/05/7f09fa63-ruoko_logo-1600x847.png" alt="RUOKO" class="w-100" loading=lazy />
            </div>
            <div class="col">
                <p class="fs-4">{$lang->ruoko_text}</p>
                <a class="btn btn-primary btn-lg" target="ruoko_site" href="{$lang->ruoko_link}">
                    <i class="fa-solid fa-fw fa-arrow-up-right-from-square pe-1"></i> {$lang->read_more}
                </a>
            </div>
        </div>
    </div>
</div>
<div class="container my-5">
    <div class="games row row-cols-xs-1 row-cols-sm-2 row-cols-md-3 row-cols-xl-5 py-4">
        {foreach from=$games item=item}
            {if $item->project == "ruoko"}
                {include 'includes/game.tpl' item=$item}
            {/if}
        {/foreach}
    </div>
</div>