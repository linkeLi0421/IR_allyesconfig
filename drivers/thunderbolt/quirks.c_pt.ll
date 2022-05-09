; ModuleID = '/llk/IR_all_yes/drivers/thunderbolt/quirks.c_pt.bc'
source_filename = "../drivers/thunderbolt/quirks.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.tb_switch = type { %struct.device, %struct.tb_regs_switch_header, ptr, ptr, %struct.tb_switch_tmu, ptr, i64, ptr, i16, i16, ptr, ptr, i32, i32, i8, i32, i32, i32, i32, i32, i8, ptr, ptr, i8, i8, i8, i8, i32, i32, ptr, ptr, i8, i8, i8, i8, %struct.completion, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.tb_regs_switch_header = type <{ i16, i16, i32, i32, i64 }>
%struct.tb_switch_tmu = type { i32, i8, i32, i8, i8, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.tb = type { %struct.device, %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [0 x i32] }
%struct.tb_nhi = type { %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.ida, i8, %struct.work_struct, i32, i32 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }

@quirk_dp_credit_allocation.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 4, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"thunderbolt\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"quirk_dp_credit_allocation\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/thunderbolt/quirks.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%llx: quirked DP main: %u\0A\00", [37 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private constant [32 x i8] c"../drivers/thunderbolt/quirks.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 19, i32 3 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tb_check_quirks(ptr nocapture noundef %sw) local_unnamed_addr #0 align 64 {
land.lhs.true19:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1
  %device_id = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 1
  %vendor22 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 8
  %0 = ptrtoint ptr %vendor22 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vendor22, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 212, i16 %1)
  %cmp24.not = icmp eq i16 %1, 212
  br i1 %cmp24.not, label %land.lhs.true30, label %land.lhs.true19.land.lhs.true.2_crit_edge

land.lhs.true19.land.lhs.true.2_crit_edge:        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.lhs.true.2

land.lhs.true30:                                  ; preds = %land.lhs.true19
  %device33 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 9
  %2 = ptrtoint ptr %device33 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device33, align 2
  %4 = and i16 %3, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -20368, i16 %4)
  %switch = icmp eq i16 %4, -20368
  br i1 %switch, label %land.lhs.true.2.sink.split, label %land.lhs.true30.land.lhs.true.2_crit_edge

land.lhs.true30.land.lhs.true.2_crit_edge:        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.lhs.true.2

land.lhs.true.2.sink.split:                       ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #4
  %quirks.i65 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 36
  %5 = ptrtoint ptr %quirks.i65 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %quirks.i65, align 4
  %or.i = or i32 %6, 1
  store i32 %or.i, ptr %quirks.i65, align 4
  br label %land.lhs.true.2

land.lhs.true.2:                                  ; preds = %land.lhs.true.2.sink.split, %land.lhs.true30.land.lhs.true.2_crit_edge, %land.lhs.true19.land.lhs.true.2_crit_edge
  %7 = ptrtoint ptr %config to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %config, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32633, i16 %8)
  %cmp4.not.2 = icmp eq i16 %8, -32633
  br i1 %cmp4.not.2, label %land.lhs.true8.2, label %land.lhs.true.2.cleanup.2_crit_edge

land.lhs.true.2.cleanup.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.2

land.lhs.true8.2:                                 ; preds = %land.lhs.true.2
  %9 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %device_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2854, i16 %10)
  %cmp13.not.2 = icmp eq i16 %10, 2854
  br i1 %cmp13.not.2, label %if.end38.2, label %land.lhs.true8.2.cleanup.2_crit_edge

land.lhs.true8.2.cleanup.2_crit_edge:             ; preds = %land.lhs.true8.2
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.2

if.end38.2:                                       ; preds = %land.lhs.true8.2
  %credit_allocation.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 37
  %11 = ptrtoint ptr %credit_allocation.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %credit_allocation.i, align 8, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %if.end38.2.cleanup.2_crit_edge, label %land.lhs.true.i

if.end38.2.cleanup.2_crit_edge:                   ; preds = %if.end38.2
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.2

land.lhs.true.i:                                  ; preds = %if.end38.2
  %min_dp_main_credits.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 40
  %13 = ptrtoint ptr %min_dp_main_credits.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %min_dp_main_credits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %14)
  %cmp.i = icmp eq i32 %14, 56
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.cleanup.2_crit_edge

land.lhs.true.i.cleanup.2_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.2

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  %15 = ptrtoint ptr %min_dp_main_credits.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 18, ptr %min_dp_main_credits.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @quirk_dp_credit_allocation.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_check_quirks, %if.then6.i)) #2
          to label %cleanup.2 [label %if.then6.i], !srcloc !18

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  %tb.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %16 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tb.i, align 8
  %nhi.i = getelementptr inbounds %struct.tb, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %nhi.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nhi.i, align 4
  %pdev.i = getelementptr inbounds %struct.tb_nhi, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %22 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i, align 4
  %23 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %23, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %24 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %25 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %26 = ptrtoint ptr %min_dp_main_credits.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %min_dp_main_credits.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @quirk_dp_credit_allocation.__UNIQUE_ID_ddebug236, ptr noundef %dev.i, ptr noundef nonnull @.str.3, i64 noundef %or.i.i, i32 noundef %27) #2
  br label %cleanup.2

cleanup.2:                                        ; preds = %if.then6.i, %if.then.i, %land.lhs.true.i.cleanup.2_crit_edge, %if.end38.2.cleanup.2_crit_edge, %land.lhs.true8.2.cleanup.2_crit_edge, %land.lhs.true.2.cleanup.2_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !{null, !1, !"tb_quirks", i1 false, i1 false}
!1 = !{!"../drivers/thunderbolt/quirks.c", i32 31, i32 30}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/thunderbolt/quirks.c", i32 19, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @quirk_dp_credit_allocation.__UNIQUE_ID_ddebug236, !3, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i8 0, i8 2}
!18 = !{i64 2148228746, i64 2148228751, i64 2148228764, i64 2148228808, i64 2148228842, i64 2148228863}
