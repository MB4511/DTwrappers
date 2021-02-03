#' dt.first.k.rows
#'
#' @description This function returns the first k rows from the given data.  It is built as a wrapper function of data.table's filter (the i step).  This calculation can be specified either overall or in groups.  A filter can also be applied so that only qualifying values would be considered.  A subset of the variables may also be selected.  Options also exist to return a data.table coding statement (result = "code") for educational purposes or both the result and the code together (result = "all").  For examples, please see the vignette.
#'
#'#' @param dt.name a character value specifying the name of a data.frame or data.table object to select data from.
#' @param the.filter a character value, logical vector, or expression stating the logical operations used to filter the data.  See create.filter.expression for details.  The filtering step will be applied prior to generating the counts.  Defaults to NULL unless otherwise specified.
#' @param grouping.variables  a character vector specifying the variables to group by in the calculation.  Only variables in the data will be used.  When NULL, no grouping will be performed.
#' @param grouping.type  a character value specifying whether the grouping should be sorted ("keyby") or as is ("by").  Defaults to "keyby" unless "by" is specified.
#' @param count.name  a character value specifying the name of the column of counts in the resulting table.  This value defaults to "N" unless otherwise specified.
#' @param return.as a character value specifying what output should be returned.  return.as = "result" provides the resulting table.  return.as = "code" provides a data.table coding statement that can generate the resulting table.  return.as = "all" provides both the resulting table and the code.  If the coding statement was specified using calls to get() or eval(), then both an original.statement and the resulting code (a translated statement from the getDTeval package) will be provided.
#' @param envir the environment in which the code would be evaluated; .GlobalEnv by default.
#' @param ... additional arguments to be passed
#' @note  Calls dt.choose.cols.R with first.k = k.
#'
#' @import formulaic
#' @export
#'
#' @examples
#'
#' @source DTwrappers::dt.choose.cols
#' @export
dt.first.k.rows <-
  function(dt.name,
           k = NULL,
           the.variables = ".",
           the.filter = NULL,
           grouping.variables = NULL,
           sortby.group = TRUE, 
           return.as = "result", 
           envir = .GlobalEnv,
           ...) {
    return(
      dt.choose.cols(
        dt.name = dt.name,
        the.variables = the.variables,
        the.filter = the.filter,
        grouping.variables = grouping.variables,
        sortby.group = sortby.group,
        first.k = k, return.as = return.as, envir = envir,
        ...
      )
    )
  }



#' dt.last.k.rows
#'
#' @description This function returns the last k rows from the given data.  It is built as a wrapper function of data.table's filter (the i step).  This calculation can be specified either overall or in groups.  A filter can also be applied so that only qualifying values would be considered.  A subset of the variables may also be selected.  Options also exist to return a data.table coding statement (result = "code") for educational purposes or both the result and the code together (result = "all").  For examples, please see the vignette.
#'
#' @param dt.name a character value specifying the name of a data.frame or data.table object to select data from.
#' @param the.filter a character value, logical vector, or expression stating the logical operations used to filter the data.  See create.filter.expression for details.  The filtering step will be applied prior to generating the counts.  Defaults to NULL unless otherwise specified.
#' @param grouping.variables  a character vector specifying the variables to group by in the calculation.  Only variables in the data will be used.  When NULL, no grouping will be performed.
#' @param grouping.type  a character value specifying whether the grouping should be sorted ("keyby") or as is ("by").  Defaults to "keyby" unless "by" is specified.
#' @param count.name  a character value specifying the name of the column of counts in the resulting table.  This value defaults to "N" unless otherwise specified.
#' @param return.as a character value specifying what output should be returned.  return.as = "result" provides the resulting table.  return.as = "code" provides a data.table coding statement that can generate the resulting table.  return.as = "all" provides both the resulting table and the code.  If the coding statement was specified using calls to get() or eval(), then both an original.statement and the resulting code (a translated statement from the getDTeval package) will be provided.
#' @param envir the environment in which the code would be evaluated; .GlobalEnv by default.
#' @param  ... additional arguments to be passed
#' @note  Calls dt.choose.cols.R with last.k = k.
#' @import formulaic
#' @export
#' @examples
#'
#' id.name = "User ID"
#' age.name = "Age"
#' product.name = "Product"
#' gender.name  = "Gender"
#' region.name = "Region"
#'
#' dt.last.k.rows(dt.name = "snack.dat", 
#' k = 2, 
#' the.variables = c(id.name, age.name, product.name), 
#' grouping.variables = gender.name, 
#' grouping.type = "by")
#'
#' dt.last.k.rows(dt.name = "snack.dat", 
#' k = 1, 
#' the.variables = c(id.name, age.name, product.name), 
#' grouping.variables = c(gender.name, region.name), 
#' grouping.type = "keyby", return.as = "all")
#'
#' @source DTwrappers::dt.choose.cols
#' @export
dt.last.k.rows <-
  function(dt.name,
           k = NULL,
           the.variables = ".",
           the.filter = NULL,
           grouping.variables = NULL,
           sortby.group = TRUE, 
           return.as = "result", 
           envir = .GlobalEnv,
           ...) {
    return(
      dt.choose.cols(
        dt.name = dt.name,
        the.variables = the.variables,
        the.filter = the.filter,
        grouping.variables = grouping.variables,
        sortby.group = sortby.group,
        last.k = k, return.as = return.as, envir = envir,
        ...)
    )
  }
