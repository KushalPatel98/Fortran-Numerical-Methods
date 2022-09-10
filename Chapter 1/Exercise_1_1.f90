program mathOperations
    implicit none

    integer :: x, y , add, sub, mult, div
    write(*,*) 'Enter your number x: '
    read(*,*) x
    write(*,*) 'Enter your number y: '
    read(*,*) y

    add = x+y
    sub = x - y 
    mult = x*y
    div = x/y

    write(*,'(a,i3)') 'x + y =', add
    write(*,'(a,i3)') 'x - y =', sub
    write(*,'(a,i3)') 'x * y =', mult
    write(*,'(a,i3)') 'x / y =', div 

    
end program mathOperations