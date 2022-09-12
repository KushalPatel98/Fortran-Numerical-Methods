program fib
    implicit none

    integer :: n, fib_n
    write(*,*) 'Input an integer: ' 
    read(*,*) n

    fib_n = fib(n)
    write(*,'(a,i5)') 'The nth fibonacci number is ' ,fib_n


contains
    function fibonacci(n) 
        implicit none 
        integer, intent(in) :: n
        integer :: a_n1 , a_n2, a_n, temp, i
        a_n1 = 1 
        a_n2 = 1

        a_n = 2

        if (n > 2) then
            do i = 3, n
                temp = a_n
                a_n = a_n1 + a_n2

                a_n2 = a_n1
                a_n1 = temp

            end do
        end if
        fibonacci = a_n 
    
        
    end function 
end program fib 