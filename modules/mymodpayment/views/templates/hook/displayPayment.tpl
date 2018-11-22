{*
* 2013-2016 Fabien Serny
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* This is a tutorial module, do not use in production
* If you want more information about it, please go on our website
* http://www.froggy-commerce.com/fr/content/8-livre-modules-prestashop
*
*  @author    Fabien Serny <contact@fabienserny.com>
*  @copyright 2013-2016 Fabien Serny
*  @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*}

<div class="row">
    <div class="col-xs-12 col-md-12">
        <p class="payment_module">
            <a href="{$link->getModuleLink('mymodpayment', 'payment')|escape:'html'}" class="mymodpayment">
                {l s='Pay with simple MyMod payment module' mod='mymodpayment'}
            </a>
        </p>
    </div>
</div>
{if $api_url ne ''}
    <div class="row">
        <div class="col-xs-12 col-md-12">
            <p class="payment_module">
                <a href="{$api_url}" class="mymodpayment" id="mymodpayment-api-link">
                    {l s='Pay with MyMod Payment API' mod='mymodpayment'}
                </a>
            </p>
        </div>
    </div>
    <form action="{$api_url}" style="display:none" id="mymodpayment-api-form" method="POST">
        <input type="hidden" name="total_to_pay" value="{$total_to_pay}" />
        <input type="hidden" name="id_cart" value="{$id_cart}" />
        <input type="hidden" name="api_credentials_id" value="{$api_credentials_id}" />
        <input type="hidden" name="payment_token" value="{$payment_token}" />
        <input type="hidden" name="validation_url" value="{$validation_url}" />
        <input type="hidden" name="return_url" value="{$return_url}" />
        <input type="hidden" name="cancel_url" value="{$cancel_url}" />
    </form>
    <script>
        $('#mymodpayment-api-link').click(function() {
            $('#mymodpayment-api-form').submit();
            return false;
        });
    </script>
{/if}
