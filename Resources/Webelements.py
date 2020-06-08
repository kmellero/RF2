# Header Page locators
HeaderPageSearchTextBox = "xpath://*[@id='gh-ac']"
HeaderPageSearchButton = "xpath://*[@id='gh-btn']"
HeaderPageAdvancedSearchLink = "xpath://a[@id='gh-as-a']"
HeaderPageAdvancedSearchTextBox = "xpath://input[@id='_nkw']"
HeaderPageAdvancedSearchButton = "xpath://div[@class='adv-s mb space-top']" \
                                 "//button[@class='btn btn-prim'][contains(text(),'Search')]"

# Landing Page locators
LandingPageShoppingCategoryDeals = "xpath://body[@class='desktop gh-flex']/div[@id='mainContent']/div[" \
                                   "@class='hl-cat-nav']/ul[@class='hl-cat-nav__container']/li[10]/a[1] "

LandingPageShppingTextDeals = "xpath://div[@class='navigation-desktop']//a[contains(text(),'Deals')]"

# Search Results Page locators
SearchRPageConditionDropDown = "xpath://span[@class='expand-btn__cell']//span[contains(text(),'Condition')]"
SearchRPageConditionNew = "xpath://*[@id='s0-13-11-5-1[0]-75[1]-14-content-menu']/a[2]/span[1]/span"
SearchRPageLinkNew = \
    "xpath://li[@class='carousel__snap-point srp-carousel-list__item--large-items srp-multi-aspect__item--applied']" \
    "//a[@class='srp-carousel-list__item-link--truncated-small-item']"

SearchRPageDeliveryDropDown = "//span[contains(text(),'Delivery Options')]"
SearchRPageDeliveryFreeInternationalShipping = "//span[contains(text(),'Free International Shipping')]"
SearchRPageLinkFreeShipping = "xpath://div[contains(text(),'Free shipping')]"
SearchRPagesearch_result = "results for"

# Verify_search_functionality tests
search_text_lst = ["mobile", "robot", "books", "travel", "opel"]
