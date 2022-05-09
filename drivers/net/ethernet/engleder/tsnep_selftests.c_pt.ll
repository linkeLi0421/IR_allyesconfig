; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/engleder/tsnep_selftests.c_pt.bc'
source_filename = "../drivers/net/ethernet/engleder/tsnep_selftests.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tc_taprio_qopt_offload = type { i8, i64, i64, i64, i32, [0 x %struct.tc_taprio_sched_entry] }
%struct.tc_taprio_sched_entry = type { i8, i32, i32 }
%struct.ethtool_test = type { i32, i32, i32, i32, [0 x i64] }
%struct.tsnep_adapter = type { ptr, [6 x i8], ptr, i8, i32, ptr, i32, ptr, ptr, ptr, i32, i8, %struct.mutex, i8, [2 x %struct.tsnep_gcl], i32, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, %struct.spinlock, i32, [8 x %struct.tsnep_tx], i32, [8 x %struct.tsnep_rx], i32, [8 x %struct.tsnep_queue] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.26 }
%union.anon.26 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tsnep_gcl = type { ptr, i64, i64, i64, [256 x %struct.tsnep_gcl_operation], i32, i64, i64, i8 }
%struct.tsnep_gcl_operation = type { i32, i32 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.25 }
%union.anon.25 = type { %struct.raw_spinlock }
%struct.tsnep_tx = type { ptr, ptr, [16 x ptr], [16 x i32], %struct.spinlock, [256 x %struct.tsnep_tx_entry], i32, i32, i32, i32, i32, i32, i32 }
%struct.tsnep_tx_entry = type { ptr, ptr, i32, i8, i32, ptr, i32, i32 }
%struct.tsnep_rx = type { ptr, ptr, [16 x ptr], [16 x i32], [256 x %struct.tsnep_rx_entry], i32, i32, i32, i32, i32, i32, i32 }
%struct.tsnep_rx_entry = type { ptr, ptr, i32, i32, ptr, i32, i32 }
%struct.tsnep_queue = type { ptr, ptr, ptr, %struct.napi_struct, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@tsnep_test_strings = internal constant { [4 x [32 x i8]], [32 x i8] } { [4 x [32 x i8]] [[32 x i8] c"Enable timeout        (offline)\00", [32 x i8] c"TAPRIO                (offline)\00", [32 x i8] c"TAPRIO change         (offline)\00", [32 x i8] c"TAPRIO extension      (offline)\00"], [32 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@check_gate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 277, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"gate control time 0x%x!=0x%llx\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"check_gate\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/ethernet/engleder/tsnep_selftests.c\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@check_gate._entry_ptr = internal global ptr @check_gate._entry, section ".printk_index", align 4
@check_gate._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 284, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"gate control open 0x%02x!=0x%02x\0A\00", [62 x i8] zeroinitializer }, align 32
@check_gate._entry_ptr.7 = internal global ptr @check_gate._entry.5, section ".printk_index", align 4
@check_gate._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 292, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"gate control next open 0x%02x!=0x%02x\0A\00", [57 x i8] zeroinitializer }, align 32
@check_gate._entry_ptr.10 = internal global ptr @check_gate._entry.8, section ".printk_index", align 4
@___asan_gen_.11 = private unnamed_addr constant [19 x i8] c"tsnep_test_strings\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 15, i32 19 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 276, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 281, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private constant [51 x i8] c"../drivers/net/ethernet/engleder/tsnep_selftests.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 289, i32 3 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @check_gate._entry, ptr @check_gate._entry.5, ptr @check_gate._entry.8, ptr @check_gate._entry_ptr, ptr @check_gate._entry_ptr.10, ptr @check_gate._entry_ptr.7, ptr @tsnep_test_strings, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsnep_test_strings to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_gate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_gate._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_gate._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @tsnep_ethtool_get_test_count() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 4
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @tsnep_ethtool_get_test_strings(ptr nocapture noundef writeonly %data) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %data, ptr @tsnep_test_strings, i32 128)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tsnep_ethtool_self_test(ptr noundef %netdev, ptr nocapture noundef %eth_test, ptr nocapture noundef writeonly %data) local_unnamed_addr #2 align 64 {
entry:
  %system_time.i208 = alloca i64, align 8
  %system_time.i199 = alloca i64, align 8
  %system_time.i190 = alloca i64, align 8
  %system_time.i181 = alloca i64, align 8
  %system_time.i172 = alloca i64, align 8
  %system_time.i163 = alloca i64, align 8
  %system_time.i154 = alloca i64, align 8
  %system_time.i145 = alloca i64, align 8
  %system_time.i136 = alloca i64, align 8
  %system_time.i127 = alloca i64, align 8
  %system_time.i = alloca i64, align 8
  %qopt.i403.i = alloca %struct.tc_taprio_qopt_offload, align 8
  %qopt.i.i86 = alloca %struct.tc_taprio_qopt_offload, align 8
  %system_time.i394.i = alloca i64, align 8
  %system_time.i385.i = alloca i64, align 8
  %system_time.i376.i = alloca i64, align 8
  %system_time.i.i87 = alloca i64, align 8
  %qopt.i392.i = alloca %struct.tc_taprio_qopt_offload, align 8
  %qopt.i.i57 = alloca %struct.tc_taprio_qopt_offload, align 8
  %system_time.i383.i = alloca i64, align 8
  %system_time.i374.i = alloca i64, align 8
  %system_time.i.i58 = alloca i64, align 8
  %qopt.i.i = alloca %struct.tc_taprio_qopt_offload, align 8
  %qopt.i.i259.i = alloca %struct.tc_taprio_qopt_offload, align 8
  %system_time.i.i = alloca i64, align 8
  %qopt.i.i252.i = alloca %struct.tc_taprio_qopt_offload, align 8
  %qopt.i.i.i = alloca %struct.tc_taprio_qopt_offload, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %len = getelementptr inbounds %struct.ethtool_test, ptr %eth_test, i32 0, i32 3
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4, ptr %len, align 4
  %flags = getelementptr inbounds %struct.ethtool_test, ptr %eth_test, i32 0, i32 1
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.not = icmp eq i32 %2, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = call ptr @memset(ptr %data, i32 0, i32 32)
  br label %cleanup

if.end:                                           ; preds = %entry
  %addr.i = getelementptr i8, ptr %netdev, i32 2344
  %4 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr.i, align 8
  %add.ptr.i53 = getelementptr i8, ptr %5, i32 8192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 16777344) #8, !srcloc !28
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr.i, align 8
  %add.ptr4.i = getelementptr i8, ptr %7, i32 8196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 -1601830656) #8, !srcloc !28
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %add.i = add nuw nsw i32 %i.031.i, 100
  %cmp.i = icmp ult i32 %i.031.i, 199900
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.end.i

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end
  %i.031.i = phi i32 [ 0, %if.end ], [ %add.i, %for.cond.i.for.body.i_crit_edge ]
  %call.i = tail call fastcc zeroext i1 @gc_delayed_enable(ptr noundef %add.ptr.i, i1 noundef zeroext true, i32 noundef %i.031.i) #8
  br i1 %call.i, label %for.cond.i, label %for.body.i.if.else_crit_edge

for.body.i.if.else_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

for.end.i:                                        ; preds = %for.cond.i
  %8 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %addr.i, align 8
  %add.ptr6.i = getelementptr i8, ptr %9, i32 10240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 16777344) #8, !srcloc !28
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %addr.i, align 8
  %add.ptr10.i = getelementptr i8, ptr %11, i32 10244
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 -1601830656) #8, !srcloc !28
  br label %for.body13.i

for.cond11.i:                                     ; preds = %for.body13.i
  %add18.i = add nuw nsw i32 %i.132.i, 100
  %cmp12.i = icmp ult i32 %i.132.i, 199900
  br i1 %cmp12.i, label %for.cond11.i.for.body13.i_crit_edge, label %for.cond11.i.if.end9_crit_edge

for.cond11.i.if.end9_crit_edge:                   ; preds = %for.cond11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

for.cond11.i.for.body13.i_crit_edge:              ; preds = %for.cond11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body13.i

for.body13.i:                                     ; preds = %for.cond11.i.for.body13.i_crit_edge, %for.end.i
  %i.132.i = phi i32 [ 0, %for.end.i ], [ %add18.i, %for.cond11.i.for.body13.i_crit_edge ]
  %call14.i = tail call fastcc zeroext i1 @gc_delayed_enable(ptr noundef %add.ptr.i, i1 noundef zeroext false, i32 noundef %i.132.i) #8
  br i1 %call14.i, label %for.cond11.i, label %for.body13.i.if.else_crit_edge

for.body13.i.if.else_crit_edge:                   ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.else:                                          ; preds = %for.body13.i.if.else_crit_edge, %for.body.i.if.else_crit_edge
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %or = or i32 %13, 2
  store i32 %or, ptr %flags, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %for.cond11.i.if.end9_crit_edge
  %storemerge = phi i64 [ 1, %if.else ], [ 0, %for.cond11.i.if.end9_crit_edge ]
  %14 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %storemerge, ptr %data, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 3100) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end9.if.else13_crit_edge, label %if.end9.for.body.i54_crit_edge

if.end9.for.body.i54_crit_edge:                   ; preds = %if.end9
  br label %for.body.i54

if.end9.if.else13_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else13

for.body.i54:                                     ; preds = %for.body.i54.for.body.i54_crit_edge, %if.end9.for.body.i54_crit_edge
  %i.0270.i = phi i32 [ %inc.i, %for.body.i54.for.body.i54_crit_edge ], [ 0, %if.end9.for.body.i54_crit_edge ]
  %arrayidx.i = getelementptr %struct.tc_taprio_qopt_offload, ptr %call7.i.i.i, i32 0, i32 5, i32 %i.0270.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.0270.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 255
  br i1 %exitcond.not.i, label %for.end.i55, label %for.body.i54.for.body.i54_crit_edge

for.body.i54.for.body.i54_crit_edge:              ; preds = %for.body.i54
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i54

for.end.i55:                                      ; preds = %for.body.i54
  %17 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %call7.i.i.i, align 8
  %base_time.i = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %call7.i.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %base_time.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 0, ptr %base_time.i, align 8
  %cycle_time.i = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %call7.i.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %cycle_time.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 1500000, ptr %cycle_time.i, align 8
  %cycle_time_extension.i = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %call7.i.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %cycle_time_extension.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 0, ptr %cycle_time_extension.i, align 8
  %entries3.i = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %call7.i.i.i, i32 0, i32 5
  %gate_mask.i = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %call7.i.i.i, i32 1
  %21 = ptrtoint ptr %gate_mask.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %gate_mask.i, align 8
  %interval.i = getelementptr inbounds %struct.tc_taprio_sched_entry, ptr %entries3.i, i32 0, i32 2
  %22 = ptrtoint ptr %interval.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 200000, ptr %interval.i, align 4
  %arrayidx8.i = getelementptr %struct.tc_taprio_qopt_offload, ptr %call7.i.i.i, i32 1, i32 1
  %gate_mask9.i = getelementptr inbounds %struct.tc_taprio_sched_entry, ptr %arrayidx8.i, i32 0, i32 1
  %23 = ptrtoint ptr %gate_mask9.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %gate_mask9.i, align 4
  %interval12.i = getelementptr %struct.tc_taprio_qopt_offload, ptr %call7.i.i.i, i32 1, i32 2
  %24 = ptrtoint ptr %interval12.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 800000, ptr %interval12.i, align 8
  %gate_mask15.i = getelementptr %struct.tc_taprio_qopt_offload, ptr %call7.i.i.i, i32 1, i32 3
  %25 = ptrtoint ptr %gate_mask15.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 7, ptr %gate_mask15.i, align 8
  %interval18.i = getelementptr [0 x %struct.tc_taprio_sched_entry], ptr %entries3.i, i32 0, i32 2, i32 2
  %26 = ptrtoint ptr %interval18.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 240000, ptr %interval18.i, align 4
  %gate_mask21.i = getelementptr %struct.tc_taprio_qopt_offload, ptr %call7.i.i.i, i32 1, i32 5
  %27 = ptrtoint ptr %gate_mask21.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %gate_mask21.i, align 4
  %interval24.i = getelementptr %struct.tc_taprio_qopt_offload, ptr %call7.i.i.i, i32 2
  %28 = ptrtoint ptr %interval24.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 80000, ptr %interval24.i, align 8
  %gate_mask27.i = getelementptr %struct.tc_taprio_qopt_offload, ptr %call7.i.i.i, i32 2, i32 1
  %29 = ptrtoint ptr %gate_mask27.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 4, ptr %gate_mask27.i, align 8
  %interval30.i = getelementptr [0 x %struct.tc_taprio_sched_entry], ptr %entries3.i, i32 0, i32 4, i32 2
  %30 = ptrtoint ptr %interval30.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 70000, ptr %interval30.i, align 4
  %arrayidx32.i = getelementptr %struct.tc_taprio_qopt_offload, ptr %call7.i.i.i, i32 2, i32 2
  %gate_mask33.i = getelementptr inbounds %struct.tc_taprio_sched_entry, ptr %arrayidx32.i, i32 0, i32 1
  %31 = ptrtoint ptr %gate_mask33.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 6, ptr %gate_mask33.i, align 4
  %interval36.i = getelementptr %struct.tc_taprio_qopt_offload, ptr %call7.i.i.i, i32 2, i32 3
  %32 = ptrtoint ptr %interval36.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 60000, ptr %interval36.i, align 8
  %gate_mask39.i = getelementptr %struct.tc_taprio_qopt_offload, ptr %call7.i.i.i, i32 2, i32 4
  %33 = ptrtoint ptr %gate_mask39.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 15, ptr %gate_mask39.i, align 8
  %interval42.i = getelementptr %struct.tc_taprio_qopt_offload, ptr %call7.i.i.i, i32 2, i32 5
  %34 = ptrtoint ptr %interval42.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 50000, ptr %interval42.i, align 4
  %num_entries.i = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %call7.i.i.i, i32 0, i32 4
  %35 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 7, ptr %num_entries.i, align 8
  %call.i.i = tail call fastcc zeroext i1 @enable_check_taprio(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i.i) #8
  br i1 %call.i.i, label %run_taprio.exit.i, label %for.end.i55.tsnep_test_taprio.exit_crit_edge

for.end.i55.tsnep_test_taprio.exit_crit_edge:     ; preds = %for.end.i55
  call void @__sanitizer_cov_trace_pc() #10
  br label %tsnep_test_taprio.exit

run_taprio.exit.i:                                ; preds = %for.end.i55
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %qopt.i.i.i) #8
  %36 = call ptr @memset(ptr %qopt.i.i.i, i32 0, i32 40)
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.i, align 8
  %call.i.i.i = call i32 @tsnep_tc_setup(ptr noundef %38, i32 noundef 13, ptr noundef nonnull %qopt.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %qopt.i.i.i) #8
  br i1 %tobool.not.i.i.i, label %if.end45.i, label %run_taprio.exit.i.tsnep_test_taprio.exit_crit_edge

run_taprio.exit.i.tsnep_test_taprio.exit_crit_edge: ; preds = %run_taprio.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tsnep_test_taprio.exit

if.end45.i:                                       ; preds = %run_taprio.exit.i
  %39 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %call7.i.i.i, align 8
  %40 = ptrtoint ptr %base_time.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 0, ptr %base_time.i, align 8
  %41 = ptrtoint ptr %cycle_time.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 411854, ptr %cycle_time.i, align 8
  %42 = ptrtoint ptr %cycle_time_extension.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 0, ptr %cycle_time_extension.i, align 8
  %43 = ptrtoint ptr %gate_mask.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 23, ptr %gate_mask.i, align 8
  %44 = ptrtoint ptr %interval.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 23842, ptr %interval.i, align 4
  %45 = ptrtoint ptr %gate_mask9.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 22, ptr %gate_mask9.i, align 4
  %46 = ptrtoint ptr %interval12.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 13482, ptr %interval12.i, align 8
  %47 = ptrtoint ptr %gate_mask15.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 21, ptr %gate_mask15.i, align 8
  %48 = ptrtoint ptr %interval18.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 49428, ptr %interval18.i, align 4
  %49 = ptrtoint ptr %gate_mask21.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 20, ptr %gate_mask21.i, align 4
  %50 = ptrtoint ptr %interval24.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 38189, ptr %interval24.i, align 8
  %51 = ptrtoint ptr %gate_mask27.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 19, ptr %gate_mask27.i, align 8
  %52 = ptrtoint ptr %interval30.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 92321, ptr %interval30.i, align 4
  %53 = ptrtoint ptr %gate_mask33.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 18, ptr %gate_mask33.i, align 4
  %54 = ptrtoint ptr %interval36.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 71239, ptr %interval36.i, align 8
  %55 = ptrtoint ptr %gate_mask39.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 17, ptr %gate_mask39.i, align 8
  %56 = ptrtoint ptr %interval42.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 69932, ptr %interval42.i, align 4
  %arrayidx94.i = getelementptr %struct.tc_taprio_qopt_offload, ptr %call7.i.i.i, i32 3
  %gate_mask95.i = getelementptr inbounds %struct.tc_taprio_sched_entry, ptr %arrayidx94.i, i32 0, i32 1
  %57 = ptrtoint ptr %gate_mask95.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 16, ptr %gate_mask95.i, align 4
  %interval98.i = getelementptr %struct.tc_taprio_qopt_offload, ptr %call7.i.i.i, i32 3, i32 1
  %58 = ptrtoint ptr %interval98.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 53421, ptr %interval98.i, align 8
  %59 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 8, ptr %num_entries.i, align 8
  %call.i253.i = call fastcc zeroext i1 @enable_check_taprio(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i.i) #8
  br i1 %call.i253.i, label %run_taprio.exit258.i, label %if.end45.i.tsnep_test_taprio.exit_crit_edge

if.end45.i.tsnep_test_taprio.exit_crit_edge:      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tsnep_test_taprio.exit

run_taprio.exit258.i:                             ; preds = %if.end45.i
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %qopt.i.i252.i) #8
  %60 = call ptr @memset(ptr %qopt.i.i252.i, i32 0, i32 40)
  %61 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %add.ptr.i, align 8
  %call.i.i254.i = call i32 @tsnep_tc_setup(ptr noundef %62, i32 noundef 13, ptr noundef nonnull %qopt.i.i252.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i254.i)
  %tobool.not.i.i255.i = icmp eq i32 %call.i.i254.i, 0
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %qopt.i.i252.i) #8
  br i1 %tobool.not.i.i255.i, label %if.end102.i, label %run_taprio.exit258.i.tsnep_test_taprio.exit_crit_edge

run_taprio.exit258.i.tsnep_test_taprio.exit_crit_edge: ; preds = %run_taprio.exit258.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tsnep_test_taprio.exit

if.end102.i:                                      ; preds = %run_taprio.exit258.i
  %63 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %call7.i.i.i, align 8
  %64 = ptrtoint ptr %base_time.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 0, ptr %base_time.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %system_time.i.i) #8
  %65 = ptrtoint ptr %system_time.i.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 -1, ptr %system_time.i.i, align 8, !annotation !29
  call void @tsnep_get_system_time(ptr noundef %add.ptr.i, ptr noundef nonnull %system_time.i.i) #8
  %66 = ptrtoint ptr %system_time.i.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %system_time.i.i, align 8
  %add.i.i = add i64 %67, 12000000
  store i64 %add.i.i, ptr %system_time.i.i, align 8
  %68 = ptrtoint ptr %cycle_time.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %cycle_time.i, align 8
  %call2.i.i = call i64 @div64_u64(i64 noundef %add.i.i, i64 noundef %69) #8
  %70 = ptrtoint ptr %base_time.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %base_time.i, align 8
  %add4.i.i = add i64 %call2.i.i, 1
  %72 = ptrtoint ptr %cycle_time.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %cycle_time.i, align 8
  %mul6.i.i = mul i64 %73, %add4.i.i
  %add7.i.i = add i64 %mul6.i.i, %71
  store i64 %add7.i.i, ptr %base_time.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %system_time.i.i) #8
  %74 = ptrtoint ptr %cycle_time.i to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 125000, ptr %cycle_time.i, align 8
  %75 = ptrtoint ptr %cycle_time_extension.i to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 0, ptr %cycle_time_extension.i, align 8
  %76 = ptrtoint ptr %gate_mask.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 39, ptr %gate_mask.i, align 8
  %77 = ptrtoint ptr %interval.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 15000, ptr %interval.i, align 4
  %78 = ptrtoint ptr %gate_mask9.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 38, ptr %gate_mask9.i, align 4
  %79 = ptrtoint ptr %interval12.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 15000, ptr %interval12.i, align 8
  %80 = ptrtoint ptr %gate_mask15.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 37, ptr %gate_mask15.i, align 8
  %81 = ptrtoint ptr %interval18.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 12500, ptr %interval18.i, align 4
  %82 = ptrtoint ptr %gate_mask21.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 36, ptr %gate_mask21.i, align 4
  %83 = ptrtoint ptr %interval24.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 17500, ptr %interval24.i, align 8
  %84 = ptrtoint ptr %gate_mask27.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 35, ptr %gate_mask27.i, align 8
  %85 = ptrtoint ptr %interval30.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 10000, ptr %interval30.i, align 4
  %86 = ptrtoint ptr %gate_mask33.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 34, ptr %gate_mask33.i, align 4
  %87 = ptrtoint ptr %interval36.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 11000, ptr %interval36.i, align 8
  %88 = ptrtoint ptr %gate_mask39.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 33, ptr %gate_mask39.i, align 8
  %89 = ptrtoint ptr %interval42.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 9000, ptr %interval42.i, align 4
  %90 = ptrtoint ptr %gate_mask95.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 32, ptr %gate_mask95.i, align 4
  %91 = ptrtoint ptr %interval98.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 10000, ptr %interval98.i, align 8
  %gate_mask158.i = getelementptr %struct.tc_taprio_qopt_offload, ptr %call7.i.i.i, i32 3, i32 2
  %92 = ptrtoint ptr %gate_mask158.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 32, ptr %gate_mask158.i, align 8
  %interval161.i = getelementptr [0 x %struct.tc_taprio_sched_entry], ptr %entries3.i, i32 0, i32 8, i32 2
  %93 = ptrtoint ptr %interval161.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 12500, ptr %interval161.i, align 4
  %arrayidx163.i = getelementptr %struct.tc_taprio_qopt_offload, ptr %call7.i.i.i, i32 3, i32 3
  %gate_mask164.i = getelementptr inbounds %struct.tc_taprio_sched_entry, ptr %arrayidx163.i, i32 0, i32 1
  %94 = ptrtoint ptr %gate_mask164.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 32, ptr %gate_mask164.i, align 4
  %interval167.i = getelementptr %struct.tc_taprio_qopt_offload, ptr %call7.i.i.i, i32 3, i32 4
  %95 = ptrtoint ptr %interval167.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 12500, ptr %interval167.i, align 8
  %96 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 10, ptr %num_entries.i, align 8
  %call.i260.i = call fastcc zeroext i1 @enable_check_taprio(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i.i) #8
  br i1 %call.i260.i, label %run_taprio.exit265.i, label %if.end102.i.tsnep_test_taprio.exit_crit_edge

if.end102.i.tsnep_test_taprio.exit_crit_edge:     ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tsnep_test_taprio.exit

run_taprio.exit265.i:                             ; preds = %if.end102.i
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %qopt.i.i259.i) #8
  %97 = call ptr @memset(ptr %qopt.i.i259.i, i32 0, i32 40)
  %98 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %add.ptr.i, align 8
  %call.i.i261.i = call i32 @tsnep_tc_setup(ptr noundef %99, i32 noundef 13, ptr noundef nonnull %qopt.i.i259.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i261.i)
  %tobool.not.i.i262.i = icmp eq i32 %call.i.i261.i, 0
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %qopt.i.i259.i) #8
  br i1 %tobool.not.i.i262.i, label %if.then11, label %run_taprio.exit265.i.tsnep_test_taprio.exit_crit_edge

run_taprio.exit265.i.tsnep_test_taprio.exit_crit_edge: ; preds = %run_taprio.exit265.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tsnep_test_taprio.exit

tsnep_test_taprio.exit:                           ; preds = %run_taprio.exit265.i.tsnep_test_taprio.exit_crit_edge, %if.end102.i.tsnep_test_taprio.exit_crit_edge, %run_taprio.exit258.i.tsnep_test_taprio.exit_crit_edge, %if.end45.i.tsnep_test_taprio.exit_crit_edge, %run_taprio.exit.i.tsnep_test_taprio.exit_crit_edge, %for.end.i55.tsnep_test_taprio.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %qopt.i.i) #8
  %100 = call ptr @memset(ptr %qopt.i.i, i32 0, i32 40)
  %101 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %add.ptr.i, align 8
  %call.i266.i = call i32 @tsnep_tc_setup(ptr noundef %102, i32 noundef 13, ptr noundef nonnull %qopt.i.i) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %qopt.i.i) #8
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %if.else13

if.then11:                                        ; preds = %run_taprio.exit265.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %if.end17

if.else13:                                        ; preds = %tsnep_test_taprio.exit, %if.end9.if.else13_crit_edge
  %103 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %flags, align 4
  %or15 = or i32 %104, 2
  store i32 %or15, ptr %flags, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.else13, %if.then11
  %.sink = phi i64 [ 1, %if.else13 ], [ 0, %if.then11 ]
  %arrayidx16 = getelementptr i64, ptr %data, i32 1
  %105 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %.sink, ptr %arrayidx16, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %106 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i59 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %106, i32 noundef 3520, i32 noundef 3100) #11
  %tobool.not.i60 = icmp eq ptr %call7.i.i.i59, null
  br i1 %tobool.not.i60, label %if.end17.if.else21_crit_edge, label %if.end17.for.body.i64_crit_edge

if.end17.for.body.i64_crit_edge:                  ; preds = %if.end17
  br label %for.body.i64

if.end17.if.else21_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else21

for.body.i64:                                     ; preds = %for.body.i64.for.body.i64_crit_edge, %if.end17.for.body.i64_crit_edge
  %i.0395.i = phi i32 [ %inc.i62, %for.body.i64.for.body.i64_crit_edge ], [ 0, %if.end17.for.body.i64_crit_edge ]
  %arrayidx.i61 = getelementptr %struct.tc_taprio_qopt_offload, ptr %call7.i.i.i59, i32 0, i32 5, i32 %i.0395.i
  %107 = ptrtoint ptr %arrayidx.i61 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %arrayidx.i61, align 4
  %inc.i62 = add nuw nsw i32 %i.0395.i, 1
  %exitcond.not.i63 = icmp eq i32 %inc.i62, 255
  br i1 %exitcond.not.i63, label %for.end.i75, label %for.body.i64.for.body.i64_crit_edge

for.body.i64.for.body.i64_crit_edge:              ; preds = %for.body.i64
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i64

for.end.i75:                                      ; preds = %for.body.i64
  %108 = ptrtoint ptr %call7.i.i.i59 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 1, ptr %call7.i.i.i59, align 8
  %base_time.i65 = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %call7.i.i.i59, i32 0, i32 1
  %109 = ptrtoint ptr %base_time.i65 to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 0, ptr %base_time.i65, align 8
  %cycle_time.i66 = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %call7.i.i.i59, i32 0, i32 2
  %110 = ptrtoint ptr %cycle_time.i66 to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 100000, ptr %cycle_time.i66, align 8
  %cycle_time_extension.i67 = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %call7.i.i.i59, i32 0, i32 3
  %111 = ptrtoint ptr %cycle_time_extension.i67 to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 0, ptr %cycle_time_extension.i67, align 8
  %entries3.i68 = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %call7.i.i.i59, i32 0, i32 5
  %gate_mask.i69 = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %call7.i.i.i59, i32 1
  %112 = ptrtoint ptr %gate_mask.i69 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 48, ptr %gate_mask.i69, align 8
  %interval.i70 = getelementptr inbounds %struct.tc_taprio_sched_entry, ptr %entries3.i68, i32 0, i32 2
  %113 = ptrtoint ptr %interval.i70 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 20000, ptr %interval.i70, align 4
  %arrayidx8.i71 = getelementptr %struct.tc_taprio_qopt_offload, ptr %call7.i.i.i59, i32 1, i32 1
  %gate_mask9.i72 = getelementptr inbounds %struct.tc_taprio_sched_entry, ptr %arrayidx8.i71, i32 0, i32 1
  %114 = ptrtoint ptr %gate_mask9.i72 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 49, ptr %gate_mask9.i72, align 4
  %interval12.i73 = getelementptr %struct.tc_taprio_qopt_offload, ptr %call7.i.i.i59, i32 1, i32 2
  %115 = ptrtoint ptr %interval12.i73 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 80000, ptr %interval12.i73, align 8
  %num_entries.i74 = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %call7.i.i.i59, i32 0, i32 4
  %116 = ptrtoint ptr %num_entries.i74 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 2, ptr %num_entries.i74, align 8
  %call13.i = call fastcc zeroext i1 @enable_check_taprio(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i.i59) #8
  br i1 %call13.i, label %if.end15.i, label %for.end.i75.tsnep_test_taprio_change.exit_crit_edge

for.end.i75.tsnep_test_taprio_change.exit_crit_edge: ; preds = %for.end.i75
  call void @__sanitizer_cov_trace_pc() #10
  br label %tsnep_test_taprio_change.exit

if.end15.i:                                       ; preds = %for.end.i75
  %call16.i = call fastcc zeroext i1 @enable_check_taprio(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i.i59) #8
  br i1 %call16.i, label %if.end18.i, label %if.end15.i.tsnep_test_taprio_change.exit_crit_edge

if.end15.i.tsnep_test_taprio_change.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tsnep_test_taprio_change.exit

if.end18.i:                                       ; preds = %if.end15.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %system_time.i.i58) #8
  %117 = ptrtoint ptr %system_time.i.i58 to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 -1, ptr %system_time.i.i58, align 8, !annotation !29
  %118 = ptrtoint ptr %base_time.i65 to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %base_time.i65, align 8
  call void @tsnep_get_system_time(ptr noundef %add.ptr.i, ptr noundef nonnull %system_time.i.i58) #8
  %120 = ptrtoint ptr %system_time.i.i58 to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %system_time.i.i58, align 8
  %add.i.i76 = add i64 %121, 17000000
  store i64 %add.i.i76, ptr %system_time.i.i58, align 8
  %sub.i.i = sub i64 %add.i.i76, %119
  %122 = ptrtoint ptr %cycle_time.i66 to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %cycle_time.i66, align 8
  %call2.i.i77 = call i64 @div64_u64(i64 noundef %sub.i.i, i64 noundef %123) #8
  %124 = ptrtoint ptr %base_time.i65 to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %base_time.i65, align 8
  %add4.i.i78 = add i64 %call2.i.i77, 1
  %126 = ptrtoint ptr %cycle_time.i66 to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %cycle_time.i66, align 8
  %mul6.i.i79 = mul i64 %127, %add4.i.i78
  %add7.i.i80 = add i64 %mul6.i.i79, %125
  store i64 %add7.i.i80, ptr %base_time.i65, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %system_time.i.i58) #8
  %call19.i = call fastcc zeroext i1 @enable_check_taprio(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i.i59) #8
  br i1 %call19.i, label %if.end21.i, label %if.end18.i.tsnep_test_taprio_change.exit_crit_edge

if.end18.i.tsnep_test_taprio_change.exit_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tsnep_test_taprio_change.exit

if.end21.i:                                       ; preds = %if.end18.i
  %128 = ptrtoint ptr %base_time.i65 to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 0, ptr %base_time.i65, align 8
  %129 = ptrtoint ptr %gate_mask.i69 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 66, ptr %gate_mask.i69, align 8
  %130 = ptrtoint ptr %gate_mask9.i72 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 67, ptr %gate_mask9.i72, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %system_time.i374.i) #8
  %131 = ptrtoint ptr %system_time.i374.i to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 -1, ptr %system_time.i374.i, align 8, !annotation !29
  call void @tsnep_get_system_time(ptr noundef %add.ptr.i, ptr noundef nonnull %system_time.i374.i) #8
  %132 = ptrtoint ptr %system_time.i374.i to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %system_time.i374.i, align 8
  %add.i376.i = add i64 %133, 2000000
  store i64 %add.i376.i, ptr %system_time.i374.i, align 8
  %134 = ptrtoint ptr %cycle_time.i66 to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %cycle_time.i66, align 8
  %call2.i379.i = call i64 @div64_u64(i64 noundef %add.i376.i, i64 noundef %135) #8
  %136 = ptrtoint ptr %base_time.i65 to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %base_time.i65, align 8
  %add4.i380.i = add i64 %call2.i379.i, 1
  %138 = ptrtoint ptr %cycle_time.i66 to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %cycle_time.i66, align 8
  %mul6.i381.i = mul i64 %139, %add4.i380.i
  %add7.i382.i = add i64 %mul6.i381.i, %137
  store i64 %add7.i382.i, ptr %base_time.i65, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %system_time.i374.i) #8
  %call30.i = call fastcc zeroext i1 @enable_check_taprio(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i.i59) #8
  br i1 %call30.i, label %if.end32.i, label %if.end21.i.tsnep_test_taprio_change.exit_crit_edge

if.end21.i.tsnep_test_taprio_change.exit_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tsnep_test_taprio_change.exit

if.end32.i:                                       ; preds = %if.end21.i
  %140 = ptrtoint ptr %base_time.i65 to i32
  call void @__asan_store8_noabort(i32 %140)
  store i64 0, ptr %base_time.i65, align 8
  %141 = ptrtoint ptr %gate_mask.i69 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 84, ptr %gate_mask.i69, align 8
  %142 = ptrtoint ptr %interval.i70 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 33333, ptr %interval.i70, align 4
  %143 = ptrtoint ptr %gate_mask9.i72 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 85, ptr %gate_mask9.i72, align 4
  %144 = ptrtoint ptr %interval12.i73 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 66667, ptr %interval12.i73, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %system_time.i383.i) #8
  %145 = ptrtoint ptr %system_time.i383.i to i32
  call void @__asan_store8_noabort(i32 %145)
  store i64 -1, ptr %system_time.i383.i, align 8, !annotation !29
  call void @tsnep_get_system_time(ptr noundef %add.ptr.i, ptr noundef nonnull %system_time.i383.i) #8
  %146 = ptrtoint ptr %system_time.i383.i to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %system_time.i383.i, align 8
  %add.i385.i = add i64 %147, 23000000
  store i64 %add.i385.i, ptr %system_time.i383.i, align 8
  %148 = ptrtoint ptr %cycle_time.i66 to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %cycle_time.i66, align 8
  %call2.i388.i = call i64 @div64_u64(i64 noundef %add.i385.i, i64 noundef %149) #8
  %150 = ptrtoint ptr %base_time.i65 to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %base_time.i65, align 8
  %add4.i389.i = add i64 %call2.i388.i, 1
  %152 = ptrtoint ptr %cycle_time.i66 to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %cycle_time.i66, align 8
  %mul6.i390.i = mul i64 %153, %add4.i389.i
  %add7.i391.i = add i64 %mul6.i390.i, %151
  store i64 %add7.i391.i, ptr %base_time.i65, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %system_time.i383.i) #8
  %call47.i = call fastcc zeroext i1 @enable_check_taprio(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i.i59) #8
  br i1 %call47.i, label %if.end49.i, label %if.end32.i.tsnep_test_taprio_change.exit_crit_edge

if.end32.i.tsnep_test_taprio_change.exit_crit_edge: ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tsnep_test_taprio_change.exit

if.end49.i:                                       ; preds = %if.end32.i
  %154 = ptrtoint ptr %base_time.i65 to i32
  call void @__asan_store8_noabort(i32 %154)
  store i64 0, ptr %base_time.i65, align 8
  %155 = ptrtoint ptr %gate_mask.i69 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 102, ptr %gate_mask.i69, align 8
  %156 = ptrtoint ptr %interval.i70 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 50000, ptr %interval.i70, align 4
  %157 = ptrtoint ptr %gate_mask9.i72 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 103, ptr %gate_mask9.i72, align 4
  %158 = ptrtoint ptr %interval12.i73 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 25000, ptr %interval12.i73, align 8
  %gate_mask66.i = getelementptr %struct.tc_taprio_qopt_offload, ptr %call7.i.i.i59, i32 1, i32 3
  %159 = ptrtoint ptr %gate_mask66.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 104, ptr %gate_mask66.i, align 8
  %interval69.i = getelementptr [0 x %struct.tc_taprio_sched_entry], ptr %entries3.i68, i32 0, i32 2, i32 2
  %160 = ptrtoint ptr %interval69.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 25000, ptr %interval69.i, align 4
  %161 = ptrtoint ptr %num_entries.i74 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 3, ptr %num_entries.i74, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %system_time.i172) #8
  %162 = ptrtoint ptr %system_time.i172 to i32
  call void @__asan_store8_noabort(i32 %162)
  store i64 -1, ptr %system_time.i172, align 8, !annotation !29
  call void @tsnep_get_system_time(ptr noundef %add.ptr.i, ptr noundef nonnull %system_time.i172) #8
  %163 = ptrtoint ptr %system_time.i172 to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %system_time.i172, align 8
  %add.i174 = add i64 %164, 11000000
  store i64 %add.i174, ptr %system_time.i172, align 8
  %165 = ptrtoint ptr %cycle_time.i66 to i32
  call void @__asan_load8_noabort(i32 %165)
  %166 = load i64, ptr %cycle_time.i66, align 8
  %call2.i177 = call i64 @div64_u64(i64 noundef %add.i174, i64 noundef %166) #8
  %167 = ptrtoint ptr %base_time.i65 to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %base_time.i65, align 8
  %add4.i178 = add i64 %call2.i177, 1
  %169 = ptrtoint ptr %cycle_time.i66 to i32
  call void @__asan_load8_noabort(i32 %169)
  %170 = load i64, ptr %cycle_time.i66, align 8
  %mul6.i179 = mul i64 %170, %add4.i178
  %add7.i180 = add i64 %mul6.i179, %168
  store i64 %add7.i180, ptr %base_time.i65, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %system_time.i172) #8
  %call71.i = call fastcc zeroext i1 @enable_check_taprio(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i.i59) #8
  br i1 %call71.i, label %if.end73.i, label %if.end49.i.tsnep_test_taprio_change.exit_crit_edge

if.end49.i.tsnep_test_taprio_change.exit_crit_edge: ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tsnep_test_taprio_change.exit

if.end73.i:                                       ; preds = %if.end49.i
  %171 = ptrtoint ptr %base_time.i65 to i32
  call void @__asan_store8_noabort(i32 %171)
  store i64 0, ptr %base_time.i65, align 8
  %172 = ptrtoint ptr %cycle_time.i66 to i32
  call void @__asan_store8_noabort(i32 %172)
  store i64 200000, ptr %cycle_time.i66, align 8
  %173 = ptrtoint ptr %gate_mask.i69 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 121, ptr %gate_mask.i69, align 8
  %174 = ptrtoint ptr %interval.i70 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 50000, ptr %interval.i70, align 4
  %175 = ptrtoint ptr %gate_mask9.i72 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 122, ptr %gate_mask9.i72, align 4
  %176 = ptrtoint ptr %interval12.i73 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 150000, ptr %interval12.i73, align 8
  %177 = ptrtoint ptr %num_entries.i74 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 2, ptr %num_entries.i74, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %system_time.i163) #8
  %178 = ptrtoint ptr %system_time.i163 to i32
  call void @__asan_store8_noabort(i32 %178)
  store i64 -1, ptr %system_time.i163, align 8, !annotation !29
  call void @tsnep_get_system_time(ptr noundef %add.ptr.i, ptr noundef nonnull %system_time.i163) #8
  %179 = ptrtoint ptr %system_time.i163 to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %system_time.i163, align 8
  %add.i165 = add i64 %180, 11000000
  store i64 %add.i165, ptr %system_time.i163, align 8
  %181 = ptrtoint ptr %cycle_time.i66 to i32
  call void @__asan_load8_noabort(i32 %181)
  %182 = load i64, ptr %cycle_time.i66, align 8
  %call2.i168 = call i64 @div64_u64(i64 noundef %add.i165, i64 noundef %182) #8
  %183 = ptrtoint ptr %base_time.i65 to i32
  call void @__asan_load8_noabort(i32 %183)
  %184 = load i64, ptr %base_time.i65, align 8
  %add4.i169 = add i64 %call2.i168, 1
  %185 = ptrtoint ptr %cycle_time.i66 to i32
  call void @__asan_load8_noabort(i32 %185)
  %186 = load i64, ptr %cycle_time.i66, align 8
  %mul6.i170 = mul i64 %186, %add4.i169
  %add7.i171 = add i64 %mul6.i170, %184
  store i64 %add7.i171, ptr %base_time.i65, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %system_time.i163) #8
  %call90.i = call fastcc zeroext i1 @enable_check_taprio(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i.i59) #8
  br i1 %call90.i, label %if.end92.i, label %if.end73.i.tsnep_test_taprio_change.exit_crit_edge

if.end73.i.tsnep_test_taprio_change.exit_crit_edge: ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tsnep_test_taprio_change.exit

if.end92.i:                                       ; preds = %if.end73.i
  %187 = ptrtoint ptr %base_time.i65 to i32
  call void @__asan_store8_noabort(i32 %187)
  store i64 0, ptr %base_time.i65, align 8
  %188 = ptrtoint ptr %cycle_time.i66 to i32
  call void @__asan_store8_noabort(i32 %188)
  store i64 1000000, ptr %cycle_time.i66, align 8
  %189 = ptrtoint ptr %gate_mask.i69 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 123, ptr %gate_mask.i69, align 8
  %190 = ptrtoint ptr %interval.i70 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 125000, ptr %interval.i70, align 4
  %191 = ptrtoint ptr %gate_mask9.i72 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 124, ptr %gate_mask9.i72, align 4
  %192 = ptrtoint ptr %interval12.i73 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 250000, ptr %interval12.i73, align 8
  %193 = ptrtoint ptr %gate_mask66.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 125, ptr %gate_mask66.i, align 8
  %194 = ptrtoint ptr %interval69.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 375000, ptr %interval69.i, align 4
  %gate_mask116.i = getelementptr %struct.tc_taprio_qopt_offload, ptr %call7.i.i.i59, i32 1, i32 5
  %195 = ptrtoint ptr %gate_mask116.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 126, ptr %gate_mask116.i, align 4
  %interval119.i = getelementptr %struct.tc_taprio_qopt_offload, ptr %call7.i.i.i59, i32 2
  %196 = ptrtoint ptr %interval119.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 250000, ptr %interval119.i, align 8
  %197 = ptrtoint ptr %num_entries.i74 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 4, ptr %num_entries.i74, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %system_time.i154) #8
  %198 = ptrtoint ptr %system_time.i154 to i32
  call void @__asan_store8_noabort(i32 %198)
  store i64 -1, ptr %system_time.i154, align 8, !annotation !29
  call void @tsnep_get_system_time(ptr noundef %add.ptr.i, ptr noundef nonnull %system_time.i154) #8
  %199 = ptrtoint ptr %system_time.i154 to i32
  call void @__asan_load8_noabort(i32 %199)
  %200 = load i64, ptr %system_time.i154, align 8
  %add.i156 = add i64 %200, 3000000
  store i64 %add.i156, ptr %system_time.i154, align 8
  %201 = ptrtoint ptr %cycle_time.i66 to i32
  call void @__asan_load8_noabort(i32 %201)
  %202 = load i64, ptr %cycle_time.i66, align 8
  %call2.i159 = call i64 @div64_u64(i64 noundef %add.i156, i64 noundef %202) #8
  %203 = ptrtoint ptr %base_time.i65 to i32
  call void @__asan_load8_noabort(i32 %203)
  %204 = load i64, ptr %base_time.i65, align 8
  %add4.i160 = add i64 %call2.i159, 1
  %205 = ptrtoint ptr %cycle_time.i66 to i32
  call void @__asan_load8_noabort(i32 %205)
  %206 = load i64, ptr %cycle_time.i66, align 8
  %mul6.i161 = mul i64 %206, %add4.i160
  %add7.i162 = add i64 %mul6.i161, %204
  store i64 %add7.i162, ptr %base_time.i65, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %system_time.i154) #8
  %call121.i = call fastcc zeroext i1 @enable_check_taprio(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i.i59) #8
  br i1 %call121.i, label %if.end123.i, label %if.end92.i.tsnep_test_taprio_change.exit_crit_edge

if.end92.i.tsnep_test_taprio_change.exit_crit_edge: ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tsnep_test_taprio_change.exit

if.end123.i:                                      ; preds = %if.end92.i
  %207 = ptrtoint ptr %base_time.i65 to i32
  call void @__asan_store8_noabort(i32 %207)
  store i64 0, ptr %base_time.i65, align 8
  %208 = ptrtoint ptr %cycle_time.i66 to i32
  call void @__asan_store8_noabort(i32 %208)
  store i64 333333, ptr %cycle_time.i66, align 8
  %209 = ptrtoint ptr %gate_mask.i69 to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 143, ptr %gate_mask.i69, align 8
  %210 = ptrtoint ptr %interval.i70 to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 166666, ptr %interval.i70, align 4
  %211 = ptrtoint ptr %gate_mask9.i72 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 128, ptr %gate_mask9.i72, align 4
  %212 = ptrtoint ptr %interval12.i73 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 166667, ptr %interval12.i73, align 8
  %213 = ptrtoint ptr %num_entries.i74 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 2, ptr %num_entries.i74, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %system_time.i145) #8
  %214 = ptrtoint ptr %system_time.i145 to i32
  call void @__asan_store8_noabort(i32 %214)
  store i64 -1, ptr %system_time.i145, align 8, !annotation !29
  call void @tsnep_get_system_time(ptr noundef %add.ptr.i, ptr noundef nonnull %system_time.i145) #8
  %215 = ptrtoint ptr %system_time.i145 to i32
  call void @__asan_load8_noabort(i32 %215)
  %216 = load i64, ptr %system_time.i145, align 8
  %add.i147 = add i64 %216, 11000000
  store i64 %add.i147, ptr %system_time.i145, align 8
  %217 = ptrtoint ptr %cycle_time.i66 to i32
  call void @__asan_load8_noabort(i32 %217)
  %218 = load i64, ptr %cycle_time.i66, align 8
  %call2.i150 = call i64 @div64_u64(i64 noundef %add.i147, i64 noundef %218) #8
  %219 = ptrtoint ptr %base_time.i65 to i32
  call void @__asan_load8_noabort(i32 %219)
  %220 = load i64, ptr %base_time.i65, align 8
  %add4.i151 = add i64 %call2.i150, 1
  %221 = ptrtoint ptr %cycle_time.i66 to i32
  call void @__asan_load8_noabort(i32 %221)
  %222 = load i64, ptr %cycle_time.i66, align 8
  %mul6.i152 = mul i64 %222, %add4.i151
  %add7.i153 = add i64 %mul6.i152, %220
  store i64 %add7.i153, ptr %base_time.i65, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %system_time.i145) #8
  %call140.i = call fastcc zeroext i1 @enable_check_taprio(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i.i59) #8
  br i1 %call140.i, label %if.end142.i, label %if.end123.i.tsnep_test_taprio_change.exit_crit_edge

if.end123.i.tsnep_test_taprio_change.exit_crit_edge: ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tsnep_test_taprio_change.exit

if.end142.i:                                      ; preds = %if.end123.i
  %223 = ptrtoint ptr %base_time.i65 to i32
  call void @__asan_store8_noabort(i32 %223)
  store i64 0, ptr %base_time.i65, align 8
  %224 = ptrtoint ptr %cycle_time.i66 to i32
  call void @__asan_store8_noabort(i32 %224)
  store i64 62500, ptr %cycle_time.i66, align 8
  %225 = ptrtoint ptr %gate_mask.i69 to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 129, ptr %gate_mask.i69, align 8
  %226 = ptrtoint ptr %interval.i70 to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 31250, ptr %interval.i70, align 4
  %227 = ptrtoint ptr %gate_mask9.i72 to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 130, ptr %gate_mask9.i72, align 4
  %228 = ptrtoint ptr %interval12.i73 to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 15625, ptr %interval12.i73, align 8
  %229 = ptrtoint ptr %gate_mask66.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 131, ptr %gate_mask66.i, align 8
  %230 = ptrtoint ptr %interval69.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 15625, ptr %interval69.i, align 4
  %231 = ptrtoint ptr %num_entries.i74 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 3, ptr %num_entries.i74, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %system_time.i136) #8
  %232 = ptrtoint ptr %system_time.i136 to i32
  call void @__asan_store8_noabort(i32 %232)
  store i64 -1, ptr %system_time.i136, align 8, !annotation !29
  call void @tsnep_get_system_time(ptr noundef %add.ptr.i, ptr noundef nonnull %system_time.i136) #8
  %233 = ptrtoint ptr %system_time.i136 to i32
  call void @__asan_load8_noabort(i32 %233)
  %234 = load i64, ptr %system_time.i136, align 8
  %add.i138 = add i64 %234, 1000000
  store i64 %add.i138, ptr %system_time.i136, align 8
  %235 = ptrtoint ptr %cycle_time.i66 to i32
  call void @__asan_load8_noabort(i32 %235)
  %236 = load i64, ptr %cycle_time.i66, align 8
  %call2.i141 = call i64 @div64_u64(i64 noundef %add.i138, i64 noundef %236) #8
  %237 = ptrtoint ptr %base_time.i65 to i32
  call void @__asan_load8_noabort(i32 %237)
  %238 = load i64, ptr %base_time.i65, align 8
  %add4.i142 = add i64 %call2.i141, 1
  %239 = ptrtoint ptr %cycle_time.i66 to i32
  call void @__asan_load8_noabort(i32 %239)
  %240 = load i64, ptr %cycle_time.i66, align 8
  %mul6.i143 = mul i64 %240, %add4.i142
  %add7.i144 = add i64 %mul6.i143, %238
  store i64 %add7.i144, ptr %base_time.i65, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %system_time.i136) #8
  %call165.i = call fastcc zeroext i1 @enable_check_taprio(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i.i59) #8
  br i1 %call165.i, label %if.end167.i, label %if.end142.i.tsnep_test_taprio_change.exit_crit_edge

if.end142.i.tsnep_test_taprio_change.exit_crit_edge: ; preds = %if.end142.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tsnep_test_taprio_change.exit

if.end167.i:                                      ; preds = %if.end142.i
  %241 = ptrtoint ptr %base_time.i65 to i32
  call void @__asan_store8_noabort(i32 %241)
  store i64 0, ptr %base_time.i65, align 8
  %242 = ptrtoint ptr %cycle_time.i66 to i32
  call void @__asan_store8_noabort(i32 %242)
  store i64 400000, ptr %cycle_time.i66, align 8
  %243 = ptrtoint ptr %gate_mask.i69 to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 132, ptr %gate_mask.i69, align 8
  %244 = ptrtoint ptr %interval.i70 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 100000, ptr %interval.i70, align 4
  %245 = ptrtoint ptr %gate_mask9.i72 to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 133, ptr %gate_mask9.i72, align 4
  %246 = ptrtoint ptr %interval12.i73 to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 100000, ptr %interval12.i73, align 8
  %247 = ptrtoint ptr %gate_mask66.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 134, ptr %gate_mask66.i, align 8
  %248 = ptrtoint ptr %interval69.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 100000, ptr %interval69.i, align 4
  %249 = ptrtoint ptr %gate_mask116.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 135, ptr %gate_mask116.i, align 4
  %250 = ptrtoint ptr %interval119.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 100000, ptr %interval119.i, align 8
  %251 = ptrtoint ptr %num_entries.i74 to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 4, ptr %num_entries.i74, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %system_time.i127) #8
  %252 = ptrtoint ptr %system_time.i127 to i32
  call void @__asan_store8_noabort(i32 %252)
  store i64 -1, ptr %system_time.i127, align 8, !annotation !29
  call void @tsnep_get_system_time(ptr noundef %add.ptr.i, ptr noundef nonnull %system_time.i127) #8
  %253 = ptrtoint ptr %system_time.i127 to i32
  call void @__asan_load8_noabort(i32 %253)
  %254 = load i64, ptr %system_time.i127, align 8
  %add.i129 = add i64 %254, 7000000
  store i64 %add.i129, ptr %system_time.i127, align 8
  %255 = ptrtoint ptr %cycle_time.i66 to i32
  call void @__asan_load8_noabort(i32 %255)
  %256 = load i64, ptr %cycle_time.i66, align 8
  %call2.i132 = call i64 @div64_u64(i64 noundef %add.i129, i64 noundef %256) #8
  %257 = ptrtoint ptr %base_time.i65 to i32
  call void @__asan_load8_noabort(i32 %257)
  %258 = load i64, ptr %base_time.i65, align 8
  %add4.i133 = add i64 %call2.i132, 1
  %259 = ptrtoint ptr %cycle_time.i66 to i32
  call void @__asan_load8_noabort(i32 %259)
  %260 = load i64, ptr %cycle_time.i66, align 8
  %mul6.i134 = mul i64 %260, %add4.i133
  %add7.i135 = add i64 %mul6.i134, %258
  store i64 %add7.i135, ptr %base_time.i65, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %system_time.i127) #8
  %call196.i = call fastcc zeroext i1 @enable_check_taprio(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i.i59) #8
  br i1 %call196.i, label %if.end198.i, label %if.end167.i.tsnep_test_taprio_change.exit_crit_edge

if.end167.i.tsnep_test_taprio_change.exit_crit_edge: ; preds = %if.end167.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tsnep_test_taprio_change.exit

if.end198.i:                                      ; preds = %if.end167.i
  %261 = ptrtoint ptr %base_time.i65 to i32
  call void @__asan_store8_noabort(i32 %261)
  store i64 0, ptr %base_time.i65, align 8
  %262 = ptrtoint ptr %cycle_time.i66 to i32
  call void @__asan_store8_noabort(i32 %262)
  store i64 1700000, ptr %cycle_time.i66, align 8
  %263 = ptrtoint ptr %gate_mask.i69 to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 136, ptr %gate_mask.i69, align 8
  %264 = ptrtoint ptr %interval.i70 to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 200000, ptr %interval.i70, align 4
  %265 = ptrtoint ptr %gate_mask9.i72 to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 137, ptr %gate_mask9.i72, align 4
  %266 = ptrtoint ptr %interval12.i73 to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 300000, ptr %interval12.i73, align 8
  %267 = ptrtoint ptr %gate_mask66.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 138, ptr %gate_mask66.i, align 8
  %268 = ptrtoint ptr %interval69.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 600000, ptr %interval69.i, align 4
  %269 = ptrtoint ptr %gate_mask116.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 139, ptr %gate_mask116.i, align 4
  %270 = ptrtoint ptr %interval119.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 100000, ptr %interval119.i, align 8
  %gate_mask228.i = getelementptr %struct.tc_taprio_qopt_offload, ptr %call7.i.i.i59, i32 2, i32 1
  %271 = ptrtoint ptr %gate_mask228.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 140, ptr %gate_mask228.i, align 8
  %interval231.i = getelementptr [0 x %struct.tc_taprio_sched_entry], ptr %entries3.i68, i32 0, i32 4, i32 2
  %272 = ptrtoint ptr %interval231.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 500000, ptr %interval231.i, align 4
  %273 = ptrtoint ptr %num_entries.i74 to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 5, ptr %num_entries.i74, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %system_time.i) #8
  %274 = ptrtoint ptr %system_time.i to i32
  call void @__asan_store8_noabort(i32 %274)
  store i64 -1, ptr %system_time.i, align 8, !annotation !29
  call void @tsnep_get_system_time(ptr noundef %add.ptr.i, ptr noundef nonnull %system_time.i) #8
  %275 = ptrtoint ptr %system_time.i to i32
  call void @__asan_load8_noabort(i32 %275)
  %276 = load i64, ptr %system_time.i, align 8
  %add.i125 = add i64 %276, 6000000
  store i64 %add.i125, ptr %system_time.i, align 8
  %277 = ptrtoint ptr %cycle_time.i66 to i32
  call void @__asan_load8_noabort(i32 %277)
  %278 = load i64, ptr %cycle_time.i66, align 8
  %call2.i = call i64 @div64_u64(i64 noundef %add.i125, i64 noundef %278) #8
  %279 = ptrtoint ptr %base_time.i65 to i32
  call void @__asan_load8_noabort(i32 %279)
  %280 = load i64, ptr %base_time.i65, align 8
  %add4.i = add i64 %call2.i, 1
  %281 = ptrtoint ptr %cycle_time.i66 to i32
  call void @__asan_load8_noabort(i32 %281)
  %282 = load i64, ptr %cycle_time.i66, align 8
  %mul6.i = mul i64 %282, %add4.i
  %add7.i = add i64 %mul6.i, %280
  store i64 %add7.i, ptr %base_time.i65, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %system_time.i) #8
  %call233.i = call fastcc zeroext i1 @enable_check_taprio(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i.i59) #8
  br i1 %call233.i, label %if.end235.i, label %if.end198.i.tsnep_test_taprio_change.exit_crit_edge

if.end198.i.tsnep_test_taprio_change.exit_crit_edge: ; preds = %if.end198.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tsnep_test_taprio_change.exit

if.end235.i:                                      ; preds = %if.end198.i
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %qopt.i.i57) #8
  %283 = call ptr @memset(ptr %qopt.i.i57, i32 0, i32 40)
  %284 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %add.ptr.i, align 8
  %call.i.i81 = call i32 @tsnep_tc_setup(ptr noundef %285, i32 noundef 13, ptr noundef nonnull %qopt.i.i57) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i81)
  %tobool.not.i.i = icmp eq i32 %call.i.i81, 0
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %qopt.i.i57) #8
  br i1 %tobool.not.i.i, label %if.then19, label %if.end235.i.tsnep_test_taprio_change.exit_crit_edge

if.end235.i.tsnep_test_taprio_change.exit_crit_edge: ; preds = %if.end235.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tsnep_test_taprio_change.exit

tsnep_test_taprio_change.exit:                    ; preds = %if.end235.i.tsnep_test_taprio_change.exit_crit_edge, %if.end198.i.tsnep_test_taprio_change.exit_crit_edge, %if.end167.i.tsnep_test_taprio_change.exit_crit_edge, %if.end142.i.tsnep_test_taprio_change.exit_crit_edge, %if.end123.i.tsnep_test_taprio_change.exit_crit_edge, %if.end92.i.tsnep_test_taprio_change.exit_crit_edge, %if.end73.i.tsnep_test_taprio_change.exit_crit_edge, %if.end49.i.tsnep_test_taprio_change.exit_crit_edge, %if.end32.i.tsnep_test_taprio_change.exit_crit_edge, %if.end21.i.tsnep_test_taprio_change.exit_crit_edge, %if.end18.i.tsnep_test_taprio_change.exit_crit_edge, %if.end15.i.tsnep_test_taprio_change.exit_crit_edge, %for.end.i75.tsnep_test_taprio_change.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %qopt.i392.i) #8
  %286 = call ptr @memset(ptr %qopt.i392.i, i32 0, i32 40)
  %287 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %add.ptr.i, align 8
  %call.i393.i = call i32 @tsnep_tc_setup(ptr noundef %288, i32 noundef 13, ptr noundef nonnull %qopt.i392.i) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %qopt.i392.i) #8
  call void @kfree(ptr noundef nonnull %call7.i.i.i59) #8
  br label %if.else21

if.then19:                                        ; preds = %if.end235.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i.i.i59) #8
  br label %if.end25

if.else21:                                        ; preds = %tsnep_test_taprio_change.exit, %if.end17.if.else21_crit_edge
  %289 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %flags, align 4
  %or23 = or i32 %290, 2
  store i32 %or23, ptr %flags, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.else21, %if.then19
  %.sink230 = phi i64 [ 1, %if.else21 ], [ 0, %if.then19 ]
  %arrayidx24 = getelementptr i64, ptr %data, i32 2
  %291 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store8_noabort(i32 %291)
  store i64 %.sink230, ptr %arrayidx24, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %292 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i88 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %292, i32 noundef 3520, i32 noundef 3100) #11
  %tobool.not.i89 = icmp eq ptr %call7.i.i.i88, null
  br i1 %tobool.not.i89, label %if.end25.if.else29_crit_edge, label %if.end25.for.body.i93_crit_edge

if.end25.for.body.i93_crit_edge:                  ; preds = %if.end25
  br label %for.body.i93

if.end25.if.else29_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else29

for.body.i93:                                     ; preds = %for.body.i93.for.body.i93_crit_edge, %if.end25.for.body.i93_crit_edge
  %i.0406.i = phi i32 [ %inc.i91, %for.body.i93.for.body.i93_crit_edge ], [ 0, %if.end25.for.body.i93_crit_edge ]
  %arrayidx.i90 = getelementptr %struct.tc_taprio_qopt_offload, ptr %call7.i.i.i88, i32 0, i32 5, i32 %i.0406.i
  %293 = ptrtoint ptr %arrayidx.i90 to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 0, ptr %arrayidx.i90, align 4
  %inc.i91 = add nuw nsw i32 %i.0406.i, 1
  %exitcond.not.i92 = icmp eq i32 %inc.i91, 255
  br i1 %exitcond.not.i92, label %for.end.i105, label %for.body.i93.for.body.i93_crit_edge

for.body.i93.for.body.i93_crit_edge:              ; preds = %for.body.i93
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i93

for.end.i105:                                     ; preds = %for.body.i93
  %294 = ptrtoint ptr %call7.i.i.i88 to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 1, ptr %call7.i.i.i88, align 8
  %base_time.i94 = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %call7.i.i.i88, i32 0, i32 1
  %295 = ptrtoint ptr %base_time.i94 to i32
  call void @__asan_store8_noabort(i32 %295)
  store i64 0, ptr %base_time.i94, align 8
  %cycle_time.i95 = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %call7.i.i.i88, i32 0, i32 2
  %296 = ptrtoint ptr %cycle_time.i95 to i32
  call void @__asan_store8_noabort(i32 %296)
  store i64 100000, ptr %cycle_time.i95, align 8
  %cycle_time_extension.i96 = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %call7.i.i.i88, i32 0, i32 3
  %297 = ptrtoint ptr %cycle_time_extension.i96 to i32
  call void @__asan_store8_noabort(i32 %297)
  store i64 50000, ptr %cycle_time_extension.i96, align 8
  %entries3.i97 = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %call7.i.i.i88, i32 0, i32 5
  %gate_mask.i98 = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %call7.i.i.i88, i32 1
  %298 = ptrtoint ptr %gate_mask.i98 to i32
  call void @__asan_store4_noabort(i32 %298)
  store i32 144, ptr %gate_mask.i98, align 8
  %interval.i99 = getelementptr inbounds %struct.tc_taprio_sched_entry, ptr %entries3.i97, i32 0, i32 2
  %299 = ptrtoint ptr %interval.i99 to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 20000, ptr %interval.i99, align 4
  %arrayidx8.i100 = getelementptr %struct.tc_taprio_qopt_offload, ptr %call7.i.i.i88, i32 1, i32 1
  %gate_mask9.i101 = getelementptr inbounds %struct.tc_taprio_sched_entry, ptr %arrayidx8.i100, i32 0, i32 1
  %300 = ptrtoint ptr %gate_mask9.i101 to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 145, ptr %gate_mask9.i101, align 4
  %interval12.i102 = getelementptr %struct.tc_taprio_qopt_offload, ptr %call7.i.i.i88, i32 1, i32 2
  %301 = ptrtoint ptr %interval12.i102 to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 80000, ptr %interval12.i102, align 8
  %num_entries.i103 = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %call7.i.i.i88, i32 0, i32 4
  %302 = ptrtoint ptr %num_entries.i103 to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 2, ptr %num_entries.i103, align 8
  %call13.i104 = call fastcc zeroext i1 @enable_check_taprio(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i.i88) #8
  br i1 %call13.i104, label %if.end15.i112, label %for.end.i105.tsnep_test_taprio_extension.exit_crit_edge

for.end.i105.tsnep_test_taprio_extension.exit_crit_edge: ; preds = %for.end.i105
  call void @__sanitizer_cov_trace_pc() #10
  br label %tsnep_test_taprio_extension.exit

if.end15.i112:                                    ; preds = %for.end.i105
  %303 = ptrtoint ptr %base_time.i94 to i32
  call void @__asan_store8_noabort(i32 %303)
  store i64 50000, ptr %base_time.i94, align 8
  %304 = ptrtoint ptr %gate_mask.i98 to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 146, ptr %gate_mask.i98, align 8
  %305 = ptrtoint ptr %interval.i99 to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 33000, ptr %interval.i99, align 4
  %306 = ptrtoint ptr %gate_mask9.i101 to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 147, ptr %gate_mask9.i101, align 4
  %307 = ptrtoint ptr %interval12.i102 to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 67000, ptr %interval12.i102, align 8
  %308 = ptrtoint ptr %num_entries.i103 to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 2, ptr %num_entries.i103, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %system_time.i.i87) #8
  %309 = ptrtoint ptr %system_time.i.i87 to i32
  call void @__asan_store8_noabort(i32 %309)
  store i64 -1, ptr %system_time.i.i87, align 8, !annotation !29
  call void @tsnep_get_system_time(ptr noundef %add.ptr.i, ptr noundef nonnull %system_time.i.i87) #8
  %310 = ptrtoint ptr %system_time.i.i87 to i32
  call void @__asan_load8_noabort(i32 %310)
  %311 = load i64, ptr %system_time.i.i87, align 8
  %add.i.i106 = add i64 %311, 2000000
  store i64 %add.i.i106, ptr %system_time.i.i87, align 8
  %sub.i.i107 = add i64 %311, 1950000
  %312 = ptrtoint ptr %cycle_time.i95 to i32
  call void @__asan_load8_noabort(i32 %312)
  %313 = load i64, ptr %cycle_time.i95, align 8
  %call2.i.i108 = call i64 @div64_u64(i64 noundef %sub.i.i107, i64 noundef %313) #8
  %314 = ptrtoint ptr %base_time.i94 to i32
  call void @__asan_load8_noabort(i32 %314)
  %315 = load i64, ptr %base_time.i94, align 8
  %add4.i.i109 = add i64 %call2.i.i108, 1
  %316 = ptrtoint ptr %cycle_time.i95 to i32
  call void @__asan_load8_noabort(i32 %316)
  %317 = load i64, ptr %cycle_time.i95, align 8
  %mul6.i.i110 = mul i64 %317, %add4.i.i109
  %add7.i.i111 = add i64 %mul6.i.i110, %315
  store i64 %add7.i.i111, ptr %base_time.i94, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %system_time.i.i87) #8
  %call31.i = call fastcc zeroext i1 @enable_check_taprio(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i.i88) #8
  br i1 %call31.i, label %if.end33.i, label %if.end15.i112.tsnep_test_taprio_extension.exit_crit_edge

if.end15.i112.tsnep_test_taprio_extension.exit_crit_edge: ; preds = %if.end15.i112
  call void @__sanitizer_cov_trace_pc() #10
  br label %tsnep_test_taprio_extension.exit

if.end33.i:                                       ; preds = %if.end15.i112
  %318 = ptrtoint ptr %base_time.i94 to i32
  call void @__asan_store8_noabort(i32 %318)
  store i64 0, ptr %base_time.i94, align 8
  %319 = ptrtoint ptr %cycle_time.i95 to i32
  call void @__asan_store8_noabort(i32 %319)
  store i64 1000000, ptr %cycle_time.i95, align 8
  %320 = ptrtoint ptr %cycle_time_extension.i96 to i32
  call void @__asan_store8_noabort(i32 %320)
  store i64 700000, ptr %cycle_time_extension.i96, align 8
  %321 = ptrtoint ptr %gate_mask.i98 to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 148, ptr %gate_mask.i98, align 8
  %322 = ptrtoint ptr %interval.i99 to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 400000, ptr %interval.i99, align 4
  %323 = ptrtoint ptr %gate_mask9.i101 to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 149, ptr %gate_mask9.i101, align 4
  %324 = ptrtoint ptr %interval12.i102 to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 600000, ptr %interval12.i102, align 8
  %325 = ptrtoint ptr %num_entries.i103 to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 2, ptr %num_entries.i103, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %system_time.i376.i) #8
  %326 = ptrtoint ptr %system_time.i376.i to i32
  call void @__asan_store8_noabort(i32 %326)
  store i64 -1, ptr %system_time.i376.i, align 8, !annotation !29
  call void @tsnep_get_system_time(ptr noundef %add.ptr.i, ptr noundef nonnull %system_time.i376.i) #8
  %327 = ptrtoint ptr %system_time.i376.i to i32
  call void @__asan_load8_noabort(i32 %327)
  %328 = load i64, ptr %system_time.i376.i, align 8
  %add.i378.i = add i64 %328, 7000000
  store i64 %add.i378.i, ptr %system_time.i376.i, align 8
  %329 = ptrtoint ptr %cycle_time.i95 to i32
  call void @__asan_load8_noabort(i32 %329)
  %330 = load i64, ptr %cycle_time.i95, align 8
  %call2.i381.i = call i64 @div64_u64(i64 noundef %add.i378.i, i64 noundef %330) #8
  %331 = ptrtoint ptr %base_time.i94 to i32
  call void @__asan_load8_noabort(i32 %331)
  %332 = load i64, ptr %base_time.i94, align 8
  %add4.i382.i = add i64 %call2.i381.i, 1
  %333 = ptrtoint ptr %cycle_time.i95 to i32
  call void @__asan_load8_noabort(i32 %333)
  %334 = load i64, ptr %cycle_time.i95, align 8
  %mul6.i383.i = mul i64 %334, %add4.i382.i
  %add7.i384.i = add i64 %mul6.i383.i, %332
  store i64 %add7.i384.i, ptr %base_time.i94, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %system_time.i376.i) #8
  %call51.i = call fastcc zeroext i1 @enable_check_taprio(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i.i88) #8
  br i1 %call51.i, label %if.end53.i, label %if.end33.i.tsnep_test_taprio_extension.exit_crit_edge

if.end33.i.tsnep_test_taprio_extension.exit_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tsnep_test_taprio_extension.exit

if.end53.i:                                       ; preds = %if.end33.i
  %335 = ptrtoint ptr %base_time.i94 to i32
  call void @__asan_store8_noabort(i32 %335)
  store i64 700000, ptr %base_time.i94, align 8
  %336 = ptrtoint ptr %cycle_time.i95 to i32
  call void @__asan_store8_noabort(i32 %336)
  store i64 2000000, ptr %cycle_time.i95, align 8
  %337 = ptrtoint ptr %cycle_time_extension.i96 to i32
  call void @__asan_store8_noabort(i32 %337)
  store i64 1900000, ptr %cycle_time_extension.i96, align 8
  %338 = ptrtoint ptr %gate_mask.i98 to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 150, ptr %gate_mask.i98, align 8
  %339 = ptrtoint ptr %interval.i99 to i32
  call void @__asan_store4_noabort(i32 %339)
  store i32 400000, ptr %interval.i99, align 4
  %340 = ptrtoint ptr %gate_mask9.i101 to i32
  call void @__asan_store4_noabort(i32 %340)
  store i32 151, ptr %gate_mask9.i101, align 4
  %341 = ptrtoint ptr %interval12.i102 to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 1600000, ptr %interval12.i102, align 8
  %342 = ptrtoint ptr %num_entries.i103 to i32
  call void @__asan_store4_noabort(i32 %342)
  store i32 2, ptr %num_entries.i103, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %system_time.i385.i) #8
  %343 = ptrtoint ptr %system_time.i385.i to i32
  call void @__asan_store8_noabort(i32 %343)
  store i64 -1, ptr %system_time.i385.i, align 8, !annotation !29
  call void @tsnep_get_system_time(ptr noundef %add.ptr.i, ptr noundef nonnull %system_time.i385.i) #8
  %344 = ptrtoint ptr %system_time.i385.i to i32
  call void @__asan_load8_noabort(i32 %344)
  %345 = load i64, ptr %system_time.i385.i, align 8
  %add.i387.i = add i64 %345, 9000000
  store i64 %add.i387.i, ptr %system_time.i385.i, align 8
  %sub.i388.i = add i64 %345, 8300000
  %346 = ptrtoint ptr %cycle_time.i95 to i32
  call void @__asan_load8_noabort(i32 %346)
  %347 = load i64, ptr %cycle_time.i95, align 8
  %call2.i390.i = call i64 @div64_u64(i64 noundef %sub.i388.i, i64 noundef %347) #8
  %348 = ptrtoint ptr %base_time.i94 to i32
  call void @__asan_load8_noabort(i32 %348)
  %349 = load i64, ptr %base_time.i94, align 8
  %add4.i391.i = add i64 %call2.i390.i, 1
  %350 = ptrtoint ptr %cycle_time.i95 to i32
  call void @__asan_load8_noabort(i32 %350)
  %351 = load i64, ptr %cycle_time.i95, align 8
  %mul6.i392.i = mul i64 %351, %add4.i391.i
  %add7.i393.i = add i64 %mul6.i392.i, %349
  store i64 %add7.i393.i, ptr %base_time.i94, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %system_time.i385.i) #8
  %call71.i113 = call fastcc zeroext i1 @enable_check_taprio(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i.i88) #8
  br i1 %call71.i113, label %if.end73.i114, label %if.end53.i.tsnep_test_taprio_extension.exit_crit_edge

if.end53.i.tsnep_test_taprio_extension.exit_crit_edge: ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tsnep_test_taprio_extension.exit

if.end73.i114:                                    ; preds = %if.end53.i
  %352 = ptrtoint ptr %base_time.i94 to i32
  call void @__asan_store8_noabort(i32 %352)
  store i64 0, ptr %base_time.i94, align 8
  %353 = ptrtoint ptr %cycle_time.i95 to i32
  call void @__asan_store8_noabort(i32 %353)
  store i64 1500000, ptr %cycle_time.i95, align 8
  %354 = ptrtoint ptr %cycle_time_extension.i96 to i32
  call void @__asan_store8_noabort(i32 %354)
  store i64 700000, ptr %cycle_time_extension.i96, align 8
  %355 = ptrtoint ptr %gate_mask.i98 to i32
  call void @__asan_store4_noabort(i32 %355)
  store i32 152, ptr %gate_mask.i98, align 8
  %356 = ptrtoint ptr %interval.i99 to i32
  call void @__asan_store4_noabort(i32 %356)
  store i32 400000, ptr %interval.i99, align 4
  %357 = ptrtoint ptr %gate_mask9.i101 to i32
  call void @__asan_store4_noabort(i32 %357)
  store i32 153, ptr %gate_mask9.i101, align 4
  %358 = ptrtoint ptr %interval12.i102 to i32
  call void @__asan_store4_noabort(i32 %358)
  store i32 600000, ptr %interval12.i102, align 8
  %gate_mask92.i = getelementptr %struct.tc_taprio_qopt_offload, ptr %call7.i.i.i88, i32 1, i32 3
  %359 = ptrtoint ptr %gate_mask92.i to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 154, ptr %gate_mask92.i, align 8
  %interval95.i = getelementptr [0 x %struct.tc_taprio_sched_entry], ptr %entries3.i97, i32 0, i32 2, i32 2
  %360 = ptrtoint ptr %interval95.i to i32
  call void @__asan_store4_noabort(i32 %360)
  store i32 500000, ptr %interval95.i, align 4
  %361 = ptrtoint ptr %num_entries.i103 to i32
  call void @__asan_store4_noabort(i32 %361)
  store i32 3, ptr %num_entries.i103, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %system_time.i394.i) #8
  %362 = ptrtoint ptr %system_time.i394.i to i32
  call void @__asan_store8_noabort(i32 %362)
  store i64 -1, ptr %system_time.i394.i, align 8, !annotation !29
  call void @tsnep_get_system_time(ptr noundef %add.ptr.i, ptr noundef nonnull %system_time.i394.i) #8
  %363 = ptrtoint ptr %system_time.i394.i to i32
  call void @__asan_load8_noabort(i32 %363)
  %364 = load i64, ptr %system_time.i394.i, align 8
  %add.i396.i = add i64 %364, 3000000
  store i64 %add.i396.i, ptr %system_time.i394.i, align 8
  %365 = ptrtoint ptr %cycle_time.i95 to i32
  call void @__asan_load8_noabort(i32 %365)
  %366 = load i64, ptr %cycle_time.i95, align 8
  %call2.i399.i = call i64 @div64_u64(i64 noundef %add.i396.i, i64 noundef %366) #8
  %367 = ptrtoint ptr %base_time.i94 to i32
  call void @__asan_load8_noabort(i32 %367)
  %368 = load i64, ptr %base_time.i94, align 8
  %add4.i400.i = add i64 %call2.i399.i, 1
  %369 = ptrtoint ptr %cycle_time.i95 to i32
  call void @__asan_load8_noabort(i32 %369)
  %370 = load i64, ptr %cycle_time.i95, align 8
  %mul6.i401.i = mul i64 %370, %add4.i400.i
  %add7.i402.i = add i64 %mul6.i401.i, %368
  store i64 %add7.i402.i, ptr %base_time.i94, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %system_time.i394.i) #8
  %call97.i = call fastcc zeroext i1 @enable_check_taprio(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i.i88) #8
  br i1 %call97.i, label %if.end99.i, label %if.end73.i114.tsnep_test_taprio_extension.exit_crit_edge

if.end73.i114.tsnep_test_taprio_extension.exit_crit_edge: ; preds = %if.end73.i114
  call void @__sanitizer_cov_trace_pc() #10
  br label %tsnep_test_taprio_extension.exit

if.end99.i:                                       ; preds = %if.end73.i114
  %371 = ptrtoint ptr %base_time.i94 to i32
  call void @__asan_store8_noabort(i32 %371)
  store i64 100000, ptr %base_time.i94, align 8
  %372 = ptrtoint ptr %cycle_time.i95 to i32
  call void @__asan_store8_noabort(i32 %372)
  store i64 500000, ptr %cycle_time.i95, align 8
  %373 = ptrtoint ptr %cycle_time_extension.i96 to i32
  call void @__asan_store8_noabort(i32 %373)
  store i64 300000, ptr %cycle_time_extension.i96, align 8
  %374 = ptrtoint ptr %gate_mask.i98 to i32
  call void @__asan_store4_noabort(i32 %374)
  store i32 155, ptr %gate_mask.i98, align 8
  %375 = ptrtoint ptr %interval.i99 to i32
  call void @__asan_store4_noabort(i32 %375)
  store i32 150000, ptr %interval.i99, align 4
  %376 = ptrtoint ptr %gate_mask9.i101 to i32
  call void @__asan_store4_noabort(i32 %376)
  store i32 156, ptr %gate_mask9.i101, align 4
  %377 = ptrtoint ptr %interval12.i102 to i32
  call void @__asan_store4_noabort(i32 %377)
  store i32 350000, ptr %interval12.i102, align 8
  %378 = ptrtoint ptr %num_entries.i103 to i32
  call void @__asan_store4_noabort(i32 %378)
  store i32 2, ptr %num_entries.i103, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %system_time.i208) #8
  %379 = ptrtoint ptr %system_time.i208 to i32
  call void @__asan_store8_noabort(i32 %379)
  store i64 -1, ptr %system_time.i208, align 8, !annotation !29
  call void @tsnep_get_system_time(ptr noundef %add.ptr.i, ptr noundef nonnull %system_time.i208) #8
  %380 = ptrtoint ptr %system_time.i208 to i32
  call void @__asan_load8_noabort(i32 %380)
  %381 = load i64, ptr %system_time.i208, align 8
  %add.i210 = add i64 %381, 9000000
  store i64 %add.i210, ptr %system_time.i208, align 8
  %sub.i211 = add i64 %381, 8900000
  %382 = ptrtoint ptr %cycle_time.i95 to i32
  call void @__asan_load8_noabort(i32 %382)
  %383 = load i64, ptr %cycle_time.i95, align 8
  %call2.i213 = call i64 @div64_u64(i64 noundef %sub.i211, i64 noundef %383) #8
  %384 = ptrtoint ptr %base_time.i94 to i32
  call void @__asan_load8_noabort(i32 %384)
  %385 = load i64, ptr %base_time.i94, align 8
  %add4.i214 = add i64 %call2.i213, 1
  %386 = ptrtoint ptr %cycle_time.i95 to i32
  call void @__asan_load8_noabort(i32 %386)
  %387 = load i64, ptr %cycle_time.i95, align 8
  %mul6.i215 = mul i64 %387, %add4.i214
  %add7.i216 = add i64 %mul6.i215, %385
  store i64 %add7.i216, ptr %base_time.i94, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %system_time.i208) #8
  %call117.i = call fastcc zeroext i1 @enable_check_taprio(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i.i88) #8
  br i1 %call117.i, label %if.end119.i, label %if.end99.i.tsnep_test_taprio_extension.exit_crit_edge

if.end99.i.tsnep_test_taprio_extension.exit_crit_edge: ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tsnep_test_taprio_extension.exit

if.end119.i:                                      ; preds = %if.end99.i
  %388 = ptrtoint ptr %base_time.i94 to i32
  call void @__asan_store8_noabort(i32 %388)
  store i64 0, ptr %base_time.i94, align 8
  %389 = ptrtoint ptr %cycle_time.i95 to i32
  call void @__asan_store8_noabort(i32 %389)
  store i64 1000000, ptr %cycle_time.i95, align 8
  %390 = ptrtoint ptr %cycle_time_extension.i96 to i32
  call void @__asan_store8_noabort(i32 %390)
  store i64 700000, ptr %cycle_time_extension.i96, align 8
  %391 = ptrtoint ptr %gate_mask.i98 to i32
  call void @__asan_store4_noabort(i32 %391)
  store i32 173, ptr %gate_mask.i98, align 8
  %392 = ptrtoint ptr %interval.i99 to i32
  call void @__asan_store4_noabort(i32 %392)
  store i32 400000, ptr %interval.i99, align 4
  %393 = ptrtoint ptr %gate_mask9.i101 to i32
  call void @__asan_store4_noabort(i32 %393)
  store i32 174, ptr %gate_mask9.i101, align 4
  %394 = ptrtoint ptr %interval12.i102 to i32
  call void @__asan_store4_noabort(i32 %394)
  store i32 300000, ptr %interval12.i102, align 8
  %395 = ptrtoint ptr %gate_mask92.i to i32
  call void @__asan_store4_noabort(i32 %395)
  store i32 175, ptr %gate_mask92.i, align 8
  %396 = ptrtoint ptr %interval95.i to i32
  call void @__asan_store4_noabort(i32 %396)
  store i32 300000, ptr %interval95.i, align 4
  %397 = ptrtoint ptr %num_entries.i103 to i32
  call void @__asan_store4_noabort(i32 %397)
  store i32 3, ptr %num_entries.i103, align 8
  %call143.i = call fastcc zeroext i1 @enable_check_taprio(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i.i88) #8
  br i1 %call143.i, label %if.end145.i, label %if.end119.i.tsnep_test_taprio_extension.exit_crit_edge

if.end119.i.tsnep_test_taprio_extension.exit_crit_edge: ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tsnep_test_taprio_extension.exit

if.end145.i:                                      ; preds = %if.end119.i
  %398 = ptrtoint ptr %base_time.i94 to i32
  call void @__asan_store8_noabort(i32 %398)
  store i64 0, ptr %base_time.i94, align 8
  %399 = ptrtoint ptr %cycle_time.i95 to i32
  call void @__asan_store8_noabort(i32 %399)
  store i64 400000, ptr %cycle_time.i95, align 8
  %400 = ptrtoint ptr %cycle_time_extension.i96 to i32
  call void @__asan_store8_noabort(i32 %400)
  store i64 100000, ptr %cycle_time_extension.i96, align 8
  %401 = ptrtoint ptr %gate_mask.i98 to i32
  call void @__asan_store4_noabort(i32 %401)
  store i32 160, ptr %gate_mask.i98, align 8
  %402 = ptrtoint ptr %interval.i99 to i32
  call void @__asan_store4_noabort(i32 %402)
  store i32 200000, ptr %interval.i99, align 4
  %403 = ptrtoint ptr %gate_mask9.i101 to i32
  call void @__asan_store4_noabort(i32 %403)
  store i32 161, ptr %gate_mask9.i101, align 4
  %404 = ptrtoint ptr %interval12.i102 to i32
  call void @__asan_store4_noabort(i32 %404)
  store i32 200000, ptr %interval12.i102, align 8
  %405 = ptrtoint ptr %num_entries.i103 to i32
  call void @__asan_store4_noabort(i32 %405)
  store i32 2, ptr %num_entries.i103, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %system_time.i199) #8
  %406 = ptrtoint ptr %system_time.i199 to i32
  call void @__asan_store8_noabort(i32 %406)
  store i64 -1, ptr %system_time.i199, align 8, !annotation !29
  call void @tsnep_get_system_time(ptr noundef %add.ptr.i, ptr noundef nonnull %system_time.i199) #8
  %407 = ptrtoint ptr %system_time.i199 to i32
  call void @__asan_load8_noabort(i32 %407)
  %408 = load i64, ptr %system_time.i199, align 8
  %add.i201 = add i64 %408, 19000000
  store i64 %add.i201, ptr %system_time.i199, align 8
  %409 = ptrtoint ptr %cycle_time.i95 to i32
  call void @__asan_load8_noabort(i32 %409)
  %410 = load i64, ptr %cycle_time.i95, align 8
  %call2.i204 = call i64 @div64_u64(i64 noundef %add.i201, i64 noundef %410) #8
  %411 = ptrtoint ptr %base_time.i94 to i32
  call void @__asan_load8_noabort(i32 %411)
  %412 = load i64, ptr %base_time.i94, align 8
  %add4.i205 = add i64 %call2.i204, 1
  %413 = ptrtoint ptr %cycle_time.i95 to i32
  call void @__asan_load8_noabort(i32 %413)
  %414 = load i64, ptr %cycle_time.i95, align 8
  %mul6.i206 = mul i64 %414, %add4.i205
  %add7.i207 = add i64 %mul6.i206, %412
  store i64 %add7.i207, ptr %base_time.i94, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %system_time.i199) #8
  %call163.i = call fastcc zeroext i1 @enable_check_taprio(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i.i88) #8
  br i1 %call163.i, label %if.end165.i, label %if.end145.i.tsnep_test_taprio_extension.exit_crit_edge

if.end145.i.tsnep_test_taprio_extension.exit_crit_edge: ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tsnep_test_taprio_extension.exit

if.end165.i:                                      ; preds = %if.end145.i
  %415 = ptrtoint ptr %base_time.i94 to i32
  call void @__asan_store8_noabort(i32 %415)
  store i64 0, ptr %base_time.i94, align 8
  %416 = ptrtoint ptr %cycle_time.i95 to i32
  call void @__asan_store8_noabort(i32 %416)
  store i64 500000, ptr %cycle_time.i95, align 8
  %417 = ptrtoint ptr %cycle_time_extension.i96 to i32
  call void @__asan_store8_noabort(i32 %417)
  store i64 499999, ptr %cycle_time_extension.i96, align 8
  %418 = ptrtoint ptr %gate_mask.i98 to i32
  call void @__asan_store4_noabort(i32 %418)
  store i32 178, ptr %gate_mask.i98, align 8
  %419 = ptrtoint ptr %interval.i99 to i32
  call void @__asan_store4_noabort(i32 %419)
  store i32 100000, ptr %interval.i99, align 4
  %420 = ptrtoint ptr %gate_mask9.i101 to i32
  call void @__asan_store4_noabort(i32 %420)
  store i32 179, ptr %gate_mask9.i101, align 4
  %421 = ptrtoint ptr %interval12.i102 to i32
  call void @__asan_store4_noabort(i32 %421)
  store i32 100000, ptr %interval12.i102, align 8
  %422 = ptrtoint ptr %gate_mask92.i to i32
  call void @__asan_store4_noabort(i32 %422)
  store i32 180, ptr %gate_mask92.i, align 8
  %423 = ptrtoint ptr %interval95.i to i32
  call void @__asan_store4_noabort(i32 %423)
  store i32 100000, ptr %interval95.i, align 4
  %gate_mask190.i = getelementptr %struct.tc_taprio_qopt_offload, ptr %call7.i.i.i88, i32 1, i32 5
  %424 = ptrtoint ptr %gate_mask190.i to i32
  call void @__asan_store4_noabort(i32 %424)
  store i32 181, ptr %gate_mask190.i, align 4
  %interval193.i = getelementptr %struct.tc_taprio_qopt_offload, ptr %call7.i.i.i88, i32 2
  %425 = ptrtoint ptr %interval193.i to i32
  call void @__asan_store4_noabort(i32 %425)
  store i32 200000, ptr %interval193.i, align 8
  %426 = ptrtoint ptr %num_entries.i103 to i32
  call void @__asan_store4_noabort(i32 %426)
  store i32 4, ptr %num_entries.i103, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %system_time.i190) #8
  %427 = ptrtoint ptr %system_time.i190 to i32
  call void @__asan_store8_noabort(i32 %427)
  store i64 -1, ptr %system_time.i190, align 8, !annotation !29
  call void @tsnep_get_system_time(ptr noundef %add.ptr.i, ptr noundef nonnull %system_time.i190) #8
  %428 = ptrtoint ptr %system_time.i190 to i32
  call void @__asan_load8_noabort(i32 %428)
  %429 = load i64, ptr %system_time.i190, align 8
  %add.i192 = add i64 %429, 19000000
  store i64 %add.i192, ptr %system_time.i190, align 8
  %430 = ptrtoint ptr %cycle_time.i95 to i32
  call void @__asan_load8_noabort(i32 %430)
  %431 = load i64, ptr %cycle_time.i95, align 8
  %call2.i195 = call i64 @div64_u64(i64 noundef %add.i192, i64 noundef %431) #8
  %432 = ptrtoint ptr %base_time.i94 to i32
  call void @__asan_load8_noabort(i32 %432)
  %433 = load i64, ptr %base_time.i94, align 8
  %add4.i196 = add i64 %call2.i195, 1
  %434 = ptrtoint ptr %cycle_time.i95 to i32
  call void @__asan_load8_noabort(i32 %434)
  %435 = load i64, ptr %cycle_time.i95, align 8
  %mul6.i197 = mul i64 %435, %add4.i196
  %add7.i198 = add i64 %mul6.i197, %433
  store i64 %add7.i198, ptr %base_time.i94, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %system_time.i190) #8
  %call195.i = call fastcc zeroext i1 @enable_check_taprio(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i.i88) #8
  br i1 %call195.i, label %if.end197.i, label %if.end165.i.tsnep_test_taprio_extension.exit_crit_edge

if.end165.i.tsnep_test_taprio_extension.exit_crit_edge: ; preds = %if.end165.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tsnep_test_taprio_extension.exit

if.end197.i:                                      ; preds = %if.end165.i
  %436 = ptrtoint ptr %base_time.i94 to i32
  call void @__asan_store8_noabort(i32 %436)
  store i64 0, ptr %base_time.i94, align 8
  %437 = ptrtoint ptr %cycle_time.i95 to i32
  call void @__asan_store8_noabort(i32 %437)
  store i64 6000000, ptr %cycle_time.i95, align 8
  %438 = ptrtoint ptr %cycle_time_extension.i96 to i32
  call void @__asan_store8_noabort(i32 %438)
  store i64 5999999, ptr %cycle_time_extension.i96, align 8
  %439 = ptrtoint ptr %gate_mask.i98 to i32
  call void @__asan_store4_noabort(i32 %439)
  store i32 198, ptr %gate_mask.i98, align 8
  %440 = ptrtoint ptr %interval.i99 to i32
  call void @__asan_store4_noabort(i32 %440)
  store i32 1000000, ptr %interval.i99, align 4
  %441 = ptrtoint ptr %gate_mask9.i101 to i32
  call void @__asan_store4_noabort(i32 %441)
  store i32 199, ptr %gate_mask9.i101, align 4
  %442 = ptrtoint ptr %interval12.i102 to i32
  call void @__asan_store4_noabort(i32 %442)
  store i32 1000000, ptr %interval12.i102, align 8
  %443 = ptrtoint ptr %gate_mask92.i to i32
  call void @__asan_store4_noabort(i32 %443)
  store i32 200, ptr %gate_mask92.i, align 8
  %444 = ptrtoint ptr %interval95.i to i32
  call void @__asan_store4_noabort(i32 %444)
  store i32 1000000, ptr %interval95.i, align 4
  %445 = ptrtoint ptr %gate_mask190.i to i32
  call void @__asan_store4_noabort(i32 %445)
  store i32 201, ptr %gate_mask190.i, align 4
  %446 = ptrtoint ptr %interval193.i to i32
  call void @__asan_store4_noabort(i32 %446)
  store i32 1500000, ptr %interval193.i, align 8
  %gate_mask228.i115 = getelementptr %struct.tc_taprio_qopt_offload, ptr %call7.i.i.i88, i32 2, i32 1
  %447 = ptrtoint ptr %gate_mask228.i115 to i32
  call void @__asan_store4_noabort(i32 %447)
  store i32 202, ptr %gate_mask228.i115, align 8
  %interval231.i116 = getelementptr [0 x %struct.tc_taprio_sched_entry], ptr %entries3.i97, i32 0, i32 4, i32 2
  %448 = ptrtoint ptr %interval231.i116 to i32
  call void @__asan_store4_noabort(i32 %448)
  store i32 1500000, ptr %interval231.i116, align 4
  %449 = ptrtoint ptr %num_entries.i103 to i32
  call void @__asan_store4_noabort(i32 %449)
  store i32 5, ptr %num_entries.i103, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %system_time.i181) #8
  %450 = ptrtoint ptr %system_time.i181 to i32
  call void @__asan_store8_noabort(i32 %450)
  store i64 -1, ptr %system_time.i181, align 8, !annotation !29
  call void @tsnep_get_system_time(ptr noundef %add.ptr.i, ptr noundef nonnull %system_time.i181) #8
  %451 = ptrtoint ptr %system_time.i181 to i32
  call void @__asan_load8_noabort(i32 %451)
  %452 = load i64, ptr %system_time.i181, align 8
  %add.i183 = add i64 %452, 1000000
  store i64 %add.i183, ptr %system_time.i181, align 8
  %453 = ptrtoint ptr %cycle_time.i95 to i32
  call void @__asan_load8_noabort(i32 %453)
  %454 = load i64, ptr %cycle_time.i95, align 8
  %call2.i186 = call i64 @div64_u64(i64 noundef %add.i183, i64 noundef %454) #8
  %455 = ptrtoint ptr %base_time.i94 to i32
  call void @__asan_load8_noabort(i32 %455)
  %456 = load i64, ptr %base_time.i94, align 8
  %add4.i187 = add i64 %call2.i186, 1
  %457 = ptrtoint ptr %cycle_time.i95 to i32
  call void @__asan_load8_noabort(i32 %457)
  %458 = load i64, ptr %cycle_time.i95, align 8
  %mul6.i188 = mul i64 %458, %add4.i187
  %add7.i189 = add i64 %mul6.i188, %456
  store i64 %add7.i189, ptr %base_time.i94, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %system_time.i181) #8
  %call233.i117 = call fastcc zeroext i1 @enable_check_taprio(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i.i88) #8
  br i1 %call233.i117, label %if.end235.i120, label %if.end197.i.tsnep_test_taprio_extension.exit_crit_edge

if.end197.i.tsnep_test_taprio_extension.exit_crit_edge: ; preds = %if.end197.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tsnep_test_taprio_extension.exit

if.end235.i120:                                   ; preds = %if.end197.i
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %qopt.i.i86) #8
  %459 = call ptr @memset(ptr %qopt.i.i86, i32 0, i32 40)
  %460 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %add.ptr.i, align 8
  %call.i.i118 = call i32 @tsnep_tc_setup(ptr noundef %461, i32 noundef 13, ptr noundef nonnull %qopt.i.i86) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i118)
  %tobool.not.i.i119 = icmp eq i32 %call.i.i118, 0
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %qopt.i.i86) #8
  br i1 %tobool.not.i.i119, label %if.then27, label %if.end235.i120.tsnep_test_taprio_extension.exit_crit_edge

if.end235.i120.tsnep_test_taprio_extension.exit_crit_edge: ; preds = %if.end235.i120
  call void @__sanitizer_cov_trace_pc() #10
  br label %tsnep_test_taprio_extension.exit

tsnep_test_taprio_extension.exit:                 ; preds = %if.end235.i120.tsnep_test_taprio_extension.exit_crit_edge, %if.end197.i.tsnep_test_taprio_extension.exit_crit_edge, %if.end165.i.tsnep_test_taprio_extension.exit_crit_edge, %if.end145.i.tsnep_test_taprio_extension.exit_crit_edge, %if.end119.i.tsnep_test_taprio_extension.exit_crit_edge, %if.end99.i.tsnep_test_taprio_extension.exit_crit_edge, %if.end73.i114.tsnep_test_taprio_extension.exit_crit_edge, %if.end53.i.tsnep_test_taprio_extension.exit_crit_edge, %if.end33.i.tsnep_test_taprio_extension.exit_crit_edge, %if.end15.i112.tsnep_test_taprio_extension.exit_crit_edge, %for.end.i105.tsnep_test_taprio_extension.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %qopt.i403.i) #8
  %462 = call ptr @memset(ptr %qopt.i403.i, i32 0, i32 40)
  %463 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %add.ptr.i, align 8
  %call.i404.i = call i32 @tsnep_tc_setup(ptr noundef %464, i32 noundef 13, ptr noundef nonnull %qopt.i403.i) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %qopt.i403.i) #8
  call void @kfree(ptr noundef nonnull %call7.i.i.i88) #8
  br label %if.else29

if.then27:                                        ; preds = %if.end235.i120
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i.i.i88) #8
  %arrayidx28 = getelementptr i64, ptr %data, i32 3
  %465 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store8_noabort(i32 %465)
  store i64 0, ptr %arrayidx28, align 8
  br label %cleanup

if.else29:                                        ; preds = %tsnep_test_taprio_extension.exit, %if.end25.if.else29_crit_edge
  %466 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load i32, ptr %flags, align 4
  %or31 = or i32 %467, 2
  store i32 %or31, ptr %flags, align 4
  %arrayidx32 = getelementptr i64, ptr %data, i32 3
  %468 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store8_noabort(i32 %468)
  store i64 1, ptr %arrayidx32, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else29, %if.then27, %if.then
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @gc_delayed_enable(ptr nocapture noundef readonly %adapter, i1 noundef zeroext %a, i32 noundef %delay) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %addr.i = getelementptr inbounds %struct.tsnep_adapter, ptr %adapter, i32 0, i32 9
  %0 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 2056
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 8) #8, !srcloc !31
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %3, i32 2056
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #8, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !33
  %5 = and i32 %4, 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i64 @ktime_get() #8
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr.i, align 8
  %add.ptr.i54 = getelementptr i8, ptr %7, i32 2056
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i54, i8 16) #8, !srcloc !31
  %8 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %addr.i, align 8
  %add.ptr2.i55 = getelementptr i8, ptr %9, i32 2056
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i55) #8, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !33
  %11 = and i32 %10, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i56.not = icmp eq i32 %11, 0
  br i1 %tobool.not.i56.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %12 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %addr.i, align 8
  %add.ptr = getelementptr i8, ptr %13, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !32
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !33
  %add = add i32 %15, 131072
  %16 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %addr.i, align 8
  %add.ptr7 = getelementptr i8, ptr %17, i32 2060
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  %18 = tail call i32 @llvm.bswap.i32(i32 %add) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %18) #8, !srcloc !28
  %sub.i = add i32 %delay, 999
  %div.i = udiv i32 %sub.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %19(i32 noundef %div.i) #8
  %..i = select i1 %a, i8 2, i8 4
  %20 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %addr.i, align 8
  %add.ptr.i58 = getelementptr i8, ptr %21, i32 2056
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i58, i8 %..i) #8, !srcloc !31
  %22 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %addr.i, align 8
  %add.ptr2.i59 = getelementptr i8, ptr %23, i32 2056
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i59) #8, !srcloc !32
  %25 = lshr i32 %24, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !33
  %conv.i = zext i8 %..i to i32
  %and.i = and i32 %25, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp ne i32 %and.i, 0
  %call.i60 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %delay)
  %cmp = icmp sgt i32 %delay, 131072
  br i1 %cmp, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end4
  br i1 %tobool3.not.i, label %if.then11.cleanup_crit_edge, label %if.then11.if.else27_crit_edge

if.then11.if.else27_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else27

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %if.end4
  %sub = sub i64 %call.i60, %call.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 114687, i64 %sub)
  %cmp15 = icmp ugt i64 %sub, 114687
  %brmerge = select i1 %cmp15, i1 true, i1 %tobool3.not.i
  br i1 %brmerge, label %if.end21, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end21:                                         ; preds = %if.else
  br i1 %tobool3.not.i, label %if.then23, label %if.end21.if.else27_crit_edge

if.end21.if.else27_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else27

if.then23:                                        ; preds = %if.end21
  %26 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %addr.i, align 8
  %add.ptr.i62 = getelementptr i8, ptr %27, i32 2056
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i62) #8, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !33
  %29 = and i32 %28, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i63.not = icmp eq i32 %29, 0
  br i1 %tobool.not.i63.not, label %if.then23.if.end34_crit_edge, label %if.then23.cleanup_crit_edge

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then23.if.end34_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.else27:                                        ; preds = %if.end21.if.else27_crit_edge, %if.then11.if.else27_crit_edge
  %30 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %addr.i, align 8
  %add.ptr.i65 = getelementptr i8, ptr %31, i32 2056
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65) #8, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !33
  %33 = and i32 %32, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i66.not = icmp eq i32 %33, 0
  br i1 %tobool.not.i66.not, label %if.else27.cleanup_crit_edge, label %if.end30

if.else27.cleanup_crit_edge:                      ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30:                                         ; preds = %if.else27
  %34 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %addr.i, align 8
  %add.ptr.i68 = getelementptr i8, ptr %35, i32 2056
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i68, i8 16) #8, !srcloc !31
  %36 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %addr.i, align 8
  %add.ptr2.i69 = getelementptr i8, ptr %37, i32 2056
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i69) #8, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !33
  %39 = and i32 %38, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i70 = icmp eq i32 %39, 0
  br i1 %tobool.not.i70, label %if.end30.if.end34_crit_edge, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30.if.end34_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.end34:                                         ; preds = %if.end30.if.end34_crit_edge, %if.then23.if.end34_crit_edge
  %40 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %addr.i, align 8
  %add.ptr.i72 = getelementptr i8, ptr %41, i32 2056
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i72, i8 8) #8, !srcloc !31
  %42 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %addr.i, align 8
  %add.ptr2.i73 = getelementptr i8, ptr %43, i32 2056
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i73) #8, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !33
  %45 = and i32 %44, 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i74 = icmp eq i32 %45, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end30.cleanup_crit_edge, %if.else27.cleanup_crit_edge, %if.then23.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.then11.cleanup_crit_edge ], [ false, %if.else.cleanup_crit_edge ], [ false, %if.then23.cleanup_crit_edge ], [ false, %if.else27.cleanup_crit_edge ], [ false, %if.end30.cleanup_crit_edge ], [ %tobool.not.i74, %if.end34 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @enable_check_taprio(ptr nocapture noundef readonly %adapter, ptr noundef %qopt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %call = tail call i32 @tsnep_tc_setup(ptr noundef %1, i32 noundef 13, ptr noundef %qopt) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i64 @ktime_get() #8
  %addr.i.i.i = getelementptr inbounds %struct.tsnep_adapter, ptr %adapter, i32 0, i32 9
  %gcl.i.i = getelementptr inbounds %struct.tsnep_adapter, ptr %adapter, i32 0, i32 14
  %arrayidx2.i.i = getelementptr %struct.tsnep_adapter, ptr %adapter, i32 0, i32 14, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end
  %2 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 12
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !32
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !33
  %6 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr.i.i.i, align 8
  %add.ptr2.i.i.i = getelementptr i8, ptr %7, i32 2060
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #8, !srcloc !32
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !33
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %do.body.i
  %gc_time.0.i.i = phi i32 [ %9, %do.body.i ], [ %19, %do.body.i.i.i.do.body.i.i.i_crit_edge ]
  %time_high.0.i.i.i = phi i32 [ %5, %do.body.i ], [ %23, %do.body.i.i.i.do.body.i.i.i_crit_edge ]
  %10 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %addr.i.i.i, align 8
  %add.ptr5.i.i.i = getelementptr i8, ptr %11, i32 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i.i) #8, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !33
  %13 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %addr.i.i.i, align 8
  %add.ptr8.i.i.i = getelementptr i8, ptr %14, i32 2056
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i.i.i) #8, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !33
  %16 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %addr.i.i.i, align 8
  %add.ptr11.i.i.i = getelementptr i8, ptr %17, i32 2060
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i.i.i) #8, !srcloc !32
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !33
  %20 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %addr.i.i.i, align 8
  %add.ptr14.i.i.i = getelementptr i8, ptr %21, i32 12
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i.i.i) #8, !srcloc !32
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !33
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %time_high.0.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %23, %time_high.0.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %gc_time.0.i.i)
  %cmp16.not.i.i.i = icmp eq i32 %19, %gc_time.0.i.i
  %or.cond.i.i = select i1 %cmp.not.i.i.i, i1 %cmp16.not.i.i.i, i1 false
  br i1 %or.cond.i.i, label %get_gate_state.exit.i.i, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i

get_gate_state.exit.i.i:                          ; preds = %do.body.i.i.i
  %24 = tail call i32 @llvm.bswap.i32(i32 %15) #8
  %25 = zext i32 %22 to i64
  %26 = zext i32 %12 to i64
  %27 = shl nuw i64 %26, 32
  %28 = or i64 %27, %25
  %29 = tail call i64 @llvm.bswap.i64(i64 %28) #8
  %and.i.i = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %get_gate_state.exit.i.i.if.end11.i.i_crit_edge

get_gate_state.exit.i.i.if.end11.i.i_crit_edge:   ; preds = %get_gate_state.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i.i

if.else.i.i:                                      ; preds = %get_gate_state.exit.i.i
  %and3.i.i = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.else.i.i.cleanup_crit_edge, label %if.else.i.i.if.end11.i.i_crit_edge

if.else.i.i.if.end11.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i.i

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11.i.i:                                     ; preds = %if.else.i.i.if.end11.i.i_crit_edge, %get_gate_state.exit.i.i.if.end11.i.i_crit_edge
  %curr.0.i.i = phi ptr [ %gcl.i.i, %get_gate_state.exit.i.i.if.end11.i.i_crit_edge ], [ %arrayidx2.i.i, %if.else.i.i.if.end11.i.i_crit_edge ]
  %prev.0.i.i = phi ptr [ %arrayidx2.i.i, %get_gate_state.exit.i.i.if.end11.i.i_crit_edge ], [ %gcl.i.i, %if.else.i.i.if.end11.i.i_crit_edge ]
  %start_time.i.i = getelementptr inbounds %struct.tsnep_gcl, ptr %curr.0.i.i, i32 0, i32 7
  %30 = ptrtoint ptr %start_time.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %start_time.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %29)
  %cmp.not.i.i = icmp ugt i64 %31, %29
  br i1 %cmp.not.i.i, label %if.else25.i.i, label %if.then12.i.i

if.then12.i.i:                                    ; preds = %if.end11.i.i
  %base_time.i.i.i = getelementptr inbounds %struct.tsnep_gcl, ptr %curr.0.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %base_time.i.i.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %base_time.i.i.i, align 8
  %sub.i.i.i = sub i64 %29, %33
  %cycle_time.i.i.i = getelementptr inbounds %struct.tsnep_gcl, ptr %curr.0.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %cycle_time.i.i.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %cycle_time.i.i.i, align 8
  %call.i.i.i = tail call i64 @div64_u64(i64 noundef %sub.i.i.i, i64 noundef %35) #8
  %36 = ptrtoint ptr %base_time.i.i.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %base_time.i.i.i, align 8
  %38 = ptrtoint ptr %cycle_time.i.i.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %cycle_time.i.i.i, align 8
  %mul.i.i.i = mul i64 %39, %call.i.i.i
  %add.i.i.i = add i64 %mul.i.i.i, %37
  %count.i.i.i = getelementptr inbounds %struct.tsnep_gcl, ptr %curr.0.i.i, i32 0, i32 5
  %40 = ptrtoint ptr %count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %count.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp17.i.i.i = icmp sgt i32 %41, 0
  br i1 %cmp17.i.i.i, label %if.then12.i.i.for.body.i.i.i_crit_edge, label %if.then12.i.i.get_operation.exit.i.i_crit_edge

if.then12.i.i.get_operation.exit.i.i_crit_edge:   ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_operation.exit.i.i

if.then12.i.i.for.body.i.i.i_crit_edge:           ; preds = %if.then12.i.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.then12.i.i.for.body.i.i.i_crit_edge
  %next_time.0.i.i = phi i64 [ %add3.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %add.i.i.i, %if.then12.i.i.for.body.i.i.i_crit_edge ]
  %i.018.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.then12.i.i.for.body.i.i.i_crit_edge ]
  %interval.i.i.i = getelementptr %struct.tsnep_gcl, ptr %curr.0.i.i, i32 0, i32 4, i32 %i.018.i.i.i, i32 1
  %42 = ptrtoint ptr %interval.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %interval.i.i.i, align 4
  %conv.i.i.i = zext i32 %43 to i64
  %add3.i.i.i = add i64 %next_time.0.i.i, %conv.i.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add3.i.i.i, i64 %29)
  %cmp4.i.i.i = icmp ugt i64 %add3.i.i.i, %29
  br i1 %cmp4.i.i.i, label %for.body.i.i.i.get_operation.exit.i.i_crit_edge, label %for.inc.i.i.i

for.body.i.i.i.get_operation.exit.i.i_crit_edge:  ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_operation.exit.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.018.i.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i.i, %41
  br i1 %exitcond.not.i.i, label %for.inc.i.i.i.get_operation.exit.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

for.inc.i.i.i.get_operation.exit.i.i_crit_edge:   ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_operation.exit.i.i

get_operation.exit.i.i:                           ; preds = %for.inc.i.i.i.get_operation.exit.i.i_crit_edge, %for.body.i.i.i.get_operation.exit.i.i_crit_edge, %if.then12.i.i.get_operation.exit.i.i_crit_edge
  %next_time.1.i.i = phi i64 [ %add.i.i.i, %if.then12.i.i.get_operation.exit.i.i_crit_edge ], [ %add3.i.i.i, %for.body.i.i.i.get_operation.exit.i.i_crit_edge ], [ %add3.i.i.i, %for.inc.i.i.i.get_operation.exit.i.i_crit_edge ]
  %i.0.lcssa.i.i.i = phi i32 [ 0, %if.then12.i.i.get_operation.exit.i.i_crit_edge ], [ %41, %for.inc.i.i.i.get_operation.exit.i.i_crit_edge ], [ %i.018.i.i.i, %for.body.i.i.i.get_operation.exit.i.i_crit_edge ]
  %arrayidx13.i.i = getelementptr %struct.tsnep_gcl, ptr %curr.0.i.i, i32 0, i32 4, i32 %i.0.lcssa.i.i.i
  %44 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx13.i.i, align 8
  %and14.i.i = and i32 %45, 255
  %sub.i.i = add i32 %41, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i.i.i, i32 %sub.i.i)
  %cmp15.i.i = icmp eq i32 %i.0.lcssa.i.i.i, %sub.i.i
  %inc.i.i = add i32 %i.0.lcssa.i.i.i, 1
  %index.0.i.i = select i1 %cmp15.i.i, i32 0, i32 %inc.i.i
  %arrayidx21.i.i = getelementptr %struct.tsnep_gcl, ptr %curr.0.i.i, i32 0, i32 4, i32 %index.0.i.i
  %46 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx21.i.i, align 8
  %and23.i.i = and i32 %47, 255
  br label %if.end73.i.i

if.else25.i.i:                                    ; preds = %if.end11.i.i
  %change.i.i = getelementptr inbounds %struct.tsnep_gcl, ptr %curr.0.i.i, i32 0, i32 8
  %48 = ptrtoint ptr %change.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %change.i.i, align 8, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool26.not.i.i = icmp eq i8 %49, 0
  br i1 %tobool26.not.i.i, label %if.else65.i.i, label %if.then27.i.i

if.then27.i.i:                                    ; preds = %if.else25.i.i
  %base_time.i155.i.i = getelementptr inbounds %struct.tsnep_gcl, ptr %prev.0.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %base_time.i155.i.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %base_time.i155.i.i, align 8
  %sub.i156.i.i = sub i64 %29, %51
  %cycle_time.i157.i.i = getelementptr inbounds %struct.tsnep_gcl, ptr %prev.0.i.i, i32 0, i32 2
  %52 = ptrtoint ptr %cycle_time.i157.i.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %cycle_time.i157.i.i, align 8
  %call.i158.i.i = tail call i64 @div64_u64(i64 noundef %sub.i156.i.i, i64 noundef %53) #8
  %54 = ptrtoint ptr %base_time.i155.i.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %base_time.i155.i.i, align 8
  %56 = ptrtoint ptr %cycle_time.i157.i.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %cycle_time.i157.i.i, align 8
  %count.i161.i.i = getelementptr inbounds %struct.tsnep_gcl, ptr %prev.0.i.i, i32 0, i32 5
  %58 = ptrtoint ptr %count.i161.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %count.i161.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp17.i162.i.i = icmp sgt i32 %59, 0
  br i1 %cmp17.i162.i.i, label %for.body.i168.preheader.i.i, label %if.then27.i.i.get_operation.exit173.i.i_crit_edge

if.then27.i.i.get_operation.exit173.i.i_crit_edge: ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_operation.exit173.i.i

for.body.i168.preheader.i.i:                      ; preds = %if.then27.i.i
  %mul.i159.i.i = mul i64 %57, %call.i158.i.i
  %add.i160.i.i = add i64 %mul.i159.i.i, %55
  br label %for.body.i168.i.i

for.body.i168.i.i:                                ; preds = %for.inc.i171.i.i.for.body.i168.i.i_crit_edge, %for.body.i168.preheader.i.i
  %next_time.2.i.i = phi i64 [ %add3.i166.i.i, %for.inc.i171.i.i.for.body.i168.i.i_crit_edge ], [ %add.i160.i.i, %for.body.i168.preheader.i.i ]
  %i.018.i163.i.i = phi i32 [ %inc.i169.i.i, %for.inc.i171.i.i.for.body.i168.i.i_crit_edge ], [ 0, %for.body.i168.preheader.i.i ]
  %interval.i164.i.i = getelementptr %struct.tsnep_gcl, ptr %prev.0.i.i, i32 0, i32 4, i32 %i.018.i163.i.i, i32 1
  %60 = ptrtoint ptr %interval.i164.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %interval.i164.i.i, align 4
  %conv.i165.i.i = zext i32 %61 to i64
  %add3.i166.i.i = add i64 %next_time.2.i.i, %conv.i165.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add3.i166.i.i, i64 %29)
  %cmp4.i167.i.i = icmp ugt i64 %add3.i166.i.i, %29
  br i1 %cmp4.i167.i.i, label %for.body.i168.i.i.get_operation.exit173.i.i_crit_edge, label %for.inc.i171.i.i

for.body.i168.i.i.get_operation.exit173.i.i_crit_edge: ; preds = %for.body.i168.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_operation.exit173.i.i

for.inc.i171.i.i:                                 ; preds = %for.body.i168.i.i
  %inc.i169.i.i = add nuw nsw i32 %i.018.i163.i.i, 1
  %exitcond188.not.i.i = icmp eq i32 %inc.i169.i.i, %59
  br i1 %exitcond188.not.i.i, label %for.inc.i171.i.i.get_operation.exit173.i.i_crit_edge, label %for.inc.i171.i.i.for.body.i168.i.i_crit_edge

for.inc.i171.i.i.for.body.i168.i.i_crit_edge:     ; preds = %for.inc.i171.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i168.i.i

for.inc.i171.i.i.get_operation.exit173.i.i_crit_edge: ; preds = %for.inc.i171.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_operation.exit173.i.i

get_operation.exit173.i.i:                        ; preds = %for.inc.i171.i.i.get_operation.exit173.i.i_crit_edge, %for.body.i168.i.i.get_operation.exit173.i.i_crit_edge, %if.then27.i.i.get_operation.exit173.i.i_crit_edge
  %i.0.lcssa.i172.i.i = phi i32 [ 0, %if.then27.i.i.get_operation.exit173.i.i_crit_edge ], [ %59, %for.inc.i171.i.i.get_operation.exit173.i.i_crit_edge ], [ %i.018.i163.i.i, %for.body.i168.i.i.get_operation.exit173.i.i_crit_edge ]
  %62 = ptrtoint ptr %start_time.i.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %start_time.i.i, align 8
  %sub32.i.i = sub i64 %63, %55
  %call33.i.i = tail call i64 @div64_u64(i64 noundef %sub32.i.i, i64 noundef %57) #8
  %64 = ptrtoint ptr %cycle_time.i157.i.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %cycle_time.i157.i.i, align 8
  %mul.i.i = mul i64 %65, %call33.i.i
  %add.i.i = add i64 %mul.i.i, %55
  %66 = ptrtoint ptr %start_time.i.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %start_time.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %67, i64 %add.i.i)
  %cmp36.i.i = icmp eq i64 %67, %add.i.i
  %sub40.i.i = select i1 %cmp36.i.i, i64 %65, i64 0
  %cycle_time_extension.i.i = getelementptr inbounds %struct.tsnep_gcl, ptr %prev.0.i.i, i32 0, i32 3
  %68 = ptrtoint ptr %cycle_time_extension.i.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %cycle_time_extension.i.i, align 8
  %spec.select.i.i = add i64 %69, %add.i.i
  %add42.i.i = sub i64 %spec.select.i.i, %sub40.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add42.i.i, i64 %67)
  %cmp44.not.i.i = icmp ult i64 %add42.i.i, %67
  %sub48.i.i = sub i64 %67, %69
  call void @__sanitizer_cov_trace_cmp8(i64 %sub48.i.i, i64 %29)
  %cmp49.not.i.i = icmp ugt i64 %sub48.i.i, %29
  %or.cond180.i.i = select i1 %cmp44.not.i.i, i1 true, i1 %cmp49.not.i.i
  br i1 %or.cond180.i.i, label %get_operation.exit173.i.i.if.end54.i.i_crit_edge, label %if.then51.i.i

get_operation.exit173.i.i.if.end54.i.i_crit_edge: ; preds = %get_operation.exit173.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.i.i

if.then51.i.i:                                    ; preds = %get_operation.exit173.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %count.i161.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %count.i161.i.i, align 8
  %sub53.i.i = add i32 %71, -1
  br label %if.end54.i.i

if.end54.i.i:                                     ; preds = %if.then51.i.i, %get_operation.exit173.i.i.if.end54.i.i_crit_edge
  %index28.0.i.i = phi i32 [ %sub53.i.i, %if.then51.i.i ], [ %i.0.lcssa.i172.i.i, %get_operation.exit173.i.i.if.end54.i.i_crit_edge ]
  %arrayidx56.i.i = getelementptr %struct.tsnep_gcl, ptr %prev.0.i.i, i32 0, i32 4, i32 %index28.0.i.i
  %72 = ptrtoint ptr %arrayidx56.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx56.i.i, align 8
  %and58.i.i = and i32 %73, 255
  %operation60.i.i = getelementptr inbounds %struct.tsnep_gcl, ptr %curr.0.i.i, i32 0, i32 4
  %74 = ptrtoint ptr %operation60.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %operation60.i.i, align 8
  %and63.i.i = and i32 %75, 255
  br label %if.end73.i.i

if.else65.i.i:                                    ; preds = %if.else25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %operation67.i.i = getelementptr inbounds %struct.tsnep_gcl, ptr %curr.0.i.i, i32 0, i32 4
  %76 = ptrtoint ptr %operation67.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %operation67.i.i, align 8
  br label %if.end73.i.i

if.end73.i.i:                                     ; preds = %if.else65.i.i, %if.end54.i.i, %get_operation.exit.i.i
  %next_time.3.i.i = phi i64 [ %31, %if.else65.i.i ], [ %63, %if.end54.i.i ], [ %next_time.1.i.i, %get_operation.exit.i.i ]
  %gate_open.0.i.i = phi i32 [ 255, %if.else65.i.i ], [ %and58.i.i, %if.end54.i.i ], [ %and14.i.i, %get_operation.exit.i.i ]
  %next_gate_open.0.in.i.i = phi i32 [ %77, %if.else65.i.i ], [ %and63.i.i, %if.end54.i.i ], [ %and23.i.i, %get_operation.exit.i.i ]
  %78 = trunc i64 %next_time.3.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %gc_time.0.i.i, i32 %78)
  %cmp76.not.i.i = icmp eq i32 %gc_time.0.i.i, %78
  br i1 %cmp76.not.i.i, label %if.end79.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end73.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %pdev.i.i = getelementptr inbounds %struct.tsnep_adapter, ptr %adapter, i32 0, i32 7
  %79 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pdev.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %80, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str, i32 noundef %gc_time.0.i.i, i64 noundef %next_time.3.i.i) #12
  br label %cleanup

if.end79.i.i:                                     ; preds = %if.end73.i.i
  %and80.i.i = lshr i32 %24, 16
  %shr.i.i = and i32 %and80.i.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i, i32 %gate_open.0.i.i)
  %cmp82.not.i.i = icmp eq i32 %shr.i.i, %gate_open.0.i.i
  br i1 %cmp82.not.i.i, label %if.end93.i.i, label %do.end87.i.i

do.end87.i.i:                                     ; preds = %if.end79.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %pdev88.i.i = getelementptr inbounds %struct.tsnep_adapter, ptr %adapter, i32 0, i32 7
  %81 = ptrtoint ptr %pdev88.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pdev88.i.i, align 8
  %dev89.i.i = getelementptr inbounds %struct.platform_device, ptr %82, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev89.i.i, ptr noundef nonnull @.str.6, i32 noundef %shr.i.i, i32 noundef %gate_open.0.i.i) #12
  br label %cleanup

if.end93.i.i:                                     ; preds = %if.end79.i.i
  %shr95.i.i = lshr i32 %24, 24
  %conv96.i.i = and i32 %next_gate_open.0.in.i.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %shr95.i.i, i32 %conv96.i.i)
  %cmp97.not.i.i = icmp eq i32 %shr95.i.i, %conv96.i.i
  br i1 %cmp97.not.i.i, label %do.cond.i, label %do.end102.i.i

do.end102.i.i:                                    ; preds = %if.end93.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %pdev103.i.i = getelementptr inbounds %struct.tsnep_adapter, ptr %adapter, i32 0, i32 7
  %83 = ptrtoint ptr %pdev103.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pdev103.i.i, align 8
  %dev104.i.i = getelementptr inbounds %struct.platform_device, ptr %84, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev104.i.i, ptr noundef nonnull @.str.9, i32 noundef %shr95.i.i, i32 noundef %conv96.i.i) #12
  br label %cleanup

do.cond.i:                                        ; preds = %if.end93.i.i
  %call2.i = tail call i64 @ktime_get() #8
  %sub.i1.i = sub i64 %call2.i, %call.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i1.i)
  %cmp8.i.i.i.i = icmp slt i64 %sub.i1.i, 0
  %85 = tail call i64 @llvm.abs.i64(i64 %sub.i1.i, i1 false) #8
  %86 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %85) #13, !srcloc !35
  %87 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %85, i64 %86, i32 0) #13, !srcloc !36
  %asmresult10.i.i.i.i.i = extractvalue { i64, i32 } %87, 0
  %div1811.i.i.i.i = lshr i64 %asmresult10.i.i.i.i.i, 18
  %sub210.i.i.i.i = sub nsw i64 0, %div1811.i.i.i.i
  %cond213.i.i.i.i = select i1 %cmp8.i.i.i.i, i64 %sub210.i.i.i.i, i64 %div1811.i.i.i.i
  %cmp.i = icmp slt i64 %cond213.i.i.i.i, 100
  br i1 %cmp.i, label %do.cond.i.do.body.i_crit_edge, label %do.cond.i.cleanup_crit_edge

do.cond.i.cleanup_crit_edge:                      ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

cleanup:                                          ; preds = %do.cond.i.cleanup_crit_edge, %do.end102.i.i, %do.end87.i.i, %do.end.i.i, %if.else.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %do.end.i.i ], [ false, %do.end87.i.i ], [ false, %do.end102.i.i ], [ true, %do.cond.i.cleanup_crit_edge ], [ false, %if.else.i.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tsnep_tc_setup(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @tsnep_get_system_time(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @tsnep_test_strings, !1, !"tsnep_test_strings", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/engleder/tsnep_selftests.c", i32 15, i32 19}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/engleder/tsnep_selftests.c", i32 276, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @check_gate._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @check_gate._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/engleder/tsnep_selftests.c", i32 281, i32 3}
!12 = !{ptr @check_gate._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @check_gate._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/engleder/tsnep_selftests.c", i32 289, i32 3}
!16 = !{ptr @check_gate._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @check_gate._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i64 2153803192}
!28 = !{i64 6261070}
!29 = !{!"auto-init"}
!30 = !{i64 2153802218}
!31 = !{i64 6260873}
!32 = !{i64 6261488}
!33 = !{i64 2153801837}
!34 = !{i8 0, i8 2}
!35 = !{i64 860104, i64 860131}
!36 = !{i64 860799, i64 860826, i64 860859, i64 860880, i64 860907, i64 860933}
