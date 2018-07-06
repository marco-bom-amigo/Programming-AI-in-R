library(lubridate)

ymd("20110604")
mdy("06-04-2011")
dmy("04/06/2011")

checkin <- ymd_hms("2011-06-04 12:00:00", tz = "Pacific/Auckland") ; checkin
checkout <- ymd_hms("2011-08-10 14:00:00", tz = "Pacific/Auckland"); checkout

second(checkin)
second(checkin) <- 25
wday(checkin)
wday(checkin, label = T)
tz(checkin)

reuniao <- ymd_hms("2011-07-01 08:00:00", tz = "Pacific/Auckland")
with_tz(reuniao, "America/Sao_Paulo")

reuniao <- force_tz(reuniao, "America/Sao_Paulo")
with_tz(reuniao, "Pacific/Auckland")

estadia <- interval(checkin, checkout) 
estadia
checkout - checkin
difftime(checkout, checkin)
difftime(checkout, checkin, unit = "mins")
difftime(checkout, checkin, unit = "secs")

conferencia <- interval( ymd(20110720, tz = "Pacific/Auckland")
                       , ymd(20110831, tz = "Pacific/Auckland")
                       )
conferencia

int_overlaps(conferencia, estadia)
setdiff(estadia    , conferencia)
setdiff(conferencia, estadia    )

minutes(2)
dminutes(2)
duration(2, units = "minutes")

checkin + minutes(2)
checkin + hours(2)
checkin + years(2)

checkin + dyears(2)

estadia / ddays(1)
estadia / dhours(1)
estadia / dminutes(1)
estadia / dseconds(1)

difftime(checkout, checkin, unit = "mins")
difftime(checkout, checkin, unit = "mins") / 10

estadia / dminutes(1)

estadia / dminutes(10)

