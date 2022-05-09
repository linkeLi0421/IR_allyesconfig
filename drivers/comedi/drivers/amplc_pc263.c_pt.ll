; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/amplc_pc263.c_pt.bc'
source_filename = "../drivers/comedi/drivers/amplc_pc263.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.comedi_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.pc263_board = type { ptr }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.comedi_devconfig = type { [20 x i8], [32 x i32] }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }

@__initcall__kmod_amplc_pc263__229_98_amplc_pc263_driver_init6 = internal global ptr @amplc_pc263_driver_init, section ".initcall6.init", align 4
@amplc_pc263_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr @pc263_attach, ptr @comedi_legacy_detach, ptr null, i32 1, ptr @pc263_boards, i32 4 }, [60 x i8] zeroinitializer }, align 32
@__exitcall_amplc_pc263_driver_exit = internal global ptr @amplc_pc263_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author230 = internal constant [49 x i8] c"amplc_pc263.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [69 x i8] c"amplc_pc263.description=Comedi driver for Amplicon PC263 relay board\00", section ".modinfo", align 1
@__UNIQUE_ID_file232 = internal constant [52 x i8] c"amplc_pc263.file=drivers/comedi/drivers/amplc_pc263\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [24 x i8] c"amplc_pc263.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"amplc_pc263\00", [20 x i8] zeroinitializer }, align 32
@pc263_boards = internal constant { [1 x %struct.pc263_board], [28 x i8] } { [1 x %struct.pc263_board] [%struct.pc263_board { ptr @.str.1 }], [28 x i8] zeroinitializer }, align 32
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pc263\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [19 x i8] c"amplc_pc263_driver\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 88, i32 29 }
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 89, i32 17 }
@___asan_gen_.8 = private unnamed_addr constant [13 x i8] c"pc263_boards\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 38, i32 33 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private constant [40 x i8] c"../drivers/comedi/drivers/amplc_pc263.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 40, i32 11 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__exitcall_amplc_pc263_driver_exit, ptr @__initcall__kmod_amplc_pc263__229_98_amplc_pc263_driver_init6, ptr @amplc_pc263_driver_exit, ptr @amplc_pc263_driver, ptr @.str, ptr @pc263_boards, ptr @.str.1], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amplc_pc263_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc263_boards to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @amplc_pc263_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_driver_register(ptr noundef nonnull @amplc_pc263_driver) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @amplc_pc263_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @comedi_driver_unregister(ptr noundef nonnull @amplc_pc263_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pc263_attach(ptr noundef %dev, ptr nocapture noundef readonly %it) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %options = getelementptr inbounds %struct.comedi_devconfig, ptr %it, i32 0, i32 1
  %0 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %options, align 4
  %call = tail call i32 @comedi_request_region(ptr noundef %dev, i32 noundef %1, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %2 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 131072, ptr %subdev_flags, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16, ptr %n_chan, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 13
  %7 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %maxdata, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 15
  %8 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @range_unipolar5, ptr %range_table, align 4
  %insn_bits = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 20
  %9 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @pc263_do_insn_bits, ptr %insn_bits, align 4
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %10 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iobase, align 4
  %and = and i32 %11, 1048575
  %add6 = or i32 %and, -18874368
  %12 = inttoptr i32 %add6 to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #3, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  %conv = zext i8 %13 to i32
  %14 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iobase, align 4
  %add11 = add i32 %15, 1
  %and12 = and i32 %add11, 1048575
  %add13 = or i32 %and12, -18874368
  %16 = inttoptr i32 %add13 to ptr
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #3, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  %conv17 = zext i8 %17 to i32
  %shl = shl nuw nsw i32 %conv17, 8
  %or = or i32 %shl, %conv
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 29
  %18 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_legacy_detach(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_request_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pc263_do_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !30
  tail call void @arm_heavy_mb() #3
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %conv = trunc i32 %1 to i8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase, align 4
  %and1 = and i32 %3, 1048575
  %add2 = or i32 %and1, -18874368
  %4 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %conv) #3, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !32
  tail call void @arm_heavy_mb() #3
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  %shr = lshr i32 %6, 8
  %conv8 = trunc i32 %shr to i8
  %7 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase, align 4
  %add10 = add i32 %8, 1
  %and11 = and i32 %add10, 1048575
  %add12 = or i32 %and11, -18874368
  %9 = inttoptr i32 %add12 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %conv8) #3, !srcloc !31
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %state14 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %10 = ptrtoint ptr %state14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state14, align 4
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %13 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n, align 4
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @__initcall__kmod_amplc_pc263__229_98_amplc_pc263_driver_init6, !1, !"__initcall__kmod_amplc_pc263__229_98_amplc_pc263_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/amplc_pc263.c", i32 98, i32 1}
!2 = !{ptr @__exitcall_amplc_pc263_driver_exit, !1, !"__exitcall_amplc_pc263_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author230, !4, !"__UNIQUE_ID_author230", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/amplc_pc263.c", i32 100, i32 1}
!5 = !{ptr @__UNIQUE_ID_description231, !6, !"__UNIQUE_ID_description231", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/amplc_pc263.c", i32 101, i32 1}
!7 = !{ptr @__UNIQUE_ID_file232, !8, !"__UNIQUE_ID_file232", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/amplc_pc263.c", i32 102, i32 1}
!9 = !{ptr @__UNIQUE_ID_license233, !8, !"__UNIQUE_ID_license233", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/amplc_pc263.c", i32 89, i32 17}
!12 = !{ptr @amplc_pc263_driver, !13, !"amplc_pc263_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/amplc_pc263.c", i32 88, i32 29}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/amplc_pc263.c", i32 40, i32 11}
!16 = !{ptr @pc263_boards, !17, !"pc263_boards", i1 false, i1 false}
!17 = !{!"../drivers/comedi/drivers/amplc_pc263.c", i32 38, i32 33}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i64 6259604}
!28 = !{i64 2153902892}
!29 = !{i64 2153903194}
!30 = !{i64 2153902066}
!31 = !{i64 6259209}
!32 = !{i64 2153902436}
