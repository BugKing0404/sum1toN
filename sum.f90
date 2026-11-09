! 程式名稱：sum1toN —— 計算 1 + 2 + ... + N
program sum1toN
  implicit none                        ! 所有變數都必須明確宣告
  integer(kind=8) :: n, i, total       ! 64 位元整數，避免大 N 溢位
  integer :: ios                       ! 讀取狀態碼
  read(*, *, iostat=ios) n             ! 從標準輸入讀入 N
  if (ios /= 0 .or. n < 1) then        ! 輸入非數字或小於 1 時
    print '(A)', 'Error: N must be a positive integer'  ! 顯示錯誤訊息
    stop 1                             ! 以錯誤碼 1 結束
  end if                               ! 輸入檢查結束
  total = 0                            ! 累加器歸零
  do i = 1, n                          ! i 從 1 跑到 N
    total = total + i                  ! 將 i 加入總和
  end do                               ! 迴圈結束
  print '(A,I0,A,I0)', 'Sum of 1 to ', n, ' = ', total  ! 輸出結果
end program sum1toN                    ! 程式結束
