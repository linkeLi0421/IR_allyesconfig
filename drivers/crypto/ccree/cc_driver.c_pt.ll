; ModuleID = '/llk/IR_all_yes/drivers/crypto/ccree/cc_driver.c_pt.bc'
source_filename = "../drivers/crypto/ccree/cc_driver.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cc_hw_data = type { ptr, i32, i32, i32, i32, i32 }
%struct.cc_drvdata = type { ptr, i32, %struct.completion, ptr, i32, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8, ptr, i32, i32, i32, i32, i32, i8, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__param_str_dump_desc = internal constant [16 x i8] c"ccree.dump_desc\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@cc_dump_desc = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@__param_dump_desc = internal constant %struct.kernel_param { ptr @__param_str_dump_desc, ptr null, ptr @param_ops_bool, i16 384, i8 -1, i8 0, %union.anon.65 { ptr @cc_dump_desc } }, section "__param", align 4
@__UNIQUE_ID_dump_desctype422 = internal constant [30 x i8] c"ccree.parmtype=dump_desc:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_cc_dump_desc423 = internal constant [72 x i8] c"ccree.parm=cc_dump_desc:Dump descriptors to kernel log as debugging aid\00", section ".modinfo", align 1
@__param_str_dump_bytes = internal constant [17 x i8] c"ccree.dump_bytes\00", align 1
@cc_dump_bytes = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@__param_dump_bytes = internal constant %struct.kernel_param { ptr @__param_str_dump_bytes, ptr null, ptr @param_ops_bool, i16 384, i8 -1, i8 0, %union.anon.65 { ptr @cc_dump_bytes } }, section "__param", align 4
@__UNIQUE_ID_dump_bytestype424 = internal constant [31 x i8] c"ccree.parmtype=dump_bytes:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_cc_dump_bytes425 = internal constant [69 x i8] c"ccree.parm=cc_dump_bytes:Dump buffers to kernel log as debugging aid\00", section ".modinfo", align 1
@__param_str_sec_disable = internal constant [18 x i8] c"ccree.sec_disable\00", align 1
@cc_sec_disable = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_sec_disable = internal constant %struct.kernel_param { ptr @__param_str_sec_disable, ptr null, ptr @param_ops_bool, i16 384, i8 -1, i8 0, %union.anon.65 { ptr @cc_sec_disable } }, section "__param", align 4
@__UNIQUE_ID_sec_disabletype426 = internal constant [32 x i8] c"ccree.parmtype=sec_disable:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_cc_sec_disable427 = internal constant [53 x i8] c"ccree.parm=cc_sec_disable:Disable security functions\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s[%zu]: \00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@init_cc_regs.__UNIQUE_ID_ddebug459 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ccree\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"init_cc_regs\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/crypto/ccree/cc_driver.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"AXIM_CFG=0x%08X\0A\00", [47 x i8] zeroinitializer }, align 32
@init_cc_regs.__UNIQUE_ID_ddebug460 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, i8 0, i8 72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IRR=0x%08X\0A\00", [20 x i8] zeroinitializer }, align 32
@__initcall__kmod_ccree__465_663_ccree_init6 = internal global ptr @ccree_init, section ".initcall6.init", align 4
@ccree_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ccree_probe, ptr @ccree_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @arm_ccree_dev_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ccree_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ccree_exit = internal global ptr @ccree_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description466 = internal constant [54 x i8] c"ccree.description=ARM TrustZone CryptoCell REE Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_version467 = internal constant [18 x i8] c"ccree.version=5.0\00", section ".modinfo", align 1
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"5.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.7, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.2, ptr @.str.8 }, section "__modver", align 4
@__UNIQUE_ID_author468 = internal constant [17 x i8] c"ccree.author=ARM\00", section ".modinfo", align 1
@__UNIQUE_ID_file469 = internal constant [38 x i8] c"ccree.file=drivers/crypto/ccree/ccree\00", section ".modinfo", align 1
@__UNIQUE_ID_license470 = internal constant [21 x i8] c"ccree.license=GPL v2\00", section ".modinfo", align 1
@arm_ccree_dev_of_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,cryptocell-703-ree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cc703_hw }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,cryptocell-713-ree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cc713_hw }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,cryptocell-712-ree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cc712_hw }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,cryptocell-710-ree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cc710_hw }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,cryptocell-630p-ree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cc630p_hw }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@ccree_pm = external dso_local constant %struct.dev_pm_ops, align 4
@ccree_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.4, i32 627, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ARM ccree device initialized\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ccree_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ccree_probe._entry_ptr = internal global ptr @ccree_probe._entry, section ".printk_index", align 4
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Error getting clock\0A\00", [43 x i8] zeroinitializer }, align 32
@init_cc_resources.__UNIQUE_ID_ddebug461 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.14, ptr @.str.4, ptr @.str.15, i8 0, i8 90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"init_cc_resources\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Got MEM resource (%s): %pR\0A\00", [36 x i8] zeroinitializer }, align 32
@init_cc_resources.__UNIQUE_ID_ddebug462 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.14, ptr @.str.4, ptr @.str.16, i8 0, i8 90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"CC registers mapped from %pa to 0x%p\0A\00", [58 x i8] zeroinitializer }, align 32
@init_cc_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.14, ptr @.str.4, i32 385, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed in dma_set_mask, mask=%llx\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@init_cc_resources._entry_ptr = internal global ptr @init_cc_resources._entry, section ".printk_index", align 4
@init_cc_resources._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.14, ptr @.str.4, i32 391, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to enable clock\00", [41 x i8] zeroinitializer }, align 32
@init_cc_resources._entry_ptr.21 = internal global ptr @init_cc_resources._entry.19, section ".printk_index", align 4
@init_cc_resources._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.14, ptr @.str.4, i32 403, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"pm_runtime_get_sync() failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@init_cc_resources._entry_ptr.24 = internal global ptr @init_cc_resources._entry.22, section ".printk_index", align 4
@init_cc_resources._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.14, ptr @.str.4, i32 409, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Cryptocell reset not completed\00", [33 x i8] zeroinitializer }, align 32
@init_cc_resources._entry_ptr.27 = internal global ptr @init_cc_resources._entry.25, section ".printk_index", align 4
@init_cc_resources._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.14, ptr @.str.4, i32 417, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Invalid CC signature: SIGNATURE=0x%08X != expected=0x%08X\0A\00", [37 x i8] zeroinitializer }, align 32
@init_cc_resources._entry_ptr.30 = internal global ptr @init_cc_resources._entry.28, section ".printk_index", align 4
@pidr_0124_offsets = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4064, i32 4068, i32 4072, i32 4048], [16 x i8] zeroinitializer }, align 32
@init_cc_resources._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.14, ptr @.str.4, i32 428, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Invalid CC PIDR: PIDR0124=0x%08X != expected=0x%08X\0A\00", [43 x i8] zeroinitializer }, align 32
@init_cc_resources._entry_ptr.33 = internal global ptr @init_cc_resources._entry.31, section ".printk_index", align 4
@cidr_0123_offsets = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4080, i32 4084, i32 4088, i32 4092], [16 x i8] zeroinitializer }, align 32
@init_cc_resources._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.14, ptr @.str.4, i32 437, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Invalid CC CIDR: CIDR0123=0x%08X != expected=0x%08X\0A\00", [43 x i8] zeroinitializer }, align 32
@init_cc_resources._entry_ptr.36 = internal global ptr @init_cc_resources._entry.34, section ".printk_index", align 4
@init_cc_resources._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.14, ptr @.str.4, i32 451, ptr @.str.39, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"703 mode forced due to HW configuration.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@init_cc_resources._entry_ptr.40 = internal global ptr @init_cc_resources._entry.37, section ".printk_index", align 4
@init_cc_resources._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.14, ptr @.str.4, i32 456, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unsupported engines configuration.\0A\00", [60 x i8] zeroinitializer }, align 32
@init_cc_resources._entry_ptr.43 = internal global ptr @init_cc_resources._entry.41, section ".printk_index", align 4
@init_cc_resources._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.14, ptr @.str.4, i32 474, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Security Disabled mode is in effect. Security functions disabled.\0A\00", [61 x i8] zeroinitializer }, align 32
@init_cc_resources._entry_ptr.46 = internal global ptr @init_cc_resources._entry.44, section ".printk_index", align 4
@init_cc_resources._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.14, ptr @.str.4, i32 478, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"ARM CryptoCell %s Driver: HW version 0x%08X/0x%8X, Driver version %s\0A\00", [58 x i8] zeroinitializer }, align 32
@init_cc_resources._entry_ptr.49 = internal global ptr @init_cc_resources._entry.47, section ".printk_index", align 4
@init_cc_resources._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.14, ptr @.str.4, i32 483, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Could not register to interrupt %d\0A\00", [60 x i8] zeroinitializer }, align 32
@init_cc_resources._entry_ptr.52 = internal global ptr @init_cc_resources._entry.50, section ".printk_index", align 4
@init_cc_resources.__UNIQUE_ID_ddebug463 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.14, ptr @.str.4, ptr @.str.53, i8 0, i8 121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Registered to IRQ: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@init_cc_resources._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.14, ptr @.str.4, i32 492, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"init_cc_regs failed\0A\00", [43 x i8] zeroinitializer }, align 32
@init_cc_resources._entry_ptr.56 = internal global ptr @init_cc_resources._entry.54, section ".printk_index", align 4
@init_cc_resources._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.14, ptr @.str.4, i32 498, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed registering debugfs interface\0A\00", [58 x i8] zeroinitializer }, align 32
@init_cc_resources._entry_ptr.59 = internal global ptr @init_cc_resources._entry.57, section ".printk_index", align 4
@init_cc_resources._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.14, ptr @.str.4, i32 504, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cc_fips_init failed 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@init_cc_resources._entry_ptr.62 = internal global ptr @init_cc_resources._entry.60, section ".printk_index", align 4
@init_cc_resources._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.14, ptr @.str.4, i32 509, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cc_sram_mgr_init failed\0A\00", [39 x i8] zeroinitializer }, align 32
@init_cc_resources._entry_ptr.65 = internal global ptr @init_cc_resources._entry.63, section ".printk_index", align 4
@init_cc_resources._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.14, ptr @.str.4, i32 522, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cc_req_mgr_init failed\0A\00", [40 x i8] zeroinitializer }, align 32
@init_cc_resources._entry_ptr.68 = internal global ptr @init_cc_resources._entry.66, section ".printk_index", align 4
@init_cc_resources._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.14, ptr @.str.4, i32 528, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cc_buffer_mgr_init failed\0A\00", [37 x i8] zeroinitializer }, align 32
@init_cc_resources._entry_ptr.71 = internal global ptr @init_cc_resources._entry.69, section ".printk_index", align 4
@init_cc_resources._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.14, ptr @.str.4, i32 535, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cc_cipher_alloc failed\0A\00", [40 x i8] zeroinitializer }, align 32
@init_cc_resources._entry_ptr.74 = internal global ptr @init_cc_resources._entry.72, section ".printk_index", align 4
@init_cc_resources._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.14, ptr @.str.4, i32 542, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cc_hash_alloc failed\0A\00", [42 x i8] zeroinitializer }, align 32
@init_cc_resources._entry_ptr.77 = internal global ptr @init_cc_resources._entry.75, section ".printk_index", align 4
@init_cc_resources._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.14, ptr @.str.4, i32 548, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cc_aead_alloc failed\0A\00", [42 x i8] zeroinitializer }, align 32
@init_cc_resources._entry_ptr.80 = internal global ptr @init_cc_resources._entry.78, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@cc_isr.__UNIQUE_ID_ddebug457 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.82, ptr @.str.4, ptr @.str.83, i8 0, i8 49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cc_isr\00", [25 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Got IRR=0x%08X\0A\00", [16 x i8] zeroinitializer }, align 32
@cc_isr.__UNIQUE_ID_ddebug458 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.82, ptr @.str.4, ptr @.str.84, i8 0, i8 58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"AXI completion error: axim_mon_err=0x%08X\0A\00", [53 x i8] zeroinitializer }, align 32
@cc_isr._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.85, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@cc_isr.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.82, ptr @.str.4, ptr @.str.86, i8 0, i8 60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"IRR includes unknown cause bits (0x%08X)\0A\00", [54 x i8] zeroinitializer }, align 32
@init_cc_cache_params.__UNIQUE_ID_ddebug428 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.87, ptr @.str.4, ptr @.str.88, i8 0, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"init_cc_cache_params\00", [43 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Cache params previous: 0x%08X\0A\00", [33 x i8] zeroinitializer }, align 32
@init_cc_cache_params.__UNIQUE_ID_ddebug444 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.87, ptr @.str.4, ptr @.str.89, i8 0, i8 32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Cache params current: 0x%08X\0A\00", [34 x i8] zeroinitializer }, align 32
@init_cc_cache_params.__UNIQUE_ID_ddebug445 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.87, ptr @.str.4, ptr @.str.90, i8 0, i8 34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ACE-const previous: 0x%08X\0A\00", [36 x i8] zeroinitializer }, align 32
@init_cc_cache_params.__UNIQUE_ID_ddebug456 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.87, ptr @.str.4, ptr @.str.91, i8 0, i8 37, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ACE-const current: 0x%08X\0A\00", [37 x i8] zeroinitializer }, align 32
@ccree_remove.__UNIQUE_ID_ddebug464 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.92, ptr @.str.4, ptr @.str.93, i8 0, i8 -97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ccree_remove\00", [19 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Releasing ccree resources...\0A\00", [34 x i8] zeroinitializer }, align 32
@ccree_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.92, ptr @.str.4, i32 640, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ARM ccree device terminated\0A\00", [35 x i8] zeroinitializer }, align 32
@ccree_remove._entry_ptr = internal global ptr @ccree_remove._entry, section ".printk_index", align 4
@cc703_hw = internal constant { %struct.cc_hw_data, [40 x i8] } { %struct.cc_hw_data { ptr @.str.95, i32 713, i32 0, i32 -1325010931, i32 67875024, i32 2 }, [40 x i8] zeroinitializer }, align 32
@cc713_hw = internal constant { %struct.cc_hw_data, [40 x i8] } { %struct.cc_hw_data { ptr @.str.96, i32 713, i32 0, i32 -1325010931, i32 67875024, i32 3 }, [40 x i8] zeroinitializer }, align 32
@cc712_hw = internal constant { %struct.cc_hw_data, [40 x i8] } { %struct.cc_hw_data { ptr @.str.97, i32 712, i32 -590933504, i32 0, i32 0, i32 3 }, [40 x i8] zeroinitializer }, align 32
@cc710_hw = internal constant { %struct.cc_hw_data, [40 x i8] } { %struct.cc_hw_data { ptr @.str.98, i32 710, i32 -590990848, i32 0, i32 0, i32 3 }, [40 x i8] zeroinitializer }, align 32
@cc630p_hw = internal constant { %struct.cc_hw_data, [40 x i8] } { %struct.cc_hw_data { ptr @.str.99, i32 630, i32 -590991360, i32 0, i32 0, i32 3 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"703\00", [28 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"713\00", [28 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"712\00", [28 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"710\00", [28 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"630P\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 159]
@___asan_gen_.100 = private unnamed_addr constant [13 x i8] c"cc_dump_desc\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 31, i32 6 }
@___asan_gen_.103 = private unnamed_addr constant [14 x i8] c"cc_dump_bytes\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 34, i32 6 }
@___asan_gen_.106 = private unnamed_addr constant [15 x i8] c"cc_sec_disable\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 38, i32 13 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 176, i32 35 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 178, i32 17 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 283, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 289, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant [13 x i8] c"ccree_driver\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 645, i32 31 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 674, i32 1 }
@___asan_gen_.139 = private unnamed_addr constant [23 x i8] c"arm_ccree_dev_of_match\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 93, i32 34 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 627, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 346, i32 43 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 359, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 361, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 385, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 391, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 403, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 409, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 416, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant [18 x i8] c"pidr_0124_offsets\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 55, i32 18 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 427, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant [18 x i8] c"cidr_0123_offsets\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 60, i32 18 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 436, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 451, i32 5 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 456, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 474, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 477, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 483, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 486, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 492, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 498, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 504, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 509, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 522, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 528, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 535, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 542, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 548, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.314 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 87, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 196, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 233, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 240, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 111, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 130, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 137, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 150, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 636, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 640, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant [9 x i8] c"cc703_hw\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 68, i32 32 }
@___asan_gen_.364 = private unnamed_addr constant [9 x i8] c"cc713_hw\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 73, i32 32 }
@___asan_gen_.367 = private unnamed_addr constant [9 x i8] c"cc712_hw\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 78, i32 32 }
@___asan_gen_.370 = private unnamed_addr constant [9 x i8] c"cc710_hw\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 83, i32 32 }
@___asan_gen_.373 = private unnamed_addr constant [10 x i8] c"cc630p_hw\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 88, i32 32 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 69, i32 10 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 74, i32 10 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 79, i32 10 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 84, i32 10 }
@___asan_gen_.388 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.389 = private constant [36 x i8] c"../drivers/crypto/ccree/cc_driver.c\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 89, i32 10 }
@llvm.compiler.used = appending global [138 x ptr] [ptr @__UNIQUE_ID_author468, ptr @__UNIQUE_ID_cc_dump_bytes425, ptr @__UNIQUE_ID_cc_dump_desc423, ptr @__UNIQUE_ID_cc_sec_disable427, ptr @__UNIQUE_ID_description466, ptr @__UNIQUE_ID_dump_bytestype424, ptr @__UNIQUE_ID_dump_desctype422, ptr @__UNIQUE_ID_file469, ptr @__UNIQUE_ID_license470, ptr @__UNIQUE_ID_sec_disabletype426, ptr @__UNIQUE_ID_version467, ptr @__exitcall_ccree_exit, ptr @__initcall__kmod_ccree__465_663_ccree_init6, ptr @__modver_attr, ptr @__param_dump_bytes, ptr @__param_dump_desc, ptr @__param_sec_disable, ptr @ccree_exit, ptr @ccree_probe._entry, ptr @ccree_probe._entry_ptr, ptr @ccree_remove._entry, ptr @ccree_remove._entry_ptr, ptr @init_cc_resources._entry, ptr @init_cc_resources._entry.19, ptr @init_cc_resources._entry.22, ptr @init_cc_resources._entry.25, ptr @init_cc_resources._entry.28, ptr @init_cc_resources._entry.31, ptr @init_cc_resources._entry.34, ptr @init_cc_resources._entry.37, ptr @init_cc_resources._entry.41, ptr @init_cc_resources._entry.44, ptr @init_cc_resources._entry.47, ptr @init_cc_resources._entry.50, ptr @init_cc_resources._entry.54, ptr @init_cc_resources._entry.57, ptr @init_cc_resources._entry.60, ptr @init_cc_resources._entry.63, ptr @init_cc_resources._entry.66, ptr @init_cc_resources._entry.69, ptr @init_cc_resources._entry.72, ptr @init_cc_resources._entry.75, ptr @init_cc_resources._entry.78, ptr @init_cc_resources._entry_ptr, ptr @init_cc_resources._entry_ptr.21, ptr @init_cc_resources._entry_ptr.24, ptr @init_cc_resources._entry_ptr.27, ptr @init_cc_resources._entry_ptr.30, ptr @init_cc_resources._entry_ptr.33, ptr @init_cc_resources._entry_ptr.36, ptr @init_cc_resources._entry_ptr.40, ptr @init_cc_resources._entry_ptr.43, ptr @init_cc_resources._entry_ptr.46, ptr @init_cc_resources._entry_ptr.49, ptr @init_cc_resources._entry_ptr.52, ptr @init_cc_resources._entry_ptr.56, ptr @init_cc_resources._entry_ptr.59, ptr @init_cc_resources._entry_ptr.62, ptr @init_cc_resources._entry_ptr.65, ptr @init_cc_resources._entry_ptr.68, ptr @init_cc_resources._entry_ptr.71, ptr @init_cc_resources._entry_ptr.74, ptr @init_cc_resources._entry_ptr.77, ptr @init_cc_resources._entry_ptr.80, ptr @cc_dump_desc, ptr @cc_dump_bytes, ptr @cc_sec_disable, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ccree_driver, ptr @.str.7, ptr @.str.8, ptr @arm_ccree_dev_of_match, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @pidr_0124_offsets, ptr @.str.32, ptr @cidr_0123_offsets, ptr @.str.35, ptr @.str.38, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @init_completion.__key, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @cc_isr._rs, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @cc703_hw, ptr @cc713_hw, ptr @cc712_hw, ptr @cc710_hw, ptr @cc630p_hw, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99], section "llvm.metadata"
@0 = internal global [97 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_dump_desc to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_dump_bytes to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_sec_disable to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccree_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccree_dev_of_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccree_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_cc_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_cc_resources._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_cc_resources._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_cc_resources._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_cc_resources._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pidr_0124_offsets to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_cc_resources._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cidr_0123_offsets to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_cc_resources._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_cc_resources._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_cc_resources._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_cc_resources._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_cc_resources._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_cc_resources._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_cc_resources._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_cc_resources._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_cc_resources._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_cc_resources._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_cc_resources._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_cc_resources._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_cc_resources._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_cc_resources._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_cc_resources._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_isr._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccree_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc703_hw to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc713_hw to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc712_hw to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc710_hw to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc630p_hw to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__dump_byte_array(ptr noundef %name, ptr noundef %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %prefix = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %prefix) #10
  %0 = call ptr @memset(ptr %prefix, i32 255, i32 64)
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %prefix, i32 noundef 64, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %len)
  call void @print_hex_dump(ptr noundef nonnull @.str.1, ptr noundef nonnull %prefix, i32 noundef 1, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %buf, i32 noundef %len, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %prefix) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @cc_wait_for_reset_completion(ptr nocapture noundef readonly %drvdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_rev = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 16
  %0 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 713, i32 %1)
  %cmp = icmp ult i32 %1, 713
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 2576
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !232
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end3, label %for.body.preheader.cleanup_crit_edge

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %for.body.preheader
  tail call void @schedule() #10
  %6 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drvdata, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %7, i32 2576
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1) #10, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !232
  %9 = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.1 = icmp eq i32 %9, 0
  br i1 %tobool.not.1, label %if.end3.1, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3.1:                                        ; preds = %if.end3
  tail call void @schedule() #10
  %10 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %drvdata, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %11, i32 2576
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2) #10, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !232
  %13 = and i32 %12, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.2 = icmp eq i32 %13, 0
  br i1 %tobool.not.2, label %if.end3.2, label %if.end3.1.cleanup_crit_edge

if.end3.1.cleanup_crit_edge:                      ; preds = %if.end3.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3.2:                                        ; preds = %if.end3.1
  tail call void @schedule() #10
  %14 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %drvdata, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %15, i32 2576
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3) #10, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !232
  %17 = and i32 %16, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.3 = icmp eq i32 %17, 0
  br i1 %tobool.not.3, label %if.end3.3, label %if.end3.2.cleanup_crit_edge

if.end3.2.cleanup_crit_edge:                      ; preds = %if.end3.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3.3:                                        ; preds = %if.end3.2
  tail call void @schedule() #10
  %18 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %drvdata, align 4
  %add.ptr.i.4 = getelementptr i8, ptr %19, i32 2576
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4) #10, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !232
  %21 = and i32 %20, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.4 = icmp eq i32 %21, 0
  br i1 %tobool.not.4, label %if.end3.4, label %if.end3.3.cleanup_crit_edge

if.end3.3.cleanup_crit_edge:                      ; preds = %if.end3.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3.4:                                        ; preds = %if.end3.3
  tail call void @schedule() #10
  %22 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %drvdata, align 4
  %add.ptr.i.5 = getelementptr i8, ptr %23, i32 2576
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.5) #10, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !232
  %25 = and i32 %24, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.5 = icmp eq i32 %25, 0
  br i1 %tobool.not.5, label %if.end3.5, label %if.end3.4.cleanup_crit_edge

if.end3.4.cleanup_crit_edge:                      ; preds = %if.end3.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3.5:                                        ; preds = %if.end3.4
  tail call void @schedule() #10
  %26 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %drvdata, align 4
  %add.ptr.i.6 = getelementptr i8, ptr %27, i32 2576
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.6) #10, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !232
  %29 = and i32 %28, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.6 = icmp eq i32 %29, 0
  br i1 %tobool.not.6, label %if.end3.6, label %if.end3.5.cleanup_crit_edge

if.end3.5.cleanup_crit_edge:                      ; preds = %if.end3.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3.6:                                        ; preds = %if.end3.5
  tail call void @schedule() #10
  %30 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %drvdata, align 4
  %add.ptr.i.7 = getelementptr i8, ptr %31, i32 2576
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.7) #10, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !232
  %33 = and i32 %32, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.7 = icmp eq i32 %33, 0
  br i1 %tobool.not.7, label %if.end3.7, label %if.end3.6.cleanup_crit_edge

if.end3.6.cleanup_crit_edge:                      ; preds = %if.end3.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3.7:                                        ; preds = %if.end3.6
  tail call void @schedule() #10
  %34 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %drvdata, align 4
  %add.ptr.i.8 = getelementptr i8, ptr %35, i32 2576
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.8) #10, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !232
  %37 = and i32 %36, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.8 = icmp eq i32 %37, 0
  br i1 %tobool.not.8, label %if.end3.8, label %if.end3.7.cleanup_crit_edge

if.end3.7.cleanup_crit_edge:                      ; preds = %if.end3.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3.8:                                        ; preds = %if.end3.7
  tail call void @schedule() #10
  %38 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %drvdata, align 4
  %add.ptr.i.9 = getelementptr i8, ptr %39, i32 2576
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.9) #10, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !232
  %41 = and i32 %40, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.9 = icmp eq i32 %41, 0
  br i1 %tobool.not.9, label %if.end3.9, label %if.end3.8.cleanup_crit_edge

if.end3.8.cleanup_crit_edge:                      ; preds = %if.end3.8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3.9:                                        ; preds = %if.end3.8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @schedule() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end3.9, %if.end3.8.cleanup_crit_edge, %if.end3.7.cleanup_crit_edge, %if.end3.6.cleanup_crit_edge, %if.end3.5.cleanup_crit_edge, %if.end3.4.cleanup_crit_edge, %if.end3.3.cleanup_crit_edge, %if.end3.2.cleanup_crit_edge, %if.end3.1.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %entry.cleanup_crit_edge ], [ true, %for.body.preheader.cleanup_crit_edge ], [ true, %if.end3.cleanup_crit_edge ], [ true, %if.end3.1.cleanup_crit_edge ], [ true, %if.end3.2.cleanup_crit_edge ], [ true, %if.end3.3.cleanup_crit_edge ], [ true, %if.end3.4.cleanup_crit_edge ], [ true, %if.end3.5.cleanup_crit_edge ], [ true, %if.end3.6.cleanup_crit_edge ], [ true, %if.end3.7.cleanup_crit_edge ], [ true, %if.end3.8.cleanup_crit_edge ], [ false, %if.end3.9 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_cc_regs(ptr nocapture noundef readonly %drvdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 3
  %0 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %hw_rev = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 16
  %2 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hw_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 713, i32 %3)
  %cmp = icmp ult i32 %3, 713
  br i1 %cmp, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drvdata, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 3048
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !232
  %7 = and i32 %6, 268435455
  %8 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %drvdata, align 4
  %add.ptr.i56 = getelementptr i8, ptr %9, i32 3048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !233
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 %7) #10, !srcloc !234
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_cc_regs.__UNIQUE_ID_ddebug459, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_cc_regs, %if.then5)) #10
          to label %if.end7 [label %if.then5], !srcloc !235

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %drvdata, align 4
  %add.ptr.i57 = getelementptr i8, ptr %11, i32 3048
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i57) #10, !srcloc !231
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !232
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @init_cc_regs.__UNIQUE_ID_ddebug459, ptr noundef %dev.i, ptr noundef nonnull @.str.5, i32 noundef %13) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then, %entry.if.end7_crit_edge
  %14 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %drvdata, align 4
  %add.ptr.i58 = getelementptr i8, ptr %15, i32 2560
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i58) #10, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !232
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_cc_regs.__UNIQUE_ID_ddebug460, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_cc_regs, %if.then21)) #10
          to label %do.end24 [label %if.then21], !srcloc !235

if.then21:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @init_cc_regs.__UNIQUE_ID_ddebug460, ptr noundef %dev.i, ptr noundef nonnull @.str.6, i32 noundef %17) #10
  br label %do.end24

do.end24:                                         ; preds = %if.then21, %if.end7
  %18 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %drvdata, align 4
  %add.ptr.i59 = getelementptr i8, ptr %19, i32 2568
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !233
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %16) #10, !srcloc !234
  %comp_mask = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 22
  %20 = ptrtoint ptr %comp_mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %comp_mask, align 4
  %22 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hw_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 711, i32 %23)
  %cmp26 = icmp ugt i32 %23, 711
  %spec.select.v = select i1 %cmp26, i32 2304, i32 256
  %spec.select = or i32 %spec.select.v, %21
  %neg = xor i32 %spec.select, -1
  %24 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %drvdata, align 4
  %add.ptr.i60 = getelementptr i8, ptr %25, i32 2564
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !233
  tail call void @arm_heavy_mb() #10
  %26 = tail call i32 @llvm.bswap.i32(i32 %neg) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60, i32 %26) #10, !srcloc !234
  %cache_params = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 23
  %27 = ptrtoint ptr %cache_params to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cache_params, align 4
  %29 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %drvdata, align 4
  %add.ptr.i61 = getelementptr i8, ptr %30, i32 3056
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !233
  tail call void @arm_heavy_mb() #10
  %31 = tail call i32 @llvm.bswap.i32(i32 %28) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 %31) #10, !srcloc !234
  %32 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hw_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 711, i32 %33)
  %cmp31 = icmp ugt i32 %33, 711
  br i1 %cmp31, label %if.then32, label %do.end24.if.end33_crit_edge

do.end24.if.end33_crit_edge:                      ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then32:                                        ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #12
  %ace_const = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 24
  %34 = ptrtoint ptr %ace_const to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ace_const, align 4
  %36 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %drvdata, align 4
  %add.ptr.i62 = getelementptr i8, ptr %37, i32 3052
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !233
  tail call void @arm_heavy_mb() #10
  %38 = tail call i32 @llvm.bswap.i32(i32 %35) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 %38) #10, !srcloc !234
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %do.end24.if.end33_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fini_cc_regs(ptr nocapture noundef readonly %drvdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2564
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !233
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #10, !srcloc !234
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cc_get_default_hash_len(ptr nocapture noundef readonly %drvdata) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_rev = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 16
  %0 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 711, i32 %1)
  %cmp = icmp ugt i32 %1, 711
  %. = select i1 %cmp, i32 16, i32 8
  ret i32 %.
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ccree_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @cc_debugfs_global_init() #10
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ccree_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ccree_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @ccree_driver) #10
  tail call void @cc_debugfs_global_fini() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cc_debugfs_global_fini() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cc_debugfs_global_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccree_probe(ptr noundef %plat_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @init_cc_resources(ptr noundef %plat_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %plat_dev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.9) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccree_remove(ptr noundef %plat_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %plat_dev, i32 0, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccree_remove.__UNIQUE_ID_ddebug464, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccree_remove, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !235

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccree_remove.__UNIQUE_ID_ddebug464, ptr noundef %dev1, ptr noundef nonnull @.str.93) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %plat_dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call2.i = tail call i32 @cc_aead_free(ptr noundef %1) #10
  %call3.i = tail call i32 @cc_hash_free(ptr noundef %1) #10
  %call4.i = tail call i32 @cc_cipher_free(ptr noundef %1) #10
  %call5.i = tail call i32 @cc_buffer_mgr_fini(ptr noundef %1) #10
  tail call void @cc_req_mgr_fini(ptr noundef %1) #10
  tail call void @cc_debugfs_fini(ptr noundef %1) #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 2564
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !233
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 -1) #10, !srcloc !234
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %plat_dev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !236
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #10, !srcloc !237
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.end.cleanup_cc_resources.exit_crit_edge, label %do.end11.i.i.i.i.i

do.end.cleanup_cc_resources.exit_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup_cc_resources.exit

do.end11.i.i.i.i.i:                               ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !238
  br label %cleanup_cc_resources.exit

cleanup_cc_resources.exit:                        ; preds = %do.end11.i.i.i.i.i, %do.end.cleanup_cc_resources.exit_crit_edge
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #10
  %call.i.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 2) #10
  %clk.i = getelementptr inbounds %struct.cc_drvdata, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %6) #10
  tail call void @clk_unprepare(ptr noundef %6) #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.94) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_cc_resources(ptr noundef %plat_dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %plat_dev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %plat_dev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 156, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #10
  %2 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call2, align 4
  %hw_rev_name = getelementptr inbounds %struct.cc_drvdata, ptr %call.i, i32 0, i32 15
  %4 = ptrtoint ptr %hw_rev_name to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %hw_rev_name, align 4
  %rev = getelementptr inbounds %struct.cc_hw_data, ptr %call2, i32 0, i32 1
  %5 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rev, align 4
  %hw_rev3 = getelementptr inbounds %struct.cc_drvdata, ptr %call.i, i32 0, i32 16
  %7 = ptrtoint ptr %hw_rev3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %hw_rev3, align 4
  %std_bodies = getelementptr inbounds %struct.cc_hw_data, ptr %call2, i32 0, i32 5
  %8 = ptrtoint ptr %std_bodies to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %std_bodies, align 4
  %std_bodies4 = getelementptr inbounds %struct.cc_drvdata, ptr %call.i, i32 0, i32 20
  %10 = ptrtoint ptr %std_bodies4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %std_bodies4, align 4
  %11 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 711, i32 %11)
  %cmp = icmp ugt i32 %11, 711
  %.sink479 = select i1 %cmp, i32 2944, i32 2976
  %.sink478 = select i1 %cmp, i32 2596, i32 2760
  %.sink = select i1 %cmp, i32 2624, i32 2776
  %12 = getelementptr inbounds %struct.cc_drvdata, ptr %call.i, i32 0, i32 17
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink479, ptr %12, align 4
  %14 = getelementptr inbounds %struct.cc_drvdata, ptr %call.i, i32 0, i32 18
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink478, ptr %14, align 4
  %16 = getelementptr inbounds %struct.cc_drvdata, ptr %call.i, i32 0, i32 19
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink, ptr %16, align 4
  %comp_mask = getelementptr inbounds %struct.cc_drvdata, ptr %call.i, i32 0, i32 22
  %18 = ptrtoint ptr %comp_mask to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 8388608, ptr %comp_mask, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %plat_dev, i32 0, i32 3, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %plat_dev11 = getelementptr inbounds %struct.cc_drvdata, ptr %call.i, i32 0, i32 3
  %20 = ptrtoint ptr %plat_dev11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %plat_dev, ptr %plat_dev11, align 4
  %call12 = tail call ptr @devm_clk_get_optional(ptr noundef %dev1, ptr noundef null) #10
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %call12 to i32
  %call16 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %21, ptr noundef nonnull @.str.13) #10
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %clk18 = getelementptr inbounds %struct.cc_drvdata, ptr %call.i, i32 0, i32 13
  %22 = ptrtoint ptr %clk18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call12, ptr %clk18, align 4
  %call19 = tail call zeroext i1 @of_dma_is_coherent(ptr noundef %1) #10
  %coherent = getelementptr inbounds %struct.cc_drvdata, ptr %call.i, i32 0, i32 14
  %frombool = zext i1 %call19 to i8
  %23 = ptrtoint ptr %coherent to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %frombool, ptr %coherent, align 4
  %call20 = tail call ptr @platform_get_resource(ptr noundef %plat_dev, i32 noundef 512, i32 noundef 0) #10
  %call21 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call20) #10
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call21, ptr %call.i, align 4
  %cmp.i459 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i459, label %if.then24, label %do.body

if.then24:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %call21 to i32
  br label %cleanup

do.body:                                          ; preds = %if.end17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_cc_resources.__UNIQUE_ID_ddebug461, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_cc_resources, %if.then33)) #10
          to label %do.body36 [label %if.then33], !srcloc !235

if.then33:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %name34 = getelementptr inbounds %struct.resource, ptr %call20, i32 0, i32 2
  %26 = ptrtoint ptr %name34 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name34, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @init_cc_resources.__UNIQUE_ID_ddebug461, ptr noundef %dev1, ptr noundef nonnull @.str.15, ptr noundef %27, ptr noundef %call20) #10
  br label %do.body36

do.body36:                                        ; preds = %if.then33, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_cc_resources.__UNIQUE_ID_ddebug462, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_cc_resources, %if.then48)) #10
          to label %do.end52 [label %if.then48], !srcloc !235

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @init_cc_resources.__UNIQUE_ID_ddebug462, ptr noundef %dev1, ptr noundef nonnull @.str.16, ptr noundef %call20, ptr noundef %29) #10
  br label %do.end52

do.end52:                                         ; preds = %if.then48, %do.body36
  %call53 = tail call i32 @platform_get_irq(ptr noundef %plat_dev, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %do.end52.cleanup_crit_edge, label %if.end56

do.end52.cleanup_crit_edge:                       ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end56:                                         ; preds = %do.end52
  %hw_queue_avail = getelementptr inbounds %struct.cc_drvdata, ptr %call.i, i32 0, i32 2
  %30 = ptrtoint ptr %hw_queue_avail to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %hw_queue_avail, align 4
  %wait.i = getelementptr inbounds %struct.cc_drvdata, ptr %call.i, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.81, ptr noundef nonnull @init_completion.__key) #10
  %dma_mask57 = getelementptr inbounds %struct.platform_device, ptr %plat_dev, i32 0, i32 3, i32 18
  %31 = ptrtoint ptr %dma_mask57 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dma_mask57, align 8
  %tobool58.not = icmp eq ptr %32, null
  br i1 %tobool58.not, label %if.then59, label %if.end56.while.body.preheader_crit_edge

if.end56.while.body.preheader_crit_edge:          ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.preheader

if.then59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  %coherent_dma_mask = getelementptr inbounds %struct.platform_device, ptr %plat_dev, i32 0, i32 3, i32 19
  %33 = ptrtoint ptr %dma_mask57 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %coherent_dma_mask, ptr %dma_mask57, align 8
  br label %while.body.preheader

while.body.preheader:                             ; preds = %if.then59, %if.end56.while.body.preheader_crit_edge
  br label %while.body

while.body:                                       ; preds = %if.end70.while.body_crit_edge, %while.body.preheader
  %rc.0477 = phi i32 [ %rc.1, %if.end70.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %dma_mask.0475 = phi i64 [ %shr, %if.end70.while.body_crit_edge ], [ 281474976710655, %while.body.preheader ]
  %call63 = tail call i32 @dma_supported(ptr noundef %dev1, i64 noundef %dma_mask.0475) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %while.body.if.end70_crit_edge, label %if.then65

while.body.if.end70_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then65:                                        ; preds = %while.body
  %call66 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef %dma_mask.0475) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.then65.if.end76_crit_edge, label %if.then65.if.end70_crit_edge

if.then65.if.end70_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then65.if.end76_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

if.end70:                                         ; preds = %if.then65.if.end70_crit_edge, %while.body.if.end70_crit_edge
  %rc.1 = phi i32 [ %call66, %if.then65.if.end70_crit_edge ], [ %rc.0477, %while.body.if.end70_crit_edge ]
  %shr = lshr i64 %dma_mask.0475, 1
  %cmp62 = icmp ugt i64 %dma_mask.0475, 4294967295
  br i1 %cmp62, label %if.end70.while.body_crit_edge, label %while.end

if.end70.while.body_crit_edge:                    ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1)
  %tobool71.not = icmp eq i32 %rc.1, 0
  br i1 %tobool71.not, label %while.end.if.end76_crit_edge, label %do.end75

while.end.if.end76_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

do.end75:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, i64 noundef %shr) #13
  br label %cleanup

if.end76:                                         ; preds = %while.end.if.end76_crit_edge, %if.then65.if.end76_crit_edge
  %34 = ptrtoint ptr %clk18 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %clk18, align 4
  %call78 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %35)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end84, label %do.end83

do.end83:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20) #13
  br label %cleanup

if.end84:                                         ; preds = %if.end76
  %36 = load i8, ptr @cc_sec_disable, align 1, !range !239
  %sec_disabled = getelementptr inbounds %struct.cc_drvdata, ptr %call.i, i32 0, i32 21
  %37 = ptrtoint ptr %sec_disabled to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %sec_disabled, align 4
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 3000) #10
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #10
  %call.i460 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #10
  tail call void @pm_runtime_enable(ptr noundef %dev1) #10
  %call.i461 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i461)
  %cmp89 = icmp slt i32 %call.i461, 0
  br i1 %cmp89, label %do.end93, label %if.end94

do.end93:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23, i32 noundef %call.i461) #13
  br label %post_pm_err

if.end94:                                         ; preds = %if.end84
  %call95 = tail call zeroext i1 @cc_wait_for_reset_completion(ptr noundef nonnull %call.i)
  br i1 %call95, label %if.end94.if.end100_crit_edge, label %do.end99

if.end94.if.end100_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end100

do.end99:                                         ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26) #13
  br label %if.end100

if.end100:                                        ; preds = %do.end99, %if.end94.if.end100_crit_edge
  %38 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 713, i32 %39)
  %cmp102 = icmp ult i32 %39, 713
  br i1 %cmp102, label %if.then103, label %if.else115

if.then103:                                       ; preds = %if.end100
  %40 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %14, align 4
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call.i, align 4
  %add.ptr.i = getelementptr i8, ptr %43, i32 %41
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !231
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !232
  %sig = getelementptr inbounds %struct.cc_hw_data, ptr %call2, i32 0, i32 2
  %46 = ptrtoint ptr %sig to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sig, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp106.not = icmp eq i32 %45, %47
  br i1 %cmp106.not, label %if.end112, label %do.end110

do.end110:                                        ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.29, i32 noundef %45, i32 noundef %47) #13
  br label %post_pm_err

if.end112:                                        ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %16, align 4
  %50 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call.i, align 4
  %add.ptr.i462 = getelementptr i8, ptr %51, i32 %49
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i462) #10, !srcloc !231
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !232
  br label %if.end168thread-pre-split

if.else115:                                       ; preds = %if.end100
  %call116 = tail call fastcc i32 @cc_read_idr(ptr noundef nonnull %call.i, ptr noundef nonnull @pidr_0124_offsets)
  %pidr_0124 = getelementptr inbounds %struct.cc_hw_data, ptr %call2, i32 0, i32 4
  %54 = ptrtoint ptr %pidr_0124 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pidr_0124, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call116, i32 %55)
  %cmp117.not = icmp eq i32 %call116, %55
  br i1 %cmp117.not, label %if.end123, label %do.end121

do.end121:                                        ; preds = %if.else115
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.32, i32 noundef %call116, i32 noundef %55) #13
  br label %post_pm_err

if.end123:                                        ; preds = %if.else115
  %call124 = tail call fastcc i32 @cc_read_idr(ptr noundef nonnull %call.i, ptr noundef nonnull @cidr_0123_offsets)
  %cidr_0123 = getelementptr inbounds %struct.cc_hw_data, ptr %call2, i32 0, i32 3
  %56 = ptrtoint ptr %cidr_0123 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cidr_0123, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call124, i32 %57)
  %cmp125.not = icmp eq i32 %call124, %57
  br i1 %cmp125.not, label %if.end131, label %do.end129

do.end129:                                        ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.35, i32 noundef %call124, i32 noundef %57) #13
  br label %post_pm_err

if.end131:                                        ; preds = %if.end123
  %58 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call.i, align 4
  %add.ptr.i463 = getelementptr i8, ptr %59, i32 2684
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i463) #10, !srcloc !231
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !232
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values)
  switch i32 %61, label %do.end143 [
    i32 0, label %if.end131.sw.epilog_crit_edge
    i32 159, label %sw.bb
  ]

if.end131.sw.epilog_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end131
  %63 = ptrtoint ptr %std_bodies4 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %std_bodies4, align 4
  %and = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool134.not = icmp eq i32 %and, 0
  br i1 %tobool134.not, label %sw.bb.sw.epilog_crit_edge, label %do.end138

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end138:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.38) #13
  %65 = ptrtoint ptr %std_bodies4 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 2, ptr %std_bodies4, align 4
  br label %sw.epilog

do.end143:                                        ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.42) #13
  br label %post_pm_err

sw.epilog:                                        ; preds = %do.end138, %sw.bb.sw.epilog_crit_edge, %if.end131.sw.epilog_crit_edge
  %66 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %call.i, align 4
  %add.ptr.i464 = getelementptr i8, ptr %67, i32 2588
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i464) #10, !srcloc !231
  %69 = lshr i32 %68, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !232
  %and145 = and i32 %69, 1
  %70 = ptrtoint ptr %sec_disabled to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %sec_disabled, align 4, !range !239
  %72 = zext i8 %71 to i32
  %or = or i32 %and145, %72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool153.not = icmp eq i32 %or, 0
  %73 = trunc i32 %or to i8
  %74 = ptrtoint ptr %sec_disabled to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %sec_disabled, align 4
  br i1 %tobool153.not, label %if.then157, label %sw.epilog.if.end168_crit_edge

sw.epilog.if.end168_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end168

if.then157:                                       ; preds = %sw.epilog
  %75 = ptrtoint ptr %comp_mask to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %comp_mask, align 4
  %or159 = or i32 %76, 1568768
  store i32 %or159, ptr %comp_mask, align 4
  %77 = ptrtoint ptr %std_bodies4 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %std_bodies4, align 4
  %and161 = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161)
  %tobool162.not = icmp eq i32 %and161, 0
  br i1 %tobool162.not, label %if.then157.if.end168thread-pre-split_crit_edge, label %if.then163

if.then157.if.end168thread-pre-split_crit_edge:   ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end168thread-pre-split

if.then163:                                       ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #12
  %or165 = or i32 %76, 1570554
  %79 = ptrtoint ptr %comp_mask to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %or165, ptr %comp_mask, align 4
  br label %if.end168thread-pre-split

if.end168thread-pre-split:                        ; preds = %if.then163, %if.then157.if.end168thread-pre-split_crit_edge, %if.end112
  %hw_rev_pidr.0.ph = phi i32 [ %call116, %if.then157.if.end168thread-pre-split_crit_edge ], [ %call116, %if.then163 ], [ %53, %if.end112 ]
  %sig_cidr.0.ph = phi i32 [ %call124, %if.then157.if.end168thread-pre-split_crit_edge ], [ %call124, %if.then163 ], [ %45, %if.end112 ]
  %80 = ptrtoint ptr %sec_disabled to i32
  call void @__asan_load1_noabort(i32 %80)
  %.pr = load i8, ptr %sec_disabled, align 4
  br label %if.end168

if.end168:                                        ; preds = %if.end168thread-pre-split, %sw.epilog.if.end168_crit_edge
  %81 = phi i8 [ %.pr, %if.end168thread-pre-split ], [ %73, %sw.epilog.if.end168_crit_edge ]
  %hw_rev_pidr.0 = phi i32 [ %hw_rev_pidr.0.ph, %if.end168thread-pre-split ], [ %call116, %sw.epilog.if.end168_crit_edge ]
  %sig_cidr.0 = phi i32 [ %sig_cidr.0.ph, %if.end168thread-pre-split ], [ %call124, %sw.epilog.if.end168_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool170.not = icmp eq i8 %81, 0
  br i1 %tobool170.not, label %if.end168.do.end178_crit_edge, label %do.end174

if.end168.do.end178_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end178

do.end174:                                        ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.45) #13
  br label %do.end178

do.end178:                                        ; preds = %do.end174, %if.end168.do.end178_crit_edge
  %82 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %call2, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.48, ptr noundef %83, i32 noundef %hw_rev_pidr.0, i32 noundef %sig_cidr.0, ptr noundef nonnull @.str.8) #13
  %call.i465 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call53, ptr noundef nonnull @cc_isr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.2, ptr noundef %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i465)
  %tobool181.not = icmp eq i32 %call.i465, 0
  br i1 %tobool181.not, label %do.body187, label %do.end185

do.end185:                                        ; preds = %do.end178
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.51, i32 noundef %call53) #13
  br label %post_pm_err

do.body187:                                       ; preds = %do.end178
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_cc_resources.__UNIQUE_ID_ddebug463, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_cc_resources, %if.then199)) #10
          to label %do.end202 [label %if.then199], !srcloc !235

if.then199:                                       ; preds = %do.body187
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @init_cc_resources.__UNIQUE_ID_ddebug463, ptr noundef %dev1, ptr noundef nonnull @.str.53, i32 noundef %call53) #10
  br label %do.end202

do.end202:                                        ; preds = %if.then199, %do.body187
  tail call fastcc void @init_cc_cache_params(ptr noundef nonnull %call.i)
  %call203 = tail call i32 @init_cc_regs(ptr noundef nonnull %call.i)
  %call210 = tail call i32 @cc_debugfs_init(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call210)
  %tobool211.not = icmp eq i32 %call210, 0
  br i1 %tobool211.not, label %if.end216, label %do.end215

do.end215:                                        ; preds = %do.end202
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.58) #13
  br label %post_regs_err

if.end216:                                        ; preds = %do.end202
  %call224 = tail call i32 @cc_sram_mgr_init(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call224)
  %tobool225.not = icmp eq i32 %call224, 0
  br i1 %tobool225.not, label %if.end230, label %do.end229

do.end229:                                        ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.64) #13
  br label %post_fips_init_err

if.end230:                                        ; preds = %if.end216
  %call231 = tail call i32 @cc_sram_alloc(ptr noundef nonnull %call.i, i32 noundef 2080) #10
  %mlli_sram_addr = getelementptr inbounds %struct.cc_drvdata, ptr %call.i, i32 0, i32 4
  %84 = ptrtoint ptr %mlli_sram_addr to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %call231, ptr %mlli_sram_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call231)
  %cmp233 = icmp eq i32 %call231, -1
  br i1 %cmp233, label %if.end230.post_fips_init_err_crit_edge, label %if.end236

if.end230.post_fips_init_err_crit_edge:           ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #12
  br label %post_fips_init_err

if.end236:                                        ; preds = %if.end230
  %call237 = tail call i32 @cc_req_mgr_init(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call237)
  %tobool238.not = icmp eq i32 %call237, 0
  br i1 %tobool238.not, label %if.end243, label %do.end242

do.end242:                                        ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.67) #13
  br label %post_fips_init_err

if.end243:                                        ; preds = %if.end236
  %call244 = tail call i32 @cc_buffer_mgr_init(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call244)
  %tobool245.not = icmp eq i32 %call244, 0
  br i1 %tobool245.not, label %if.end250, label %do.end249

do.end249:                                        ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.70) #13
  br label %post_req_mgr_err

if.end250:                                        ; preds = %if.end243
  %call251 = tail call i32 @cc_cipher_alloc(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call251)
  %tobool252.not = icmp eq i32 %call251, 0
  br i1 %tobool252.not, label %if.end257, label %do.end256

do.end256:                                        ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.73) #13
  br label %post_buf_mgr_err

if.end257:                                        ; preds = %if.end250
  %call258 = tail call i32 @cc_hash_alloc(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call258)
  %tobool259.not = icmp eq i32 %call258, 0
  br i1 %tobool259.not, label %if.end264, label %do.end263

do.end263:                                        ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.76) #13
  br label %post_cipher_err

if.end264:                                        ; preds = %if.end257
  %call265 = tail call i32 @cc_aead_alloc(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call265)
  %tobool266.not = icmp eq i32 %call265, 0
  br i1 %tobool266.not, label %if.end271, label %do.end270

do.end270:                                        ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.79) #13
  %call273 = tail call i32 @cc_hash_free(ptr noundef nonnull %call.i) #10
  br label %post_cipher_err

if.end271:                                        ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #12
  %call.i466 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #10
  br label %cleanup

post_cipher_err:                                  ; preds = %do.end270, %do.end263
  %rc.3 = phi i32 [ %call258, %do.end263 ], [ %call265, %do.end270 ]
  %call274 = tail call i32 @cc_cipher_free(ptr noundef nonnull %call.i) #10
  br label %post_buf_mgr_err

post_buf_mgr_err:                                 ; preds = %post_cipher_err, %do.end256
  %rc.4 = phi i32 [ %call251, %do.end256 ], [ %rc.3, %post_cipher_err ]
  %call275 = tail call i32 @cc_buffer_mgr_fini(ptr noundef nonnull %call.i) #10
  br label %post_req_mgr_err

post_req_mgr_err:                                 ; preds = %post_buf_mgr_err, %do.end249
  %rc.5 = phi i32 [ %call244, %do.end249 ], [ %rc.4, %post_buf_mgr_err ]
  tail call void @cc_req_mgr_fini(ptr noundef nonnull %call.i) #10
  br label %post_fips_init_err

post_fips_init_err:                               ; preds = %post_req_mgr_err, %do.end242, %if.end230.post_fips_init_err_crit_edge, %do.end229
  %rc.6 = phi i32 [ %call224, %do.end229 ], [ %call237, %do.end242 ], [ %rc.5, %post_req_mgr_err ], [ -12, %if.end230.post_fips_init_err_crit_edge ]
  tail call void @cc_debugfs_fini(ptr noundef nonnull %call.i) #10
  br label %post_regs_err

post_regs_err:                                    ; preds = %post_fips_init_err, %do.end215
  %rc.8 = phi i32 [ %call210, %do.end215 ], [ %rc.6, %post_fips_init_err ]
  %85 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %call.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %86, i32 2564
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !233
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1) #10, !srcloc !234
  br label %post_pm_err

post_pm_err:                                      ; preds = %post_regs_err, %do.end185, %do.end143, %do.end129, %do.end121, %do.end110, %do.end93
  %rc.9 = phi i32 [ %call.i461, %do.end93 ], [ -22, %do.end110 ], [ %call.i465, %do.end185 ], [ %rc.8, %post_regs_err ], [ -22, %do.end121 ], [ -22, %do.end129 ], [ -22, %do.end143 ]
  tail call fastcc void @pm_runtime_put_noidle(ptr noundef %dev1)
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #10
  %call.i467 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 2) #10
  %87 = ptrtoint ptr %clk18 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %clk18, align 4
  tail call void @clk_disable(ptr noundef %88) #10
  tail call void @clk_unprepare(ptr noundef %88) #10
  br label %cleanup

cleanup:                                          ; preds = %post_pm_err, %if.end271, %do.end83, %do.end75, %do.end52.cleanup_crit_edge, %if.then24, %if.then14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.then14 ], [ %25, %if.then24 ], [ %rc.1, %do.end75 ], [ %call78, %do.end83 ], [ %rc.9, %post_pm_err ], [ 0, %if.end271 ], [ -12, %entry.cleanup_crit_edge ], [ %call53, %do.end52.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_dma_is_coherent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_supported(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %clk) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cc_read_idr(ptr nocapture noundef readonly %drvdata, ptr nocapture noundef readonly %idr_offsets) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %idr_offsets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idr_offsets, align 4
  %2 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %1
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !231
  %5 = and i32 %4, -16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !232
  %arrayidx.1 = getelementptr i32, ptr %idr_offsets, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.1, align 4
  %8 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %drvdata, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %9, i32 %7
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1) #10, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !232
  %arrayidx.2 = getelementptr i32, ptr %idr_offsets, i32 2
  %11 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.2, align 4
  %13 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %drvdata, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %14, i32 %12
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2) #10, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !232
  %arrayidx.3 = getelementptr i32, ptr %idr_offsets, i32 3
  %16 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.3, align 4
  %18 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %drvdata, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %19, i32 %17
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3) #10, !srcloc !231
  %21 = lshr i32 %20, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !232
  %22 = lshr i32 %15, 16
  %idr.sroa.6.0.insert.shift = and i32 %22, 65280
  %idr.sroa.6.0.insert.insert = or i32 %21, %idr.sroa.6.0.insert.shift
  %23 = lshr i32 %10, 8
  %idr.sroa.5.0.insert.shift = and i32 %23, 16711680
  %idr.sroa.5.0.insert.insert = or i32 %idr.sroa.6.0.insert.insert, %idr.sroa.5.0.insert.shift
  %idr.sroa.0.0.insert.insert = or i32 %idr.sroa.5.0.insert.insert, %5
  %24 = tail call i32 @llvm.bswap.i32(i32 %idr.sroa.0.0.insert.insert)
  ret i32 %24
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc_isr(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %runtime_status.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 12, i32 18
  %2 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

pm_runtime_suspended.exit:                        ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 12, i32 15
  %4 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.cleanup_crit_edge, label %pm_runtime_suspended.exit.if.end_crit_edge

pm_runtime_suspended.exit.if.end_crit_edge:       ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

pm_runtime_suspended.exit.cleanup_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %pm_runtime_suspended.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_id, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 2560
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !231
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !232
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_isr.__UNIQUE_ID_ddebug457, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_isr, %if.then6)) #10
          to label %do.end [label %if.then6], !srcloc !235

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_isr.__UNIQUE_ID_ddebug457, ptr noundef %dev.i, ptr noundef nonnull @.str.83, i32 noundef %8) #10
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end9

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %9 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_id, align 4
  %add.ptr.i92 = getelementptr i8, ptr %10, i32 2564
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i92) #10, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !232
  %12 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_id, align 4
  %add.ptr.i93 = getelementptr i8, ptr %13, i32 2568
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !233
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93, i32 %7) #10, !srcloc !234
  %irq11 = getelementptr inbounds %struct.cc_drvdata, ptr %dev_id, i32 0, i32 1
  %14 = ptrtoint ptr %irq11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %8, ptr %irq11, align 4
  %comp_mask = getelementptr inbounds %struct.cc_drvdata, ptr %dev_id, i32 0, i32 22
  %15 = ptrtoint ptr %comp_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %comp_mask, align 4
  %and = and i32 %16, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end9.if.end17_crit_edge, label %if.then13

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %17 = tail call i32 @llvm.bswap.i32(i32 %11) #10
  %or = or i32 %16, %17
  %18 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_id, align 4
  %add.ptr.i94 = getelementptr i8, ptr %19, i32 2564
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !233
  tail call void @arm_heavy_mb() #10
  %20 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94, i32 %20) #10, !srcloc !234
  %21 = ptrtoint ptr %comp_mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %comp_mask, align 4
  %neg = xor i32 %22, -1
  %and16 = and i32 %8, %neg
  tail call void @complete_request(ptr noundef %dev_id) #10
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end9.if.end17_crit_edge
  %irr.0 = phi i32 [ %and16, %if.then13 ], [ %8, %if.end9.if.end17_crit_edge ]
  %and18 = and i32 %irr.0, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.if.end39_crit_edge, label %if.then20

if.end17.if.end39_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then20:                                        ; preds = %if.end17
  %23 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_id, align 4
  %add.ptr.i95 = getelementptr i8, ptr %24, i32 3012
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i95) #10, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !232
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_isr.__UNIQUE_ID_ddebug458, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_isr, %if.then34)) #10
          to label %do.end37 [label %if.then34], !srcloc !235

if.then34:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_isr.__UNIQUE_ID_ddebug458, ptr noundef %dev.i, ptr noundef nonnull @.str.84, i32 noundef %26) #10
  br label %do.end37

do.end37:                                         ; preds = %if.then34, %if.then20
  %and38 = and i32 %irr.0, -257
  br label %if.end39

if.end39:                                         ; preds = %do.end37, %if.end17.if.end39_crit_edge
  %irr.1 = phi i32 [ %and38, %do.end37 ], [ %irr.0, %if.end17.if.end39_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irr.1)
  %tobool40.not = icmp eq i32 %irr.1, 0
  br i1 %tobool40.not, label %if.end39.cleanup_crit_edge, label %do.body42

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_isr.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_isr, %land.lhs.true)) #10
          to label %cleanup [label %land.lhs.true], !srcloc !235

land.lhs.true:                                    ; preds = %do.body42
  %call54 = tail call i32 @___ratelimit(ptr noundef nonnull @cc_isr._rs, ptr noundef nonnull @.str.82) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %land.lhs.true.cleanup_crit_edge, label %if.then56

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then56:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_isr.descriptor, ptr noundef %dev.i, ptr noundef nonnull @.str.86, i32 noundef %irr.1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then56, %land.lhs.true.cleanup_crit_edge, %do.body42, %if.end39.cleanup_crit_edge, %do.end.cleanup_crit_edge, %pm_runtime_suspended.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %pm_runtime_suspended.exit.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ 1, %land.lhs.true.cleanup_crit_edge ], [ 1, %if.then56 ], [ 1, %if.end39.cleanup_crit_edge ], [ 1, %do.body42 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_cc_cache_params(ptr nocapture noundef %drvdata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 3
  %0 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 3056
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !231
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !232
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_cc_cache_params.__UNIQUE_ID_ddebug428, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_cc_cache_params, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !235

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @init_cc_cache_params.__UNIQUE_ID_ddebug428, ptr noundef %dev.i, ptr noundef nonnull @.str.88, i32 noundef %5) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %coherent = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 14
  %6 = ptrtoint ptr %coherent to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %coherent, align 4, !range !239
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  %cond = select i1 %tobool5.not, i32 2, i32 11
  %8 = and i32 %5, -4096
  %shl62 = shl nuw nsw i32 %cond, 4
  %or = or i32 %shl62, %8
  %or139526 = or i32 %or, %cond
  %shl211 = shl nuw nsw i32 %cond, 8
  %or214 = or i32 %or139526, %shl211
  %cache_params216 = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 23
  %9 = ptrtoint ptr %cache_params216 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or214, ptr %cache_params216, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_cc_cache_params.__UNIQUE_ID_ddebug444, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_cc_cache_params, %if.then229)) #10
          to label %do.end232 [label %if.then229], !srcloc !235

if.then229:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @init_cc_cache_params.__UNIQUE_ID_ddebug444, ptr noundef %dev.i, ptr noundef nonnull @.str.89, i32 noundef %or214) #10
  br label %do.end232

do.end232:                                        ; preds = %if.then229, %do.end
  %hw_rev = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 16
  %10 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hw_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 711, i32 %11)
  %cmp233 = icmp ult i32 %11, 711
  br i1 %cmp233, label %do.end232.cleanup_crit_edge, label %if.end236

do.end232.cleanup_crit_edge:                      ; preds = %do.end232
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end236:                                        ; preds = %do.end232
  %12 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %drvdata, align 4
  %add.ptr.i537 = getelementptr i8, ptr %13, i32 3052
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i537) #10, !srcloc !231
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !232
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_cc_cache_params.__UNIQUE_ID_ddebug445, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_cc_cache_params, %if.then250)) #10
          to label %do.end253 [label %if.then250], !srcloc !235

if.then250:                                       ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @init_cc_cache_params.__UNIQUE_ID_ddebug445, ptr noundef %dev.i, ptr noundef nonnull @.str.90, i32 noundef %15) #10
  br label %do.end253

do.end253:                                        ; preds = %if.then250, %if.end236
  %16 = ptrtoint ptr %coherent to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %coherent, align 4, !range !239
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool255.not = icmp eq i8 %17, 0
  %cond257 = select i1 %tobool255.not, i32 3, i32 2
  %18 = and i32 %15, -16
  %or331527 = or i32 %18, %cond257
  %shl403 = shl nuw nsw i32 %cond257, 2
  %or406 = or i32 %shl403, %or331527
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_cc_cache_params.__UNIQUE_ID_ddebug456, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_cc_cache_params, %if.then420)) #10
          to label %do.end423 [label %if.then420], !srcloc !235

if.then420:                                       ; preds = %do.end253
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @init_cc_cache_params.__UNIQUE_ID_ddebug456, ptr noundef %dev.i, ptr noundef nonnull @.str.91, i32 noundef %or406) #10
  br label %do.end423

do.end423:                                        ; preds = %if.then420, %do.end253
  %ace_const424 = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 24
  %19 = ptrtoint ptr %ace_const424 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or406, ptr %ace_const424, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end423, %do.end232.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cc_debugfs_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cc_sram_mgr_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cc_sram_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cc_req_mgr_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cc_buffer_mgr_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cc_cipher_alloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cc_hash_alloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cc_aead_alloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cc_hash_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cc_cipher_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cc_buffer_mgr_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cc_req_mgr_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cc_debugfs_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !236
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #10, !srcloc !237
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !238
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_request(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cc_aead_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !21, !22, !23, !24, !25, !27, !28, !30, !32, !34, !36, !37, !38, !39, !41, !43, !44, !46, !48, !50, !51, !52, !53, !55, !57, !58, !59, !60, !61, !62, !64, !66, !67, !68, !70, !71, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !165, !167, !169, !170, !171, !173, !174, !176, !177, !178, !179, !181, !182, !183, !185, !186, !188, !189, !191, !192, !194, !195, !196, !198, !199, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220}
!llvm.module.flags = !{!222, !223, !224, !225, !226, !227, !228, !229}
!llvm.ident = !{!230}

!0 = !{ptr @__param_dump_desc, !1, !"__param_dump_desc", i1 false, i1 false}
!1 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 32, i32 1}
!2 = !{ptr @__UNIQUE_ID_dump_desctype422, !1, !"__UNIQUE_ID_dump_desctype422", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_cc_dump_desc423, !4, !"__UNIQUE_ID_cc_dump_desc423", i1 false, i1 false}
!4 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 33, i32 1}
!5 = !{ptr @__param_dump_bytes, !6, !"__param_dump_bytes", i1 false, i1 false}
!6 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 35, i32 1}
!7 = !{ptr @__UNIQUE_ID_dump_bytestype424, !6, !"__UNIQUE_ID_dump_bytestype424", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_cc_dump_bytes425, !9, !"__UNIQUE_ID_cc_dump_bytes425", i1 false, i1 false}
!9 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 36, i32 1}
!10 = !{ptr @__param_sec_disable, !11, !"__param_sec_disable", i1 false, i1 false}
!11 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 39, i32 1}
!12 = !{ptr @__UNIQUE_ID_sec_disabletype426, !11, !"__UNIQUE_ID_sec_disabletype426", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_cc_sec_disable427, !14, !"__UNIQUE_ID_cc_sec_disable427", i1 false, i1 false}
!14 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 40, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 176, i32 35}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 178, i32 17}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 283, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @init_cc_regs.__UNIQUE_ID_ddebug459, !20, !"__UNIQUE_ID_ddebug459", i1 false, i1 false}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 289, i32 2}
!27 = !{ptr @init_cc_regs.__UNIQUE_ID_ddebug460, !26, !"__UNIQUE_ID_ddebug460", i1 false, i1 false}
!28 = !{ptr @__initcall__kmod_ccree__465_663_ccree_init6, !29, !"__initcall__kmod_ccree__465_663_ccree_init6", i1 false, i1 false}
!29 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 663, i32 1}
!30 = !{ptr @__exitcall_ccree_exit, !31, !"__exitcall_ccree_exit", i1 false, i1 false}
!31 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 670, i32 1}
!32 = !{ptr @__UNIQUE_ID_description466, !33, !"__UNIQUE_ID_description466", i1 false, i1 false}
!33 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 673, i32 1}
!34 = !{ptr @__UNIQUE_ID_version467, !35, !"__UNIQUE_ID_version467", i1 false, i1 false}
!35 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 674, i32 1}
!36 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @__modver_attr, !35, !"__modver_attr", i1 false, i1 false}
!39 = !{ptr @__UNIQUE_ID_author468, !40, !"__UNIQUE_ID_author468", i1 false, i1 false}
!40 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 675, i32 1}
!41 = !{ptr @__UNIQUE_ID_file469, !42, !"__UNIQUE_ID_file469", i1 false, i1 false}
!42 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 676, i32 1}
!43 = !{ptr @__UNIQUE_ID_license470, !42, !"__UNIQUE_ID_license470", i1 false, i1 false}
!44 = !{ptr @cc_dump_desc, !45, !"cc_dump_desc", i1 false, i1 false}
!45 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 31, i32 6}
!46 = !{ptr @cc_dump_bytes, !47, !"cc_dump_bytes", i1 false, i1 false}
!47 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 34, i32 6}
!48 = !{ptr @cc_sec_disable, !49, !"cc_sec_disable", i1 false, i1 false}
!49 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 38, i32 13}
!50 = !{ptr @__param_str_dump_desc, !1, !"__param_str_dump_desc", i1 false, i1 false}
!51 = !{ptr @__param_str_dump_bytes, !6, !"__param_str_dump_bytes", i1 false, i1 false}
!52 = !{ptr @__param_str_sec_disable, !11, !"__param_str_sec_disable", i1 false, i1 false}
!53 = !{ptr @ccree_driver, !54, !"ccree_driver", i1 false, i1 false}
!54 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 645, i32 31}
!55 = !{ptr @.str.9, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 627, i32 2}
!57 = !{ptr @.str.10, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.11, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.12, !56, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @ccree_probe._entry, !56, !"_entry", i1 false, i1 false}
!61 = !{ptr @ccree_probe._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.13, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 346, i32 43}
!64 = !{ptr @.str.14, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 359, i32 2}
!66 = !{ptr @.str.15, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @init_cc_resources.__UNIQUE_ID_ddebug461, !65, !"__UNIQUE_ID_ddebug461", i1 false, i1 false}
!68 = !{ptr @.str.16, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 361, i32 2}
!70 = !{ptr @init_cc_resources.__UNIQUE_ID_ddebug462, !69, !"__UNIQUE_ID_ddebug462", i1 false, i1 false}
!71 = !{ptr @.str.17, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 385, i32 3}
!73 = !{ptr @.str.18, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @init_cc_resources._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @init_cc_resources._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.20, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 391, i32 3}
!78 = !{ptr @init_cc_resources._entry.19, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @init_cc_resources._entry_ptr.21, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.23, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 403, i32 3}
!82 = !{ptr @init_cc_resources._entry.22, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @init_cc_resources._entry_ptr.24, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.26, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 409, i32 3}
!86 = !{ptr @init_cc_resources._entry.25, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @init_cc_resources._entry_ptr.27, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.29, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 416, i32 4}
!90 = !{ptr @init_cc_resources._entry.28, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @init_cc_resources._entry_ptr.30, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.32, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 427, i32 4}
!94 = !{ptr @init_cc_resources._entry.31, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @init_cc_resources._entry_ptr.33, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.35, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 436, i32 4}
!98 = !{ptr @init_cc_resources._entry.34, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @init_cc_resources._entry_ptr.36, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.38, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 451, i32 5}
!102 = !{ptr @.str.39, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @init_cc_resources._entry.37, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @init_cc_resources._entry_ptr.40, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.42, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 456, i32 4}
!107 = !{ptr @init_cc_resources._entry.41, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @init_cc_resources._entry_ptr.43, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 474, i32 3}
!111 = !{ptr @init_cc_resources._entry.44, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @init_cc_resources._entry_ptr.46, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.48, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 477, i32 2}
!115 = !{ptr @init_cc_resources._entry.47, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @init_cc_resources._entry_ptr.49, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.51, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 483, i32 3}
!119 = !{ptr @init_cc_resources._entry.50, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @init_cc_resources._entry_ptr.52, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.53, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 486, i32 2}
!123 = !{ptr @init_cc_resources.__UNIQUE_ID_ddebug463, !122, !"__UNIQUE_ID_ddebug463", i1 false, i1 false}
!124 = !{ptr @.str.55, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 492, i32 3}
!126 = !{ptr @init_cc_resources._entry.54, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @init_cc_resources._entry_ptr.56, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.58, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 498, i32 3}
!130 = !{ptr @init_cc_resources._entry.57, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @init_cc_resources._entry_ptr.59, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.61, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 504, i32 3}
!134 = !{ptr @init_cc_resources._entry.60, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @init_cc_resources._entry_ptr.62, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.64, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 509, i32 3}
!138 = !{ptr @init_cc_resources._entry.63, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @init_cc_resources._entry_ptr.65, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.67, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 522, i32 3}
!142 = !{ptr @init_cc_resources._entry.66, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @init_cc_resources._entry_ptr.68, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.70, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 528, i32 3}
!146 = !{ptr @init_cc_resources._entry.69, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @init_cc_resources._entry_ptr.71, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.73, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 535, i32 3}
!150 = !{ptr @init_cc_resources._entry.72, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @init_cc_resources._entry_ptr.74, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.76, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 542, i32 3}
!154 = !{ptr @init_cc_resources._entry.75, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @init_cc_resources._entry_ptr.77, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.79, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 548, i32 3}
!158 = !{ptr @init_cc_resources._entry.78, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @init_cc_resources._entry_ptr.80, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @init_completion.__key, !161, !"__key", i1 false, i1 false}
!161 = !{!"../include/linux/completion.h", i32 87, i32 2}
!162 = !{ptr @.str.81, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @pidr_0124_offsets, !164, !"pidr_0124_offsets", i1 false, i1 false}
!164 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 55, i32 18}
!165 = !{ptr @cidr_0123_offsets, !166, !"cidr_0123_offsets", i1 false, i1 false}
!166 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 60, i32 18}
!167 = !{ptr @.str.82, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 196, i32 2}
!169 = !{ptr @.str.83, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @cc_isr.__UNIQUE_ID_ddebug457, !168, !"__UNIQUE_ID_ddebug457", i1 false, i1 false}
!171 = !{ptr @.str.84, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 233, i32 3}
!173 = !{ptr @cc_isr.__UNIQUE_ID_ddebug458, !172, !"__UNIQUE_ID_ddebug458", i1 false, i1 false}
!174 = !{ptr @.str.85, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 240, i32 3}
!176 = !{ptr @cc_isr._rs, !175, !"_rs", i1 false, i1 false}
!177 = !{ptr @.str.86, !175, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @cc_isr.descriptor, !175, !"descriptor", i1 false, i1 false}
!179 = !{ptr @.str.87, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 111, i32 2}
!181 = !{ptr @.str.88, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @init_cc_cache_params.__UNIQUE_ID_ddebug428, !180, !"__UNIQUE_ID_ddebug428", i1 false, i1 false}
!183 = !{ptr @.str.89, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 130, i32 2}
!185 = !{ptr @init_cc_cache_params.__UNIQUE_ID_ddebug444, !184, !"__UNIQUE_ID_ddebug444", i1 false, i1 false}
!186 = !{ptr @.str.90, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 137, i32 2}
!188 = !{ptr @init_cc_cache_params.__UNIQUE_ID_ddebug445, !187, !"__UNIQUE_ID_ddebug445", i1 false, i1 false}
!189 = !{ptr @.str.91, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 150, i32 2}
!191 = !{ptr @init_cc_cache_params.__UNIQUE_ID_ddebug456, !190, !"__UNIQUE_ID_ddebug456", i1 false, i1 false}
!192 = !{ptr @.str.92, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 636, i32 2}
!194 = !{ptr @.str.93, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @ccree_remove.__UNIQUE_ID_ddebug464, !193, !"__UNIQUE_ID_ddebug464", i1 false, i1 false}
!196 = !{ptr @.str.94, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 640, i32 2}
!198 = !{ptr @ccree_remove._entry, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @ccree_remove._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @arm_ccree_dev_of_match, !201, !"arm_ccree_dev_of_match", i1 false, i1 false}
!201 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 93, i32 34}
!202 = !{ptr @.str.95, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 69, i32 10}
!204 = !{ptr @cc703_hw, !205, !"cc703_hw", i1 false, i1 false}
!205 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 68, i32 32}
!206 = !{ptr @.str.96, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 74, i32 10}
!208 = !{ptr @cc713_hw, !209, !"cc713_hw", i1 false, i1 false}
!209 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 73, i32 32}
!210 = !{ptr @.str.97, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 79, i32 10}
!212 = !{ptr @cc712_hw, !213, !"cc712_hw", i1 false, i1 false}
!213 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 78, i32 32}
!214 = !{ptr @.str.98, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 84, i32 10}
!216 = !{ptr @cc710_hw, !217, !"cc710_hw", i1 false, i1 false}
!217 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 83, i32 32}
!218 = !{ptr @.str.99, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 89, i32 10}
!220 = !{ptr @cc630p_hw, !221, !"cc630p_hw", i1 false, i1 false}
!221 = !{!"../drivers/crypto/ccree/cc_driver.c", i32 88, i32 32}
!222 = !{i32 1, !"wchar_size", i32 2}
!223 = !{i32 1, !"min_enum_size", i32 4}
!224 = !{i32 8, !"branch-target-enforcement", i32 0}
!225 = !{i32 8, !"sign-return-address", i32 0}
!226 = !{i32 8, !"sign-return-address-all", i32 0}
!227 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!228 = !{i32 7, !"uwtable", i32 1}
!229 = !{i32 7, !"frame-pointer", i32 2}
!230 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!231 = !{i64 5068517}
!232 = !{i64 2152608866}
!233 = !{i64 2152610221}
!234 = !{i64 5068099}
!235 = !{i64 2148707279, i64 2148707284, i64 2148707297, i64 2148707341, i64 2148707375, i64 2148707396}
!236 = !{i64 2148224883}
!237 = !{i64 709706, i64 709731, i64 709753, i64 709769, i64 709781, i64 709801, i64 709825, i64 709841, i64 709853}
!238 = !{i64 2148225071}
!239 = !{i8 0, i8 2}
