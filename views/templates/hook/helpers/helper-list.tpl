{**
* 2013-2014 Froggy Commerce
*
* NOTICE OF LICENSE
*
* You should have received a licence with this module.
* If you didn't buy this module on Froggy-Commerce.com, ThemeForest.net
* or Addons.PrestaShop.com, please contact us immediately : contact@froggy-commerce.com
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to benefit the updates
* for newer PrestaShop versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author Froggy Commerce <contact@froggy-commerce.com>
*  @copyright  2013-2014 Froggy Commerce
*}


<table class="table" id="{$froggyhelper.module_name}-{$froggyhelper.configuration.key}-list">
    <thead>
    <tr>
        {foreach from=$froggyhelper.configuration.list.labels key=field item=label}
            <th style="width:100px">{$label}</th>
        {/foreach}
        <th><div class="btn-group pull-right">{l s='Actions' mod=$froggyhelper.module_name}</div></th>
    </tr>
    </thead>
	<tbody>
        {foreach from=$froggyhelper.configuration.list.data item=row_data}
        <tr>
            {foreach from=$froggyhelper.configuration.list.labels key=field item=label}
                <td>{$row_data[$field]}</td>
            {/foreach}
            <td>
				<div class="btn-group-action">
                    <div class="btn-group pull-right">
						<a class="delete" title="Delete" onclick="if (confirm('Delete selected item?')) { return true; } else { event.stopPropagation(); event.preventDefault(); };" href="{$froggyhelper.form_url}&delete-{$froggyhelper.configuration.key}={$row_data.id}">
							<i class="icon-trash"></i> {l s='Delete' mod=$froggyhelper.module_name}
						</a>
				    </div>
				</div>
            </td>
		</tr>
        {/foreach}
	</tbody>
</table>
<br><br>