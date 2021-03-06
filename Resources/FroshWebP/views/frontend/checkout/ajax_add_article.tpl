{extends file="parent:frontend/checkout/ajax_add_article.tpl"}

{* Article image *}
{block name='checkout_ajax_add_information_image'}
    <div class="article--image block">
        <a href="{$detailLink}" class="link--article-image" title="{$sArticle.articlename|escape}">

            {$image = $sArticle.additional_details.image}
            {$alt = $sArticle.articlename|escape}

            {if $image.description}
                {$alt = $image.description|escape}
            {/if}

            <span class="image--media">
                {if isset($image.thumbnails)}
                    {if isset($image.thumbnails[0].webp)}
                        <source data-srcset="{$image.thumbnails[0].webp.sourceSet}" type="image/webp">
                    {/if}
                    <img src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-srcset="{$image.thumbnails[0].sourceSet}" class="lazyload" loading="lazy" alt="{$alt}" title="{$alt|truncate:160}" />
                {else}
                    {block name='frontend_detail_image_fallback'}
                        <img src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="{link file='frontend/_public/src/img/no-picture.jpg'}" class="lazyload" loading="lazy" alt="{$alt}" title="{$alt|truncate:160}" />
                    {/block}
                {/if}
            </span>
        </a>
    </div>
{/block}
