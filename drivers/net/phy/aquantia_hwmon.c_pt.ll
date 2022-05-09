; ModuleID = '/llk/IR_all_yes/drivers/net/phy/aquantia_hwmon.c_pt.bc'
source_filename = "../drivers/net/phy/aquantia_hwmon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hwmon_chip_info = type { ptr, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
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

@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@aqr_hwmon_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @aqr_hwmon_ops, ptr @aqr_hwmon_info }, [24 x i8] zeroinitializer }, align 32
@aqr_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @aqr_hwmon_is_visible, ptr @aqr_hwmon_read, ptr null, ptr @aqr_hwmon_write }, [16 x i8] zeroinitializer }, align 32
@aqr_hwmon_info = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @aqr_hwmon_chip, ptr @aqr_hwmon_temp, ptr null], [20 x i8] zeroinitializer }, align 32
@aqr_hwmon_chip = internal constant { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 0, ptr @aqr_hwmon_chip_config }, [24 x i8] zeroinitializer }, align 32
@aqr_hwmon_temp = internal constant { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 1, ptr @aqr_hwmon_temp_config }, [24 x i8] zeroinitializer }, align 32
@aqr_hwmon_chip_config = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 16, i32 0], [24 x i8] zeroinitializer }, align 32
@aqr_hwmon_temp_config = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 246442, i32 0], [24 x i8] zeroinitializer }, align 32
@switch.table.aqr_hwmon_is_visible = internal constant { [17 x i16], [62 x i8] } { [17 x i16] [i16 292, i16 0, i16 420, i16 0, i16 420, i16 0, i16 420, i16 0, i16 420, i16 0, i16 0, i16 0, i16 0, i16 292, i16 292, i16 292, i16 292], [62 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 3, i64 5, i64 7, i64 9, i64 14, i64 15, i64 16, i64 17]
@__sancov_gen_cov_switch_values.1 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 5, i64 7, i64 9]
@___asan_gen_.2 = private unnamed_addr constant [20 x i8] c"aqr_hwmon_chip_info\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 219, i32 37 }
@___asan_gen_.5 = private unnamed_addr constant [14 x i8] c"aqr_hwmon_ops\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 183, i32 31 }
@___asan_gen_.8 = private unnamed_addr constant [15 x i8] c"aqr_hwmon_info\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 213, i32 41 }
@___asan_gen_.11 = private unnamed_addr constant [15 x i8] c"aqr_hwmon_chip\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 194, i32 40 }
@___asan_gen_.14 = private unnamed_addr constant [15 x i8] c"aqr_hwmon_temp\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 208, i32 40 }
@___asan_gen_.17 = private unnamed_addr constant [22 x i8] c"aqr_hwmon_chip_config\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 189, i32 12 }
@___asan_gen_.20 = private unnamed_addr constant [22 x i8] c"aqr_hwmon_temp_config\00", align 1
@___asan_gen_.21 = private constant [36 x i8] c"../drivers/net/phy/aquantia_hwmon.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 199, i32 12 }
@___asan_gen_.23 = private unnamed_addr constant [34 x i8] c"switch.table.aqr_hwmon_is_visible\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @aqr_hwmon_chip_info, ptr @aqr_hwmon_ops, ptr @aqr_hwmon_info, ptr @aqr_hwmon_chip, ptr @aqr_hwmon_temp, ptr @aqr_hwmon_chip_config, ptr @aqr_hwmon_temp_config, ptr @switch.table.aqr_hwmon_is_visible], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aqr_hwmon_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aqr_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aqr_hwmon_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aqr_hwmon_chip to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aqr_hwmon_temp to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aqr_hwmon_chip_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aqr_hwmon_temp_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.aqr_hwmon_is_visible to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aqr_hwmon_probe(ptr noundef %phydev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %init_name.i = getelementptr inbounds %struct.device, ptr %phydev, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %entry.dev_name.exit_crit_edge ]
  %call2 = tail call noalias ptr @devm_kstrdup(ptr noundef %phydev, ptr noundef %retval.0.i, i32 noundef 3264) #3
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %dev_name.exit.cleanup_crit_edge, label %for.cond.preheader

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.preheader:                               ; preds = %dev_name.exit
  %4 = ptrtoint ptr %call2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %call2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not40 = icmp eq i8 %5, 0
  br i1 %tobool3.not40, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %6 = phi i8 [ %12, %for.inc.for.body_crit_edge ], [ %5, %for.cond.preheader.for.body_crit_edge ]
  %j.042 = phi i32 [ %j.1, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.041 = phi i32 [ %inc16, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %conv = zext i8 %6 to i32
  %arrayidx5 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx5, align 1
  %9 = and i8 %8, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp.not = icmp eq i8 %9, 0
  br i1 %cmp.not, label %for.body.for.inc_crit_edge, label %if.then8

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %i.041, i32 %j.042)
  %cmp9.not = icmp eq i32 %i.041, %j.042
  br i1 %cmp9.not, label %if.then8.if.end14_crit_edge, label %if.then11

if.then8.if.end14_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx13 = getelementptr i8, ptr %call2, i32 %j.042
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %6, ptr %arrayidx13, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.then8.if.end14_crit_edge
  %inc = add i32 %j.042, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end14, %for.body.for.inc_crit_edge
  %j.1 = phi i32 [ %inc, %if.end14 ], [ %j.042, %for.body.for.inc_crit_edge ]
  %inc16 = add i32 %i.041, 1
  %arrayidx = getelementptr i8, ptr %call2, i32 %inc16
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %tobool3.not = icmp eq i8 %12, 0
  br i1 %tobool3.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %j.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %j.1, %for.inc.for.end_crit_edge ]
  %arrayidx17 = getelementptr i8, ptr %call2, i32 %j.0.lcssa
  %13 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx17, align 1
  %call18 = tail call ptr @devm_hwmon_device_register_with_info(ptr noundef %phydev, ptr noundef nonnull %call2, ptr noundef %phydev, ptr noundef nonnull @aqr_hwmon_chip_info, ptr noundef null) #3
  %cmp.i.i = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  %14 = ptrtoint ptr %call18 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %14, i32 0
  br label %cleanup

cleanup:                                          ; preds = %for.end, %dev_name.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %for.end ], [ -12, %dev_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kstrdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @aqr_hwmon_is_visible(ptr nocapture noundef readnone %data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp.not = icmp eq i32 %type, 1
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  %switch.tableidx = add i32 %attr, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 17
  br i1 %0, label %switch.lookup, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %switch.gep = getelementptr inbounds [17 x i16], ptr @switch.table.aqr_hwmon_is_visible, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %1)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %return

return:                                           ; preds = %switch.lookup, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i16 [ 0, %entry.return_crit_edge ], [ %switch.load, %switch.lookup ], [ 0, %if.end.return_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aqr_hwmon_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp.not = icmp eq i32 %type, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %attr, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb8
    i32 5, label %sw.bb10
    i32 7, label %sw.bb12
    i32 9, label %sw.bb14
    i32 14, label %sw.bb16
    i32 15, label %sw.bb18
    i32 16, label %sw.bb20
    i32 17, label %sw.bb22
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %call.i = tail call i32 @phy_read_mmd(ptr noundef %1, i32 noundef 30, i32 noundef 51233) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb.cleanup_crit_edge, label %if.end4

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end4:                                          ; preds = %sw.bb
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end4.cleanup_crit_edge, label %if.end6

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end6:                                          ; preds = %if.end4
  %call.i44 = tail call i32 @phy_read_mmd(ptr noundef %1, i32 noundef 30, i32 noundef 51232) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %cmp.i45 = icmp slt i32 %call.i44, 0
  br i1 %cmp.i45, label %if.end6.cleanup_crit_edge, label %if.end.i

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  %sext.i = shl i32 %call.i44, 16
  %conv1.i = ashr exact i32 %sext.i, 16
  %mul.i = mul nsw i32 %conv1.i, 1000
  %div.i = sdiv i32 %mul.i, 256
  br label %cleanup.sink.split

sw.bb8:                                           ; preds = %if.end
  %call.i47 = tail call i32 @phy_read_mmd(ptr noundef %1, i32 noundef 30, i32 noundef 50210) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %cmp.i48 = icmp slt i32 %call.i47, 0
  br i1 %cmp.i48, label %sw.bb8.cleanup_crit_edge, label %if.end.i53

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i53:                                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #5
  %sext.i49 = shl i32 %call.i47, 16
  %conv1.i50 = ashr exact i32 %sext.i49, 16
  %mul.i51 = mul nsw i32 %conv1.i50, 1000
  %div.i52 = sdiv i32 %mul.i51, 256
  br label %cleanup.sink.split

sw.bb10:                                          ; preds = %if.end
  %call.i56 = tail call i32 @phy_read_mmd(ptr noundef %1, i32 noundef 30, i32 noundef 50212) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %cmp.i57 = icmp slt i32 %call.i56, 0
  br i1 %cmp.i57, label %sw.bb10.cleanup_crit_edge, label %if.end.i62

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i62:                                       ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #5
  %sext.i58 = shl i32 %call.i56, 16
  %conv1.i59 = ashr exact i32 %sext.i58, 16
  %mul.i60 = mul nsw i32 %conv1.i59, 1000
  %div.i61 = sdiv i32 %mul.i60, 256
  br label %cleanup.sink.split

sw.bb12:                                          ; preds = %if.end
  %call.i65 = tail call i32 @phy_read_mmd(ptr noundef %1, i32 noundef 30, i32 noundef 50211) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %cmp.i66 = icmp slt i32 %call.i65, 0
  br i1 %cmp.i66, label %sw.bb12.cleanup_crit_edge, label %if.end.i71

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i71:                                       ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #5
  %sext.i67 = shl i32 %call.i65, 16
  %conv1.i68 = ashr exact i32 %sext.i67, 16
  %mul.i69 = mul nsw i32 %conv1.i68, 1000
  %div.i70 = sdiv i32 %mul.i69, 256
  br label %cleanup.sink.split

sw.bb14:                                          ; preds = %if.end
  %call.i74 = tail call i32 @phy_read_mmd(ptr noundef %1, i32 noundef 30, i32 noundef 50209) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %cmp.i75 = icmp slt i32 %call.i74, 0
  br i1 %cmp.i75, label %sw.bb14.cleanup_crit_edge, label %if.end.i80

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i80:                                       ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #5
  %sext.i76 = shl i32 %call.i74, 16
  %conv1.i77 = ashr exact i32 %sext.i76, 16
  %mul.i78 = mul nsw i32 %conv1.i77, 1000
  %div.i79 = sdiv i32 %mul.i78, 256
  br label %cleanup.sink.split

sw.bb16:                                          ; preds = %if.end
  %call.i.i = tail call i32 @phy_read_mmd(ptr noundef %1, i32 noundef 30, i32 noundef 51248) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %sw.bb16.cleanup_crit_edge, label %if.end.i83

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i83:                                       ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #5
  %and.i.i = lshr i32 %call.i.i, 13
  %and.i.i.lobit = and i32 %and.i.i, 1
  br label %cleanup.sink.split

sw.bb18:                                          ; preds = %if.end
  %call.i.i85 = tail call i32 @phy_read_mmd(ptr noundef %1, i32 noundef 30, i32 noundef 51248) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i85)
  %cmp.i.i86 = icmp slt i32 %call.i.i85, 0
  br i1 %cmp.i.i86, label %sw.bb18.cleanup_crit_edge, label %if.end.i90

sw.bb18.cleanup_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i90:                                       ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #5
  %and.i.i87 = lshr i32 %call.i.i85, 11
  %and.i.i87.lobit = and i32 %and.i.i87, 1
  br label %cleanup.sink.split

sw.bb20:                                          ; preds = %if.end
  %call.i.i93 = tail call i32 @phy_read_mmd(ptr noundef %1, i32 noundef 30, i32 noundef 51248) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i93)
  %cmp.i.i94 = icmp slt i32 %call.i.i93, 0
  br i1 %cmp.i.i94, label %sw.bb20.cleanup_crit_edge, label %if.end.i98

sw.bb20.cleanup_crit_edge:                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i98:                                       ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #5
  %and.i.i95 = lshr i32 %call.i.i93, 12
  %and.i.i95.lobit = and i32 %and.i.i95, 1
  br label %cleanup.sink.split

sw.bb22:                                          ; preds = %if.end
  %call.i.i101 = tail call i32 @phy_read_mmd(ptr noundef %1, i32 noundef 30, i32 noundef 51248) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i101)
  %cmp.i.i102 = icmp slt i32 %call.i.i101, 0
  br i1 %cmp.i.i102, label %sw.bb22.cleanup_crit_edge, label %if.end.i106

sw.bb22.cleanup_crit_edge:                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i106:                                      ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #5
  %and.i.i103 = lshr i32 %call.i.i101, 14
  %and.i.i103.lobit = and i32 %and.i.i103, 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.i106, %if.end.i98, %if.end.i90, %if.end.i83, %if.end.i80, %if.end.i71, %if.end.i62, %if.end.i53, %if.end.i
  %and.i.i103.lobit.sink = phi i32 [ %and.i.i103.lobit, %if.end.i106 ], [ %and.i.i95.lobit, %if.end.i98 ], [ %and.i.i87.lobit, %if.end.i90 ], [ %and.i.i.lobit, %if.end.i83 ], [ %div.i79, %if.end.i80 ], [ %div.i70, %if.end.i71 ], [ %div.i61, %if.end.i62 ], [ %div.i52, %if.end.i53 ], [ %div.i, %if.end.i ]
  %3 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and.i.i103.lobit.sink, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb22.cleanup_crit_edge, %sw.bb20.cleanup_crit_edge, %sw.bb18.cleanup_crit_edge, %sw.bb16.cleanup_crit_edge, %sw.bb14.cleanup_crit_edge, %sw.bb12.cleanup_crit_edge, %sw.bb10.cleanup_crit_edge, %sw.bb8.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %call.i, %sw.bb.cleanup_crit_edge ], [ -16, %if.end4.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ %call.i44, %if.end6.cleanup_crit_edge ], [ %call.i47, %sw.bb8.cleanup_crit_edge ], [ %call.i56, %sw.bb10.cleanup_crit_edge ], [ %call.i65, %sw.bb12.cleanup_crit_edge ], [ %call.i74, %sw.bb14.cleanup_crit_edge ], [ %call.i.i, %sw.bb16.cleanup_crit_edge ], [ %call.i.i85, %sw.bb18.cleanup_crit_edge ], [ %call.i.i93, %sw.bb20.cleanup_crit_edge ], [ %call.i.i101, %sw.bb22.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aqr_hwmon_write(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp.not = icmp eq i32 %type, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %attr, label %if.end.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 5, label %sw.bb2
    i32 7, label %sw.bb4
    i32 9, label %sw.bb6
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %3 = add i32 %value, -128000
  call void @__sanitizer_cov_trace_const_cmp4(i32 -256000, i32 %3)
  %4 = icmp ult i32 %3, -256000
  br i1 %4, label %sw.bb.cleanup_crit_edge, label %sw.bb.cleanup.sink.split_crit_edge

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  %5 = add i32 %value, -128000
  call void @__sanitizer_cov_trace_const_cmp4(i32 -256000, i32 %5)
  %6 = icmp ult i32 %5, -256000
  br i1 %6, label %sw.bb2.cleanup_crit_edge, label %sw.bb2.cleanup.sink.split_crit_edge

sw.bb2.cleanup.sink.split_crit_edge:              ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  %7 = add i32 %value, -128000
  call void @__sanitizer_cov_trace_const_cmp4(i32 -256000, i32 %7)
  %8 = icmp ult i32 %7, -256000
  br i1 %8, label %sw.bb4.cleanup_crit_edge, label %sw.bb4.cleanup.sink.split_crit_edge

sw.bb4.cleanup.sink.split_crit_edge:              ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  %9 = add i32 %value, -128000
  call void @__sanitizer_cov_trace_const_cmp4(i32 -256000, i32 %9)
  %10 = icmp ult i32 %9, -256000
  br i1 %10, label %sw.bb6.cleanup_crit_edge, label %sw.bb6.cleanup.sink.split_crit_edge

sw.bb6.cleanup.sink.split_crit_edge:              ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup.sink.split:                               ; preds = %sw.bb6.cleanup.sink.split_crit_edge, %sw.bb4.cleanup.sink.split_crit_edge, %sw.bb2.cleanup.sink.split_crit_edge, %sw.bb.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 50210, %sw.bb.cleanup.sink.split_crit_edge ], [ 50212, %sw.bb2.cleanup.sink.split_crit_edge ], [ 50211, %sw.bb4.cleanup.sink.split_crit_edge ], [ 50209, %sw.bb6.cleanup.sink.split_crit_edge ]
  %mul.i28 = shl nsw i32 %value, 8
  %div.i29 = sdiv i32 %mul.i28, 1000
  %conv.i30 = trunc i32 %div.i29 to i16
  %call.i31 = tail call i32 @phy_write_mmd(ptr noundef %1, i32 noundef 30, i32 noundef %.sink, i16 noundef zeroext %conv.i30) #3
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb6.cleanup_crit_edge, %sw.bb4.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -34, %sw.bb.cleanup_crit_edge ], [ -34, %sw.bb2.cleanup_crit_edge ], [ -34, %sw.bb4.cleanup_crit_edge ], [ -34, %sw.bb6.cleanup_crit_edge ], [ %call.i31, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_read_mmd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_write_mmd(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @aqr_hwmon_chip_info, !1, !"aqr_hwmon_chip_info", i1 false, i1 false}
!1 = !{!"../drivers/net/phy/aquantia_hwmon.c", i32 219, i32 37}
!2 = !{ptr @aqr_hwmon_ops, !3, !"aqr_hwmon_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/phy/aquantia_hwmon.c", i32 183, i32 31}
!4 = !{ptr @aqr_hwmon_info, !5, !"aqr_hwmon_info", i1 false, i1 false}
!5 = !{!"../drivers/net/phy/aquantia_hwmon.c", i32 213, i32 41}
!6 = !{ptr @aqr_hwmon_chip, !7, !"aqr_hwmon_chip", i1 false, i1 false}
!7 = !{!"../drivers/net/phy/aquantia_hwmon.c", i32 194, i32 40}
!8 = !{ptr @aqr_hwmon_chip_config, !9, !"aqr_hwmon_chip_config", i1 false, i1 false}
!9 = !{!"../drivers/net/phy/aquantia_hwmon.c", i32 189, i32 12}
!10 = !{ptr @aqr_hwmon_temp, !11, !"aqr_hwmon_temp", i1 false, i1 false}
!11 = !{!"../drivers/net/phy/aquantia_hwmon.c", i32 208, i32 40}
!12 = !{ptr @aqr_hwmon_temp_config, !13, !"aqr_hwmon_temp_config", i1 false, i1 false}
!13 = !{!"../drivers/net/phy/aquantia_hwmon.c", i32 199, i32 12}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
