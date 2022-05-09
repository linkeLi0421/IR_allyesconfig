; ModuleID = '/llk/IR_all_yes/drivers/media/usb/stk1160/stk1160-ac97.c_pt.bc'
source_filename = "../drivers/media/usb/stk1160/stk1160-ac97.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@stk1160_ac97_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016stk1160: Device doesn't support audio, skipping AC97 setup.\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stk1160_ac97_setup\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/usb/stk1160/stk1160-ac97.c\00", [55 x i8] zeroinitializer }, align 32
@stk1160_ac97_setup._entry_ptr = internal global ptr @stk1160_ac97_setup._entry, section ".printk_index", align 4
@stk1160_ac97_setup._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016stk1160: Device uses internal 8-bit ADC, skipping AC97 setup.\00", [32 x i8] zeroinitializer }, align 32
@stk1160_ac97_setup._entry_ptr.5 = internal global ptr @stk1160_ac97_setup._entry.3, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@stk1160_ac97_wait_transfer_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 36, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013stk1160: AC97 transfer took too long, this should never happen!\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"stk1160_ac97_wait_transfer_complete\00", [60 x i8] zeroinitializer }, align 32
@stk1160_ac97_wait_transfer_complete._entry_ptr = internal global ptr @stk1160_ac97_wait_transfer_complete._entry, section ".printk_index", align 4
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 126, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 131, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private constant [44 x i8] c"../drivers/media/usb/stk1160/stk1160-ac97.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 36, i32 2 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @stk1160_ac97_setup._entry, ptr @stk1160_ac97_setup._entry.3, ptr @stk1160_ac97_setup._entry_ptr, ptr @stk1160_ac97_setup._entry_ptr.5, ptr @stk1160_ac97_wait_transfer_complete._entry, ptr @stk1160_ac97_wait_transfer_complete._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_ac97_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_ac97_setup._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_ac97_wait_transfer_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @stk1160_ac97_setup(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %value.i26 = alloca i8, align 1
  %value.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #4
  %0 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %value.i, align 1, !annotation !24
  %call.i = call i32 @stk1160_read_reg(ptr noundef %dev, i16 noundef zeroext 16, ptr noundef nonnull %value.i) #4
  %1 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %value.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #4
  %3 = and i8 %2, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.not = icmp eq i8 %3, 0
  br i1 %tobool.not.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #7
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i26) #4
  %4 = ptrtoint ptr %value.i26 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %value.i26, align 1, !annotation !24
  %call.i27 = call i32 @stk1160_read_reg(ptr noundef %dev, i16 noundef zeroext 16, ptr noundef nonnull %value.i26) #4
  %5 = ptrtoint ptr %value.i26 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %value.i26, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i26) #4
  %7 = and i8 %6, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not.not = icmp eq i8 %7, 0
  br i1 %tobool3.not.not, label %if.end9, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #7
  br label %return

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call10 = call i32 @stk1160_write_reg(ptr noundef %dev, i16 noundef zeroext 1280, i16 noundef zeroext 148) #4
  %call11 = call i32 @stk1160_write_reg(ptr noundef %dev, i16 noundef zeroext 1280, i16 noundef zeroext 140) #4
  %call12 = call i32 @stk1160_write_reg(ptr noundef %dev, i16 noundef zeroext 1286, i16 noundef zeroext 1) #4
  %call13 = call i32 @stk1160_write_reg(ptr noundef %dev, i16 noundef zeroext 1287, i16 noundef zeroext 0) #4
  call fastcc void @stk1160_write_ac97(ptr noundef %dev, i16 noundef zeroext 18, i16 noundef zeroext -30712)
  call fastcc void @stk1160_write_ac97(ptr noundef %dev, i16 noundef zeroext 16, i16 noundef zeroext 2056)
  call fastcc void @stk1160_write_ac97(ptr noundef %dev, i16 noundef zeroext 14, i16 noundef zeroext 8)
  call fastcc void @stk1160_write_ac97(ptr noundef %dev, i16 noundef zeroext 22, i16 noundef zeroext 2056)
  call fastcc void @stk1160_write_ac97(ptr noundef %dev, i16 noundef zeroext 26, i16 noundef zeroext 1028)
  call fastcc void @stk1160_write_ac97(ptr noundef %dev, i16 noundef zeroext 2, i16 noundef zeroext 0)
  call fastcc void @stk1160_write_ac97(ptr noundef %dev, i16 noundef zeroext 28, i16 noundef zeroext 2056)
  br label %return

return:                                           ; preds = %if.end9, %do.end6, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stk1160_write_reg(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stk1160_write_ac97(ptr noundef %dev, i16 noundef zeroext %reg, i16 noundef zeroext %value) unnamed_addr #0 align 64 {
entry:
  %value.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @stk1160_write_reg(ptr noundef %dev, i16 noundef zeroext 1284, i16 noundef zeroext %reg) #4
  %and = and i16 %value, 255
  %call2 = tail call i32 @stk1160_write_reg(ptr noundef %dev, i16 noundef zeroext 1282, i16 noundef zeroext %and) #4
  %0 = lshr i16 %value, 8
  %call6 = tail call i32 @stk1160_write_reg(ptr noundef %dev, i16 noundef zeroext 1283, i16 noundef zeroext %0) #4
  %call7 = tail call i32 @stk1160_write_reg(ptr noundef %dev, i16 noundef zeroext 1280, i16 noundef zeroext 140) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #4
  %2 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %value.i, align 1, !annotation !24
  %add.neg.i = sub i32 -5, %1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %sub1.i = add i32 %3, %add.neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i)
  %cmp2.i = icmp slt i32 %sub1.i, 0
  br i1 %cmp2.i, label %entry.while.body.i_crit_edge, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %call1.i = call i32 @stk1160_read_reg(ptr noundef %dev, i16 noundef zeroext 1280, ptr noundef nonnull %value.i) #4
  %4 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %value.i, align 1
  %6 = and i8 %5, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %while.body.i.stk1160_ac97_wait_transfer_complete.exit_crit_edge, label %if.end.i

while.body.i.stk1160_ac97_wait_transfer_complete.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %stk1160_ac97_wait_transfer_complete.exit

if.end.i:                                         ; preds = %while.body.i
  call void @usleep_range_state(i32 noundef 50, i32 noundef 100, i32 noundef 2) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %7, %add.neg.i
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

do.end.i:                                         ; preds = %if.end.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #7
  br label %stk1160_ac97_wait_transfer_complete.exit

stk1160_ac97_wait_transfer_complete.exit:         ; preds = %do.end.i, %while.body.i.stk1160_ac97_wait_transfer_complete.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stk1160_read_reg(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/stk1160/stk1160-ac97.c", i32 126, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @stk1160_ac97_setup._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @stk1160_ac97_setup._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/usb/stk1160/stk1160-ac97.c", i32 131, i32 3}
!8 = !{ptr @stk1160_ac97_setup._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @stk1160_ac97_setup._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/stk1160/stk1160-ac97.c", i32 36, i32 2}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @stk1160_ac97_wait_transfer_complete._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @stk1160_ac97_wait_transfer_complete._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{!"auto-init"}
