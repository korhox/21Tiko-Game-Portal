<div class="col pb-5 game">
    <div class="shadow p-4 h-100 rounded d-flex flex-column">
        {if $item->winner_place != null}
            <div class="winner_place">
                <span class="number">
                    {$item->winner_place}
                    {if $item->winner_place == 1}
                        {$lang->st}
                    {else if $item->winner_place == 2}
                        {$lang->nd}
                    {else if $item->winner_place == 3}
                        {$lang->rd}
                    {else}
                        {$lang->th}
                    {/if}
                </span>
                <span class="place">{$lang->place}</span>
            </div>
        {/if}
        <div>
            <img class="w-100 rounded bg-dark" alt=" {$item->name} logo" src="{$config->syspath}/templates/twenty-two/img/games/{$item->logo}" srcset="{$config->syspath}/templates/twenty-two/img/games/retina/{$item->logo} 2x" loading=lazy>
        </div>
        <div class="pt-2">
            <a class="fs-4 fw-bold d-block text-primary" href="{$item->website}" target="{$item->name}_site">{$item->name}</a>
            {if $item->team_name != null && $item->team_name != $item->team}
                <span class="fs-6 d-block text-uppercase pb-2" style="opacity:0.8;">{$item->team_name}
                    ({$item->team})</span>
            {else}
                <span class="fs-6 d-block text-uppercase pb-2" style="opacity:0.8;">{$item->team}</span>
            {/if}
            <span class="fs-6 d-block">{$item->description}</span>
        </div>
        <div class="pt-3 d-flex mt-auto">
            {if $item->website != null}
                <a href="{$item->website}" target="{$item->name}_site" data-bs-toggle="tooltip" data-bs-placement="right" title="{$lang->website}"><i class="fa-solid fa-fw fa-2x fa-globe"></i></a>
            {/if}
            {if $item->appstore != null}
                <a href="{$item->appstore}" target="{$item->name}_appstore" data-bs-toggle="tooltip" data-bs-placement="right" title="{$lang->appstore}"><i class="fa-brands fa-fw fa-2x fa-app-store-ios"></i></a>
            {/if}
            {if $item->playstore != null}
                <a href="{$item->playstore}" target="{$item->name}_store" data-bs-toggle="tooltip" data-bs-placement="right" title="{$lang->playstore}"><i class="fa-brands fa-fw fa-2x fa-google-play"></i></a>
            {/if}
            {if $item->client_website != null && $item->client != null}
                <a href="{$item->client_website}" target="{$item->name}_store" class="ms-auto" data-bs-toggle="tooltip" data-bs-placement="left" title="{$item->client}"><i class="fa-solid fa-fw fa-2x fa-briefcase"></i></a>
            {/if}
        </div>
    </div>
</div>