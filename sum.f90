program sum1toN
  implicit none
  integer(kind=8) :: n, i, total
  integer :: ios
  read(*, *, iostat=ios) n
  if (ios /= 0 .or. n < 1) then
    print '(A)', 'Error: N must be a positive integer'
    stop 1
  end if
  total = 0
  do i = 1, n
    total = total + i
  end do
  print '(A,I0,A,I0)', 'Sum of 1 to ', n, ' = ', total
end program sum1toN
