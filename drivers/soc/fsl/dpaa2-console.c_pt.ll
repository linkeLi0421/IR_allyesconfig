; ModuleID = '/llk/IR_all_yes/drivers/soc/fsl/dpaa2-console.c_pt.bc'
source_filename = "../drivers/soc/fsl/dpaa2-console.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.list_head = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.console_data = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.log_header = type { i32, [4 x i8], i32, i32, i32 }

@__initcall__kmod_dpaa2_console__224_326_dpaa2_console_driver_init6 = internal global ptr @dpaa2_console_driver_init, section ".initcall6.init", align 4
@dpaa2_console_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dpaa2_console_probe, ptr @dpaa2_console_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dpaa2_console_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_dpaa2_console_driver_exit = internal global ptr @dpaa2_console_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file225 = internal constant [49 x i8] c"dpaa2_console.file=drivers/soc/fsl/dpaa2-console\00", section ".modinfo", align 1
@__UNIQUE_ID_license226 = internal constant [35 x i8] c"dpaa2_console.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author227 = internal constant [53 x i8] c"dpaa2_console.author=Roy Pledge <roy.pledge@nxp.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description228 = internal constant [47 x i8] c"dpaa2_console.description=DPAA2 console driver\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dpaa2-console\00", [18 x i8] zeroinitializer }, align 32
@dpaa2_console_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,dpaa2-console\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mc_base_addr = internal global { %struct.resource, [32 x i8] } zeroinitializer, align 32
@dpaa2_console_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013dpaa2-console: of_address_to_resource() failed for %pOF with %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dpaa2_console_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/soc/fsl/dpaa2-console.c\00", [32 x i8] zeroinitializer }, align 32
@dpaa2_console_probe._entry_ptr = internal global ptr @dpaa2_console_probe._entry, section ".printk_index", align 4
@dpaa2_mc_console_dev = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 255, ptr @.str.9, ptr @dpaa2_mc_console_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@dpaa2_console_probe._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013dpaa2-console: cannot register device %s\0A\00", [52 x i8] zeroinitializer }, align 32
@dpaa2_console_probe._entry_ptr.6 = internal global ptr @dpaa2_console_probe._entry.4, section ".printk_index", align 4
@dpaa2_aiop_console_dev = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 255, ptr @.str.23, ptr @dpaa2_aiop_console_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@dpaa2_console_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dpaa2_console_probe._entry_ptr.8 = internal global ptr @dpaa2_console_probe._entry.7, section ".printk_index", align 4
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dpaa2_mc_console\00", [47 x i8] zeroinitializer }, align 32
@dpaa2_mc_console_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @dpaa2_console_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dpaa2_mc_console_open, ptr null, ptr @dpaa2_console_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@dpaa2_generic_console_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013dpaa2-console: cannot map console log memory\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dpaa2_generic_console_open\00", [37 x i8] zeroinitializer }, align 32
@dpaa2_generic_console_open._entry_ptr = internal global ptr @dpaa2_generic_console_open._entry, section ".printk_index", align 4
@dpaa2_generic_console_open._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.3, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014dpaa2-console: expected = %08x, read = %08x\0A\00", [49 x i8] zeroinitializer }, align 32
@dpaa2_generic_console_open._entry_ptr.17 = internal global ptr @dpaa2_generic_console_open._entry.15, section ".printk_index", align 4
@get_mc_fw_base_address._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013dpaa2-console: could not map MC Firmware Base registers\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"get_mc_fw_base_address\00", [41 x i8] zeroinitializer }, align 32
@get_mc_fw_base_address._entry_ptr = internal global ptr @get_mc_fw_base_address._entry, section ".printk_index", align 4
@get_mc_fw_base_address.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.19, ptr @.str.3, ptr @.str.21, i8 0, i8 21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dpaa2_console\00", [18 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MC base address at 0x%016llx\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"dpaa2-console: MC base address at 0x%016llx\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dpaa2_aiop_console\00", [45 x i8] zeroinitializer }, align 32
@dpaa2_aiop_console_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @dpaa2_console_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dpaa2_aiop_console_open, ptr null, ptr @dpaa2_console_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@___asan_gen_.24 = private unnamed_addr constant [21 x i8] c"dpaa2_console_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 317, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 319, i32 14 }
@___asan_gen_.30 = private unnamed_addr constant [26 x i8] c"dpaa2_console_match_table\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 310, i32 34 }
@___asan_gen_.33 = private unnamed_addr constant [13 x i8] c"mc_base_addr\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 60, i32 24 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 275, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [21 x i8] c"dpaa2_mc_console_dev\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 250, i32 26 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 282, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [23 x i8] c"dpaa2_aiop_console_dev\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 263, i32 26 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 289, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 252, i32 10 }
@___asan_gen_.66 = private unnamed_addr constant [22 x i8] c"dpaa2_mc_console_fops\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 243, i32 37 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 230, i32 6 }
@___asan_gen_.73 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 214, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 174, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 125, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 137, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 76, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 86, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 265, i32 10 }
@___asan_gen_.114 = private unnamed_addr constant [24 x i8] c"dpaa2_aiop_console_fops\00", align 1
@___asan_gen_.115 = private constant [35 x i8] c"../drivers/soc/fsl/dpaa2-console.c\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 256, i32 37 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_author227, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file225, ptr @__UNIQUE_ID_license226, ptr @__exitcall_dpaa2_console_driver_exit, ptr @__initcall__kmod_dpaa2_console__224_326_dpaa2_console_driver_init6, ptr @dpaa2_console_driver_exit, ptr @dpaa2_console_probe._entry, ptr @dpaa2_console_probe._entry.4, ptr @dpaa2_console_probe._entry.7, ptr @dpaa2_console_probe._entry_ptr, ptr @dpaa2_console_probe._entry_ptr.6, ptr @dpaa2_console_probe._entry_ptr.8, ptr @dpaa2_generic_console_open._entry, ptr @dpaa2_generic_console_open._entry.15, ptr @dpaa2_generic_console_open._entry_ptr, ptr @dpaa2_generic_console_open._entry_ptr.17, ptr @get_mc_fw_base_address._entry, ptr @get_mc_fw_base_address._entry_ptr, ptr @dpaa2_console_driver, ptr @.str, ptr @dpaa2_console_match_table, ptr @mc_base_addr, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @dpaa2_mc_console_dev, ptr @.str.5, ptr @dpaa2_aiop_console_dev, ptr @.str.9, ptr @dpaa2_mc_console_fops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @dpaa2_aiop_console_fops], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_console_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_console_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_base_addr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_console_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_mc_console_dev to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_console_probe._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_aiop_console_dev to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_console_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_mc_console_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_generic_console_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_generic_console_open._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_mc_fw_base_address._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_aiop_console_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_console_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dpaa2_console_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dpaa2_console_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @dpaa2_console_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_console_probe(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call i32 @of_address_to_resource(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @mc_base_addr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %3, i32 noundef %call) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @misc_register(ptr noundef nonnull @dpaa2_mc_console_dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end11, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = load ptr, ptr getelementptr inbounds (%struct.miscdevice, ptr @dpaa2_mc_console_dev, i32 0, i32 1), align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %4) #10
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = tail call i32 @misc_register(ptr noundef nonnull @dpaa2_aiop_console_dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %do.end17

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %5 = load ptr, ptr getelementptr inbounds (%struct.miscdevice, ptr @dpaa2_aiop_console_dev, i32 0, i32 1), align 4
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %5) #10
  tail call void @misc_deregister(ptr noundef nonnull @dpaa2_mc_console_dev) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %if.end11.cleanup_crit_edge, %do.end8, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.end11.cleanup_crit_edge ], [ %call4, %do.end8 ], [ %call12, %do.end17 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_console_remove(ptr nocapture noundef readnone %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @misc_deregister(ptr noundef nonnull @dpaa2_mc_console_dev) #7
  tail call void @misc_deregister(ptr noundef nonnull @dpaa2_aiop_console_dev) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_console_read(ptr nocapture noundef readonly %fp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %f_pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %fp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %cur_ptr.i = getelementptr inbounds %struct.console_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %cur_ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_ptr.i, align 4
  %end_of_data.i = getelementptr inbounds %struct.console_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %end_of_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end_of_data.i, align 4
  %cmp.not.i = icmp ugt ptr %3, %5
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i92

if.then.i92:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub.ptr.lhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %dpaa2_console_size.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %end_addr.i = getelementptr inbounds %struct.console_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %end_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end_addr.i, align 4
  %sub.ptr.lhs.cast4.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast5.i = ptrtoint ptr %3 to i32
  %start_addr.i = getelementptr inbounds %struct.console_data, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %start_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %start_addr.i, align 4
  %sub.ptr.lhs.cast8.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast9.i = ptrtoint ptr %9 to i32
  %10 = add i32 %sub.ptr.lhs.cast8.i, %sub.ptr.lhs.cast4.i
  %11 = add i32 %sub.ptr.rhs.cast5.i, %sub.ptr.rhs.cast9.i
  %add.i = sub i32 %10, %11
  br label %dpaa2_console_size.exit

dpaa2_console_size.exit:                          ; preds = %if.else.i, %if.then.i92
  %sub.ptr.rhs.cast.pre-phi = phi i32 [ %sub.ptr.rhs.cast.i, %if.then.i92 ], [ %sub.ptr.rhs.cast5.i, %if.else.i ]
  %size.0.i = phi i32 [ %sub.ptr.sub.i, %if.then.i92 ], [ %add.i, %if.else.i ]
  %end_addr = getelementptr inbounds %struct.console_data, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %end_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %end_addr, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %13 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast.pre-phi
  %hdr.i = getelementptr inbounds %struct.console_data, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %hdr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hdr.i, align 4
  %last_byte1.i = getelementptr inbounds %struct.log_header, ptr %15, i32 0, i32 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %last_byte1.i) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  %start_addr.i94 = getelementptr inbounds %struct.console_data, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %start_addr.i94 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %start_addr.i94, align 4
  %19 = and i32 %16, -129
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #7
  %add.ptr.i = getelementptr i8, ptr %18, i32 %20
  %21 = ptrtoint ptr %end_of_data.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr.i, ptr %end_of_data.i, align 4
  %22 = ptrtoint ptr %cur_ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cur_ptr.i, align 4
  %cmp = icmp eq ptr %add.ptr.i, %23
  br i1 %cmp, label %dpaa2_console_size.exit.cleanup_crit_edge, label %if.end

dpaa2_console_size.exit.cleanup_crit_edge:        ; preds = %dpaa2_console_size.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %dpaa2_console_size.exit
  %24 = tail call i32 @llvm.umin.i32(i32 %size.0.i, i32 %count)
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %24, i32 noundef 3264) #11
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %sub.ptr.sub)
  %cmp8 = icmp ugt i32 %24, %sub.ptr.sub
  br i1 %cmp8, label %if.then9, label %if.end7.if.end16_crit_edge

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then9:                                         ; preds = %if.end7
  %25 = ptrtoint ptr %cur_ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cur_ptr.i, align 4
  tail call void @mmiocpy(ptr noundef nonnull %call9.i, ptr noundef %26, i32 noundef %sub.ptr.sub) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.ptr.sub)
  %cmp9.i.i = icmp slt i32 %sub.ptr.sub, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.then9
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.cleanup.sink.split_crit_edge, label %if.then27.i.i, !prof !80

land.rhs16.i.i.cleanup.sink.split_crit_edge:      ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %cleanup.sink.split

if.then.i.i.i:                                    ; preds = %if.then9
  tail call void @__check_object_size(ptr noundef nonnull %call9.i, i32 noundef %sub.ptr.sub, i1 noundef zeroext true) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 174) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i66

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit

if.end.i.i66:                                     ; preds = %if.then.i.i.i
  %27 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %sub.ptr.sub, i32 -1226833920) #12, !srcloc !81
  %asmresult.i.i = extractvalue { i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i66.copy_to_user.exit_crit_edge

if.end.i.i66.copy_to_user.exit_crit_edge:         ; preds = %if.end.i.i66
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i66
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call9.i, i32 noundef %sub.ptr.sub) #7
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef nonnull %call9.i, i32 noundef %sub.ptr.sub) #7
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i66.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %sub.ptr.sub, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %sub.ptr.sub, %if.end.i.i66.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool12.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool12.not, label %if.end14, label %copy_to_user.exit.cleanup.sink.split_crit_edge

copy_to_user.exit.cleanup.sink.split_crit_edge:   ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end14:                                         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %buf, i32 %sub.ptr.sub
  %28 = ptrtoint ptr %start_addr.i94 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %start_addr.i94, align 4
  %30 = ptrtoint ptr %cur_ptr.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %cur_ptr.i, align 4
  %sub = sub i32 %24, %sub.ptr.sub
  br label %if.end16

if.end16:                                         ; preds = %if.end14, %if.end7.if.end16_crit_edge
  %buf.addr.0 = phi ptr [ %add.ptr, %if.end14 ], [ %buf, %if.end7.if.end16_crit_edge ]
  %bytes.1 = phi i32 [ %sub, %if.end14 ], [ %24, %if.end7.if.end16_crit_edge ]
  %written.0 = phi i32 [ %sub.ptr.sub, %if.end14 ], [ 0, %if.end7.if.end16_crit_edge ]
  %31 = ptrtoint ptr %cur_ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cur_ptr.i, align 4
  tail call void @mmiocpy(ptr noundef nonnull %call9.i, ptr noundef %32, i32 noundef %bytes.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes.1)
  %cmp9.i.i74 = icmp slt i32 %bytes.1, 0
  br i1 %cmp9.i.i74, label %land.rhs16.i.i77, label %if.then.i.i.i80

land.rhs16.i.i77:                                 ; preds = %if.end16
  %.b1.i.i76 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i76, label %land.rhs16.i.i77.cleanup.sink.split_crit_edge, label %if.then27.i.i78, !prof !80

land.rhs16.i.i77.cleanup.sink.split_crit_edge:    ; preds = %land.rhs16.i.i77
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then27.i.i78:                                  ; preds = %land.rhs16.i.i77
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %cleanup.sink.split

if.then.i.i.i80:                                  ; preds = %if.end16
  tail call void @__check_object_size(ptr noundef nonnull %call9.i, i32 noundef %bytes.1, i1 noundef zeroext true) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 174) #7
  %call.i.i81 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i81, label %if.then.i.i.i80.copy_to_user.exit91_crit_edge, label %if.end.i.i85

if.then.i.i.i80.copy_to_user.exit91_crit_edge:    ; preds = %if.then.i.i.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit91

if.end.i.i85:                                     ; preds = %if.then.i.i.i80
  %33 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0, i32 %bytes.1, i32 -1226833920) #12, !srcloc !81
  %asmresult.i.i83 = extractvalue { i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i83)
  %cmp.i6.i84 = icmp eq i32 %asmresult.i.i83, 0
  br i1 %cmp.i6.i84, label %if.then2.i.i88, label %if.end.i.i85.copy_to_user.exit91_crit_edge

if.end.i.i85.copy_to_user.exit91_crit_edge:       ; preds = %if.end.i.i85
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit91

if.then2.i.i88:                                   ; preds = %if.end.i.i85
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i86 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call9.i, i32 noundef %bytes.1) #7
  %call.i12.i.i87 = tail call i32 @arm_copy_to_user(ptr noundef %buf.addr.0, ptr noundef nonnull %call9.i, i32 noundef %bytes.1) #7
  br label %copy_to_user.exit91

copy_to_user.exit91:                              ; preds = %if.then2.i.i88, %if.end.i.i85.copy_to_user.exit91_crit_edge, %if.then.i.i.i80.copy_to_user.exit91_crit_edge
  %n.addr.0.i89 = phi i32 [ %bytes.1, %if.then.i.i.i80.copy_to_user.exit91_crit_edge ], [ %call.i12.i.i87, %if.then2.i.i88 ], [ %bytes.1, %if.end.i.i85.copy_to_user.exit91_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i89)
  %tobool19.not = icmp eq i32 %n.addr.0.i89, 0
  br i1 %tobool19.not, label %if.end21, label %copy_to_user.exit91.cleanup.sink.split_crit_edge

copy_to_user.exit91.cleanup.sink.split_crit_edge: ; preds = %copy_to_user.exit91
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end21:                                         ; preds = %copy_to_user.exit91
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %cur_ptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cur_ptr.i, align 4
  %add.ptr23 = getelementptr i8, ptr %35, i32 %bytes.1
  store ptr %add.ptr23, ptr %cur_ptr.i, align 4
  %add24 = add nuw i32 %written.0, %bytes.1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end21, %copy_to_user.exit91.cleanup.sink.split_crit_edge, %if.then27.i.i78, %land.rhs16.i.i77.cleanup.sink.split_crit_edge, %copy_to_user.exit.cleanup.sink.split_crit_edge, %if.then27.i.i, %land.rhs16.i.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %add24, %if.end21 ], [ -14, %land.rhs16.i.i77.cleanup.sink.split_crit_edge ], [ -14, %if.then27.i.i78 ], [ -14, %land.rhs16.i.i.cleanup.sink.split_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %copy_to_user.exit91.cleanup.sink.split_crit_edge ], [ -14, %copy_to_user.exit.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %dpaa2_console_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %dpaa2_console_size.exit.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_mc_console_open(ptr nocapture noundef readnone %node, ptr nocapture noundef writeonly %fp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @dpaa2_generic_console_open(ptr noundef %fp, i64 noundef 16777216, i32 noundef 1296236800, i32 noundef 16777216)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_console_close(ptr nocapture noundef readnone %node, ptr nocapture noundef readonly %fp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %fp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @iounmap(ptr noundef %3) #7
  tail call void @kfree(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dpaa2_generic_console_open(ptr nocapture noundef writeonly %fp, i64 noundef %offset, i32 noundef %expected_magic, i32 noundef %offset_delta) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 24) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i64 @get_mc_fw_base_address()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call1)
  %tobool2.not = icmp eq i64 %call1, 0
  br i1 %tobool2.not, label %if.end.err_fwba_crit_edge, label %if.end4

if.end.err_fwba_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_fwba

if.end4:                                          ; preds = %if.end
  %add = add i64 %call1, %offset
  %conv = trunc i64 %add to i32
  %call6 = tail call ptr @ioremap(i32 noundef %conv, i32 noundef 16777216) #7
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call6, ptr %call7.i, align 8
  %tobool8.not = icmp eq ptr %call6, null
  br i1 %tobool8.not, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #10
  br label %err_fwba

if.end11:                                         ; preds = %if.end4
  %hdr = getelementptr inbounds %struct.console_data, ptr %call7.i, i32 0, i32 1
  %2 = ptrtoint ptr %hdr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call6, ptr %hdr, align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call6) #7, !srcloc !78
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %last_byte20 = getelementptr inbounds %struct.log_header, ptr %call6, i32 0, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %last_byte20) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  %buf_start27 = getelementptr inbounds %struct.log_header, ptr %call6, i32 0, i32 2
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %buf_start27) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  %buf_length34 = getelementptr inbounds %struct.log_header, ptr %call6, i32 0, i32 3
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %buf_length34) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %expected_magic)
  %cmp.not = icmp eq i32 %4, %expected_magic
  br i1 %cmp.not, label %if.end45, label %do.end42

do.end42:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %expected_magic, i32 noundef %4) #10
  %8 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call7.i, align 8
  tail call void @iounmap(ptr noundef %9) #7
  br label %err_fwba

if.end45:                                         ; preds = %if.end11
  %10 = tail call i32 @llvm.bswap.i32(i32 %7)
  %11 = tail call i32 @llvm.bswap.i32(i32 %6)
  %12 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call7.i, align 8
  %add.ptr = getelementptr i8, ptr %13, i32 %11
  %idx.neg = sub i32 0, %offset_delta
  %add.ptr47 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %start_addr = getelementptr inbounds %struct.console_data, ptr %call7.i, i32 0, i32 2
  %14 = ptrtoint ptr %start_addr to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr47, ptr %start_addr, align 8
  %add.ptr49 = getelementptr i8, ptr %add.ptr47, i32 %10
  %end_addr = getelementptr inbounds %struct.console_data, ptr %call7.i, i32 0, i32 3
  %15 = ptrtoint ptr %end_addr to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr49, ptr %end_addr, align 4
  %16 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hdr, align 4
  %last_byte1.i = getelementptr inbounds %struct.log_header, ptr %17, i32 0, i32 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %last_byte1.i) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  %19 = and i32 %18, -129
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #7
  %add.ptr.i = getelementptr i8, ptr %add.ptr47, i32 %20
  %end_of_data.i = getelementptr inbounds %struct.console_data, ptr %call7.i, i32 0, i32 4
  %21 = ptrtoint ptr %end_of_data.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr.i, ptr %end_of_data.i, align 8
  %.mask = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool50.not = icmp eq i32 %.mask, 0
  br i1 %tobool50.not, label %if.end45.if.end59_crit_edge, label %land.lhs.true

if.end45.if.end59_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

land.lhs.true:                                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %end_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %end_addr, align 4
  %cmp52.not = icmp eq ptr %add.ptr.i, %23
  %add.ptr56 = getelementptr i8, ptr %add.ptr.i, i32 1
  %spec.select = select i1 %cmp52.not, ptr %add.ptr47, ptr %add.ptr56
  br label %if.end59

if.end59:                                         ; preds = %land.lhs.true, %if.end45.if.end59_crit_edge
  %add.ptr47.sink = phi ptr [ %add.ptr47, %if.end45.if.end59_crit_edge ], [ %spec.select, %land.lhs.true ]
  %cur_ptr58 = getelementptr inbounds %struct.console_data, ptr %call7.i, i32 0, i32 5
  %24 = ptrtoint ptr %cur_ptr58 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr47.sink, ptr %cur_ptr58, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %fp, i32 0, i32 16
  %25 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i, ptr %private_data, align 4
  br label %cleanup

err_fwba:                                         ; preds = %do.end42, %do.end, %if.end.err_fwba_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup

cleanup:                                          ; preds = %err_fwba, %if.end59, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %err_fwba ], [ 0, %if.end59 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @get_mc_fw_base_address() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @mc_base_addr, align 4
  %1 = load i32, ptr getelementptr inbounds (%struct.resource, ptr @mc_base_addr, i32 0, i32 1), align 4
  %sub.i = sub i32 1, %0
  %add.i = add i32 %sub.i, %1
  %call1 = tail call ptr @ioremap(i32 noundef %0, i32 noundef %add.i) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i32, ptr %call1, i32 1
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  %3 = and i32 %2, -65280
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %conv = zext i32 %4 to i64
  %shl = shl nuw nsw i64 %conv, 32
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call1) #7, !srcloc !78
  %6 = shl i32 %5, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %and12 = and i32 %6, -536870912
  %conv13 = zext i32 %and12 to i64
  %or = or i64 %shl, %conv13
  tail call void @iounmap(ptr noundef nonnull %call1) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_mc_fw_base_address.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_mc_fw_base_address, %if.then20)) #7
          to label %cleanup [label %if.then20], !srcloc !88

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_mc_fw_base_address.__UNIQUE_ID_ddebug223, ptr noundef nonnull @.str.22, i64 noundef %or) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.end, %do.end
  %retval.0 = phi i64 [ 0, %do.end ], [ %or, %if.then20 ], [ %or, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_aiop_console_open(ptr nocapture noundef readnone %node, ptr nocapture noundef writeonly %fp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @dpaa2_generic_console_open(ptr noundef %fp, i64 noundef 100663296, i32 noundef 1095323472, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !29, !31, !33, !35, !37, !38, !40, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !61, !63, !65, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @__initcall__kmod_dpaa2_console__224_326_dpaa2_console_driver_init6, !1, !"__initcall__kmod_dpaa2_console__224_326_dpaa2_console_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/soc/fsl/dpaa2-console.c", i32 326, i32 1}
!2 = !{ptr @__exitcall_dpaa2_console_driver_exit, !1, !"__exitcall_dpaa2_console_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file225, !4, !"__UNIQUE_ID_file225", i1 false, i1 false}
!4 = !{!"../drivers/soc/fsl/dpaa2-console.c", i32 328, i32 1}
!5 = !{ptr @__UNIQUE_ID_license226, !4, !"__UNIQUE_ID_license226", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author227, !7, !"__UNIQUE_ID_author227", i1 false, i1 false}
!7 = !{!"../drivers/soc/fsl/dpaa2-console.c", i32 329, i32 1}
!8 = !{ptr @__UNIQUE_ID_description228, !9, !"__UNIQUE_ID_description228", i1 false, i1 false}
!9 = !{!"../drivers/soc/fsl/dpaa2-console.c", i32 330, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/soc/fsl/dpaa2-console.c", i32 319, i32 14}
!12 = !{ptr @dpaa2_console_driver, !13, !"dpaa2_console_driver", i1 false, i1 false}
!13 = !{!"../drivers/soc/fsl/dpaa2-console.c", i32 317, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/soc/fsl/dpaa2-console.c", i32 275, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @dpaa2_console_probe._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @dpaa2_console_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/soc/fsl/dpaa2-console.c", i32 282, i32 3}
!22 = !{ptr @dpaa2_console_probe._entry.4, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @dpaa2_console_probe._entry_ptr.6, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @dpaa2_console_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!25 = !{!"../drivers/soc/fsl/dpaa2-console.c", i32 289, i32 3}
!26 = !{ptr @dpaa2_console_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @mc_base_addr, !28, !"mc_base_addr", i1 false, i1 false}
!28 = !{!"../drivers/soc/fsl/dpaa2-console.c", i32 60, i32 24}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/soc/fsl/dpaa2-console.c", i32 252, i32 10}
!31 = !{ptr @dpaa2_mc_console_dev, !32, !"dpaa2_mc_console_dev", i1 false, i1 false}
!32 = !{!"../drivers/soc/fsl/dpaa2-console.c", i32 250, i32 26}
!33 = !{ptr @dpaa2_mc_console_fops, !34, !"dpaa2_mc_console_fops", i1 false, i1 false}
!34 = !{!"../drivers/soc/fsl/dpaa2-console.c", i32 243, i32 37}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!37 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/soc/fsl/dpaa2-console.c", i32 125, i32 3}
!44 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @dpaa2_generic_console_open._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @dpaa2_generic_console_open._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/soc/fsl/dpaa2-console.c", i32 137, i32 3}
!49 = !{ptr @dpaa2_generic_console_open._entry.15, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @dpaa2_generic_console_open._entry_ptr.17, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/soc/fsl/dpaa2-console.c", i32 76, i32 3}
!53 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @get_mc_fw_base_address._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @get_mc_fw_base_address._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/soc/fsl/dpaa2-console.c", i32 86, i32 2}
!58 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @get_mc_fw_base_address.__UNIQUE_ID_ddebug223, !57, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!60 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/soc/fsl/dpaa2-console.c", i32 265, i32 10}
!63 = !{ptr @dpaa2_aiop_console_dev, !64, !"dpaa2_aiop_console_dev", i1 false, i1 false}
!64 = !{!"../drivers/soc/fsl/dpaa2-console.c", i32 263, i32 26}
!65 = !{ptr @dpaa2_aiop_console_fops, !66, !"dpaa2_aiop_console_fops", i1 false, i1 false}
!66 = !{!"../drivers/soc/fsl/dpaa2-console.c", i32 256, i32 37}
!67 = !{ptr @dpaa2_console_match_table, !68, !"dpaa2_console_match_table", i1 false, i1 false}
!68 = !{!"../drivers/soc/fsl/dpaa2-console.c", i32 310, i32 34}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{i64 4955161}
!79 = !{i64 2153639800}
!80 = !{!"branch_weights", i32 2000, i32 1}
!81 = !{i64 2152568896, i64 2152568921}
!82 = !{i64 2153647364}
!83 = !{i64 2153647858}
!84 = !{i64 2153648352}
!85 = !{i64 2153648850}
!86 = !{i64 2153642133}
!87 = !{i64 2153642613}
!88 = !{i64 2148959109, i64 2148959114, i64 2148959127, i64 2148959171, i64 2148959205, i64 2148959226}
