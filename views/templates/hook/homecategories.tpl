<style>
#homecategories-container {
    background-color: #fff;
    padding-bottom: 8px;

}

.subcategories-section-title {
    text-align: center;
}

#homecategories-container #subcategories ul {
    display: flex;
    flex-wrap: wrap;
    width: 100%;
    margin: 0;
}

#subcategories ul li {
  float: left;
  margin: 13px auto 0;
  text-align: center;
}

@media (max-width: 766px) {
#subcategories ul li {
  width: 46%;
}
}

</style>


<div id="homecategories-container" class="full-width">
    <div id="subcategories" class="normal-width">
        <h1 class="h1 subcategories-section-title text-uppercase">
            <a href="/shop-now(62)">
                {l s='All Products' d='Shop.Theme.Catalog'}<i class="material-icons">&#xE315;</i>
            </a>
        </h1>            
        <ul>
            {foreach from=$categories item=subcategory}
                <li>
                    <div class="subcategory-image">
                        <a href="{$link->getCategoryLink($subcategory.id_category, $subcategory.link_rewrite)|escape:'html':'UTF-8'}" title="{$subcategory.name|escape:'html':'UTF-8'}" class="img">
                            {if $subcategory.id_image}
                                <img class="replace-2x" 
                                    src="{imagekit tr='w-230,h-230' v=1 url=$link->getCatImageLink($subcategory.link_rewrite,$subcategory.id_image,'')}"
                                    alt="{$subcategory.name|escape:'html':'UTF-8'}"/>
                            {else}
                                <img class="replace-2x" src="{$img_cat_dir}{$lang_iso}-default-category_default.jpg" alt="{$subcategory.name|escape:'html':'UTF-8'}"/>
                            {/if}
                        </a>
                    </div>
                    <h5><a class="subcategory-name" href="{$link->getCategoryLink($subcategory.id_category, $subcategory.link_rewrite)|escape:'html':'UTF-8'}">{$subcategory.name|truncate:25:'...'|escape:'html':'UTF-8'}</a></h5>
                    {if $subcategory.description}
                        <div class="cat_desc">{$subcategory.description}</div>
                    {/if}
                </li>
            {/foreach}
        </ul>
    </div>
</div>