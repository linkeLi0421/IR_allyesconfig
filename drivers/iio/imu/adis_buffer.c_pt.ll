; ModuleID = '/llk/IR_all_yes/drivers/iio/imu/adis_buffer.c_pt.bc'
source_filename = "../drivers/iio/imu/adis_buffer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+adis_update_scan_mode\22, \22a\22\09"
module asm "\09.weak\09__crc_adis_update_scan_mode\09\09\09\09"
module asm "\09.long\09__crc_adis_update_scan_mode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_adis_update_scan_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22adis_update_scan_mode\22\09\09\09\09\09"
module asm "__kstrtabns_adis_update_scan_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devm_adis_setup_buffer_and_trigger\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_adis_setup_buffer_and_trigger\09\09\09\09"
module asm "\09.long\09__crc_devm_adis_setup_buffer_and_trigger\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_adis_setup_buffer_and_trigger:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_adis_setup_buffer_and_trigger\22\09\09\09\09\09"
module asm "__kstrtabns_devm_adis_setup_buffer_and_trigger:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.adis = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.spi_message, ptr, i32, i32, ptr, [76 x i8], [10 x i8], [4 x i8], [114 x i8] }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.adis_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, ptr, i32, ptr, i8, i8, i32, i32, i32, i32 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.67, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.67 = type { i8, i8, i8, i8, i8, i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.iio_poll_func = type { ptr, ptr, ptr, i32, ptr, i32, i64 }

@__kstrtab_adis_update_scan_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_adis_update_scan_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_adis_update_scan_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @adis_update_scan_mode to i32), ptr @__kstrtab_adis_update_scan_mode, ptr @__kstrtabns_adis_update_scan_mode }, section "___ksymtab_gpl+adis_update_scan_mode", align 4
@__kstrtab_devm_adis_setup_buffer_and_trigger = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_adis_setup_buffer_and_trigger = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_adis_setup_buffer_and_trigger = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_adis_setup_buffer_and_trigger to i32), ptr @__kstrtab_devm_adis_setup_buffer_and_trigger, ptr @__kstrtabns_devm_adis_setup_buffer_and_trigger }, section "___ksymtab_gpl+devm_adis_setup_buffer_and_trigger", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@adis_trigger_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 143, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to change device page: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"adis_trigger_handler\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/iio/imu/adis_buffer.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adis_trigger_handler._entry_ptr = internal global ptr @adis_trigger_handler._entry, section ".printk_index", align 4
@adis_trigger_handler._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 156, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to read data: %d\00", [40 x i8] zeroinitializer }, align 32
@adis_trigger_handler._entry_ptr.7 = internal global ptr @adis_trigger_handler._entry.5, section ".printk_index", align 4
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 143, i32 5 }
@___asan_gen_.26 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private constant [33 x i8] c"../drivers/iio/imu/adis_buffer.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 156, i32 3 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__ksymtab_adis_update_scan_mode, ptr @__ksymtab_devm_adis_setup_buffer_and_trigger, ptr @adis_trigger_handler._entry, ptr @adis_trigger_handler._entry.5, ptr @adis_trigger_handler._entry_ptr, ptr @adis_trigger_handler._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis_trigger_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis_trigger_handler._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adis_update_scan_mode(ptr nocapture noundef readonly %indio_dev, ptr noundef %scan_mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %xfer = getelementptr inbounds %struct.adis, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xfer, align 4
  tail call void @kfree(ptr noundef %3) #7
  %buffer = getelementptr inbounds %struct.adis, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 16
  tail call void @kfree(ptr noundef %5) #7
  %data = getelementptr inbounds %struct.adis, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 8
  %burst_len = getelementptr inbounds %struct.adis_data, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %burst_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %burst_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i, align 4
  %data.i = getelementptr inbounds %struct.adis, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 8
  %burst_len.i = getelementptr inbounds %struct.adis_data, ptr %13, i32 0, i32 18
  %14 = ptrtoint ptr %burst_len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %burst_len.i, align 4
  %burst_extra_len.i = getelementptr inbounds %struct.adis, ptr %11, i32 0, i32 3
  %16 = ptrtoint ptr %burst_extra_len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %burst_extra_len.i, align 4
  %add.i = add i32 %17, %15
  %burst_max_len.i = getelementptr inbounds %struct.adis_data, ptr %13, i32 0, i32 19
  %18 = ptrtoint ptr %burst_max_len.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %burst_max_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  %add..i = select i1 %tobool.not.i, i32 %add.i, i32 %19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 192) #10
  %xfer.i = getelementptr inbounds %struct.adis, ptr %11, i32 0, i32 6
  %21 = ptrtoint ptr %xfer.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i.i.i, ptr %xfer.i, align 4
  %tobool6.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool6.not.i, label %if.then.cleanup_crit_edge, label %if.end8.i.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8.i.i.i:                                    ; preds = %if.then
  %add9.i = add i32 %add..i, 2
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add9.i, i32 noundef 3520) #11
  %buffer.i = getelementptr inbounds %struct.adis, ptr %11, i32 0, i32 9
  %22 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call9.i.i.i, ptr %buffer.i, align 16
  %tobool12.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool12.not.i, label %if.then13.i, label %if.end16.i

if.then13.i:                                      ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %xfer.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %xfer.i, align 4
  tail call void @kfree(ptr noundef %24) #7
  %25 = ptrtoint ptr %xfer.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %xfer.i, align 4
  br label %cleanup

if.end16.i:                                       ; preds = %if.end8.i.i.i
  %add.ptr.i = getelementptr i8, ptr %call9.i.i.i, i32 %add..i
  %26 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i, align 8
  %burst_reg_cmd.i = getelementptr inbounds %struct.adis_data, ptr %27, i32 0, i32 17
  %28 = ptrtoint ptr %burst_reg_cmd.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %burst_reg_cmd.i, align 4
  %30 = trunc i32 %29 to i8
  %conv.i = and i8 %30, 127
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv.i, ptr %add.ptr.i, align 1
  %arrayidx19.i = getelementptr i8, ptr %add.ptr.i, i32 1
  %32 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %arrayidx19.i, align 1
  %33 = ptrtoint ptr %xfer.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %xfer.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr.i, ptr %34, align 4
  %36 = load ptr, ptr %xfer.i, align 4
  %bits_per_word.i = getelementptr inbounds %struct.spi_transfer, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %bits_per_word.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 8, ptr %bits_per_word.i, align 1
  %38 = load ptr, ptr %xfer.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %len.i, align 4
  %40 = load ptr, ptr %data.i, align 8
  %burst_max_speed_hz.i = getelementptr inbounds %struct.adis_data, ptr %40, i32 0, i32 20
  %41 = ptrtoint ptr %burst_max_speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %burst_max_speed_hz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool27.not.i = icmp eq i32 %42, 0
  br i1 %tobool27.not.i, label %if.end16.i.if.end33.i_crit_edge, label %if.then28.i

if.end16.i.if.end33.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.i

if.then28.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %xfer.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %xfer.i, align 4
  %speed_hz.i = getelementptr inbounds %struct.spi_transfer, ptr %44, i32 0, i32 12
  %45 = ptrtoint ptr %speed_hz.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %42, ptr %speed_hz.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then28.i, %if.end16.i.if.end33.i_crit_edge
  %46 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %buffer.i, align 16
  %48 = ptrtoint ptr %xfer.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %xfer.i, align 4
  %rx_buf.i = getelementptr %struct.spi_transfer, ptr %49, i32 1, i32 1
  %50 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %rx_buf.i, align 4
  %51 = load ptr, ptr %xfer.i, align 4
  %bits_per_word39.i = getelementptr %struct.spi_transfer, ptr %51, i32 1, i32 8
  %52 = ptrtoint ptr %bits_per_word39.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 8, ptr %bits_per_word39.i, align 1
  %53 = load ptr, ptr %xfer.i, align 4
  %len42.i = getelementptr %struct.spi_transfer, ptr %53, i32 1, i32 2
  %54 = ptrtoint ptr %len42.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %add.i, ptr %len42.i, align 4
  %55 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data.i, align 8
  %burst_max_speed_hz44.i = getelementptr inbounds %struct.adis_data, ptr %56, i32 0, i32 20
  %57 = ptrtoint ptr %burst_max_speed_hz44.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %burst_max_speed_hz44.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool45.not.i = icmp eq i32 %58, 0
  br i1 %tobool45.not.i, label %if.end33.i.if.end52.i_crit_edge, label %if.then46.i

if.end33.i.if.end52.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52.i

if.then46.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %xfer.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %xfer.i, align 4
  %speed_hz51.i = getelementptr %struct.spi_transfer, ptr %60, i32 1, i32 12
  %61 = ptrtoint ptr %speed_hz51.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %58, ptr %speed_hz51.i, align 4
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then46.i, %if.end33.i.if.end52.i_crit_edge
  %msg.i = getelementptr inbounds %struct.adis, ptr %11, i32 0, i32 5
  %62 = getelementptr inbounds %struct.adis, ptr %11, i32 0, i32 5, i32 1
  %63 = call ptr @memset(ptr %62, i32 0, i32 40)
  %64 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.adis, ptr %11, i32 0, i32 5, i32 0, i32 1
  %65 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.adis, ptr %11, i32 0, i32 5, i32 10
  %66 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.adis, ptr %11, i32 0, i32 5, i32 10, i32 1
  %67 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %68 = ptrtoint ptr %xfer.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %xfer.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %69, i32 0, i32 18
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef %msg.i, ptr noundef %msg.i) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i1.i, label %if.end52.i.spi_message_add_tail.exit.i_crit_edge

if.end52.i.spi_message_add_tail.exit.i_crit_edge: ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit.i

if.end.i.i.i1.i:                                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %71 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %69, i32 0, i32 18, i32 1
  %72 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %msg.i, ptr %prev3.i.i.i.i, align 4
  %73 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %transfer_list.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i1.i, %if.end52.i.spi_message_add_tail.exit.i_crit_edge
  %74 = ptrtoint ptr %xfer.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %xfer.i, align 4
  %transfer_list.i2.i = getelementptr %struct.spi_transfer, ptr %75, i32 1, i32 18
  %76 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i4.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i2.i, ptr noundef %77, ptr noundef %msg.i) #7
  br i1 %call.i.i.i4.i, label %if.end.i.i.i6.i, label %spi_message_add_tail.exit.i.cleanup_crit_edge

spi_message_add_tail.exit.i.cleanup_crit_edge:    ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i.i6.i:                                  ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %78 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %transfer_list.i2.i, ptr %prev.i.i.i.i, align 4
  %79 = ptrtoint ptr %transfer_list.i2.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %msg.i, ptr %transfer_list.i2.i, align 4
  %prev3.i.i.i5.i = getelementptr %struct.spi_transfer, ptr %75, i32 1, i32 18, i32 1
  %80 = ptrtoint ptr %prev3.i.i.i5.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %77, ptr %prev3.i.i.i5.i, align 4
  %81 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %transfer_list.i2.i, ptr %77, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %scan_bytes = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 4
  %82 = ptrtoint ptr %scan_bytes to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %scan_bytes, align 4
  %div = sdiv i32 %83, 2
  %add = add nsw i32 %div, 1
  %84 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 96) #7
  %85 = extractvalue { i32, i1 } %84, 1
  br i1 %85, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !25

kcalloc.exit.thread:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %xfer, align 4
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end
  %87 = extractvalue { i32, i1 } %84, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %87, i32 noundef 3520) #11
  %88 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call8.i.i, ptr %xfer, align 4
  %tobool5.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool5.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end7

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end7.i.i
  %89 = ptrtoint ptr %scan_bytes to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %scan_bytes, align 4
  %91 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %90, i32 2) #7
  %92 = extractvalue { i32, i1 } %91, 1
  br i1 %92, label %kcalloc.exit190.thread, label %if.end7.i.i188, !prof !25

kcalloc.exit190.thread:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %93 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %buffer, align 16
  br label %if.then13

if.end7.i.i188:                                   ; preds = %if.end7
  %94 = extractvalue { i32, i1 } %91, 0
  %call8.i.i187 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %94, i32 noundef 3520) #11
  %95 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call8.i.i187, ptr %buffer, align 16
  %tobool12.not = icmp eq ptr %call8.i.i187, null
  br i1 %tobool12.not, label %if.end7.i.i188.if.then13_crit_edge, label %if.end16

if.end7.i.i188.if.then13_crit_edge:               ; preds = %if.end7.i.i188
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13

if.then13:                                        ; preds = %if.end7.i.i188.if.then13_crit_edge, %kcalloc.exit190.thread
  %96 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %xfer, align 4
  tail call void @kfree(ptr noundef %97) #7
  %98 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %xfer, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.end7.i.i188
  %add.ptr = getelementptr i16, ptr %call8.i.i187, i32 %div
  %msg = getelementptr inbounds %struct.adis, ptr %1, i32 0, i32 5
  %99 = getelementptr inbounds %struct.adis, ptr %1, i32 0, i32 5, i32 1
  %100 = call ptr @memset(ptr %99, i32 0, i32 40)
  %101 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.adis, ptr %1, i32 0, i32 5, i32 0, i32 1
  %102 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.adis, ptr %1, i32 0, i32 5, i32 10
  %103 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.adis, ptr %1, i32 0, i32 5, i32 10, i32 1
  %104 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  br label %for.body

for.body:                                         ; preds = %spi_message_add_tail.exit.for.body_crit_edge, %if.end16
  %j.0203 = phi i32 [ 0, %if.end16 ], [ %inc, %spi_message_add_tail.exit.for.body_crit_edge ]
  %105 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %xfer, align 4
  %bits_per_word = getelementptr %struct.spi_transfer, ptr %106, i32 %j.0203, i32 8
  %107 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 8, ptr %bits_per_word, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0203, i32 %div)
  %cmp19.not = icmp eq i32 %j.0203, %div
  br i1 %cmp19.not, label %for.body.if.end23_crit_edge, label %if.then20

for.body.if.end23_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then20:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %108 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %xfer, align 4
  %cs_change = getelementptr %struct.spi_transfer, ptr %109, i32 %j.0203, i32 7
  %110 = ptrtoint ptr %cs_change to i32
  call void @__asan_load1_noabort(i32 %110)
  %bf.load = load i8, ptr %cs_change, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %cs_change, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %for.body.if.end23_crit_edge
  %111 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %xfer, align 4
  %len = getelementptr %struct.spi_transfer, ptr %112, i32 %j.0203, i32 2
  %113 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 2, ptr %len, align 4
  %114 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %data, align 8
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %115, align 4
  %conv = trunc i32 %117 to i16
  %118 = load ptr, ptr %xfer, align 4
  %delay = getelementptr %struct.spi_transfer, ptr %118, i32 %j.0203, i32 9
  %119 = ptrtoint ptr %delay to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %conv, ptr %delay, align 2
  %120 = load ptr, ptr %xfer, align 4
  %unit = getelementptr %struct.spi_transfer, ptr %120, i32 %j.0203, i32 9, i32 1
  %121 = ptrtoint ptr %unit to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %unit, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0203, i32 %div)
  %cmp32 = icmp ult i32 %j.0203, %div
  br i1 %cmp32, label %if.then34, label %if.end23.if.end38_crit_edge

if.end23.if.end38_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then34:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx35 = getelementptr i16, ptr %add.ptr, i32 %j.0203
  %122 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %xfer, align 4
  %arrayidx37 = getelementptr %struct.spi_transfer, ptr %123, i32 %j.0203
  %124 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %arrayidx35, ptr %arrayidx37, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %if.end23.if.end38_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.0203)
  %cmp39.not = icmp eq i32 %j.0203, 0
  br i1 %cmp39.not, label %if.end38.if.end45_crit_edge, label %if.then41

if.end38.if.end45_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %sub = add i32 %j.0203, -1
  %arrayidx42 = getelementptr i16, ptr %call8.i.i187, i32 %sub
  %125 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %xfer, align 4
  %rx_buf = getelementptr %struct.spi_transfer, ptr %126, i32 %j.0203, i32 1
  %127 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %arrayidx42, ptr %rx_buf, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %if.end38.if.end45_crit_edge
  %128 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %xfer, align 4
  %transfer_list.i = getelementptr %struct.spi_transfer, ptr %129, i32 %j.0203, i32 18
  %130 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef %131, ptr noundef %msg) #7
  br i1 %call.i.i.i, label %if.end.i.i.i191, label %if.end45.spi_message_add_tail.exit_crit_edge

if.end45.spi_message_add_tail.exit_crit_edge:     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit

if.end.i.i.i191:                                  ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %132 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %133 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr %struct.spi_transfer, ptr %129, i32 %j.0203, i32 18, i32 1
  %134 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %131, ptr %prev3.i.i.i, align 4
  %135 = ptrtoint ptr %131 to i32
  call void @__asan_store4_noabort(i32 %135)
  store volatile ptr %transfer_list.i, ptr %131, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i191, %if.end45.spi_message_add_tail.exit_crit_edge
  %inc = add i32 %j.0203, 1
  %cmp.not = icmp ugt i32 %inc, %div
  br i1 %cmp.not, label %for.end, label %spi_message_add_tail.exit.for.body_crit_edge

spi_message_add_tail.exit.for.body_crit_edge:     ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %spi_message_add_tail.exit
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 14
  %136 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %cmp50205.not = icmp eq i32 %137, 0
  br i1 %cmp50205.not, label %for.end.cleanup_crit_edge, label %for.body52.preheader

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body52.preheader:                             ; preds = %for.end
  %channels = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 13
  %138 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %channels, align 8
  br label %for.body52

for.body52:                                       ; preds = %for.inc68.for.body52_crit_edge, %for.body52.preheader
  %tx.0209 = phi ptr [ %tx.2, %for.inc68.for.body52_crit_edge ], [ %add.ptr, %for.body52.preheader ]
  %i.0208 = phi i32 [ %inc69, %for.inc68.for.body52_crit_edge ], [ 0, %for.body52.preheader ]
  %chan.0206 = phi ptr [ %incdec.ptr70, %for.inc68.for.body52_crit_edge ], [ %139, %for.body52.preheader ]
  %scan_index = getelementptr inbounds %struct.iio_chan_spec, ptr %chan.0206, i32 0, i32 4
  %140 = ptrtoint ptr %scan_index to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %scan_index, align 4
  %div3.i = lshr i32 %141, 5
  %arrayidx.i = getelementptr i32, ptr %scan_mask, i32 %div3.i
  %142 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %141, 31
  %144 = shl nuw i32 1, %and.i
  %145 = and i32 %144, %143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool54.not = icmp eq i32 %145, 0
  br i1 %tobool54.not, label %for.body52.for.inc68_crit_edge, label %if.end56

for.body52.for.inc68_crit_edge:                   ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc68

if.end56:                                         ; preds = %for.body52
  %storagebits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan.0206, i32 0, i32 5, i32 2
  %146 = ptrtoint ptr %storagebits to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %storagebits, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %147)
  %cmp58 = icmp eq i8 %147, 32
  br i1 %cmp58, label %if.then60, label %if.end56.if.end63_crit_edge

if.end56.if.end63_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.then60:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan.0206, i32 0, i32 3
  %148 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %address, align 4
  %.tr130 = trunc i32 %149 to i16
  %150 = shl i16 %.tr130, 8
  %conv62 = add i16 %150, 512
  %incdec.ptr = getelementptr i16, ptr %tx.0209, i32 1
  %151 = ptrtoint ptr %tx.0209 to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 %conv62, ptr %tx.0209, align 2
  br label %if.end63

if.end63:                                         ; preds = %if.then60, %if.end56.if.end63_crit_edge
  %tx.1 = phi ptr [ %incdec.ptr, %if.then60 ], [ %tx.0209, %if.end56.if.end63_crit_edge ]
  %address64 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan.0206, i32 0, i32 3
  %152 = ptrtoint ptr %address64 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %address64, align 4
  %.tr = trunc i32 %153 to i16
  %conv66 = shl i16 %.tr, 8
  %incdec.ptr67 = getelementptr i16, ptr %tx.1, i32 1
  %154 = ptrtoint ptr %tx.1 to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 %conv66, ptr %tx.1, align 2
  br label %for.inc68

for.inc68:                                        ; preds = %if.end63, %for.body52.for.inc68_crit_edge
  %tx.2 = phi ptr [ %incdec.ptr67, %if.end63 ], [ %tx.0209, %for.body52.for.inc68_crit_edge ]
  %inc69 = add nuw i32 %i.0208, 1
  %incdec.ptr70 = getelementptr %struct.iio_chan_spec, ptr %chan.0206, i32 1
  %155 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %num_channels, align 4
  %cmp50 = icmp ult i32 %inc69, %156
  br i1 %cmp50, label %for.inc68.for.body52_crit_edge, label %for.inc68.cleanup_crit_edge

for.inc68.cleanup_crit_edge:                      ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc68.for.body52_crit_edge:                   ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body52

cleanup:                                          ; preds = %for.inc68.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then13, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread, %if.end.i.i.i6.i, %spi_message_add_tail.exit.i.cleanup_crit_edge, %if.then13.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then13 ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %if.then13.i ], [ -12, %if.then.cleanup_crit_edge ], [ 0, %spi_message_add_tail.exit.i.cleanup_crit_edge ], [ 0, %if.end.i.i.i6.i ], [ -12, %kcalloc.exit.thread ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %for.inc68.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devm_adis_setup_buffer_and_trigger(ptr noundef %adis, ptr noundef %indio_dev, ptr noundef %trigger_handler) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %trigger_handler, null
  %spec.store.select = select i1 %tobool.not, ptr @adis_trigger_handler, ptr %trigger_handler
  %0 = ptrtoint ptr %adis to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adis, align 128
  %call = tail call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %1, ptr noundef %indio_dev, ptr noundef nonnull @iio_pollfunc_store_time, ptr noundef %spec.store.select, i32 noundef 0, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %entry
  %2 = ptrtoint ptr %adis to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adis, align 128
  %irq = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  br i1 %tobool5.not, label %if.end3.if.end11_crit_edge, label %if.then6

if.end3.if.end11_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then6:                                         ; preds = %if.end3
  %call7 = tail call i32 @devm_adis_probe_trigger(ptr noundef %adis, ptr noundef %indio_dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then6.if.end11_crit_edge, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.end11:                                         ; preds = %if.then6.if.end11_crit_edge, %if.end3.if.end11_crit_edge
  %6 = ptrtoint ptr %adis to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adis, align 128
  %call.i = tail call i32 @devm_add_action(ptr noundef %7, ptr noundef nonnull @adis_buffer_cleanup, ptr noundef %adis) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end11.cleanup_crit_edge, label %if.then.i

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %buffer.i.i = getelementptr inbounds %struct.adis, ptr %adis, i32 0, i32 9
  %8 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer.i.i, align 16
  tail call void @kfree(ptr noundef %9) #7
  %xfer.i.i = getelementptr inbounds %struct.adis, ptr %adis, i32 0, i32 6
  %10 = ptrtoint ptr %xfer.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xfer.i.i, align 4
  tail call void @kfree(ptr noundef %11) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end11.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call7, %if.then6.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ], [ %call.i, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %driver_data.i.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 2, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %data = getelementptr inbounds %struct.adis, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 8
  %has_paging = getelementptr inbounds %struct.adis_data, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %has_paging to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %has_paging, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then:                                          ; preds = %entry
  %state_lock = getelementptr inbounds %struct.adis, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #7
  %current_page = getelementptr inbounds %struct.adis, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %current_page to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %current_page, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not = icmp eq i32 %9, 0
  br i1 %cmp.not, label %if.then.if.end13_crit_edge, label %if.then2

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then2:                                         ; preds = %if.then
  %tx = getelementptr inbounds %struct.adis, ptr %3, i32 0, i32 11
  %10 = ptrtoint ptr %tx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -128, ptr %tx, align 128
  %arrayidx4 = getelementptr %struct.adis, ptr %3, i32 0, i32 11, i32 1
  %11 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx4, align 1
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #7
  %14 = getelementptr inbounds i8, ptr %t.i, i32 4
  %15 = call ptr @memset(ptr %14, i32 0, i32 92)
  %16 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %tx, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %17 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #7
  %18 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %19 = call ptr @memset(ptr %18, i32 0, i32 40)
  %20 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %22 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %23 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #7
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.then2.spi_write.exit_crit_edge

if.then2.spi_write.exit_crit_edge:                ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %25 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %27 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %if.then2.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %13, ptr noundef nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool7.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool7.not, label %if.end, label %do.end

do.end:                                           ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str, i32 noundef %call.i.i) #12
  call void @mutex_unlock(ptr noundef %state_lock) #7
  br label %irq_done

if.end:                                           ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %current_page to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %current_page, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then.if.end13_crit_edge, %entry.if.end13_crit_edge
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %3, align 128
  %msg = getelementptr inbounds %struct.adis, ptr %3, i32 0, i32 5
  %call15 = call i32 @spi_sync(ptr noundef %32, ptr noundef %msg) #7
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 8
  %has_paging17 = getelementptr inbounds %struct.adis_data, ptr %34, i32 0, i32 16
  %35 = ptrtoint ptr %has_paging17 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %has_paging17, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool18.not = icmp eq i8 %36, 0
  br i1 %tobool18.not, label %if.end13.if.end21_crit_edge, label %if.then19

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then19:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %state_lock20 = getelementptr inbounds %struct.adis, ptr %3, i32 0, i32 4
  call void @mutex_unlock(ptr noundef %state_lock20) #7
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end13.if.end21_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool22.not = icmp eq i32 %call15, 0
  br i1 %tobool22.not, label %if.end29, label %do.end26

do.end26:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %3, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.6, i32 noundef %call15) #12
  br label %irq_done

if.end29:                                         ; preds = %if.end21
  %buffer = getelementptr inbounds %struct.adis, ptr %3, i32 0, i32 9
  %39 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %buffer, align 16
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %41 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %scan_timestamp.i, align 8, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i = icmp eq i8 %42, 0
  br i1 %tobool.not.i, label %if.end29.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.end29.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %timestamp = getelementptr inbounds %struct.iio_poll_func, ptr %p, i32 0, i32 6
  %43 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %timestamp, align 8
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %45 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %46, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %40, i32 %sub.i
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %44, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end29.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %40) #7
  br label %irq_done

irq_done:                                         ; preds = %iio_push_to_buffers_with_timestamp.exit, %do.end26, %do.end
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %48 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %trig, align 4
  call void @iio_trigger_notify_done(ptr noundef %49) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_pollfunc_store_time(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_adis_probe_trigger(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adis_buffer_cleanup(ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer = getelementptr inbounds %struct.adis, ptr %arg, i32 0, i32 9
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer, align 16
  tail call void @kfree(ptr noundef %1) #7
  %xfer = getelementptr inbounds %struct.adis, ptr %arg, i32 0, i32 6
  %2 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xfer, align 4
  tail call void @kfree(ptr noundef %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @__ksymtab_adis_update_scan_mode, !1, !"__ksymtab_adis_update_scan_mode", i1 false, i1 false}
!1 = !{!"../drivers/iio/imu/adis_buffer.c", i32 127, i32 1}
!2 = !{ptr @__ksymtab_devm_adis_setup_buffer_and_trigger, !3, !"__ksymtab_devm_adis_setup_buffer_and_trigger", i1 false, i1 false}
!3 = !{!"../drivers/iio/imu/adis_buffer.c", i32 215, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/iio/imu/adis_buffer.c", i32 143, i32 5}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @adis_trigger_handler._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @adis_trigger_handler._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/imu/adis_buffer.c", i32 156, i32 3}
!14 = !{ptr @adis_trigger_handler._entry.5, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @adis_trigger_handler._entry_ptr.7, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{!"branch_weights", i32 1, i32 2000}
!26 = !{i8 0, i8 2}
