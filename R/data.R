#' Phenotype
#'
#' Modeled data set by Krause et al. (2022) from the USDA Northern Region
#' Uniform Soybean Tests. The data contains 4,257 experimental genotypes
#' evaluated at 63 locations and 31 years resulting
#' in 591 location-year combinations (environments) with 39,006 yield values
#' belonging to matirity groups II and III from 1989 to 2019. Annual PDF
#' reports from the Northern Region of the USDA Uniform Soybean Tests
#' were obtained from \url{https://ars.usda.gov/mwa/lafayette/cppcru/ust}.
#' The data retrieved from the published PDF files represent averages for seed
#' yield for each genotype evaluated at each trial in location-year combinations.
#' Seed yield was adjusted to 13\% moisture and results were reported in bushels
#' per acre (bu/ac). For more information about the trial field plot design and
#' agronomic practices, please refer to the PDF files. The raw data can also be
#' downloaded from Soybase: \url{https://soybase.org/ncsrp/queryportal/}.
#'
#'
#' @format A data frame in tidy format with 39,006 observations on the following 13 variables:
#' \describe{
#' \item{\code{year}}{years, 31 levels (1989 - 2019)}
#' \item{\code{location}}{locations, 63 levels (observed locations in the historical series)}
#' \item{\code{latitude}}{latitude}
#' \item{\code{longitude}}{longitude}
#' \item{\code{altitude}}{altitude}
#' \item{\code{trial}}{name of the trial that originated the phenotypic record}
#' \item{\code{check}}{indicator variable for variety checks, 2 levels (yes or no)}
#' \item{\code{maturity_group}}{genotype's maturity group, 2 levels (II or III)}
#' \item{\code{G}}{genotype, 4,257 levels}
#' \item{\code{eBLUE}}{empirical best linear unbiased estimate of genotype means}
#' \item{\code{SE}}{standard error of genotype means on a location level}
#' \item{\code{average_planting_date}}{average planting date on a location level (MM/DD/YY)}
#' \item{\code{average_maturity_date}}{average maturity date on a location level in days after planting}
#'}
#'
#' @source
#' \describe{
#' Krause, M. D., Dias, K. O. G., Singh, A. K., and Beavis. W. D. (2022). Using large
#' soybean historical data to study genotype by environment variation and
#' identify mega-environments with the integration of genetic and non-genetic
#' factors. bioRxiv, \doi{doi:10.1101/2022.04.11.487885}
#' }
"pheno"

#' Soil variables
#'
#' Soil variables in a depth interval of 5 to 15 cm were obtained from Soilgrids
#' (\url{https://soilgrids.org/}) for the 63 observed locations in the historical
#' series analyzed by Krause et. al. (2022). The R code used to download and
#' process the soil data can be retrieved at \url{https://github.com/mdkrause/VarComp-ME/blob/main/soil_data.R}.
#'
#' @format A data frame in tidy format with 504 observations on the following 5 variables:
#' \describe{
#' \item{\code{Feature}}{soil variables, 8 levels}
#' \item{\code{location}}{locations, 63 levels (observed locations in the historical series)}
#' \item{\code{Soil_Grid}}{mean values of the soil variables (Feature)}
#' \item{\code{LAT}}{location latitude}
#' \item{\code{LON}}{location longitude}
#'}
#'
#' @details Levels of \code{Feature}:
#' \describe{
#' \item{bdod_5-15cm_mean:}{Bulk density of the fine earth fraction (cg/m\eqn{^3})}
#' \item{cec_5-15cm_mean:}{Cation Exchange Capacity of the soil (mmol(c)/kg)}
#' \item{clay_5-15cm_mean:}{Proportion of clay particles (< 0.002 mm) in the fine earth fraction (g/kg)}
#' \item{nitrogen_5-15cm_mean:}{Total nitrogen (cg/kg)}
#' \item{phh2o_5-15cm_mean:}{Soil pH (pH\eqn{\times}10)}
#' \item{sand_5-15cm_mean:}{Proportion of sand particles (\eqn{>} 0.05 mm) in the fine earth fraction (g/kg)}
#' \item{silt_5-15cm_mean:}{Proportion of silt particles (\eqn{\ge} 0.002 mm and \eqn{\leq} 0.05 mm) in the fine earth fraction (g/kg)}
#' \item{soc_5-15cm_mean:}{Soil organic carbon content in the fine earth fraction (dg/kg)}
#'}
#'
#' @source
#' \describe{
#' Krause, M. D., Dias, K. O. G., Singh, A. K., and Beavis. W. D. (2022). Using large
#' soybean historical data to study genotype by environment variation and
#' identify mega-environments with the integration of genetic and non-genetic
#' factors. bioRxiv, \doi{doi:10.1101/2022.04.11.487885}
#' }
"soil"

#' Weather variables
#'
#' Weather variables obtained from NASA's Prediction of Worldwide Energy
#' Resource (\url{https://power.larc.nasa.gov/}). Krause et. al. (2022) used
#' environmental data just for the observed environments (591), but here we provide
#' data for all combinations of locations (63) and years (31), resulting in
#' information for 1,953 environments. This might give the users new opportunities of
#' data analysis. If an environment was not observed in a given year, weather
#' data was retrieved with the average planting and maturity data based on the
#' location observed data.
#'
#' @format A data frame in messy format with 504 observations on the following 5 variables:
#' \describe{
#' \item{\code{location}}{locations, 63 levels (observed locations in the historical series)}
#' \item{\code{LON}}{longitude}
#' \item{\code{LAT}}{latitude}
#' \item{\code{DOY}}{day of the year}
#' \item{\code{YYYYMMDD}}{calendar date in the format YYYY/MM/DD}
#' \item{\code{daysFromStart}}{days from average planting date}
#' \item{\code{T2M}}{daily average temperature at 2 meters}
#' \item{\code{T2M_MAX}}{daily maximum temperature at 2 meters}
#' \item{\code{T2M_MIN}}{daily minimum average temperature at 2 meters}
#' \item{\code{PRECTOT}}{rainfall precipitation}
#' \item{\code{WS2M}}{wind speed at 2 meters}
#' \item{\code{RH2M}}{relative humidity at 2 meters}
#' \item{\code{T2MDEW}}{dew point at 2 meters}
#' \item{\code{ALLSKY_SFC_LW_DWN}}{downward thermal infrared (longwave) radiative flux}
#' \item{\code{ALLSKY_SFC_SW_DWN}}{insolation incident on a horizontal surface}
#' \item{\code{n}}{duration of sunshine in hours}
#' \item{\code{VPD}}{the deficit of vapor pressure}
#' \item{\code{SPV}}{the slope of saturation vapor pressure curve}
#' \item{\code{ETP}}{evapotranspiration}
#' \item{\code{PETP}}{deficit of evapotranspiration}
#' \item{\code{GDD}}{growing degree-days}
#' \item{\code{FRUE}}{effect of temperature on radiation use efficiency}
#' \item{\code{T2M_RANGE}}{daily temperature range at 2 meters}
#' \item{\code{PTT}}{photothermal time (GDD \eqn{\times} daylight in hours)}
#' \item{\code{PTR}}{photothermal ratio (GDD / daylight in hours)}
#'}
#'
#' @source
#' \describe{
#' Krause, M. D., Dias, K. O. G., Singh, A. K., and Beavis. W. D. (2022). Using large
#' soybean historical data to study genotype by environment variation and
#' identify mega-environments with the integration of genetic and non-genetic
#' factors. bioRxiv, \doi{doi:10.1101/2022.04.11.487885}
#' }
"weather"
