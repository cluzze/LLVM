*** IR Dump After MergedLoadStoreMotion ***
; Function Attrs: norecurse nounwind readnone uwtable
define dso_local i32 @fun(i32 %0, i32 %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi i32 [ %1, %2 ], [ %6, %3 ]
  %5 = icmp slt i32 %4, 10
  %6 = add nsw i32 %4, %0
  br i1 %5, label %3, label %7

7:                                                ; preds = %3
  %8 = phi i32 [ %6, %3 ]
  ret i32 %8
}