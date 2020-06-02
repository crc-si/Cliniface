hpo = {
    id = 343,
    name = "Philtrum, Long",
    region = "Lip",
    synonyms = {"Elongated philtrum"; "Increased length of philtrum"; "Increased vertical dimension of philtrum"; "Vertical hyperplasia of philtrum"; "Increased height of philtrum"},
    ocrit = "Distance between the nasal bone/base and the midline upper lip vermilion border is more than 2 standard deviations above the mean.",
    scrit = "An apparently increased distance between the nasal base and the midline upper lip vermilion border.",
    remarks = "The philtrum & nose together occupy the central face zone; a change in length of one will usually be accompanied by a compensatory & opposite change in the other. A Short Nose often accompanies a Long Philtrum, but this is not always the case.",
    refs = {'<a href="https://hpo.jax.org/app/browse/term/HP:0000343">Full details and related diseases.</a>'},
    metrics = {38},
    determine = function( age, msf, msl, msr)
        return msf:metric(38):zscore(age, 0) > 2.0
    end
}

