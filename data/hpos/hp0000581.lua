hpo = {
    id = 581,
    name = "Blepharophimosis",
    region = "Orbital",
    synonyms = {"Narrow palpebral fissures", "Decreased width and height of palpebral fissures"},
    ocrit = "Both the length and the width (horizontal and vertical distance) of the palpebral fissures are more than 2 standard deviations below their means.",
    scrit = "A fixed reduction in the vertical distance between the upper and lower eyelids together with short palpebral fissures.",
    remarks = "Severely shortened palpebral fissures cannot be widely separated, actively or passively. This is a bundled term and is often associated with Epicanthus Inversus.",
    refs = {'<a href="https://hpo.jax.org/app/browse/term/HP:0000581">Full details and related diseases.</a>'},
    metrics = {10,87},
    determine = function( age, msf, msl, msr)
        hlz = msl:metric(10):zscore(age, 0)
        hrz = msr:metric(10):zscore(age, 0)
        h = (hlz + hrz) < -4.0  -- Short mean horizontal palpebral fissures (below 2 SD)
        vlz = msl:metric(87):zscore(age, 0)
        vrz = msr:metric(87):zscore(age, 0)
        v = (vlz + vrz) < -4.0  -- Short mean vertical palpebral fissues (below 2 SD)
        return h and v          -- Both factors present
    end
}

