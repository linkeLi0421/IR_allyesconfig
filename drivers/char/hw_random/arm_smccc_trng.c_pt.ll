; ModuleID = '/llk/IR_all_yes/drivers/char/hw_random/arm_smccc_trng.c_pt.bc'
source_filename = "../drivers/char/hw_random/arm_smccc_trng.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }

@__initcall__kmod_arm_smccc_trng__178_119_smccc_trng_driver_init6 = internal global ptr @smccc_trng_driver_init, section ".initcall6.init", align 4
@smccc_trng_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @smccc_trng_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_smccc_trng_driver_exit = internal global ptr @smccc_trng_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias179 = internal constant [41 x i8] c"arm_smccc_trng.alias=platform:smccc_trng\00", section ".modinfo", align 1
@__UNIQUE_ID_author180 = internal constant [37 x i8] c"arm_smccc_trng.author=Andre Przywara\00", section ".modinfo", align 1
@__UNIQUE_ID_file181 = internal constant [58 x i8] c"arm_smccc_trng.file=drivers/char/hw_random/arm_smccc_trng\00", section ".modinfo", align 1
@__UNIQUE_ID_license182 = internal constant [27 x i8] c"arm_smccc_trng.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"smccc_trng\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.2 = private unnamed_addr constant [18 x i8] c"smccc_trng_driver\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 113, i32 31 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [43 x i8] c"../drivers/char/hw_random/arm_smccc_trng.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 115, i32 12 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_alias179, ptr @__UNIQUE_ID_author180, ptr @__UNIQUE_ID_file181, ptr @__UNIQUE_ID_license182, ptr @__exitcall_smccc_trng_driver_exit, ptr @__initcall__kmod_arm_smccc_trng__178_119_smccc_trng_driver_init6, ptr @smccc_trng_driver_exit, ptr @smccc_trng_driver, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smccc_trng_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @smccc_trng_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @smccc_trng_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @smccc_trng_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @smccc_trng_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smccc_trng_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 100, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str, ptr %call.i, align 4
  %read = getelementptr inbounds %struct.hwrng, ptr %call.i, i32 0, i32 5
  %1 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @smccc_trng_read, ptr %read, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @devm_hwrng_register(ptr noundef %dev, ptr noundef nonnull %call.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smccc_trng_read(ptr nocapture noundef readnone %rng, ptr nocapture noundef writeonly %data, i32 noundef %max, i1 noundef zeroext %wait) #2 align 64 {
entry:
  %res.sroa.7 = alloca { i32, i32, i32 }, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %res.sroa.7)
  %res.sroa.7.4..sroa_idx110 = getelementptr inbounds i8, ptr %res.sroa.7, i32 4
  %res.sroa.7.8..sroa_idx112 = getelementptr inbounds i8, ptr %res.sroa.7, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max)
  %cmp104.not = icmp eq i32 %max, 0
  br i1 %cmp104.not, label %entry.cleanup59_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup59_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup59

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %entry.while.body_crit_edge
  %copied.0105 = phi i32 [ %copied.2, %cleanup.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %sub = sub i32 %max, %copied.0105
  %mul = shl i32 %sub, 3
  %0 = tail call i32 @llvm.umin.i32(i32 %mul, i32 96)
  %call = tail call i32 @arm_smccc_1_1_get_conduit() #5
  %1 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %sw.epilog.thread [
    i32 2, label %do.body
    i32 1, label %do.body6
  ]

do.body:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %2 = tail call { i32, i32, i32, i32 } asm sideeffect ".long ( (((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) << 24) & 0xFF000000) | (((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) << 8) & 0x00FF0000) | (((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) >> 8) & 0x0000FF00) | (((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) >> 24) & 0x000000FF) )\0A\09\0A", "={r0},={r1},={r2},={r3},{r0},{r1},~{memory}"(i32 -2080374701, i32 %0) #5, !srcloc !25
  br label %sw.epilog

do.body6:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %3 = tail call { i32, i32, i32, i32 } asm sideeffect ".long ( (((0xE1600070 | (((0) & 0xF) << 0)) << 24) & 0xFF000000) | (((0xE1600070 | (((0) & 0xF) << 0)) << 8) & 0x00FF0000) | (((0xE1600070 | (((0) & 0xF) << 0)) >> 8) & 0x0000FF00) | (((0xE1600070 | (((0) & 0xF) << 0)) >> 24) & 0x000000FF) )\0A\09\0A", "={r0},={r1},={r2},={r3},{r0},{r1},~{memory}"(i32 -2080374701, i32 %0) #5, !srcloc !26
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "", "{r0},{r1},~{memory}"(i32 -2080374701, i32 %0) #5, !srcloc !27
  br label %cleanup59

sw.epilog:                                        ; preds = %do.body6, %do.body
  %.pn = phi { i32, i32, i32, i32 } [ %3, %do.body6 ], [ %2, %do.body ]
  %res.sroa.0.0 = extractvalue { i32, i32, i32, i32 } %.pn, 0
  %storemerge99 = extractvalue { i32, i32, i32, i32 } %.pn, 1
  %4 = ptrtoint ptr %res.sroa.7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %storemerge99, ptr %res.sroa.7, align 4
  %storemerge97 = extractvalue { i32, i32, i32, i32 } %.pn, 2
  %5 = ptrtoint ptr %res.sroa.7.4..sroa_idx110 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %storemerge97, ptr %res.sroa.7.4..sroa_idx110, align 4
  %storemerge = extractvalue { i32, i32, i32, i32 } %.pn, 3
  %6 = ptrtoint ptr %res.sroa.7.8..sroa_idx112 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %storemerge, ptr %res.sroa.7.8..sroa_idx112, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.sroa.0.0)
  %cmp42 = icmp slt i32 %res.sroa.0.0, 0
  br i1 %cmp42, label %cleanup59.loopexit.split.loop.exit, label %if.end45

if.end45:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.sroa.0.0)
  %cond = icmp eq i32 %res.sroa.0.0, 0
  br i1 %cond, label %sw.bb47, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb47:                                          ; preds = %if.end45
  %add.ptr = getelementptr i8, ptr %data, i32 %copied.0105
  %div81 = lshr exact i32 %0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.i = icmp eq i32 %0, 0
  br i1 %cmp.i, label %sw.bb47.copy_from_registers.exit_crit_edge, label %if.end.i

sw.bb47.copy_from_registers.exit_crit_edge:       ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #7
  br label %copy_from_registers.exit

if.end.i:                                         ; preds = %sw.bb47
  %7 = tail call i32 @llvm.umin.i32(i32 %div81, i32 4) #5
  %8 = call ptr @memcpy(ptr %add.ptr, ptr %res.sroa.7.8..sroa_idx112, i32 %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %0)
  %cmp2.not.i = icmp ugt i32 %0, 32
  br i1 %cmp2.not.i, label %if.end4.i, label %if.end.i.copy_from_registers.exit_crit_edge

if.end.i.copy_from_registers.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %copy_from_registers.exit

if.end4.i:                                        ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 %div81, %7
  %9 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 4) #5
  %arrayidx.i = getelementptr i8, ptr %add.ptr, i32 %7
  %10 = call ptr @memcpy(ptr %arrayidx.i, ptr %res.sroa.7.4..sroa_idx110, i32 %9)
  %add.i = add nuw nsw i32 %9, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %div81, i32 %add.i)
  %cmp11.not.i = icmp ugt i32 %div81, %add.i
  br i1 %cmp11.not.i, label %if.end13.i, label %if.end4.i.copy_from_registers.exit_crit_edge

if.end4.i.copy_from_registers.exit_crit_edge:     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %copy_from_registers.exit

if.end13.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub14.i = sub nsw i32 %div81, %add.i
  %11 = tail call i32 @llvm.umin.i32(i32 %sub14.i, i32 4) #5
  %arrayidx21.i = getelementptr i8, ptr %add.ptr, i32 %add.i
  %12 = call ptr @memcpy(ptr %arrayidx21.i, ptr %res.sroa.7, i32 %11)
  %add22.i = add nuw nsw i32 %11, %add.i
  br label %copy_from_registers.exit

copy_from_registers.exit:                         ; preds = %if.end13.i, %if.end4.i.copy_from_registers.exit_crit_edge, %if.end.i.copy_from_registers.exit_crit_edge, %sw.bb47.copy_from_registers.exit_crit_edge
  %retval.0.i = phi i32 [ %add22.i, %if.end13.i ], [ 0, %sw.bb47.copy_from_registers.exit_crit_edge ], [ %7, %if.end.i.copy_from_registers.exit_crit_edge ], [ %add.i, %if.end4.i.copy_from_registers.exit_crit_edge ]
  %add = add i32 %retval.0.i, %copied.0105
  br label %cleanup

cleanup:                                          ; preds = %copy_from_registers.exit, %if.end45.cleanup_crit_edge
  %copied.2 = phi i32 [ %copied.0105, %if.end45.cleanup_crit_edge ], [ %add, %copy_from_registers.exit ]
  %cmp = icmp ult i32 %copied.2, %max
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.cleanup59_crit_edge

cleanup.cleanup59_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup59

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

cleanup59.loopexit.split.loop.exit:               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %res.sroa.0.0.le = extractvalue { i32, i32, i32, i32 } %.pn, 0
  br label %cleanup59

cleanup59:                                        ; preds = %cleanup59.loopexit.split.loop.exit, %cleanup.cleanup59_crit_edge, %sw.epilog.thread, %entry.cleanup59_crit_edge
  %retval.2 = phi i32 [ -1, %sw.epilog.thread ], [ 0, %entry.cleanup59_crit_edge ], [ %res.sroa.0.0.le, %cleanup59.loopexit.split.loop.exit ], [ %copied.2, %cleanup.cleanup59_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %res.sroa.7)
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_hwrng_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_smccc_1_1_get_conduit() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @__initcall__kmod_arm_smccc_trng__178_119_smccc_trng_driver_init6, !1, !"__initcall__kmod_arm_smccc_trng__178_119_smccc_trng_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/char/hw_random/arm_smccc_trng.c", i32 119, i32 1}
!2 = !{ptr @__exitcall_smccc_trng_driver_exit, !1, !"__exitcall_smccc_trng_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias179, !4, !"__UNIQUE_ID_alias179", i1 false, i1 false}
!4 = !{!"../drivers/char/hw_random/arm_smccc_trng.c", i32 121, i32 1}
!5 = !{ptr @__UNIQUE_ID_author180, !6, !"__UNIQUE_ID_author180", i1 false, i1 false}
!6 = !{!"../drivers/char/hw_random/arm_smccc_trng.c", i32 122, i32 1}
!7 = !{ptr @__UNIQUE_ID_file181, !8, !"__UNIQUE_ID_file181", i1 false, i1 false}
!8 = !{!"../drivers/char/hw_random/arm_smccc_trng.c", i32 123, i32 1}
!9 = !{ptr @__UNIQUE_ID_license182, !8, !"__UNIQUE_ID_license182", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/char/hw_random/arm_smccc_trng.c", i32 115, i32 12}
!12 = !{ptr @smccc_trng_driver, !13, !"smccc_trng_driver", i1 false, i1 false}
!13 = !{!"../drivers/char/hw_random/arm_smccc_trng.c", i32 113, i32 31}
!14 = distinct !{null, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/char/hw_random/arm_smccc_trng.c", i32 89, i32 4}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i64 2152292395, i64 2152292725}
!26 = !{i64 2152296221, i64 2152296471}
!27 = !{i64 2152297758}
