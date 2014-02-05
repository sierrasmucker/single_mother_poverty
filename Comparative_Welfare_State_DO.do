****Welfare State Data*******

# File to use

use "C:\Users\Sierra\Documents\GitHub\single_mother_poverty\Comparative_Welfare_State.dta" 

# Desctiptive statistics

#Summary by country
bysort idn: su fempar
bysort idn: su pre_singm
bysort idn: su rtvote
bysort idn: su flabfo
bysort idn: su fevemp

#missing data
bysort idn: misschk lisrpr_smf


# Pre taxes and transfers single mother poverty
xtline pre_singm if idn == 1|4|7|10|11|18|19|20|21|22, t(year) i(id)

# Percentage of population voting for conservative party 
xtline rtvote  rtcab rtmaj, t(year) i(idn)

# Graph single mother poverty and all female poverty  
xtline  rtcab rtmaj, t(year) i(idn)

