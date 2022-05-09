; ModuleID = '/llk/IR_all_yes/drivers/iio/buffer/industrialio-buffer-dmaengine.c_pt.bc'
source_filename = "../drivers/iio/buffer/industrialio-buffer-dmaengine.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+devm_iio_dmaengine_buffer_setup\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_iio_dmaengine_buffer_setup\09\09\09\09"
module asm "\09.long\09__crc_devm_iio_dmaengine_buffer_setup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_iio_dmaengine_buffer_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_iio_dmaengine_buffer_setup\22\09\09\09\09\09"
module asm "__kstrtabns_devm_iio_dmaengine_buffer_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.iio_dma_buffer_ops = type { ptr, ptr }
%struct.iio_buffer_access_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dma_slave_caps = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i8 }
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
%struct.dmaengine_buffer = type { %struct.iio_dma_buffer_queue, ptr, %struct.list_head, i32, i32 }
%struct.iio_dma_buffer_queue = type { %struct.iio_buffer, ptr, ptr, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, i8, %struct.iio_dma_buffer_queue_fileio }
%struct.iio_buffer = type { i32, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.wait_queue_head, i32, i8, %struct.list_head, %struct.attribute_group, ptr, ptr, %struct.list_head, %struct.list_head, %struct.kref }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dma_buffer_queue_fileio = type { [2 x ptr], ptr, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.iio_dma_buffer_block = type { %struct.list_head, i32, ptr, i32, i32, ptr, %struct.kref, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }

@__kstrtab_devm_iio_dmaengine_buffer_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_iio_dmaengine_buffer_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_iio_dmaengine_buffer_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_iio_dmaengine_buffer_setup to i32), ptr @__kstrtab_devm_iio_dmaengine_buffer_setup, ptr @__kstrtabns_devm_iio_dmaengine_buffer_setup }, section "___ksymtab_gpl+devm_iio_dmaengine_buffer_setup", align 4
@__UNIQUE_ID_author236 = internal constant [74 x i8] c"industrialio_buffer_dmaengine.author=Lars-Peter Clausen <lars@metafoo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description237 = internal constant [75 x i8] c"industrialio_buffer_dmaengine.description=DMA buffer for the IIO framework\00", section ".modinfo", align 1
@__UNIQUE_ID_file238 = internal constant [84 x i8] c"industrialio_buffer_dmaengine.file=drivers/iio/buffer/industrialio-buffer-dmaengine\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [42 x i8] c"industrialio_buffer_dmaengine.license=GPL\00", section ".modinfo", align 1
@iio_dmaengine_default_ops = internal constant { %struct.iio_dma_buffer_ops, [24 x i8] } { %struct.iio_dma_buffer_ops { ptr @iio_dmaengine_buffer_submit_block, ptr @iio_dmaengine_buffer_abort }, [24 x i8] zeroinitializer }, align 32
@iio_dmaengine_buffer_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @iio_dev_attr_length_align_bytes, ptr null], [24 x i8] zeroinitializer }, align 32
@iio_dmaengine_buffer_ops = internal constant { %struct.iio_buffer_access_funcs, [40 x i8] } { %struct.iio_buffer_access_funcs { ptr null, ptr @iio_dma_buffer_read, ptr @iio_dma_buffer_data_available, ptr null, ptr null, ptr null, ptr @iio_dma_buffer_request_update, ptr @iio_dma_buffer_set_bytes_per_datum, ptr @iio_dma_buffer_set_length, ptr @iio_dma_buffer_enable, ptr @iio_dma_buffer_disable, ptr @iio_dmaengine_buffer_release, i32 8, i32 1 }, [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dmaengine.h\00", [38 x i8] zeroinitializer }, align 32
@iio_dev_attr_length_align_bytes = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.1, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_dmaengine_buffer_get_length_align, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"length_align_bytes\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%zu\0A\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [26 x i8] c"iio_dmaengine_default_ops\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 127, i32 40 }
@___asan_gen_.6 = private unnamed_addr constant [27 x i8] c"iio_dmaengine_buffer_attrs\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 145, i32 32 }
@___asan_gen_.9 = private unnamed_addr constant [25 x i8] c"iio_dmaengine_buffer_ops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 113, i32 45 }
@___asan_gen_.13 = private unnamed_addr constant [29 x i8] c"../include/linux/dmaengine.h\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 1169, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant [32 x i8] c"iio_dev_attr_length_align_bytes\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 142, i32 8 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private constant [54 x i8] c"../drivers/iio/buffer/industrialio-buffer-dmaengine.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 139, i32 22 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__ksymtab_devm_iio_dmaengine_buffer_setup, ptr @iio_dmaengine_default_ops, ptr @iio_dmaengine_buffer_attrs, ptr @iio_dmaengine_buffer_ops, ptr @.str, ptr @iio_dev_attr_length_align_bytes, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dmaengine_default_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dmaengine_buffer_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dmaengine_buffer_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_length_align_bytes to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devm_iio_dmaengine_buffer_setup(ptr nocapture readnone %dev, ptr noundef %indio_dev, ptr noundef %channel) #0 align 64 {
entry:
  %caps.i.i = alloca %struct.dma_slave_caps, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %caps.i.i) #7
  %2 = call ptr @memset(ptr %caps.i.i, i32 255, i32 36)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 352) #10
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %devm_iio_dmaengine_buffer_alloc.exit.thread, label %if.end.i.i

devm_iio_dmaengine_buffer_alloc.exit.thread:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %caps.i.i) #7
  br label %if.then

if.end.i.i:                                       ; preds = %entry
  %call2.i.i = tail call ptr @dma_request_chan(ptr noundef %1, ptr noundef %channel) #7
  %cmp.i.i.i = icmp ugt ptr %call2.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then4.i.i, label %if.end6.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call2.i.i to i32
  br label %err_free.i.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  %call7.i.i = call i32 @dma_get_slave_caps(ptr noundef %call2.i.i, ptr noundef nonnull %caps.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %cmp.i.i = icmp slt i32 %call7.i.i, 0
  br i1 %cmp.i.i, label %if.end6.i.i.err_free.i.i_crit_edge, label %if.end9.i.i

if.end6.i.i.err_free.i.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free.i.i

if.end9.i.i:                                      ; preds = %if.end6.i.i
  %5 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %caps.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool10.not.i.i = icmp eq i32 %6, 0
  %7 = call i32 @llvm.cttz.i32(i32 %6, i1 true) #7, !range !31
  %spec.select.i.i = select i1 %tobool10.not.i.i, i32 1, i32 %7
  %dst_addr_widths.i.i = getelementptr inbounds %struct.dma_slave_caps, ptr %caps.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %dst_addr_widths.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dst_addr_widths.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool15.not.i.i = icmp eq i32 %9, 0
  %10 = call i32 @llvm.cttz.i32(i32 %9, i1 true) #7, !range !31
  %dest_width.0.i.i = select i1 %tobool15.not.i.i, i32 1, i32 %10
  %11 = call i32 @llvm.umax.i32(i32 %spec.select.i.i, i32 %dest_width.0.i.i) #7
  %active.i.i = getelementptr inbounds %struct.dmaengine_buffer, ptr %call7.i.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %active.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %active.i.i, ptr %active.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.dmaengine_buffer, ptr %call7.i.i.i.i, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %active.i.i, ptr %prev.i.i.i, align 4
  %chan22.i.i = getelementptr inbounds %struct.dmaengine_buffer, ptr %call7.i.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %chan22.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call2.i.i, ptr %chan22.i.i, align 4
  %align.i.i = getelementptr inbounds %struct.dmaengine_buffer, ptr %call7.i.i.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %align.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %11, ptr %align.i.i, align 8
  %16 = ptrtoint ptr %call2.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call2.i.i, align 4
  %dev23.i.i = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 15
  %18 = ptrtoint ptr %dev23.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev23.i.i, align 4
  %dma_parms.i.i.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 22
  %20 = ptrtoint ptr %dma_parms.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dma_parms.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i.i, label %if.end9.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end9.i.i.if.end.i.i.i_crit_edge:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end9.i.i
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool2.not.i.i.i = icmp eq i32 %23, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i.dma_get_max_seg_size.exit.i.i_crit_edge

land.lhs.true.i.i.i.dma_get_max_seg_size.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_get_max_seg_size.exit.i.i

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.end9.i.i.if.end.i.i.i_crit_edge
  br label %dma_get_max_seg_size.exit.i.i

dma_get_max_seg_size.exit.i.i:                    ; preds = %if.end.i.i.i, %land.lhs.true.i.i.i.dma_get_max_seg_size.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ 65536, %if.end.i.i.i ], [ %23, %land.lhs.true.i.i.i.dma_get_max_seg_size.exit.i.i_crit_edge ]
  %max_size.i.i = getelementptr inbounds %struct.dmaengine_buffer, ptr %call7.i.i.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %max_size.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %retval.0.i.i.i, ptr %max_size.i.i, align 4
  %25 = ptrtoint ptr %call2.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call2.i.i, align 4
  %dev26.i.i = getelementptr inbounds %struct.dma_device, ptr %26, i32 0, i32 15
  %27 = ptrtoint ptr %dev26.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev26.i.i, align 4
  %call27.i.i = call i32 @iio_dma_buffer_init(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %28, ptr noundef nonnull @iio_dmaengine_default_ops) #7
  %attrs.i.i = getelementptr inbounds %struct.iio_buffer, ptr %call7.i.i.i.i, i32 0, i32 12
  %29 = ptrtoint ptr %attrs.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @iio_dmaengine_buffer_attrs, ptr %attrs.i.i, align 8
  %access.i.i = getelementptr inbounds %struct.iio_buffer, ptr %call7.i.i.i.i, i32 0, i32 4
  %30 = ptrtoint ptr %access.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @iio_dmaengine_buffer_ops, ptr %access.i.i, align 8
  br label %iio_dmaengine_buffer_alloc.exit.i

err_free.i.i:                                     ; preds = %if.end6.i.i.err_free.i.i_crit_edge, %if.then4.i.i
  %ret.0.i.i = phi i32 [ %4, %if.then4.i.i ], [ %call7.i.i, %if.end6.i.i.err_free.i.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #7
  %31 = inttoptr i32 %ret.0.i.i to ptr
  br label %iio_dmaengine_buffer_alloc.exit.i

iio_dmaengine_buffer_alloc.exit.i:                ; preds = %err_free.i.i, %dma_get_max_seg_size.exit.i.i
  %retval.0.i.i = phi ptr [ %31, %err_free.i.i ], [ %call7.i.i.i.i, %dma_get_max_seg_size.exit.i.i ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %caps.i.i) #7
  %cmp.i12.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i12.i, label %iio_dmaengine_buffer_alloc.exit.i.devm_iio_dmaengine_buffer_alloc.exit_crit_edge, label %if.end.i

iio_dmaengine_buffer_alloc.exit.i.devm_iio_dmaengine_buffer_alloc.exit_crit_edge: ; preds = %iio_dmaengine_buffer_alloc.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %devm_iio_dmaengine_buffer_alloc.exit

if.end.i:                                         ; preds = %iio_dmaengine_buffer_alloc.exit.i
  %call.i.i = call i32 @devm_add_action(ptr noundef %1, ptr noundef nonnull @__devm_iio_dmaengine_buffer_free, ptr noundef %retval.0.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i13.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i13.i, label %if.end.i.devm_iio_dmaengine_buffer_alloc.exit_crit_edge, label %if.then3.i

if.end.i.devm_iio_dmaengine_buffer_alloc.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %devm_iio_dmaengine_buffer_alloc.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @iio_dma_buffer_exit(ptr noundef %retval.0.i.i) #7
  %chan.i.i.i.i = getelementptr inbounds %struct.dmaengine_buffer, ptr %retval.0.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %chan.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chan.i.i.i.i, align 4
  call void @dma_release_channel(ptr noundef %33) #7
  call void @iio_buffer_put(ptr noundef %retval.0.i.i) #7
  %34 = inttoptr i32 %call.i.i to ptr
  br label %devm_iio_dmaengine_buffer_alloc.exit

devm_iio_dmaengine_buffer_alloc.exit:             ; preds = %if.then3.i, %if.end.i.devm_iio_dmaengine_buffer_alloc.exit_crit_edge, %iio_dmaengine_buffer_alloc.exit.i.devm_iio_dmaengine_buffer_alloc.exit_crit_edge
  %retval.0.i = phi ptr [ %34, %if.then3.i ], [ %retval.0.i.i, %iio_dmaengine_buffer_alloc.exit.i.devm_iio_dmaengine_buffer_alloc.exit_crit_edge ], [ %retval.0.i.i, %if.end.i.devm_iio_dmaengine_buffer_alloc.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %devm_iio_dmaengine_buffer_alloc.exit.if.then_crit_edge, label %if.end

devm_iio_dmaengine_buffer_alloc.exit.if.then_crit_edge: ; preds = %devm_iio_dmaengine_buffer_alloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %devm_iio_dmaengine_buffer_alloc.exit.if.then_crit_edge, %devm_iio_dmaengine_buffer_alloc.exit.thread
  %retval.0.i11 = phi ptr [ inttoptr (i32 -12 to ptr), %devm_iio_dmaengine_buffer_alloc.exit.thread ], [ %retval.0.i, %devm_iio_dmaengine_buffer_alloc.exit.if.then_crit_edge ]
  %35 = ptrtoint ptr %retval.0.i11 to i32
  br label %cleanup

if.end:                                           ; preds = %devm_iio_dmaengine_buffer_alloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %indio_dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %indio_dev, align 8
  %or = or i32 %37, 8
  store i32 %or, ptr %indio_dev, align 8
  %call4 = call i32 @iio_device_attach_buffer(ptr noundef %indio_dev, ptr noundef %retval.0.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %35, %if.then ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_attach_buffer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__devm_iio_dmaengine_buffer_free(ptr noundef %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @iio_dma_buffer_exit(ptr noundef %buffer) #7
  %chan.i = getelementptr inbounds %struct.dmaengine_buffer, ptr %buffer, i32 0, i32 1
  %0 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan.i, align 4
  tail call void @dma_release_channel(ptr noundef %1) #7
  tail call void @iio_buffer_put(ptr noundef %buffer) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_get_slave_caps(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_dma_buffer_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iio_dmaengine_buffer_submit_block(ptr noundef %queue, ptr noundef %block) #0 align 64 {
entry:
  %sg.i = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.iio_dma_buffer_block, ptr %block, i32 0, i32 4
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  %max_size = getelementptr inbounds %struct.dmaengine_buffer, ptr %queue, i32 0, i32 4
  %2 = ptrtoint ptr %max_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_size, align 4
  %4 = tail call i32 @llvm.umin.i32(i32 %1, i32 %3)
  %bytes_used = getelementptr inbounds %struct.iio_dma_buffer_block, ptr %block, i32 0, i32 1
  %5 = ptrtoint ptr %bytes_used to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %bytes_used, align 4
  %align = getelementptr inbounds %struct.dmaengine_buffer, ptr %queue, i32 0, i32 3
  %6 = ptrtoint ptr %align to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %align, align 4
  %neg = sub i32 0, %7
  %and = and i32 %4, %neg
  store i32 %and, ptr %bytes_used, align 4
  %chan = getelementptr inbounds %struct.dmaengine_buffer, ptr %queue, i32 0, i32 1
  %8 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chan, align 4
  %phys_addr = getelementptr inbounds %struct.iio_dma_buffer_block, ptr %block, i32 0, i32 3
  %10 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %phys_addr, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i) #7
  %12 = getelementptr inbounds %struct.scatterlist, ptr %sg.i, i32 0, i32 3
  %13 = getelementptr inbounds %struct.scatterlist, ptr %sg.i, i32 0, i32 4
  %14 = call ptr @memset(ptr %sg.i, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %sg.i, i32 noundef 1) #7
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %11, ptr %12, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and, ptr %13, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %entry.dmaengine_prep_slave_single.exit.thread_crit_edge, label %lor.lhs.false.i

entry.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_prep_slave_single.exit.thread

lor.lhs.false.i:                                  ; preds = %entry
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %9, align 4
  %tobool1.not.i = icmp eq ptr %18, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_prep_slave_single.exit.thread

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %18, i32 0, i32 39
  %19 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %20, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge, label %dmaengine_prep_slave_single.exit

lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_prep_slave_single.exit.thread

dmaengine_prep_slave_single.exit.thread:          ; preds = %lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge, %lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge, %entry.dmaengine_prep_slave_single.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #7
  br label %cleanup

dmaengine_prep_slave_single.exit:                 ; preds = %lor.lhs.false2.i
  %call.i = call ptr %20(ptr noundef nonnull %9, ptr noundef nonnull %sg.i, i32 noundef 1, i32 noundef 2, i32 noundef 1, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %dmaengine_prep_slave_single.exit.cleanup_crit_edge, label %if.end

dmaengine_prep_slave_single.exit.cleanup_crit_edge: ; preds = %dmaengine_prep_slave_single.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %dmaengine_prep_slave_single.exit
  %callback_result = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 7
  %21 = ptrtoint ptr %callback_result to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @iio_dmaengine_buffer_block_done, ptr %callback_result, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 8
  %22 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %block, ptr %callback_param, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 4
  %23 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tx_submit.i, align 4
  %call.i37 = call i32 %24(ptr noundef nonnull %call.i) #7
  %25 = call i32 @llvm.smin.i32(i32 %call.i37, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i37)
  %tobool7.not = icmp sgt i32 %call.i37, -1
  br i1 %tobool7.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %list_lock = getelementptr inbounds %struct.iio_dma_buffer_queue, ptr %queue, i32 0, i32 4
  call void @_raw_spin_lock_irq(ptr noundef %list_lock) #7
  %active = getelementptr inbounds %struct.dmaengine_buffer, ptr %queue, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.dmaengine_buffer, ptr %queue, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %block, ptr noundef %27, ptr noundef %active) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end10.list_add_tail.exit_crit_edge

if.end10.list_add_tail.exit_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %block, ptr %prev.i, align 4
  %29 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %active, ptr %block, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %block, i32 0, i32 1
  %30 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %block, ptr %27, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end10.list_add_tail.exit_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %list_lock) #7
  %32 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chan, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %35, i32 0, i32 50
  %36 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %device_issue_pending.i, align 4
  call void %37(ptr noundef %33) #7
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.end.cleanup_crit_edge, %dmaengine_prep_slave_single.exit.cleanup_crit_edge, %dmaengine_prep_slave_single.exit.thread
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -12, %dmaengine_prep_slave_single.exit.cleanup_crit_edge ], [ -12, %dmaengine_prep_slave_single.exit.thread ], [ %25, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iio_dmaengine_buffer_abort(ptr noundef %queue) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chan = getelementptr inbounds %struct.dmaengine_buffer, ptr %queue, i32 0, i32 1
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 47
  %4 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %entry.dmaengine_terminate_sync.exit_crit_edge, label %dmaengine_terminate_async.exit.i

entry.dmaengine_terminate_sync.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_terminate_sync.exit

dmaengine_terminate_async.exit.i:                 ; preds = %entry
  %call.i.i = tail call i32 %5(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge

dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_terminate_sync.exit

if.end.i:                                         ; preds = %dmaengine_terminate_async.exit.i
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 1169) #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 48
  %8 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %9, null
  br i1 %tobool.not.i1.i, label %if.end.i.dmaengine_terminate_sync.exit_crit_edge, label %if.then.i2.i

if.end.i.dmaengine_terminate_sync.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_terminate_sync.exit

if.then.i2.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %9(ptr noundef %1) #7
  br label %dmaengine_terminate_sync.exit

dmaengine_terminate_sync.exit:                    ; preds = %if.then.i2.i, %if.end.i.dmaengine_terminate_sync.exit_crit_edge, %dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge, %entry.dmaengine_terminate_sync.exit_crit_edge
  %active = getelementptr inbounds %struct.dmaengine_buffer, ptr %queue, i32 0, i32 2
  tail call void @iio_dma_buffer_block_list_abort(ptr noundef %queue, ptr noundef %active) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iio_dmaengine_buffer_block_done(ptr noundef %data, ptr nocapture noundef readonly %result) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.iio_dma_buffer_block, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %list_lock = getelementptr inbounds %struct.iio_dma_buffer_queue, ptr %1, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %list_lock) #7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %data) #7
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %data, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %data, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %10 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %queue, align 4
  %list_lock6 = getelementptr inbounds %struct.iio_dma_buffer_queue, ptr %11, i32 0, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %list_lock6, i32 noundef %call2) #7
  %residue = getelementptr inbounds %struct.dmaengine_result, ptr %result, i32 0, i32 1
  %12 = ptrtoint ptr %residue to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %residue, align 4
  %bytes_used = getelementptr inbounds %struct.iio_dma_buffer_block, ptr %data, i32 0, i32 1
  %14 = ptrtoint ptr %bytes_used to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bytes_used, align 4
  %sub = sub i32 %15, %13
  store i32 %sub, ptr %bytes_used, align 4
  tail call void @iio_dma_buffer_block_done(ptr noundef %data) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_dma_buffer_block_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_dma_buffer_block_list_abort(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iio_dmaengine_buffer_get_length_align(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer1 = getelementptr inbounds %struct.iio_dev_attr, ptr %attr, i32 0, i32 4
  %0 = ptrtoint ptr %buffer1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer1, align 4
  %align = getelementptr inbounds %struct.dmaengine_buffer, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %align to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %align, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i32 noundef %3)
  ret i32 %call2
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_dma_buffer_read(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_dma_buffer_data_available(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_dma_buffer_request_update(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_dma_buffer_set_bytes_per_datum(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_dma_buffer_set_length(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_dma_buffer_enable(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_dma_buffer_disable(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iio_dmaengine_buffer_release(ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @iio_dma_buffer_release(ptr noundef %buf) #7
  tail call void @kfree(ptr noundef %buf) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_dma_buffer_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_dma_buffer_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_buffer_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @__ksymtab_devm_iio_dmaengine_buffer_setup, !1, !"__ksymtab_devm_iio_dmaengine_buffer_setup", i1 false, i1 false}
!1 = !{!"../drivers/iio/buffer/industrialio-buffer-dmaengine.c", i32 291, i32 1}
!2 = !{ptr @__UNIQUE_ID_author236, !3, !"__UNIQUE_ID_author236", i1 false, i1 false}
!3 = !{!"../drivers/iio/buffer/industrialio-buffer-dmaengine.c", i32 293, i32 1}
!4 = !{ptr @__UNIQUE_ID_description237, !5, !"__UNIQUE_ID_description237", i1 false, i1 false}
!5 = !{!"../drivers/iio/buffer/industrialio-buffer-dmaengine.c", i32 294, i32 1}
!6 = !{ptr @__UNIQUE_ID_file238, !7, !"__UNIQUE_ID_file238", i1 false, i1 false}
!7 = !{!"../drivers/iio/buffer/industrialio-buffer-dmaengine.c", i32 295, i32 1}
!8 = !{ptr @__UNIQUE_ID_license239, !7, !"__UNIQUE_ID_license239", i1 false, i1 false}
!9 = !{ptr @iio_dmaengine_default_ops, !10, !"iio_dmaengine_default_ops", i1 false, i1 false}
!10 = !{!"../drivers/iio/buffer/industrialio-buffer-dmaengine.c", i32 127, i32 40}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../include/linux/dmaengine.h", i32 1169, i32 2}
!13 = !{ptr @iio_dmaengine_buffer_attrs, !14, !"iio_dmaengine_buffer_attrs", i1 false, i1 false}
!14 = !{!"../drivers/iio/buffer/industrialio-buffer-dmaengine.c", i32 145, i32 32}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/iio/buffer/industrialio-buffer-dmaengine.c", i32 142, i32 8}
!17 = !{ptr @iio_dev_attr_length_align_bytes, !16, !"iio_dev_attr_length_align_bytes", i1 false, i1 false}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/buffer/industrialio-buffer-dmaengine.c", i32 139, i32 22}
!20 = !{ptr @iio_dmaengine_buffer_ops, !21, !"iio_dmaengine_buffer_ops", i1 false, i1 false}
!21 = !{!"../drivers/iio/buffer/industrialio-buffer-dmaengine.c", i32 113, i32 45}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{i32 0, i32 33}
