; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/bridge/adv7511/adv7511_cec.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/adv7511/adv7511_cec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cec_adap_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cec_msg = type { i64, i64, i32, i32, i32, i32, [16 x i8], i8, i8, i8, i8, i8, i8, i8 }
%struct.adv7511 = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, %struct.drm_display_mode, i32, i32, i32, i32, [256 x i8], i8, %struct.wait_queue_head, %struct.work_struct, %struct.drm_bridge, %struct.drm_connector, i8, i32, i32, i8, ptr, ptr, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [3 x i8], i8, i8, ptr, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.85 }
%union.anon.85 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.cec_adapter = type { ptr, [32 x i8], %struct.cec_devnode, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, ptr, i8, ptr, %struct.completion, ptr, %struct.wait_queue_head, ptr, ptr, i32, i8, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, i8, %struct.cec_log_addrs, %struct.cec_connector_info, i32, ptr, ptr, ptr, i32, [32 x i8] }
%struct.cec_devnode = type { %struct.device, %struct.cdev, i32, %struct.mutex, i8, i8, %struct.mutex, %struct.list_head }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.cec_log_addrs = type { [4 x i8], i16, i8, i8, i32, i32, [15 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x [12 x i8]] }
%struct.cec_connector_info = type { i32, %union.anon.93 }
%union.anon.93 = type { [16 x i32] }

@adv7511_cec_adap_ops = internal constant { %struct.cec_adap_ops, [56 x i8] } { %struct.cec_adap_ops { ptr @adv7511_cec_adap_enable, ptr null, ptr null, ptr @adv7511_cec_adap_log_addr, ptr @adv7511_cec_adap_transmit, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@adv7511_cec_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 331, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Initializing CEC failed with error %d, disabling CEC\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"adv7511_cec_init\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/gpu/drm/bridge/adv7511/adv7511_cec.c\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adv7511_cec_init._entry_ptr = internal global ptr @adv7511_cec_init._entry, section ".printk_index", align 4
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cec\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.6 = private unnamed_addr constant [21 x i8] c"adv7511_cec_adap_ops\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 270, i32 34 }
@___asan_gen_.9 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 330, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private constant [48 x i8] c"../drivers/gpu/drm/bridge/adv7511/adv7511_cec.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 278, i32 39 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @adv7511_cec_init._entry, ptr @adv7511_cec_init._entry_ptr, ptr @adv7511_cec_adap_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_cec_adap_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_cec_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @adv7511_cec_irq_process(ptr nocapture noundef readonly %adv7511, i32 noundef %irq1) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  %cnt.i = alloca i32, align 4
  %msg = alloca %struct.cec_msg, align 8
  %len = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.adv7511, ptr %adv7511, i32 0, i32 30
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  %cond = select i1 %cmp, i32 112, i32 0
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #5
  %2 = call ptr @memset(ptr %msg, i32 0, i32 56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #5
  %3 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %len, align 4, !annotation !21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !21
  %and = and i32 %irq1, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %val.i, align 4, !annotation !21
  %regmap_cec.i = getelementptr inbounds %struct.adv7511, ptr %adv7511, i32 0, i32 5
  %6 = ptrtoint ptr %regmap_cec.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap_cec.i, align 4
  %add.i = add nuw nsw i32 %cond, 17
  %call.i = call i32 @regmap_read(ptr noundef %7, i32 noundef %add.i, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.adv_cec_tx_raw_status.exit_crit_edge

if.then.adv_cec_tx_raw_status.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %adv_cec_tx_raw_status.exit

if.end.i:                                         ; preds = %if.then
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val.i, align 4
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp1.i = icmp eq i32 %and.i, 0
  br i1 %cmp1.i, label %if.end.i.adv_cec_tx_raw_status.exit_crit_edge, label %if.end3.i

if.end.i.adv_cec_tx_raw_status.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %adv_cec_tx_raw_status.exit

if.end3.i:                                        ; preds = %if.end.i
  %and4.i = and i32 %irq1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  %cec_adap.i = getelementptr inbounds %struct.adv7511, ptr %adv7511, i32 0, i32 32
  %10 = ptrtoint ptr %cec_adap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cec_adap.i, align 8
  %call.i.i = call i64 @ktime_get() #5
  call void @cec_transmit_attempt_done_ts(ptr noundef %11, i8 noundef zeroext 2, i64 noundef %call.i.i) #5
  br label %adv_cec_tx_raw_status.exit

if.end7.i:                                        ; preds = %if.end3.i
  %and9.i = and i32 %irq1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end36.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.end7.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cnt.i) #5
  %12 = ptrtoint ptr %cnt.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %cnt.i, align 4, !annotation !21
  %13 = ptrtoint ptr %regmap_cec.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap_cec.i, align 4
  %add13.i = add nuw nsw i32 %cond, 20
  %call14.i = call i32 @regmap_read(ptr noundef %14, i32 noundef %add13.i, ptr noundef nonnull %cnt.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.else.i, label %if.then11.i.if.end34.i_crit_edge

if.then11.i.if.end34.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34.i

if.else.i:                                        ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cnt.i, align 4
  %17 = trunc i32 %16 to i8
  %conv20.i = and i8 %17, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv20.i)
  %tobool21.not.i = icmp eq i8 %conv20.i, 0
  %spec.select.i = select i1 %tobool21.not.i, i8 32, i8 36
  %shr.i = lshr i32 %16, 4
  %conv27.i = trunc i32 %shr.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv27.i)
  %tobool28.not.i = icmp eq i8 %conv27.i, 0
  %18 = or i8 %spec.select.i, 8
  %spec.select57.i = select i1 %tobool28.not.i, i8 %spec.select.i, i8 %18
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.else.i, %if.then11.i.if.end34.i_crit_edge
  %status.1.i = phi i8 [ 48, %if.then11.i.if.end34.i_crit_edge ], [ %spec.select57.i, %if.else.i ]
  %err_cnt.0.i = phi i8 [ 1, %if.then11.i.if.end34.i_crit_edge ], [ 0, %if.else.i ]
  %nack_cnt.0.i = phi i8 [ 0, %if.then11.i.if.end34.i_crit_edge ], [ %conv20.i, %if.else.i ]
  %low_drive_cnt.0.i = phi i8 [ 0, %if.then11.i.if.end34.i_crit_edge ], [ %conv27.i, %if.else.i ]
  %cec_adap35.i = getelementptr inbounds %struct.adv7511, ptr %adv7511, i32 0, i32 32
  %19 = ptrtoint ptr %cec_adap35.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cec_adap35.i, align 8
  %call.i59.i = call i64 @ktime_get() #5
  call void @cec_transmit_done_ts(ptr noundef %20, i8 noundef zeroext %status.1.i, i8 noundef zeroext 0, i8 noundef zeroext %nack_cnt.0.i, i8 noundef zeroext %low_drive_cnt.0.i, i8 noundef zeroext %err_cnt.0.i, i64 noundef %call.i59.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cnt.i) #5
  br label %adv_cec_tx_raw_status.exit

if.end36.i:                                       ; preds = %if.end7.i
  %and38.i = and i32 %irq1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool39.not.i, label %if.end36.i.adv_cec_tx_raw_status.exit_crit_edge, label %if.then40.i

if.end36.i.adv_cec_tx_raw_status.exit_crit_edge:  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %adv_cec_tx_raw_status.exit

if.then40.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #7
  %cec_adap41.i = getelementptr inbounds %struct.adv7511, ptr %adv7511, i32 0, i32 32
  %21 = ptrtoint ptr %cec_adap41.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cec_adap41.i, align 8
  %call.i60.i = call i64 @ktime_get() #5
  call void @cec_transmit_attempt_done_ts(ptr noundef %22, i8 noundef zeroext 1, i64 noundef %call.i60.i) #5
  br label %adv_cec_tx_raw_status.exit

adv_cec_tx_raw_status.exit:                       ; preds = %if.then40.i, %if.end36.i.adv_cec_tx_raw_status.exit_crit_edge, %if.end34.i, %if.then6.i, %if.end.i.adv_cec_tx_raw_status.exit_crit_edge, %if.then.adv_cec_tx_raw_status.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  br label %if.end

if.end:                                           ; preds = %adv_cec_tx_raw_status.exit, %entry.if.end_crit_edge
  %and1 = and i32 %irq1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %regmap_cec = getelementptr inbounds %struct.adv7511, ptr %adv7511, i32 0, i32 5
  %23 = ptrtoint ptr %regmap_cec to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap_cec, align 4
  %add = add nuw nsw i32 %cond, 37
  %call = call i32 @regmap_read(ptr noundef %24, i32 noundef %add, ptr noundef nonnull %len) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end7, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  %and8 = and i32 %26, 31
  %len9 = getelementptr inbounds %struct.cec_msg, ptr %msg, i32 0, i32 2
  %27 = call i32 @llvm.umin.i32(i32 %and8, i32 16)
  %28 = ptrtoint ptr %len9 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %len9, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool17.not = icmp eq i32 %27, 0
  br i1 %tobool17.not, label %if.end7.cleanup_crit_edge, label %for.cond.preheader

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7
  %29 = ptrtoint ptr %len9 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len9, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp2257.not = icmp eq i32 %30, 0
  br i1 %cmp2257.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %add26 = add nuw nsw i32 %cond, 21
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %conv2059 = phi i32 [ 0, %for.body.lr.ph ], [ %conv20, %for.body.for.body_crit_edge ]
  %i.058 = phi i8 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %31 = ptrtoint ptr %regmap_cec to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap_cec, align 4
  %add27 = add nuw nsw i32 %add26, %conv2059
  %call28 = call i32 @regmap_read(ptr noundef %32, i32 noundef %add27, ptr noundef nonnull %val) #5
  %33 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val, align 4
  %conv29 = trunc i32 %34 to i8
  %arrayidx = getelementptr %struct.cec_msg, ptr %msg, i32 0, i32 6, i32 %conv2059
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv29, ptr %arrayidx, align 1
  %inc = add i8 %i.058, 1
  %conv20 = zext i8 %inc to i32
  %36 = ptrtoint ptr %len9 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len9, align 8
  %cmp22 = icmp ugt i32 %37, %conv20
  br i1 %cmp22, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %38 = ptrtoint ptr %regmap_cec to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap_cec, align 4
  %add32 = add nuw nsw i32 %cond, 74
  %call33 = call i32 @regmap_write(ptr noundef %39, i32 noundef %add32, i32 noundef 1) #5
  %40 = ptrtoint ptr %regmap_cec to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap_cec, align 4
  %call36 = call i32 @regmap_write(ptr noundef %41, i32 noundef %add32, i32 noundef 0) #5
  %cec_adap = getelementptr inbounds %struct.adv7511, ptr %adv7511, i32 0, i32 32
  %42 = ptrtoint ptr %cec_adap to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cec_adap, align 8
  %call.i56 = call i64 @ktime_get() #5
  call void @cec_received_msg_ts(ptr noundef %43, ptr noundef nonnull %msg, i64 noundef %call.i56) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adv7511_cec_init(ptr noundef %dev, ptr noundef %adv7511) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.adv7511, ptr %adv7511, i32 0, i32 30
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  %cond = select i1 %cmp, i32 112, i32 0
  %call.i = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.5) #5
  %cec_clk.i = getelementptr inbounds %struct.adv7511, ptr %adv7511, i32 0, i32 36
  %2 = ptrtoint ptr %cec_clk.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %cec_clk.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %adv7511_cec_parse_dt.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.adv7511_cec_parse_dt.exit.thread_crit_edge

if.end.i.adv7511_cec_parse_dt.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %adv7511_cec_parse_dt.exit.thread

if.end.i.i:                                       ; preds = %if.end.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.adv7511_cec_parse_dt.exit.thread_crit_edge, label %if.then3.i.i

if.end.i.i.adv7511_cec_parse_dt.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %adv7511_cec_parse_dt.exit.thread

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %call.i) #5
  br label %adv7511_cec_parse_dt.exit.thread

adv7511_cec_parse_dt.exit.thread:                 ; preds = %if.then3.i.i, %if.end.i.i.adv7511_cec_parse_dt.exit.thread_crit_edge, %if.end.i.adv7511_cec_parse_dt.exit.thread_crit_edge
  %3 = ptrtoint ptr %cec_clk.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cec_clk.i, align 4
  %call9.i = tail call i32 @clk_get_rate(ptr noundef %4) #5
  %cec_clk_freq.i = getelementptr inbounds %struct.adv7511, ptr %adv7511, i32 0, i32 37
  %5 = ptrtoint ptr %cec_clk_freq.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call9.i, ptr %cec_clk_freq.i, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i61, label %adv7511_cec_parse_dt.exit.thread.dev_name.exit_crit_edge

adv7511_cec_parse_dt.exit.thread.dev_name.exit_crit_edge: ; preds = %adv7511_cec_parse_dt.exit.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

adv7511_cec_parse_dt.exit:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %call.i to i32
  %9 = ptrtoint ptr %cec_clk.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %cec_clk.i, align 4
  br label %err_cec_parse_dt

if.end.i61:                                       ; preds = %adv7511_cec_parse_dt.exit.thread
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i61, %adv7511_cec_parse_dt.exit.thread.dev_name.exit_crit_edge
  %retval.0.i62 = phi ptr [ %11, %if.end.i61 ], [ %7, %adv7511_cec_parse_dt.exit.thread.dev_name.exit_crit_edge ]
  %call2 = tail call ptr @cec_allocate_adapter(ptr noundef nonnull @adv7511_cec_adap_ops, ptr noundef %adv7511, ptr noundef %retval.0.i62, i32 noundef 30, i8 noundef zeroext 3) #5
  %cec_adap = getelementptr inbounds %struct.adv7511, ptr %adv7511, i32 0, i32 32
  %12 = ptrtoint ptr %cec_adap to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call2, ptr %cec_adap, align 8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %call2 to i32
  br label %do.end

if.end8:                                          ; preds = %dev_name.exit
  %regmap = getelementptr inbounds %struct.adv7511, ptr %adv7511, i32 0, i32 4
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 8
  %add = add nuw nsw i32 %cond, 226
  %call9 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef %add, i32 noundef 0) #5
  %regmap_cec = getelementptr inbounds %struct.adv7511, ptr %adv7511, i32 0, i32 5
  %16 = ptrtoint ptr %regmap_cec to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap_cec, align 4
  %add10 = add nuw nsw i32 %cond, 80
  %call11 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef %add10, i32 noundef 1) #5
  %18 = ptrtoint ptr %regmap_cec to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap_cec, align 4
  %call14 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef %add10, i32 noundef 0) #5
  %20 = ptrtoint ptr %regmap_cec to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap_cec, align 4
  %add16 = add nuw nsw i32 %cond, 74
  %call17 = tail call i32 @regmap_write(ptr noundef %21, i32 noundef %add16, i32 noundef 0) #5
  %22 = ptrtoint ptr %regmap_cec to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap_cec, align 4
  %add19 = add nuw nsw i32 %cond, 78
  %24 = ptrtoint ptr %cec_clk_freq.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cec_clk_freq.i, align 8
  %div = udiv i32 %25, 750000
  %sub = shl nuw nsw i32 %div, 2
  %shl = add nsw i32 %sub, -4
  %call20 = tail call i32 @regmap_write(ptr noundef %23, i32 noundef %add19, i32 noundef %shl) #5
  %26 = ptrtoint ptr %cec_adap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cec_adap, align 8
  %call22 = tail call i32 @cec_register_adapter(ptr noundef %27, ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end8.cleanup_crit_edge, label %err_cec_register

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_cec_register:                                 ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %cec_adap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cec_adap, align 8
  tail call void @cec_delete_adapter(ptr noundef %29) #5
  %30 = ptrtoint ptr %cec_adap to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %cec_adap, align 8
  br label %do.end

do.end:                                           ; preds = %err_cec_register, %if.then5
  %ret.0 = phi i32 [ %13, %if.then5 ], [ %call22, %err_cec_register ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %ret.0) #8
  br label %err_cec_parse_dt

err_cec_parse_dt:                                 ; preds = %do.end, %adv7511_cec_parse_dt.exit
  %ret.1 = phi i32 [ %8, %adv7511_cec_parse_dt.exit ], [ %ret.0, %do.end ]
  %regmap28 = getelementptr inbounds %struct.adv7511, ptr %adv7511, i32 0, i32 4
  %31 = ptrtoint ptr %regmap28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap28, align 8
  %add29 = add nuw nsw i32 %cond, 226
  %call30 = tail call i32 @regmap_write(ptr noundef %32, i32 noundef %add29, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %ret.1)
  %cmp31 = icmp eq i32 %ret.1, -517
  %spec.select = select i1 %cmp31, i32 -517, i32 0
  br label %cleanup

cleanup:                                          ; preds = %err_cec_parse_dt, %if.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %err_cec_parse_dt ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cec_allocate_adapter(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cec_register_adapter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_delete_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_transmit_attempt_done_ts(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_transmit_done_ts(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_received_msg_ts(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7511_cec_adap_enable(ptr nocapture noundef readonly %adap, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i8
  %priv.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %type = getelementptr inbounds %struct.adv7511, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  %cond = select i1 %cmp, i32 112, i32 0
  %i2c_cec = getelementptr inbounds %struct.adv7511, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c_cec, align 4
  %cmp1 = icmp eq ptr %5, null
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %cec_enabled_adap = getelementptr inbounds %struct.adv7511, ptr %1, i32 0, i32 35
  %6 = ptrtoint ptr %cec_enabled_adap to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cec_enabled_adap, align 8, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %brmerge.demorgan = and i1 %tobool.not, %enable
  br i1 %brmerge.demorgan, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %regmap_cec = getelementptr inbounds %struct.adv7511, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %regmap_cec to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap_cec, align 4
  %add = add nuw nsw i32 %cond, 78
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %add, i32 noundef 3, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %10 = ptrtoint ptr %regmap_cec to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap_cec, align 4
  %add6 = add nuw nsw i32 %cond, 74
  %call7 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef %add6, i32 noundef 7) #5
  %12 = ptrtoint ptr %regmap_cec to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap_cec, align 4
  %call10 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef %add6, i32 noundef 0) #5
  %14 = ptrtoint ptr %regmap_cec to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap_cec, align 4
  %add12 = add nuw nsw i32 %cond, 17
  %call.i55 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %add12, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %regmap = getelementptr inbounds %struct.adv7511, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 8
  %call.i56 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 149, i32 noundef 63, i32 noundef 57, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end29

if.else:                                          ; preds = %if.end
  %brmerge54 = or i1 %tobool.not, %enable
  br i1 %brmerge54, label %if.else.if.end29_crit_edge, label %if.then19

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %regmap20 = getelementptr inbounds %struct.adv7511, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %regmap20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap20, align 8
  %call.i57 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 149, i32 noundef 63, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %regmap_cec22 = getelementptr inbounds %struct.adv7511, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %regmap_cec22 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap_cec22, align 4
  %add23 = add nuw nsw i32 %cond, 75
  %call.i58 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef %add23, i32 noundef 112, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %22 = ptrtoint ptr %regmap_cec22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap_cec22, align 4
  %add26 = add nuw nsw i32 %cond, 78
  %call.i59 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef %add26, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %cec_valid_addrs = getelementptr inbounds %struct.adv7511, ptr %1, i32 0, i32 34
  %24 = ptrtoint ptr %cec_valid_addrs to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %cec_valid_addrs, align 1
  br label %if.end29

if.end29:                                         ; preds = %if.then19, %if.else.if.end29_crit_edge, %if.then3
  %25 = ptrtoint ptr %cec_enabled_adap to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %frombool, ptr %cec_enabled_adap, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end29 ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7511_cec_adap_log_addr(ptr nocapture noundef readonly %adap, i8 noundef zeroext %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %type = getelementptr inbounds %struct.adv7511, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  %cond = select i1 %cmp, i32 112, i32 0
  %cec_enabled_adap = getelementptr inbounds %struct.adv7511, ptr %1, i32 0, i32 35
  %4 = ptrtoint ptr %cec_enabled_adap to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cec_enabled_adap, align 8, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %addr)
  %cmp1 = icmp eq i8 %addr, -1
  %cond3 = select i1 %cmp1, i32 0, i32 -5
  br label %cleanup67

if.end:                                           ; preds = %entry
  %conv4 = zext i8 %addr to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %addr)
  %cmp5 = icmp eq i8 %addr, -1
  br i1 %cmp5, label %if.then7, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %cec_valid_addrs12 = getelementptr inbounds %struct.adv7511, ptr %1, i32 0, i32 34
  %6 = ptrtoint ptr %cec_valid_addrs12 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cec_valid_addrs12, align 1
  %conv13 = zext i8 %7 to i32
  %and = and i32 %conv13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %for.cond.preheader.for.inc.critedge_crit_edge, label %land.lhs.true22

for.cond.preheader.for.inc.critedge_crit_edge:    ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.critedge

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %regmap_cec = getelementptr inbounds %struct.adv7511, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %regmap_cec to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap_cec, align 4
  %add = add nuw nsw i32 %cond, 75
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %add, i32 noundef 112, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %cec_valid_addrs = getelementptr inbounds %struct.adv7511, ptr %1, i32 0, i32 34
  %10 = ptrtoint ptr %cec_valid_addrs to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %cec_valid_addrs, align 1
  br label %cleanup67

land.lhs.true22:                                  ; preds = %for.cond.preheader
  %arrayidx = getelementptr %struct.adv7511, ptr %1, i32 0, i32 33, i32 0
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %addr)
  %cmp25 = icmp eq i8 %12, %addr
  br i1 %cmp25, label %land.lhs.true22.cleanup67_crit_edge, label %land.lhs.true22.for.inc.critedge_crit_edge

land.lhs.true22.for.inc.critedge_crit_edge:       ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.critedge

land.lhs.true22.cleanup67_crit_edge:              ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup67

for.inc.critedge:                                 ; preds = %land.lhs.true22.for.inc.critedge_crit_edge, %for.cond.preheader.for.inc.critedge_crit_edge
  %and.1 = and i32 %conv13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool14.not.1 = icmp eq i32 %and.1, 0
  %13 = or i32 %and.1, 1
  %free_idx.1.1 = select i1 %tobool14.not, i32 0, i32 %13
  br i1 %tobool14.not.1, label %for.inc.critedge.for.inc.critedge.1_crit_edge, label %land.lhs.true22.1

for.inc.critedge.for.inc.critedge.1_crit_edge:    ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.critedge.1

land.lhs.true22.1:                                ; preds = %for.inc.critedge
  %arrayidx.1 = getelementptr %struct.adv7511, ptr %1, i32 0, i32 33, i32 1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %addr)
  %cmp25.1 = icmp eq i8 %15, %addr
  br i1 %cmp25.1, label %land.lhs.true22.1.cleanup67_crit_edge, label %land.lhs.true22.1.for.inc.critedge.1_crit_edge

land.lhs.true22.1.for.inc.critedge.1_crit_edge:   ; preds = %land.lhs.true22.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.critedge.1

land.lhs.true22.1.cleanup67_crit_edge:            ; preds = %land.lhs.true22.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup67

for.inc.critedge.1:                               ; preds = %land.lhs.true22.1.for.inc.critedge.1_crit_edge, %for.inc.critedge.for.inc.critedge.1_crit_edge
  %and.2 = and i32 %conv13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool14.not.2 = icmp eq i32 %and.2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %free_idx.1.1)
  %cmp15.2 = icmp eq i32 %free_idx.1.1, 3
  %spec.select.2 = select i1 %tobool14.not.2, i32 2, i32 3
  %free_idx.1.2 = select i1 %cmp15.2, i32 %spec.select.2, i32 %free_idx.1.1
  br i1 %tobool14.not.2, label %for.inc.critedge.1.if.then31_crit_edge, label %land.lhs.true22.2

for.inc.critedge.1.if.then31_crit_edge:           ; preds = %for.inc.critedge.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then31

land.lhs.true22.2:                                ; preds = %for.inc.critedge.1
  %arrayidx.2 = getelementptr %struct.adv7511, ptr %1, i32 0, i32 33, i32 2
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %addr)
  %cmp25.2 = icmp eq i8 %17, %addr
  br i1 %cmp25.2, label %land.lhs.true22.2.cleanup67_crit_edge, label %land.lhs.true22.2.if.then31_crit_edge

land.lhs.true22.2.if.then31_crit_edge:            ; preds = %land.lhs.true22.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then31

land.lhs.true22.2.cleanup67_crit_edge:            ; preds = %land.lhs.true22.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup67

if.then31:                                        ; preds = %land.lhs.true22.2.if.then31_crit_edge, %for.inc.critedge.1.if.then31_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %free_idx.1.2)
  %cmp32 = icmp eq i32 %free_idx.1.2, 3
  br i1 %cmp32, label %if.then31.cleanup67_crit_edge, label %if.end36

if.then31.cleanup67_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup67

if.end36:                                         ; preds = %if.then31
  %arrayidx38 = getelementptr %struct.adv7511, ptr %1, i32 0, i32 33, i32 %free_idx.1.2
  %18 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %addr, ptr %arrayidx38, align 1
  %shl39 = shl nuw i32 1, %free_idx.1.2
  %19 = ptrtoint ptr %cec_valid_addrs12 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %cec_valid_addrs12, align 1
  %21 = trunc i32 %shl39 to i8
  %conv42 = or i8 %20, %21
  store i8 %conv42, ptr %cec_valid_addrs12, align 1
  %22 = zext i32 %free_idx.1.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %free_idx.1.2, label %if.end36.cleanup67_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb50
    i32 2, label %sw.bb59
  ]

if.end36.cleanup67_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup67

sw.bb:                                            ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %regmap_cec43 = getelementptr inbounds %struct.adv7511, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %regmap_cec43 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap_cec43, align 4
  %add44 = add nuw nsw i32 %cond, 75
  %call.i108 = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef %add44, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %25 = ptrtoint ptr %regmap_cec43 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap_cec43, align 4
  %add47 = add nuw nsw i32 %cond, 76
  %call.i109 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef %add47, i32 noundef 15, i32 noundef %conv4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup67

sw.bb50:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %regmap_cec51 = getelementptr inbounds %struct.adv7511, ptr %1, i32 0, i32 5
  %27 = ptrtoint ptr %regmap_cec51 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap_cec51, align 4
  %add52 = add nuw nsw i32 %cond, 75
  %call.i110 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef %add52, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %29 = ptrtoint ptr %regmap_cec51 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap_cec51, align 4
  %add55 = add nuw nsw i32 %cond, 76
  %shl57 = shl nuw nsw i32 %conv4, 4
  %call.i111 = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef %add55, i32 noundef 240, i32 noundef %shl57, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup67

sw.bb59:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %regmap_cec60 = getelementptr inbounds %struct.adv7511, ptr %1, i32 0, i32 5
  %31 = ptrtoint ptr %regmap_cec60 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap_cec60, align 4
  %add61 = add nuw nsw i32 %cond, 75
  %call.i112 = tail call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef %add61, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %33 = ptrtoint ptr %regmap_cec60 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap_cec60, align 4
  %add64 = add nuw nsw i32 %cond, 77
  %call.i113 = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef %add64, i32 noundef 15, i32 noundef %conv4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup67

cleanup67:                                        ; preds = %sw.bb59, %sw.bb50, %sw.bb, %if.end36.cleanup67_crit_edge, %if.then31.cleanup67_crit_edge, %land.lhs.true22.2.cleanup67_crit_edge, %land.lhs.true22.1.cleanup67_crit_edge, %land.lhs.true22.cleanup67_crit_edge, %if.then7, %if.then
  %retval.2 = phi i32 [ 0, %if.then7 ], [ %cond3, %if.then ], [ -6, %if.then31.cleanup67_crit_edge ], [ 0, %if.end36.cleanup67_crit_edge ], [ 0, %sw.bb59 ], [ 0, %sw.bb50 ], [ 0, %sw.bb ], [ 0, %land.lhs.true22.2.cleanup67_crit_edge ], [ 0, %land.lhs.true22.1.cleanup67_crit_edge ], [ 0, %land.lhs.true22.cleanup67_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7511_cec_adap_transmit(ptr nocapture noundef readonly %adap, i8 noundef zeroext %attempts, i32 noundef %signal_free_time, ptr nocapture noundef readonly %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %type = getelementptr inbounds %struct.adv7511, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  %cond = select i1 %cmp, i32 112, i32 0
  %len1 = getelementptr inbounds %struct.cec_msg, ptr %msg, i32 0, i32 2
  %4 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len1, align 8
  %regmap_cec = getelementptr inbounds %struct.adv7511, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %regmap_cec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap_cec, align 4
  %add = add nuw nsw i32 %cond, 18
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %attempts)
  %cmp3 = icmp ult i8 %attempts, 2
  %conv2 = zext i8 %attempts to i32
  %sub = shl nuw nsw i32 %conv2, 4
  %phi.bo = add nsw i32 %sub, -16
  %cond5 = select i1 %cmp3, i32 16, i32 %phi.bo
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %add, i32 noundef 112, i32 noundef %cond5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %regmap = getelementptr inbounds %struct.adv7511, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 8
  %call.i39 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 151, i32 noundef 56, i32 noundef 56, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %conv8 = and i32 %5, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv8)
  %cmp940.not = icmp eq i32 %conv8, 0
  br i1 %cmp940.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.041 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %10 = ptrtoint ptr %regmap_cec to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap_cec, align 4
  %add13 = add nuw nsw i32 %i.041, %cond
  %arrayidx = getelementptr %struct.cec_msg, ptr %msg, i32 0, i32 6, i32 %i.041
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %conv15 = zext i8 %13 to i32
  %call16 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef %add13, i32 noundef %conv15) #5
  %inc = add nuw nsw i32 %i.041, 1
  %exitcond.not = icmp eq i32 %inc, %conv8
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %14 = ptrtoint ptr %regmap_cec to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap_cec, align 4
  %add18 = add nuw nsw i32 %cond, 16
  %call20 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef %add18, i32 noundef %conv8) #5
  %16 = ptrtoint ptr %regmap_cec to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap_cec, align 4
  %add22 = add nuw nsw i32 %cond, 17
  %call23 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef %add22, i32 noundef 1) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_cec.c", i32 330, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @adv7511_cec_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @adv7511_cec_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_cec.c", i32 278, i32 39}
!10 = !{ptr @adv7511_cec_adap_ops, !11, !"adv7511_cec_adap_ops", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_cec.c", i32 270, i32 34}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"auto-init"}
!22 = !{i8 0, i8 2}
