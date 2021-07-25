
if keyboard_check_pressed(vk_anykey)
{keyspressed += 3}

txtlineone = txtone
txtlinetwo = txttwo+" "+txtthree+" "
txtlinethree = txtthree
txtlinefour = txtfour
txtlinefive = txtfive

typedtxtone = string_copy(txtlineone,1,keyspressed)
typedtxttwo = string_copy(txtlinetwo,1,keyspressed-string_length(txtlineone))
typedtxtthree = string_copy(txtlinethree,1,keyspressed-(string_length(txtlineone)+string_length(txtlinetwo)))
typedtxtfour = string_copy(txtlinefour,1,keyspressed-(string_length(txtlineone)+string_length(txtlinetwo)+string_length(txtlinethree)))
typedtxtfive = string_copy(txtlinefive,1,keyspressed-(string_length(txtlineone)+string_length(txtlinetwo)+string_length(txtlinethree)+string_length(txtlinefour)))

