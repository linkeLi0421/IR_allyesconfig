; ModuleID = '/llk/IR_all_yes/drivers/media/usb/pvrusb2/pvrusb2-ctrl.c_pt.bc'
source_filename = "../drivers/media/usb/pvrusb2/pvrusb2-ctrl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pvr2_ctrl = type { ptr, ptr }
%struct.pvr2_hdw = type { ptr, ptr, %struct.v4l2_device, ptr, %struct.work_struct, ptr, %struct.mutex, i32, [32 x i8], [32 x i8], %struct.i2c_adapter, %struct.i2c_algorithm, [128 x ptr], i32, i32, i32, %struct.IR_i2c_init_data, [500 x i32], i32, %struct.mutex, i32, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.completion, [64 x i8], i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_tuner, i32, %struct.v4l2_cropcap, i32, i64, i64, i64, i32, i32, %struct.pvr2_ctl_info, %struct.pvr2_ctl_info, %struct.pvr2_ctl_info, %struct.pvr2_ctl_info, [32 x ptr], [32 x [16 x i8]], i32, i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.atomic_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_cropcap = type { i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_fract }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.pvr2_ctl_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32 }
%struct.cx2341x_mpeg_params = type { i32, i32, i16, i16, i16, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i16, i32, i32, i32, i16, i32, i16, i16, i16, i16 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"true\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s%s%s\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s0x%lx\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.14 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.15 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 8, i64 43, i64 45]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4294967295]
@__sancov_gen_cov_switch_values.20 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 197, i32 17 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 521, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 524, i32 42 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 524, i32 51 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 349, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 350, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 309, i32 29 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 310, i32 16 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 310, i32 22 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private constant [44 x i8] c"../drivers/media/usb/pvrusb2/pvrusb2-ctrl.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 323, i32 28 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.11], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvr2_ctrl_set_value(ptr noundef %cptr, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pvr2_ctrl_set_mask_value(ptr noundef %cptr, i32 noundef -1, i32 noundef %val)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvr2_ctrl_set_mask_value(ptr noundef %cptr, i32 noundef %mask, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  %lim.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cptr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  %hdw = getelementptr inbounds %struct.pvr2_ctrl, ptr %cptr, i32 0, i32 1
  %0 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdw, align 4
  %big_lock_mutex = getelementptr inbounds %struct.pvr2_hdw, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %big_lock_mutex, i32 noundef 0) #6
  %2 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdw, align 4
  %big_lock_held = getelementptr inbounds %struct.pvr2_hdw, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %big_lock_held to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %big_lock_held, align 8
  %5 = ptrtoint ptr %cptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cptr, align 4
  %set_value = getelementptr inbounds %struct.pvr2_ctl_info, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %set_value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_value, align 4
  %tobool3.not = icmp eq ptr %8, null
  br i1 %tobool3.not, label %do.body.do.body33_crit_edge, label %if.then4

do.body.do.body33_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body33

if.then4:                                         ; preds = %do.body
  %type = getelementptr inbounds %struct.pvr2_ctl_info, ptr %6, i32 0, i32 13
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %if.then4.do.body33_crit_edge [
    i32 2, label %if.then6
    i32 0, label %if.then4.if.then14_crit_edge
    i32 1, label %if.then4.if.then14_crit_edge58
    i32 3, label %if.then4.if.end25_crit_edge
  ]

if.then4.if.end25_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then4.if.then14_crit_edge58:                   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

if.then4.if.then14_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

if.then4.do.body33_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body33

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %def = getelementptr inbounds %struct.pvr2_ctl_info, ptr %6, i32 0, i32 18
  %12 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %def, align 4
  %and = and i32 %13, %mask
  br label %if.end25

if.then14:                                        ; preds = %if.then4.if.then14_crit_edge, %if.then4.if.then14_crit_edge58
  %check_value.i = getelementptr inbounds %struct.pvr2_ctl_info, ptr %6, i32 0, i32 7
  %14 = ptrtoint ptr %check_value.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %check_value.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then14
  %call.i = tail call i32 %15(ptr noundef nonnull %cptr, i32 noundef %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.then.i.do.body33_crit_edge, label %if.then.i.if.end25_crit_edge

if.then.i.if.end25_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then.i.do.body33_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body33

if.else.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.i = icmp eq i32 %10, 1
  br i1 %cmp.i, label %if.then6.i, label %if.else14.i

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp7.i = icmp slt i32 %val, 0
  br i1 %cmp7.i, label %if.then6.i.do.body33_crit_edge, label %if.end9.i

if.then6.i.do.body33_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body33

if.end9.i:                                        ; preds = %if.then6.i
  %def.i = getelementptr inbounds %struct.pvr2_ctl_info, ptr %6, i32 0, i32 18
  %16 = ptrtoint ptr %def.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %def.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %val)
  %cmp11.not.i = icmp ugt i32 %17, %val
  br i1 %cmp11.not.i, label %if.end9.i.if.end25_crit_edge, label %if.end9.i.do.body33_crit_edge

if.end9.i.do.body33_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body33

if.end9.i.if.end25_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.else14.i:                                      ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lim.i) #6
  %def16.i = getelementptr inbounds %struct.pvr2_ctl_info, ptr %6, i32 0, i32 18
  %18 = ptrtoint ptr %def16.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %def16.i, align 4
  %20 = ptrtoint ptr %lim.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %lim.i, align 4
  %get_min_value.i = getelementptr inbounds %struct.pvr2_ctl_info, ptr %6, i32 0, i32 4
  %21 = ptrtoint ptr %get_min_value.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %get_min_value.i, align 4
  %tobool18.not.i = icmp eq ptr %22, null
  br i1 %tobool18.not.i, label %if.else14.i.if.end23.i_crit_edge, label %if.then19.i

if.else14.i.if.end23.i_crit_edge:                 ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i

if.then19.i:                                      ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #8
  %call22.i = call i32 %22(ptr noundef nonnull %cptr, ptr noundef nonnull %lim.i) #6
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then19.i, %if.else14.i.if.end23.i_crit_edge
  %23 = ptrtoint ptr %lim.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %lim.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %val)
  %cmp24.i = icmp sgt i32 %24, %val
  br i1 %cmp24.i, label %cleanup.thread.i, label %if.end26.i

cleanup.thread.i:                                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lim.i) #6
  br label %do.body33

if.end26.i:                                       ; preds = %if.end23.i
  %25 = ptrtoint ptr %cptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cptr, align 4
  %max_value.i = getelementptr inbounds %struct.pvr2_ctl_info, ptr %26, i32 0, i32 18, i32 0, i32 1
  %27 = ptrtoint ptr %max_value.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_value.i, align 4
  %29 = ptrtoint ptr %lim.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %lim.i, align 4
  %get_max_value.i = getelementptr inbounds %struct.pvr2_ctl_info, ptr %26, i32 0, i32 5
  %30 = ptrtoint ptr %get_max_value.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %get_max_value.i, align 4
  %tobool30.not.i = icmp eq ptr %31, null
  br i1 %tobool30.not.i, label %if.end26.i.cleanup.i_crit_edge, label %if.then31.i

if.end26.i.cleanup.i_crit_edge:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.then31.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  %call34.i = call i32 %31(ptr noundef nonnull %cptr, ptr noundef nonnull %lim.i) #6
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then31.i, %if.end26.i.cleanup.i_crit_edge
  %32 = ptrtoint ptr %lim.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %lim.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %val)
  %cmp36.not.i = icmp slt i32 %33, %val
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lim.i) #6
  br i1 %cmp36.not.i, label %cleanup.i.do.body33_crit_edge, label %cleanup.i.if.end25_crit_edge

cleanup.i.if.end25_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

cleanup.i.do.body33_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body33

if.end25:                                         ; preds = %cleanup.i.if.end25_crit_edge, %if.end9.i.if.end25_crit_edge, %if.then.i.if.end25_crit_edge, %if.then6, %if.then4.if.end25_crit_edge
  %mask.addr.0 = phi i32 [ %and, %if.then6 ], [ %mask, %if.then4.if.end25_crit_edge ], [ %mask, %if.then.i.if.end25_crit_edge ], [ %mask, %if.end9.i.if.end25_crit_edge ], [ %mask, %cleanup.i.if.end25_crit_edge ]
  %34 = ptrtoint ptr %cptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cptr, align 4
  %set_value27 = getelementptr inbounds %struct.pvr2_ctl_info, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %set_value27 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %set_value27, align 4
  %call28 = call i32 %37(ptr noundef nonnull %cptr, i32 noundef %mask.addr.0, i32 noundef %val) #6
  br label %do.body33

do.body33:                                        ; preds = %if.end25, %cleanup.i.do.body33_crit_edge, %cleanup.thread.i, %if.end9.i.do.body33_crit_edge, %if.then6.i.do.body33_crit_edge, %if.then.i.do.body33_crit_edge, %if.then4.do.body33_crit_edge, %do.body.do.body33_crit_edge
  %ret.0 = phi i32 [ %call28, %if.end25 ], [ 0, %if.then4.do.body33_crit_edge ], [ -1, %do.body.do.body33_crit_edge ], [ -34, %cleanup.i.do.body33_crit_edge ], [ -34, %if.then.i.do.body33_crit_edge ], [ -34, %if.then6.i.do.body33_crit_edge ], [ -34, %if.end9.i.do.body33_crit_edge ], [ -34, %cleanup.thread.i ]
  %38 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hdw, align 4
  %big_lock_held35 = getelementptr inbounds %struct.pvr2_hdw, ptr %39, i32 0, i32 7
  %40 = ptrtoint ptr %big_lock_held35 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %big_lock_held35, align 8
  %41 = load ptr, ptr %hdw, align 4
  %big_lock_mutex37 = getelementptr inbounds %struct.pvr2_hdw, ptr %41, i32 0, i32 6
  call void @mutex_unlock(ptr noundef %big_lock_mutex37) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body33, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %do.body33 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvr2_ctrl_get_value(ptr noundef %cptr, ptr noundef %valptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cptr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %hdw = getelementptr inbounds %struct.pvr2_ctrl, ptr %cptr, i32 0, i32 1
  %0 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdw, align 4
  %big_lock_mutex = getelementptr inbounds %struct.pvr2_hdw, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %big_lock_mutex, i32 noundef 0) #6
  %2 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdw, align 4
  %big_lock_held = getelementptr inbounds %struct.pvr2_hdw, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %big_lock_held to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %big_lock_held, align 8
  %5 = ptrtoint ptr %cptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cptr, align 4
  %get_value = getelementptr inbounds %struct.pvr2_ctl_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %get_value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_value, align 4
  %call = tail call i32 %8(ptr noundef nonnull %cptr, ptr noundef %valptr) #6
  %9 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hdw, align 4
  %big_lock_held7 = getelementptr inbounds %struct.pvr2_hdw, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %big_lock_held7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %big_lock_held7, align 8
  %12 = load ptr, ptr %hdw, align 4
  %big_lock_mutex9 = getelementptr inbounds %struct.pvr2_hdw, ptr %12, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %big_lock_mutex9) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.body ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @pvr2_ctrl_get_type(ptr noundef readonly %cptr) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cptr, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %cptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cptr, align 4
  %type = getelementptr inbounds %struct.pvr2_ctl_info, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %3, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvr2_ctrl_get_max(ptr noundef %cptr) local_unnamed_addr #0 align 64 {
entry:
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #6
  %0 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ret, align 4
  %tobool.not = icmp eq ptr %cptr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  %hdw = getelementptr inbounds %struct.pvr2_ctrl, ptr %cptr, i32 0, i32 1
  %1 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hdw, align 4
  %big_lock_mutex = getelementptr inbounds %struct.pvr2_hdw, ptr %2, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %big_lock_mutex, i32 noundef 0) #6
  %3 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hdw, align 4
  %big_lock_held = getelementptr inbounds %struct.pvr2_hdw, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %big_lock_held to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %big_lock_held, align 8
  %6 = ptrtoint ptr %cptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cptr, align 4
  %get_max_value = getelementptr inbounds %struct.pvr2_ctl_info, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %get_max_value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_max_value, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call = call i32 %9(ptr noundef nonnull %cptr, ptr noundef nonnull %ret) #6
  br label %do.body14

if.else:                                          ; preds = %do.body
  %type = getelementptr inbounds %struct.pvr2_ctl_info, ptr %7, i32 0, i32 13
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.then8, label %if.else.do.body14_crit_edge

if.else.do.body14_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %max_value = getelementptr inbounds %struct.pvr2_ctl_info, ptr %7, i32 0, i32 18, i32 0, i32 1
  %12 = ptrtoint ptr %max_value to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_value, align 4
  %14 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %ret, align 4
  br label %do.body14

do.body14:                                        ; preds = %if.then8, %if.else.do.body14_crit_edge, %if.then4
  %15 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hdw, align 4
  %big_lock_held16 = getelementptr inbounds %struct.pvr2_hdw, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %big_lock_held16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %big_lock_held16, align 8
  %18 = load ptr, ptr %hdw, align 4
  %big_lock_mutex18 = getelementptr inbounds %struct.pvr2_hdw, ptr %18, i32 0, i32 6
  call void @mutex_unlock(ptr noundef %big_lock_mutex18) #6
  %19 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %20, %do.body14 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvr2_ctrl_get_min(ptr noundef %cptr) local_unnamed_addr #0 align 64 {
entry:
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #6
  %0 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ret, align 4
  %tobool.not = icmp eq ptr %cptr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  %hdw = getelementptr inbounds %struct.pvr2_ctrl, ptr %cptr, i32 0, i32 1
  %1 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hdw, align 4
  %big_lock_mutex = getelementptr inbounds %struct.pvr2_hdw, ptr %2, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %big_lock_mutex, i32 noundef 0) #6
  %3 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hdw, align 4
  %big_lock_held = getelementptr inbounds %struct.pvr2_hdw, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %big_lock_held to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %big_lock_held, align 8
  %6 = ptrtoint ptr %cptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cptr, align 4
  %get_min_value = getelementptr inbounds %struct.pvr2_ctl_info, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %get_min_value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_min_value, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call = call i32 %9(ptr noundef nonnull %cptr, ptr noundef nonnull %ret) #6
  br label %do.body14

if.else:                                          ; preds = %do.body
  %type = getelementptr inbounds %struct.pvr2_ctl_info, ptr %7, i32 0, i32 13
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.then8, label %if.else.do.body14_crit_edge

if.else.do.body14_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %def = getelementptr inbounds %struct.pvr2_ctl_info, ptr %7, i32 0, i32 18
  %12 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %def, align 4
  %14 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %ret, align 4
  br label %do.body14

do.body14:                                        ; preds = %if.then8, %if.else.do.body14_crit_edge, %if.then4
  %15 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hdw, align 4
  %big_lock_held16 = getelementptr inbounds %struct.pvr2_hdw, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %big_lock_held16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %big_lock_held16, align 8
  %18 = load ptr, ptr %hdw, align 4
  %big_lock_mutex18 = getelementptr inbounds %struct.pvr2_hdw, ptr %18, i32 0, i32 6
  call void @mutex_unlock(ptr noundef %big_lock_mutex18) #6
  %19 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %20, %do.body14 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvr2_ctrl_get_def(ptr noundef %cptr, ptr noundef %valptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cptr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  %hdw = getelementptr inbounds %struct.pvr2_ctrl, ptr %cptr, i32 0, i32 1
  %0 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdw, align 4
  %big_lock_mutex = getelementptr inbounds %struct.pvr2_hdw, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %big_lock_mutex, i32 noundef 0) #6
  %2 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdw, align 4
  %big_lock_held = getelementptr inbounds %struct.pvr2_hdw, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %big_lock_held to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %big_lock_held, align 8
  %5 = ptrtoint ptr %cptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cptr, align 4
  %get_def_value = getelementptr inbounds %struct.pvr2_ctl_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %get_def_value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_def_value, align 4
  %tobool3.not = icmp eq ptr %8, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %8(ptr noundef nonnull %cptr, ptr noundef %valptr) #6
  br label %do.body11

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %default_value = getelementptr inbounds %struct.pvr2_ctl_info, ptr %6, i32 0, i32 17
  %9 = ptrtoint ptr %default_value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %default_value, align 4
  %11 = ptrtoint ptr %valptr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %valptr, align 4
  br label %do.body11

do.body11:                                        ; preds = %if.else, %if.then4
  %ret.0 = phi i32 [ %call, %if.then4 ], [ 0, %if.else ]
  %12 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hdw, align 4
  %big_lock_held13 = getelementptr inbounds %struct.pvr2_hdw, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %big_lock_held13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %big_lock_held13, align 8
  %15 = load ptr, ptr %hdw, align 4
  %big_lock_mutex15 = getelementptr inbounds %struct.pvr2_hdw, ptr %15, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %big_lock_mutex15) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %do.body11 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvr2_ctrl_get_cnt(ptr noundef readonly %cptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cptr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  %hdw = getelementptr inbounds %struct.pvr2_ctrl, ptr %cptr, i32 0, i32 1
  %0 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdw, align 4
  %big_lock_mutex = getelementptr inbounds %struct.pvr2_hdw, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %big_lock_mutex, i32 noundef 0) #6
  %2 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdw, align 4
  %big_lock_held = getelementptr inbounds %struct.pvr2_hdw, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %big_lock_held to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %big_lock_held, align 8
  %5 = ptrtoint ptr %cptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cptr, align 4
  %type = getelementptr inbounds %struct.pvr2_ctl_info, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %if.then3, label %do.body.do.body8_crit_edge

do.body.do.body8_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body8

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %def = getelementptr inbounds %struct.pvr2_ctl_info, ptr %6, i32 0, i32 18
  %9 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %def, align 4
  br label %do.body8

do.body8:                                         ; preds = %if.then3, %do.body.do.body8_crit_edge
  %ret.0 = phi i32 [ %10, %if.then3 ], [ 0, %do.body.do.body8_crit_edge ]
  %11 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hdw, align 4
  %big_lock_held10 = getelementptr inbounds %struct.pvr2_hdw, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %big_lock_held10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %big_lock_held10, align 8
  %14 = load ptr, ptr %hdw, align 4
  %big_lock_mutex12 = getelementptr inbounds %struct.pvr2_hdw, ptr %14, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %big_lock_mutex12) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %do.body8 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvr2_ctrl_get_mask(ptr noundef readonly %cptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cptr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  %hdw = getelementptr inbounds %struct.pvr2_ctrl, ptr %cptr, i32 0, i32 1
  %0 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdw, align 4
  %big_lock_mutex = getelementptr inbounds %struct.pvr2_hdw, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %big_lock_mutex, i32 noundef 0) #6
  %2 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdw, align 4
  %big_lock_held = getelementptr inbounds %struct.pvr2_hdw, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %big_lock_held to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %big_lock_held, align 8
  %5 = ptrtoint ptr %cptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cptr, align 4
  %type = getelementptr inbounds %struct.pvr2_ctl_info, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp = icmp eq i32 %8, 2
  br i1 %cmp, label %if.then3, label %do.body.do.body8_crit_edge

do.body.do.body8_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body8

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %def = getelementptr inbounds %struct.pvr2_ctl_info, ptr %6, i32 0, i32 18
  %9 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %def, align 4
  br label %do.body8

do.body8:                                         ; preds = %if.then3, %do.body.do.body8_crit_edge
  %ret.0 = phi i32 [ %10, %if.then3 ], [ 0, %do.body.do.body8_crit_edge ]
  %11 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hdw, align 4
  %big_lock_held10 = getelementptr inbounds %struct.pvr2_hdw, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %big_lock_held10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %big_lock_held10, align 8
  %14 = load ptr, ptr %hdw, align 4
  %big_lock_mutex12 = getelementptr inbounds %struct.pvr2_hdw, ptr %14, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %big_lock_mutex12) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %do.body8 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @pvr2_ctrl_get_name(ptr noundef readonly %cptr) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cptr, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %cptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cptr, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ %3, %if.end ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @pvr2_ctrl_get_desc(ptr noundef readonly %cptr) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cptr, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %cptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cptr, align 4
  %desc = getelementptr inbounds %struct.pvr2_ctl_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ %3, %if.end ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvr2_ctrl_get_valname(ptr noundef %cptr, i32 noundef %val, ptr noundef %bptr, i32 noundef %bmax, ptr nocapture noundef writeonly %blen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cptr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %blen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %blen, align 4
  %hdw = getelementptr inbounds %struct.pvr2_ctrl, ptr %cptr, i32 0, i32 1
  %1 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hdw, align 4
  %big_lock_mutex = getelementptr inbounds %struct.pvr2_hdw, ptr %2, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %big_lock_mutex, i32 noundef 0) #6
  %3 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hdw, align 4
  %big_lock_held = getelementptr inbounds %struct.pvr2_hdw, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %big_lock_held to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %big_lock_held, align 8
  %6 = ptrtoint ptr %cptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cptr, align 4
  %type = getelementptr inbounds %struct.pvr2_ctl_info, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %9, label %if.end.do.body34_crit_edge [
    i32 1, label %if.then3
    i32 2, label %if.then17
  ]

if.end.do.body34_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body34

if.then3:                                         ; preds = %if.end
  %value_names = getelementptr inbounds %struct.pvr2_ctl_info, ptr %7, i32 0, i32 18, i32 0, i32 1
  %11 = ptrtoint ptr %value_names to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %value_names, align 4
  %check_value.i = getelementptr inbounds %struct.pvr2_ctl_info, ptr %7, i32 0, i32 7
  %13 = ptrtoint ptr %check_value.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %check_value.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.then6.i, label %if.then.i

if.then.i:                                        ; preds = %if.then3
  %call.i = tail call i32 %14(ptr noundef nonnull %cptr, i32 noundef %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.then.i.do.body34_crit_edge, label %if.then.i.if.then6_crit_edge

if.then.i.if.then6_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

if.then.i.do.body34_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body34

if.then6.i:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp7.i = icmp slt i32 %val, 0
  br i1 %cmp7.i, label %if.then6.i.do.body34_crit_edge, label %if.end9.i

if.then6.i.do.body34_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body34

if.end9.i:                                        ; preds = %if.then6.i
  %def.i = getelementptr inbounds %struct.pvr2_ctl_info, ptr %7, i32 0, i32 18
  %15 = ptrtoint ptr %def.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %def.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %val)
  %cmp11.not.i = icmp ugt i32 %16, %val
  br i1 %cmp11.not.i, label %if.end9.i.if.then6_crit_edge, label %if.end9.i.do.body34_crit_edge

if.end9.i.do.body34_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body34

if.end9.i.if.then6_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

if.then6:                                         ; preds = %if.end9.i.if.then6_crit_edge, %if.then.i.if.then6_crit_edge
  %arrayidx = getelementptr ptr, ptr %12, i32 %val
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %tobool7.not = icmp eq ptr %18, null
  br i1 %tobool7.not, label %if.then6.do.body34.sink.split_crit_edge, label %if.then8

if.then6.do.body34.sink.split_crit_edge:          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body34.sink.split

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %bptr, i32 noundef %bmax, ptr noundef nonnull @.str, ptr noundef nonnull %18) #6
  br label %do.body34.sink.split

if.then17:                                        ; preds = %if.end
  %def20 = getelementptr inbounds %struct.pvr2_ctl_info, ptr %7, i32 0, i32 18
  %bit_names = getelementptr inbounds %struct.pvr2_ctl_info, ptr %7, i32 0, i32 18, i32 0, i32 1
  %19 = ptrtoint ptr %bit_names to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bit_names, align 4
  %21 = ptrtoint ptr %def20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %def20, align 4
  %and = and i32 %22, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %if.then17.do.body34_crit_edge, label %for.body.preheader

if.then17.do.body34_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body34

for.body.preheader:                               ; preds = %if.then17
  %and2471 = and i32 %and, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2471)
  %tobool25.not72 = icmp eq i32 %and2471, 0
  br i1 %tobool25.not72, label %for.body.preheader.for.inc_crit_edge, label %for.body.preheader.if.then26_crit_edge

for.body.preheader.if.then26_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  br label %for.inc

if.then26:                                        ; preds = %for.inc.if.then26_crit_edge, %for.body.preheader.if.then26_crit_edge
  %idx.068.lcssa = phi i32 [ 0, %for.body.preheader.if.then26_crit_edge ], [ %inc, %for.inc.if.then26_crit_edge ]
  %arrayidx27 = getelementptr ptr, ptr %20, i32 %idx.068.lcssa
  %23 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx27, align 4
  %call28 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %bptr, i32 noundef %bmax, ptr noundef nonnull @.str, ptr noundef %24) #6
  br label %do.body34.sink.split

for.inc:                                          ; preds = %for.inc.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %idx.06874 = phi i32 [ %inc, %for.inc.for.inc_crit_edge ], [ 0, %for.body.preheader.for.inc_crit_edge ]
  %msk.06973 = phi i32 [ %shl, %for.inc.for.inc_crit_edge ], [ 1, %for.body.preheader.for.inc_crit_edge ]
  %inc = add i32 %idx.06874, 1
  %shl = shl i32 %msk.06973, 1
  %and24 = and i32 %shl, %and
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %for.inc.for.inc_crit_edge, label %for.inc.if.then26_crit_edge

for.inc.if.then26_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26

for.inc.for.inc_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.body34.sink.split:                             ; preds = %if.then26, %if.then8, %if.then6.do.body34.sink.split_crit_edge
  %call28.sink = phi i32 [ %call28, %if.then26 ], [ %call10, %if.then8 ], [ 0, %if.then6.do.body34.sink.split_crit_edge ]
  %25 = ptrtoint ptr %blen to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call28.sink, ptr %blen, align 4
  br label %do.body34

do.body34:                                        ; preds = %do.body34.sink.split, %if.then17.do.body34_crit_edge, %if.end9.i.do.body34_crit_edge, %if.then6.i.do.body34_crit_edge, %if.then.i.do.body34_crit_edge, %if.end.do.body34_crit_edge
  %ret.2 = phi i32 [ -22, %if.end.do.body34_crit_edge ], [ -22, %if.then.i.do.body34_crit_edge ], [ -22, %if.then6.i.do.body34_crit_edge ], [ -22, %if.end9.i.do.body34_crit_edge ], [ -22, %if.then17.do.body34_crit_edge ], [ 0, %do.body34.sink.split ]
  %26 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hdw, align 4
  %big_lock_held36 = getelementptr inbounds %struct.pvr2_hdw, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %big_lock_held36 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %big_lock_held36, align 8
  %29 = load ptr, ptr %hdw, align 4
  %big_lock_mutex38 = getelementptr inbounds %struct.pvr2_hdw, ptr %29, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %big_lock_mutex38) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body34, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %do.body34 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @pvr2_ctrl_get_v4lid(ptr noundef readonly %cptr) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cptr, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %cptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cptr, align 4
  %v4l_id = getelementptr inbounds %struct.pvr2_ctl_info, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %v4l_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %v4l_id, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %3, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvr2_ctrl_get_v4lflags(ptr noundef %cptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cptr, align 4
  %get_v4lflags = getelementptr inbounds %struct.pvr2_ctl_info, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %get_v4lflags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_v4lflags, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %3(ptr noundef %cptr) #6
  %phi.bo = and i32 %call, -5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %flags.0 = phi i32 [ %phi.bo, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %4 = ptrtoint ptr %cptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cptr, align 4
  %set_value = getelementptr inbounds %struct.pvr2_ctl_info, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %set_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_value, align 4
  %tobool4.not = icmp eq ptr %7, null
  %masksel = select i1 %tobool4.not, i32 4, i32 0
  %flags.1 = or i32 %masksel, %flags.0
  ret i32 %flags.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @pvr2_ctrl_is_writable(ptr noundef readonly %cptr) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cptr, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %cptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cptr, align 4
  %set_value = getelementptr inbounds %struct.pvr2_ctl_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %set_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_value, align 4
  %cmp = icmp ne ptr %3, null
  %conv = zext i1 %cmp to i32
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @pvr2_ctrl_has_custom_symbols(ptr noundef readonly %cptr) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cptr, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %cptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cptr, align 4
  %val_to_sym = getelementptr inbounds %struct.pvr2_ctl_info, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %val_to_sym to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %val_to_sym, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %sym_to_val = getelementptr inbounds %struct.pvr2_ctl_info, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %sym_to_val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sym_to_val, align 4
  %tobool5.not = icmp ne ptr %5, null
  %. = zext i1 %tobool5.not to i32
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ %., %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvr2_ctrl_custom_value_to_sym(ptr noundef %cptr, i32 noundef %mask, i32 noundef %val, ptr noundef %buf, i32 noundef %maxlen, ptr noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cptr, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %cptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cptr, align 4
  %val_to_sym = getelementptr inbounds %struct.pvr2_ctl_info, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %val_to_sym to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %val_to_sym, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %3(ptr noundef nonnull %cptr, i32 noundef %mask, i32 noundef %val, ptr noundef %buf, i32 noundef %maxlen, ptr noundef %len) #6
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end3 ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvr2_ctrl_custom_sym_to_value(ptr noundef %cptr, ptr noundef %buf, i32 noundef %len, ptr noundef %maskptr, ptr noundef %valptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cptr, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %cptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cptr, align 4
  %sym_to_val = getelementptr inbounds %struct.pvr2_ctl_info, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %sym_to_val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sym_to_val, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %3(ptr noundef nonnull %cptr, ptr noundef %buf, i32 noundef %len, ptr noundef %maskptr, ptr noundef %valptr) #6
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end3 ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvr2_ctrl_sym_to_value(ptr noundef %cptr, ptr noundef %ptr, i32 noundef %len, ptr nocapture noundef writeonly %maskptr, ptr noundef %valptr) local_unnamed_addr #0 align 64 {
entry:
  %kv.i = alloca i32, align 4
  %lim.i184 = alloca i32, align 4
  %lim.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %maskptr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %maskptr, align 4
  %1 = ptrtoint ptr %valptr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %valptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp235.not = icmp eq i32 %len, 0
  br i1 %cmp235.not, label %entry.while.end_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %cnt.0236 = phi i32 [ %inc, %while.body.land.rhs_crit_edge ], [ 0, %entry.land.rhs_crit_edge ]
  %arrayidx = getelementptr i8, ptr %ptr, i32 %cnt.0236
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = add i8 %3, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -94, i8 %4)
  %5 = icmp ult i8 %4, -94
  br i1 %5, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %inc = add nuw i32 %cnt.0236, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %cnt.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %cnt.0236, %land.rhs.while.end_crit_edge ], [ %len, %while.body.while.end_crit_edge ]
  %sub = sub i32 %len, %cnt.0.lcssa
  %add.ptr = getelementptr i8, ptr %ptr, i32 %cnt.0.lcssa
  br label %while.cond7

while.cond7:                                      ; preds = %land.rhs10.while.cond7_crit_edge, %while.end
  %cnt.1 = phi i32 [ 0, %while.end ], [ %add, %land.rhs10.while.cond7_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %cnt.1)
  %exitcond241.not = icmp eq i32 %sub, %cnt.1
  br i1 %exitcond241.not, label %while.cond7.cleanup_crit_edge, label %land.rhs10

while.cond7.cleanup_crit_edge:                    ; preds = %while.cond7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.rhs10:                                       ; preds = %while.cond7
  %add = add i32 %cnt.1, 1
  %sub11 = sub i32 %sub, %add
  %arrayidx12 = getelementptr i8, ptr %add.ptr, i32 %sub11
  %6 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx12, align 1
  %8 = add i8 %7, -127
  %9 = icmp ult i8 %8, -94
  br i1 %9, label %land.rhs10.while.cond7_crit_edge, label %while.end27

land.rhs10.while.cond7_crit_edge:                 ; preds = %land.rhs10
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond7

while.end27:                                      ; preds = %land.rhs10
  %sub28 = sub i32 %sub, %cnt.1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %cnt.1)
  %tobool.not = icmp eq i32 %sub, %cnt.1
  br i1 %tobool.not, label %while.end27.cleanup_crit_edge, label %do.body

while.end27.cleanup_crit_edge:                    ; preds = %while.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %while.end27
  %hdw = getelementptr inbounds %struct.pvr2_ctrl, ptr %cptr, i32 0, i32 1
  %10 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hdw, align 4
  %big_lock_mutex = getelementptr inbounds %struct.pvr2_hdw, ptr %11, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %big_lock_mutex, i32 noundef 0) #6
  %12 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hdw, align 4
  %big_lock_held = getelementptr inbounds %struct.pvr2_hdw, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %big_lock_held to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %big_lock_held, align 8
  %15 = ptrtoint ptr %cptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cptr, align 4
  %type = getelementptr inbounds %struct.pvr2_ctl_info, ptr %16, i32 0, i32 13
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %18, label %do.body.do.body89_crit_edge [
    i32 0, label %if.then33
    i32 3, label %if.then43
    i32 1, label %if.then62
    i32 2, label %if.then77
  ]

do.body.do.body89_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body89

if.then33:                                        ; preds = %do.body
  %20 = ptrtoint ptr %valptr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %valptr, align 4
  %call13.i = tail call i32 @kstrtoint(ptr noundef %add.ptr, i32 noundef 0, ptr noundef %valptr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.then36, label %if.then33.if.end38_crit_edge

if.then33.if.end38_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then36:                                        ; preds = %if.then33
  %21 = ptrtoint ptr %valptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %valptr, align 4
  %23 = ptrtoint ptr %cptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cptr, align 4
  %check_value.i = getelementptr inbounds %struct.pvr2_ctl_info, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %check_value.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %check_value.i, align 4
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then36
  %call.i = tail call i32 %26(ptr noundef %cptr, i32 noundef %22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.then.i.if.end38_crit_edge, label %if.then.i.if.end40.i_crit_edge

if.then.i.if.end40.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40.i

if.then.i.if.end38_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.else.i:                                        ; preds = %if.then36
  %type.i = getelementptr inbounds %struct.pvr2_ctl_info, ptr %24, i32 0, i32 13
  %27 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp.i = icmp eq i32 %28, 1
  br i1 %cmp.i, label %if.then6.i, label %if.else14.i

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp7.i = icmp slt i32 %22, 0
  br i1 %cmp7.i, label %if.then6.i.if.end38_crit_edge, label %if.end9.i

if.then6.i.if.end38_crit_edge:                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.end9.i:                                        ; preds = %if.then6.i
  %def.i = getelementptr inbounds %struct.pvr2_ctl_info, ptr %24, i32 0, i32 18
  %29 = ptrtoint ptr %def.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %def.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %22)
  %cmp11.not.i = icmp ugt i32 %30, %22
  br i1 %cmp11.not.i, label %if.end9.i.if.end40.i_crit_edge, label %if.end9.i.if.end38_crit_edge

if.end9.i.if.end38_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.end9.i.if.end40.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40.i

if.else14.i:                                      ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lim.i) #6
  %def16.i = getelementptr inbounds %struct.pvr2_ctl_info, ptr %24, i32 0, i32 18
  %31 = ptrtoint ptr %def16.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %def16.i, align 4
  %33 = ptrtoint ptr %lim.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %lim.i, align 4
  %get_min_value.i = getelementptr inbounds %struct.pvr2_ctl_info, ptr %24, i32 0, i32 4
  %34 = ptrtoint ptr %get_min_value.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %get_min_value.i, align 4
  %tobool18.not.i = icmp eq ptr %35, null
  br i1 %tobool18.not.i, label %if.else14.i.if.end23.i_crit_edge, label %if.then19.i

if.else14.i.if.end23.i_crit_edge:                 ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i

if.then19.i:                                      ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #8
  %call22.i = call i32 %35(ptr noundef %cptr, ptr noundef nonnull %lim.i) #6
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then19.i, %if.else14.i.if.end23.i_crit_edge
  %36 = ptrtoint ptr %lim.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %lim.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %22)
  %cmp24.i = icmp sgt i32 %37, %22
  br i1 %cmp24.i, label %cleanup.thread.i, label %if.end26.i

cleanup.thread.i:                                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lim.i) #6
  br label %if.end38

if.end26.i:                                       ; preds = %if.end23.i
  %38 = ptrtoint ptr %cptr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cptr, align 4
  %max_value.i = getelementptr inbounds %struct.pvr2_ctl_info, ptr %39, i32 0, i32 18, i32 0, i32 1
  %40 = ptrtoint ptr %max_value.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %max_value.i, align 4
  %42 = ptrtoint ptr %lim.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %lim.i, align 4
  %get_max_value.i = getelementptr inbounds %struct.pvr2_ctl_info, ptr %39, i32 0, i32 5
  %43 = ptrtoint ptr %get_max_value.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %get_max_value.i, align 4
  %tobool30.not.i = icmp eq ptr %44, null
  br i1 %tobool30.not.i, label %if.end26.i.cleanup.i_crit_edge, label %if.then31.i

if.end26.i.cleanup.i_crit_edge:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.then31.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  %call34.i = call i32 %44(ptr noundef %cptr, ptr noundef nonnull %lim.i) #6
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then31.i, %if.end26.i.cleanup.i_crit_edge
  %45 = ptrtoint ptr %lim.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %lim.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %22)
  %cmp36.not.i = icmp slt i32 %46, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lim.i) #6
  br i1 %cmp36.not.i, label %cleanup.i.if.end38_crit_edge, label %cleanup.i.if.end40.i_crit_edge

cleanup.i.if.end40.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40.i

cleanup.i.if.end38_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.end40.i:                                       ; preds = %cleanup.i.if.end40.i_crit_edge, %if.end9.i.if.end40.i_crit_edge, %if.then.i.if.end40.i_crit_edge
  br label %if.end38

if.end38:                                         ; preds = %if.end40.i, %cleanup.i.if.end38_crit_edge, %cleanup.thread.i, %if.end9.i.if.end38_crit_edge, %if.then6.i.if.end38_crit_edge, %if.then.i.if.end38_crit_edge, %if.then33.if.end38_crit_edge
  %ret.0 = phi i32 [ -22, %if.then33.if.end38_crit_edge ], [ 0, %if.end40.i ], [ -34, %cleanup.i.if.end38_crit_edge ], [ -34, %if.then.i.if.end38_crit_edge ], [ -34, %if.then6.i.if.end38_crit_edge ], [ -34, %if.end9.i.if.end38_crit_edge ], [ -34, %cleanup.thread.i ]
  %47 = ptrtoint ptr %maskptr to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %maskptr, align 4
  br label %do.body89

if.then43:                                        ; preds = %do.body
  %48 = ptrtoint ptr %valptr to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %valptr, align 4
  %49 = zext i32 %sub28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %sub28, label %if.then43.for.inc.i.3_crit_edge [
    i32 5, label %if.end7.i
    i32 4, label %if.then43.if.end7.i.1_crit_edge
    i32 2, label %if.then43.if.end7.i.2_crit_edge
    i32 3, label %if.then43.if.end7.i.3_crit_edge
  ]

if.then43.if.end7.i.3_crit_edge:                  ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i.3

if.then43.if.end7.i.2_crit_edge:                  ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i.2

if.then43.if.end7.i.1_crit_edge:                  ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i.1

if.then43.for.inc.i.3_crit_edge:                  ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.3

if.end7.i:                                        ; preds = %if.then43
  %bcmp.i = tail call i32 @bcmp(ptr nonnull @.str.3, ptr %add.ptr, i32 %sub28) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool10.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool10.not.i, label %if.end7.i.if.end56.sink.split_crit_edge, label %if.end3.i.1

if.end7.i.if.end56.sink.split_crit_edge:          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56.sink.split

if.end3.i.1:                                      ; preds = %if.end7.i
  %50 = zext i32 %sub28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %sub28, label %if.end3.i.1.for.inc.i.3_crit_edge [
    i32 4, label %if.end3.i.1.if.end7.i.1_crit_edge
    i32 2, label %if.end3.i.1.if.end7.i.2_crit_edge
    i32 3, label %if.end3.i.1.if.end7.i.3_crit_edge
  ]

if.end3.i.1.if.end7.i.3_crit_edge:                ; preds = %if.end3.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i.3

if.end3.i.1.if.end7.i.2_crit_edge:                ; preds = %if.end3.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i.2

if.end3.i.1.if.end7.i.1_crit_edge:                ; preds = %if.end3.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i.1

if.end3.i.1.for.inc.i.3_crit_edge:                ; preds = %if.end3.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.3

if.end7.i.1:                                      ; preds = %if.end3.i.1.if.end7.i.1_crit_edge, %if.then43.if.end7.i.1_crit_edge
  %bcmp.i.1 = tail call i32 @bcmp(ptr nonnull @.str.2, ptr %add.ptr, i32 %sub28) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.1)
  %tobool10.not.i.1 = icmp eq i32 %bcmp.i.1, 0
  br i1 %tobool10.not.i.1, label %if.end7.i.1.if.end56.sink.split_crit_edge, label %if.end3.i.2

if.end7.i.1.if.end56.sink.split_crit_edge:        ; preds = %if.end7.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56.sink.split

if.end3.i.2:                                      ; preds = %if.end7.i.1
  %51 = zext i32 %sub28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %sub28, label %if.end3.i.2.for.inc.i.3_crit_edge [
    i32 2, label %if.end3.i.2.if.end7.i.2_crit_edge
    i32 3, label %if.end3.i.2.if.end7.i.3_crit_edge
  ]

if.end3.i.2.if.end7.i.3_crit_edge:                ; preds = %if.end3.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i.3

if.end3.i.2.if.end7.i.2_crit_edge:                ; preds = %if.end3.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i.2

if.end3.i.2.for.inc.i.3_crit_edge:                ; preds = %if.end3.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.3

if.end7.i.2:                                      ; preds = %if.end3.i.2.if.end7.i.2_crit_edge, %if.end3.i.1.if.end7.i.2_crit_edge, %if.then43.if.end7.i.2_crit_edge
  %bcmp.i.2 = tail call i32 @bcmp(ptr nonnull @.str.4, ptr %add.ptr, i32 %sub28) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.2)
  %tobool10.not.i.2 = icmp eq i32 %bcmp.i.2, 0
  br i1 %tobool10.not.i.2, label %if.end7.i.2.if.end56.sink.split_crit_edge, label %if.end3.i.3

if.end7.i.2.if.end56.sink.split_crit_edge:        ; preds = %if.end7.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56.sink.split

if.end3.i.3:                                      ; preds = %if.end7.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub28)
  %cmp5.not.i.3 = icmp eq i32 %sub28, 3
  br i1 %cmp5.not.i.3, label %if.end3.i.3.if.end7.i.3_crit_edge, label %if.end3.i.3.for.inc.i.3_crit_edge

if.end3.i.3.for.inc.i.3_crit_edge:                ; preds = %if.end3.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.3

if.end3.i.3.if.end7.i.3_crit_edge:                ; preds = %if.end3.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i.3

if.end7.i.3:                                      ; preds = %if.end3.i.3.if.end7.i.3_crit_edge, %if.end3.i.2.if.end7.i.3_crit_edge, %if.end3.i.1.if.end7.i.3_crit_edge, %if.then43.if.end7.i.3_crit_edge
  %bcmp.i.3 = tail call i32 @bcmp(ptr nonnull @.str.5, ptr %add.ptr, i32 %sub28) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.3)
  %tobool10.not.i.3 = icmp eq i32 %bcmp.i.3, 0
  br i1 %tobool10.not.i.3, label %if.end7.i.3.if.end56.sink.split_crit_edge, label %if.end7.i.3.for.inc.i.3_crit_edge

if.end7.i.3.for.inc.i.3_crit_edge:                ; preds = %if.end7.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.3

if.end7.i.3.if.end56.sink.split_crit_edge:        ; preds = %if.end7.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56.sink.split

for.inc.i.3:                                      ; preds = %if.end7.i.3.for.inc.i.3_crit_edge, %if.end3.i.3.for.inc.i.3_crit_edge, %if.end3.i.2.for.inc.i.3_crit_edge, %if.end3.i.1.for.inc.i.3_crit_edge, %if.then43.for.inc.i.3_crit_edge
  %call13.i158 = tail call i32 @kstrtoint(ptr noundef %add.ptr, i32 noundef 0, ptr noundef %valptr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i158)
  %tobool14.not.i159 = icmp eq i32 %call13.i158, 0
  br i1 %tobool14.not.i159, label %if.then47, label %for.inc.i.3.if.end56_crit_edge

for.inc.i.3.if.end56_crit_edge:                   ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.then47:                                        ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %valptr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %valptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool48.not = icmp ne i32 %53, 0
  %cond = zext i1 %tobool48.not to i32
  br label %if.end56.sink.split

if.end56.sink.split:                              ; preds = %if.then47, %if.end7.i.3.if.end56.sink.split_crit_edge, %if.end7.i.2.if.end56.sink.split_crit_edge, %if.end7.i.1.if.end56.sink.split_crit_edge, %if.end7.i.if.end56.sink.split_crit_edge
  %idx.030.i.lcssa.sink = phi i32 [ %cond, %if.then47 ], [ 0, %if.end7.i.if.end56.sink.split_crit_edge ], [ 1, %if.end7.i.1.if.end56.sink.split_crit_edge ], [ 0, %if.end7.i.2.if.end56.sink.split_crit_edge ], [ 1, %if.end7.i.3.if.end56.sink.split_crit_edge ]
  %retval.0.i225.ph = phi i32 [ 1, %if.then47 ], [ 0, %if.end7.i.if.end56.sink.split_crit_edge ], [ 0, %if.end7.i.1.if.end56.sink.split_crit_edge ], [ 0, %if.end7.i.2.if.end56.sink.split_crit_edge ], [ 0, %if.end7.i.3.if.end56.sink.split_crit_edge ]
  %54 = ptrtoint ptr %valptr to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %idx.030.i.lcssa.sink, ptr %valptr, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.end56.sink.split, %for.inc.i.3.if.end56_crit_edge
  %retval.0.i225 = phi i32 [ -22, %for.inc.i.3.if.end56_crit_edge ], [ %retval.0.i225.ph, %if.end56.sink.split ]
  %55 = ptrtoint ptr %maskptr to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %maskptr, align 4
  br label %do.body89

if.then62:                                        ; preds = %do.body
  %def = getelementptr inbounds %struct.pvr2_ctl_info, ptr %16, i32 0, i32 18
  %value_names = getelementptr inbounds %struct.pvr2_ctl_info, ptr %16, i32 0, i32 18, i32 0, i32 1
  %56 = ptrtoint ptr %value_names to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %value_names, align 4
  %58 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %def, align 4
  %60 = ptrtoint ptr %valptr to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %valptr, align 4
  %tobool.not.i162 = icmp eq ptr %57, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp29.not33.i = icmp eq i32 %59, 0
  %cmp29.not.i = or i1 %tobool.not.i162, %cmp29.not33.i
  br i1 %cmp29.not.i, label %if.then62.for.end.i180_crit_edge, label %if.then62.for.body.i166_crit_edge

if.then62.for.body.i166_crit_edge:                ; preds = %if.then62
  br label %for.body.i166

if.then62.for.end.i180_crit_edge:                 ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i180

for.body.i166:                                    ; preds = %for.inc.i176.for.body.i166_crit_edge, %if.then62.for.body.i166_crit_edge
  %idx.030.i163 = phi i32 [ %inc.i174, %for.inc.i176.for.body.i166_crit_edge ], [ 0, %if.then62.for.body.i166_crit_edge ]
  %arrayidx.i164 = getelementptr ptr, ptr %57, i32 %idx.030.i163
  %61 = ptrtoint ptr %arrayidx.i164 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i164, align 4
  %tobool1.not.i165 = icmp eq ptr %62, null
  br i1 %tobool1.not.i165, label %for.body.i166.for.inc.i176_crit_edge, label %if.end3.i169

for.body.i166.for.inc.i176_crit_edge:             ; preds = %for.body.i166
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i176

if.end3.i169:                                     ; preds = %for.body.i166
  %call.i167 = tail call i32 @strlen(ptr noundef nonnull %62) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i167, i32 %sub28)
  %cmp5.not.i168 = icmp eq i32 %call.i167, %sub28
  br i1 %cmp5.not.i168, label %if.end7.i172, label %if.end3.i169.for.inc.i176_crit_edge

if.end3.i169.for.inc.i176_crit_edge:              ; preds = %if.end3.i169
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i176

if.end7.i172:                                     ; preds = %if.end3.i169
  %bcmp.i170 = tail call i32 @bcmp(ptr nonnull %62, ptr %add.ptr, i32 %sub28) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i170)
  %tobool10.not.i171 = icmp eq i32 %bcmp.i170, 0
  br i1 %tobool10.not.i171, label %if.end12.i173, label %if.end7.i172.for.inc.i176_crit_edge

if.end7.i172.for.inc.i176_crit_edge:              ; preds = %if.end7.i172
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i176

if.end12.i173:                                    ; preds = %if.end7.i172
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %valptr to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %idx.030.i163, ptr %valptr, align 4
  br label %if.then69

for.inc.i176:                                     ; preds = %if.end7.i172.for.inc.i176_crit_edge, %if.end3.i169.for.inc.i176_crit_edge, %for.body.i166.for.inc.i176_crit_edge
  %inc.i174 = add nuw i32 %idx.030.i163, 1
  %exitcond.not.i175 = icmp eq i32 %inc.i174, %59
  br i1 %exitcond.not.i175, label %for.inc.i176.for.end.i180_crit_edge, label %for.inc.i176.for.body.i166_crit_edge

for.inc.i176.for.body.i166_crit_edge:             ; preds = %for.inc.i176
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i166

for.inc.i176.for.end.i180_crit_edge:              ; preds = %for.inc.i176
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i180

for.end.i180:                                     ; preds = %for.inc.i176.for.end.i180_crit_edge, %if.then62.for.end.i180_crit_edge
  %call13.i177 = tail call i32 @kstrtoint(ptr noundef %add.ptr, i32 noundef 0, ptr noundef %valptr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i177)
  %tobool14.not.i178 = icmp eq i32 %call13.i177, 0
  br i1 %tobool14.not.i178, label %select.unfold229, label %for.end.i180.if.end71_crit_edge

for.end.i180.if.end71_crit_edge:                  ; preds = %for.end.i180
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

select.unfold229:                                 ; preds = %for.end.i180
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %valptr to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pr = load i32, ptr %valptr, align 4
  br label %if.then69

if.then69:                                        ; preds = %select.unfold229, %if.end12.i173
  %65 = phi i32 [ %idx.030.i163, %if.end12.i173 ], [ %.pr, %select.unfold229 ]
  %66 = ptrtoint ptr %cptr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cptr, align 4
  %check_value.i185 = getelementptr inbounds %struct.pvr2_ctl_info, ptr %67, i32 0, i32 7
  %68 = ptrtoint ptr %check_value.i185 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %check_value.i185, align 4
  %tobool.not.i186 = icmp eq ptr %69, null
  br i1 %tobool.not.i186, label %if.else.i192, label %if.then.i189

if.then.i189:                                     ; preds = %if.then69
  %call.i187 = tail call i32 %69(ptr noundef %cptr, i32 noundef %65) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i187)
  %tobool3.not.i188 = icmp eq i32 %call.i187, 0
  br i1 %tobool3.not.i188, label %if.then.i189.if.end71_crit_edge, label %if.then.i189.if.end40.i215_crit_edge

if.then.i189.if.end40.i215_crit_edge:             ; preds = %if.then.i189
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40.i215

if.then.i189.if.end71_crit_edge:                  ; preds = %if.then.i189
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.else.i192:                                     ; preds = %if.then69
  %type.i190 = getelementptr inbounds %struct.pvr2_ctl_info, ptr %67, i32 0, i32 13
  %70 = ptrtoint ptr %type.i190 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %type.i190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %71)
  %cmp.i191 = icmp eq i32 %71, 1
  br i1 %cmp.i191, label %if.then6.i194, label %if.else14.i201

if.then6.i194:                                    ; preds = %if.else.i192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp7.i193 = icmp slt i32 %65, 0
  br i1 %cmp7.i193, label %if.then6.i194.if.end71_crit_edge, label %if.end9.i197

if.then6.i194.if.end71_crit_edge:                 ; preds = %if.then6.i194
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.end9.i197:                                     ; preds = %if.then6.i194
  %def.i195 = getelementptr inbounds %struct.pvr2_ctl_info, ptr %67, i32 0, i32 18
  %72 = ptrtoint ptr %def.i195 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %def.i195, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %65)
  %cmp11.not.i196 = icmp ugt i32 %73, %65
  br i1 %cmp11.not.i196, label %if.end9.i197.if.end40.i215_crit_edge, label %if.end9.i197.if.end71_crit_edge

if.end9.i197.if.end71_crit_edge:                  ; preds = %if.end9.i197
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.end9.i197.if.end40.i215_crit_edge:             ; preds = %if.end9.i197
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40.i215

if.else14.i201:                                   ; preds = %if.else.i192
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lim.i184) #6
  %def16.i198 = getelementptr inbounds %struct.pvr2_ctl_info, ptr %67, i32 0, i32 18
  %74 = ptrtoint ptr %def16.i198 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %def16.i198, align 4
  %76 = ptrtoint ptr %lim.i184 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %lim.i184, align 4
  %get_min_value.i199 = getelementptr inbounds %struct.pvr2_ctl_info, ptr %67, i32 0, i32 4
  %77 = ptrtoint ptr %get_min_value.i199 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %get_min_value.i199, align 4
  %tobool18.not.i200 = icmp eq ptr %78, null
  br i1 %tobool18.not.i200, label %if.else14.i201.if.end23.i205_crit_edge, label %if.then19.i203

if.else14.i201.if.end23.i205_crit_edge:           ; preds = %if.else14.i201
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i205

if.then19.i203:                                   ; preds = %if.else14.i201
  call void @__sanitizer_cov_trace_pc() #8
  %call22.i202 = call i32 %78(ptr noundef %cptr, ptr noundef nonnull %lim.i184) #6
  br label %if.end23.i205

if.end23.i205:                                    ; preds = %if.then19.i203, %if.else14.i201.if.end23.i205_crit_edge
  %79 = ptrtoint ptr %lim.i184 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %lim.i184, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %65)
  %cmp24.i204 = icmp sgt i32 %80, %65
  br i1 %cmp24.i204, label %cleanup.thread.i206, label %if.end26.i210

cleanup.thread.i206:                              ; preds = %if.end23.i205
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lim.i184) #6
  br label %if.end71

if.end26.i210:                                    ; preds = %if.end23.i205
  %81 = ptrtoint ptr %cptr to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cptr, align 4
  %max_value.i207 = getelementptr inbounds %struct.pvr2_ctl_info, ptr %82, i32 0, i32 18, i32 0, i32 1
  %83 = ptrtoint ptr %max_value.i207 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %max_value.i207, align 4
  %85 = ptrtoint ptr %lim.i184 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %lim.i184, align 4
  %get_max_value.i208 = getelementptr inbounds %struct.pvr2_ctl_info, ptr %82, i32 0, i32 5
  %86 = ptrtoint ptr %get_max_value.i208 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %get_max_value.i208, align 4
  %tobool30.not.i209 = icmp eq ptr %87, null
  br i1 %tobool30.not.i209, label %if.end26.i210.cleanup.i214_crit_edge, label %if.then31.i212

if.end26.i210.cleanup.i214_crit_edge:             ; preds = %if.end26.i210
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i214

if.then31.i212:                                   ; preds = %if.end26.i210
  call void @__sanitizer_cov_trace_pc() #8
  %call34.i211 = call i32 %87(ptr noundef %cptr, ptr noundef nonnull %lim.i184) #6
  br label %cleanup.i214

cleanup.i214:                                     ; preds = %if.then31.i212, %if.end26.i210.cleanup.i214_crit_edge
  %88 = ptrtoint ptr %lim.i184 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %lim.i184, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %65)
  %cmp36.not.i213 = icmp slt i32 %89, %65
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lim.i184) #6
  br i1 %cmp36.not.i213, label %cleanup.i214.if.end71_crit_edge, label %cleanup.i214.if.end40.i215_crit_edge

cleanup.i214.if.end40.i215_crit_edge:             ; preds = %cleanup.i214
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40.i215

cleanup.i214.if.end71_crit_edge:                  ; preds = %cleanup.i214
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.end40.i215:                                    ; preds = %cleanup.i214.if.end40.i215_crit_edge, %if.end9.i197.if.end40.i215_crit_edge, %if.then.i189.if.end40.i215_crit_edge
  br label %if.end71

if.end71:                                         ; preds = %if.end40.i215, %cleanup.i214.if.end71_crit_edge, %cleanup.thread.i206, %if.end9.i197.if.end71_crit_edge, %if.then6.i194.if.end71_crit_edge, %if.then.i189.if.end71_crit_edge, %for.end.i180.if.end71_crit_edge
  %ret.1 = phi i32 [ -22, %for.end.i180.if.end71_crit_edge ], [ 0, %if.end40.i215 ], [ -34, %cleanup.i214.if.end71_crit_edge ], [ -34, %if.then.i189.if.end71_crit_edge ], [ -34, %if.then6.i194.if.end71_crit_edge ], [ -34, %if.end9.i197.if.end71_crit_edge ], [ -34, %cleanup.thread.i206 ]
  %90 = ptrtoint ptr %maskptr to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 -1, ptr %maskptr, align 4
  br label %do.body89

if.then77:                                        ; preds = %do.body
  %def79 = getelementptr inbounds %struct.pvr2_ctl_info, ptr %16, i32 0, i32 18
  %bit_names = getelementptr inbounds %struct.pvr2_ctl_info, ptr %16, i32 0, i32 18, i32 0, i32 1
  %91 = ptrtoint ptr %bit_names to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %bit_names, align 4
  %93 = ptrtoint ptr %def79 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %def79, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %kv.i) #6
  %95 = ptrtoint ptr %kv.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 -1, ptr %kv.i, align 4, !annotation !37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub28)
  %tobool.not95.i = icmp eq i32 %sub28, 0
  br i1 %tobool.not95.i, label %if.then77.parse_tlist.exit_crit_edge, label %while.cond1.preheader.lr.ph.i

if.then77.parse_tlist.exit_crit_edge:             ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #8
  br label %parse_tlist.exit

while.cond1.preheader.lr.ph.i:                    ; preds = %if.then77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.not32.i.i = icmp eq i32 %94, 0
  br label %while.cond1.preheader.i

while.cond1.preheader.i:                          ; preds = %sw.epilog.i.while.cond1.preheader.i_crit_edge, %while.cond1.preheader.lr.ph.i
  %val.0101.i = phi i32 [ 0, %while.cond1.preheader.lr.ph.i ], [ %val.1.i, %sw.epilog.i.while.cond1.preheader.i_crit_edge ]
  %mask.099.i = phi i32 [ 0, %while.cond1.preheader.lr.ph.i ], [ %mask.1.i, %sw.epilog.i.while.cond1.preheader.i_crit_edge ]
  %ptr.addr.098.i = phi ptr [ %add.ptr, %while.cond1.preheader.lr.ph.i ], [ %add.ptr42.i, %sw.epilog.i.while.cond1.preheader.i_crit_edge ]
  %len.addr.096.i = phi i32 [ %sub28, %while.cond1.preheader.lr.ph.i ], [ %sub43.i, %sw.epilog.i.while.cond1.preheader.i_crit_edge ]
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body8.i.land.rhs.i_crit_edge, %while.cond1.preheader.i
  %cnt.089.i = phi i32 [ 0, %while.cond1.preheader.i ], [ %inc.i219, %while.body8.i.land.rhs.i_crit_edge ]
  %arrayidx.i218 = getelementptr i8, ptr %ptr.addr.098.i, i32 %cnt.089.i
  %96 = ptrtoint ptr %arrayidx.i218 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx.i218, align 1
  %98 = add i8 %97, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -94, i8 %98)
  %99 = icmp ult i8 %98, -94
  br i1 %99, label %while.body8.i, label %land.rhs.i.while.end.i_crit_edge

land.rhs.i.while.end.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.body8.i:                                    ; preds = %land.rhs.i
  %inc.i219 = add nuw i32 %cnt.089.i, 1
  %exitcond.not.i220 = icmp eq i32 %inc.i219, %len.addr.096.i
  br i1 %exitcond.not.i220, label %while.body8.i.while.end.i_crit_edge, label %while.body8.i.land.rhs.i_crit_edge

while.body8.i.land.rhs.i_crit_edge:               ; preds = %while.body8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i

while.body8.i.while.end.i_crit_edge:              ; preds = %while.body8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.end.i:                                      ; preds = %while.body8.i.while.end.i_crit_edge, %land.rhs.i.while.end.i_crit_edge
  %cnt.0.lcssa.i = phi i32 [ %cnt.089.i, %land.rhs.i.while.end.i_crit_edge ], [ %len.addr.096.i, %while.body8.i.while.end.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %ptr.addr.098.i, i32 %cnt.0.lcssa.i
  %sub.i = sub i32 %len.addr.096.i, %cnt.0.lcssa.i
  %100 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %add.ptr.i, align 1
  %102 = zext i8 %101 to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %101, label %while.end.i.if.end.i_crit_edge [
    i8 45, label %while.end.i.if.then.i222_crit_edge
    i8 43, label %while.end.i.if.then.i222_crit_edge260
  ]

while.end.i.if.then.i222_crit_edge260:            ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i222

while.end.i.if.then.i222_crit_edge:               ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i222

while.end.i.if.end.i_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i222:                                     ; preds = %while.end.i.if.then.i222_crit_edge, %while.end.i.if.then.i222_crit_edge260
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %101)
  %cmp16.i = icmp eq i8 %101, 45
  %cond.i221 = select i1 %cmp16.i, i32 -1, i32 1
  %incdec.ptr.i = getelementptr i8, ptr %add.ptr.i, i32 1
  %dec.i = add i32 %sub.i, -1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i222, %while.end.i.if.end.i_crit_edge
  %len.addr.1.i = phi i32 [ %dec.i, %if.then.i222 ], [ %sub.i, %while.end.i.if.end.i_crit_edge ]
  %ptr.addr.1.i = phi ptr [ %incdec.ptr.i, %if.then.i222 ], [ %add.ptr.i, %while.end.i.if.end.i_crit_edge ]
  %mode.0.i = phi i32 [ %cond.i221, %if.then.i222 ], [ 0, %while.end.i.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.1.i)
  %cmp1991.not.i = icmp eq i32 %len.addr.1.i, 0
  br i1 %cmp1991.not.i, label %if.end.i.parse_tlist.exit_crit_edge, label %if.end.i.while.body21.i_crit_edge

if.end.i.while.body21.i_crit_edge:                ; preds = %if.end.i
  br label %while.body21.i

if.end.i.parse_tlist.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %parse_tlist.exit

while.body21.i:                                   ; preds = %if.end33.i.while.body21.i_crit_edge, %if.end.i.while.body21.i_crit_edge
  %cnt.192.i = phi i32 [ %inc34.i, %if.end33.i.while.body21.i_crit_edge ], [ 0, %if.end.i.while.body21.i_crit_edge ]
  %arrayidx22.i = getelementptr i8, ptr %ptr.addr.1.i, i32 %cnt.192.i
  %103 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx22.i, align 1
  %105 = add i8 %104, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -94, i8 %105)
  %106 = icmp ult i8 %105, -94
  br i1 %106, label %while.body21.i.while.end35.i_crit_edge, label %if.end33.i

while.body21.i.while.end35.i_crit_edge:           ; preds = %while.body21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end35.i

if.end33.i:                                       ; preds = %while.body21.i
  %inc34.i = add nuw i32 %cnt.192.i, 1
  %exitcond113.not.i = icmp eq i32 %inc34.i, %len.addr.1.i
  br i1 %exitcond113.not.i, label %if.end33.i.while.end35.i_crit_edge, label %if.end33.i.while.body21.i_crit_edge

if.end33.i.while.body21.i_crit_edge:              ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body21.i

if.end33.i.while.end35.i_crit_edge:               ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end35.i

while.end35.i:                                    ; preds = %if.end33.i.while.end35.i_crit_edge, %while.body21.i.while.end35.i_crit_edge
  %cnt.1.lcssa.i = phi i32 [ %len.addr.1.i, %if.end33.i.while.end35.i_crit_edge ], [ %cnt.192.i, %while.body21.i.while.end35.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.1.lcssa.i)
  %tobool36.not.i = icmp eq i32 %cnt.1.lcssa.i, 0
  br i1 %tobool36.not.i, label %while.end35.i.parse_tlist.exit_crit_edge, label %if.end38.i

while.end35.i.parse_tlist.exit_crit_edge:         ; preds = %while.end35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %parse_tlist.exit

if.end38.i:                                       ; preds = %while.end35.i
  %107 = ptrtoint ptr %kv.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %kv.i, align 4
  br i1 %tobool.not32.i.i, label %if.end38.i.parse_mtoken.exit.i_crit_edge, label %if.end38.i.for.body.i.i_crit_edge

if.end38.i.for.body.i.i_crit_edge:                ; preds = %if.end38.i
  br label %for.body.i.i

if.end38.i.parse_mtoken.exit.i_crit_edge:         ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %parse_mtoken.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end38.i.for.body.i.i_crit_edge
  %msk.035.i.i = phi i32 [ %shl.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 1, %if.end38.i.for.body.i.i_crit_edge ]
  %idx.034.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end38.i.for.body.i.i_crit_edge ]
  %valid_bits.addr.033.i.i = phi i32 [ %valid_bits.addr.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %94, %if.end38.i.for.body.i.i_crit_edge ]
  %and.i.i = and i32 %valid_bits.addr.033.i.i, %msk.035.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %neg.i.i = xor i32 %msk.035.i.i, -1
  %and2.i.i = and i32 %valid_bits.addr.033.i.i, %neg.i.i
  %arrayidx.i.i = getelementptr ptr, ptr %92, i32 %idx.034.i.i
  %108 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %109, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.for.inc.i.i_crit_edge, label %if.end5.i.i

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  %call.i.i = call i32 @strlen(ptr noundef nonnull %109) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %cnt.1.lcssa.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, %cnt.1.lcssa.i
  br i1 %cmp.not.i.i, label %if.end8.i.i, label %if.end5.i.i.for.inc.i.i_crit_edge

if.end5.i.i.for.inc.i.i_crit_edge:                ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.end8.i.i:                                      ; preds = %if.end5.i.i
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %109, ptr %ptr.addr.1.i, i32 %cnt.1.lcssa.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool11.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool11.not.i.i, label %parse_mtoken.exit.thread.i, label %if.end8.i.i.for.inc.i.i_crit_edge

if.end8.i.i.for.inc.i.i_crit_edge:                ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

parse_mtoken.exit.thread.i:                       ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %110 = ptrtoint ptr %kv.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %msk.035.i.i, ptr %kv.i, align 4
  br label %if.end41.i

for.inc.i.i:                                      ; preds = %if.end8.i.i.for.inc.i.i_crit_edge, %if.end5.i.i.for.inc.i.i_crit_edge, %if.end.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %valid_bits.addr.1.i.i = phi i32 [ %and2.i.i, %if.end5.i.i.for.inc.i.i_crit_edge ], [ %and2.i.i, %if.end8.i.i.for.inc.i.i_crit_edge ], [ %and2.i.i, %if.end.i.i.for.inc.i.i_crit_edge ], [ %valid_bits.addr.033.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %inc.i.i = add i32 %idx.034.i.i, 1
  %shl.i.i = shl i32 %msk.035.i.i, 1
  %tobool.not.i.i = icmp eq i32 %valid_bits.addr.1.i.i, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i.parse_mtoken.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.parse_mtoken.exit.i_crit_edge:        ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %parse_mtoken.exit.i

parse_mtoken.exit.i:                              ; preds = %for.inc.i.i.parse_mtoken.exit.i_crit_edge, %if.end38.i.parse_mtoken.exit.i_crit_edge
  %call14.i.i = call i32 @kstrtoint(ptr noundef %ptr.addr.1.i, i32 noundef 0, ptr noundef nonnull %kv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %tobool39.not.i = icmp eq i32 %call14.i.i, 0
  br i1 %tobool39.not.i, label %parse_mtoken.exit.i.if.end41.i_crit_edge, label %parse_mtoken.exit.i.parse_tlist.exit_crit_edge

parse_mtoken.exit.i.parse_tlist.exit_crit_edge:   ; preds = %parse_mtoken.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %parse_tlist.exit

parse_mtoken.exit.i.if.end41.i_crit_edge:         ; preds = %parse_mtoken.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.i

if.end41.i:                                       ; preds = %parse_mtoken.exit.i.if.end41.i_crit_edge, %parse_mtoken.exit.thread.i
  %add.ptr42.i = getelementptr i8, ptr %ptr.addr.1.i, i32 %cnt.1.lcssa.i
  %sub43.i = sub i32 %len.addr.1.i, %cnt.1.lcssa.i
  %111 = zext i32 %mode.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %111, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %mode.0.i, label %if.end41.i.sw.epilog.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 -1, label %sw.bb44.i
    i32 1, label %sw.bb46.i
  ]

if.end41.i.sw.epilog.i_crit_edge:                 ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #8
  %112 = ptrtoint ptr %kv.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %kv.i, align 4
  %or.i = or i32 %113, %val.0101.i
  br label %sw.epilog.i

sw.bb44.i:                                        ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #8
  %114 = ptrtoint ptr %kv.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %kv.i, align 4
  %or45.i = or i32 %115, %mask.099.i
  %neg.i = xor i32 %115, -1
  %and.i = and i32 %val.0101.i, %neg.i
  br label %sw.epilog.i

sw.bb46.i:                                        ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #8
  %116 = ptrtoint ptr %kv.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %kv.i, align 4
  %or47.i = or i32 %117, %mask.099.i
  %or48.i = or i32 %117, %val.0101.i
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb46.i, %sw.bb44.i, %sw.bb.i, %if.end41.i.sw.epilog.i_crit_edge
  %mask.1.i = phi i32 [ %mask.099.i, %if.end41.i.sw.epilog.i_crit_edge ], [ %or47.i, %sw.bb46.i ], [ %or45.i, %sw.bb44.i ], [ %94, %sw.bb.i ]
  %val.1.i = phi i32 [ %val.0101.i, %if.end41.i.sw.epilog.i_crit_edge ], [ %or48.i, %sw.bb46.i ], [ %and.i, %sw.bb44.i ], [ %or.i, %sw.bb.i ]
  %tobool.not.i223 = icmp eq i32 %sub43.i, 0
  br i1 %tobool.not.i223, label %sw.epilog.i.parse_tlist.exit_crit_edge, label %sw.epilog.i.while.cond1.preheader.i_crit_edge

sw.epilog.i.while.cond1.preheader.i_crit_edge:    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond1.preheader.i

sw.epilog.i.parse_tlist.exit_crit_edge:           ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %parse_tlist.exit

parse_tlist.exit:                                 ; preds = %sw.epilog.i.parse_tlist.exit_crit_edge, %parse_mtoken.exit.i.parse_tlist.exit_crit_edge, %while.end35.i.parse_tlist.exit_crit_edge, %if.end.i.parse_tlist.exit_crit_edge, %if.then77.parse_tlist.exit_crit_edge
  %mask.0.lcssa.i = phi i32 [ 0, %if.then77.parse_tlist.exit_crit_edge ], [ %mask.1.i, %sw.epilog.i.parse_tlist.exit_crit_edge ], [ %mask.099.i, %while.end35.i.parse_tlist.exit_crit_edge ], [ %mask.099.i, %parse_mtoken.exit.i.parse_tlist.exit_crit_edge ], [ %mask.099.i, %if.end.i.parse_tlist.exit_crit_edge ]
  %val.0.lcssa.i = phi i32 [ 0, %if.then77.parse_tlist.exit_crit_edge ], [ %val.1.i, %sw.epilog.i.parse_tlist.exit_crit_edge ], [ %val.0101.i, %while.end35.i.parse_tlist.exit_crit_edge ], [ %val.0101.i, %parse_mtoken.exit.i.parse_tlist.exit_crit_edge ], [ %val.0101.i, %if.end.i.parse_tlist.exit_crit_edge ]
  %ret.0.i = phi i32 [ 0, %if.then77.parse_tlist.exit_crit_edge ], [ 0, %sw.epilog.i.parse_tlist.exit_crit_edge ], [ 0, %while.end35.i.parse_tlist.exit_crit_edge ], [ -22, %parse_mtoken.exit.i.parse_tlist.exit_crit_edge ], [ 0, %if.end.i.parse_tlist.exit_crit_edge ]
  %118 = ptrtoint ptr %maskptr to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %mask.0.lcssa.i, ptr %maskptr, align 4
  %119 = ptrtoint ptr %valptr to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %val.0.lcssa.i, ptr %valptr, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %kv.i) #6
  br label %do.body89

do.body89:                                        ; preds = %parse_tlist.exit, %if.end71, %if.end56, %if.end38, %do.body.do.body89_crit_edge
  %ret.2 = phi i32 [ %ret.0, %if.end38 ], [ %retval.0.i225, %if.end56 ], [ %ret.1, %if.end71 ], [ %ret.0.i, %parse_tlist.exit ], [ -22, %do.body.do.body89_crit_edge ]
  %120 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %hdw, align 4
  %big_lock_held91 = getelementptr inbounds %struct.pvr2_hdw, ptr %121, i32 0, i32 7
  %122 = ptrtoint ptr %big_lock_held91 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %big_lock_held91, align 8
  %123 = load ptr, ptr %hdw, align 4
  %big_lock_mutex93 = getelementptr inbounds %struct.pvr2_hdw, ptr %123, i32 0, i32 6
  call void @mutex_unlock(ptr noundef %big_lock_mutex93) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body89, %while.end27.cleanup_crit_edge, %while.cond7.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %do.body89 ], [ -22, %while.end27.cleanup_crit_edge ], [ -22, %while.cond7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvr2_ctrl_value_to_sym_internal(ptr nocapture noundef readonly %cptr, i32 noundef %mask, i32 noundef %val, ptr noundef %buf, i32 noundef %maxlen, ptr nocapture noundef writeonly %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %len, align 4
  %1 = ptrtoint ptr %cptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cptr, align 4
  %type = getelementptr inbounds %struct.pvr2_ctl_info, ptr %2, i32 0, i32 13
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %4, label %entry.if.end37_crit_edge [
    i32 0, label %if.then
    i32 3, label %if.then4
    i32 1, label %if.then10
    i32 2, label %if.then27
  ]

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %maxlen, ptr noundef nonnull @.str.1, i32 noundef %val) #6
  br label %if.end37.sink.split

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %cond = select i1 %tobool.not, ptr @.str.3, ptr @.str.2
  %call5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %maxlen, ptr noundef nonnull @.str, ptr noundef nonnull %cond) #6
  br label %if.end37.sink.split

if.then10:                                        ; preds = %entry
  %value_names = getelementptr inbounds %struct.pvr2_ctl_info, ptr %2, i32 0, i32 18, i32 0, i32 1
  %6 = ptrtoint ptr %value_names to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %value_names, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %val)
  %cmp12 = icmp sgt i32 %val, -1
  br i1 %cmp12, label %land.lhs.true, label %if.then10.if.end37_crit_edge

if.then10.if.end37_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

land.lhs.true:                                    ; preds = %if.then10
  %def = getelementptr inbounds %struct.pvr2_ctl_info, ptr %2, i32 0, i32 18
  %8 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %def, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %val)
  %cmp15 = icmp ugt i32 %9, %val
  br i1 %cmp15, label %if.then16, label %land.lhs.true.if.end37_crit_edge

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then16:                                        ; preds = %land.lhs.true
  %arrayidx = getelementptr ptr, ptr %7, i32 %val
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool17.not = icmp eq ptr %11, null
  br i1 %tobool17.not, label %if.then16.if.end37.sink.split_crit_edge, label %if.then18

if.then16.if.end37.sink.split_crit_edge:          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.sink.split

if.then18:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  %call20 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %maxlen, ptr noundef nonnull @.str, ptr noundef nonnull %11) #6
  br label %if.end37.sink.split

if.then27:                                        ; preds = %entry
  %and = and i32 %val, %mask
  %def29 = getelementptr inbounds %struct.pvr2_ctl_info, ptr %2, i32 0, i32 18
  %12 = ptrtoint ptr %def29 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %def29, align 4
  %and30 = and i32 %and, %13
  %bit_names = getelementptr inbounds %struct.pvr2_ctl_info, ptr %2, i32 0, i32 18, i32 0, i32 1
  %14 = ptrtoint ptr %bit_names to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bit_names, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool.not1.i = icmp eq i32 %and30, 0
  br i1 %tobool.not1.i, label %if.then27.if.end37.sink.split_crit_edge, label %if.then27.for.body.i_crit_edge

if.then27.for.body.i_crit_edge:                   ; preds = %if.then27
  br label %for.body.i

if.then27.if.end37.sink.split_crit_edge:          ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.sink.split

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then27.for.body.i_crit_edge
  %uc.010.i = phi i32 [ %uc.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then27.for.body.i_crit_edge ]
  %spcFl.09.i = phi i32 [ %spcFl.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then27.for.body.i_crit_edge ]
  %um.08.i = phi i32 [ %um.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then27.for.body.i_crit_edge ]
  %sm.06.i = phi i32 [ %shl.i, %for.inc.i.for.body.i_crit_edge ], [ 1, %if.then27.for.body.i_crit_edge ]
  %idx.05.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then27.for.body.i_crit_edge ]
  %len.addr.04.i = phi i32 [ %len.addr.1.i, %for.inc.i.for.body.i_crit_edge ], [ %maxlen, %if.then27.for.body.i_crit_edge ]
  %ptr.addr.03.i = phi ptr [ %ptr.addr.1.i, %for.inc.i.for.body.i_crit_edge ], [ %buf, %if.then27.for.body.i_crit_edge ]
  %msk.addr.02.i = phi i32 [ %msk.addr.1.i, %for.inc.i.for.body.i_crit_edge ], [ %and30, %if.then27.for.body.i_crit_edge ]
  %and.i = and i32 %msk.addr.02.i, %sm.06.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %neg.i = xor i32 %sm.06.i, -1
  %and2.i = and i32 %msk.addr.02.i, %neg.i
  %arrayidx.i = getelementptr ptr, ptr %15, i32 %idx.05.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %tobool3.not.i = icmp eq ptr %17, null
  br i1 %tobool3.not.i, label %if.else.i, label %cond.end.i

cond.end.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spcFl.09.i)
  %tobool5.not.i = icmp eq i32 %spcFl.09.i, 0
  %cond.i = select i1 %tobool5.not.i, ptr @.str.8, ptr @.str.7
  %call.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %ptr.addr.03.i, i32 noundef %len.addr.04.i, ptr noundef nonnull @.str.6, ptr noundef nonnull %cond.i, ptr noundef nonnull @.str.8, ptr noundef nonnull %17) #6
  %add.ptr.i = getelementptr i8, ptr %ptr.addr.03.i, i32 %call.i
  %sub.i = sub i32 %len.addr.04.i, %call.i
  %add.i = add i32 %call.i, %uc.010.i
  br label %for.inc.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %or.i = or i32 %sm.06.i, %um.08.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %cond.end.i, %for.body.i.for.inc.i_crit_edge
  %msk.addr.1.i = phi i32 [ %and2.i, %cond.end.i ], [ %and2.i, %if.else.i ], [ %msk.addr.02.i, %for.body.i.for.inc.i_crit_edge ]
  %ptr.addr.1.i = phi ptr [ %add.ptr.i, %cond.end.i ], [ %ptr.addr.03.i, %if.else.i ], [ %ptr.addr.03.i, %for.body.i.for.inc.i_crit_edge ]
  %len.addr.1.i = phi i32 [ %sub.i, %cond.end.i ], [ %len.addr.04.i, %if.else.i ], [ %len.addr.04.i, %for.body.i.for.inc.i_crit_edge ]
  %um.1.i = phi i32 [ %um.08.i, %cond.end.i ], [ %or.i, %if.else.i ], [ %um.08.i, %for.body.i.for.inc.i_crit_edge ]
  %spcFl.1.i = phi i32 [ 1, %cond.end.i ], [ %spcFl.09.i, %if.else.i ], [ %spcFl.09.i, %for.body.i.for.inc.i_crit_edge ]
  %uc.1.i = phi i32 [ %add.i, %cond.end.i ], [ %uc.010.i, %if.else.i ], [ %uc.010.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add i32 %idx.05.i, 1
  %shl.i = shl i32 %sm.06.i, 1
  %tobool.not.i = icmp eq i32 %msk.addr.1.i, 0
  br i1 %tobool.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %um.1.i)
  %tobool12.not.i = icmp eq i32 %um.1.i, 0
  br i1 %tobool12.not.i, label %for.end.i.if.end37.sink.split_crit_edge, label %if.then15.i

for.end.i.if.end37.sink.split_crit_edge:          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.sink.split

if.then15.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spcFl.1.i)
  %tobool16.not.i = icmp eq i32 %spcFl.1.i, 0
  %cond17.i = select i1 %tobool16.not.i, ptr @.str.8, ptr @.str.7
  %call18.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %ptr.addr.1.i, i32 noundef %len.addr.1.i, ptr noundef nonnull @.str.11, ptr noundef nonnull %cond17.i, i32 noundef %um.1.i) #6
  %add21.i = add i32 %call18.i, %uc.1.i
  br label %if.end37.sink.split

if.end37.sink.split:                              ; preds = %if.then15.i, %for.end.i.if.end37.sink.split_crit_edge, %if.then27.if.end37.sink.split_crit_edge, %if.then18, %if.then16.if.end37.sink.split_crit_edge, %if.then4, %if.then
  %storemerge.sink = phi i32 [ %call5, %if.then4 ], [ %call, %if.then ], [ %call20, %if.then18 ], [ 0, %if.then16.if.end37.sink.split_crit_edge ], [ %add21.i, %if.then15.i ], [ %uc.1.i, %for.end.i.if.end37.sink.split_crit_edge ], [ 0, %if.then27.if.end37.sink.split_crit_edge ]
  %ret.1.ph = phi i32 [ 0, %if.then4 ], [ 0, %if.then ], [ 0, %if.then18 ], [ 0, %if.then16.if.end37.sink.split_crit_edge ], [ -22, %if.then15.i ], [ -22, %for.end.i.if.end37.sink.split_crit_edge ], [ -22, %if.then27.if.end37.sink.split_crit_edge ]
  %18 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %storemerge.sink, ptr %len, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.end37.sink.split, %land.lhs.true.if.end37_crit_edge, %if.then10.if.end37_crit_edge, %entry.if.end37_crit_edge
  %ret.1 = phi i32 [ -22, %land.lhs.true.if.end37_crit_edge ], [ -22, %if.then10.if.end37_crit_edge ], [ -22, %entry.if.end37_crit_edge ], [ %ret.1.ph, %if.end37.sink.split ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvr2_ctrl_value_to_sym(ptr nocapture noundef readonly %cptr, i32 noundef %mask, i32 noundef %val, ptr noundef %buf, i32 noundef %maxlen, ptr nocapture noundef writeonly %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hdw = getelementptr inbounds %struct.pvr2_ctrl, ptr %cptr, i32 0, i32 1
  %0 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdw, align 4
  %big_lock_mutex = getelementptr inbounds %struct.pvr2_hdw, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %big_lock_mutex, i32 noundef 0) #6
  %2 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdw, align 4
  %big_lock_held = getelementptr inbounds %struct.pvr2_hdw, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %big_lock_held to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %big_lock_held, align 8
  %call = tail call i32 @pvr2_ctrl_value_to_sym_internal(ptr noundef %cptr, i32 noundef %mask, i32 noundef %val, ptr noundef %buf, i32 noundef %maxlen, ptr noundef %len)
  %5 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hdw, align 4
  %big_lock_held7 = getelementptr inbounds %struct.pvr2_hdw, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %big_lock_held7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %big_lock_held7, align 8
  %8 = load ptr, ptr %hdw, align 4
  %big_lock_mutex9 = getelementptr inbounds %struct.pvr2_hdw, ptr %8, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %big_lock_mutex9) #6
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-ctrl.c", i32 197, i32 17}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-ctrl.c", i32 521, i32 31}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-ctrl.c", i32 524, i32 42}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-ctrl.c", i32 524, i32 51}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-ctrl.c", i32 349, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-ctrl.c", i32 350, i32 2}
!12 = distinct !{null, !13, !"boolNames", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-ctrl.c", i32 346, i32 20}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-ctrl.c", i32 309, i32 29}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-ctrl.c", i32 310, i32 16}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-ctrl.c", i32 310, i32 22}
!20 = distinct !{null, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-ctrl.c", i32 312, i32 22}
!22 = distinct !{null, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-ctrl.c", i32 312, i32 28}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-ctrl.c", i32 323, i32 28}
!26 = distinct !{null, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-ctrl.c", i32 329, i32 28}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{!"auto-init"}
