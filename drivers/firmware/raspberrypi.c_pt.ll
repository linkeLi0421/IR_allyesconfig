; ModuleID = '/llk/IR_all_yes/drivers/firmware/raspberrypi.c_pt.bc'
source_filename = "../drivers/firmware/raspberrypi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+rpi_firmware_property_list\22, \22a\22\09"
module asm "\09.weak\09__crc_rpi_firmware_property_list\09\09\09\09"
module asm "\09.long\09__crc_rpi_firmware_property_list\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpi_firmware_property_list:\09\09\09\09\09"
module asm "\09.asciz \09\22rpi_firmware_property_list\22\09\09\09\09\09"
module asm "__kstrtabns_rpi_firmware_property_list:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rpi_firmware_property\22, \22a\22\09"
module asm "\09.weak\09__crc_rpi_firmware_property\09\09\09\09"
module asm "\09.long\09__crc_rpi_firmware_property\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpi_firmware_property:\09\09\09\09\09"
module asm "\09.asciz \09\22rpi_firmware_property\22\09\09\09\09\09"
module asm "__kstrtabns_rpi_firmware_property:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rpi_firmware_put\22, \22a\22\09"
module asm "\09.weak\09__crc_rpi_firmware_put\09\09\09\09"
module asm "\09.long\09__crc_rpi_firmware_put\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpi_firmware_put:\09\09\09\09\09"
module asm "\09.asciz \09\22rpi_firmware_put\22\09\09\09\09\09"
module asm "__kstrtabns_rpi_firmware_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rpi_firmware_get\22, \22a\22\09"
module asm "\09.weak\09__crc_rpi_firmware_get\09\09\09\09"
module asm "\09.long\09__crc_rpi_firmware_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpi_firmware_get:\09\09\09\09\09"
module asm "\09.asciz \09\22rpi_firmware_get\22\09\09\09\09\09"
module asm "__kstrtabns_rpi_firmware_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devm_rpi_firmware_get\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_rpi_firmware_get\09\09\09\09"
module asm "\09.long\09__crc_devm_rpi_firmware_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_rpi_firmware_get:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_rpi_firmware_get\22\09\09\09\09\09"
module asm "__kstrtabns_devm_rpi_firmware_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rpi_firmware = type { %struct.mbox_client, ptr, %struct.completion, i32, %struct.kref }
%struct.mbox_client = type { ptr, i8, i32, i8, ptr, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rpi_firmware_property_tag_header = type { i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }

@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/firmware/raspberrypi.c\00", [33 x i8] zeroinitializer }, align 32
@rpi_firmware_property_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 124, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Request 0x%08x returned status 0x%08x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rpi_firmware_property_list\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rpi_firmware_property_list._entry_ptr = internal global ptr @rpi_firmware_property_list._entry, section ".printk_index", align 4
@__kstrtab_rpi_firmware_property_list = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpi_firmware_property_list = external dso_local constant [0 x i8], align 1
@__ksymtab_rpi_firmware_property_list = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpi_firmware_property_list to i32), ptr @__kstrtab_rpi_firmware_property_list, ptr @__kstrtabns_rpi_firmware_property_list }, section "___ksymtab_gpl+rpi_firmware_property_list", align 4
@__kstrtab_rpi_firmware_property = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpi_firmware_property = external dso_local constant [0 x i8], align 1
@__ksymtab_rpi_firmware_property = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpi_firmware_property to i32), ptr @__kstrtab_rpi_firmware_property, ptr @__kstrtabns_rpi_firmware_property }, section "___ksymtab_gpl+rpi_firmware_property", align 4
@__kstrtab_rpi_firmware_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpi_firmware_put = external dso_local constant [0 x i8], align 1
@__ksymtab_rpi_firmware_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpi_firmware_put to i32), ptr @__kstrtab_rpi_firmware_put, ptr @__kstrtabns_rpi_firmware_put }, section "___ksymtab_gpl+rpi_firmware_put", align 4
@__kstrtab_rpi_firmware_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpi_firmware_get = external dso_local constant [0 x i8], align 1
@__ksymtab_rpi_firmware_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpi_firmware_get to i32), ptr @__kstrtab_rpi_firmware_get, ptr @__kstrtabns_rpi_firmware_get }, section "___ksymtab_gpl+rpi_firmware_get", align 4
@__kstrtab_devm_rpi_firmware_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_rpi_firmware_get = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_rpi_firmware_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_rpi_firmware_get to i32), ptr @__kstrtab_devm_rpi_firmware_get, ptr @__kstrtabns_devm_rpi_firmware_get }, section "___ksymtab_gpl+devm_rpi_firmware_get", align 4
@__initcall__kmod_raspberrypi__230_384_rpi_firmware_driver_init6 = internal global ptr @rpi_firmware_driver_init, section ".initcall6.init", align 4
@rpi_firmware_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rpi_firmware_probe, ptr @rpi_firmware_remove, ptr @rpi_firmware_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.10, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rpi_firmware_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rpi_firmware_driver_exit = internal global ptr @rpi_firmware_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author231 = internal constant [49 x i8] c"raspberrypi.author=Eric Anholt <eric@anholt.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description232 = internal constant [53 x i8] c"raspberrypi.description=Raspberry Pi firmware driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [46 x i8] c"raspberrypi.file=drivers/firmware/raspberrypi\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [27 x i8] c"raspberrypi.license=GPL v2\00", section ".modinfo", align 1
@transaction_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @transaction_lock, i64 52), ptr getelementptr (i8, ptr @transaction_lock, i64 52) }, ptr @transaction_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@rpi_firmware_transaction.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Firmware transaction timeout\00", [35 x i8] zeroinitializer }, align 32
@rpi_firmware_transaction._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str, i32 66, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mbox_send_message returned %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rpi_firmware_transaction\00", [39 x i8] zeroinitializer }, align 32
@rpi_firmware_transaction._entry_ptr = internal global ptr @rpi_firmware_transaction._entry, section ".printk_index", align 4
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"transaction_lock.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"transaction_lock\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"raspberrypi-firmware\00", [43 x i8] zeroinitializer }, align 32
@rpi_firmware_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"raspberrypi,bcm2835-firmware\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rpi_firmware_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str, i32 274, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to get mbox channel: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rpi_firmware_probe\00", [45 x i8] zeroinitializer }, align 32
@rpi_firmware_probe._entry_ptr = internal global ptr @rpi_firmware_probe._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@rpi_firmware_print_firmware_revision._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str, i32 194, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Attached to firmware from %ptT\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"rpi_firmware_print_firmware_revision\00", [59 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rpi_firmware_print_firmware_revision._entry_ptr = internal global ptr @rpi_firmware_print_firmware_revision._entry, section ".printk_index", align 4
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"raspberrypi-hwmon\00", [46 x i8] zeroinitializer }, align 32
@rpi_hwmon = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"raspberrypi,firmware-clocks\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"raspberrypi-clk\00", [16 x i8] zeroinitializer }, align 32
@rpi_clk = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 105, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 123, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant [20 x i8] c"rpi_firmware_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 375, i32 31 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"transaction_lock\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 63, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 66, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 35, i32 8 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 377, i32 11 }
@___asan_gen_.65 = private unnamed_addr constant [22 x i8] c"rpi_firmware_of_match\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 369, i32 34 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 274, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 87, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 194, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 207, i32 49 }
@___asan_gen_.98 = private unnamed_addr constant [10 x i8] c"rpi_hwmon\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 23, i32 32 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 221, i32 9 }
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 227, i32 47 }
@___asan_gen_.107 = private unnamed_addr constant [8 x i8] c"rpi_clk\00", align 1
@___asan_gen_.108 = private constant [34 x i8] c"../drivers/firmware/raspberrypi.c\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 24, i32 32 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_rpi_firmware_driver_exit, ptr @__initcall__kmod_raspberrypi__230_384_rpi_firmware_driver_init6, ptr @__ksymtab_devm_rpi_firmware_get, ptr @__ksymtab_rpi_firmware_get, ptr @__ksymtab_rpi_firmware_property, ptr @__ksymtab_rpi_firmware_property_list, ptr @__ksymtab_rpi_firmware_put, ptr @rpi_firmware_driver_exit, ptr @rpi_firmware_print_firmware_revision._entry, ptr @rpi_firmware_print_firmware_revision._entry_ptr, ptr @rpi_firmware_probe._entry, ptr @rpi_firmware_probe._entry_ptr, ptr @rpi_firmware_property_list._entry, ptr @rpi_firmware_property_list._entry_ptr, ptr @rpi_firmware_transaction._entry, ptr @rpi_firmware_transaction._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @rpi_firmware_driver, ptr @transaction_lock, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @rpi_firmware_of_match, ptr @.str.11, ptr @.str.12, ptr @init_completion.__key, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @rpi_hwmon, ptr @.str.18, ptr @.str.19, ptr @rpi_clk], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpi_firmware_property_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpi_firmware_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @transaction_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpi_firmware_transaction._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpi_firmware_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpi_firmware_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpi_firmware_print_firmware_revision._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpi_hwmon to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpi_clk to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rpi_firmware_property_list(ptr noundef %fw, ptr nocapture noundef %data, i32 noundef %tag_size) #0 align 64 {
entry:
  %message.i = alloca i32, align 4
  %bus_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %tag_size, 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bus_addr) #8
  %0 = ptrtoint ptr %bus_addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bus_addr, align 4, !annotation !80
  %and = and i32 %tag_size, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fw, align 4
  %add1 = add i32 %tag_size, 4107
  %and2 = and i32 %add1, -4096
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %2, i32 noundef %and2, ptr noundef nonnull %bus_addr, i32 noundef 2592, i32 noundef 0) #8
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %add)
  %cmp = icmp ugt i32 %add, 1048575
  br i1 %cmp, label %do.end, label %if.end5.if.end20_crit_edge, !prof !81

if.end5.if.end20_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 105, i32 noundef 9, ptr noundef null) #8
  br label %if.end20

if.end20:                                         ; preds = %do.end, %if.end5.if.end20_crit_edge
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %add, ptr %call.i, align 4
  %arrayidx27 = getelementptr i32, ptr %call.i, i32 1
  %4 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %arrayidx27, align 4
  %arrayidx28 = getelementptr i32, ptr %call.i, i32 2
  %5 = call ptr @memcpy(ptr %arrayidx28, ptr %data, i32 %tag_size)
  %div76 = lshr i32 %add, 2
  %sub = add nsw i32 %div76, -1
  %arrayidx29 = getelementptr i32, ptr %call.i, i32 %sub
  %6 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %arrayidx29, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  call void @arm_heavy_mb() #8
  %7 = ptrtoint ptr %bus_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bus_addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %message.i) #8
  %and.i = and i32 %8, -16
  %or.i = or i32 %and.i, 8
  %9 = ptrtoint ptr %message.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or.i, ptr %message.i, align 4
  %and2.i = and i32 %8, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i, label %if.end20.if.end.i_crit_edge, label %do.end.i, !prof !83

if.end20.if.end.i_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 53, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end20.if.end.i_crit_edge
  call void @mutex_lock_nested(ptr noundef nonnull @transaction_lock, i32 noundef 0) #8
  %c.i = getelementptr inbounds %struct.rpi_firmware, ptr %fw, i32 0, i32 2
  %10 = ptrtoint ptr %c.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %c.i, align 4
  %chan22.i = getelementptr inbounds %struct.rpi_firmware, ptr %fw, i32 0, i32 1
  %11 = ptrtoint ptr %chan22.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chan22.i, align 4
  %call.i77 = call i32 @mbox_send_message(ptr noundef %12, ptr noundef nonnull %message.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i77)
  %cmp.i = icmp sgt i32 %call.i77, -1
  br i1 %cmp.i, label %if.then23.i, label %do.end77.i

if.then23.i:                                      ; preds = %if.end.i
  %call25.i = call i32 @wait_for_completion_timeout(ptr noundef %c.i, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %land.end.i, label %if.then23.i.rpi_firmware_transaction.exit_crit_edge

if.then23.i.rpi_firmware_transaction.exit_crit_edge: ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpi_firmware_transaction.exit

land.end.i:                                       ; preds = %if.then23.i
  %.b1.i = load i1, ptr @rpi_firmware_transaction.__already_done, align 1
  br i1 %.b1.i, label %land.end.i.rpi_firmware_transaction.exit_crit_edge, label %if.then38.i, !prof !83

land.end.i.rpi_firmware_transaction.exit_crit_edge: ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpi_firmware_transaction.exit

if.then38.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rpi_firmware_transaction.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 63, i32 noundef 9, ptr noundef nonnull @.str.5) #8
  br label %rpi_firmware_transaction.exit

do.end77.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fw, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.6, i32 noundef %call.i77) #11
  br label %rpi_firmware_transaction.exit

rpi_firmware_transaction.exit:                    ; preds = %do.end77.i, %if.then38.i, %land.end.i.rpi_firmware_transaction.exit_crit_edge, %if.then23.i.rpi_firmware_transaction.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i77, %do.end77.i ], [ 0, %if.then23.i.rpi_firmware_transaction.exit_crit_edge ], [ -110, %if.then38.i ], [ -110, %land.end.i.rpi_firmware_transaction.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @transaction_lock) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %message.i) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  %15 = call ptr @memcpy(ptr %data, ptr %arrayidx28, i32 %tag_size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp35 = icmp eq i32 %ret.0.i, 0
  br i1 %cmp35, label %land.lhs.true, label %rpi_firmware_transaction.exit.if.end46_crit_edge

rpi_firmware_transaction.exit.if.end46_crit_edge: ; preds = %rpi_firmware_transaction.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

land.lhs.true:                                    ; preds = %rpi_firmware_transaction.exit
  %16 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %17)
  %cmp37.not = icmp eq i32 %17, -2147483648
  br i1 %cmp37.not, label %land.lhs.true.if.end46_crit_edge, label %do.end41

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

do.end41:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fw, align 4
  %20 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx28, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.1, i32 noundef %21, i32 noundef %17) #11
  br label %if.end46

if.end46:                                         ; preds = %do.end41, %land.lhs.true.if.end46_crit_edge, %rpi_firmware_transaction.exit.if.end46_crit_edge
  %ret.0 = phi i32 [ -22, %do.end41 ], [ 0, %land.lhs.true.if.end46_crit_edge ], [ %ret.0.i, %rpi_firmware_transaction.exit.if.end46_crit_edge ]
  %22 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fw, align 4
  %24 = ptrtoint ptr %bus_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bus_addr, align 4
  call void @dma_free_attrs(ptr noundef %23, i32 noundef %and2, ptr noundef nonnull %call.i, i32 noundef %25, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end46 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bus_addr) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rpi_firmware_property(ptr noundef %fw, i32 noundef %tag, ptr nocapture noundef %tag_data, i32 noundef %buf_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %buf_size, 12
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #12
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %tag, ptr %call9.i, align 128
  %buf_size2 = getelementptr inbounds %struct.rpi_firmware_property_tag_header, ptr %call9.i, i32 0, i32 1
  %1 = ptrtoint ptr %buf_size2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %buf_size, ptr %buf_size2, align 4
  %req_resp_size = getelementptr inbounds %struct.rpi_firmware_property_tag_header, ptr %call9.i, i32 0, i32 2
  %2 = ptrtoint ptr %req_resp_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %req_resp_size, align 8
  %add.ptr = getelementptr i8, ptr %call9.i, i32 12
  %3 = call ptr @memcpy(ptr %add.ptr, ptr %tag_data, i32 %buf_size)
  %call4 = tail call i32 @rpi_firmware_property_list(ptr noundef %fw, ptr noundef nonnull %call9.i, i32 noundef %add)
  %4 = call ptr @memcpy(ptr %tag_data, ptr %add.ptr, i32 %buf_size)
  tail call void @kfree(ptr noundef nonnull %call9.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rpi_firmware_put(ptr noundef %fw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %consumers = getelementptr inbounds %struct.rpi_firmware, ptr %fw, i32 0, i32 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %consumers, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !85
  tail call void @llvm.prefetch.p0(ptr %consumers, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %consumers, ptr %consumers, i32 1, ptr elementtype(i32) %consumers) #8, !srcloc !86
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !83

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %consumers, i32 noundef 3) #8
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !87
  %chan.i.i = getelementptr %struct.rpi_firmware, ptr %fw, i32 0, i32 1
  %1 = ptrtoint ptr %chan.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chan.i.i, align 4
  tail call void @mbox_free_channel(ptr noundef %2) #8
  tail call void @kfree(ptr noundef %fw) #8
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rpi_firmware_get(ptr noundef %firmware_node) #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_find_device_by_node(ptr noundef %firmware_node) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end.err_put_device_crit_edge, label %if.end4

if.end.err_put_device_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_put_device

if.end4:                                          ; preds = %if.end
  %consumers = getelementptr inbounds %struct.rpi_firmware, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #8
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %consumers, i32 noundef 4) #8
  %2 = ptrtoint ptr %consumers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %consumers, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end4
  %4 = phi i32 [ %3, %if.end4 ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %5 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %4, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %consumers, i32 noundef 4) #8
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #8
  %6 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %consumers, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %8 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %consumers, ptr %consumers, i32 %7, i32 %add.i.i.i.i, ptr elementtype(i32) %consumers) #8, !srcloc !88
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %7
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !83

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %9 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %10, 1
  %11 = or i32 %add5.i.i.i.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !83

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %consumers, i32 noundef 0) #8
  %12 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %13 = phi i32 [ %10, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool12.i.i.i.i.not = icmp eq i32 %13, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #8
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.err_put_device_crit_edge, label %kref_get_unless_zero.exit.cleanup.sink.split_crit_edge

kref_get_unless_zero.exit.cleanup.sink.split_crit_edge: ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

kref_get_unless_zero.exit.err_put_device_crit_edge: ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_put_device

err_put_device:                                   ; preds = %kref_get_unless_zero.exit.err_put_device_crit_edge, %if.end.err_put_device_crit_edge
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err_put_device, %kref_get_unless_zero.exit.cleanup.sink.split_crit_edge
  %retval.0.ph = phi ptr [ null, %err_put_device ], [ %1, %kref_get_unless_zero.exit.cleanup.sink.split_crit_edge ]
  %dev9 = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3
  call void @put_device(ptr noundef %dev9) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @devm_rpi_firmware_get(ptr noundef %dev, ptr noundef %firmware_node) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rpi_firmware_get(ptr noundef %firmware_node)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @devm_rpi_firmware_put, ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  %consumers.i.i.i = getelementptr inbounds %struct.rpi_firmware, ptr %call, i32 0, i32 4
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %consumers.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !85
  tail call void @llvm.prefetch.p0(ptr %consumers.i.i.i, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %consumers.i.i.i, ptr %consumers.i.i.i, i32 1, ptr elementtype(i32) %consumers.i.i.i) #8, !srcloc !86
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i.i.i, label %if.end5.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i:                            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i.i, !prof !83

if.end5.i.i.i.i.i.i.i.cleanup_crit_edge:          ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i.i.i.i:                          ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %consumers.i.i.i, i32 noundef 3) #8
  br label %cleanup

if.then.i.i.i.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !87
  %chan.i.i.i.i.i = getelementptr %struct.rpi_firmware, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %chan.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chan.i.i.i.i.i, align 4
  tail call void @mbox_free_channel(ptr noundef %2) #8
  tail call void @kfree(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i.i, %if.then10.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ null, %if.end5.i.i.i.i.i.i.i.cleanup_crit_edge ], [ null, %if.then10.i.i.i.i.i.i.i ], [ null, %if.then.i.i.i.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_rpi_firmware_put(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %consumers.i = getelementptr inbounds %struct.rpi_firmware, ptr %data, i32 0, i32 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %consumers.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !85
  tail call void @llvm.prefetch.p0(ptr %consumers.i, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %consumers.i, ptr %consumers.i, i32 1, ptr elementtype(i32) %consumers.i) #8, !srcloc !86
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.rpi_firmware_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !83

if.end5.i.i.i.i.i.rpi_firmware_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpi_firmware_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %consumers.i, i32 noundef 3) #8
  br label %rpi_firmware_put.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !87
  %chan.i.i.i = getelementptr %struct.rpi_firmware, ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %chan.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chan.i.i.i, align 4
  tail call void @mbox_free_channel(ptr noundef %2) #8
  tail call void @kfree(ptr noundef %data) #8
  br label %rpi_firmware_put.exit

rpi_firmware_put.exit:                            ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.rpi_firmware_put.exit_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rpi_firmware_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rpi_firmware_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rpi_firmware_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @rpi_firmware_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mbox_send_message(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_free_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpi_firmware_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %pdevinfo.i.i.i43 = alloca %struct.platform_device_info, align 8
  %pdevinfo.i.i.i = alloca %struct.platform_device_info, align 8
  %date_and_time.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 96) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %call7.i.i, align 8
  %rx_callback = getelementptr inbounds %struct.mbox_client, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %rx_callback to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @response_callback, ptr %rx_callback, align 8
  %tx_block = getelementptr inbounds %struct.mbox_client, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %tx_block to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %tx_block, align 4
  %call6 = tail call ptr @mbox_request_channel(ptr noundef nonnull %call7.i.i, i32 noundef 0) #8
  %chan = getelementptr inbounds %struct.rpi_firmware, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call6, ptr %chan, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end14

if.then9:                                         ; preds = %if.end
  %cmp.not = icmp eq ptr %call6, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then9.cleanup_crit_edge, label %do.end

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %call6 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %5) #11
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %c = getelementptr inbounds %struct.rpi_firmware, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %c, align 8
  %wait.i = getelementptr inbounds %struct.rpi_firmware, ptr %call7.i.i, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @init_completion.__key) #8
  %consumers = getelementptr inbounds %struct.rpi_firmware, ptr %call7.i.i, i32 0, i32 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %consumers, i32 noundef 4) #8
  %7 = ptrtoint ptr %consumers to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 1, ptr %consumers, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %date_and_time.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 16) #13
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end14.rpi_firmware_print_firmware_revision.exit_crit_edge, label %rpi_firmware_property.exit.i

if.end14.rpi_firmware_print_firmware_revision.exit_crit_edge: ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpi_firmware_print_firmware_revision.exit

rpi_firmware_property.exit.i:                     ; preds = %if.end14
  %10 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %call7.i.i.i, align 8
  %buf_size2.i.i = getelementptr inbounds %struct.rpi_firmware_property_tag_header, ptr %call7.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %buf_size2.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %buf_size2.i.i, align 4
  %req_resp_size.i.i = getelementptr inbounds %struct.rpi_firmware_property_tag_header, ptr %call7.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %req_resp_size.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %req_resp_size.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %call7.i.i.i, i32 12
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %add.ptr.i.i, align 4
  %call4.i.i = tail call i32 @rpi_firmware_property_list(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i.i.i, i32 noundef 16) #8
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %packet.0.copyload4.i = load i32, ptr %add.ptr.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool.not.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %rpi_firmware_property.exit.i.rpi_firmware_print_firmware_revision.exit_crit_edge

rpi_firmware_property.exit.i.rpi_firmware_print_firmware_revision.exit_crit_edge: ; preds = %rpi_firmware_property.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpi_firmware_print_firmware_revision.exit

if.end.i:                                         ; preds = %rpi_firmware_property.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i32 %packet.0.copyload4.i to i64
  %15 = ptrtoint ptr %date_and_time.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv.i, ptr %date_and_time.i, align 8
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call7.i.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.14, ptr noundef nonnull %date_and_time.i) #11
  br label %rpi_firmware_print_firmware_revision.exit

rpi_firmware_print_firmware_revision.exit:        ; preds = %if.end.i, %rpi_firmware_property.exit.i.rpi_firmware_print_firmware_revision.exit_crit_edge, %if.end14.rpi_firmware_print_firmware_revision.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %date_and_time.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i34 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3264, i32 noundef 16) #13
  %tobool.not.i.i35 = icmp eq ptr %call7.i.i.i34, null
  br i1 %tobool.not.i.i35, label %rpi_firmware_print_firmware_revision.exit.rpi_register_hwmon_driver.exit_crit_edge, label %rpi_firmware_property.exit.i41

rpi_firmware_print_firmware_revision.exit.rpi_register_hwmon_driver.exit_crit_edge: ; preds = %rpi_firmware_print_firmware_revision.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpi_register_hwmon_driver.exit

rpi_firmware_property.exit.i41:                   ; preds = %rpi_firmware_print_firmware_revision.exit
  %19 = ptrtoint ptr %call7.i.i.i34 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 196678, ptr %call7.i.i.i34, align 8
  %buf_size2.i.i36 = getelementptr inbounds %struct.rpi_firmware_property_tag_header, ptr %call7.i.i.i34, i32 0, i32 1
  %20 = ptrtoint ptr %buf_size2.i.i36 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4, ptr %buf_size2.i.i36, align 4
  %req_resp_size.i.i37 = getelementptr inbounds %struct.rpi_firmware_property_tag_header, ptr %call7.i.i.i34, i32 0, i32 2
  %21 = ptrtoint ptr %req_resp_size.i.i37 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %req_resp_size.i.i37, align 8
  %add.ptr.i.i38 = getelementptr i8, ptr %call7.i.i.i34, i32 12
  %22 = ptrtoint ptr %add.ptr.i.i38 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %add.ptr.i.i38, align 4
  %call4.i.i39 = call i32 @rpi_firmware_property_list(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i.i.i34, i32 noundef 16) #8
  call void @kfree(ptr noundef nonnull %call7.i.i.i34) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i39)
  %tobool.not.i40 = icmp eq i32 %call4.i.i39, 0
  br i1 %tobool.not.i40, label %if.end.i42, label %rpi_firmware_property.exit.i41.rpi_register_hwmon_driver.exit_crit_edge

rpi_firmware_property.exit.i41.rpi_register_hwmon_driver.exit_crit_edge: ; preds = %rpi_firmware_property.exit.i41
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpi_register_hwmon_driver.exit

if.end.i42:                                       ; preds = %rpi_firmware_property.exit.i41
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i.i) #8
  %23 = getelementptr inbounds i8, ptr %pdevinfo.i.i.i, i32 8
  %24 = call ptr @memset(ptr %23, i32 255, i32 48)
  %25 = ptrtoint ptr %pdevinfo.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dev1, ptr %pdevinfo.i.i.i, align 8
  %fwnode.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %fwnode.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %fwnode.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %23, align 8
  %name2.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %name2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.17, ptr %name2.i.i.i, align 4
  %res4.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 5
  %dma_mask.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 9
  %29 = ptrtoint ptr %dma_mask.i.i.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 0, ptr %dma_mask.i.i.i, align 8
  %properties.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 10
  %30 = ptrtoint ptr %properties.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %properties.i.i.i, align 8
  %31 = call ptr @memset(ptr %res4.i.i.i, i32 0, i32 16)
  %call.i.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i.i) #8
  store ptr %call.i.i.i, ptr @rpi_hwmon, align 4
  br label %rpi_register_hwmon_driver.exit

rpi_register_hwmon_driver.exit:                   ; preds = %if.end.i42, %rpi_firmware_property.exit.i41.rpi_register_hwmon_driver.exit_crit_edge, %rpi_firmware_print_firmware_revision.exit.rpi_register_hwmon_driver.exit_crit_edge
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %32 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %of_node.i, align 8
  %call.i = call ptr @of_get_compatible_child(ptr noundef %33, ptr noundef nonnull @.str.18) #8
  %tobool.not.i44 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i44, label %if.end.i51, label %if.then.i

if.then.i:                                        ; preds = %rpi_register_hwmon_driver.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @of_node_put(ptr noundef nonnull %call.i) #8
  br label %cleanup

if.end.i51:                                       ; preds = %rpi_register_hwmon_driver.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i.i43) #8
  %34 = getelementptr inbounds i8, ptr %pdevinfo.i.i.i43, i32 8
  %35 = call ptr @memset(ptr %34, i32 255, i32 48)
  %36 = ptrtoint ptr %pdevinfo.i.i.i43 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %dev1, ptr %pdevinfo.i.i.i43, align 8
  %fwnode.i.i.i45 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i43, i32 0, i32 1
  %37 = ptrtoint ptr %fwnode.i.i.i45 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %fwnode.i.i.i45, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %34, align 8
  %name2.i.i.i46 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i43, i32 0, i32 3
  %39 = ptrtoint ptr %name2.i.i.i46 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.19, ptr %name2.i.i.i46, align 4
  %res4.i.i.i47 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i43, i32 0, i32 5
  %dma_mask.i.i.i48 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i43, i32 0, i32 9
  %40 = ptrtoint ptr %dma_mask.i.i.i48 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 0, ptr %dma_mask.i.i.i48, align 8
  %properties.i.i.i49 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i43, i32 0, i32 10
  %41 = ptrtoint ptr %properties.i.i.i49 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %properties.i.i.i49, align 8
  %42 = call ptr @memset(ptr %res4.i.i.i47, i32 0, i32 16)
  %call.i.i.i50 = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i.i43) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i.i43) #8
  store ptr %call.i.i.i50, ptr @rpi_clk, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i51, %if.then.i, %do.end, %if.then9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %5, %do.end ], [ -517, %if.then9.cleanup_crit_edge ], [ 0, %if.then.i ], [ 0, %if.end.i51 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpi_firmware_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = load ptr, ptr @rpi_hwmon, align 4
  tail call void @platform_device_unregister(ptr noundef %2) #8
  store ptr null, ptr @rpi_hwmon, align 4
  %3 = load ptr, ptr @rpi_clk, align 4
  tail call void @platform_device_unregister(ptr noundef %3) #8
  store ptr null, ptr @rpi_clk, align 4
  %consumers.i = getelementptr inbounds %struct.rpi_firmware, ptr %1, i32 0, i32 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %consumers.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !85
  tail call void @llvm.prefetch.p0(ptr %consumers.i, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %consumers.i, ptr %consumers.i, i32 1, ptr elementtype(i32) %consumers.i) #8, !srcloc !86
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.rpi_firmware_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !83

if.end5.i.i.i.i.i.rpi_firmware_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpi_firmware_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %consumers.i, i32 noundef 3) #8
  br label %rpi_firmware_put.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !87
  %chan.i.i.i = getelementptr %struct.rpi_firmware, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %chan.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chan.i.i.i, align 4
  tail call void @mbox_free_channel(ptr noundef %6) #8
  tail call void @kfree(ptr noundef %1) #8
  br label %rpi_firmware_put.exit

rpi_firmware_put.exit:                            ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.rpi_firmware_put.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rpi_firmware_shutdown(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 12) #13
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 196680, ptr %call7.i.i, align 8
  %buf_size2.i = getelementptr inbounds %struct.rpi_firmware_property_tag_header, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %buf_size2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %buf_size2.i, align 4
  %req_resp_size.i = getelementptr inbounds %struct.rpi_firmware_property_tag_header, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %req_resp_size.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %req_resp_size.i, align 8
  %call4.i = tail call i32 @rpi_firmware_property_list(ptr noundef nonnull %1, ptr noundef nonnull %call7.i.i, i32 noundef 12) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @response_callback(ptr noundef %cl, ptr nocapture noundef readnone %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %c = getelementptr inbounds %struct.rpi_firmware, ptr %cl, i32 0, i32 2
  tail call void @complete(ptr noundef %c) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mbox_request_channel(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_compatible_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !13, !15, !17, !19, !21, !22, !24, !26, !28, !29, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !45, !47, !48, !49, !50, !52, !53, !55, !56, !57, !58, !59, !61, !63, !65, !67, !69}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/firmware/raspberrypi.c", i32 105, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/firmware/raspberrypi.c", i32 123, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @rpi_firmware_property_list._entry, !3, !"_entry", i1 false, i1 false}
!8 = !{ptr @rpi_firmware_property_list._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @__ksymtab_rpi_firmware_property_list, !10, !"__ksymtab_rpi_firmware_property_list", i1 false, i1 false}
!10 = !{!"../drivers/firmware/raspberrypi.c", i32 132, i32 1}
!11 = !{ptr @__ksymtab_rpi_firmware_property, !12, !"__ksymtab_rpi_firmware_property", i1 false, i1 false}
!12 = !{!"../drivers/firmware/raspberrypi.c", i32 178, i32 1}
!13 = !{ptr @__ksymtab_rpi_firmware_put, !14, !"__ksymtab_rpi_firmware_put", i1 false, i1 false}
!14 = !{!"../drivers/firmware/raspberrypi.c", i32 244, i32 1}
!15 = !{ptr @__ksymtab_rpi_firmware_get, !16, !"__ksymtab_rpi_firmware_get", i1 false, i1 false}
!16 = !{!"../drivers/firmware/raspberrypi.c", i32 345, i32 1}
!17 = !{ptr @__ksymtab_devm_rpi_firmware_get, !18, !"__ksymtab_devm_rpi_firmware_get", i1 false, i1 false}
!18 = !{!"../drivers/firmware/raspberrypi.c", i32 367, i32 1}
!19 = !{ptr @__initcall__kmod_raspberrypi__230_384_rpi_firmware_driver_init6, !20, !"__initcall__kmod_raspberrypi__230_384_rpi_firmware_driver_init6", i1 false, i1 false}
!20 = !{!"../drivers/firmware/raspberrypi.c", i32 384, i32 1}
!21 = !{ptr @__exitcall_rpi_firmware_driver_exit, !20, !"__exitcall_rpi_firmware_driver_exit", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_author231, !23, !"__UNIQUE_ID_author231", i1 false, i1 false}
!23 = !{!"../drivers/firmware/raspberrypi.c", i32 386, i32 1}
!24 = !{ptr @__UNIQUE_ID_description232, !25, !"__UNIQUE_ID_description232", i1 false, i1 false}
!25 = !{!"../drivers/firmware/raspberrypi.c", i32 387, i32 1}
!26 = !{ptr @__UNIQUE_ID_file233, !27, !"__UNIQUE_ID_file233", i1 false, i1 false}
!27 = !{!"../drivers/firmware/raspberrypi.c", i32 388, i32 1}
!28 = !{ptr @__UNIQUE_ID_license234, !27, !"__UNIQUE_ID_license234", i1 false, i1 false}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../drivers/firmware/raspberrypi.c", i32 63, i32 4}
!31 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/firmware/raspberrypi.c", i32 66, i32 3}
!34 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @rpi_firmware_transaction._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @rpi_firmware_transaction._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/firmware/raspberrypi.c", i32 35, i32 8}
!39 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @transaction_lock, !38, !"transaction_lock", i1 false, i1 false}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/firmware/raspberrypi.c", i32 377, i32 11}
!43 = !{ptr @rpi_firmware_driver, !44, !"rpi_firmware_driver", i1 false, i1 false}
!44 = !{!"../drivers/firmware/raspberrypi.c", i32 375, i32 31}
!45 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/firmware/raspberrypi.c", i32 274, i32 4}
!47 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @rpi_firmware_probe._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @rpi_firmware_probe._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @init_completion.__key, !51, !"__key", i1 false, i1 false}
!51 = !{!"../include/linux/completion.h", i32 87, i32 2}
!52 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.14, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/firmware/raspberrypi.c", i32 194, i32 2}
!55 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @rpi_firmware_print_firmware_revision._entry, !54, !"_entry", i1 false, i1 false}
!58 = !{ptr @rpi_firmware_print_firmware_revision._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.17, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/firmware/raspberrypi.c", i32 207, i32 49}
!61 = !{ptr @rpi_hwmon, !62, !"rpi_hwmon", i1 false, i1 false}
!62 = !{!"../drivers/firmware/raspberrypi.c", i32 23, i32 32}
!63 = !{ptr @.str.18, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/firmware/raspberrypi.c", i32 221, i32 9}
!65 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/firmware/raspberrypi.c", i32 227, i32 47}
!67 = !{ptr @rpi_clk, !68, !"rpi_clk", i1 false, i1 false}
!68 = !{!"../drivers/firmware/raspberrypi.c", i32 24, i32 32}
!69 = !{ptr @rpi_firmware_of_match, !70, !"rpi_firmware_of_match", i1 false, i1 false}
!70 = !{!"../drivers/firmware/raspberrypi.c", i32 369, i32 34}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{!"auto-init"}
!81 = !{!"branch_weights", i32 1, i32 2000}
!82 = !{i64 2154028750}
!83 = !{!"branch_weights", i32 2000, i32 1}
!84 = !{i64 2154028843}
!85 = !{i64 2148605439}
!86 = !{i64 2148519903, i64 2148519935, i64 2148519964, i64 2148519998, i64 2148520029, i64 2148520052}
!87 = !{i64 2149627492}
!88 = !{i64 1001421, i64 1001445, i64 1001466, i64 1001483, i64 1001500}
