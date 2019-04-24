{$linkSplit = explode('#', $link);}
<div class="ii-item">
	{if empty($linkSplit[1])}
  <span class="main-brand-item o-hvr">
    <img src="{echo $image;}" title="{echo altTitle($title);}" alt="{echo altTitle($title);}">
  </span>
  {else:}
  <a class="main-brand-item o-hvr" href="{echo $link;}">
    <img src="{echo $image;}" title="{echo altTitle($title);}" alt="{echo altTitle($title);}">
  </a>
  {/if}
</div>