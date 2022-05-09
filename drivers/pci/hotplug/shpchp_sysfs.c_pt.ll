; ModuleID = '/llk/IR_all_yes/drivers/pci/hotplug/shpchp_sysfs.c_pt.bc'
source_filename = "../drivers/pci/hotplug/shpchp_sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.controller = type { %struct.mutex, %struct.mutex, i32, i32, ptr, %struct.list_head, ptr, %struct.wait_queue_head, i8, i32, i32, i32, i32, i32, ptr, %struct.timer_list }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@dev_attr_ctrl = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_ctrl, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ctrl\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Free resources: memory\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"start = %8.8llx, length = %8.8llx\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Free resources: prefetchable memory\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Free resources: IO\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Free resources: bus numbers\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"start = %8.8x, length = %8.8x\0A\00", [33 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant [14 x i8] c"dev_attr_ctrl\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 76, i32 8 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 35, i32 33 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 40, i32 11 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 45, i32 33 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 55, i32 33 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 64, i32 33 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private constant [38 x i8] c"../drivers/pci/hotplug/shpchp_sysfs.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 71, i32 10 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @dev_attr_ctrl, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ctrl to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @shpchp_create_ctrl_files(ptr nocapture noundef readonly %ctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_dev = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 4
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_ctrl) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @shpchp_remove_ctrl_files(ptr nocapture noundef readonly %ctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_dev = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 4
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_ctrl) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_ctrl(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %subordinate = getelementptr i8, ptr %dev, i32 -124
  %0 = ptrtoint ptr %subordinate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %subordinate, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull @.str.1) #2
  %call1162 = tail call ptr @pci_bus_resource_n(ptr noundef %1, i32 noundef 0) #2
  %tobool.not163 = icmp eq ptr %call1162, null
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %tobool.not167 = phi i1 [ %tobool.not163, %entry ], [ %tobool.not, %for.inc.for.body_crit_edge ]
  %call1166 = phi ptr [ %call1162, %entry ], [ %call1, %for.inc.for.body_crit_edge ]
  %index.0165 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %len.0164 = phi i32 [ %call, %entry ], [ %len.1, %for.inc.for.body_crit_edge ]
  br i1 %tobool.not167, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %flags = getelementptr inbounds %struct.resource, ptr %call1166, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %4 = and i32 %3, 8704
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %4)
  %5 = icmp eq i32 %4, 512
  br i1 %5, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  %6 = ptrtoint ptr %call1166 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call1166, align 4
  %conv = zext i32 %7 to i64
  %end.i = getelementptr inbounds %struct.resource, ptr %call1166, i32 0, i32 1
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %7
  %add.i = add i32 %sub.i, %9
  %conv9 = zext i32 %add.i to i64
  %call10 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %len.0164, ptr noundef nonnull @.str.2, i64 noundef %conv, i64 noundef %conv9) #2
  %add11 = add i32 %call10, %len.0164
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %len.1 = phi i32 [ %add11, %if.then ], [ %len.0164, %land.lhs.true.for.inc_crit_edge ], [ %len.0164, %for.body.for.inc_crit_edge ]
  %inc = add i32 %index.0165, 1
  %call1 = tail call ptr @pci_bus_resource_n(ptr noundef %1, i32 noundef %inc) #2
  %tobool.not = icmp eq ptr %call1, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc)
  %cmp = icmp sgt i32 %inc, 3
  %10 = and i1 %cmp, %tobool.not
  br i1 %10, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %for.inc
  %call12 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %len.1, ptr noundef nonnull @.str.3) #2
  %add13 = add i32 %call12, %len.1
  %call15168 = tail call ptr @pci_bus_resource_n(ptr noundef %1, i32 noundef 0) #2
  %tobool16.not169 = icmp eq ptr %call15168, null
  br label %for.body21

for.body21:                                       ; preds = %for.inc39.for.body21_crit_edge, %for.end
  %tobool16.not173 = phi i1 [ %tobool16.not169, %for.end ], [ %tobool16.not, %for.inc39.for.body21_crit_edge ]
  %call15172 = phi ptr [ %call15168, %for.end ], [ %call15, %for.inc39.for.body21_crit_edge ]
  %index.1171 = phi i32 [ 0, %for.end ], [ %inc40, %for.inc39.for.body21_crit_edge ]
  %len.2170 = phi i32 [ %add13, %for.end ], [ %len.3, %for.inc39.for.body21_crit_edge ]
  br i1 %tobool16.not173, label %for.body21.for.inc39_crit_edge, label %land.lhs.true23

for.body21.for.inc39_crit_edge:                   ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc39

land.lhs.true23:                                  ; preds = %for.body21
  %flags24 = getelementptr inbounds %struct.resource, ptr %call15172, i32 0, i32 3
  %11 = ptrtoint ptr %flags24 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags24, align 4
  %13 = and i32 %12, 8704
  call void @__sanitizer_cov_trace_const_cmp4(i32 8704, i32 %13)
  %.not = icmp eq i32 %13, 8704
  br i1 %.not, label %if.then31, label %land.lhs.true23.for.inc39_crit_edge

land.lhs.true23.for.inc39_crit_edge:              ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc39

if.then31:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #4
  %14 = ptrtoint ptr %call15172 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call15172, align 4
  %conv33 = zext i32 %15 to i64
  %end.i154 = getelementptr inbounds %struct.resource, ptr %call15172, i32 0, i32 1
  %16 = ptrtoint ptr %end.i154 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %end.i154, align 4
  %sub.i155 = sub i32 1, %15
  %add.i156 = add i32 %sub.i155, %17
  %conv35 = zext i32 %add.i156 to i64
  %call36 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %len.2170, ptr noundef nonnull @.str.2, i64 noundef %conv33, i64 noundef %conv35) #2
  %add37 = add i32 %call36, %len.2170
  br label %for.inc39

for.inc39:                                        ; preds = %if.then31, %land.lhs.true23.for.inc39_crit_edge, %for.body21.for.inc39_crit_edge
  %len.3 = phi i32 [ %add37, %if.then31 ], [ %len.2170, %land.lhs.true23.for.inc39_crit_edge ], [ %len.2170, %for.body21.for.inc39_crit_edge ]
  %inc40 = add i32 %index.1171, 1
  %call15 = tail call ptr @pci_bus_resource_n(ptr noundef %1, i32 noundef %inc40) #2
  %tobool16.not = icmp eq ptr %call15, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc40)
  %cmp18 = icmp sgt i32 %inc40, 3
  %18 = and i1 %cmp18, %tobool16.not
  br i1 %18, label %for.end41, label %for.inc39.for.body21_crit_edge

for.inc39.for.body21_crit_edge:                   ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body21

for.end41:                                        ; preds = %for.inc39
  %call42 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %len.3, ptr noundef nonnull @.str.4) #2
  %add43 = add i32 %call42, %len.3
  %call45174 = tail call ptr @pci_bus_resource_n(ptr noundef %1, i32 noundef 0) #2
  %tobool46.not175 = icmp eq ptr %call45174, null
  br label %for.body51

for.body51:                                       ; preds = %for.inc65.for.body51_crit_edge, %for.end41
  %tobool46.not179 = phi i1 [ %tobool46.not175, %for.end41 ], [ %tobool46.not, %for.inc65.for.body51_crit_edge ]
  %call45178 = phi ptr [ %call45174, %for.end41 ], [ %call45, %for.inc65.for.body51_crit_edge ]
  %index.2177 = phi i32 [ 0, %for.end41 ], [ %inc66, %for.inc65.for.body51_crit_edge ]
  %len.4176 = phi i32 [ %add43, %for.end41 ], [ %len.5, %for.inc65.for.body51_crit_edge ]
  br i1 %tobool46.not179, label %for.body51.for.inc65_crit_edge, label %land.lhs.true53

for.body51.for.inc65_crit_edge:                   ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc65

land.lhs.true53:                                  ; preds = %for.body51
  %flags54 = getelementptr inbounds %struct.resource, ptr %call45178, i32 0, i32 3
  %19 = ptrtoint ptr %flags54 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags54, align 4
  %and55 = and i32 %20, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %land.lhs.true53.for.inc65_crit_edge, label %if.then57

land.lhs.true53.for.inc65_crit_edge:              ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc65

if.then57:                                        ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #4
  %21 = ptrtoint ptr %call45178 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %call45178, align 4
  %conv59 = zext i32 %22 to i64
  %end.i157 = getelementptr inbounds %struct.resource, ptr %call45178, i32 0, i32 1
  %23 = ptrtoint ptr %end.i157 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %end.i157, align 4
  %sub.i158 = sub i32 1, %22
  %add.i159 = add i32 %sub.i158, %24
  %conv61 = zext i32 %add.i159 to i64
  %call62 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %len.4176, ptr noundef nonnull @.str.2, i64 noundef %conv59, i64 noundef %conv61) #2
  %add63 = add i32 %call62, %len.4176
  br label %for.inc65

for.inc65:                                        ; preds = %if.then57, %land.lhs.true53.for.inc65_crit_edge, %for.body51.for.inc65_crit_edge
  %len.5 = phi i32 [ %add63, %if.then57 ], [ %len.4176, %land.lhs.true53.for.inc65_crit_edge ], [ %len.4176, %for.body51.for.inc65_crit_edge ]
  %inc66 = add i32 %index.2177, 1
  %call45 = tail call ptr @pci_bus_resource_n(ptr noundef %1, i32 noundef %inc66) #2
  %tobool46.not = icmp eq ptr %call45, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc66)
  %cmp48 = icmp sgt i32 %inc66, 3
  %25 = and i1 %cmp48, %tobool46.not
  br i1 %25, label %for.end67, label %for.inc65.for.body51_crit_edge

for.inc65.for.body51_crit_edge:                   ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body51

for.end67:                                        ; preds = %for.inc65
  %call68 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %len.5, ptr noundef nonnull @.str.5) #2
  %add69 = add i32 %call68, %len.5
  %busn_res = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 8
  %26 = ptrtoint ptr %busn_res to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %busn_res, align 8
  %domain_nr.i = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 16
  %end = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 8, i32 1
  %28 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp73.not180 = icmp ugt i32 %27, %29
  br i1 %cmp73.not180, label %for.end67.for.end83_crit_edge, label %for.end67.for.body75_crit_edge

for.end67.for.body75_crit_edge:                   ; preds = %for.end67
  br label %for.body75

for.end67.for.end83_crit_edge:                    ; preds = %for.end67
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end83

for.body75:                                       ; preds = %for.inc81.for.body75_crit_edge, %for.end67.for.body75_crit_edge
  %busnr.0181 = phi i32 [ %inc82, %for.inc81.for.body75_crit_edge ], [ %27, %for.end67.for.body75_crit_edge ]
  %30 = ptrtoint ptr %domain_nr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %domain_nr.i, align 8
  %call77 = tail call ptr @pci_find_bus(i32 noundef %31, i32 noundef %busnr.0181) #2
  %tobool78.not = icmp eq ptr %call77, null
  br i1 %tobool78.not, label %for.body75.for.end83_crit_edge, label %for.inc81

for.body75.for.end83_crit_edge:                   ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end83

for.inc81:                                        ; preds = %for.body75
  %inc82 = add i32 %busnr.0181, 1
  %32 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %end, align 4
  %cmp73.not = icmp ugt i32 %inc82, %33
  br i1 %cmp73.not, label %for.inc81.for.end83_crit_edge, label %for.inc81.for.body75_crit_edge

for.inc81.for.body75_crit_edge:                   ; preds = %for.inc81
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body75

for.inc81.for.end83_crit_edge:                    ; preds = %for.inc81
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end83

for.end83:                                        ; preds = %for.inc81.for.end83_crit_edge, %for.body75.for.end83_crit_edge, %for.end67.for.end83_crit_edge
  %busnr.0.lcssa = phi i32 [ %27, %for.end67.for.end83_crit_edge ], [ %busnr.0181, %for.body75.for.end83_crit_edge ], [ %inc82, %for.inc81.for.end83_crit_edge ]
  %34 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %busnr.0.lcssa)
  %cmp86 = icmp ugt i32 %35, %busnr.0.lcssa
  br i1 %cmp86, label %if.then88, label %for.end83.if.end93_crit_edge

for.end83.if.end93_crit_edge:                     ; preds = %for.end83
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end93

if.then88:                                        ; preds = %for.end83
  call void @__sanitizer_cov_trace_pc() #4
  %sub = sub i32 %35, %busnr.0.lcssa
  %call91 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %add69, ptr noundef nonnull @.str.6, i32 noundef %busnr.0.lcssa, i32 noundef %sub) #2
  %add92 = add i32 %call91, %add69
  br label %if.end93

if.end93:                                         ; preds = %if.then88, %for.end83.if.end93_crit_edge
  %len.6 = phi i32 [ %add92, %if.then88 ], [ %add69, %for.end83.if.end93_crit_edge ]
  ret i32 %len.6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit_at(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_bus_resource_n(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_find_bus(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pci/hotplug/shpchp_sysfs.c", i32 76, i32 8}
!2 = !{ptr @dev_attr_ctrl, !1, !"dev_attr_ctrl", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/pci/hotplug/shpchp_sysfs.c", i32 35, i32 33}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/pci/hotplug/shpchp_sysfs.c", i32 40, i32 11}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/pci/hotplug/shpchp_sysfs.c", i32 45, i32 33}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/pci/hotplug/shpchp_sysfs.c", i32 55, i32 33}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/pci/hotplug/shpchp_sysfs.c", i32 64, i32 33}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/pci/hotplug/shpchp_sysfs.c", i32 71, i32 10}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
