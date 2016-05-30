dummy()
{
    :
}

declare -A patterns=(
    ['en_US.UTF-8']='is a function'
    ['fr_FR.UTF-8']='est une fonction'
)

describe "Multi lang support on travis CI"
    it "should pass for ${LANGUAGE}"        
        assert present "$(type dummy | grep -oe "${patterns[${LANGUAGE}]}")"
    end
end