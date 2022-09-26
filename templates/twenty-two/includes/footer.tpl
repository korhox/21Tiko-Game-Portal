    <footer class="bg-dark p-5">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-5 p-2 text-white">
                    <img style="max-width: 350px" class="w-100 pe-5" alt="Tamk" src="{$config->syspath}/templates/twenty-two/img/tamk_logo.svg" loading=lazy />
                </div>
                <div class="col text-end-md text-center">
                    <img style="max-width: 200px" class="w-100 pe-5" alt="Tiko" src="{$config->syspath}/templates/twenty-two/img/tiko-logo-eng-valkoinen.png" loading=lazy />
                    <img style="max-width: 100px" class="w-100" alt="EU Logo" src="{$config->syspath}/templates/twenty-two/img/{$lang->eu_logo}" loading=lazy />
                    <img style="max-width: 100px" class="w-100 p-3" alt="EAKR Logo" src="{$config->syspath}/templates/twenty-two/img/{$lang->eakr_logo}" loading=lazy />
                </div>
            </div>
        </div>
    </footer>
    <div class="bg-light p-1">
        <div class="container p-1">
            <span>Peliportaalin suunnittelu: <a href="https://korho.fi" target="korho_website">Juuso Korhonen //
                    Bittivirta</a></span>
        </div>
    </div>
    <script>
        var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
        var tooltipList = tooltipTriggerList.map(function(tooltipTriggerEl) {
            return new bootstrap.Tooltip(tooltipTriggerEl)
        })
    </script>
    </body>

</html>