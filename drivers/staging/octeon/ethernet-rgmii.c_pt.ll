; ModuleID = '/llk/IR_all_yes/drivers/staging/octeon/ethernet-rgmii.c_pt.bc'
source_filename = "../drivers/staging/octeon/ethernet-rgmii.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.148, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.148 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }

@global_register_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.12 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@__func__.cvm_oct_check_preamble_errors = private unnamed_addr constant [30 x i8] c"cvm_oct_check_preamble_errors\00", align 1
@cvm_oct_check_preamble_errors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.cvm_oct_check_preamble_errors, ptr @.str.2, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: Using 10Mbps with software preamble removal\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/staging/octeon/ethernet-rgmii.c\00", [56 x i8] zeroinitializer }, align 32
@cvm_oct_check_preamble_errors._entry_ptr = internal global ptr @cvm_oct_check_preamble_errors._entry, section ".printk_index", align 4
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"global_register_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Illegal ipd_port %d passed to %s\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.INTERFACE = private unnamed_addr constant [10 x i8] c"INTERFACE\00", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.5 = private unnamed_addr constant [21 x i8] c"global_register_lock\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 86, i32 4 }
@___asan_gen_.18 = private constant [43 x i8] c"../drivers/staging/octeon/ethernet-rgmii.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 20, i32 8 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [42 x i8] c"../drivers/staging/octeon/ethernet-util.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 35, i32 8 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @cvm_oct_check_preamble_errors._entry, ptr @cvm_oct_check_preamble_errors._entry_ptr, ptr @global_register_lock, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @global_register_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_check_preamble_errors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cvm_oct_rgmii_open(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = tail call i32 @cvm_oct_common_open(ptr noundef %dev, ptr noundef nonnull @cvm_oct_rgmii_poll) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 16
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %imode = getelementptr i8, ptr %dev, i32 2320
  %2 = ptrtoint ptr %imode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %imode, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.then3.cleanup_crit_edge [
    i32 2, label %land.lhs.true
    i32 1, label %if.then3.if.then7_crit_edge
  ]

if.then3.if.then7_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then7

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then3
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp4 = icmp eq i32 %6, 0
  br i1 %cmp4, label %land.lhs.true.if.then7_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true.if.then7_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then7

if.then7:                                         ; preds = %land.lhs.true.if.then7_crit_edge, %if.then3.if.then7_crit_edge
  %poll = getelementptr i8, ptr %dev, i32 3240
  %7 = ptrtoint ptr %poll to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @cvm_oct_check_preamble_errors, ptr %poll, align 8
  %link_info1.i = getelementptr i8, ptr %dev, i32 3232
  %8 = ptrtoint ptr %link_info1.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %link_info1.i, align 8
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @global_register_lock) #3
  %10 = trunc i64 %9 to i32
  %conv7.i = and i32 %10, 262143
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %conv7.i)
  %cmp8.i = icmp eq i32 %conv7.i, 10
  br i1 %cmp8.i, label %land.lhs.true.i, label %if.then7.if.else.i_crit_edge

if.then7.if.else.i_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then7
  %last_speed.i = getelementptr i8, ptr %dev, i32 3224
  %11 = ptrtoint ptr %last_speed.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %last_speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %12)
  %cmp10.i = icmp eq i32 %12, 10
  br i1 %cmp10.i, label %if.then.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp1.i.i = icmp sgt i32 %14, -1
  br i1 %cmp1.i.i, label %if.then.i.cvm_oct_check_preamble_errors.exit_crit_edge, label %if.end3.i.i

if.then.i.cvm_oct_check_preamble_errors.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cvm_oct_check_preamble_errors.exit

if.end3.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.4, i32 noundef %14, ptr noundef nonnull @__func__.INTERFACE) #6
  unreachable

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then7.if.else.i_crit_edge
  %last_speed29.i = getelementptr i8, ptr %dev, i32 3224
  %15 = ptrtoint ptr %last_speed29.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %last_speed29.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv7.i)
  %cmp33.not.i = icmp eq i32 %16, %conv7.i
  br i1 %cmp33.not.i, label %if.else.i.if.end36.i_crit_edge, label %if.then35.i

if.else.i.if.end36.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end36.i

if.then35.i:                                      ; preds = %if.else.i
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp1.i.i.i = icmp sgt i32 %18, -1
  br i1 %cmp1.i.i.i, label %if.then35.i.if.end36.i_crit_edge, label %if.end3.i.i.i

if.then35.i.if.end36.i_crit_edge:                 ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end36.i

if.end3.i.i.i:                                    ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.4, i32 noundef %18, ptr noundef nonnull @__func__.INTERFACE) #6
  unreachable

if.end36.i:                                       ; preds = %if.then35.i.if.end36.i_crit_edge, %if.else.i.if.end36.i_crit_edge
  %19 = ptrtoint ptr %last_speed29.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv7.i, ptr %last_speed29.i, align 8
  br label %cvm_oct_check_preamble_errors.exit

cvm_oct_check_preamble_errors.exit:               ; preds = %if.end36.i, %if.then.i.cvm_oct_check_preamble_errors.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @global_register_lock, i32 noundef %call4.i) #3
  br label %cleanup

cleanup:                                          ; preds = %cvm_oct_check_preamble_errors.exit, %land.lhs.true.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cvm_oct_common_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cvm_oct_rgmii_poll(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %link_info1 = getelementptr i8, ptr %dev, i32 3232
  %0 = ptrtoint ptr %link_info1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %link_info1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp.not = icmp eq i64 %1, 0
  %2 = ptrtoint ptr %link_info1 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %link_info1, align 8
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @global_register_lock) #3
  %last_speed29.i = getelementptr i8, ptr %dev, i32 3224
  %3 = ptrtoint ptr %last_speed29.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %last_speed29.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp33.not.i = icmp eq i32 %4, 0
  br i1 %cmp33.not.i, label %entry.if.end36.i_crit_edge, label %if.then35.i

entry.if.end36.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end36.i

if.then35.i:                                      ; preds = %entry
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp1.i.i.i = icmp sgt i32 %6, -1
  br i1 %cmp1.i.i.i, label %if.then35.i.if.end36.i_crit_edge, label %if.end3.i.i.i

if.then35.i.if.end36.i_crit_edge:                 ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end36.i

if.end3.i.i.i:                                    ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.4, i32 noundef %6, ptr noundef nonnull @__func__.INTERFACE) #6
  unreachable

if.end36.i:                                       ; preds = %if.then35.i.if.end36.i_crit_edge, %entry.if.end36.i_crit_edge
  %7 = ptrtoint ptr %last_speed29.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %last_speed29.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @global_register_lock, i32 noundef %call4.i) #3
  br i1 %cmp.not, label %if.end36.i.cleanup_crit_edge, label %if.else, !prof !24

if.end36.i.cleanup_crit_edge:                     ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.else:                                          ; preds = %if.end36.i
  %state.i45 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %8 = ptrtoint ptr %state.i45 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i45, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i46 = icmp eq i32 %10, 0
  br i1 %tobool.not.i46, label %if.then20, label %if.else.if.end22_crit_edge

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end22

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @netif_carrier_off(ptr noundef %dev) #3
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.else.if.end22_crit_edge
  tail call void @cvm_oct_note_carrier(ptr noundef %add.ptr.i, [1 x i64] zeroinitializer) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end36.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cvm_oct_check_preamble_errors(ptr nocapture noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %link_info1 = getelementptr i8, ptr %dev, i32 3232
  %0 = ptrtoint ptr %link_info1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %link_info1, align 8
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @global_register_lock) #3
  %2 = trunc i64 %1 to i32
  %conv7 = and i32 %2, 262143
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %conv7)
  %cmp8 = icmp eq i32 %conv7, 10
  br i1 %cmp8, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %last_speed = getelementptr i8, ptr %dev, i32 3224
  %3 = ptrtoint ptr %last_speed to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %last_speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %4)
  %cmp10 = icmp eq i32 %4, 10
  br i1 %cmp10, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp1.i = icmp sgt i32 %6, -1
  br i1 %cmp1.i, label %if.then.if.end41_crit_edge, label %if.end3.i

if.then.if.end41_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end41

if.end3.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.4, i32 noundef %6, ptr noundef nonnull @__func__.INTERFACE) #6
  unreachable

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %last_speed29 = getelementptr i8, ptr %dev, i32 3224
  %7 = ptrtoint ptr %last_speed29 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %last_speed29, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv7)
  %cmp33.not = icmp eq i32 %8, %conv7
  br i1 %cmp33.not, label %if.else.if.end36_crit_edge, label %if.then35

if.else.if.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end36

if.then35:                                        ; preds = %if.else
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp1.i.i = icmp sgt i32 %10, -1
  br i1 %cmp1.i.i, label %if.then35.if.end36_crit_edge, label %if.end3.i.i

if.then35.if.end36_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end36

if.end3.i.i:                                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.4, i32 noundef %10, ptr noundef nonnull @__func__.INTERFACE) #6
  unreachable

if.end36:                                         ; preds = %if.then35.if.end36_crit_edge, %if.else.if.end36_crit_edge
  %11 = ptrtoint ptr %last_speed29 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv7, ptr %last_speed29, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.end36, %if.then.if.end41_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @global_register_lock, i32 noundef %call4) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cvm_oct_note_carrier(ptr noundef, [1 x i64]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/octeon/ethernet-rgmii.c", i32 86, i32 4}
!2 = distinct !{null, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @__func__.cvm_oct_check_preamble_errors, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @cvm_oct_check_preamble_errors._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @cvm_oct_check_preamble_errors._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/octeon/ethernet-rgmii.c", i32 20, i32 8}
!10 = !{ptr @global_register_lock, !9, !"global_register_lock", i1 false, i1 false}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/staging/octeon/ethernet-util.h", i32 35, i32 8}
!13 = !{ptr @__func__.INTERFACE, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/staging/octeon/ethernet-util.h", i32 35, i32 56}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{!"branch_weights", i32 2000, i32 1}
