## Resubmission

This is a resubmission. In response to CRAN feedback:

* Explained all acronyms in the DESCRIPTION on first use: Food and
  Agriculture Organization (FAO), Nash-Sutcliffe efficiency (NSE), root mean
  square error (RMSE), mean absolute error (MAE), and mean bias error (MBE).
* Replaced the argument name 'T' in saturation_vapor_pressure() with 'Temp'
  so that 'T' is not used as a name (to avoid confusion with TRUE). No use of
  'T' or 'F' in place of TRUE/FALSE remains in the package.

Previous rounds:

* Removed "+ file LICENSE" from the License field and deleted the template
  LICENSE file. License is now "GPL (>= 3)".

## R CMD check results

0 errors | 0 warnings | 1 note

* This is a new submission.

## Test environments

* Local: Windows 11, R 4.4.3
* win-builder: R-devel (via devtools::check_win_devel())

## Notes

* The note "New submission" is expected, as this package is not yet on CRAN.
* Words flagged as possibly misspelled in the DESCRIPTION
  (e.g., "evapotranspiration", "Penman", "Monteith") are spelled correctly and
  are standard terminology in the field of hydrology.
* The DOI in the DESCRIPTION (10.1016/j.ejrh.2026.103925) refers to the peer-
  reviewed article on which the package methods are based and is valid.

## Downstream dependencies

There are currently no downstream dependencies for this package.
