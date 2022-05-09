; ModuleID = '/llk/IR_all_yes/drivers/w1/slaves/w1_ds2406.c_pt.bc'
source_filename = "../drivers/w1/slaves/w1_ds2406.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.w1_family = type { %struct.list_head, i8, ptr, ptr, %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.w1_family_ops = type { ptr, ptr, ptr, ptr }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.w1_slave = type { ptr, [32 x i8], %struct.list_head, %struct.w1_reg_num, %struct.atomic_t, i32, i32, ptr, ptr, ptr, %struct.device, ptr }
%struct.w1_reg_num = type { i64 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.w1_master = type { %struct.list_head, ptr, [32 x i8], %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i64, %struct.atomic_t, ptr, i32, i32, i32, ptr, %struct.mutex, %struct.mutex, ptr, %struct.device, ptr, i32 }

@__initcall__kmod_w1_ds2406__183_150_w1_family_12_init6 = internal global ptr @w1_family_12_init, section ".initcall6.init", align 4
@w1_family_12 = internal global { %struct.w1_family, [40 x i8] } { %struct.w1_family { %struct.list_head zeroinitializer, i8 18, ptr @w1_f12_fops, ptr null, %struct.atomic_t zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@__exitcall_w1_family_12_exit = internal global ptr @w1_family_12_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author184 = internal constant [48 x i8] c"w1_ds2406.author=Scott Alfter <scott@alfter.us>\00", section ".modinfo", align 1
@__UNIQUE_ID_description185 = internal constant [62 x i8] c"w1_ds2406.description=w1 family 12 driver for DS2406 2 Pin IO\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [43 x i8] c"w1_ds2406.file=drivers/w1/slaves/w1_ds2406\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [22 x i8] c"w1_ds2406.license=GPL\00", section ".modinfo", align 1
@w1_f12_fops = internal constant { %struct.w1_family_ops, [16 x i8] } { %struct.w1_family_ops { ptr @w1_f12_add_slave, ptr @w1_f12_remove_slave, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@w1_f12_sysfs_bin_files = internal global { [2 x %struct.bin_attribute], [40 x i8] } { [2 x %struct.bin_attribute] [%struct.bin_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 1, ptr null, ptr null, ptr @w1_f12_read_state, ptr null, ptr null }, %struct.bin_attribute { %struct.attribute { ptr @.str.1, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 1, ptr null, ptr null, ptr null, ptr @w1_f12_write_output, ptr null }], [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"state\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"output\00", [25 x i8] zeroinitializer }, align 32
@__const.w1_f12_read_state.w1_buf = private unnamed_addr constant [6 x i8] c"\AA\07\00\00\00\00", align 1
@crc16_table = external dso_local local_unnamed_addr constant [256 x i16], align 2
@__const.w1_f12_write_output.w1_buf = private unnamed_addr constant [6 x i8] c"U\07\00\00\00\00", align 1
@___asan_gen_.2 = private unnamed_addr constant [13 x i8] c"w1_family_12\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 146, i32 25 }
@___asan_gen_.5 = private unnamed_addr constant [12 x i8] c"w1_f12_fops\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 141, i32 35 }
@___asan_gen_.8 = private unnamed_addr constant [23 x i8] c"w1_f12_sysfs_bin_files\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 98, i32 29 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 101, i32 12 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.15 = private constant [33 x i8] c"../drivers/w1/slaves/w1_ds2406.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 109, i32 12 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_author184, ptr @__UNIQUE_ID_description185, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_w1_family_12_exit, ptr @__initcall__kmod_w1_ds2406__183_150_w1_family_12_init6, ptr @w1_family_12_exit, ptr @w1_family_12, ptr @w1_f12_fops, ptr @w1_f12_sysfs_bin_files, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_family_12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_f12_fops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_f12_sysfs_bin_files to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_family_12_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @w1_register_family(ptr noundef nonnull @w1_family_12) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @w1_family_12_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @w1_unregister_family(ptr noundef nonnull @w1_family_12) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_unregister_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_register_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_f12_add_slave(ptr noundef %sl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10
  %call = tail call i32 @sysfs_create_bin_file(ptr noundef %dev, ptr noundef nonnull @w1_f12_sysfs_bin_files) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.1, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.1:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call.1 = tail call i32 @sysfs_create_bin_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([2 x %struct.bin_attribute], ptr @w1_f12_sysfs_bin_files, i32 0, i32 1)) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br label %for.end

for.end:                                          ; preds = %for.body.1, %entry.for.end_crit_edge
  %i.013.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ 1, %for.body.1 ]
  %call.lcssa = phi i32 [ %call, %entry.for.end_crit_edge ], [ %call.1, %for.body.1 ]
  %tobool.not.lcssa = phi i1 [ %tobool.not, %entry.for.end_crit_edge ], [ %tobool.not.1, %for.body.1 ]
  br i1 %tobool.not.lcssa, label %for.end.if.end_crit_edge, label %while.body

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

while.body:                                       ; preds = %for.end
  %arrayidx5 = getelementptr [2 x %struct.bin_attribute], ptr @w1_f12_sysfs_bin_files, i32 0, i32 %i.013.lcssa
  tail call void @sysfs_remove_bin_file(ptr noundef %dev, ptr noundef %arrayidx5) #4
  br i1 %tobool.not, label %while.body.1, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

while.body.1:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %dec = add nsw i32 %i.013.lcssa, -1
  %arrayidx5.1 = getelementptr [2 x %struct.bin_attribute], ptr @w1_f12_sysfs_bin_files, i32 0, i32 %dec
  tail call void @sysfs_remove_bin_file(ptr noundef %dev, ptr noundef %arrayidx5.1) #4
  br label %if.end

if.end:                                           ; preds = %while.body.1, %while.body.if.end_crit_edge, %for.end.if.end_crit_edge
  ret i32 %call.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @w1_f12_remove_slave(ptr noundef %sl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10
  tail call void @sysfs_remove_bin_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([2 x %struct.bin_attribute], ptr @w1_f12_sysfs_bin_files, i32 0, i32 1)) #4
  tail call void @sysfs_remove_bin_file(ptr noundef %dev, ptr noundef nonnull @w1_f12_sysfs_bin_files) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_f12_read_state(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef writeonly %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  %w1_buf = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %w1_buf) #4
  %0 = call ptr @memcpy(ptr %w1_buf, ptr @__const.w1_f12_read_state.w1_buf, i32 6)
  %add.ptr.i.i = getelementptr i8, ptr %kobj, i32 -80
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp.not = icmp eq i64 %off, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %master = getelementptr i8, ptr %kobj, i32 -12
  %1 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %master, align 4
  %bus_mutex = getelementptr inbounds %struct.w1_master, ptr %2, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex, i32 noundef 0) #4
  %call3 = tail call i32 @w1_reset_select_slave(ptr noundef %add.ptr.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  %3 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %master, align 4
  br i1 %tobool4.not, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #6
  %bus_mutex7 = getelementptr inbounds %struct.w1_master, ptr %4, i32 0, i32 21
  tail call void @mutex_unlock(ptr noundef %bus_mutex7) #4
  br label %cleanup

if.end8:                                          ; preds = %if.end2
  call void @w1_write_block(ptr noundef %4, ptr noundef nonnull %w1_buf, i32 noundef 3) #4
  %5 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %master, align 4
  %add.ptr = getelementptr inbounds i8, ptr %w1_buf, i32 3
  %call12 = call zeroext i8 @w1_read_block(ptr noundef %6, ptr noundef %add.ptr, i32 noundef 3) #4
  %7 = ptrtoint ptr %w1_buf to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %w1_buf, align 1
  %conv2.i = zext i8 %8 to i32
  %arrayidx.i = getelementptr [256 x i16], ptr @crc16_table, i32 0, i32 %conv2.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx.i, align 2
  %arrayidx.1 = getelementptr inbounds [6 x i8], ptr %w1_buf, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.1, align 1
  %13 = lshr i16 %10, 8
  %conv2.i.1 = zext i8 %12 to i32
  %14 = and i16 %10, 255
  %conv.masked.i.1 = zext i16 %14 to i32
  %and.i.1 = xor i32 %conv2.i.1, %conv.masked.i.1
  %arrayidx.i.1 = getelementptr [256 x i16], ptr @crc16_table, i32 0, i32 %and.i.1
  %15 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx.i.1, align 2
  %arrayidx.2 = getelementptr inbounds [6 x i8], ptr %w1_buf, i32 0, i32 2
  %17 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.2, align 1
  %19 = lshr i16 %16, 8
  %conv2.i.2 = zext i8 %18 to i32
  %.masked = and i16 %16, 255
  %20 = xor i16 %.masked, %13
  %conv.masked.i.2 = zext i16 %20 to i32
  %and.i.2 = xor i32 %conv2.i.2, %conv.masked.i.2
  %arrayidx.i.2 = getelementptr [256 x i16], ptr @crc16_table, i32 0, i32 %and.i.2
  %21 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx.i.2, align 2
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %add.ptr, align 1
  %25 = lshr i16 %22, 8
  %conv2.i.3 = zext i8 %24 to i32
  %.masked39 = and i16 %22, 255
  %26 = xor i16 %.masked39, %19
  %conv.masked.i.3 = zext i16 %26 to i32
  %and.i.3 = xor i32 %conv2.i.3, %conv.masked.i.3
  %arrayidx.i.3 = getelementptr [256 x i16], ptr @crc16_table, i32 0, i32 %and.i.3
  %27 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx.i.3, align 2
  %arrayidx.4 = getelementptr inbounds [6 x i8], ptr %w1_buf, i32 0, i32 4
  %29 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.4, align 1
  %31 = lshr i16 %28, 8
  %conv2.i.4 = zext i8 %30 to i32
  %.masked40 = and i16 %28, 255
  %32 = xor i16 %.masked40, %25
  %conv.masked.i.4 = zext i16 %32 to i32
  %and.i.4 = xor i32 %conv2.i.4, %conv.masked.i.4
  %arrayidx.i.4 = getelementptr [256 x i16], ptr @crc16_table, i32 0, i32 %and.i.4
  %33 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx.i.4, align 2
  %arrayidx.5 = getelementptr inbounds [6 x i8], ptr %w1_buf, i32 0, i32 5
  %35 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.5, align 1
  %37 = lshr i16 %34, 8
  %conv2.i.5 = zext i8 %36 to i32
  %.masked41 = and i16 %34, 255
  %38 = xor i16 %.masked41, %31
  %conv.masked.i.5 = zext i16 %38 to i32
  %and.i.5 = xor i32 %conv2.i.5, %conv.masked.i.5
  %arrayidx.i.5 = getelementptr [256 x i16], ptr @crc16_table, i32 0, i32 %and.i.5
  %39 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx.i.5, align 2
  %xor4.i.5 = xor i16 %40, %37
  call void @__sanitizer_cov_trace_const_cmp2(i16 -20479, i16 %xor4.i.5)
  %cmp15 = icmp eq i16 %xor4.i.5, -20479
  br i1 %cmp15, label %if.then17, label %if.end8.if.end21_crit_edge

if.end8.if.end21_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

if.then17:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %41 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %add.ptr, align 1
  %43 = lshr i8 %42, 5
  %44 = and i8 %43, 3
  %45 = or i8 %44, 48
  %46 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %buf, align 1
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end8.if.end21_crit_edge
  %rtnval.0 = phi i32 [ 1, %if.then17 ], [ -5, %if.end8.if.end21_crit_edge ]
  %47 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %master, align 4
  %bus_mutex23 = getelementptr inbounds %struct.w1_master, ptr %48, i32 0, i32 21
  call void @mutex_unlock(ptr noundef %bus_mutex23) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then5 ], [ %rtnval.0, %if.end21 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %w1_buf) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_f12_write_output(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr nocapture noundef readonly %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  %w1_buf = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %w1_buf) #4
  %0 = call ptr @memcpy(ptr %w1_buf, ptr @__const.w1_f12_write_output.w1_buf, i32 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp.not = icmp eq i32 %count, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp1.not = icmp eq i64 %off, 0
  %or.cond = and i1 %cmp1.not, %cmp.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %kobj, i32 -80
  %master = getelementptr i8, ptr %kobj, i32 -12
  %1 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %master, align 4
  %bus_mutex = getelementptr inbounds %struct.w1_master, ptr %2, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex, i32 noundef 0) #4
  %call2 = tail call i32 @w1_reset_select_slave(ptr noundef %add.ptr.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %master, align 4
  %bus_mutex5 = getelementptr inbounds %struct.w1_master, ptr %4, i32 0, i32 21
  tail call void @mutex_unlock(ptr noundef %bus_mutex5) #4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buf, align 1
  %7 = shl i8 %6, 5
  %8 = and i8 %7, 96
  %9 = or i8 %8, 31
  %arrayidx = getelementptr inbounds [6 x i8], ptr %w1_buf, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %arrayidx, align 1
  %11 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %12, ptr noundef nonnull %w1_buf, i32 noundef 4) #4
  %13 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %master, align 4
  %add.ptr = getelementptr inbounds i8, ptr %w1_buf, i32 4
  %call11 = call zeroext i8 @w1_read_block(ptr noundef %14, ptr noundef %add.ptr, i32 noundef 2) #4
  %15 = ptrtoint ptr %w1_buf to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %w1_buf, align 1
  %conv2.i = zext i8 %16 to i32
  %arrayidx.i = getelementptr [256 x i16], ptr @crc16_table, i32 0, i32 %conv2.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx.i, align 2
  %arrayidx14.1 = getelementptr inbounds [6 x i8], ptr %w1_buf, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx14.1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx14.1, align 1
  %21 = lshr i16 %18, 8
  %conv2.i.1 = zext i8 %20 to i32
  %22 = and i16 %18, 255
  %conv.masked.i.1 = zext i16 %22 to i32
  %and.i.1 = xor i32 %conv2.i.1, %conv.masked.i.1
  %arrayidx.i.1 = getelementptr [256 x i16], ptr @crc16_table, i32 0, i32 %and.i.1
  %23 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx.i.1, align 2
  %arrayidx14.2 = getelementptr inbounds [6 x i8], ptr %w1_buf, i32 0, i32 2
  %25 = ptrtoint ptr %arrayidx14.2 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx14.2, align 1
  %27 = lshr i16 %24, 8
  %conv2.i.2 = zext i8 %26 to i32
  %.masked = and i16 %24, 255
  %28 = xor i16 %.masked, %21
  %conv.masked.i.2 = zext i16 %28 to i32
  %and.i.2 = xor i32 %conv2.i.2, %conv.masked.i.2
  %arrayidx.i.2 = getelementptr [256 x i16], ptr @crc16_table, i32 0, i32 %and.i.2
  %29 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx.i.2, align 2
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx, align 1
  %33 = lshr i16 %30, 8
  %conv2.i.3 = zext i8 %32 to i32
  %.masked39 = and i16 %30, 255
  %34 = xor i16 %.masked39, %27
  %conv.masked.i.3 = zext i16 %34 to i32
  %and.i.3 = xor i32 %conv2.i.3, %conv.masked.i.3
  %arrayidx.i.3 = getelementptr [256 x i16], ptr @crc16_table, i32 0, i32 %and.i.3
  %35 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx.i.3, align 2
  %37 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %add.ptr, align 1
  %39 = lshr i16 %36, 8
  %conv2.i.4 = zext i8 %38 to i32
  %.masked40 = and i16 %36, 255
  %40 = xor i16 %.masked40, %33
  %conv.masked.i.4 = zext i16 %40 to i32
  %and.i.4 = xor i32 %conv2.i.4, %conv.masked.i.4
  %arrayidx.i.4 = getelementptr [256 x i16], ptr @crc16_table, i32 0, i32 %and.i.4
  %41 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx.i.4, align 2
  %arrayidx14.5 = getelementptr inbounds [6 x i8], ptr %w1_buf, i32 0, i32 5
  %43 = ptrtoint ptr %arrayidx14.5 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx14.5, align 1
  %45 = lshr i16 %42, 8
  %conv2.i.5 = zext i8 %44 to i32
  %.masked41 = and i16 %42, 255
  %46 = xor i16 %.masked41, %39
  %conv.masked.i.5 = zext i16 %46 to i32
  %and.i.5 = xor i32 %conv2.i.5, %conv.masked.i.5
  %arrayidx.i.5 = getelementptr [256 x i16], ptr @crc16_table, i32 0, i32 %and.i.5
  %47 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx.i.5, align 2
  %xor4.i.5 = xor i16 %48, %45
  call void @__sanitizer_cov_trace_const_cmp2(i16 -20479, i16 %xor4.i.5)
  %cmp17 = icmp eq i16 %xor4.i.5, -20479
  br i1 %cmp17, label %if.then19, label %if.end6.if.end21_crit_edge

if.end6.if.end21_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

if.then19:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %49 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %master, align 4
  call void @w1_write_8(ptr noundef %50, i8 noundef zeroext -1) #4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end6.if.end21_crit_edge
  %rtnval.0 = phi i32 [ 1, %if.then19 ], [ -5, %if.end6.if.end21_crit_edge ]
  %51 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %master, align 4
  %bus_mutex23 = getelementptr inbounds %struct.w1_master, ptr %52, i32 0, i32 21
  call void @mutex_unlock(ptr noundef %bus_mutex23) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then3 ], [ %rtnval.0, %if.end21 ], [ -14, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %w1_buf) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_reset_select_slave(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_write_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @w1_read_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_write_8(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @__initcall__kmod_w1_ds2406__183_150_w1_family_12_init6, !1, !"__initcall__kmod_w1_ds2406__183_150_w1_family_12_init6", i1 false, i1 false}
!1 = !{!"../drivers/w1/slaves/w1_ds2406.c", i32 150, i32 1}
!2 = !{ptr @__exitcall_w1_family_12_exit, !1, !"__exitcall_w1_family_12_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author184, !4, !"__UNIQUE_ID_author184", i1 false, i1 false}
!4 = !{!"../drivers/w1/slaves/w1_ds2406.c", i32 152, i32 1}
!5 = !{ptr @__UNIQUE_ID_description185, !6, !"__UNIQUE_ID_description185", i1 false, i1 false}
!6 = !{!"../drivers/w1/slaves/w1_ds2406.c", i32 153, i32 1}
!7 = !{ptr @__UNIQUE_ID_file186, !8, !"__UNIQUE_ID_file186", i1 false, i1 false}
!8 = !{!"../drivers/w1/slaves/w1_ds2406.c", i32 154, i32 1}
!9 = !{ptr @__UNIQUE_ID_license187, !8, !"__UNIQUE_ID_license187", i1 false, i1 false}
!10 = !{ptr @w1_family_12, !11, !"w1_family_12", i1 false, i1 false}
!11 = !{!"../drivers/w1/slaves/w1_ds2406.c", i32 146, i32 25}
!12 = !{ptr @w1_f12_fops, !13, !"w1_f12_fops", i1 false, i1 false}
!13 = !{!"../drivers/w1/slaves/w1_ds2406.c", i32 141, i32 35}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/w1/slaves/w1_ds2406.c", i32 101, i32 12}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/w1/slaves/w1_ds2406.c", i32 109, i32 12}
!18 = !{ptr @w1_f12_sysfs_bin_files, !19, !"w1_f12_sysfs_bin_files", i1 false, i1 false}
!19 = !{!"../drivers/w1/slaves/w1_ds2406.c", i32 98, i32 29}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
