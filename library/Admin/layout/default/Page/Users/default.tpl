{extends file=$render->getLayoutPath('Page/Abstract/default.tpl')}

{block name='content-main'}
  <div class="toggleNext">{translate 'Hinzufügen'}</div>
  <div class="toggleNext-content">
    {component name='Admin_Component_UserAdd'}
  </div>

  <ul class="userList">
    {foreach $userList as $user}
      <li class="userList-item">
        {component name='Admin_Component_User' user=$user}
      </li>
    {/foreach}
  </ul>
  {paging paging=$userList}
{/block}
