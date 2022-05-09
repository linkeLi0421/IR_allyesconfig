; ModuleID = '/llk/IR_all_yes/drivers/staging/greybus/spilib.c_pt.bc'
source_filename = "../drivers/staging/greybus/spilib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+gb_spilib_master_init\22, \22a\22\09"
module asm "\09.weak\09__crc_gb_spilib_master_init\09\09\09\09"
module asm "\09.long\09__crc_gb_spilib_master_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gb_spilib_master_init:\09\09\09\09\09"
module asm "\09.asciz \09\22gb_spilib_master_init\22\09\09\09\09\09"
module asm "__kstrtabns_gb_spilib_master_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gb_spilib_master_exit\22, \22a\22\09"
module asm "\09.weak\09__crc_gb_spilib_master_exit\09\09\09\09"
module asm "\09.long\09__crc_gb_spilib_master_exit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gb_spilib_master_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22gb_spilib_master_exit\22\09\09\09\09\09"
module asm "__kstrtabns_gb_spilib_master_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.gb_spi_device_config_request = type { i8 }
%struct.gb_spi_device_config_response = type <{ i16, i8, i32, i8, [32 x i8] }>
%struct.spi_board_info = type { [32 x i8], ptr, ptr, ptr, i32, i32, i16, i16, i32 }
%struct.gb_spi_master_config_response = type <{ i32, i32, i32, i16, i16, i8 }>
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
%struct.gb_connection = type { ptr, ptr, ptr, %struct.kref, i16, i16, %struct.list_head, %struct.list_head, ptr, i32, %struct.mutex, %struct.spinlock, i32, %struct.list_head, [16 x i8], ptr, %struct.atomic_t, ptr, i8 }
%struct.gb_spilib = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i8, i32, i32 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spilib_ops = type { ptr, ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.gb_operation = type { ptr, ptr, ptr, i32, i8, i16, i32, %struct.work_struct, ptr, %struct.completion, %struct.timer_list, %struct.kref, %struct.atomic_t, i32, %struct.list_head, ptr }
%struct.gb_message = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gb_spi_transfer_request = type { i8, i8, i16, [0 x %struct.gb_spi_transfer] }
%struct.gb_spi_transfer = type <{ i32, i32, i16, i8, i8, i8 }>
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }

@gb_spilib_master_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 496, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cannot alloc SPI master\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gb_spilib_master_init\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/staging/greybus/spilib.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gb_spilib_master_init._entry_ptr = internal global ptr @gb_spilib_master_init._entry, section ".printk_index", align 4
@gb_spilib_master_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 543, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to allocate spi device %d: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@gb_spilib_master_init._entry_ptr.7 = internal global ptr @gb_spilib_master_init._entry.5, section ".printk_index", align 4
@__kstrtab_gb_spilib_master_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_gb_spilib_master_init = external dso_local constant [0 x i8], align 1
@__ksymtab_gb_spilib_master_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gb_spilib_master_init to i32), ptr @__kstrtab_gb_spilib_master_init, ptr @__kstrtabns_gb_spilib_master_init }, section "___ksymtab_gpl+gb_spilib_master_init", align 4
@__kstrtab_gb_spilib_master_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_gb_spilib_master_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_gb_spilib_master_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gb_spilib_master_exit to i32), ptr @__kstrtab_gb_spilib_master_exit, ptr @__kstrtabns_gb_spilib_master_exit }, section "___ksymtab_gpl+gb_spilib_master_exit", align 4
@__UNIQUE_ID_file236 = internal constant [49 x i8] c"gb_spilib.file=drivers/staging/greybus/gb-spilib\00", section ".modinfo", align 1
@__UNIQUE_ID_license237 = internal constant [25 x i8] c"gb_spilib.license=GPL v2\00", section ".modinfo", align 1
@gb_spi_transfer_one_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 363, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"transfer operation failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"gb_spi_transfer_one_message\00", [36 x i8] zeroinitializer }, align 32
@gb_spi_transfer_one_message._entry_ptr = internal global ptr @gb_spi_transfer_one_message._entry, section ".printk_index", align 4
@gb_spi_operation_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 188, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bufferless transfer, length %u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gb_spi_operation_create\00", [40 x i8] zeroinitializer }, align 32
@gb_spi_operation_create._entry_ptr = internal global ptr @gb_spi_operation_create._entry, section ".printk_index", align 4
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"spidev\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi-nor\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 496, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 542, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 362, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 187, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 462, i32 31 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private constant [36 x i8] c"../drivers/staging/greybus/spilib.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 465, i32 31 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_file236, ptr @__UNIQUE_ID_license237, ptr @__ksymtab_gb_spilib_master_exit, ptr @__ksymtab_gb_spilib_master_init, ptr @gb_spi_operation_create._entry, ptr @gb_spi_operation_create._entry_ptr, ptr @gb_spi_transfer_one_message._entry, ptr @gb_spi_transfer_one_message._entry_ptr, ptr @gb_spilib_master_init._entry, ptr @gb_spilib_master_init._entry.5, ptr @gb_spilib_master_init._entry_ptr, ptr @gb_spilib_master_init._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_spilib_master_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_spilib_master_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_spi_transfer_one_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_spi_operation_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_spilib_master_init(ptr noundef %connection, ptr noundef %dev, ptr noundef %ops) #0 align 64 {
entry:
  %request.i = alloca %struct.gb_spi_device_config_request, align 1
  %response.i87 = alloca %struct.gb_spi_device_config_response, align 2
  %spi_board.i = alloca %struct.spi_board_info, align 4
  %response.i = alloca %struct.gb_spi_master_config_response, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef %dev, i32 noundef 56, i1 noundef zeroext false) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #9
  br label %cleanup41

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %connection, ptr %1, align 4
  %private.i = getelementptr inbounds %struct.gb_connection, ptr %connection, i32 0, i32 17
  %3 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %private.i, align 4
  %parent = getelementptr inbounds %struct.gb_spilib, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %parent, align 4
  %ops3 = getelementptr inbounds %struct.gb_spilib, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %ops3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ops, ptr %ops3, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %response.i) #6
  %6 = call ptr @memset(ptr %response.i, i32 255, i32 17)
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @gb_operation_sync_timeout(ptr noundef %8, i32 noundef 2, ptr noundef null, i32 noundef 0, ptr noundef nonnull %response.i, i32 noundef 17, i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %gb_spi_get_master_config.exit, label %if.end7

gb_spi_get_master_config.exit:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %response.i) #6
  br label %spi_controller_put.exit

if.end7:                                          ; preds = %if.end
  %9 = getelementptr inbounds %struct.gb_spi_master_config_response, ptr %response.i, i32 0, i32 5
  %10 = getelementptr inbounds %struct.gb_spi_master_config_response, ptr %response.i, i32 0, i32 4
  %11 = getelementptr inbounds %struct.gb_spi_master_config_response, ptr %response.i, i32 0, i32 3
  %12 = getelementptr inbounds %struct.gb_spi_master_config_response, ptr %response.i, i32 0, i32 2
  %13 = getelementptr inbounds %struct.gb_spi_master_config_response, ptr %response.i, i32 0, i32 1
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %11, align 4
  %16 = call i16 @llvm.bswap.i16(i16 %15) #6
  %mode2.i = getelementptr inbounds %struct.gb_spilib, ptr %1, i32 0, i32 9
  %17 = ptrtoint ptr %mode2.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %mode2.i, align 4
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %10, align 2
  %20 = call i16 @llvm.bswap.i16(i16 %19) #6
  %flags4.i = getelementptr inbounds %struct.gb_spilib, ptr %1, i32 0, i32 10
  %21 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %flags4.i, align 2
  %22 = ptrtoint ptr %response.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %response.i, align 4
  %24 = call i32 @llvm.bswap.i32(i32 %23) #6
  %bits_per_word_mask5.i = getelementptr inbounds %struct.gb_spilib, ptr %1, i32 0, i32 11
  %25 = ptrtoint ptr %bits_per_word_mask5.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %bits_per_word_mask5.i, align 4
  %26 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %9, align 4
  %num_chipselect6.i = getelementptr inbounds %struct.gb_spilib, ptr %1, i32 0, i32 12
  %28 = ptrtoint ptr %num_chipselect6.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %num_chipselect6.i, align 4
  %29 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %13, align 4
  %31 = call i32 @llvm.bswap.i32(i32 %30) #6
  %min_speed_hz7.i = getelementptr inbounds %struct.gb_spilib, ptr %1, i32 0, i32 13
  %32 = ptrtoint ptr %min_speed_hz7.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %min_speed_hz7.i, align 4
  %33 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %12, align 4
  %35 = call i32 @llvm.bswap.i32(i32 %34) #6
  %max_speed_hz8.i = getelementptr inbounds %struct.gb_spilib, ptr %1, i32 0, i32 14
  %36 = ptrtoint ptr %max_speed_hz8.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %max_speed_hz8.i, align 4
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %response.i) #6
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 2
  %37 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 -1, ptr %bus_num, align 8
  %38 = ptrtoint ptr %num_chipselect6.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %num_chipselect6.i, align 4
  %conv = zext i8 %39 to i16
  %num_chipselect8 = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %40 = ptrtoint ptr %num_chipselect8 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv, ptr %num_chipselect8, align 2
  %41 = ptrtoint ptr %mode2.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %mode2.i, align 4
  %conv9 = zext i16 %42 to i32
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %43 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv9, ptr %mode_bits, align 8
  %44 = ptrtoint ptr %flags4.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %flags4.i, align 2
  %flags10 = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 10
  %46 = ptrtoint ptr %flags10 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %flags10, align 4
  %47 = ptrtoint ptr %bits_per_word_mask5.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bits_per_word_mask5.i, align 4
  %bits_per_word_mask11 = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 7
  %49 = ptrtoint ptr %bits_per_word_mask11 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %bits_per_word_mask11, align 8
  %cleanup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 23
  %50 = ptrtoint ptr %cleanup to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @gb_spi_cleanup, ptr %cleanup, align 8
  %setup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 20
  %51 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @gb_spi_setup, ptr %setup, align 4
  %transfer_one_message = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 45
  %52 = ptrtoint ptr %transfer_one_message to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @gb_spi_transfer_one_message, ptr %transfer_one_message, align 4
  %tobool12.not = icmp eq ptr %ops, null
  br i1 %tobool12.not, label %if.end7.if.end22_crit_edge, label %land.lhs.true

if.end7.if.end22_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end7
  %53 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ops, align 4
  %tobool13.not = icmp eq ptr %54, null
  br i1 %tobool13.not, label %land.lhs.true.land.lhs.true18_crit_edge, label %if.then14

land.lhs.true.land.lhs.true18_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true18

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %prepare_transfer_hardware15 = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 44
  %55 = ptrtoint ptr %prepare_transfer_hardware15 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @gb_spi_prepare_transfer_hardware, ptr %prepare_transfer_hardware15, align 8
  br label %land.lhs.true18

land.lhs.true18:                                  ; preds = %if.then14, %land.lhs.true.land.lhs.true18_crit_edge
  %unprepare_transfer_hardware = getelementptr inbounds %struct.spilib_ops, ptr %ops, i32 0, i32 1
  %56 = ptrtoint ptr %unprepare_transfer_hardware to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %unprepare_transfer_hardware, align 4
  %tobool19.not = icmp eq ptr %57, null
  br i1 %tobool19.not, label %land.lhs.true18.if.end22_crit_edge, label %if.then20

land.lhs.true18.if.end22_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then20:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #8
  %unprepare_transfer_hardware21 = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 46
  %58 = ptrtoint ptr %unprepare_transfer_hardware21 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @gb_spi_unprepare_transfer_hardware, ptr %unprepare_transfer_hardware21, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %land.lhs.true18.if.end22_crit_edge, %if.end7.if.end22_crit_edge
  %auto_runtime_pm = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 36
  %59 = ptrtoint ptr %auto_runtime_pm to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %auto_runtime_pm, align 4
  %call23 = call i32 @spi_register_controller(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp = icmp slt i32 %call23, 0
  br i1 %cmp, label %if.end22.spi_controller_put.exit_crit_edge, label %for.cond.preheader

if.end22.spi_controller_put.exit_crit_edge:       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_controller_put.exit

for.cond.preheader:                               ; preds = %if.end22
  %60 = ptrtoint ptr %num_chipselect6.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %num_chipselect6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %cmp30100.not = icmp eq i8 %61, 0
  br i1 %cmp30100.not, label %for.cond.preheader.cleanup41_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup41_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup41

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %device_type.i = getelementptr inbounds %struct.gb_spi_device_config_response, ptr %response.i87, i32 0, i32 3
  %name.i = getelementptr inbounds %struct.gb_spi_device_config_response, ptr %response.i87, i32 0, i32 4
  %mode26.i = getelementptr inbounds %struct.spi_board_info, ptr %spi_board.i, i32 0, i32 8
  %bus_num27.i = getelementptr inbounds %struct.spi_board_info, ptr %spi_board.i, i32 0, i32 6
  %chip_select29.i = getelementptr inbounds %struct.spi_board_info, ptr %spi_board.i, i32 0, i32 7
  %max_speed_hz.i = getelementptr inbounds %struct.gb_spi_device_config_response, ptr %response.i87, i32 0, i32 2
  %max_speed_hz30.i = getelementptr inbounds %struct.spi_board_info, ptr %spi_board.i, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0101 = phi i8 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 4
  %private.i.i.i = getelementptr inbounds %struct.gb_connection, ptr %63, i32 0, i32 17
  %64 = ptrtoint ptr %private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %private.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %request.i) #6
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %response.i87) #6
  %66 = call ptr @memset(ptr %response.i87, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %spi_board.i) #6
  %67 = call ptr @memset(ptr %spi_board.i, i32 0, i32 60)
  %68 = ptrtoint ptr %request.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %i.0101, ptr %request.i, align 1
  %call.i.i88 = call i32 @gb_operation_sync_timeout(ptr noundef %63, i32 noundef 3, ptr noundef nonnull %request.i, i32 noundef 1, ptr noundef nonnull %response.i87, i32 noundef 40, i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i88)
  %cmp.i89 = icmp slt i32 %call.i.i88, 0
  br i1 %cmp.i89, label %for.body.do.end38_crit_edge, label %if.end.i90

for.body.do.end38_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end38

if.end.i90:                                       ; preds = %for.body
  %69 = ptrtoint ptr %device_type.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %device_type.i, align 1
  %71 = zext i8 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values)
  switch i8 %70, label %if.end.i90.do.end38_crit_edge [
    i8 0, label %if.then4.i
    i8 1, label %if.then9.i
    i8 2, label %if.then17.i
  ]

if.end.i90.do.end38_crit_edge:                    ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end38

if.then4.i:                                       ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i = call i32 @strscpy(ptr noundef nonnull %spi_board.i, ptr noundef nonnull @.str.12, i32 noundef 32) #6
  br label %if.end24.i

if.then9.i:                                       ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #8
  %call12.i = call i32 @strscpy(ptr noundef nonnull %spi_board.i, ptr noundef nonnull @.str.13, i32 noundef 32) #6
  br label %if.end24.i

if.then17.i:                                      ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #8
  %72 = call ptr @memcpy(ptr %spi_board.i, ptr %name.i, i32 32)
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then17.i, %if.then9.i, %if.then4.i
  %73 = ptrtoint ptr %response.i87 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %response.i87, align 2
  %75 = call i16 @llvm.bswap.i16(i16 %74) #6
  %conv25.i = zext i16 %75 to i32
  %76 = ptrtoint ptr %mode26.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %conv25.i, ptr %mode26.i, align 4
  %bus_num.i = getelementptr inbounds %struct.spi_controller, ptr %65, i32 0, i32 2
  %77 = ptrtoint ptr %bus_num.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %bus_num.i, align 8
  %79 = ptrtoint ptr %bus_num27.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %78, ptr %bus_num27.i, align 4
  %conv28.i = zext i8 %i.0101 to i16
  %80 = ptrtoint ptr %chip_select29.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %conv28.i, ptr %chip_select29.i, align 2
  %81 = ptrtoint ptr %max_speed_hz.i to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %82 = load i32, ptr %max_speed_hz.i, align 1
  %83 = call i32 @llvm.bswap.i32(i32 %82) #6
  %84 = ptrtoint ptr %max_speed_hz30.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %max_speed_hz30.i, align 4
  %call31.i = call ptr @spi_new_device(ptr noundef %65, ptr noundef nonnull %spi_board.i) #6
  %tobool.not.i = icmp eq ptr %call31.i, null
  br i1 %tobool.not.i, label %if.end24.i.do.end38_crit_edge, label %for.inc

if.end24.i.do.end38_crit_edge:                    ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end38

do.end38:                                         ; preds = %if.end24.i.do.end38_crit_edge, %if.end.i90.do.end38_crit_edge, %for.body.do.end38_crit_edge
  %retval.0.i91.ph = phi i32 [ -22, %if.end.i90.do.end38_crit_edge ], [ %call.i.i88, %for.body.do.end38_crit_edge ], [ -22, %if.end24.i.do.end38_crit_edge ]
  %conv27.le = zext i8 %i.0101 to i32
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %spi_board.i) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %response.i87) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %request.i) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %conv27.le, i32 noundef %retval.0.i91.ph) #9
  call void @spi_unregister_controller(ptr noundef nonnull %call.i) #6
  br label %cleanup41

for.inc:                                          ; preds = %if.end24.i
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %spi_board.i) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %response.i87) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %request.i) #6
  %inc = add nuw i8 %i.0101, 1
  %85 = ptrtoint ptr %num_chipselect6.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %num_chipselect6.i, align 4
  %cmp30 = icmp ult i8 %inc, %86
  br i1 %cmp30, label %for.inc.for.body_crit_edge, label %for.inc.cleanup41_crit_edge

for.inc.cleanup41_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup41

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

spi_controller_put.exit:                          ; preds = %if.end22.spi_controller_put.exit_crit_edge, %gb_spi_get_master_config.exit
  %ret.0 = phi i32 [ %call.i.i, %gb_spi_get_master_config.exit ], [ %call23, %if.end22.spi_controller_put.exit_crit_edge ]
  call void @put_device(ptr noundef nonnull %call.i) #6
  br label %cleanup41

cleanup41:                                        ; preds = %spi_controller_put.exit, %for.inc.cleanup41_crit_edge, %do.end38, %for.cond.preheader.cleanup41_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.0, %spi_controller_put.exit ], [ %retval.0.i91.ph, %do.end38 ], [ -12, %do.end ], [ 0, %for.cond.preheader.cleanup41_crit_edge ], [ 0, %for.inc.cleanup41_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @gb_spi_cleanup(ptr nocapture noundef %spi) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gb_spi_setup(ptr nocapture noundef readnone %spi) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_spi_transfer_one_message(ptr noundef %master, ptr noundef %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %msg, align 4
  %cmp.not = icmp eq ptr %5, %msg
  %add.ptr = getelementptr i8, ptr %5, i32 -84
  %spec.select = select i1 %cmp.not, ptr null, ptr %add.ptr
  %first_xfer = getelementptr inbounds %struct.gb_spilib, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %first_xfer to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %spec.select, ptr %first_xfer, align 4
  %tobool.not = icmp eq ptr %spec.select, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 9
  %7 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 1 to ptr), ptr %state, align 4
  %spi1.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 1
  %last_xfer.i = getelementptr inbounds %struct.gb_spilib, ptr %1, i32 0, i32 3
  %tx_xfer_offset.i = getelementptr inbounds %struct.gb_spilib, ptr %1, i32 0, i32 6
  %last_xfer_size.i = getelementptr inbounds %struct.gb_spilib, ptr %1, i32 0, i32 7
  %rx_xfer_offset.i = getelementptr inbounds %struct.gb_spilib, ptr %1, i32 0, i32 5
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %parent.i = getelementptr inbounds %struct.gb_spilib, ptr %1, i32 0, i32 1
  %op_timeout.i = getelementptr inbounds %struct.gb_spilib, ptr %1, i32 0, i32 8
  %actual_length.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 6
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %if.end
  %ret.0 = phi i32 [ 0, %if.end ], [ %ret.0.be, %while.cond.backedge ]
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state, align 4
  %magicptr = ptrtoint ptr %9 to i32
  %10 = zext i32 %magicptr to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %magicptr, label %while.body [
    i32 0, label %while.cond.out_crit_edge
    i32 -1, label %while.cond.out_crit_edge117
  ]

while.cond.out_crit_edge117:                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

while.cond.out_crit_edge:                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

while.body:                                       ; preds = %while.cond
  %11 = ptrtoint ptr %spi1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %spi1.i, align 4
  %call.i = tail call i32 @gb_operation_get_payload_size_max(ptr noundef %3) #6
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %state, align 4
  %cmp.not268.i = icmp eq ptr %14, inttoptr (i32 3 to ptr)
  br i1 %cmp.not268.i, label %while.body.while.end.i_crit_edge, label %while.body.lr.ph.i

while.body.while.end.i_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %while.body
  %15 = ptrtoint ptr %first_xfer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %first_xfer, align 4
  %sub.i.i = add i32 %call.i, -4
  %17 = add i32 %call.i, -17
  br label %while.body.i

while.body.i:                                     ; preds = %if.end32.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %total_len.0278.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add26.i, %if.end32.i.while.body.i_crit_edge ]
  %count.0276.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %inc.i, %if.end32.i.while.body.i_crit_edge ]
  %rx_size.0273.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add24.i, %if.end32.i.while.body.i_crit_edge ]
  %tx_size.0271.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add.i, %if.end32.i.while.body.i_crit_edge ]
  %xfer.0269.i = phi ptr [ %16, %while.body.lr.ph.i ], [ %add.ptr3.i.i, %if.end32.i.while.body.i_crit_edge ]
  %18 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 2 to ptr), ptr %state, align 4
  %19 = ptrtoint ptr %last_xfer.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %xfer.0269.i, ptr %last_xfer.i, align 4
  %20 = ptrtoint ptr %xfer.0269.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xfer.0269.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then8.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.0269.i, i32 0, i32 1
  %22 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rx_buf.i, align 4
  %tobool3.not.i = icmp eq ptr %23, null
  br i1 %tobool3.not.i, label %do.end.i, label %land.lhs.true.i.if.end15.i_crit_edge

land.lhs.true.i.if.end15.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parent.i, align 4
  %len4.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.0269.i, i32 0, i32 2
  %26 = ptrtoint ptr %len4.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len4.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.10, i32 noundef %27) #9
  br label %if.then11

if.then8.i:                                       ; preds = %while.body.i
  %28 = mul i32 %count.0276.i, 13
  %mul.i.i = add i32 %28, 13
  %add1.i.i = add i32 %mul.i.i, %tx_size.0271.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i.i, i32 %sub.i.i)
  %cmp.i.not.i = icmp ugt i32 %add1.i.i, %sub.i.i
  br i1 %cmp.i.not.i, label %if.then8.i.while.end.i_crit_edge, label %if.end13.i

if.then8.i.while.end.i_crit_edge:                 ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

if.end13.i:                                       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %tx_xfer_offset.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_xfer_offset.i, align 4
  %len9.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.0269.i, i32 0, i32 2
  %31 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len9.i, align 4
  %sub.i = sub i32 %32, %30
  %add2.i.i = add i32 %sub.i, %add1.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i.i, i32 %sub.i.i)
  %cmp.i239.i = icmp ugt i32 %add2.i.i, %sub.i.i
  %sub4.i.i = sub i32 %17, %tx_size.0271.i
  %retval.0.i.i = select i1 %cmp.i239.i, i32 %sub4.i.i, i32 %sub.i
  %33 = ptrtoint ptr %last_xfer_size.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %retval.0.i.i, ptr %last_xfer_size.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end13.i, %land.lhs.true.i.if.end15.i_crit_edge
  %tx_xfer_size.0.i = phi i32 [ %retval.0.i.i, %if.end13.i ], [ 0, %land.lhs.true.i.if.end15.i_crit_edge ]
  %rx_buf16.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.0269.i, i32 0, i32 1
  %34 = ptrtoint ptr %rx_buf16.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rx_buf16.i, align 4
  %tobool17.not.i = icmp eq ptr %35, null
  br i1 %tobool17.not.i, label %if.end15.i.if.end23.i_crit_edge, label %if.then18.i

if.end15.i.if.end23.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  %len19.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.0269.i, i32 0, i32 2
  %36 = ptrtoint ptr %len19.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len19.i, align 4
  %38 = ptrtoint ptr %rx_xfer_offset.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rx_xfer_offset.i, align 4
  %sub20.i = sub i32 %37, %39
  %add.i.i = add i32 %sub20.i, %rx_size.0273.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %call.i)
  %cmp.i240.i = icmp ugt i32 %add.i.i, %call.i
  %sub1.i.i = sub i32 %call.i, %rx_size.0273.i
  %rx_xfer_size.0.i.i = select i1 %cmp.i240.i, i32 %sub1.i.i, i32 %sub20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_xfer_size.0.i)
  %tobool.not.i.i = icmp ne i32 %tx_xfer_size.0.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %rx_xfer_size.0.i.i, i32 %tx_xfer_size.0.i)
  %cmp2.i.i = icmp ugt i32 %rx_xfer_size.0.i.i, %tx_xfer_size.0.i
  %or.cond.i.i = and i1 %tobool.not.i.i, %cmp2.i.i
  %rx_xfer_size.1.i.i = select i1 %or.cond.i.i, i32 %tx_xfer_size.0.i, i32 %rx_xfer_size.0.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %rx_xfer_size.1.i.i, i32 %tx_xfer_size.0.i)
  %cmp7.i.i = icmp ult i32 %rx_xfer_size.1.i.i, %tx_xfer_size.0.i
  %or.cond23.i.i = select i1 %tobool.not.i.i, i1 %cmp7.i.i, i1 false
  %spec.select.i = select i1 %or.cond23.i.i, i32 %rx_xfer_size.1.i.i, i32 %tx_xfer_size.0.i
  %40 = ptrtoint ptr %last_xfer_size.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %rx_xfer_size.1.i.i, ptr %last_xfer_size.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then18.i, %if.end15.i.if.end23.i_crit_edge
  %tx_xfer_size.2.i = phi i32 [ %tx_xfer_size.0.i, %if.end15.i.if.end23.i_crit_edge ], [ %spec.select.i, %if.then18.i ]
  %rx_xfer_size.0.i = phi i32 [ 0, %if.end15.i.if.end23.i_crit_edge ], [ %rx_xfer_size.1.i.i, %if.then18.i ]
  %add.i = add i32 %tx_xfer_size.2.i, %tx_size.0271.i
  %add24.i = add i32 %rx_xfer_size.0.i, %rx_size.0273.i
  %41 = ptrtoint ptr %last_xfer_size.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %last_xfer_size.i, align 4
  %add26.i = add i32 %42, %total_len.0278.i
  %inc.i = add i32 %count.0276.i, 1
  %43 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %44, i32 -84
  %cmp.i241.i = icmp eq ptr %add.ptr.i.i, %xfer.0269.i
  br i1 %cmp.i241.i, label %if.end23.i.if.end32.thread.i_crit_edge, label %get_next_xfer.exit.i

if.end23.i.if.end32.thread.i_crit_edge:           ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.thread.i

get_next_xfer.exit.i:                             ; preds = %if.end23.i
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.0269.i, i32 0, i32 18
  %45 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %transfer_list.i.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %46, i32 -84
  %tobool28.not.i = icmp ne ptr %add.ptr3.i.i, null
  call void @__sanitizer_cov_trace_cmp4(i32 %add26.i, i32 %call.i)
  %cmp29.not.i = icmp ult i32 %add26.i, %call.i
  %or.cond.i = select i1 %tobool28.not.i, i1 %cmp29.not.i, i1 false
  br i1 %or.cond.i, label %if.end32.i, label %get_next_xfer.exit.i.if.end32.thread.i_crit_edge

get_next_xfer.exit.i.if.end32.thread.i_crit_edge: ; preds = %get_next_xfer.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.thread.i

if.end32.thread.i:                                ; preds = %get_next_xfer.exit.i.if.end32.thread.i_crit_edge, %if.end23.i.if.end32.thread.i_crit_edge
  %47 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 3 to ptr), ptr %state, align 4
  br label %while.end.i

if.end32.i:                                       ; preds = %get_next_xfer.exit.i
  %48 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pr.i = load ptr, ptr %state, align 4
  %cmp.not.i = icmp eq ptr %.pr.i, inttoptr (i32 3 to ptr)
  br i1 %cmp.not.i, label %if.end32.i.while.end.i_crit_edge, label %if.end32.i.while.body.i_crit_edge

if.end32.i.while.body.i_crit_edge:                ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.end32.i.while.end.i_crit_edge:                 ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.end.i:                                      ; preds = %if.end32.i.while.end.i_crit_edge, %if.end32.thread.i, %if.then8.i.while.end.i_crit_edge, %while.body.while.end.i_crit_edge
  %tx_size.0.lcssa.i = phi i32 [ 0, %while.body.while.end.i_crit_edge ], [ %add.i, %if.end32.thread.i ], [ %add.i, %if.end32.i.while.end.i_crit_edge ], [ %tx_size.0271.i, %if.then8.i.while.end.i_crit_edge ]
  %rx_size.0.lcssa.i = phi i32 [ 0, %while.body.while.end.i_crit_edge ], [ %add24.i, %if.end32.thread.i ], [ %add24.i, %if.end32.i.while.end.i_crit_edge ], [ %rx_size.0273.i, %if.then8.i.while.end.i_crit_edge ]
  %count.0.lcssa.i = phi i32 [ 0, %while.body.while.end.i_crit_edge ], [ %inc.i, %if.end32.thread.i ], [ %inc.i, %if.end32.i.while.end.i_crit_edge ], [ %count.0276.i, %if.then8.i.while.end.i_crit_edge ]
  %total_len.0.lcssa.i = phi i32 [ 0, %while.body.while.end.i_crit_edge ], [ %add26.i, %if.end32.thread.i ], [ %add26.i, %if.end32.i.while.end.i_crit_edge ], [ %total_len.0278.i, %if.then8.i.while.end.i_crit_edge ]
  %mul.i = mul i32 %count.0.lcssa.i, 13
  %add33.i = add i32 %tx_size.0.lcssa.i, 4
  %add34.i = add i32 %add33.i, %mul.i
  %call.i.i = tail call ptr @gb_operation_create_flags(ptr noundef %3, i8 noundef zeroext 4, i32 noundef %add34.i, i32 noundef %rx_size.0.lcssa.i, i32 noundef 0, i32 noundef 3264) #6
  %tobool36.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool36.not.i, label %while.end.i.if.then11_crit_edge, label %if.end38.i

while.end.i.if.then11_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

if.end38.i:                                       ; preds = %while.end.i
  %request39.i = getelementptr inbounds %struct.gb_operation, ptr %call.i.i, i32 0, i32 1
  %49 = ptrtoint ptr %request39.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %request39.i, align 4
  %payload.i = getelementptr inbounds %struct.gb_message, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %payload.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %payload.i, align 4
  %conv.i = trunc i32 %count.0.lcssa.i to i16
  %53 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #6
  %count40.i = getelementptr inbounds %struct.gb_spi_transfer_request, ptr %52, i32 0, i32 2
  %54 = ptrtoint ptr %count40.i to i32
  call void @__asan_storeN_noabort(i32 %54, i32 2)
  store i16 %53, ptr %count40.i, align 1
  %mode.i = getelementptr inbounds %struct.spi_device, ptr %12, i32 0, i32 7
  %55 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mode.i, align 8
  %conv41.i = trunc i32 %56 to i8
  %mode42.i = getelementptr inbounds %struct.gb_spi_transfer_request, ptr %52, i32 0, i32 1
  %57 = ptrtoint ptr %mode42.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv41.i, ptr %mode42.i, align 1
  %chip_select.i = getelementptr inbounds %struct.spi_device, ptr %12, i32 0, i32 4
  %58 = ptrtoint ptr %chip_select.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %chip_select.i, align 4
  %60 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %52, align 1
  %61 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %state, align 4
  %cmp47.not289.i = icmp eq ptr %62, inttoptr (i32 4 to ptr)
  br i1 %cmp47.not289.i, label %if.end38.i.if.end13_crit_edge, label %while.body49.lr.ph.i

if.end38.i.if.end13_crit_edge:                    ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

while.body49.lr.ph.i:                             ; preds = %if.end38.i
  %63 = ptrtoint ptr %first_xfer to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %first_xfer, align 4
  %transfers.i = getelementptr inbounds %struct.gb_spi_transfer_request, ptr %52, i32 0, i32 3
  %add.ptr.i = getelementptr %struct.gb_spi_transfer, ptr %transfers.i, i32 %count.0.lcssa.i
  br label %while.body49.i

while.body49.i:                                   ; preds = %cleanup.i.while.body49.i_crit_edge, %while.body49.lr.ph.i
  %tx_data.0292.i = phi ptr [ %add.ptr.i, %while.body49.lr.ph.i ], [ %tx_data.1.i, %cleanup.i.while.body49.i_crit_edge ]
  %gb_xfer.0291.i = phi ptr [ %transfers.i, %while.body49.lr.ph.i ], [ %incdec.ptr.i, %cleanup.i.while.body49.i_crit_edge ]
  %xfer.1290.i = phi ptr [ %64, %while.body49.lr.ph.i ], [ %xfer.2.ph.i, %cleanup.i.while.body49.i_crit_edge ]
  %65 = ptrtoint ptr %last_xfer.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %last_xfer.i, align 4
  %cmp51.i = icmp eq ptr %xfer.1290.i, %66
  %len55.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.1290.i, i32 0, i32 2
  %xfer_len.0.in.i = select i1 %cmp51.i, ptr %last_xfer_size.i, ptr %len55.i
  %67 = ptrtoint ptr %xfer_len.0.in.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %xfer_len.0.i = load i32, ptr %xfer_len.0.in.i, align 4
  %mul58.i = mul i32 %xfer_len.0.i, 8000
  %speed_hz.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.1290.i, i32 0, i32 12
  %68 = ptrtoint ptr %speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %speed_hz.i, align 4
  %div.i = udiv i32 %mul58.i, %69
  %add59.i = add i32 %div.i, 1000
  %70 = ptrtoint ptr %op_timeout.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %op_timeout.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add59.i, i32 %71)
  %cmp60.i = icmp ugt i32 %add59.i, %71
  br i1 %cmp60.i, label %if.then62.i, label %while.body49.i.if.end64.i_crit_edge

while.body49.i.if.end64.i_crit_edge:              ; preds = %while.body49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64.i

if.then62.i:                                      ; preds = %while.body49.i
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %op_timeout.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %add59.i, ptr %op_timeout.i, align 4
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.then62.i, %while.body49.i.if.end64.i_crit_edge
  %73 = ptrtoint ptr %speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %speed_hz.i, align 4
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #6
  %76 = ptrtoint ptr %gb_xfer.0291.i to i32
  call void @__asan_storeN_noabort(i32 %76, i32 4)
  store i32 %75, ptr %gb_xfer.0291.i, align 1
  %77 = tail call i32 @llvm.bswap.i32(i32 %xfer_len.0.i) #6
  %len67.i = getelementptr inbounds %struct.gb_spi_transfer, ptr %gb_xfer.0291.i, i32 0, i32 1
  %78 = ptrtoint ptr %len67.i to i32
  call void @__asan_storeN_noabort(i32 %78, i32 4)
  store i32 %77, ptr %len67.i, align 1
  %delay.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.1290.i, i32 0, i32 9
  %call68.i = tail call i32 @spi_delay_to_ns(ptr noundef %delay.i, ptr noundef %xfer.1290.i) #6
  %div69.i = sdiv i32 %call68.i, 1000
  %conv89.i = trunc i32 %div69.i to i16
  %79 = tail call i16 @llvm.bswap.i16(i16 %conv89.i) #6
  %delay_usecs.i = getelementptr inbounds %struct.gb_spi_transfer, ptr %gb_xfer.0291.i, i32 0, i32 2
  %80 = ptrtoint ptr %delay_usecs.i to i32
  call void @__asan_storeN_noabort(i32 %80, i32 2)
  store i16 %79, ptr %delay_usecs.i, align 1
  %cs_change.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.1290.i, i32 0, i32 7
  %81 = ptrtoint ptr %cs_change.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %bf.load.i = load i8, ptr %cs_change.i, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 6
  %bf.clear.i = and i8 %bf.lshr.i, 1
  %cs_change91.i = getelementptr inbounds %struct.gb_spi_transfer, ptr %gb_xfer.0291.i, i32 0, i32 3
  %82 = ptrtoint ptr %cs_change91.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %bf.clear.i, ptr %cs_change91.i, align 1
  %bits_per_word.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.1290.i, i32 0, i32 8
  %83 = ptrtoint ptr %bits_per_word.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %bits_per_word.i, align 1
  %bits_per_word92.i = getelementptr inbounds %struct.gb_spi_transfer, ptr %gb_xfer.0291.i, i32 0, i32 4
  %85 = ptrtoint ptr %bits_per_word92.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %bits_per_word92.i, align 1
  %86 = ptrtoint ptr %xfer.1290.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %xfer.1290.i, align 4
  %tobool94.not.i = icmp eq ptr %87, null
  br i1 %tobool94.not.i, label %if.end64.i.if.end102.i_crit_edge, label %if.then95.i

if.end64.i.if.end102.i_crit_edge:                 ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102.i

if.then95.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #8
  %xfer_flags.i = getelementptr inbounds %struct.gb_spi_transfer, ptr %gb_xfer.0291.i, i32 0, i32 5
  %88 = ptrtoint ptr %xfer_flags.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %xfer_flags.i, align 1
  %90 = or i8 %89, 2
  store i8 %90, ptr %xfer_flags.i, align 1
  %91 = ptrtoint ptr %xfer.1290.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %xfer.1290.i, align 4
  %93 = ptrtoint ptr %tx_xfer_offset.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %tx_xfer_offset.i, align 4
  %add.ptr100.i = getelementptr i8, ptr %92, i32 %94
  %95 = call ptr @memcpy(ptr %tx_data.0292.i, ptr %add.ptr100.i, i32 %xfer_len.0.i)
  %add.ptr101.i = getelementptr i8, ptr %tx_data.0292.i, i32 %xfer_len.0.i
  br label %if.end102.i

if.end102.i:                                      ; preds = %if.then95.i, %if.end64.i.if.end102.i_crit_edge
  %tx_data.1.i = phi ptr [ %add.ptr101.i, %if.then95.i ], [ %tx_data.0292.i, %if.end64.i.if.end102.i_crit_edge ]
  %rx_buf103.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.1290.i, i32 0, i32 1
  %96 = ptrtoint ptr %rx_buf103.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rx_buf103.i, align 4
  %tobool104.not.i = icmp eq ptr %97, null
  br i1 %tobool104.not.i, label %if.end102.i.if.end110.i_crit_edge, label %if.then105.i

if.end102.i.if.end110.i_crit_edge:                ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end110.i

if.then105.i:                                     ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #8
  %xfer_flags106.i = getelementptr inbounds %struct.gb_spi_transfer, ptr %gb_xfer.0291.i, i32 0, i32 5
  %98 = ptrtoint ptr %xfer_flags106.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %xfer_flags106.i, align 1
  %100 = or i8 %99, 1
  store i8 %100, ptr %xfer_flags106.i, align 1
  br label %if.end110.i

if.end110.i:                                      ; preds = %if.then105.i, %if.end102.i.if.end110.i_crit_edge
  %101 = ptrtoint ptr %last_xfer.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %last_xfer.i, align 4
  %cmp112.i = icmp eq ptr %xfer.1290.i, %102
  br i1 %cmp112.i, label %if.then114.i, label %if.end123.i

if.then114.i:                                     ; preds = %if.end110.i
  %103 = ptrtoint ptr %tx_xfer_offset.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %tx_xfer_offset.i, align 4
  %105 = ptrtoint ptr %last_xfer_size.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %last_xfer_size.i, align 4
  %add.i243.i = add i32 %106, %104
  %107 = ptrtoint ptr %len55.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %len55.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i243.i, i32 %108)
  %cmp.i244.i = icmp eq i32 %add.i243.i, %108
  br i1 %cmp.i244.i, label %if.then114.i.cleanup.thread.i_crit_edge, label %is_last_xfer_done.exit.i

if.then114.i.cleanup.thread.i_crit_edge:          ; preds = %if.then114.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread.i

is_last_xfer_done.exit.i:                         ; preds = %if.then114.i
  %109 = ptrtoint ptr %rx_xfer_offset.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %rx_xfer_offset.i, align 4
  %add3.i.i = add i32 %110, %106
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i.i, i32 %108)
  %cmp5.i.i = icmp eq i32 %add3.i.i, %108
  br i1 %cmp5.i.i, label %is_last_xfer_done.exit.i.cleanup.thread.i_crit_edge, label %if.then116.i

is_last_xfer_done.exit.i.cleanup.thread.i_crit_edge: ; preds = %is_last_xfer_done.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread.i

if.then116.i:                                     ; preds = %is_last_xfer_done.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %xfer_flags117.i = getelementptr inbounds %struct.gb_spi_transfer, ptr %gb_xfer.0291.i, i32 0, i32 5
  %111 = ptrtoint ptr %xfer_flags117.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %xfer_flags117.i, align 1
  %113 = or i8 %112, 4
  store i8 %113, ptr %xfer_flags117.i, align 1
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.then116.i, %is_last_xfer_done.exit.i.cleanup.thread.i_crit_edge, %if.then114.i.cleanup.thread.i_crit_edge
  %114 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr inttoptr (i32 4 to ptr), ptr %state, align 4
  br label %if.end13

if.end123.i:                                      ; preds = %if.end110.i
  %incdec.ptr.i = getelementptr %struct.gb_spi_transfer, ptr %gb_xfer.0291.i, i32 1
  %115 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %prev.i.i, align 4
  %add.ptr.i247.i = getelementptr i8, ptr %116, i32 -84
  %cmp.i248.i = icmp eq ptr %add.ptr.i247.i, %xfer.1290.i
  br i1 %cmp.i248.i, label %if.end123.i.cleanup.i_crit_edge, label %if.end.i251.i

if.end123.i.cleanup.i_crit_edge:                  ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.end.i251.i:                                    ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #8
  %transfer_list.i249.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.1290.i, i32 0, i32 18
  %117 = ptrtoint ptr %transfer_list.i249.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %transfer_list.i249.i, align 4
  %add.ptr3.i250.i = getelementptr i8, ptr %118, i32 -84
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i251.i, %if.end123.i.cleanup.i_crit_edge
  %xfer.2.ph.i = phi ptr [ null, %if.end123.i.cleanup.i_crit_edge ], [ %add.ptr3.i250.i, %if.end.i251.i ]
  %119 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %119)
  %.pr296.i = load ptr, ptr %state, align 4
  %cmp47.not.i = icmp eq ptr %.pr296.i, inttoptr (i32 4 to ptr)
  br i1 %cmp47.not.i, label %cleanup.i.if.end13_crit_edge, label %cleanup.i.while.body49.i_crit_edge

cleanup.i.while.body49.i_crit_edge:               ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body49.i

cleanup.i.if.end13_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then11:                                        ; preds = %while.end.i.if.then11_crit_edge, %do.end.i
  %120 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr inttoptr (i32 -1 to ptr), ptr %state, align 4
  br label %while.cond.backedge

if.end13:                                         ; preds = %cleanup.i.if.end13_crit_edge, %cleanup.thread.i, %if.end38.i.if.end13_crit_edge
  %121 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %.pn = load i32, ptr %actual_length.i, align 4
  %storemerge = add i32 %.pn, %total_len.0.lcssa.i
  store i32 %storemerge, ptr %actual_length.i, align 4
  %122 = ptrtoint ptr %op_timeout.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %op_timeout.i, align 4
  %call14 = tail call i32 @gb_operation_request_send_sync_timeout(ptr noundef nonnull %call.i.i, i32 noundef %123) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then16, label %do.end23

if.then16:                                        ; preds = %if.end13
  %response17 = getelementptr inbounds %struct.gb_operation, ptr %call.i.i, i32 0, i32 2
  %124 = ptrtoint ptr %response17 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %response17, align 4
  %payload = getelementptr inbounds %struct.gb_message, ptr %125, i32 0, i32 2
  %126 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %payload, align 4
  %tobool18.not = icmp eq ptr %127, null
  br i1 %tobool18.not, label %if.then16.if.end25_crit_edge, label %if.then19

if.then16.if.end25_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then19:                                        ; preds = %if.then16
  %128 = ptrtoint ptr %first_xfer to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %first_xfer, align 4
  %tobool.not1.i = icmp eq ptr %129, null
  br i1 %tobool.not1.i, label %if.then19.if.end25_crit_edge, label %if.then19.while.body.i62_crit_edge

if.then19.while.body.i62_crit_edge:               ; preds = %if.then19
  br label %while.body.i62

if.then19.if.end25_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

while.body.i62:                                   ; preds = %if.end16.i.while.body.i62_crit_edge, %if.then19.while.body.i62_crit_edge
  %xfer.03.i = phi ptr [ %add.ptr17.i, %if.end16.i.while.body.i62_crit_edge ], [ %129, %if.then19.while.body.i62_crit_edge ]
  %rx_data.02.i = phi ptr [ %rx_data.1.i, %if.end16.i.while.body.i62_crit_edge ], [ %127, %if.then19.while.body.i62_crit_edge ]
  %rx_buf.i61 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.03.i, i32 0, i32 1
  %130 = ptrtoint ptr %rx_buf.i61 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %rx_buf.i61, align 4
  %tobool1.not.i = icmp eq ptr %131, null
  br i1 %tobool1.not.i, label %while.body.i62.if.end12.i_crit_edge, label %if.then.i

while.body.i62.if.end12.i_crit_edge:              ; preds = %while.body.i62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

if.then.i:                                        ; preds = %while.body.i62
  %132 = ptrtoint ptr %first_xfer to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %first_xfer, align 4
  %cmp.i = icmp eq ptr %xfer.03.i, %133
  br i1 %cmp.i, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.03.i, i32 0, i32 2
  %134 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %len.i, align 4
  %136 = ptrtoint ptr %rx_xfer_offset.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %rx_xfer_offset.i, align 4
  %sub.i63 = sub i32 %135, %137
  br label %if.end8.i

if.else.i:                                        ; preds = %if.then.i
  %138 = ptrtoint ptr %last_xfer.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %last_xfer.i, align 4
  %cmp4.i = icmp eq ptr %xfer.03.i, %139
  br i1 %cmp4.i, label %if.then5.i, label %if.else6.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %140 = ptrtoint ptr %last_xfer_size.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %last_xfer_size.i, align 4
  br label %if.end8.i

if.else6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %len7.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.03.i, i32 0, i32 2
  %142 = ptrtoint ptr %len7.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %len7.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else6.i, %if.then5.i, %if.then3.i
  %xfer_len.0.i64 = phi i32 [ %sub.i63, %if.then3.i ], [ %141, %if.then5.i ], [ %143, %if.else6.i ]
  %144 = ptrtoint ptr %rx_xfer_offset.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %rx_xfer_offset.i, align 4
  %add.ptr.i65 = getelementptr i8, ptr %131, i32 %145
  %146 = call ptr @memcpy(ptr %add.ptr.i65, ptr %rx_data.02.i, i32 %xfer_len.0.i64)
  %add.ptr11.i = getelementptr i8, ptr %rx_data.02.i, i32 %xfer_len.0.i64
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.end8.i, %while.body.i62.if.end12.i_crit_edge
  %rx_data.1.i = phi ptr [ %add.ptr11.i, %if.end8.i ], [ %rx_data.02.i, %while.body.i62.if.end12.i_crit_edge ]
  %147 = ptrtoint ptr %last_xfer.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %last_xfer.i, align 4
  %cmp14.i = icmp eq ptr %xfer.03.i, %148
  br i1 %cmp14.i, label %if.end12.i.if.end25_crit_edge, label %if.end16.i

if.end12.i.if.end25_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.end16.i:                                       ; preds = %if.end12.i
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.03.i, i32 0, i32 18
  %149 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %transfer_list.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %150, i32 -84
  %tobool.not.i66 = icmp eq ptr %add.ptr17.i, null
  br i1 %tobool.not.i66, label %if.end16.i.if.end25_crit_edge, label %if.end16.i.while.body.i62_crit_edge

if.end16.i.while.body.i62_crit_edge:              ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i62

if.end16.i.if.end25_crit_edge:                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

do.end23:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %151 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %parent.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %152, ptr noundef nonnull @.str.8, i32 noundef %call14) #9
  %153 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr inttoptr (i32 -1 to ptr), ptr %state, align 4
  br label %if.end25

if.end25:                                         ; preds = %do.end23, %if.end16.i.if.end25_crit_edge, %if.end12.i.if.end25_crit_edge, %if.then19.if.end25_crit_edge, %if.then16.if.end25_crit_edge
  tail call void @gb_operation_put(ptr noundef nonnull %call.i.i) #6
  %154 = ptrtoint ptr %last_xfer.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %last_xfer.i, align 4
  %156 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %state, align 4
  %cmp.not.i69 = icmp eq ptr %157, inttoptr (i32 4 to ptr)
  br i1 %cmp.not.i69, label %if.end.i, label %if.end25.while.cond.backedge_crit_edge

if.end25.while.cond.backedge_crit_edge:           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge

if.end.i:                                         ; preds = %if.end25
  %158 = ptrtoint ptr %tx_xfer_offset.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %tx_xfer_offset.i, align 4
  %160 = ptrtoint ptr %last_xfer_size.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %last_xfer_size.i, align 4
  %add.i.i70 = add i32 %161, %159
  %len.i.i = getelementptr inbounds %struct.spi_transfer, ptr %155, i32 0, i32 2
  %162 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i70, i32 %163)
  %cmp.i.i = icmp eq i32 %add.i.i70, %163
  br i1 %cmp.i.i, label %if.end.i.if.then2.i_crit_edge, label %is_last_xfer_done.exit.i74

if.end.i.if.then2.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2.i

is_last_xfer_done.exit.i74:                       ; preds = %if.end.i
  %164 = ptrtoint ptr %rx_xfer_offset.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %rx_xfer_offset.i, align 4
  %add3.i.i72 = add i32 %165, %161
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i.i72, i32 %163)
  %cmp5.i.i73 = icmp eq i32 %add3.i.i72, %163
  br i1 %cmp5.i.i73, label %is_last_xfer_done.exit.i74.if.then2.i_crit_edge, label %if.end10.i

is_last_xfer_done.exit.i74.if.then2.i_crit_edge:  ; preds = %is_last_xfer_done.exit.i74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2.i

if.then2.i:                                       ; preds = %is_last_xfer_done.exit.i74.if.then2.i_crit_edge, %if.end.i.if.then2.i_crit_edge
  %166 = ptrtoint ptr %tx_xfer_offset.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 0, ptr %tx_xfer_offset.i, align 4
  %167 = ptrtoint ptr %rx_xfer_offset.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 0, ptr %rx_xfer_offset.i, align 4
  %168 = ptrtoint ptr %op_timeout.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 0, ptr %op_timeout.i, align 4
  %169 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %prev.i.i, align 4
  %add.ptr.i77 = getelementptr i8, ptr %170, i32 -84
  %cmp3.i = icmp eq ptr %155, %add.ptr.i77
  br i1 %cmp3.i, label %if.then4.i, label %if.else.i80

if.then4.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  %171 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr null, ptr %state, align 4
  br label %while.cond.backedge

if.else.i80:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  %transfer_list.i78 = getelementptr inbounds %struct.spi_transfer, ptr %155, i32 0, i32 18
  %172 = ptrtoint ptr %transfer_list.i78 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %transfer_list.i78, align 4
  %add.ptr8.i = getelementptr i8, ptr %173, i32 -84
  %174 = ptrtoint ptr %first_xfer to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %add.ptr8.i, ptr %first_xfer, align 4
  br label %while.cond.backedge

if.end10.i:                                       ; preds = %is_last_xfer_done.exit.i74
  %175 = ptrtoint ptr %first_xfer to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %155, ptr %first_xfer, align 4
  %176 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %155, align 4
  %tobool.not.i81 = icmp eq ptr %177, null
  br i1 %tobool.not.i81, label %if.end10.i.if.end14.i_crit_edge, label %if.then12.i

if.end10.i.if.end14.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  %178 = ptrtoint ptr %tx_xfer_offset.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %add.i.i70, ptr %tx_xfer_offset.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then12.i, %if.end10.i.if.end14.i_crit_edge
  %rx_buf.i82 = getelementptr inbounds %struct.spi_transfer, ptr %155, i32 0, i32 1
  %179 = ptrtoint ptr %rx_buf.i82 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %rx_buf.i82, align 4
  %tobool15.not.i = icmp eq ptr %180, null
  br i1 %tobool15.not.i, label %if.end14.i.while.cond.backedge_crit_edge, label %if.then16.i

if.end14.i.while.cond.backedge_crit_edge:         ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge

if.then16.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  %181 = ptrtoint ptr %rx_xfer_offset.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %rx_xfer_offset.i, align 4
  %add19.i = add i32 %182, %161
  store i32 %add19.i, ptr %rx_xfer_offset.i, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then16.i, %if.end14.i.while.cond.backedge_crit_edge, %if.else.i80, %if.then4.i, %if.end25.while.cond.backedge_crit_edge, %if.then11
  %ret.0.be = phi i32 [ -22, %if.then11 ], [ %call14, %if.end25.while.cond.backedge_crit_edge ], [ %call14, %if.then4.i ], [ %call14, %if.else.i80 ], [ %call14, %if.end14.i.while.cond.backedge_crit_edge ], [ %call14, %if.then16.i ]
  br label %while.cond

out:                                              ; preds = %while.cond.out_crit_edge, %while.cond.out_crit_edge117, %entry.out_crit_edge
  %ret.1 = phi i32 [ -12, %entry.out_crit_edge ], [ %ret.0, %while.cond.out_crit_edge ], [ %ret.0, %while.cond.out_crit_edge117 ]
  %status = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 7
  %183 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %ret.1, ptr %status, align 4
  %184 = ptrtoint ptr %first_xfer to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr null, ptr %first_xfer, align 4
  %last_xfer.i85 = getelementptr inbounds %struct.gb_spilib, ptr %1, i32 0, i32 3
  %185 = ptrtoint ptr %last_xfer.i85 to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr null, ptr %last_xfer.i85, align 4
  %rx_xfer_offset.i86 = getelementptr inbounds %struct.gb_spilib, ptr %1, i32 0, i32 5
  %186 = call ptr @memset(ptr %rx_xfer_offset.i86, i32 0, i32 16)
  tail call void @spi_finalize_current_message(ptr noundef %master) #6
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_spi_prepare_transfer_hardware(ptr nocapture noundef readonly %master) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ops = getelementptr inbounds %struct.gb_spilib, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %parent = getelementptr inbounds %struct.gb_spilib, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 4
  %call1 = tail call i32 %5(ptr noundef %7) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_spi_unprepare_transfer_hardware(ptr nocapture noundef readonly %master) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ops = getelementptr inbounds %struct.gb_spilib, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %unprepare_transfer_hardware = getelementptr inbounds %struct.spilib_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %unprepare_transfer_hardware to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %unprepare_transfer_hardware, align 4
  %parent = getelementptr inbounds %struct.gb_spilib, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 4
  tail call void %5(ptr noundef %7) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_register_controller(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_unregister_controller(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gb_spilib_master_exit(ptr nocapture noundef readonly %connection) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.gb_connection, ptr %connection, i32 0, i32 17
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  tail call void @spi_unregister_controller(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_operation_sync_timeout(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_operation_request_send_sync_timeout(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_operation_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_message(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_operation_get_payload_size_max(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_delay_to_ns(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gb_operation_create_flags(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_new_device(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !19, !21, !22, !23, !24, !26, !27, !28, !29, !31}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/greybus/spilib.c", i32 496, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @gb_spilib_master_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @gb_spilib_master_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/greybus/spilib.c", i32 542, i32 4}
!10 = !{ptr @gb_spilib_master_init._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @gb_spilib_master_init._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @__ksymtab_gb_spilib_master_init, !13, !"__ksymtab_gb_spilib_master_init", i1 false, i1 false}
!13 = !{!"../drivers/staging/greybus/spilib.c", i32 560, i32 1}
!14 = !{ptr @__ksymtab_gb_spilib_master_exit, !15, !"__ksymtab_gb_spilib_master_exit", i1 false, i1 false}
!15 = !{!"../drivers/staging/greybus/spilib.c", i32 568, i32 1}
!16 = !{ptr @__UNIQUE_ID_file236, !17, !"__UNIQUE_ID_file236", i1 false, i1 false}
!17 = !{!"../drivers/staging/greybus/spilib.c", i32 570, i32 1}
!18 = !{ptr @__UNIQUE_ID_license237, !17, !"__UNIQUE_ID_license237", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/staging/greybus/spilib.c", i32 362, i32 4}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @gb_spi_transfer_one_message._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @gb_spi_transfer_one_message._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/greybus/spilib.c", i32 187, i32 4}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @gb_spi_operation_create._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @gb_spi_operation_create._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/greybus/spilib.c", i32 462, i32 31}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/staging/greybus/spilib.c", i32 465, i32 31}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
