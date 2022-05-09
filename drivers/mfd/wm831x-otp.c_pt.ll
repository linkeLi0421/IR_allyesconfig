; ModuleID = '/llk/IR_all_yes/drivers/mfd/wm831x-otp.c_pt.bc'
source_filename = "../drivers/mfd/wm831x-otp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.wm831x = type { %struct.mutex, ptr, ptr, %struct.wm831x_pdata, i32, i32, %struct.mutex, ptr, [5 x i32], [5 x i32], i8, i8, i32, [16 x i32], [16 x i8], [16 x i8], %struct.mutex, %struct.list_head, i16, ptr, %struct.mutex, i8 }
%struct.wm831x_pdata = type { i32, ptr, ptr, i8, i8, i8, i32, i32, [16 x i32], ptr, ptr, ptr, ptr, ptr, [2 x ptr], [4 x ptr], [2 x ptr], [11 x ptr], [2 x ptr] }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }

@dev_attr_unique_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @unique_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@wm831x_otp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 65, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unique ID attribute not created: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wm831x_otp_init\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/mfd/wm831x-otp.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wm831x_otp_init._entry_ptr = internal global ptr @wm831x_otp_init._entry, section ".printk_index", align 4
@wm831x_otp_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 71, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to read UUID: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@wm831x_otp_init._entry_ptr.7 = internal global ptr @wm831x_otp_init._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"unique_id\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%*phN\0A\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant [19 x i8] c"dev_attr_unique_id\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 64, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 71, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 55, i32 8 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private constant [28 x i8] c"../drivers/mfd/wm831x-otp.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 52, i32 22 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @wm831x_otp_init._entry, ptr @wm831x_otp_init._entry.5, ptr @wm831x_otp_init._entry_ptr, ptr @wm831x_otp_init._entry_ptr.7, ptr @dev_attr_unique_id, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_unique_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_otp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_otp_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wm831x_otp_init(ptr noundef %wm831x) local_unnamed_addr #0 align 64 {
entry:
  %uuid = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %uuid) #5
  %dev = getelementptr inbounds %struct.wm831x, ptr %wm831x, i32 0, i32 1
  %0 = call ptr @memset(ptr %uuid, i32 255, i32 16)
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %call = tail call i32 @device_create_file(ptr noundef %2, ptr noundef nonnull @dev_attr_unique_id) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str, i32 noundef %call) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call2 = call fastcc i32 @wm831x_unique_id_read(ptr noundef %wm831x, ptr noundef nonnull %uuid)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %do.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @add_device_randomness(ptr noundef nonnull %uuid, i32 noundef 16) #5
  br label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.6, i32 noundef %call2) #8
  br label %if.end10

if.end10:                                         ; preds = %do.end8, %if.then4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %uuid) #5
  ret i32 %call2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wm831x_unique_id_read(ptr noundef %wm831x, ptr nocapture noundef writeonly %id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @wm831x_reg_read(ptr noundef %wm831x, i16 noundef zeroext 30720) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = lshr i32 %call, 8
  %conv3 = trunc i32 %0 to i8
  %1 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv3, ptr %id, align 1
  %conv5 = trunc i32 %call to i8
  %arrayidx8 = getelementptr i8, ptr %id, i32 1
  %2 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv5, ptr %arrayidx8, align 1
  %call.1 = tail call i32 @wm831x_reg_read(ptr noundef %wm831x, i16 noundef zeroext 30721) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp1.1 = icmp slt i32 %call.1, 0
  br i1 %cmp1.1, label %if.end.cleanup_crit_edge, label %if.end.1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.1:                                         ; preds = %if.end
  %3 = lshr i32 %call.1, 8
  %conv3.1 = trunc i32 %3 to i8
  %arrayidx.1 = getelementptr i8, ptr %id, i32 2
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv3.1, ptr %arrayidx.1, align 1
  %conv5.1 = trunc i32 %call.1 to i8
  %arrayidx8.1 = getelementptr i8, ptr %id, i32 3
  %5 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv5.1, ptr %arrayidx8.1, align 1
  %call.2 = tail call i32 @wm831x_reg_read(ptr noundef %wm831x, i16 noundef zeroext 30722) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp1.2 = icmp slt i32 %call.2, 0
  br i1 %cmp1.2, label %if.end.1.cleanup_crit_edge, label %if.end.2

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.2:                                         ; preds = %if.end.1
  %6 = lshr i32 %call.2, 8
  %conv3.2 = trunc i32 %6 to i8
  %arrayidx.2 = getelementptr i8, ptr %id, i32 4
  %7 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv3.2, ptr %arrayidx.2, align 1
  %conv5.2 = trunc i32 %call.2 to i8
  %arrayidx8.2 = getelementptr i8, ptr %id, i32 5
  %8 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv5.2, ptr %arrayidx8.2, align 1
  %call.3 = tail call i32 @wm831x_reg_read(ptr noundef %wm831x, i16 noundef zeroext 30723) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %cmp1.3 = icmp slt i32 %call.3, 0
  br i1 %cmp1.3, label %if.end.2.cleanup_crit_edge, label %if.end.3

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.3:                                         ; preds = %if.end.2
  %9 = lshr i32 %call.3, 8
  %conv3.3 = trunc i32 %9 to i8
  %arrayidx.3 = getelementptr i8, ptr %id, i32 6
  %10 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv3.3, ptr %arrayidx.3, align 1
  %conv5.3 = trunc i32 %call.3 to i8
  %arrayidx8.3 = getelementptr i8, ptr %id, i32 7
  %11 = ptrtoint ptr %arrayidx8.3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv5.3, ptr %arrayidx8.3, align 1
  %call.4 = tail call i32 @wm831x_reg_read(ptr noundef %wm831x, i16 noundef zeroext 30724) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %cmp1.4 = icmp slt i32 %call.4, 0
  br i1 %cmp1.4, label %if.end.3.cleanup_crit_edge, label %if.end.4

if.end.3.cleanup_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.4:                                         ; preds = %if.end.3
  %12 = lshr i32 %call.4, 8
  %conv3.4 = trunc i32 %12 to i8
  %arrayidx.4 = getelementptr i8, ptr %id, i32 8
  %13 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv3.4, ptr %arrayidx.4, align 1
  %conv5.4 = trunc i32 %call.4 to i8
  %arrayidx8.4 = getelementptr i8, ptr %id, i32 9
  %14 = ptrtoint ptr %arrayidx8.4 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv5.4, ptr %arrayidx8.4, align 1
  %call.5 = tail call i32 @wm831x_reg_read(ptr noundef %wm831x, i16 noundef zeroext 30725) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %cmp1.5 = icmp slt i32 %call.5, 0
  br i1 %cmp1.5, label %if.end.4.cleanup_crit_edge, label %if.end.5

if.end.4.cleanup_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.5:                                         ; preds = %if.end.4
  %15 = lshr i32 %call.5, 8
  %conv3.5 = trunc i32 %15 to i8
  %arrayidx.5 = getelementptr i8, ptr %id, i32 10
  %16 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv3.5, ptr %arrayidx.5, align 1
  %conv5.5 = trunc i32 %call.5 to i8
  %arrayidx8.5 = getelementptr i8, ptr %id, i32 11
  %17 = ptrtoint ptr %arrayidx8.5 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv5.5, ptr %arrayidx8.5, align 1
  %call.6 = tail call i32 @wm831x_reg_read(ptr noundef %wm831x, i16 noundef zeroext 30726) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6)
  %cmp1.6 = icmp slt i32 %call.6, 0
  br i1 %cmp1.6, label %if.end.5.cleanup_crit_edge, label %if.end.6

if.end.5.cleanup_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.6:                                         ; preds = %if.end.5
  %18 = lshr i32 %call.6, 8
  %conv3.6 = trunc i32 %18 to i8
  %arrayidx.6 = getelementptr i8, ptr %id, i32 12
  %19 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv3.6, ptr %arrayidx.6, align 1
  %conv5.6 = trunc i32 %call.6 to i8
  %arrayidx8.6 = getelementptr i8, ptr %id, i32 13
  %20 = ptrtoint ptr %arrayidx8.6 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv5.6, ptr %arrayidx8.6, align 1
  %call.7 = tail call i32 @wm831x_reg_read(ptr noundef %wm831x, i16 noundef zeroext 30727) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7)
  %cmp1.7 = icmp slt i32 %call.7, 0
  br i1 %cmp1.7, label %if.end.6.cleanup_crit_edge, label %if.end.7

if.end.6.cleanup_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.7:                                         ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #7
  %21 = lshr i32 %call.7, 8
  %conv3.7 = trunc i32 %21 to i8
  %arrayidx.7 = getelementptr i8, ptr %id, i32 14
  %22 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv3.7, ptr %arrayidx.7, align 1
  %conv5.7 = trunc i32 %call.7 to i8
  %arrayidx8.7 = getelementptr i8, ptr %id, i32 15
  %23 = ptrtoint ptr %arrayidx8.7 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv5.7, ptr %arrayidx8.7, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end.7, %if.end.6.cleanup_crit_edge, %if.end.5.cleanup_crit_edge, %if.end.4.cleanup_crit_edge, %if.end.3.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call.1, %if.end.cleanup_crit_edge ], [ %call.2, %if.end.1.cleanup_crit_edge ], [ %call.3, %if.end.2.cleanup_crit_edge ], [ %call.4, %if.end.3.cleanup_crit_edge ], [ %call.5, %if.end.4.cleanup_crit_edge ], [ %call.6, %if.end.5.cleanup_crit_edge ], [ %call.7, %if.end.6.cleanup_crit_edge ], [ 0, %if.end.7 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_device_randomness(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wm831x_otp_exit(ptr nocapture noundef readonly %wm831x) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.wm831x, ptr %wm831x, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void @device_remove_file(ptr noundef %1, ptr noundef nonnull @dev_attr_unique_id) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unique_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %id = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %id) #5
  %2 = call ptr @memset(ptr %id, i32 255, i32 16)
  %call1 = call fastcc i32 @wm831x_unique_id_read(ptr noundef %1, ptr noundef nonnull %id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef 16, ptr noundef nonnull %id)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %id) #5
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm831x_reg_read(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mfd/wm831x-otp.c", i32 64, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @wm831x_otp_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @wm831x_otp_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mfd/wm831x-otp.c", i32 71, i32 3}
!10 = !{ptr @wm831x_otp_init._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @wm831x_otp_init._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mfd/wm831x-otp.c", i32 55, i32 8}
!14 = !{ptr @dev_attr_unique_id, !13, !"dev_attr_unique_id", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/mfd/wm831x-otp.c", i32 52, i32 22}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
