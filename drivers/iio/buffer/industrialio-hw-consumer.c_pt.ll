; ModuleID = '/llk/IR_all_yes/drivers/iio/buffer/industrialio-hw-consumer.c_pt.bc'
source_filename = "../drivers/iio/buffer/industrialio-hw-consumer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+iio_hw_consumer_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_iio_hw_consumer_alloc\09\09\09\09"
module asm "\09.long\09__crc_iio_hw_consumer_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_hw_consumer_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_hw_consumer_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_iio_hw_consumer_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+iio_hw_consumer_free\22, \22a\22\09"
module asm "\09.weak\09__crc_iio_hw_consumer_free\09\09\09\09"
module asm "\09.long\09__crc_iio_hw_consumer_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_hw_consumer_free:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_hw_consumer_free\22\09\09\09\09\09"
module asm "__kstrtabns_iio_hw_consumer_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devm_iio_hw_consumer_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_iio_hw_consumer_alloc\09\09\09\09"
module asm "\09.long\09__crc_devm_iio_hw_consumer_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_iio_hw_consumer_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_iio_hw_consumer_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_devm_iio_hw_consumer_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+iio_hw_consumer_enable\22, \22a\22\09"
module asm "\09.weak\09__crc_iio_hw_consumer_enable\09\09\09\09"
module asm "\09.long\09__crc_iio_hw_consumer_enable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_hw_consumer_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_hw_consumer_enable\22\09\09\09\09\09"
module asm "__kstrtabns_iio_hw_consumer_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+iio_hw_consumer_disable\22, \22a\22\09"
module asm "\09.weak\09__crc_iio_hw_consumer_disable\09\09\09\09"
module asm "\09.long\09__crc_iio_hw_consumer_disable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_hw_consumer_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_hw_consumer_disable\22\09\09\09\09\09"
module asm "__kstrtabns_iio_hw_consumer_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.iio_buffer_access_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.iio_hw_consumer = type { %struct.list_head, ptr }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
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
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hw_consumer_buffer = type { %struct.list_head, ptr, %struct.iio_buffer, [0 x i32] }
%struct.iio_buffer = type { i32, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.wait_queue_head, i32, i8, %struct.list_head, %struct.attribute_group, ptr, ptr, %struct.list_head, %struct.list_head, %struct.kref }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_channel = type { ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.43, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.43 = type { i8, i8, i8, i8, i8, i32 }

@__kstrtab_iio_hw_consumer_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_hw_consumer_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_hw_consumer_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_hw_consumer_alloc to i32), ptr @__kstrtab_iio_hw_consumer_alloc, ptr @__kstrtabns_iio_hw_consumer_alloc }, section "___ksymtab_gpl+iio_hw_consumer_alloc", align 4
@__kstrtab_iio_hw_consumer_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_hw_consumer_free = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_hw_consumer_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_hw_consumer_free to i32), ptr @__kstrtab_iio_hw_consumer_free, ptr @__kstrtabns_iio_hw_consumer_free }, section "___ksymtab_gpl+iio_hw_consumer_free", align 4
@__kstrtab_devm_iio_hw_consumer_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_iio_hw_consumer_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_iio_hw_consumer_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_iio_hw_consumer_alloc to i32), ptr @__kstrtab_devm_iio_hw_consumer_alloc, ptr @__kstrtabns_devm_iio_hw_consumer_alloc }, section "___ksymtab_gpl+devm_iio_hw_consumer_alloc", align 4
@__kstrtab_iio_hw_consumer_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_hw_consumer_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_hw_consumer_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_hw_consumer_enable to i32), ptr @__kstrtab_iio_hw_consumer_enable, ptr @__kstrtabns_iio_hw_consumer_enable }, section "___ksymtab_gpl+iio_hw_consumer_enable", align 4
@__kstrtab_iio_hw_consumer_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_hw_consumer_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_hw_consumer_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_hw_consumer_disable to i32), ptr @__kstrtab_iio_hw_consumer_disable, ptr @__kstrtabns_iio_hw_consumer_disable }, section "___ksymtab_gpl+iio_hw_consumer_disable", align 4
@__UNIQUE_ID_author183 = internal constant [69 x i8] c"industrialio_hw_consumer.author=Lars-Peter Clausen <lars@metafoo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description184 = internal constant [80 x i8] c"industrialio_hw_consumer.description=Hardware consumer buffer the IIO framework\00", section ".modinfo", align 1
@__UNIQUE_ID_file185 = internal constant [74 x i8] c"industrialio_hw_consumer.file=drivers/iio/buffer/industrialio-hw-consumer\00", section ".modinfo", align 1
@__UNIQUE_ID_license186 = internal constant [40 x i8] c"industrialio_hw_consumer.license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@iio_hw_buf_access = internal constant { %struct.iio_buffer_access_funcs, [40 x i8] } { %struct.iio_buffer_access_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iio_hw_buf_release, i32 8, i32 0 }, [40 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [18 x i8] c"iio_hw_buf_access\00", align 1
@___asan_gen_.2 = private constant [49 x i8] c"../drivers/iio/buffer/industrialio-hw-consumer.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 47, i32 45 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_author183, ptr @__UNIQUE_ID_description184, ptr @__UNIQUE_ID_file185, ptr @__UNIQUE_ID_license186, ptr @__ksymtab_devm_iio_hw_consumer_alloc, ptr @__ksymtab_iio_hw_consumer_alloc, ptr @__ksymtab_iio_hw_consumer_disable, ptr @__ksymtab_iio_hw_consumer_enable, ptr @__ksymtab_iio_hw_consumer_free, ptr @iio_hw_buf_access], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_hw_buf_access to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iio_hw_consumer_alloc(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %call2 = tail call ptr @iio_channel_get_all(ptr noundef %dev) #4
  %channels = getelementptr inbounds %struct.iio_hw_consumer, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2, ptr %channels, align 8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.err_free_hwc_crit_edge, label %while.cond.preheader

if.end.err_free_hwc_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_free_hwc

while.cond.preheader:                             ; preds = %if.end
  %4 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call2, align 4
  %tobool10.not51 = icmp eq ptr %5, null
  br i1 %tobool10.not51, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.body:                                       ; preds = %if.end15.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %6 = phi ptr [ %30, %if.end15.while.body_crit_edge ], [ %5, %while.cond.preheader.while.body_crit_edge ]
  %chan.052 = phi ptr [ %incdec.ptr, %if.end15.while.body_crit_edge ], [ %call2, %while.cond.preheader.while.body_crit_edge ]
  %masklength.i = getelementptr inbounds %struct.iio_dev, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %masklength.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %masklength.i, align 8
  %sub.i = add i32 %8, 31
  %9 = lshr i32 %sub.i, 3
  %mul.i = and i32 %9, 536870908
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %while.body
  %buf.0.in.i = phi ptr [ %call7.i.i, %while.body ], [ %buf.0.i, %for.body.i.for.cond.i_crit_edge ]
  %10 = ptrtoint ptr %buf.0.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %buf.0.i = load ptr, ptr %buf.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %buf.0.i, %call7.i.i
  br i1 %cmp.not.i, label %if.end8.i.i.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %indio_dev2.i = getelementptr inbounds %struct.hw_consumer_buffer, ptr %buf.0.i, i32 0, i32 1
  %11 = ptrtoint ptr %indio_dev2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %indio_dev2.i, align 4
  %cmp3.i = icmp eq ptr %12, %6
  br i1 %cmp3.i, label %iio_hw_consumer_get_buffer.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i

if.end8.i.i.i:                                    ; preds = %for.cond.i
  %add9.i = add nuw nsw i32 %mul.i, 160
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add9.i, i32 noundef 3520) #8
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.i.for.cond.preheader_crit_edge, label %if.end11.i

if.end8.i.i.i.for.cond.preheader_crit_edge:       ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.preheader

if.end11.i:                                       ; preds = %if.end8.i.i.i
  %buffer.i = getelementptr inbounds %struct.hw_consumer_buffer, ptr %call9.i.i.i, i32 0, i32 2
  %access.i = getelementptr inbounds %struct.hw_consumer_buffer, ptr %call9.i.i.i, i32 0, i32 2, i32 4
  %13 = ptrtoint ptr %access.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @iio_hw_buf_access, ptr %access.i, align 4
  %indio_dev12.i = getelementptr inbounds %struct.hw_consumer_buffer, ptr %call9.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %indio_dev12.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %6, ptr %indio_dev12.i, align 8
  %scan_mask.i = getelementptr inbounds %struct.hw_consumer_buffer, ptr %call9.i.i.i, i32 0, i32 3
  %scan_mask14.i = getelementptr inbounds %struct.hw_consumer_buffer, ptr %call9.i.i.i, i32 0, i32 2, i32 5
  %15 = ptrtoint ptr %scan_mask14.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %scan_mask.i, ptr %scan_mask14.i, align 32
  tail call void @iio_buffer_init(ptr noundef %buffer.i) #4
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i.i, ptr noundef %17, ptr noundef nonnull %call7.i.i) #4
  br i1 %call.i.i.i, label %if.end.i.i35.i, label %if.end11.i.if.end15_crit_edge

if.end11.i.if.end15_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.end.i.i35.i:                                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call9.i.i.i, ptr %prev.i, align 4
  %19 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i, ptr %call9.i.i.i, align 128
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev3.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %call9.i.i.i, ptr %17, align 4
  br label %if.end15

iio_hw_consumer_get_buffer.exit:                  ; preds = %for.body.i
  %tobool13.not = icmp eq ptr %buf.0.i, null
  br i1 %tobool13.not, label %iio_hw_consumer_get_buffer.exit.for.cond.preheader_crit_edge, label %iio_hw_consumer_get_buffer.exit.if.end15_crit_edge

iio_hw_consumer_get_buffer.exit.if.end15_crit_edge: ; preds = %iio_hw_consumer_get_buffer.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

iio_hw_consumer_get_buffer.exit.for.cond.preheader_crit_edge: ; preds = %iio_hw_consumer_get_buffer.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %iio_hw_consumer_get_buffer.exit.for.cond.preheader_crit_edge, %if.end8.i.i.i.for.cond.preheader_crit_edge
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %buf.053 = load ptr, ptr %call7.i.i, align 8
  %cmp.not54 = icmp eq ptr %buf.053, %call7.i.i
  br i1 %cmp.not54, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end15:                                         ; preds = %iio_hw_consumer_get_buffer.exit.if.end15_crit_edge, %if.end.i.i35.i, %if.end11.i.if.end15_crit_edge
  %retval.0.i49 = phi ptr [ %buf.0.i, %iio_hw_consumer_get_buffer.exit.if.end15_crit_edge ], [ %call9.i.i.i, %if.end11.i.if.end15_crit_edge ], [ %call9.i.i.i, %if.end.i.i35.i ]
  %channel = getelementptr inbounds %struct.iio_channel, ptr %chan.052, i32 0, i32 1
  %23 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %channel, align 4
  %scan_index = getelementptr inbounds %struct.iio_chan_spec, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %scan_index to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %scan_index, align 4
  %scan_mask = getelementptr inbounds %struct.hw_consumer_buffer, ptr %retval.0.i49, i32 0, i32 2, i32 5
  %27 = ptrtoint ptr %scan_mask to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %scan_mask, align 4
  tail call void @_set_bit(i32 noundef %26, ptr noundef %28) #4
  %incdec.ptr = getelementptr %struct.iio_channel, ptr %chan.052, i32 1
  %29 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %30, null
  br i1 %tobool10.not, label %if.end15.cleanup_crit_edge, label %if.end15.while.body_crit_edge

if.end15.while.body_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %buf.055 = phi ptr [ %buf.0, %for.body.for.body_crit_edge ], [ %buf.053, %for.cond.preheader.for.body_crit_edge ]
  %buffer18 = getelementptr inbounds %struct.hw_consumer_buffer, ptr %buf.055, i32 0, i32 2
  tail call void @iio_buffer_put(ptr noundef %buffer18) #4
  %31 = ptrtoint ptr %buf.055 to i32
  call void @__asan_load4_noabort(i32 %31)
  %buf.0 = load ptr, ptr %buf.055, align 4
  %cmp.not = icmp eq ptr %buf.0, %call7.i.i
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %32 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %channels, align 8
  tail call void @iio_channel_release_all(ptr noundef %33) #4
  br label %err_free_hwc

err_free_hwc:                                     ; preds = %for.end, %if.end.err_free_hwc_crit_edge
  %ret.0 = phi ptr [ inttoptr (i32 -12 to ptr), %for.end ], [ %call2, %if.end.err_free_hwc_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %err_free_hwc, %if.end15.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %ret.0, %err_free_hwc ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %call7.i.i, %while.cond.preheader.cleanup_crit_edge ], [ %call7.i.i, %if.end15.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iio_channel_get_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_buffer_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_channel_release_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iio_hw_consumer_free(ptr noundef %hwc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %channels = getelementptr inbounds %struct.iio_hw_consumer, ptr %hwc, i32 0, i32 1
  %0 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channels, align 4
  tail call void @iio_channel_release_all(ptr noundef %1) #4
  %2 = ptrtoint ptr %hwc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwc, align 4
  %cmp.not18 = icmp eq ptr %3, %hwc
  br i1 %cmp.not18, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %buf.019 = phi ptr [ %n.0, %for.body.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %buf.019 to i32
  call void @__asan_load4_noabort(i32 %4)
  %n.0 = load ptr, ptr %buf.019, align 4
  %buffer = getelementptr inbounds %struct.hw_consumer_buffer, ptr %buf.019, i32 0, i32 2
  tail call void @iio_buffer_put(ptr noundef %buffer) #4
  %cmp.not = icmp eq ptr %n.0, %hwc
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @kfree(ptr noundef %hwc) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @devm_iio_hw_consumer_alloc(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @iio_hw_consumer_alloc(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @devm_iio_hw_consumer_release, ptr noundef %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  %channels.i.i.i = getelementptr inbounds %struct.iio_hw_consumer, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %channels.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channels.i.i.i, align 4
  tail call void @iio_channel_release_all(ptr noundef %1) #4
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %cmp.not18.i.i.i = icmp eq ptr %3, %call
  br i1 %cmp.not18.i.i.i, label %if.then.i.if.then3_crit_edge, label %if.then.i.for.body.i.i.i_crit_edge

if.then.i.for.body.i.i.i_crit_edge:               ; preds = %if.then.i
  br label %for.body.i.i.i

if.then.i.if.then3_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.then.i.for.body.i.i.i_crit_edge
  %buf.019.i.i.i = phi ptr [ %n.0.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %3, %if.then.i.for.body.i.i.i_crit_edge ]
  %4 = ptrtoint ptr %buf.019.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %n.0.i.i.i = load ptr, ptr %buf.019.i.i.i, align 4
  %buffer.i.i.i = getelementptr inbounds %struct.hw_consumer_buffer, ptr %buf.019.i.i.i, i32 0, i32 2
  tail call void @iio_buffer_put(ptr noundef %buffer.i.i.i) #4
  %cmp.not.i.i.i = icmp eq ptr %n.0.i.i.i, %call
  br i1 %cmp.not.i.i.i, label %for.body.i.i.i.if.then3_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i.i

for.body.i.i.i.if.then3_crit_edge:                ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

if.then3:                                         ; preds = %for.body.i.i.i.if.then3_crit_edge, %if.then.i.if.then3_crit_edge
  tail call void @kfree(ptr noundef %call) #4
  %5 = inttoptr i32 %call.i to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %5, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_iio_hw_consumer_release(ptr noundef %iio_hwc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %channels.i = getelementptr inbounds %struct.iio_hw_consumer, ptr %iio_hwc, i32 0, i32 1
  %0 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channels.i, align 4
  tail call void @iio_channel_release_all(ptr noundef %1) #4
  %2 = ptrtoint ptr %iio_hwc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iio_hwc, align 4
  %cmp.not18.i = icmp eq ptr %3, %iio_hwc
  br i1 %cmp.not18.i, label %entry.iio_hw_consumer_free.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.iio_hw_consumer_free.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %iio_hw_consumer_free.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %buf.019.i = phi ptr [ %n.0.i, %for.body.i.for.body.i_crit_edge ], [ %3, %entry.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %buf.019.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %n.0.i = load ptr, ptr %buf.019.i, align 4
  %buffer.i = getelementptr inbounds %struct.hw_consumer_buffer, ptr %buf.019.i, i32 0, i32 2
  tail call void @iio_buffer_put(ptr noundef %buffer.i) #4
  %cmp.not.i = icmp eq ptr %n.0.i, %iio_hwc
  br i1 %cmp.not.i, label %for.body.i.iio_hw_consumer_free.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.body.i.iio_hw_consumer_free.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %iio_hw_consumer_free.exit

iio_hw_consumer_free.exit:                        ; preds = %for.body.i.iio_hw_consumer_free.exit_crit_edge, %entry.iio_hw_consumer_free.exit_crit_edge
  tail call void @kfree(ptr noundef %iio_hwc) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iio_hw_consumer_enable(ptr noundef readonly %hwc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %buf.0.in = phi ptr [ %hwc, %entry ], [ %buf.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %buf.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %buf.0 = load ptr, ptr %buf.0.in, align 4
  %cmp.not = icmp eq ptr %buf.0, %hwc
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %indio_dev = getelementptr inbounds %struct.hw_consumer_buffer, ptr %buf.0, i32 0, i32 1
  %1 = ptrtoint ptr %indio_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %indio_dev, align 4
  %buffer = getelementptr inbounds %struct.hw_consumer_buffer, ptr %buf.0, i32 0, i32 2
  %call = tail call i32 @iio_update_buffers(ptr noundef %2, ptr noundef %buffer, ptr noundef null) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.for.cond_crit_edge, label %for.cond11.preheader

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond

for.cond11.preheader:                             ; preds = %for.body
  %buf.1.in41 = getelementptr inbounds %struct.list_head, ptr %buf.0, i32 0, i32 1
  %3 = ptrtoint ptr %buf.1.in41 to i32
  call void @__asan_load4_noabort(i32 %3)
  %buf.142 = load ptr, ptr %buf.1.in41, align 4
  %cmp14.not43 = icmp eq ptr %buf.142, %hwc
  br i1 %cmp14.not43, label %for.cond11.preheader.cleanup_crit_edge, label %for.cond11.preheader.for.body16_crit_edge

for.cond11.preheader.for.body16_crit_edge:        ; preds = %for.cond11.preheader
  br label %for.body16

for.cond11.preheader.cleanup_crit_edge:           ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body16:                                       ; preds = %for.body16.for.body16_crit_edge, %for.cond11.preheader.for.body16_crit_edge
  %buf.144 = phi ptr [ %buf.1, %for.body16.for.body16_crit_edge ], [ %buf.142, %for.cond11.preheader.for.body16_crit_edge ]
  %indio_dev17 = getelementptr inbounds %struct.hw_consumer_buffer, ptr %buf.144, i32 0, i32 1
  %4 = ptrtoint ptr %indio_dev17 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %indio_dev17, align 4
  %buffer18 = getelementptr inbounds %struct.hw_consumer_buffer, ptr %buf.144, i32 0, i32 2
  %call19 = tail call i32 @iio_update_buffers(ptr noundef %5, ptr noundef null, ptr noundef %buffer18) #4
  %buf.1.in = getelementptr inbounds %struct.list_head, ptr %buf.144, i32 0, i32 1
  %6 = ptrtoint ptr %buf.1.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %buf.1 = load ptr, ptr %buf.1.in, align 4
  %cmp14.not = icmp eq ptr %buf.1, %hwc
  br i1 %cmp14.not, label %for.body16.cleanup_crit_edge, label %for.body16.for.body16_crit_edge

for.body16.for.body16_crit_edge:                  ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body16

for.body16.cleanup_crit_edge:                     ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.body16.cleanup_crit_edge, %for.cond11.preheader.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %for.cond11.preheader.cleanup_crit_edge ], [ %call, %for.body16.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_update_buffers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iio_hw_consumer_disable(ptr noundef readonly %hwc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwc to i32
  call void @__asan_load4_noabort(i32 %0)
  %buf.011 = load ptr, ptr %hwc, align 4
  %cmp.not12 = icmp eq ptr %buf.011, %hwc
  br i1 %cmp.not12, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %buf.013 = phi ptr [ %buf.0, %for.body.for.body_crit_edge ], [ %buf.011, %entry.for.body_crit_edge ]
  %indio_dev = getelementptr inbounds %struct.hw_consumer_buffer, ptr %buf.013, i32 0, i32 1
  %1 = ptrtoint ptr %indio_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %indio_dev, align 4
  %buffer = getelementptr inbounds %struct.hw_consumer_buffer, ptr %buf.013, i32 0, i32 2
  %call = tail call i32 @iio_update_buffers(ptr noundef %2, ptr noundef null, ptr noundef %buffer) #4
  %3 = ptrtoint ptr %buf.013 to i32
  call void @__asan_load4_noabort(i32 %3)
  %buf.0 = load ptr, ptr %buf.013, align 4
  %cmp.not = icmp eq ptr %buf.0, %hwc
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_buffer_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iio_hw_buf_release(ptr noundef %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %buffer, i32 -12
  tail call void @kfree(ptr noundef %add.ptr.i) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @__ksymtab_iio_hw_consumer_alloc, !1, !"__ksymtab_iio_hw_consumer_alloc", i1 false, i1 false}
!1 = !{!"../drivers/iio/buffer/industrialio-hw-consumer.c", i32 123, i32 1}
!2 = !{ptr @__ksymtab_iio_hw_consumer_free, !3, !"__ksymtab_iio_hw_consumer_free", i1 false, i1 false}
!3 = !{!"../drivers/iio/buffer/industrialio-hw-consumer.c", i32 138, i32 1}
!4 = !{ptr @__ksymtab_devm_iio_hw_consumer_alloc, !5, !"__ksymtab_devm_iio_hw_consumer_alloc", i1 false, i1 false}
!5 = !{!"../drivers/iio/buffer/industrialio-hw-consumer.c", i32 170, i32 1}
!6 = !{ptr @__ksymtab_iio_hw_consumer_enable, !7, !"__ksymtab_iio_hw_consumer_enable", i1 false, i1 false}
!7 = !{!"../drivers/iio/buffer/industrialio-hw-consumer.c", i32 196, i32 1}
!8 = !{ptr @__ksymtab_iio_hw_consumer_disable, !9, !"__ksymtab_iio_hw_consumer_disable", i1 false, i1 false}
!9 = !{!"../drivers/iio/buffer/industrialio-hw-consumer.c", i32 209, i32 1}
!10 = !{ptr @__UNIQUE_ID_author183, !11, !"__UNIQUE_ID_author183", i1 false, i1 false}
!11 = !{!"../drivers/iio/buffer/industrialio-hw-consumer.c", i32 211, i32 1}
!12 = !{ptr @__UNIQUE_ID_description184, !13, !"__UNIQUE_ID_description184", i1 false, i1 false}
!13 = !{!"../drivers/iio/buffer/industrialio-hw-consumer.c", i32 212, i32 1}
!14 = !{ptr @__UNIQUE_ID_file185, !15, !"__UNIQUE_ID_file185", i1 false, i1 false}
!15 = !{!"../drivers/iio/buffer/industrialio-hw-consumer.c", i32 213, i32 1}
!16 = !{ptr @__UNIQUE_ID_license186, !15, !"__UNIQUE_ID_license186", i1 false, i1 false}
!17 = !{ptr @iio_hw_buf_access, !18, !"iio_hw_buf_access", i1 false, i1 false}
!18 = !{!"../drivers/iio/buffer/industrialio-hw-consumer.c", i32 47, i32 45}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
