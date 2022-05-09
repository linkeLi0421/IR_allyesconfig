; ModuleID = '/llk/IR_all_yes/drivers/hwmon/pmbus/xdpe12284.c_pt.bc'
source_filename = "../drivers/hwmon/pmbus/xdpe12284.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.pmbus_driver_info = type { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], [32 x i32], [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }

@__initcall__kmod_xdpe12284__288_166_xdpe122_driver_init6 = internal global ptr @xdpe122_driver_init, section ".initcall6.init", align 4
@xdpe122_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @xdpe122_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @xdpe122_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @xdpe122_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_xdpe122_driver_exit = internal global ptr @xdpe122_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [55 x i8] c"xdpe12284.author=Vadim Pasternak <vadimp@mellanox.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [63 x i8] c"xdpe12284.description=PMBus driver for Infineon XDPE122 family\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [45 x i8] c"xdpe12284.file=drivers/hwmon/pmbus/xdpe12284\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [22 x i8] c"xdpe12284.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns293 = internal constant [26 x i8] c"xdpe12284.import_ns=PMBUS\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xdpe12284\00", [22 x i8] zeroinitializer }, align 32
@xdpe122_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"infineon,xdpe12254\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"infineon,xdpe12284\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@xdpe122_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"xdpe12254\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"xdpe12284\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@xdpe122_info = internal global { { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, i32, [30 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }, [116 x i8] } { { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, i32, [30 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr } { i32 2, [32 x i8] zeroinitializer, [8 x i32] [i32 0, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [32 x i32] zeroinitializer, [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, <{ i32, i32, [30 x i32] }> <{ i32 62077, i32 62077, [30 x i32] zeroinitializer }>, [10 x i32] zeroinitializer, ptr null, ptr @xdpe122_read_word_data, ptr null, ptr null, ptr @xdpe122_identify, i32 0, ptr null, ptr null }, [116 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 64, i64 68]
@__sancov_gen_cov_switch_values.2 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.3 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 16]
@__sancov_gen_cov_switch_values.4 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 16]
@___asan_gen_.5 = private unnamed_addr constant [15 x i8] c"xdpe122_driver\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 157, i32 26 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 159, i32 11 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"xdpe122_of_match\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 150, i32 49 }
@___asan_gen_.14 = private unnamed_addr constant [11 x i8] c"xdpe122_id\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 142, i32 35 }
@___asan_gen_.17 = private unnamed_addr constant [13 x i8] c"xdpe122_info\00", align 1
@___asan_gen_.18 = private constant [35 x i8] c"../drivers/hwmon/pmbus/xdpe12284.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 110, i32 33 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_import_ns293, ptr @__UNIQUE_ID_license292, ptr @__exitcall_xdpe122_driver_exit, ptr @__initcall__kmod_xdpe12284__288_166_xdpe122_driver_init6, ptr @xdpe122_driver_exit, ptr @xdpe122_driver, ptr @.str, ptr @xdpe122_of_match, ptr @xdpe122_id, ptr @xdpe122_info], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xdpe122_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xdpe122_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xdpe122_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xdpe122_info to i32), i32 492, i32 608, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xdpe122_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @xdpe122_driver) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xdpe122_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @i2c_del_driver(ptr noundef nonnull @xdpe122_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xdpe122_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_kmemdup(ptr noundef %dev, ptr noundef nonnull @xdpe122_info, i32 noundef 492, i32 noundef 3264) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call1 = tail call i32 @pmbus_do_probe(ptr noundef %client, ptr noundef nonnull %call) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_do_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xdpe122_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pmbus_get_driver_info(ptr noundef %client) #3
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %entry.cleanup_crit_edge [
    i32 64, label %entry.sw.bb_crit_edge
    i32 68, label %entry.sw.bb_crit_edge170
  ]

entry.sw.bb_crit_edge170:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge170
  %conv = trunc i32 %reg to i8
  %call1 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i8 noundef zeroext %conv) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %sext = shl i32 %call1, 16
  %shr = ashr i32 %sext, 27
  %shr8162 = shl i32 %call1, 21
  %shr8 = ashr exact i32 %shr8162, 21
  %mul = mul nsw i32 %shr8, 1000
  %shl14 = shl i32 %mul, %shr
  %sub = sub nsw i32 0, %shr
  %shr16 = ashr i32 %mul, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext)
  %cmp10169 = icmp slt i32 %sext, 0
  %val.0 = select i1 %cmp10169, i32 %shr16, i32 %shl14
  %arrayidx = getelementptr %struct.pmbus_driver_info, ptr %call, i32 0, i32 3, i32 %page
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %2, label %if.end.cleanup_crit_edge [
    i32 2, label %sw.bb18
    i32 1, label %sw.bb35
    i32 3, label %sw.bb61
    i32 4, label %sw.bb87
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb18:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 499, i32 %val.0)
  %cmp19 = icmp sgt i32 %val.0, 499
  br i1 %cmp19, label %if.then21, label %sw.bb18.cleanup_crit_edge

sw.bb18.cleanup_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then21:                                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %val.0)
  %cmp23.not = icmp eq i32 %val.0, 500
  %add = add nsw i32 %val.0, -495
  %div29165 = udiv i32 %add, 10
  %phi.bo164 = add nuw nsw i32 %div29165, 1
  %cond = select i1 %cmp23.not, i32 1, i32 %phi.bo164
  br label %cleanup

sw.bb35:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 249, i32 %val.0)
  %cmp36 = icmp sgt i32 %val.0, 249
  br i1 %cmp36, label %if.then38, label %sw.bb35.cleanup_crit_edge

sw.bb35.cleanup_crit_edge:                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then38:                                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 250, i32 %val.0)
  %cmp43.not = icmp eq i32 %val.0, 250
  %add51 = add nsw i32 %val.0, -248
  %div52166 = udiv i32 %add51, 5
  %phi.bo163 = add nuw nsw i32 %div52166, 1
  %cond58 = select i1 %cmp43.not, i32 1, i32 %phi.bo163
  br label %cleanup

sw.bb61:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 199, i32 %val.0)
  %cmp62 = icmp sgt i32 %val.0, 199
  br i1 %cmp62, label %if.then64, label %sw.bb61.cleanup_crit_edge

sw.bb61.cleanup_crit_edge:                        ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then64:                                        ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %val.0)
  %cmp69.not = icmp eq i32 %val.0, 200
  %add77 = add nsw i32 %val.0, -195
  %div78167 = udiv i32 %add77, 10
  %phi.bo = add nuw nsw i32 %div78167, 1
  %cond84 = select i1 %cmp69.not, i32 1, i32 %phi.bo
  br label %cleanup

sw.bb87:                                          ; preds = %if.end
  %4 = add i32 %val.0, -200
  call void @__sanitizer_cov_trace_const_cmp4(i32 1351, i32 %4)
  %5 = icmp ult i32 %4, 1351
  br i1 %5, label %if.then92, label %sw.bb87.cleanup_crit_edge

sw.bb87.cleanup_crit_edge:                        ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then92:                                        ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #5
  %sub94 = sub nuw nsw i32 1550, %val.0
  %mul95 = mul nuw nsw i32 %sub94, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 1550, i32 %val.0)
  %cmp98.not = icmp eq i32 %val.0, 1550
  %add106 = add nuw nsw i32 %mul95, 312
  %div107168 = udiv i32 %add106, 625
  %cond113 = select i1 %cmp98.not, i32 0, i32 %div107168
  br label %cleanup

cleanup:                                          ; preds = %if.then92, %sw.bb87.cleanup_crit_edge, %if.then64, %sw.bb61.cleanup_crit_edge, %if.then38, %sw.bb35.cleanup_crit_edge, %if.then21, %sw.bb18.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond113, %if.then92 ], [ %cond84, %if.then64 ], [ %cond58, %if.then38 ], [ %cond, %if.then21 ], [ %call1, %sw.bb.cleanup_crit_edge ], [ 0, %sw.bb18.cleanup_crit_edge ], [ 0, %sw.bb35.cleanup_crit_edge ], [ 0, %sw.bb61.cleanup_crit_edge ], [ 0, %sw.bb87.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -61, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xdpe122_identify(ptr noundef %client, ptr nocapture noundef writeonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pmbus_read_byte_data(ptr noundef %client, i32 noundef 0, i8 noundef zeroext 32) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = and i32 %call, 31
  %0 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %conv, label %if.end.cleanup_crit_edge [
    i32 2, label %if.end.for.inc_crit_edge
    i32 1, label %if.end.for.inc_crit_edge28
    i32 3, label %if.end.for.inc_crit_edge29
    i32 16, label %sw.bb9
  ]

if.end.for.inc_crit_edge29:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.end.for.inc_crit_edge28:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

for.inc:                                          ; preds = %sw.bb9, %if.end.for.inc_crit_edge, %if.end.for.inc_crit_edge28, %if.end.for.inc_crit_edge29
  %.sink = phi i32 [ 4, %sw.bb9 ], [ %conv, %if.end.for.inc_crit_edge ], [ %conv, %if.end.for.inc_crit_edge28 ], [ %conv, %if.end.for.inc_crit_edge29 ]
  %arrayidx = getelementptr %struct.pmbus_driver_info, ptr %info, i32 0, i32 3, i32 0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %.sink, ptr %arrayidx, align 4
  %call.1 = tail call i32 @pmbus_read_byte_data(ptr noundef %client, i32 noundef 1, i8 noundef zeroext 32) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp1.1 = icmp slt i32 %call.1, 0
  br i1 %cmp1.1, label %for.inc.cleanup_crit_edge, label %if.end.1

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.1:                                         ; preds = %for.inc
  %conv.1 = and i32 %call.1, 31
  %2 = zext i32 %conv.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %conv.1, label %if.end.1.cleanup_crit_edge [
    i32 2, label %sw.bb.1
    i32 1, label %sw.bb3.1
    i32 3, label %sw.bb6.1
    i32 16, label %if.end.1.cleanup.sink.split_crit_edge
  ]

if.end.1.cleanup.sink.split_crit_edge:            ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb6.1:                                         ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

sw.bb3.1:                                         ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

sw.bb.1:                                          ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb.1, %sw.bb3.1, %sw.bb6.1, %if.end.1.cleanup.sink.split_crit_edge
  %.sink27 = phi i32 [ %conv.1, %sw.bb6.1 ], [ %conv.1, %sw.bb3.1 ], [ %conv.1, %sw.bb.1 ], [ 4, %if.end.1.cleanup.sink.split_crit_edge ]
  %arrayidx11.1 = getelementptr %struct.pmbus_driver_info, ptr %info, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %.sink27, ptr %arrayidx11.1, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.1.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call.1, %for.inc.cleanup_crit_edge ], [ -22, %if.end.1.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pmbus_get_driver_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_read_word_data(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_read_byte_data(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @__initcall__kmod_xdpe12284__288_166_xdpe122_driver_init6, !1, !"__initcall__kmod_xdpe12284__288_166_xdpe122_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/pmbus/xdpe12284.c", i32 166, i32 1}
!2 = !{ptr @__exitcall_xdpe122_driver_exit, !1, !"__exitcall_xdpe122_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/pmbus/xdpe12284.c", i32 168, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/pmbus/xdpe12284.c", i32 169, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/pmbus/xdpe12284.c", i32 170, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_import_ns293, !11, !"__UNIQUE_ID_import_ns293", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/pmbus/xdpe12284.c", i32 171, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/pmbus/xdpe12284.c", i32 159, i32 11}
!14 = !{ptr @xdpe122_driver, !15, !"xdpe122_driver", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/pmbus/xdpe12284.c", i32 157, i32 26}
!16 = !{ptr @xdpe122_info, !17, !"xdpe122_info", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/pmbus/xdpe12284.c", i32 110, i32 33}
!18 = !{ptr @xdpe122_of_match, !19, !"xdpe122_of_match", i1 false, i1 false}
!19 = !{!"../drivers/hwmon/pmbus/xdpe12284.c", i32 150, i32 49}
!20 = !{ptr @xdpe122_id, !21, !"xdpe122_id", i1 false, i1 false}
!21 = !{!"../drivers/hwmon/pmbus/xdpe12284.c", i32 142, i32 35}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
