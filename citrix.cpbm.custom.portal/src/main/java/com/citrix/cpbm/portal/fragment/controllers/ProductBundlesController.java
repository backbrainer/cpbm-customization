/* Copyright 2013 Citrix Systems, Inc. Licensed under the BSD 2 license. See LICENSE for more details. */
package com.citrix.cpbm.portal.fragment.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@RequestMapping("/productBundles")
@SessionAttributes({
    "productBundleForm", "rateCardForm", "entitlementForm", "bundleLogoForm", "rateCardChargesForm"
})
public class ProductBundlesController extends AbstractProductBundlesController {

}