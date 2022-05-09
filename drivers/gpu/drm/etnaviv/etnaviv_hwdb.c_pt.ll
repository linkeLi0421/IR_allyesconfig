; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/etnaviv/etnaviv_hwdb.c_pt.bc'
source_filename = "../drivers/gpu/drm/etnaviv/etnaviv_hwdb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.etnaviv_chip_identity = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.etnaviv_gpu = type { ptr, ptr, ptr, %struct.mutex, %struct.etnaviv_chip_identity, i32, ptr, %struct.drm_gpu_scheduler, i8, i8, %struct.etnaviv_cmdbuf, i32, [1 x i32], [30 x %struct.etnaviv_event], %struct.completion, %struct.spinlock, i32, %struct.mutex, %struct.idr, i32, i32, %struct.wait_queue_head, i64, %struct.spinlock, %struct.work_struct, i32, i32, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.etnaviv_cmdbuf = type { ptr, i32, ptr, i32, i32 }
%struct.etnaviv_event = type { ptr, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }

@etnaviv_chip_identities = internal constant { [4 x %struct.etnaviv_chip_identity], [112 x i8] } { [4 x %struct.etnaviv_chip_identity] [%struct.etnaviv_chip_identity { i32 1024, i32 18002, i32 458753, i32 256, i32 0, i32 -1595285500, i32 -517365761, i32 -1106005479, i32 -837746672, i32 134217729, i32 131330, i32 1179648, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 64, i32 128, i32 1, i32 8, i32 1024, i32 1, i32 256, i32 320, i32 0, i8 8 }, %struct.etnaviv_chip_identity { i32 28672, i32 25090, i32 458755, i32 0, i32 0, i32 -534217555, i32 -1052205313, i32 -17040679, i32 -342011969, i32 -301990675, i32 -619860025, i32 995803955, i32 -53550591, i32 67107439, i32 14749424, i32 8912956, i32 16448, i32 36, i32 8, i32 64, i32 512, i32 2, i32 16, i32 1024, i32 1, i32 512, i32 320, i32 0, i8 16 }, %struct.etnaviv_chip_identity { i32 28672, i32 25092, i32 -1, i32 -1, i32 0, i32 -534217587, i32 -1051156737, i32 -17040679, i32 -342011969, i32 -301990675, i32 -619860025, i32 995803955, i32 -53583872, i32 -263569, i32 14749427, i32 80216124, i32 16480, i32 36, i32 16, i32 64, i32 512, i32 2, i32 16, i32 1024, i32 1, i32 512, i32 320, i32 0, i8 16 }, %struct.etnaviv_chip_identity { i32 28672, i32 25108, i32 -1, i32 -1, i32 -1, i32 -534217555, i32 -1048994049, i32 -17040679, i32 -342011969, i32 -301990675, i32 -619860025, i32 -1151679693, i32 -57744896, i32 66845295, i32 15666928, i32 249294908, i32 -1878769072, i32 36, i32 16, i32 64, i32 1024, i32 4, i32 16, i32 1024, i32 2, i32 512, i32 320, i32 0, i8 16 }], [112 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1024, i64 28672]
@___asan_gen_.1 = private unnamed_addr constant [24 x i8] c"etnaviv_chip_identities\00", align 1
@___asan_gen_.2 = private constant [42 x i8] c"../drivers/gpu/drm/etnaviv/etnaviv_hwdb.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 8, i32 43 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @etnaviv_chip_identities], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_chip_identities to i32), i32 464, i32 576, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @etnaviv_fill_identity_from_hwdb(ptr nocapture noundef %gpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %identity = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4
  %0 = ptrtoint ptr %identity to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %identity, align 4
  %revision4 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 1
  %product_id8 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 2
  %customer_id15 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 3
  %eco_id23 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 1024, label %land.lhs.true
    i32 28672, label %land.lhs.true.1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %3 = ptrtoint ptr %revision4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %revision4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18002, i32 %4)
  %cmp5 = icmp eq i32 %4, 18002
  br i1 %cmp5, label %land.lhs.true6, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

land.lhs.true6:                                   ; preds = %land.lhs.true
  %5 = ptrtoint ptr %product_id8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %product_id8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 458753, i32 %6)
  %cmp9 = icmp eq i32 %6, 458753
  br i1 %cmp9, label %land.lhs.true13, label %land.lhs.true6.cleanup_crit_edge

land.lhs.true6.cleanup_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

land.lhs.true13:                                  ; preds = %land.lhs.true6
  %7 = ptrtoint ptr %customer_id15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %customer_id15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %8)
  %cmp16 = icmp eq i32 %8, 256
  br i1 %cmp16, label %land.lhs.true21, label %land.lhs.true13.cleanup_crit_edge

land.lhs.true13.cleanup_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

land.lhs.true21:                                  ; preds = %land.lhs.true13
  %9 = ptrtoint ptr %eco_id23 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %eco_id23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp24 = icmp eq i32 %10, 0
  br i1 %cmp24, label %land.lhs.true21.if.then_crit_edge, label %land.lhs.true21.cleanup_crit_edge

land.lhs.true21.cleanup_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

land.lhs.true21.if.then_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.3.if.then_crit_edge, %land.lhs.true21.2.if.then_crit_edge, %land.lhs.true21.1.if.then_crit_edge, %land.lhs.true21.if.then_crit_edge
  %arrayidx.lcssa = phi ptr [ @etnaviv_chip_identities, %land.lhs.true21.if.then_crit_edge ], [ getelementptr inbounds ([4 x %struct.etnaviv_chip_identity], ptr @etnaviv_chip_identities, i32 0, i32 1), %land.lhs.true21.1.if.then_crit_edge ], [ getelementptr inbounds ([4 x %struct.etnaviv_chip_identity], ptr @etnaviv_chip_identities, i32 0, i32 2), %land.lhs.true21.2.if.then_crit_edge ], [ getelementptr inbounds ([4 x %struct.etnaviv_chip_identity], ptr @etnaviv_chip_identities, i32 0, i32 3), %land.lhs.true.3.if.then_crit_edge ]
  %11 = call ptr @memcpy(ptr %identity, ptr %arrayidx.lcssa, i32 116)
  br label %cleanup

land.lhs.true.1:                                  ; preds = %entry
  %12 = ptrtoint ptr %revision4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %revision4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25090, i32 %13)
  %cmp5.1 = icmp eq i32 %13, 25090
  br i1 %cmp5.1, label %land.lhs.true6.1, label %land.lhs.true.1.land.lhs.true.2_crit_edge

land.lhs.true.1.land.lhs.true.2_crit_edge:        ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #3
  br label %land.lhs.true.2

land.lhs.true6.1:                                 ; preds = %land.lhs.true.1
  %14 = ptrtoint ptr %product_id8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %product_id8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 458755, i32 %15)
  %cmp9.1 = icmp eq i32 %15, 458755
  br i1 %cmp9.1, label %land.lhs.true13.1, label %land.lhs.true6.1.cleanup_crit_edge

land.lhs.true6.1.cleanup_crit_edge:               ; preds = %land.lhs.true6.1
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

land.lhs.true13.1:                                ; preds = %land.lhs.true6.1
  %16 = ptrtoint ptr %customer_id15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %customer_id15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp16.1 = icmp eq i32 %17, 0
  br i1 %cmp16.1, label %land.lhs.true21.1, label %land.lhs.true13.1.land.lhs.true.2thread-pre-split_crit_edge

land.lhs.true13.1.land.lhs.true.2thread-pre-split_crit_edge: ; preds = %land.lhs.true13.1
  call void @__sanitizer_cov_trace_pc() #3
  br label %land.lhs.true.2thread-pre-split

land.lhs.true21.1:                                ; preds = %land.lhs.true13.1
  %18 = ptrtoint ptr %eco_id23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %eco_id23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp24.1 = icmp eq i32 %19, 0
  br i1 %cmp24.1, label %land.lhs.true21.1.if.then_crit_edge, label %land.lhs.true21.1.land.lhs.true.2thread-pre-split_crit_edge

land.lhs.true21.1.land.lhs.true.2thread-pre-split_crit_edge: ; preds = %land.lhs.true21.1
  call void @__sanitizer_cov_trace_pc() #3
  br label %land.lhs.true.2thread-pre-split

land.lhs.true21.1.if.then_crit_edge:              ; preds = %land.lhs.true21.1
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.then

land.lhs.true.2thread-pre-split:                  ; preds = %land.lhs.true21.1.land.lhs.true.2thread-pre-split_crit_edge, %land.lhs.true13.1.land.lhs.true.2thread-pre-split_crit_edge
  %20 = ptrtoint ptr %revision4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr = load i32, ptr %revision4, align 4
  br label %land.lhs.true.2

land.lhs.true.2:                                  ; preds = %land.lhs.true.2thread-pre-split, %land.lhs.true.1.land.lhs.true.2_crit_edge
  %21 = phi i32 [ %.pr, %land.lhs.true.2thread-pre-split ], [ %13, %land.lhs.true.1.land.lhs.true.2_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 25092, i32 %21)
  %cmp5.2 = icmp eq i32 %21, 25092
  br i1 %cmp5.2, label %land.lhs.true21.2, label %land.lhs.true.2.land.lhs.true.3_crit_edge

land.lhs.true.2.land.lhs.true.3_crit_edge:        ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #3
  br label %land.lhs.true.3

land.lhs.true21.2:                                ; preds = %land.lhs.true.2
  %22 = ptrtoint ptr %eco_id23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %eco_id23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp24.2 = icmp eq i32 %23, 0
  br i1 %cmp24.2, label %land.lhs.true21.2.if.then_crit_edge, label %land.lhs.true21.2.land.lhs.true.3_crit_edge

land.lhs.true21.2.land.lhs.true.3_crit_edge:      ; preds = %land.lhs.true21.2
  call void @__sanitizer_cov_trace_pc() #3
  br label %land.lhs.true.3

land.lhs.true21.2.if.then_crit_edge:              ; preds = %land.lhs.true21.2
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.then

land.lhs.true.3:                                  ; preds = %land.lhs.true21.2.land.lhs.true.3_crit_edge, %land.lhs.true.2.land.lhs.true.3_crit_edge
  %24 = ptrtoint ptr %revision4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr68 = load i32, ptr %revision4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25108, i32 %.pr68)
  %cmp5.3 = icmp eq i32 %.pr68, 25108
  br i1 %cmp5.3, label %land.lhs.true.3.if.then_crit_edge, label %land.lhs.true.3.cleanup_crit_edge

land.lhs.true.3.cleanup_crit_edge:                ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

land.lhs.true.3.if.then_crit_edge:                ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.then

cleanup:                                          ; preds = %land.lhs.true.3.cleanup_crit_edge, %land.lhs.true6.1.cleanup_crit_edge, %if.then, %land.lhs.true21.cleanup_crit_edge, %land.lhs.true13.cleanup_crit_edge, %land.lhs.true6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %cmp53 = phi i1 [ true, %if.then ], [ false, %land.lhs.true.3.cleanup_crit_edge ], [ false, %land.lhs.true21.cleanup_crit_edge ], [ false, %land.lhs.true13.cleanup_crit_edge ], [ false, %land.lhs.true6.cleanup_crit_edge ], [ false, %land.lhs.true.cleanup_crit_edge ], [ false, %land.lhs.true6.1.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %cmp53
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #2 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @etnaviv_chip_identities, !1, !"etnaviv_chip_identities", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_hwdb.c", i32 8, i32 43}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
