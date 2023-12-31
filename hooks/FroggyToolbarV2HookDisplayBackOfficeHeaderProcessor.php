<?php
/**
 * 2013-2015 Froggy Commerce
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
 * @author    Froggy Commerce <contact@froggy-commerce.com>
 * @copyright 2013-2015 Froggy Commerce
 * @license   Unauthorized copying of this file, via any medium is strictly prohibited
 */

class FroggyToolbarV2HookDisplayBackOfficeHeaderProcessor extends FroggyHookProcessor
{
    public function run()
    {
        // Load employee
        $employee = new Employee((int)$this->params['cookie']->id_employee);

        // Set cookie froggy for front
        $cookie_fc = new Cookie('psFroggyToolbar');
        $cookie_fc->id_employee = $employee->id;
        $cookie_fc->bo_theme_employee = $employee->bo_theme;

        // Check if admin directory has changed, if yes, we update it
        $admin_dir = explode('/', dirname($_SERVER['PHP_SELF']));
        $admin_dir = array_pop($admin_dir) . '/';
        if ($admin_dir != Configuration::get('FC_TLB_ADMIN_DIR')) {
            Configuration::updateValue('FC_TLB_ADMIN_DIR', $admin_dir);
        }
    }
}
