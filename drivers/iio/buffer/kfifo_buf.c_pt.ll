; ModuleID = '/llk/IR_all_yes/drivers/iio/buffer/kfifo_buf.c_pt.bc'
source_filename = "../drivers/iio/buffer/kfifo_buf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+iio_kfifo_allocate\22, \22a\22\09"
module asm "\09.weak\09__crc_iio_kfifo_allocate\09\09\09\09"
module asm "\09.long\09__crc_iio_kfifo_allocate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_kfifo_allocate:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_kfifo_allocate\22\09\09\09\09\09"
module asm "__kstrtabns_iio_kfifo_allocate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+iio_kfifo_free\22, \22a\22\09"
module asm "\09.weak\09__crc_iio_kfifo_free\09\09\09\09"
module asm "\09.long\09__crc_iio_kfifo_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_kfifo_free:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_kfifo_free\22\09\09\09\09\09"
module asm "__kstrtabns_iio_kfifo_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devm_iio_kfifo_buffer_setup_ext\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_iio_kfifo_buffer_setup_ext\09\09\09\09"
module asm "\09.long\09__crc_devm_iio_kfifo_buffer_setup_ext\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_iio_kfifo_buffer_setup_ext:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_iio_kfifo_buffer_setup_ext\22\09\09\09\09\09"
module asm "__kstrtabns_devm_iio_kfifo_buffer_setup_ext:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.iio_buffer_access_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.iio_kfifo = type { %struct.iio_buffer, %struct.kfifo, %struct.mutex, i32 }
%struct.iio_buffer = type { i32, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.wait_queue_head, i32, i8, %struct.list_head, %struct.attribute_group, ptr, ptr, %struct.list_head, %struct.list_head, %struct.kref }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.kfifo = type { %union.anon.72, [0 x i8] }
%union.anon.72 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@kfifo_access_funcs = internal constant { %struct.iio_buffer_access_funcs, [40 x i8] } { %struct.iio_buffer_access_funcs { ptr @iio_store_to_kfifo, ptr @iio_read_kfifo, ptr @iio_kfifo_buf_data_available, ptr @iio_kfifo_remove_from, ptr @iio_kfifo_write, ptr @iio_kfifo_buf_space_available, ptr @iio_request_update_kfifo, ptr @iio_set_bytes_per_datum_kfifo, ptr @iio_set_length_kfifo, ptr null, ptr null, ptr @iio_kfifo_buffer_release, i32 6, i32 0 }, [40 x i8] zeroinitializer }, align 32
@iio_kfifo_allocate.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&kf->user_lock\00", [17 x i8] zeroinitializer }, align 32
@__kstrtab_iio_kfifo_allocate = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_kfifo_allocate = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_kfifo_allocate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_kfifo_allocate to i32), ptr @__kstrtab_iio_kfifo_allocate, ptr @__kstrtabns_iio_kfifo_allocate }, section "___ksymtab+iio_kfifo_allocate", align 4
@__kstrtab_iio_kfifo_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_kfifo_free = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_kfifo_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_kfifo_free to i32), ptr @__kstrtab_iio_kfifo_free, ptr @__kstrtabns_iio_kfifo_free }, section "___ksymtab+iio_kfifo_free", align 4
@__kstrtab_devm_iio_kfifo_buffer_setup_ext = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_iio_kfifo_buffer_setup_ext = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_iio_kfifo_buffer_setup_ext = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_iio_kfifo_buffer_setup_ext to i32), ptr @__kstrtab_devm_iio_kfifo_buffer_setup_ext, ptr @__kstrtabns_devm_iio_kfifo_buffer_setup_ext }, section "___ksymtab_gpl+devm_iio_kfifo_buffer_setup_ext", align 4
@__UNIQUE_ID_file228 = internal constant [44 x i8] c"kfifo_buf.file=drivers/iio/buffer/kfifo_buf\00", section ".modinfo", align 1
@__UNIQUE_ID_license229 = internal constant [22 x i8] c"kfifo_buf.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"devm_iio_kfifo_release\00", [41 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [19 x i8] c"kfifo_access_funcs\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 188, i32 45 }
@___asan_gen_.5 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 215, i32 2 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private constant [34 x i8] c"../drivers/iio/buffer/kfifo_buf.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 243, i32 8 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_file228, ptr @__UNIQUE_ID_license229, ptr @__ksymtab_devm_iio_kfifo_buffer_setup_ext, ptr @__ksymtab_iio_kfifo_allocate, ptr @__ksymtab_iio_kfifo_free, ptr @kfifo_access_funcs, ptr @iio_kfifo_allocate.__key, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kfifo_access_funcs to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_kfifo_allocate.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iio_kfifo_allocate() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 264) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %update_needed = getelementptr inbounds %struct.iio_kfifo, ptr %call7.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %update_needed to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %update_needed, align 4
  tail call void @iio_buffer_init(ptr noundef nonnull %call7.i.i) #7
  %access = getelementptr inbounds %struct.iio_buffer, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %access to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @kfifo_access_funcs, ptr %access, align 8
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %call7.i.i, align 8
  %user_lock = getelementptr inbounds %struct.iio_kfifo, ptr %call7.i.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %user_lock, ptr noundef nonnull @.str, ptr noundef nonnull @iio_kfifo_allocate.__key) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_buffer_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iio_kfifo_free(ptr noundef %r) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @iio_buffer_put(ptr noundef %r) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_buffer_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devm_iio_kfifo_buffer_setup_ext(ptr noundef %dev, ptr noundef %indio_dev, i32 noundef %mode_flags, ptr noundef %setup_ops, ptr noundef %buffer_attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode_flags)
  %tobool.not = icmp eq i32 %mode_flags, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_iio_kfifo_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.1) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 264) #10
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.else.i, label %if.end3

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @devres_free(ptr noundef nonnull %call.i) #7
  br label %cleanup

if.end3:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %update_needed.i.i = getelementptr inbounds %struct.iio_kfifo, ptr %call7.i.i.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %update_needed.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %update_needed.i.i, align 4
  tail call void @iio_buffer_init(ptr noundef nonnull %call7.i.i.i.i) #7
  %access.i.i = getelementptr inbounds %struct.iio_buffer, ptr %call7.i.i.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %access.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @kfifo_access_funcs, ptr %access.i.i, align 8
  %3 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %call7.i.i.i.i, align 8
  %user_lock.i.i = getelementptr inbounds %struct.iio_kfifo, ptr %call7.i.i.i.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %user_lock.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @iio_kfifo_allocate.__key) #7
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i.i.i, ptr %call.i, align 4
  tail call void @devres_add(ptr noundef %dev, ptr noundef nonnull %call.i) #7
  %and = and i32 %mode_flags, 6
  %5 = ptrtoint ptr %indio_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %indio_dev, align 8
  %or = or i32 %6, %and
  store i32 %or, ptr %indio_dev, align 8
  %setup_ops4 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 18
  %7 = ptrtoint ptr %setup_ops4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %setup_ops, ptr %setup_ops4, align 4
  %attrs = getelementptr inbounds %struct.iio_buffer, ptr %call7.i.i.i.i, i32 0, i32 12
  %8 = ptrtoint ptr %attrs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %buffer_attrs, ptr %attrs, align 8
  %call5 = tail call i32 @iio_device_attach_buffer(ptr noundef %indio_dev, ptr noundef nonnull %call7.i.i.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.else.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.else.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_attach_buffer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iio_store_to_kfifo(ptr noundef %r, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %kf1 = getelementptr inbounds %struct.iio_kfifo, ptr %r, i32 0, i32 1
  %call = tail call i32 @__kfifo_in(ptr noundef %kf1, ptr noundef %data, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  %. = select i1 %cmp.not, i32 0, i32 -16
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iio_read_kfifo(ptr noundef %r, i32 noundef %n, ptr noundef %buf) #0 align 64 {
entry:
  %copied = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %copied) #7
  %0 = ptrtoint ptr %copied to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %copied, align 4, !annotation !25
  %user_lock = getelementptr inbounds %struct.iio_kfifo, ptr %r, i32 0, i32 2
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %user_lock, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %kf1 = getelementptr inbounds %struct.iio_kfifo, ptr %r, i32 0, i32 1
  %mask = getelementptr inbounds %struct.iio_kfifo, ptr %r, i32 0, i32 1, i32 0, i32 0, i32 2
  %1 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool2.not = icmp eq i32 %2, 0
  br i1 %tobool2.not, label %if.end.if.end9.thread_crit_edge, label %lor.lhs.false

if.end.if.end9.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.thread

lor.lhs.false:                                    ; preds = %if.end
  %esize = getelementptr inbounds %struct.iio_kfifo, ptr %r, i32 0, i32 1, i32 0, i32 0, i32 3
  %3 = ptrtoint ptr %esize to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %esize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %n)
  %cmp = icmp ugt i32 %4, %n
  br i1 %cmp, label %lor.lhs.false.if.end9.thread_crit_edge, label %if.end9

lor.lhs.false.if.end9.thread_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.thread

if.end9.thread:                                   ; preds = %lor.lhs.false.if.end9.thread_crit_edge, %if.end.if.end9.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %user_lock) #7
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  %call7 = call i32 @__kfifo_to_user(ptr noundef %kf1, ptr noundef %buf, i32 noundef %n, ptr noundef nonnull %copied) #7
  call void @mutex_unlock(ptr noundef %user_lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp11 = icmp slt i32 %call7, 0
  br i1 %cmp11, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %copied to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %copied, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end9.cleanup_crit_edge, %if.end9.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.end13 ], [ -512, %entry.cleanup_crit_edge ], [ %call7, %if.end9.cleanup_crit_edge ], [ -22, %if.end9.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %copied) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iio_kfifo_buf_data_available(ptr noundef %r) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %user_lock = getelementptr inbounds %struct.iio_kfifo, ptr %r, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %user_lock, i32 noundef 0) #7
  %kf1 = getelementptr inbounds %struct.iio_kfifo, ptr %r, i32 0, i32 1
  %0 = ptrtoint ptr %kf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %kf1, align 4
  %out = getelementptr inbounds %struct.iio_kfifo, ptr %r, i32 0, i32 1, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %out, align 4
  %sub = sub i32 %1, %3
  tail call void @mutex_unlock(ptr noundef %user_lock) #7
  ret i32 %sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iio_kfifo_remove_from(ptr noundef %r, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mask = getelementptr inbounds %struct.iio_kfifo, ptr %r, i32 0, i32 1, i32 0, i32 0, i32 2
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %kf1 = getelementptr inbounds %struct.iio_kfifo, ptr %r, i32 0, i32 1
  %call = tail call i32 @__kfifo_out(ptr noundef %kf1, ptr noundef %data, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp5.not = icmp eq i32 %call, 1
  br i1 %cmp5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %pollq = getelementptr inbounds %struct.iio_buffer, ptr %r, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %pollq, i32 noundef 1, i32 noundef 1, ptr noundef nonnull inttoptr (i32 260 to ptr)) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -16, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iio_kfifo_write(ptr noundef %r, i32 noundef %n, ptr noundef %buf) #0 align 64 {
entry:
  %copied = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %copied) #7
  %0 = ptrtoint ptr %copied to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %copied, align 4, !annotation !25
  %user_lock = getelementptr inbounds %struct.iio_kfifo, ptr %r, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %user_lock, i32 noundef 0) #7
  %kf1 = getelementptr inbounds %struct.iio_kfifo, ptr %r, i32 0, i32 1
  %mask = getelementptr inbounds %struct.iio_kfifo, ptr %r, i32 0, i32 1, i32 0, i32 0, i32 2
  %1 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end.thread_crit_edge, label %lor.lhs.false

entry.if.end.thread_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.thread

lor.lhs.false:                                    ; preds = %entry
  %esize = getelementptr inbounds %struct.iio_kfifo, ptr %r, i32 0, i32 1, i32 0, i32 0, i32 3
  %3 = ptrtoint ptr %esize to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %esize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %n)
  %cmp = icmp ugt i32 %4, %n
  br i1 %cmp, label %lor.lhs.false.if.end.thread_crit_edge, label %if.end

lor.lhs.false.if.end.thread_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.thread

if.end.thread:                                    ; preds = %lor.lhs.false.if.end.thread_crit_edge, %entry.if.end.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %user_lock) #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = call i32 @__kfifo_from_user(ptr noundef %kf1, ptr noundef %buf, i32 noundef %n, ptr noundef nonnull %copied) #7
  call void @mutex_unlock(ptr noundef %user_lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %copied to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %copied, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %if.end.thread
  %retval.0 = phi i32 [ %6, %if.end9 ], [ %call, %if.end.cleanup_crit_edge ], [ -22, %if.end.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %copied) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iio_kfifo_buf_space_available(ptr noundef %r) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %user_lock = getelementptr inbounds %struct.iio_kfifo, ptr %r, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %user_lock, i32 noundef 0) #7
  %kf1 = getelementptr inbounds %struct.iio_kfifo, ptr %r, i32 0, i32 1
  %mask = getelementptr inbounds %struct.iio_kfifo, ptr %r, i32 0, i32 1, i32 0, i32 0, i32 2
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mask, align 4
  %2 = ptrtoint ptr %kf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %kf1, align 4
  %out = getelementptr inbounds %struct.iio_kfifo, ptr %r, i32 0, i32 1, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %out, align 4
  %sub.neg = add i32 %1, 1
  %add = sub i32 %sub.neg, %3
  %sub3 = add i32 %add, %5
  tail call void @mutex_unlock(ptr noundef %user_lock) #7
  ret i32 %sub3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iio_request_update_kfifo(ptr noundef %r) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %user_lock = getelementptr inbounds %struct.iio_kfifo, ptr %r, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %user_lock, i32 noundef 0) #7
  %update_needed = getelementptr inbounds %struct.iio_kfifo, ptr %r, i32 0, i32 3
  %0 = ptrtoint ptr %update_needed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %update_needed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %kf5 = getelementptr inbounds %struct.iio_kfifo, ptr %r, i32 0, i32 1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  tail call void @__kfifo_free(ptr noundef %kf5) #7
  %bytes_per_datum = getelementptr inbounds %struct.iio_buffer, ptr %r, i32 0, i32 2
  %2 = ptrtoint ptr %bytes_per_datum to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bytes_per_datum, align 4
  %4 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %r, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.i = icmp eq i32 %3, 0
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %if.then.if.end7_crit_edge, label %cond.end19.i

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

cond.end19.i:                                     ; preds = %if.then
  %sub.i36.i = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i36.i)
  %tobool.not.i.i.i.i = icmp eq i32 %sub.i36.i, 0
  %6 = tail call i32 @llvm.ctlz.i32(i32 %sub.i36.i, i1 true) #7, !range !26
  %sub.i.i.i.i = sub nuw nsw i32 32, %6
  %sub.i.i.op.i.i = shl nuw i32 1, %sub.i.i.i.i
  %shl.i.i = select i1 %tobool.not.i.i.i.i, i32 1, i32 %sub.i.i.op.i.i
  %mul.i = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 %shl.i.i) #7
  %mul.ov.i = extractvalue { i32, i1 } %mul.i, 1
  br i1 %mul.ov.i, label %cond.end19.i.if.end7_crit_edge, label %__iio_allocate_kfifo.exit

cond.end19.i.if.end7_crit_edge:                   ; preds = %cond.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

__iio_allocate_kfifo.exit:                        ; preds = %cond.end19.i
  %call25.i = tail call i32 @__kfifo_alloc(ptr noundef %kf5, i32 noundef %5, i32 noundef %3, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call25.i)
  %cmp = icmp sgt i32 %call25.i, -1
  br i1 %cmp, label %if.then2, label %__iio_allocate_kfifo.exit.if.end7_crit_edge

__iio_allocate_kfifo.exit.if.end7_crit_edge:      ; preds = %__iio_allocate_kfifo.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then2:                                         ; preds = %__iio_allocate_kfifo.exit
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %update_needed to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %update_needed, align 4
  br label %if.end7

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %kf5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %kf5, align 4
  %out = getelementptr inbounds %struct.iio_kfifo, ptr %r, i32 0, i32 1, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %out, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then2, %__iio_allocate_kfifo.exit.if.end7_crit_edge, %cond.end19.i.if.end7_crit_edge, %if.then.if.end7_crit_edge
  %ret.0 = phi i32 [ %call25.i, %if.then2 ], [ %call25.i, %__iio_allocate_kfifo.exit.if.end7_crit_edge ], [ 0, %if.else ], [ -22, %if.then.if.end7_crit_edge ], [ -22, %cond.end19.i.if.end7_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %user_lock) #7
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @iio_set_bytes_per_datum_kfifo(ptr nocapture noundef %r, i32 noundef %bpd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bytes_per_datum = getelementptr inbounds %struct.iio_buffer, ptr %r, i32 0, i32 2
  %0 = ptrtoint ptr %bytes_per_datum to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bytes_per_datum, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %bpd)
  %cmp.not = icmp eq i32 %1, %bpd
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %bytes_per_datum to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %bpd, ptr %bytes_per_datum, align 4
  %update_needed.i = getelementptr inbounds %struct.iio_kfifo, ptr %r, i32 0, i32 3
  %3 = ptrtoint ptr %update_needed.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %update_needed.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @iio_set_length_kfifo(ptr nocapture noundef %r, i32 noundef %length) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.umax.i32(i32 %length, i32 2)
  %1 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %r, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %0)
  %cmp2.not = icmp eq i32 %2, %0
  br i1 %cmp2.not, label %entry.if.end5_crit_edge, label %if.then3

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %0, ptr %r, align 4
  %update_needed.i = getelementptr inbounds %struct.iio_kfifo, ptr %r, i32 0, i32 3
  %4 = ptrtoint ptr %update_needed.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %update_needed.i, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %entry.if.end5_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iio_kfifo_buffer_release(ptr noundef %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %user_lock = getelementptr inbounds %struct.iio_kfifo, ptr %buffer, i32 0, i32 2
  tail call void @mutex_destroy(ptr noundef %user_lock) #7
  %kf1 = getelementptr inbounds %struct.iio_kfifo, ptr %buffer, i32 0, i32 1
  tail call void @__kfifo_free(ptr noundef %kf1) #7
  tail call void @kfree(ptr noundef %buffer) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_to_user(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_out(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_from_user(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfifo_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_iio_kfifo_release(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  tail call void @iio_buffer_put(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @iio_kfifo_allocate.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/iio/buffer/kfifo_buf.c", i32 215, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__ksymtab_iio_kfifo_allocate, !4, !"__ksymtab_iio_kfifo_allocate", i1 false, i1 false}
!4 = !{!"../drivers/iio/buffer/kfifo_buf.c", i32 219, i32 1}
!5 = !{ptr @__ksymtab_iio_kfifo_free, !6, !"__ksymtab_iio_kfifo_free", i1 false, i1 false}
!6 = !{!"../drivers/iio/buffer/kfifo_buf.c", i32 225, i32 1}
!7 = !{ptr @__ksymtab_devm_iio_kfifo_buffer_setup_ext, !8, !"__ksymtab_devm_iio_kfifo_buffer_setup_ext", i1 false, i1 false}
!8 = !{!"../drivers/iio/buffer/kfifo_buf.c", i32 296, i32 1}
!9 = !{ptr @__UNIQUE_ID_file228, !10, !"__UNIQUE_ID_file228", i1 false, i1 false}
!10 = !{!"../drivers/iio/buffer/kfifo_buf.c", i32 298, i32 1}
!11 = !{ptr @__UNIQUE_ID_license229, !10, !"__UNIQUE_ID_license229", i1 false, i1 false}
!12 = !{ptr @kfifo_access_funcs, !13, !"kfifo_access_funcs", i1 false, i1 false}
!13 = !{!"../drivers/iio/buffer/kfifo_buf.c", i32 188, i32 45}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/buffer/kfifo_buf.c", i32 243, i32 8}
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
!26 = !{i32 0, i32 33}
