; ModuleID = '/llk/IR_all_yes/drivers/reset/sti/reset-syscfg.c_pt.bc'
source_filename = "../drivers/reset/sti/reset-syscfg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.syscfg_reset_controller_data = type { i8, i8, i32, ptr }
%struct.syscfg_reset_controller = type { %struct.reset_controller_dev, i8, ptr }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.syscfg_reset_channel_data = type { ptr, %struct.reg_field, %struct.reg_field }
%struct.reg_field = type { i32, i32, i32, i32, i32 }
%struct.syscfg_reset_channel = type { ptr, ptr }

@syscfg_reset_ops = internal constant { %struct.reset_control_ops, [16 x i8] } { %struct.reset_control_ops { ptr @syscfg_reset_dev, ptr @syscfg_reset_assert, ptr @syscfg_reset_deassert, ptr @syscfg_reset_status }, [16 x i8] zeroinitializer }, align 32
@syscfg_reset_controller_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 188, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"registered\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"syscfg_reset_controller_register\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/reset/sti/reset-syscfg.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@syscfg_reset_controller_register._entry_ptr = internal global ptr @syscfg_reset_controller_register._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"syscfg_reset_ops\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 134, i32 39 }
@___asan_gen_.8 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private constant [36 x i8] c"../drivers/reset/sti/reset-syscfg.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 188, i32 3 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @syscfg_reset_controller_register._entry, ptr @syscfg_reset_controller_register._entry_ptr, ptr @syscfg_reset_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @syscfg_reset_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @syscfg_reset_controller_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @syscfg_reset_probe(ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pdev, null
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %tobool2.not21 = icmp eq ptr %dev1, null
  %tobool2.not = select i1 %tobool.not, i1 true, i1 %tobool2.not21
  br i1 %tobool2.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %driver = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %of_match_table = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %of_match_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_match_table, align 4
  %call = tail call ptr @of_match_device(ptr noundef %3, ptr noundef nonnull %dev1) #5
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false6:                                   ; preds = %if.end
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %lor.lhs.false6.cleanup_crit_edge, label %if.end9

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false6
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef nonnull %dev1, i32 noundef 52, i32 noundef 3520) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end9.cleanup_crit_edge, label %if.end.i

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end9
  %nr_channels.i = getelementptr inbounds %struct.syscfg_reset_controller_data, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %nr_channels.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_channels.i, align 4
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %7, i32 8) #5
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !19

devm_kcalloc.exit.thread.i:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %channels109.i = getelementptr inbounds %struct.syscfg_reset_controller, ptr %call.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %channels109.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %channels109.i, align 4
  br label %cleanup

devm_kcalloc.exit.i:                              ; preds = %if.end.i
  %11 = extractvalue { i32, i1 } %8, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef nonnull %dev1, i32 noundef %11, i32 noundef 3520) #5
  %channels.i = getelementptr inbounds %struct.syscfg_reset_controller, ptr %call.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %channels.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call5.i.i.i, ptr %channels.i, align 4
  %tobool3.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool3.not.i, label %devm_kcalloc.exit.i.cleanup_crit_edge, label %if.end5.i

devm_kcalloc.exit.i.cleanup_crit_edge:            ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5.i:                                        ; preds = %devm_kcalloc.exit.i
  %13 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @syscfg_reset_ops, ptr %call.i.i, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %14 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node.i, align 8
  %of_node7.i = getelementptr inbounds %struct.reset_controller_dev, ptr %call.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %of_node7.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %of_node7.i, align 4
  %17 = ptrtoint ptr %nr_channels.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr_channels.i, align 4
  %nr_resets.i = getelementptr inbounds %struct.reset_controller_dev, ptr %call.i.i, i32 0, i32 8
  %19 = ptrtoint ptr %nr_resets.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %nr_resets.i, align 4
  %active_low.i = getelementptr inbounds %struct.syscfg_reset_controller_data, ptr %5, i32 0, i32 1
  %20 = ptrtoint ptr %active_low.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %active_low.i, align 1, !range !20
  %active_low11.i = getelementptr inbounds %struct.syscfg_reset_controller, ptr %call.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %active_low11.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %active_low11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp116.i = icmp sgt i32 %18, 0
  br i1 %cmp116.i, label %for.body.lr.ph.i, label %if.end5.i.for.end.i_crit_edge

if.end5.i.for.end.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end5.i
  %channels13.i = getelementptr inbounds %struct.syscfg_reset_controller_data, ptr %5, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0117.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %23 = ptrtoint ptr %channels13.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %channels13.i, align 4
  %arrayidx.i = getelementptr %struct.syscfg_reset_channel_data, ptr %24, i32 %i.0117.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %call15.i = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef %26) #5
  %cmp.i.i = icmp ugt ptr %call15.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then17.i, label %if.end19.i

if.then17.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %call15.i to i32
  br label %cleanup

if.end19.i:                                       ; preds = %for.body.i
  %28 = ptrtoint ptr %channels13.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %channels13.i, align 4
  %reset.i = getelementptr %struct.syscfg_reset_channel_data, ptr %29, i32 %i.0117.i, i32 1
  %30 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.unpack.i = load i32, ptr %reset.i, align 4
  %31 = insertvalue [5 x i32] undef, i32 %.unpack.i, 0
  %.elt89.i = getelementptr inbounds [5 x i32], ptr %reset.i, i32 0, i32 1
  %32 = ptrtoint ptr %.elt89.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.unpack90.i = load i32, ptr %.elt89.i, align 4
  %33 = insertvalue [5 x i32] %31, i32 %.unpack90.i, 1
  %.elt91.i = getelementptr inbounds [5 x i32], ptr %reset.i, i32 0, i32 2
  %34 = ptrtoint ptr %.elt91.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.unpack92.i = load i32, ptr %.elt91.i, align 4
  %35 = insertvalue [5 x i32] %33, i32 %.unpack92.i, 2
  %.elt93.i = getelementptr inbounds [5 x i32], ptr %reset.i, i32 0, i32 3
  %36 = ptrtoint ptr %.elt93.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.unpack94.i = load i32, ptr %.elt93.i, align 4
  %37 = insertvalue [5 x i32] %35, i32 %.unpack94.i, 3
  %.elt95.i = getelementptr inbounds [5 x i32], ptr %reset.i, i32 0, i32 4
  %38 = ptrtoint ptr %.elt95.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.unpack96.i = load i32, ptr %.elt95.i, align 4
  %39 = insertvalue [5 x i32] %37, i32 %.unpack96.i, 4
  %call22.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %dev1, ptr noundef %call15.i, [5 x i32] %39) #5
  %cmp.i106.i = icmp ugt ptr %call22.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i106.i, label %if.then24.i, label %if.end26.i

if.then24.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %call22.i to i32
  br label %cleanup

if.end26.i:                                       ; preds = %if.end19.i
  %41 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %channels.i, align 4
  %arrayidx28.i = getelementptr %struct.syscfg_reset_channel, ptr %42, i32 %i.0117.i
  %43 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call22.i, ptr %arrayidx28.i, align 4
  %44 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %5, align 4, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool30.not.i = icmp eq i8 %45, 0
  br i1 %tobool30.not.i, label %if.end26.i.for.inc.i_crit_edge, label %if.end32.i

if.end26.i.for.inc.i_crit_edge:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end32.i:                                       ; preds = %if.end26.i
  %46 = ptrtoint ptr %channels13.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %channels13.i, align 4
  %ack.i = getelementptr %struct.syscfg_reset_channel_data, ptr %47, i32 %i.0117.i, i32 2
  %48 = ptrtoint ptr %ack.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.unpack97.i = load i32, ptr %ack.i, align 4
  %49 = insertvalue [5 x i32] undef, i32 %.unpack97.i, 0
  %.elt98.i = getelementptr inbounds [5 x i32], ptr %ack.i, i32 0, i32 1
  %50 = ptrtoint ptr %.elt98.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %.unpack99.i = load i32, ptr %.elt98.i, align 4
  %51 = insertvalue [5 x i32] %49, i32 %.unpack99.i, 1
  %.elt100.i = getelementptr inbounds [5 x i32], ptr %ack.i, i32 0, i32 2
  %52 = ptrtoint ptr %.elt100.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %.unpack101.i = load i32, ptr %.elt100.i, align 4
  %53 = insertvalue [5 x i32] %51, i32 %.unpack101.i, 2
  %.elt102.i = getelementptr inbounds [5 x i32], ptr %ack.i, i32 0, i32 3
  %54 = ptrtoint ptr %.elt102.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %.unpack103.i = load i32, ptr %.elt102.i, align 4
  %55 = insertvalue [5 x i32] %53, i32 %.unpack103.i, 3
  %.elt104.i = getelementptr inbounds [5 x i32], ptr %ack.i, i32 0, i32 4
  %56 = ptrtoint ptr %.elt104.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %.unpack105.i = load i32, ptr %.elt104.i, align 4
  %57 = insertvalue [5 x i32] %55, i32 %.unpack105.i, 4
  %call35.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %dev1, ptr noundef %call15.i, [5 x i32] %57) #5
  %cmp.i107.i = icmp ugt ptr %call35.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i107.i, label %if.then37.i, label %if.end39.i

if.then37.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %call35.i to i32
  br label %cleanup

if.end39.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %channels.i, align 4
  %ack42.i = getelementptr %struct.syscfg_reset_channel, ptr %60, i32 %i.0117.i, i32 1
  %61 = ptrtoint ptr %ack42.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call35.i, ptr %ack42.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end39.i, %if.end26.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0117.i, 1
  %62 = ptrtoint ptr %nr_channels.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nr_channels.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %63
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end5.i.for.end.i_crit_edge
  %call46.i = tail call i32 @reset_controller_register(ptr noundef nonnull %call.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %do.end.i, label %for.end.i.cleanup_crit_edge

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %for.end.i.cleanup_crit_edge, %if.then37.i, %if.then24.i, %if.then17.i, %devm_kcalloc.exit.i.cleanup_crit_edge, %devm_kcalloc.exit.thread.i, %if.end9.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false6.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end9.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.i.cleanup_crit_edge ], [ 0, %do.end.i ], [ %call46.i, %for.end.i.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread.i ], [ %58, %if.then37.i ], [ %40, %if.then24.i ], [ %27, %if.then17.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_controller_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @syscfg_reset_dev(ptr nocapture noundef readonly %rcdev, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @syscfg_reset_program_hw(ptr noundef %rcdev, i32 noundef %idx, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i5 = tail call fastcc i32 @syscfg_reset_program_hw(ptr noundef %rcdev, i32 noundef %idx, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i5, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @syscfg_reset_assert(ptr nocapture noundef readonly %rcdev, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @syscfg_reset_program_hw(ptr noundef %rcdev, i32 noundef %idx, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @syscfg_reset_deassert(ptr nocapture noundef readonly %rcdev, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @syscfg_reset_program_hw(ptr noundef %rcdev, i32 noundef %idx, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @syscfg_reset_status(ptr nocapture noundef readonly %rcdev, i32 noundef %idx) #0 align 64 {
entry:
  %ret_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret_val) #5
  %0 = ptrtoint ptr %ret_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ret_val, align 4
  %nr_resets = getelementptr inbounds %struct.reset_controller_dev, ptr %rcdev, i32 0, i32 8
  %1 = ptrtoint ptr %nr_resets to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nr_resets, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %idx)
  %cmp.not = icmp ugt i32 %2, %idx
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %channels = getelementptr inbounds %struct.syscfg_reset_controller, ptr %rcdev, i32 0, i32 2
  %3 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %channels, align 4
  %ack = getelementptr %struct.syscfg_reset_channel, ptr %4, i32 %idx, i32 1
  %5 = ptrtoint ptr %ack to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ack, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call = call i32 @regmap_field_read(ptr noundef nonnull %6, ptr noundef nonnull %ret_val) #5
  br label %if.end4

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.syscfg_reset_channel, ptr %4, i32 %idx
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %call3 = call i32 @regmap_field_read(ptr noundef %8, ptr noundef nonnull %ret_val) #5
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then1
  %err.0 = phi i32 [ %call, %if.then1 ], [ %call3, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool5.not = icmp eq i32 %err.0, 0
  br i1 %tobool5.not, label %if.end7, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %active_low = getelementptr inbounds %struct.syscfg_reset_controller, ptr %rcdev, i32 0, i32 1
  %9 = ptrtoint ptr %active_low to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %active_low, align 4, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool8.not = icmp eq i8 %10, 0
  %11 = ptrtoint ptr %ret_val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ret_val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool9.not = icmp eq i32 %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool10 = icmp ne i32 %12, 0
  %cond.in = select i1 %tobool8.not, i1 %tobool10, i1 %tobool9.not
  %cond = zext i1 %cond.in to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end7 ], [ -22, %entry.cleanup_crit_edge ], [ %err.0, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret_val) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @syscfg_reset_program_hw(ptr nocapture noundef readonly %rcdev, i32 noundef %idx, i32 noundef %assert) unnamed_addr #0 align 64 {
entry:
  %ack_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %active_low = getelementptr inbounds %struct.syscfg_reset_controller, ptr %rcdev, i32 0, i32 1
  %0 = ptrtoint ptr %active_low to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %active_low, align 4, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %assert)
  %tobool1.not = icmp eq i32 %assert, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %assert)
  %tobool2 = icmp ne i32 %assert, 0
  %cond.in = select i1 %tobool.not, i1 %tobool2, i1 %tobool1.not
  %cond = zext i1 %cond.in to i32
  %nr_resets = getelementptr inbounds %struct.reset_controller_dev, ptr %rcdev, i32 0, i32 8
  %2 = ptrtoint ptr %nr_resets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_resets, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %idx)
  %cmp.not = icmp ugt i32 %3, %idx
  br i1 %cmp.not, label %if.end, label %entry.cleanup32_crit_edge

entry.cleanup32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup32

if.end:                                           ; preds = %entry
  %channels = getelementptr inbounds %struct.syscfg_reset_controller, ptr %rcdev, i32 0, i32 2
  %4 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channels, align 4
  %arrayidx = getelementptr %struct.syscfg_reset_channel, ptr %5, i32 %idx
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %7, i32 noundef -1, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup32_crit_edge

if.end.cleanup32_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup32

if.end9:                                          ; preds = %if.end
  %ack = getelementptr %struct.syscfg_reset_channel, ptr %5, i32 %idx, i32 1
  %8 = ptrtoint ptr %ack to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ack, align 4
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %if.end9.cleanup32_crit_edge, label %if.then11

if.end9.cleanup32_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup32

if.then11:                                        ; preds = %if.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %10, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ack_val) #5
  %11 = ptrtoint ptr %ack_val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %ack_val, align 4, !annotation !21
  %12 = ptrtoint ptr %ack to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ack, align 4
  %call1449 = call i32 @regmap_field_read(ptr noundef %13, ptr noundef nonnull %ack_val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1449)
  %tobool15.not50 = icmp eq i32 %call1449, 0
  br i1 %tobool15.not50, label %if.then11.if.end17_crit_edge, label %if.then11.cleanup.thread_crit_edge

if.then11.cleanup.thread_crit_edge:               ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

if.then11.if.end17_crit_edge:                     ; preds = %if.then11
  br label %if.end17

if.end17:                                         ; preds = %do.end.if.end17_crit_edge, %if.then11.if.end17_crit_edge
  %14 = ptrtoint ptr %ack_val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ack_val, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %cond)
  %cmp18 = icmp eq i32 %15, %cond
  br i1 %cmp18, label %cleanup, label %if.end20

if.end20:                                         ; preds = %if.end17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp21 = icmp slt i32 %sub, 0
  br i1 %cmp21, label %if.end20.cleanup.thread_crit_edge, label %do.end

if.end20.cleanup.thread_crit_edge:                ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

do.end:                                           ; preds = %if.end20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !23
  %17 = ptrtoint ptr %ack to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ack, align 4
  %call14 = call i32 @regmap_field_read(ptr noundef %18, ptr noundef nonnull %ack_val) #5
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %do.end.if.end17_crit_edge, label %do.end.cleanup.thread_crit_edge

do.end.cleanup.thread_crit_edge:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

do.end.if.end17_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

cleanup.thread:                                   ; preds = %do.end.cleanup.thread_crit_edge, %if.end20.cleanup.thread_crit_edge, %if.then11.cleanup.thread_crit_edge
  %retval.0.ph = phi i32 [ %call1449, %if.then11.cleanup.thread_crit_edge ], [ %call14, %do.end.cleanup.thread_crit_edge ], [ -62, %if.end20.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ack_val) #5
  br label %cleanup32

cleanup:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ack_val) #5
  br label %cleanup32

cleanup32:                                        ; preds = %cleanup, %cleanup.thread, %if.end9.cleanup32_crit_edge, %if.end.cleanup32_crit_edge, %entry.cleanup32_crit_edge
  %retval.1 = phi i32 [ -22, %entry.cleanup32_crit_edge ], [ %call.i, %if.end.cleanup32_crit_edge ], [ %retval.0.ph, %cleanup.thread ], [ 0, %cleanup ], [ 0, %if.end9.cleanup32_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_read(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/reset/sti/reset-syscfg.c", i32 188, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @syscfg_reset_controller_register._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @syscfg_reset_controller_register._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @syscfg_reset_ops, !9, !"syscfg_reset_ops", i1 false, i1 false}
!9 = !{!"../drivers/reset/sti/reset-syscfg.c", i32 134, i32 39}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{i8 0, i8 2}
!21 = !{!"auto-init"}
!22 = !{i64 2152591641}
!23 = !{i64 2152591483}
