## Hiiragi2013 1.47

* `data("a")` is no longer included in the package due to its large size, and absence of use in the wild. 
  See `system.file("scripts", "readdata.R", package = "Hiiragi2013")` for details on how to create it by downloading raw data from ArrayExpress.
* Many dependencies have moved from `Depends` to `Imports` or `Suggests`.
* `NAMESPACE` now uses `importFrom()` instead of `import()` whole namespaces.