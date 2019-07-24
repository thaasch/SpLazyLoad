{extends file="parent:frontend/listing/product-box/product-image.tpl"}

{block name='frontend_listing_box_article_image_element'}
    <span class="image--element">
        {block name='frontend_listing_box_article_image_media'}
            <span class="image--media">

                {$desc = $sArticle.articleName|escape}

                {if isset($sArticle.image.thumbnails)}

                    {if $sArticle.image.description}
                        {$desc = $sArticle.image.description|escape}
                    {/if}

                    {block name='frontend_listing_box_article_image_picture_element'}
                        <img src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
                             data-srcset="{$sArticle.image.thumbnails[0].sourceSet}"
                             class="lazyload"
                             alt="{$desc}"
                             title="{$desc|truncate:160}"/>
                    {/block}
                {else}
                    <img src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
                         data-src="{link file='frontend/_public/src/img/no-picture.jpg'}"
                         class="lazyload"
                         alt="{$desc}"
                         title="{$desc|truncate:160}"/>
                {/if}
            </span>
        {/block}
    </span>
{/block}
