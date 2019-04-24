<div class="sblock-catalog-item-button{if stristr($wrapper, 'current') === FALSE}{else:} current{/if}{if $wrapper} type-item-toggle{/if}">
  <a class="sblock-catalog-item-link" href="{$link}" {$target}>
    <span class="sblock-catalog-item-link-label">{$title}</span>
    {if $wrapper}<span class="sblock-catalog-item-link-arrw"></span><span class="sblock-catalog-item-link-arrw type-black"></span>{/if}
  </a>
  {$wrapper}
</div>