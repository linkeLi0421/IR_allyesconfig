; ModuleID = '/llk/IR_all_yes/drivers/power/supply/power_supply_hwmon.c_pt.bc'
source_filename = "../drivers/power/supply/power_supply_hwmon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hwmon_chip_info = type { ptr, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
%struct.power_supply = type { ptr, ptr, i32, ptr, i32, ptr, ptr, %struct.device, %struct.work_struct, %struct.delayed_work, %struct.spinlock, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.power_supply_hwmon = type { ptr, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%union.power_supply_propval = type { i32 }

@power_supply_hwmon_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @power_supply_hwmon_ops, ptr @power_supply_hwmon_info }, [24 x i8] zeroinitializer }, align 32
@power_supply_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @power_supply_hwmon_is_visible, ptr @power_supply_hwmon_read, ptr @power_supply_hwmon_read_string, ptr @power_supply_hwmon_write }, [16 x i8] zeroinitializer }, align 32
@power_supply_hwmon_info = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.compoundliteral.3, ptr @.compoundliteral.5, ptr @.compoundliteral.7, ptr null], [16 x i8] zeroinitializer }, align 32
@ps_temp_attrs = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 5, i32 7, i32 15, i32 16], [44 x i8] zeroinitializer }, align 32
@ps_temp_label = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str, ptr @.str.2], [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"temp\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ambient temp\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 2130082, i32 2195458, i32 0], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.3 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 1, ptr @.compoundliteral }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.4 = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 74, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.5 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 3, ptr @.compoundliteral.4 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 78, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.7 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 2, ptr @.compoundliteral.6 }, [24 x i8] zeroinitializer }, align 32
@switch.table.power_supply_hwmon_to_property = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 12, i32 9, i32 8, i32 -22, i32 -22, i32 13], [40 x i8] zeroinitializer }, align 32
@switch.table.power_supply_hwmon_to_property.8 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 17, i32 -22, i32 16, i32 -22, i32 -22, i32 18], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [17 x i64] [i64 15, i64 32, i64 8, i64 9, i64 12, i64 13, i64 16, i64 17, i64 18, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.10 = internal global [6 x i64] [i64 4, i64 32, i64 5, i64 7, i64 15, i64 16]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.12 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 15, i64 16]
@__sancov_gen_cov_switch_values.15 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 5, i64 7, i64 15, i64 16]
@___asan_gen_.16 = private unnamed_addr constant [29 x i8] c"power_supply_hwmon_chip_info\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 322, i32 37 }
@___asan_gen_.19 = private unnamed_addr constant [23 x i8] c"power_supply_hwmon_ops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 289, i32 31 }
@___asan_gen_.22 = private unnamed_addr constant [24 x i8] c"power_supply_hwmon_info\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 296, i32 41 }
@___asan_gen_.25 = private unnamed_addr constant [14 x i8] c"ps_temp_attrs\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 111, i32 18 }
@___asan_gen_.28 = private unnamed_addr constant [14 x i8] c"ps_temp_label\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 16, i32 26 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 17, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private constant [45 x i8] c"../drivers/power/supply/power_supply_hwmon.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 18, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [19 x i8] c".compoundliteral.3\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [19 x i8] c".compoundliteral.4\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [19 x i8] c".compoundliteral.5\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [19 x i8] c".compoundliteral.7\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [44 x i8] c"switch.table.power_supply_hwmon_to_property\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [46 x i8] c"switch.table.power_supply_hwmon_to_property.8\00", align 1
@llvm.compiler.used = appending global [15 x ptr] [ptr @power_supply_hwmon_chip_info, ptr @power_supply_hwmon_ops, ptr @power_supply_hwmon_info, ptr @ps_temp_attrs, ptr @ps_temp_label, ptr @.str, ptr @.str.2, ptr @.compoundliteral, ptr @.compoundliteral.3, ptr @.compoundliteral.4, ptr @.compoundliteral.5, ptr @.compoundliteral.6, ptr @.compoundliteral.7, ptr @switch.table.power_supply_hwmon_to_property, ptr @switch.table.power_supply_hwmon_to_property.8], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_supply_hwmon_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_supply_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_supply_hwmon_info to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_temp_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_temp_label to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.power_supply_hwmon_to_property to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.power_supply_hwmon_to_property.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @power_supply_add_hwmon_sysfs(ptr noundef %psy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psy, align 8
  %dev2 = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 7
  %call = tail call ptr @devres_open_group(ptr noundef %dev2, ptr noundef nonnull @power_supply_add_hwmon_sysfs, i32 noundef 3264) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup36_crit_edge, label %if.end

entry.cleanup36_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup36

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef 8, i32 noundef 3520) #7
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.error_crit_edge, label %if.end6

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end6:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %psy, ptr %call.i, align 4
  %call8 = tail call ptr @bitmap_zalloc(i32 noundef 64, i32 noundef 3264) #7
  %props = getelementptr inbounds %struct.power_supply_hwmon, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %props to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call8, ptr %props, align 4
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %if.end6.error_crit_edge, label %if.end12

if.end6.error_crit_edge:                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end12:                                         ; preds = %if.end6
  %call.i69 = tail call i32 @devm_add_action(ptr noundef %dev2, ptr noundef nonnull @power_supply_hwmon_bitmap_free, ptr noundef nonnull %call8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %tobool.not.i = icmp eq i32 %call.i69, 0
  br i1 %tobool.not.i, label %for.cond.preheader, label %devm_add_action_or_reset.exit.thread

for.cond.preheader:                               ; preds = %if.end12
  %num_properties = getelementptr inbounds %struct.power_supply_desc, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %num_properties to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_properties, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp75.not = icmp eq i32 %5, 0
  br i1 %cmp75.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %properties = getelementptr inbounds %struct.power_supply_desc, ptr %1, i32 0, i32 4
  br label %for.body

devm_add_action_or_reset.exit.thread:             ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @bitmap_free(ptr noundef nonnull %call8) #7
  br label %error

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %for.body.lr.ph
  %i.076 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %sw.epilog.for.body_crit_edge ]
  %6 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %properties, align 4
  %arrayidx = getelementptr i32, ptr %7, i32 %i.076
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %for.body.sw.epilog_crit_edge [
    i32 18, label %for.body.sw.bb_crit_edge
    i32 16, label %for.body.sw.bb_crit_edge77
    i32 17, label %for.body.sw.bb_crit_edge78
    i32 52, label %for.body.sw.bb_crit_edge79
    i32 53, label %for.body.sw.bb_crit_edge80
    i32 54, label %for.body.sw.bb_crit_edge81
    i32 55, label %for.body.sw.bb_crit_edge82
    i32 56, label %for.body.sw.bb_crit_edge83
    i32 57, label %for.body.sw.bb_crit_edge84
    i32 58, label %for.body.sw.bb_crit_edge85
    i32 59, label %for.body.sw.bb_crit_edge86
    i32 13, label %for.body.sw.bb_crit_edge87
    i32 9, label %for.body.sw.bb_crit_edge88
    i32 8, label %for.body.sw.bb_crit_edge89
    i32 12, label %for.body.sw.bb_crit_edge90
  ]

for.body.sw.bb_crit_edge90:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

for.body.sw.bb_crit_edge89:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

for.body.sw.bb_crit_edge88:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

for.body.sw.bb_crit_edge87:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

for.body.sw.bb_crit_edge86:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

for.body.sw.bb_crit_edge85:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

for.body.sw.bb_crit_edge84:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

for.body.sw.bb_crit_edge83:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

for.body.sw.bb_crit_edge82:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

for.body.sw.bb_crit_edge81:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

for.body.sw.bb_crit_edge80:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

for.body.sw.bb_crit_edge79:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

for.body.sw.bb_crit_edge78:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

for.body.sw.bb_crit_edge77:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

for.body.sw.bb_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body.sw.bb_crit_edge, %for.body.sw.bb_crit_edge77, %for.body.sw.bb_crit_edge78, %for.body.sw.bb_crit_edge79, %for.body.sw.bb_crit_edge80, %for.body.sw.bb_crit_edge81, %for.body.sw.bb_crit_edge82, %for.body.sw.bb_crit_edge83, %for.body.sw.bb_crit_edge84, %for.body.sw.bb_crit_edge85, %for.body.sw.bb_crit_edge86, %for.body.sw.bb_crit_edge87, %for.body.sw.bb_crit_edge88, %for.body.sw.bb_crit_edge89, %for.body.sw.bb_crit_edge90
  %11 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %props, align 4
  tail call void @_set_bit(i32 noundef %9, ptr noundef %12) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %for.body.sw.epilog_crit_edge
  %inc = add nuw i32 %i.076, 1
  %13 = ptrtoint ptr %num_properties to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_properties, align 4
  %cmp = icmp ult i32 %inc, %14
  br i1 %cmp, label %sw.epilog.for.body_crit_edge, label %sw.epilog.for.end_crit_edge

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %sw.epilog.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %15 = ptrtoint ptr %psy to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %psy, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %call21 = tail call ptr @strchr(ptr noundef %18, i32 noundef 45)
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %for.end.if.end29_crit_edge, label %if.then23

for.end.if.end29_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then23:                                        ; preds = %for.end
  %call24 = tail call noalias ptr @devm_kstrdup(ptr noundef %dev2, ptr noundef %18, i32 noundef 3264) #7
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.then23.error_crit_edge, label %cleanup.thread

if.then23.error_crit_edge:                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

cleanup.thread:                                   ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %call28 = tail call ptr @strreplace(ptr noundef nonnull %call24, i8 noundef zeroext 45, i8 noundef zeroext 95) #7
  br label %if.end29

if.end29:                                         ; preds = %cleanup.thread, %for.end.if.end29_crit_edge
  %name.1 = phi ptr [ %18, %for.end.if.end29_crit_edge ], [ %call24, %cleanup.thread ]
  %call30 = tail call ptr @devm_hwmon_device_register_with_info(ptr noundef %dev2, ptr noundef %name.1, ptr noundef nonnull %call.i, ptr noundef nonnull @power_supply_hwmon_chip_info, ptr noundef null) #7
  %cmp.i.i.not = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  %19 = ptrtoint ptr %call30 to i32
  br i1 %cmp.i.i.not, label %if.end29.error_crit_edge, label %if.end34

if.end29.error_crit_edge:                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end34:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @devres_close_group(ptr noundef %dev2, ptr noundef nonnull @power_supply_add_hwmon_sysfs) #7
  br label %cleanup36

error:                                            ; preds = %if.end29.error_crit_edge, %if.then23.error_crit_edge, %devm_add_action_or_reset.exit.thread, %if.end6.error_crit_edge, %if.end.error_crit_edge
  %ret.1 = phi i32 [ %19, %if.end29.error_crit_edge ], [ -12, %if.end.error_crit_edge ], [ -12, %if.end6.error_crit_edge ], [ %call.i69, %devm_add_action_or_reset.exit.thread ], [ -12, %if.then23.error_crit_edge ]
  %call35 = tail call i32 @devres_release_group(ptr noundef %dev2, ptr noundef null) #7
  br label %cleanup36

cleanup36:                                        ; preds = %error, %if.end34, %entry.cleanup36_crit_edge
  %retval.0 = phi i32 [ %ret.1, %error ], [ 0, %if.end34 ], [ -12, %entry.cleanup36_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devres_open_group(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @power_supply_hwmon_bitmap_free(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @bitmap_free(ptr noundef %data) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kstrdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strreplace(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_close_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @power_supply_remove_hwmon_sysfs(ptr noundef %psy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 7
  %call = tail call i32 @devres_release_group(ptr noundef %dev, ptr noundef nonnull @power_supply_add_hwmon_sysfs) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @power_supply_hwmon_is_visible(ptr nocapture noundef readonly %data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp.i = icmp eq i32 %type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %attr)
  %cmp1.i = icmp eq i32 %attr, 21
  %spec.select.i = and i1 %cmp.i, %cmp1.i
  br i1 %spec.select.i, label %for.body.lr.ph.i, label %if.end

for.body.lr.ph.i:                                 ; preds = %entry
  %props.i = getelementptr inbounds %struct.power_supply_hwmon, ptr %data, i32 0, i32 1
  %call.i = tail call fastcc i32 @power_supply_hwmon_to_property(i32 noundef 1, i32 noundef 1, i32 noundef %channel) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp2.i = icmp sgt i32 %call.i, -1
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.lr.ph.i.for.inc.critedge.i_crit_edge

for.body.lr.ph.i.for.inc.critedge.i_crit_edge:    ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.critedge.i

land.lhs.true.i:                                  ; preds = %for.body.lr.ph.i
  %0 = ptrtoint ptr %props.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %props.i, align 4
  %div3.i.i = lshr i32 %call.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %1, i32 %div3.i.i
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %call.i, 31
  %4 = shl nuw i32 1, %and.i.i
  %5 = and i32 %3, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.for.inc.critedge.i_crit_edge, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i.for.inc.critedge.i_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.critedge.i

for.inc.critedge.i:                               ; preds = %land.lhs.true.i.for.inc.critedge.i_crit_edge, %for.body.lr.ph.i.for.inc.critedge.i_crit_edge
  %call.i.1 = tail call fastcc i32 @power_supply_hwmon_to_property(i32 noundef 1, i32 noundef 5, i32 noundef %channel) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.1)
  %cmp2.i.1 = icmp sgt i32 %call.i.1, -1
  br i1 %cmp2.i.1, label %land.lhs.true.i.1, label %for.inc.critedge.i.for.inc.critedge.i.1_crit_edge

for.inc.critedge.i.for.inc.critedge.i.1_crit_edge: ; preds = %for.inc.critedge.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.critedge.i.1

land.lhs.true.i.1:                                ; preds = %for.inc.critedge.i
  %6 = ptrtoint ptr %props.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %props.i, align 4
  %div3.i.i.1 = lshr i32 %call.i.1, 5
  %arrayidx.i.i.1 = getelementptr i32, ptr %7, i32 %div3.i.i.1
  %8 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i.i.1, align 4
  %and.i.i.1 = and i32 %call.i.1, 31
  %10 = shl nuw i32 1, %and.i.i.1
  %11 = and i32 %9, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.1 = icmp eq i32 %11, 0
  br i1 %tobool.not.i.1, label %land.lhs.true.i.1.for.inc.critedge.i.1_crit_edge, label %land.lhs.true.i.1.cleanup_crit_edge

land.lhs.true.i.1.cleanup_crit_edge:              ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i.1.for.inc.critedge.i.1_crit_edge: ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.critedge.i.1

for.inc.critedge.i.1:                             ; preds = %land.lhs.true.i.1.for.inc.critedge.i.1_crit_edge, %for.inc.critedge.i.for.inc.critedge.i.1_crit_edge
  %call.i.2 = tail call fastcc i32 @power_supply_hwmon_to_property(i32 noundef 1, i32 noundef 7, i32 noundef %channel) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.2)
  %cmp2.i.2 = icmp sgt i32 %call.i.2, -1
  br i1 %cmp2.i.2, label %land.lhs.true.i.2, label %for.inc.critedge.i.1.for.inc.critedge.i.2_crit_edge

for.inc.critedge.i.1.for.inc.critedge.i.2_crit_edge: ; preds = %for.inc.critedge.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.critedge.i.2

land.lhs.true.i.2:                                ; preds = %for.inc.critedge.i.1
  %12 = ptrtoint ptr %props.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %props.i, align 4
  %div3.i.i.2 = lshr i32 %call.i.2, 5
  %arrayidx.i.i.2 = getelementptr i32, ptr %13, i32 %div3.i.i.2
  %14 = ptrtoint ptr %arrayidx.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %arrayidx.i.i.2, align 4
  %and.i.i.2 = and i32 %call.i.2, 31
  %16 = shl nuw i32 1, %and.i.i.2
  %17 = and i32 %15, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.2 = icmp eq i32 %17, 0
  br i1 %tobool.not.i.2, label %land.lhs.true.i.2.for.inc.critedge.i.2_crit_edge, label %land.lhs.true.i.2.cleanup_crit_edge

land.lhs.true.i.2.cleanup_crit_edge:              ; preds = %land.lhs.true.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i.2.for.inc.critedge.i.2_crit_edge: ; preds = %land.lhs.true.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.critedge.i.2

for.inc.critedge.i.2:                             ; preds = %land.lhs.true.i.2.for.inc.critedge.i.2_crit_edge, %for.inc.critedge.i.1.for.inc.critedge.i.2_crit_edge
  %call.i.3 = tail call fastcc i32 @power_supply_hwmon_to_property(i32 noundef 1, i32 noundef 15, i32 noundef %channel) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.3)
  %cmp2.i.3 = icmp sgt i32 %call.i.3, -1
  br i1 %cmp2.i.3, label %land.lhs.true.i.3, label %for.inc.critedge.i.2.for.inc.critedge.i.3_crit_edge

for.inc.critedge.i.2.for.inc.critedge.i.3_crit_edge: ; preds = %for.inc.critedge.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.critedge.i.3

land.lhs.true.i.3:                                ; preds = %for.inc.critedge.i.2
  %18 = ptrtoint ptr %props.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %props.i, align 4
  %div3.i.i.3 = lshr i32 %call.i.3, 5
  %arrayidx.i.i.3 = getelementptr i32, ptr %19, i32 %div3.i.i.3
  %20 = ptrtoint ptr %arrayidx.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %arrayidx.i.i.3, align 4
  %and.i.i.3 = and i32 %call.i.3, 31
  %22 = shl nuw i32 1, %and.i.i.3
  %23 = and i32 %21, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i.3 = icmp eq i32 %23, 0
  br i1 %tobool.not.i.3, label %land.lhs.true.i.3.for.inc.critedge.i.3_crit_edge, label %land.lhs.true.i.3.cleanup_crit_edge

land.lhs.true.i.3.cleanup_crit_edge:              ; preds = %land.lhs.true.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i.3.for.inc.critedge.i.3_crit_edge: ; preds = %land.lhs.true.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.critedge.i.3

for.inc.critedge.i.3:                             ; preds = %land.lhs.true.i.3.for.inc.critedge.i.3_crit_edge, %for.inc.critedge.i.2.for.inc.critedge.i.3_crit_edge
  %call.i.4 = tail call fastcc i32 @power_supply_hwmon_to_property(i32 noundef 1, i32 noundef 16, i32 noundef %channel) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.4)
  %cmp2.i.4 = icmp sgt i32 %call.i.4, -1
  br i1 %cmp2.i.4, label %land.lhs.true.i.4, label %for.inc.critedge.i.3.for.inc.critedge.i.4_crit_edge

for.inc.critedge.i.3.for.inc.critedge.i.4_crit_edge: ; preds = %for.inc.critedge.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.critedge.i.4

land.lhs.true.i.4:                                ; preds = %for.inc.critedge.i.3
  %24 = ptrtoint ptr %props.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %props.i, align 4
  %div3.i.i.4 = lshr i32 %call.i.4, 5
  %arrayidx.i.i.4 = getelementptr i32, ptr %25, i32 %div3.i.i.4
  %26 = ptrtoint ptr %arrayidx.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %arrayidx.i.i.4, align 4
  %and.i.i.4 = and i32 %call.i.4, 31
  %28 = shl nuw i32 1, %and.i.i.4
  %29 = and i32 %27, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.4 = icmp eq i32 %29, 0
  br i1 %tobool.not.i.4, label %land.lhs.true.i.4.for.inc.critedge.i.4_crit_edge, label %land.lhs.true.i.4.cleanup_crit_edge

land.lhs.true.i.4.cleanup_crit_edge:              ; preds = %land.lhs.true.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i.4.for.inc.critedge.i.4_crit_edge: ; preds = %land.lhs.true.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.critedge.i.4

for.inc.critedge.i.4:                             ; preds = %land.lhs.true.i.4.for.inc.critedge.i.4_crit_edge, %for.inc.critedge.i.3.for.inc.critedge.i.4_crit_edge
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc i32 @power_supply_hwmon_to_property(i32 noundef %type, i32 noundef %attr, i32 noundef %channel)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %props = getelementptr inbounds %struct.power_supply_hwmon, ptr %data, i32 0, i32 1
  %30 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %props, align 4
  %div3.i = lshr i32 %call3, 5
  %arrayidx.i = getelementptr i32, ptr %31, i32 %div3.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %call3, 31
  %34 = shl nuw i32 1, %and.i
  %35 = and i32 %33, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not = icmp eq i32 %35, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end6

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data, align 4
  %call7 = tail call i32 @power_supply_property_is_writeable(ptr noundef %37, i32 noundef %call3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp sgt i32 %call7, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end6.if.end11_crit_edge

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end6
  %38 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %type, label %land.lhs.true.if.end11_crit_edge [
    i32 2, label %power_supply_hwmon_is_writable.exit
    i32 3, label %sw.bb2.i
    i32 1, label %sw.bb4.i
  ]

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

sw.bb2.i:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %attr)
  %cmp3.i = icmp eq i32 %attr, 3
  br i1 %cmp3.i, label %sw.bb2.i.cleanup_crit_edge, label %sw.bb2.i.if.end11_crit_edge

sw.bb2.i.if.end11_crit_edge:                      ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

sw.bb2.i.cleanup_crit_edge:                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb4.i:                                         ; preds = %land.lhs.true
  %39 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %attr, label %sw.bb4.i.if.end11_crit_edge [
    i32 7, label %sw.bb4.i.cleanup_crit_edge
    i32 5, label %sw.bb4.i.cleanup_crit_edge30
    i32 15, label %sw.bb4.i.cleanup_crit_edge31
    i32 16, label %sw.bb4.i.cleanup_crit_edge32
  ]

sw.bb4.i.cleanup_crit_edge32:                     ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb4.i.cleanup_crit_edge31:                     ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb4.i.cleanup_crit_edge30:                     ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb4.i.cleanup_crit_edge:                       ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb4.i.if.end11_crit_edge:                      ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

power_supply_hwmon_is_writable.exit:              ; preds = %land.lhs.true
  %40 = and i32 %attr, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %power_supply_hwmon_is_writable.exit.cleanup_crit_edge, label %power_supply_hwmon_is_writable.exit.if.end11_crit_edge

power_supply_hwmon_is_writable.exit.if.end11_crit_edge: ; preds = %power_supply_hwmon_is_writable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

power_supply_hwmon_is_writable.exit.cleanup_crit_edge: ; preds = %power_supply_hwmon_is_writable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %power_supply_hwmon_is_writable.exit.if.end11_crit_edge, %sw.bb4.i.if.end11_crit_edge, %sw.bb2.i.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge, %if.end6.if.end11_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %power_supply_hwmon_is_writable.exit.cleanup_crit_edge, %sw.bb4.i.cleanup_crit_edge, %sw.bb4.i.cleanup_crit_edge30, %sw.bb4.i.cleanup_crit_edge31, %sw.bb4.i.cleanup_crit_edge32, %sw.bb2.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.inc.critedge.i.4, %land.lhs.true.i.4.cleanup_crit_edge, %land.lhs.true.i.3.cleanup_crit_edge, %land.lhs.true.i.2.cleanup_crit_edge, %land.lhs.true.i.1.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge
  %retval.0 = phi i16 [ 292, %if.end11 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 420, %power_supply_hwmon_is_writable.exit.cleanup_crit_edge ], [ 420, %sw.bb2.i.cleanup_crit_edge ], [ 420, %sw.bb4.i.cleanup_crit_edge ], [ 420, %sw.bb4.i.cleanup_crit_edge30 ], [ 420, %sw.bb4.i.cleanup_crit_edge31 ], [ 420, %sw.bb4.i.cleanup_crit_edge32 ], [ 292, %land.lhs.true.i.cleanup_crit_edge ], [ 292, %land.lhs.true.i.1.cleanup_crit_edge ], [ 292, %land.lhs.true.i.2.cleanup_crit_edge ], [ 292, %land.lhs.true.i.3.cleanup_crit_edge ], [ 292, %land.lhs.true.i.4.cleanup_crit_edge ], [ 0, %for.inc.critedge.i.4 ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @power_supply_hwmon_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  %pspval = alloca %union.power_supply_propval, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pspval) #7
  %4 = ptrtoint ptr %pspval to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %pspval, align 4, !annotation !25
  %call2 = tail call fastcc i32 @power_supply_hwmon_to_property(i32 noundef %type, i32 noundef %attr, i32 noundef %channel)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @power_supply_get_property(ptr noundef %3, i32 noundef %call2, ptr noundef nonnull %pspval) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %5 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %type, label %if.end5.cleanup_crit_edge [
    i32 3, label %if.end5.sw.bb_crit_edge
    i32 2, label %if.end5.sw.bb_crit_edge40
    i32 1, label %sw.bb14
  ]

if.end5.sw.bb_crit_edge40:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end5.sw.bb_crit_edge:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end5.sw.bb_crit_edge, %if.end5.sw.bb_crit_edge40
  %6 = ptrtoint ptr %pspval to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pspval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp6 = icmp sgt i32 %7, 0
  %cond.in.v = select i1 %cmp6, i32 500, i32 -500
  %cond.in = add i32 %cond.in.v, %7
  %cond = sdiv i32 %cond.in, 1000
  %8 = ptrtoint ptr %pspval to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond, ptr %pspval, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end5
  %9 = ptrtoint ptr %pspval to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pspval, align 4
  %11 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %10, i32 100)
  %12 = extractvalue { i32, i1 } %11, 1
  %13 = extractvalue { i32, i1 } %11, 0
  %14 = ptrtoint ptr %pspval to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %pspval, align 4
  br i1 %12, label %sw.bb14.cleanup_crit_edge, label %sw.bb14.sw.epilog_crit_edge

sw.bb14.sw.epilog_crit_edge:                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb14.sw.epilog_crit_edge, %sw.bb
  %15 = ptrtoint ptr %pspval to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pspval, align 4
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb14.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %call2, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ -75, %sw.bb14.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pspval) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @power_supply_hwmon_read_string(ptr nocapture noundef readnone %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %str) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cond = icmp eq i32 %type, 1
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr [2 x ptr], ptr @ps_temp_label, i32 0, i32 %channel
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %str to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %str, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @power_supply_hwmon_write(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, i32 noundef %val) #0 align 64 {
entry:
  %pspval = alloca %union.power_supply_propval, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pspval) #7
  %call2 = tail call fastcc i32 @power_supply_hwmon_to_property(i32 noundef %type, i32 noundef %attr, i32 noundef %channel)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %type, label %if.end.cleanup_crit_edge [
    i32 3, label %if.end.sw.bb_crit_edge
    i32 2, label %if.end.sw.bb_crit_edge35
    i32 1, label %sw.bb9
  ]

if.end.sw.bb_crit_edge35:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge35
  %5 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %val, i32 1000)
  %6 = extractvalue { i32, i1 } %5, 1
  %7 = extractvalue { i32, i1 } %5, 0
  %8 = ptrtoint ptr %pspval to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %pspval, align 4
  br i1 %6, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp12 = icmp sgt i32 %val, 0
  %cond.in.v = select i1 %cmp12, i32 50, i32 -50
  %cond.in = add i32 %cond.in.v, %val
  %cond = sdiv i32 %cond.in, 100
  %9 = ptrtoint ptr %pspval to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond, ptr %pspval, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb.sw.epilog_crit_edge
  %call21 = call i32 @power_supply_set_property(ptr noundef %3, i32 noundef %call2, ptr noundef nonnull %pspval) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %sw.epilog ], [ %call2, %entry.cleanup_crit_edge ], [ -75, %sw.bb.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pspval) #7
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @power_supply_hwmon_to_property(i32 noundef %type, i32 noundef %attr, i32 noundef %channel) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %type, label %entry.return_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb1
    i32 1, label %sw.bb3
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb:                                            ; preds = %entry
  %switch.tableidx = add i32 %attr, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %1 = icmp ult i32 %switch.tableidx, 6
  br i1 %1, label %switch.lookup, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb1:                                           ; preds = %entry
  %switch.tableidx15 = add i32 %attr, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx15)
  %2 = icmp ult i32 %switch.tableidx15, 6
  br i1 %2, label %switch.lookup14, label %sw.bb1.return_crit_edge

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %tobool.not.i = icmp eq i32 %channel, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb3
  %3 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %attr, label %if.then.i.if.end.i_crit_edge [
    i32 1, label %if.then.i.return_crit_edge
    i32 15, label %sw.bb1.i11
    i32 16, label %sw.bb2.i12
  ]

if.then.i.return_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

sw.bb1.i11:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb2.i12:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.else.i:                                        ; preds = %sw.bb3
  %4 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %attr, label %if.else.i.if.end.i_crit_edge [
    i32 1, label %if.else.i.return_crit_edge
    i32 7, label %sw.bb4.i
    i32 5, label %sw.bb5.i
    i32 15, label %sw.bb6.i
    i32 16, label %sw.bb7.i
  ]

if.else.i.return_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

sw.bb4.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb5.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb6.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb7.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.i:                                         ; preds = %if.else.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  br label %return

switch.lookup:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.power_supply_hwmon_to_property, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

switch.lookup14:                                  ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep16 = getelementptr inbounds [6 x i32], ptr @switch.table.power_supply_hwmon_to_property.8, i32 0, i32 %switch.tableidx15
  %6 = ptrtoint ptr %switch.gep16 to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load17 = load i32, ptr %switch.gep16, align 4
  br label %return

return:                                           ; preds = %switch.lookup14, %switch.lookup, %if.end.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %if.else.i.return_crit_edge, %sw.bb2.i12, %sw.bb1.i11, %if.then.i.return_crit_edge, %sw.bb1.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ -22, %if.end.i ], [ 59, %sw.bb2.i12 ], [ 58, %sw.bb1.i11 ], [ 56, %sw.bb7.i ], [ 55, %sw.bb6.i ], [ 54, %sw.bb5.i ], [ 53, %sw.bb4.i ], [ 57, %if.then.i.return_crit_edge ], [ 52, %if.else.i.return_crit_edge ], [ %switch.load, %switch.lookup ], [ -22, %sw.bb.return_crit_edge ], [ %switch.load17, %switch.lookup14 ], [ -22, %sw.bb1.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_property_is_writeable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_get_property(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_set_property(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @power_supply_hwmon_chip_info, !1, !"power_supply_hwmon_chip_info", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/power_supply_hwmon.c", i32 322, i32 37}
!2 = !{ptr @power_supply_hwmon_ops, !3, !"power_supply_hwmon_ops", i1 false, i1 false}
!3 = !{!"../drivers/power/supply/power_supply_hwmon.c", i32 289, i32 31}
!4 = distinct !{null, !5, !"ps_type_attrs", i1 false, i1 false}
!5 = !{!"../drivers/power/supply/power_supply_hwmon.c", i32 117, i32 42}
!6 = !{ptr @ps_temp_attrs, !7, !"ps_temp_attrs", i1 false, i1 false}
!7 = !{!"../drivers/power/supply/power_supply_hwmon.c", i32 111, i32 18}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/power/supply/power_supply_hwmon.c", i32 17, i32 2}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/power_supply_hwmon.c", i32 18, i32 2}
!12 = !{ptr @ps_temp_label, !13, !"ps_temp_label", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/power_supply_hwmon.c", i32 16, i32 26}
!14 = !{ptr @power_supply_hwmon_info, !15, !"power_supply_hwmon_info", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/power_supply_hwmon.c", i32 296, i32 41}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{!"auto-init"}
