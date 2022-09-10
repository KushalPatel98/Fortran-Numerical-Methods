program taxFunction
    implicit none

    ! read in a real number y
    real*8 :: y , info(3)
    write (*,*) "Input your yearly income in Rubles: "
    read(*,*) y

    info = T(y)

    write(*,'(a,f12.4,x,a)') 'You owe' , info(1), 'rubles in taxes'
    write(*,'(a,f12.4)') 'Your tax to income ratio is ', info(2)
    write(*,'(a,f12.4)') 'Your marginal tax rate is ', info(3)
    
contains 
    function T(y) 
        implicit none 
        real*8, intent(in) :: y
        real*8 :: Ty, x , z , dTy
        real*8 :: T(3)

        z = (y-13469)/10000
        x = (y - 8130)/10000

        if (y >= 0 .and. y <= 8130) then
            Ty = 0
            dTy = 0
        elseif (y >= 8131 .and. y <= 13469) then
            Ty = 933.7*x**2 + 1400*x
            dTy = 2*933.7*x +1400
        elseif (y >= 13470 .and. y <= 52881) then
            Ty = (228.74*z +2397*z) + 1014
            dTy = 2*228.74*z + 2397
        elseif (y >= 52882 .and. y <= 250730) then 
            Ty = 0.24*y - 8196
            dTy = 0.24
        else 
            Ty = 0.45*y - 15718
            dTy = 0.45
        end if 

        T(1) = Ty 
        T(2) = Ty/y
        T(3) = dTy 
    end function 

end program     