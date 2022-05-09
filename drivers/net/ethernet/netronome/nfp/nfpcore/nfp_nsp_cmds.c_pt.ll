; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp_cmds.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp_cmds.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.nsp_identify = type { [40 x i8], i8, i8, i8, i8, i16, i16, i16, [6 x i8], i64 }
%struct.nfp_nsp_identify = type { [40 x i8], i8, i8, i8, i8, i16, i16, i16, i64 }
%struct.nfp_sensors = type { i32, i32, i32, i32 }

@__nfp_nsp_identify._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 39, ptr @.str.3, ptr @.str.4 }, align 1
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"nfp: reading bsp version failed %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__nfp_nsp_identify\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp_cmds.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@__nfp_nsp_identify._entry_ptr = internal global ptr @__nfp_nsp_identify._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private constant [61 x i8] c"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp_cmds.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 38, i32 3 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__nfp_nsp_identify._entry, ptr @__nfp_nsp_identify._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @__nfp_nsp_identify(ptr noundef %nsp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i16 @nfp_nsp_get_abi_ver_minor(ptr noundef %nsp) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %call)
  %cmp = icmp ult i16 %call, 15
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 64) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @nfp_nsp_read_identify(ptr noundef %nsp, ptr noundef nonnull %call7.i.i, i32 noundef 64) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call ptr @nfp_nsp_cpp(ptr noundef %nsp) #6
  %call10 = tail call ptr @nfp_cpp_device(ptr noundef %call9) #6
  %parent = getelementptr inbounds %struct.device, ptr %call10, i32 0, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef %call5) #10
  br label %exit_free

if.end11:                                         ; preds = %if.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i55 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 64) #9
  %tobool13.not = icmp eq ptr %call7.i.i55, null
  br i1 %tobool13.not, label %if.end11.exit_free_crit_edge, label %if.end15

if.end11.exit_free_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_free

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %4 = call ptr @memcpy(ptr %call7.i.i55, ptr %call7.i.i, i32 40)
  %arrayidx = getelementptr [40 x i8], ptr %call7.i.i55, i32 0, i32 39
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx, align 1
  %flags = getelementptr inbounds %struct.nsp_identify, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %flags, align 8
  %flags19 = getelementptr inbounds %struct.nfp_nsp_identify, ptr %call7.i.i55, i32 0, i32 1
  %8 = ptrtoint ptr %flags19 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %flags19, align 8
  %br_primary = getelementptr inbounds %struct.nsp_identify, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %br_primary to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %br_primary, align 1
  %br_primary20 = getelementptr inbounds %struct.nfp_nsp_identify, ptr %call7.i.i55, i32 0, i32 2
  %11 = ptrtoint ptr %br_primary20 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %br_primary20, align 1
  %br_secondary = getelementptr inbounds %struct.nsp_identify, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %br_secondary to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %br_secondary, align 2
  %br_secondary21 = getelementptr inbounds %struct.nfp_nsp_identify, ptr %call7.i.i55, i32 0, i32 3
  %14 = ptrtoint ptr %br_secondary21 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %br_secondary21, align 2
  %br_nsp = getelementptr inbounds %struct.nsp_identify, ptr %call7.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %br_nsp to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %br_nsp, align 1
  %br_nsp22 = getelementptr inbounds %struct.nfp_nsp_identify, ptr %call7.i.i55, i32 0, i32 4
  %17 = ptrtoint ptr %br_nsp22 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %br_nsp22, align 1
  %primary = getelementptr inbounds %struct.nsp_identify, ptr %call7.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %primary to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %primary, align 4
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %primary23 = getelementptr inbounds %struct.nfp_nsp_identify, ptr %call7.i.i55, i32 0, i32 5
  %21 = ptrtoint ptr %primary23 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %primary23, align 4
  %secondary = getelementptr inbounds %struct.nsp_identify, ptr %call7.i.i, i32 0, i32 6
  %22 = ptrtoint ptr %secondary to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %secondary, align 2
  %24 = tail call i16 @llvm.bswap.i16(i16 %23)
  %secondary24 = getelementptr inbounds %struct.nfp_nsp_identify, ptr %call7.i.i55, i32 0, i32 6
  %25 = ptrtoint ptr %secondary24 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %secondary24, align 2
  %nsp25 = getelementptr inbounds %struct.nsp_identify, ptr %call7.i.i, i32 0, i32 7
  %26 = ptrtoint ptr %nsp25 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %nsp25, align 8
  %28 = tail call i16 @llvm.bswap.i16(i16 %27)
  %nsp26 = getelementptr inbounds %struct.nfp_nsp_identify, ptr %call7.i.i55, i32 0, i32 7
  %29 = ptrtoint ptr %nsp26 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %nsp26, align 8
  %sensor_mask = getelementptr inbounds %struct.nsp_identify, ptr %call7.i.i, i32 0, i32 9
  %30 = ptrtoint ptr %sensor_mask to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %sensor_mask, align 8
  %32 = tail call i64 @llvm.bswap.i64(i64 %31)
  %sensor_mask27 = getelementptr inbounds %struct.nfp_nsp_identify, ptr %call7.i.i55, i32 0, i32 8
  %33 = ptrtoint ptr %sensor_mask27 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %sensor_mask27, align 8
  br label %exit_free

exit_free:                                        ; preds = %if.end15, %if.end11.exit_free_crit_edge, %do.end
  %nspi.0 = phi ptr [ null, %do.end ], [ %call7.i.i55, %if.end15 ], [ null, %if.end11.exit_free_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %exit_free, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %nspi.0, %exit_free ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nfp_nsp_get_abi_ver_minor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_nsp_read_identify(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_cpp_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_nsp_cpp(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_hwmon_read_sensor(ptr noundef %cpp, i32 noundef %id, ptr nocapture noundef writeonly %val) local_unnamed_addr #0 align 64 {
entry:
  %s = alloca %struct.nfp_sensors, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %s) #6
  %0 = getelementptr inbounds %struct.nfp_sensors, ptr %s, i32 0, i32 1
  %1 = getelementptr inbounds %struct.nfp_sensors, ptr %s, i32 0, i32 2
  %2 = getelementptr inbounds %struct.nfp_sensors, ptr %s, i32 0, i32 3
  %3 = call ptr @memset(ptr %s, i32 255, i32 16)
  %call = tail call ptr @nfp_nsp_open(ptr noundef %cpp) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %shl = shl nuw i32 1, %id
  %call3 = call i32 @nfp_nsp_read_sensors(ptr noundef %call, i32 noundef %shl, ptr noundef nonnull %s, i32 noundef 16) #6
  call void @nfp_nsp_close(ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %5 = zext i32 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %id, label %if.end5.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
    i32 2, label %sw.bb7
    i32 3, label %sw.bb8
  ]

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s, align 4
  %8 = call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %val, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %0, align 4
  %12 = call i32 @llvm.bswap.i32(i32 %11)
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %val, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 4
  %16 = call i32 @llvm.bswap.i32(i32 %15)
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %val, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %2, align 4
  %20 = call i32 @llvm.bswap.i32(i32 %19)
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %call3, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ 0, %sw.bb8 ], [ 0, %sw.bb7 ], [ 0, %sw.bb6 ], [ 0, %sw.bb ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %s) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_nsp_open(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_nsp_read_sensors(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_nsp_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp_cmds.c", i32 38, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @__nfp_nsp_identify._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @__nfp_nsp_identify._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
