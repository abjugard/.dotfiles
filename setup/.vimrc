" Force saving files that require root permission 
cnoremap w!! w !sudo tee > /dev/null %
