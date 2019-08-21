Workarea Sitemaps 2.1.6 (2019-08-21)
--------------------------------------------------------------------------------

*   Open Source!



Workarea Sitemaps 2.1.5 (2019-07-23)
--------------------------------------------------------------------------------

*   Parse Path URLs in Sitemap

    When a URL for a `Navigation::Taxon` is not fully-qualified, the
    generator builds these links as `://page-name` in the sitemap. To
    resolve this, `Sitemap::Link` now checks for whether the URL is fully
    qualified before attempting to use its parsed `#host` and `#scheme` in
    the generation for the sitemap.

    SITEMAPS-22
    Tom Scott



Workarea Sitemaps 2.1.4 (2019-04-02)
--------------------------------------------------------------------------------

*   Only Track HTTP Links in Sitemap

    Non-HTTP links, like `tel:` and `mailto:`, are invalid within a
    Google-compatible XML sitemap. Omit any taxonomy that points to these
    URLs in the sitemap by checking for the presence of "http" or "/" at the
    beginning of the URL, or whether the Taxon is linked to a Navigable item.
    Introduce a new predicate method, `Navigation::Taxon#show_in_sitemap?`,
    to wrap up all the logic for whether a taxon should be included in the
    generated Google Sitemap XML.

    SITEMAPS-20
    Tom Scott



Workarea Sitemaps 2.1.3 (2019-03-19)
--------------------------------------------------------------------------------

*   Remove Inactive Products From Generated Sitemap

    Add the `Catalog::Product.active_with_variants` scope and use it in
    `GenerateSitemaps` to prevent products that have no variants appearing
    in the sitemap just because they have `active: true` set on them.

    SITEMAPS-21
    Tom Scott

*   Update for workarea v3.4 compatibility

    SITEMAPS-19
    Matt Duffy



Workarea Sitemaps 2.1.2 (2019-01-08)
--------------------------------------------------------------------------------

*   Update README

    SITEMAPS-18
    Curt Howard



Workarea Sitemaps 2.1.1 (2018-10-30)
--------------------------------------------------------------------------------

*   Fix External Links in Sitemap

    When taxonomy contains a link that is external (e.g., to an alternative
    site or subdomain, like `https://blog.yourclient.com`), the
    `Workarea::GenerateSitemaps` worker was mistakenly applying the default
    configured host for the application to each entry. Create a new
    `Sitemap::Link` class that parses the URL into a URI, if given, or
    reverts back to the original code of finding the route path and using
    that as the entry. Workarea also configures a `:host` for every URL in
    the sitemap, rather than relying on `SitemapGenerator`'s OOB behavior
    of setting the `default_host` for all entries.

    SITEMAPS-16
    Tom Scott



Workarea Sitemaps 2.1.0 (2018-05-24)
--------------------------------------------------------------------------------

*   Leverage Workarea Changelog task

    ECOMMERCE-5355
    Curt Howard

*   Fix for headless Chrome

    We strip HTTP cache headers in tests now. To test HTTP caching headers, you
    must enable them.
    Ben Crouse



Workarea Sitemaps 2.0.1 (2017-10-31)
--------------------------------------------------------------------------------

*   Move configuration into initializers

    SITEMAPS-15
    Matt Duffy


Workarea Sitemaps 2.0.0 (2017-05-01)
--------------------------------------------------------------------------------

*   Remove lastmod and priority from sitemap entries

    These aren't being accurately kept up to date and search engines ignore
    them anyways.

    SITEMAPS-10
    Ben Crouse

*   Allow homepage in sitemap

    According to googling around, this can't hurt and may help.

    SITEMAPS-9
    Ben Crouse

*   Bump sitemap_generator dependency

    SITEMAPS-8
    Ben Crouse

*   Cleanup namespace (minor)

    SITEMAPS-8
    Ben Crouse

*   Convert specs to minitest and get them passing

    SITEMAPS-8
    Ben Crouse


WebLinc Sitemaps 1.0.3 (2016-10-25)
--------------------------------------------------------------------------------

*   Use https in the default host

    SITEMAPS-5
    Ben Crouse

*   Fix Cache-Control header set too long

    This causes bots to hang on to the cache for too long and therefore not index changes to the sitemap content.

    The default value from Dragonfly is good for most use cases, but sitemaps are updated daily.

    SITEMAPS-4
    Ben Crouse

*   Fix Cache-Control header set too long

    This causes bots to hang on to the cache for too long and therefore not index changes to the sitemap content.

    The default value from Dragonfly is good for most use cases, but sitemaps are updated daily.

    SITEMAPS-4
    Ben Crouse


WebLinc Sitemaps 1.0.2 (2016-06-13)
--------------------------------------------------------------------------------

*   Fix Cache-Control header set too long

    This causes bots to hang on to the cache for too long and therefore not index changes to the sitemap content.

    The default value from Dragonfly is good for most use cases, but sitemaps are updated daily.

    SITEMAPS-4
    Ben Crouse


WebLinc Sitemaps 1.0.1 (2016-04-05)
--------------------------------------------------------------------------------


WebLinc Sitemaps 1.0.0 (January 13, 2016)
--------------------------------------------------------------------------------

*   Update for compatibility with WebLinc 2.0

*   Add default_url_option to fix errors when running the worker

    SITEMAPS-3


WebLinc Sitemaps 0.5.0 (July 12, 2015)
--------------------------------------------------------------------------------

*   Update for compatibility with weblinc 0.10 and constrain to weblinc >= 0.10

    99e26beca229a9c7e483a92cbdf7963e06eb7d0a
    2b83f6641e5e3ebee981aa9175199df45d5e173e


WebLinc Sitemaps 0.4.0 (June 1, 2015)
--------------------------------------------------------------------------------

*   Update for compatibility and consistency with weblinc 0.9.0.


WebLinc Sitemaps 0.3.0 (April 10, 2015)
--------------------------------------------------------------------------------

*   Update testing environment for compatibility with WebLinc 0.8.0.

*   Use new decorator style for consistency with WebLinc 0.8.0.

*   Remove gems server secrets for consistency with WebLinc 0.8.0.

*   Add sitemap link to robots.txt.
