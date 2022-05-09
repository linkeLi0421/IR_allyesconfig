; ModuleID = '/llk/IR_all_yes/drivers/dma/qcom/hidma_mgmt.c_pt.bc'
source_filename = "../drivers/dma/qcom/hidma_mgmt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+hidma_mgmt_setup\22, \22a\22\09"
module asm "\09.weak\09__crc_hidma_mgmt_setup\09\09\09\09"
module asm "\09.long\09__crc_hidma_mgmt_setup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hidma_mgmt_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22hidma_mgmt_setup\22\09\09\09\09\09"
module asm "__kstrtabns_hidma_mgmt_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hidma_mgmt_dev = type { i8, i8, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__param_str_max_write_request = internal constant [28 x i8] c"hdma_mgmt.max_write_request\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@max_write_request = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_max_write_request = internal constant %struct.kernel_param { ptr @__param_str_max_write_request, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @max_write_request } }, section "__param", align 4
@__UNIQUE_ID_max_write_requesttype233 = internal constant [42 x i8] c"hdma_mgmt.parmtype=max_write_request:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_max_write_request234 = internal constant [78 x i8] c"hdma_mgmt.parm=max_write_request:maximum write burst (default: ACPI/DT value)\00", section ".modinfo", align 1
@__param_str_max_read_request = internal constant [27 x i8] c"hdma_mgmt.max_read_request\00", align 1
@max_read_request = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_max_read_request = internal constant %struct.kernel_param { ptr @__param_str_max_read_request, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @max_read_request } }, section "__param", align 4
@__UNIQUE_ID_max_read_requesttype235 = internal constant [41 x i8] c"hdma_mgmt.parmtype=max_read_request:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_max_read_request236 = internal constant [76 x i8] c"hdma_mgmt.parm=max_read_request:maximum read burst (default: ACPI/DT value)\00", section ".modinfo", align 1
@__param_str_max_wr_xactions = internal constant [26 x i8] c"hdma_mgmt.max_wr_xactions\00", align 1
@max_wr_xactions = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_max_wr_xactions = internal constant %struct.kernel_param { ptr @__param_str_max_wr_xactions, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @max_wr_xactions } }, section "__param", align 4
@__UNIQUE_ID_max_wr_xactionstype237 = internal constant [40 x i8] c"hdma_mgmt.parmtype=max_wr_xactions:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_max_wr_xactions238 = internal constant [93 x i8] c"hdma_mgmt.parm=max_wr_xactions:maximum number of write transactions (default: ACPI/DT value)\00", section ".modinfo", align 1
@__param_str_max_rd_xactions = internal constant [26 x i8] c"hdma_mgmt.max_rd_xactions\00", align 1
@max_rd_xactions = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_max_rd_xactions = internal constant %struct.kernel_param { ptr @__param_str_max_rd_xactions, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @max_rd_xactions } }, section "__param", align 4
@__UNIQUE_ID_max_rd_xactionstype239 = internal constant [40 x i8] c"hdma_mgmt.parmtype=max_rd_xactions:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_max_rd_xactions240 = internal constant [92 x i8] c"hdma_mgmt.parm=max_rd_xactions:maximum number of read transactions (default: ACPI/DT value)\00", section ".modinfo", align 1
@hidma_mgmt_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 74, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid write request %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hidma_mgmt_setup\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/dma/qcom/hidma_mgmt.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hidma_mgmt_setup._entry_ptr = internal global ptr @hidma_mgmt_setup._entry, section ".printk_index", align 4
@hidma_mgmt_setup._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 82, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid read request %d\0A\00", [39 x i8] zeroinitializer }, align 32
@hidma_mgmt_setup._entry_ptr.7 = internal global ptr @hidma_mgmt_setup._entry.5, section ".printk_index", align 4
@hidma_mgmt_setup._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 89, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"max_wr_xactions cannot be bigger than %ld\0A\00", [53 x i8] zeroinitializer }, align 32
@hidma_mgmt_setup._entry_ptr.10 = internal global ptr @hidma_mgmt_setup._entry.8, section ".printk_index", align 4
@hidma_mgmt_setup._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 96, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"max_rd_xactions cannot be bigger than %ld\0A\00", [53 x i8] zeroinitializer }, align 32
@hidma_mgmt_setup._entry_ptr.13 = internal global ptr @hidma_mgmt_setup._entry.11, section ".printk_index", align 4
@hidma_mgmt_setup._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 103, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"priority can be 0 or 1\0A\00", [40 x i8] zeroinitializer }, align 32
@hidma_mgmt_setup._entry_ptr.16 = internal global ptr @hidma_mgmt_setup._entry.14, section ".printk_index", align 4
@hidma_mgmt_setup._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 110, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"max value of weight can be %d.\0A\00", [32 x i8] zeroinitializer }, align 32
@hidma_mgmt_setup._entry_ptr.19 = internal global ptr @hidma_mgmt_setup._entry.17, section ".printk_index", align 4
@__kstrtab_hidma_mgmt_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_hidma_mgmt_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_hidma_mgmt_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hidma_mgmt_setup to i32), ptr @__kstrtab_hidma_mgmt_setup, ptr @__kstrtabns_hidma_mgmt_setup }, section "___ksymtab_gpl+hidma_mgmt_setup", align 4
@__initcall__kmod_hdma_mgmt__241_439_hidma_mgmt_init6 = internal global ptr @hidma_mgmt_init, section ".initcall6.init", align 4
@__UNIQUE_ID_file242 = internal constant [42 x i8] c"hdma_mgmt.file=drivers/dma/qcom/hdma_mgmt\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [25 x i8] c"hdma_mgmt.license=GPL v2\00", section ".modinfo", align 1
@hidma_mgmt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,hidma-mgmt-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@hidma_mgmt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hidma_mgmt_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.20, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hidma_mgmt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@object_counter = internal global { i32, [28 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hidma-mgmt\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dma-channels\00", [19 x i8] zeroinitializer }, align 32
@hidma_mgmt_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 203, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"number of channels missing\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hidma_mgmt_probe\00", [47 x i8] zeroinitializer }, align 32
@hidma_mgmt_probe._entry_ptr = internal global ptr @hidma_mgmt_probe._entry, section ".printk_index", align 4
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"channel-reset-timeout-cycles\00", [35 x i8] zeroinitializer }, align 32
@hidma_mgmt_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.23, ptr @.str.2, i32 211, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"channel reset timeout missing\0A\00", [33 x i8] zeroinitializer }, align 32
@hidma_mgmt_probe._entry_ptr.27 = internal global ptr @hidma_mgmt_probe._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"max-write-burst-bytes\00", [42 x i8] zeroinitializer }, align 32
@hidma_mgmt_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.23, ptr @.str.2, i32 218, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"max-write-burst-bytes missing\0A\00", [33 x i8] zeroinitializer }, align 32
@hidma_mgmt_probe._entry_ptr.31 = internal global ptr @hidma_mgmt_probe._entry.29, section ".printk_index", align 4
@hidma_mgmt_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.23, ptr @.str.2, i32 225, ptr @.str.34, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"overriding max-write-burst-bytes: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@hidma_mgmt_probe._entry_ptr.35 = internal global ptr @hidma_mgmt_probe._entry.32, section ".printk_index", align 4
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"max-read-burst-bytes\00", [43 x i8] zeroinitializer }, align 32
@hidma_mgmt_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.23, ptr @.str.2, i32 233, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"max-read-burst-bytes missing\0A\00", [34 x i8] zeroinitializer }, align 32
@hidma_mgmt_probe._entry_ptr.39 = internal global ptr @hidma_mgmt_probe._entry.37, section ".printk_index", align 4
@hidma_mgmt_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.23, ptr @.str.2, i32 239, ptr @.str.34, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"overriding max-read-burst-bytes: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@hidma_mgmt_probe._entry_ptr.42 = internal global ptr @hidma_mgmt_probe._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"max-write-transactions\00", [41 x i8] zeroinitializer }, align 32
@hidma_mgmt_probe._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.23, ptr @.str.2, i32 247, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"max-write-transactions missing\0A\00", [32 x i8] zeroinitializer }, align 32
@hidma_mgmt_probe._entry_ptr.46 = internal global ptr @hidma_mgmt_probe._entry.44, section ".printk_index", align 4
@hidma_mgmt_probe._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.23, ptr @.str.2, i32 253, ptr @.str.34, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"overriding max-write-transactions: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@hidma_mgmt_probe._entry_ptr.49 = internal global ptr @hidma_mgmt_probe._entry.47, section ".printk_index", align 4
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"max-read-transactions\00", [42 x i8] zeroinitializer }, align 32
@hidma_mgmt_probe._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.23, ptr @.str.2, i32 261, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"max-read-transactions missing\0A\00", [33 x i8] zeroinitializer }, align 32
@hidma_mgmt_probe._entry_ptr.53 = internal global ptr @hidma_mgmt_probe._entry.51, section ".printk_index", align 4
@hidma_mgmt_probe._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.23, ptr @.str.2, i32 267, ptr @.str.34, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"overriding max-read-transactions: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@hidma_mgmt_probe._entry_ptr.56 = internal global ptr @hidma_mgmt_probe._entry.54, section ".printk_index", align 4
@hidma_mgmt_probe._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.23, ptr @.str.2, i32 291, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"setup failed\0A\00", [18 x i8] zeroinitializer }, align 32
@hidma_mgmt_probe._entry_ptr.59 = internal global ptr @hidma_mgmt_probe._entry.57, section ".printk_index", align 4
@hidma_mgmt_probe._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.23, ptr @.str.2, i32 302, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sysfs setup failed\0A\00", [44 x i8] zeroinitializer }, align 32
@hidma_mgmt_probe._entry_ptr.62 = internal global ptr @hidma_mgmt_probe._entry.60, section ".printk_index", align 4
@hidma_mgmt_probe._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.23, ptr @.str.2, i32 309, ptr @.str.34, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"HW rev: %d.%d @ %pa with %d physical channels\0A\00", [49 x i8] zeroinitializer }, align 32
@hidma_mgmt_probe._entry_ptr.65 = internal global ptr @hidma_mgmt_probe._entry.63, section ".printk_index", align 4
@___asan_gen_.66 = private unnamed_addr constant [18 x i8] c"max_write_request\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 45, i32 21 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"max_read_request\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 50, i32 21 }
@___asan_gen_.72 = private unnamed_addr constant [16 x i8] c"max_wr_xactions\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 55, i32 21 }
@___asan_gen_.75 = private unnamed_addr constant [16 x i8] c"max_rd_xactions\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 60, i32 21 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 73, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 81, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 87, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 94, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 102, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 108, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"hidma_mgmt_match\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 329, i32 34 }
@___asan_gen_.129 = private unnamed_addr constant [18 x i8] c"hidma_mgmt_driver\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 335, i32 31 }
@___asan_gen_.132 = private unnamed_addr constant [15 x i8] c"object_counter\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 345, i32 12 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 338, i32 14 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 200, i32 44 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 203, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 208, i32 11 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 211, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 215, i32 44 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 218, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 224, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 230, i32 44 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 233, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 238, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 244, i32 44 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 247, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 252, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 258, i32 44 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 261, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 266, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 291, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 302, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.237 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.238 = private constant [33 x i8] c"../drivers/dma/qcom/hidma_mgmt.c\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 306, i32 2 }
@llvm.compiler.used = appending global [93 x ptr] [ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__UNIQUE_ID_max_rd_xactions240, ptr @__UNIQUE_ID_max_rd_xactionstype239, ptr @__UNIQUE_ID_max_read_request236, ptr @__UNIQUE_ID_max_read_requesttype235, ptr @__UNIQUE_ID_max_wr_xactions238, ptr @__UNIQUE_ID_max_wr_xactionstype237, ptr @__UNIQUE_ID_max_write_request234, ptr @__UNIQUE_ID_max_write_requesttype233, ptr @__initcall__kmod_hdma_mgmt__241_439_hidma_mgmt_init6, ptr @__ksymtab_hidma_mgmt_setup, ptr @__param_max_rd_xactions, ptr @__param_max_read_request, ptr @__param_max_wr_xactions, ptr @__param_max_write_request, ptr @hidma_mgmt_probe._entry, ptr @hidma_mgmt_probe._entry.25, ptr @hidma_mgmt_probe._entry.29, ptr @hidma_mgmt_probe._entry.32, ptr @hidma_mgmt_probe._entry.37, ptr @hidma_mgmt_probe._entry.40, ptr @hidma_mgmt_probe._entry.44, ptr @hidma_mgmt_probe._entry.47, ptr @hidma_mgmt_probe._entry.51, ptr @hidma_mgmt_probe._entry.54, ptr @hidma_mgmt_probe._entry.57, ptr @hidma_mgmt_probe._entry.60, ptr @hidma_mgmt_probe._entry.63, ptr @hidma_mgmt_probe._entry_ptr, ptr @hidma_mgmt_probe._entry_ptr.27, ptr @hidma_mgmt_probe._entry_ptr.31, ptr @hidma_mgmt_probe._entry_ptr.35, ptr @hidma_mgmt_probe._entry_ptr.39, ptr @hidma_mgmt_probe._entry_ptr.42, ptr @hidma_mgmt_probe._entry_ptr.46, ptr @hidma_mgmt_probe._entry_ptr.49, ptr @hidma_mgmt_probe._entry_ptr.53, ptr @hidma_mgmt_probe._entry_ptr.56, ptr @hidma_mgmt_probe._entry_ptr.59, ptr @hidma_mgmt_probe._entry_ptr.62, ptr @hidma_mgmt_probe._entry_ptr.65, ptr @hidma_mgmt_setup._entry, ptr @hidma_mgmt_setup._entry.11, ptr @hidma_mgmt_setup._entry.14, ptr @hidma_mgmt_setup._entry.17, ptr @hidma_mgmt_setup._entry.5, ptr @hidma_mgmt_setup._entry.8, ptr @hidma_mgmt_setup._entry_ptr, ptr @hidma_mgmt_setup._entry_ptr.10, ptr @hidma_mgmt_setup._entry_ptr.13, ptr @hidma_mgmt_setup._entry_ptr.16, ptr @hidma_mgmt_setup._entry_ptr.19, ptr @hidma_mgmt_setup._entry_ptr.7, ptr @max_write_request, ptr @max_read_request, ptr @max_wr_xactions, ptr @max_rd_xactions, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @hidma_mgmt_match, ptr @hidma_mgmt_driver, ptr @object_counter, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_write_request to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_read_request to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_wr_xactions to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_rd_xactions to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_mgmt_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_mgmt_setup._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_mgmt_setup._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_mgmt_setup._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_mgmt_setup._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_mgmt_setup._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_mgmt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_mgmt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @object_counter to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_mgmt_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_mgmt_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_mgmt_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_mgmt_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_mgmt_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_mgmt_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_mgmt_probe._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_mgmt_probe._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_mgmt_probe._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_mgmt_probe._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_mgmt_probe._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_mgmt_probe._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_mgmt_probe._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hidma_mgmt_setup(ptr noundef %mgmtdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %max_write_request = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %mgmtdev, i32 0, i32 4
  %0 = ptrtoint ptr %max_write_request to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_write_request, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 0
  br i1 %cmp.not.i, label %entry.do.end_crit_edge, label %is_power_of_2.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

is_power_of_2.exit:                               ; preds = %entry
  %2 = tail call i32 @llvm.ctpop.i32(i32 %1) #7, !range !150
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp1.i = icmp ugt i32 %2, 1
  %3 = add i32 %1, -1025
  call void @__sanitizer_cov_trace_const_cmp4(i32 -897, i32 %3)
  %4 = icmp ult i32 %3, -897
  %5 = or i1 %4, %cmp1.i
  br i1 %5, label %is_power_of_2.exit.do.end_crit_edge, label %if.end

is_power_of_2.exit.do.end_crit_edge:              ; preds = %is_power_of_2.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %is_power_of_2.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %pdev = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %mgmtdev, i32 0, i32 14
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %1) #10
  br label %cleanup

if.end:                                           ; preds = %is_power_of_2.exit
  %max_read_request = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %mgmtdev, i32 0, i32 5
  %8 = ptrtoint ptr %max_read_request to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_read_request, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i244 = icmp eq i32 %9, 0
  br i1 %cmp.not.i244, label %if.end.do.end16_crit_edge, label %is_power_of_2.exit247

if.end.do.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16

is_power_of_2.exit247:                            ; preds = %if.end
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9) #7, !range !150
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp1.i245 = icmp ugt i32 %10, 1
  %11 = add i32 %9, -1025
  call void @__sanitizer_cov_trace_const_cmp4(i32 -897, i32 %11)
  %12 = icmp ult i32 %11, -897
  %13 = or i1 %12, %cmp1.i245
  br i1 %13, label %is_power_of_2.exit247.do.end16_crit_edge, label %if.end20

is_power_of_2.exit247.do.end16_crit_edge:         ; preds = %is_power_of_2.exit247
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16

do.end16:                                         ; preds = %is_power_of_2.exit247.do.end16_crit_edge, %if.end.do.end16_crit_edge
  %pdev17 = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %mgmtdev, i32 0, i32 14
  %14 = ptrtoint ptr %pdev17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev17, align 4
  %dev18 = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.6, i32 noundef %9) #10
  br label %cleanup

if.end20:                                         ; preds = %is_power_of_2.exit247
  %max_wr_xactions = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %mgmtdev, i32 0, i32 2
  %16 = ptrtoint ptr %max_wr_xactions to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_wr_xactions, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %17)
  %cmp21 = icmp ugt i32 %17, 31
  br i1 %cmp21, label %do.end25, label %if.end28

do.end25:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %pdev26 = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %mgmtdev, i32 0, i32 14
  %18 = ptrtoint ptr %pdev26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev26, align 4
  %dev27 = getelementptr inbounds %struct.platform_device, ptr %19, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27, ptr noundef nonnull @.str.9, i32 noundef 31) #10
  br label %cleanup

if.end28:                                         ; preds = %if.end20
  %max_rd_xactions = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %mgmtdev, i32 0, i32 3
  %20 = ptrtoint ptr %max_rd_xactions to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_rd_xactions, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %21)
  %cmp29 = icmp ugt i32 %21, 31
  br i1 %cmp29, label %do.end33, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end28
  %dma_channels = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %mgmtdev, i32 0, i32 6
  %22 = ptrtoint ptr %dma_channels to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp37262.not = icmp eq i32 %23, 0
  br i1 %cmp37262.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %priority = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %mgmtdev, i32 0, i32 9
  %weight = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %mgmtdev, i32 0, i32 10
  br label %for.body

do.end33:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %pdev34 = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %mgmtdev, i32 0, i32 14
  %24 = ptrtoint ptr %pdev34 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev34, align 4
  %dev35 = getelementptr inbounds %struct.platform_device, ptr %25, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev35, ptr noundef nonnull @.str.12, i32 noundef 31) #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0263 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %26 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priority, align 4
  %arrayidx = getelementptr i32, ptr %27, i32 %i.0263
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp38 = icmp ugt i32 %29, 1
  br i1 %cmp38, label %do.end42, label %if.end45

do.end42:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %pdev43 = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %mgmtdev, i32 0, i32 14
  %30 = ptrtoint ptr %pdev43 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev43, align 4
  %dev44 = getelementptr inbounds %struct.platform_device, ptr %31, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev44, ptr noundef nonnull @.str.15) #10
  br label %cleanup

if.end45:                                         ; preds = %for.body
  %32 = ptrtoint ptr %weight to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %weight, align 4
  %arrayidx46 = getelementptr i32, ptr %33, i32 %i.0263
  %34 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %35)
  %cmp47 = icmp ugt i32 %35, 15
  br i1 %cmp47, label %do.end51, label %if.end54

do.end51:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %pdev52 = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %mgmtdev, i32 0, i32 14
  %36 = ptrtoint ptr %pdev52 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev52, align 4
  %dev53 = getelementptr inbounds %struct.platform_device, ptr %37, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev53, ptr noundef nonnull @.str.18, i32 noundef 15) #10
  br label %cleanup

if.end54:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp57 = icmp eq i32 %35, 0
  br i1 %cmp57, label %if.then58, label %if.end54.for.inc_crit_edge

if.end54.for.inc_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then58:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %arrayidx46, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then58, %if.end54.for.inc_crit_edge
  %inc = add nuw i32 %i.0263, 1
  %39 = ptrtoint ptr %dma_channels to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dma_channels, align 4
  %cmp37 = icmp ult i32 %inc, %40
  br i1 %cmp37, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %pdev62 = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %mgmtdev, i32 0, i32 14
  %41 = ptrtoint ptr %pdev62 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev62, align 4
  %dev63 = getelementptr inbounds %struct.platform_device, ptr %42, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev63, i32 noundef 4) #7
  %virtaddr = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %mgmtdev, i32 0, i32 11
  %43 = ptrtoint ptr %virtaddr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %virtaddr, align 4
  %add.ptr = getelementptr i8, ptr %44, i32 1052
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  %46 = ptrtoint ptr %max_write_request to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %max_write_request, align 4
  %shl = shl i32 %47, 16
  %48 = ptrtoint ptr %max_read_request to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %max_read_request, align 4
  %or70 = or i32 %shl, %49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !153
  tail call void @arm_heavy_mb() #7
  %50 = tail call i32 @llvm.bswap.i32(i32 %or70)
  %51 = ptrtoint ptr %virtaddr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %virtaddr, align 4
  %add.ptr75 = getelementptr i8, ptr %52, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75, i32 %50) #7, !srcloc !154
  %53 = ptrtoint ptr %virtaddr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %virtaddr, align 4
  %add.ptr79 = getelementptr i8, ptr %54, i32 1056
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr79) #7, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !155
  %56 = ptrtoint ptr %max_wr_xactions to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %max_wr_xactions, align 4
  %shl85 = shl i32 %57, 16
  %58 = and i32 %55, -520101633
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  %and87 = or i32 %shl85, %59
  %60 = ptrtoint ptr %max_rd_xactions to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %max_rd_xactions, align 4
  %or89 = or i32 %and87, %61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !156
  tail call void @arm_heavy_mb() #7
  %62 = tail call i32 @llvm.bswap.i32(i32 %or89)
  %63 = ptrtoint ptr %virtaddr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %virtaddr, align 4
  %add.ptr94 = getelementptr i8, ptr %64, i32 1056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94, i32 %62) #7, !srcloc !154
  %65 = ptrtoint ptr %virtaddr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %virtaddr, align 4
  %add.ptr98 = getelementptr i8, ptr %66, i32 1060
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr98) #7, !srcloc !151
  %68 = tail call i32 @llvm.bswap.i32(i32 %67)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !157
  %hw_version = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %mgmtdev, i32 0, i32 8
  %69 = ptrtoint ptr %hw_version to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %hw_version, align 4
  %shr = lshr i32 %68, 28
  %conv = trunc i32 %shr to i8
  %70 = ptrtoint ptr %mgmtdev to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv, ptr %mgmtdev, align 4
  %shr105 = lshr i32 %68, 16
  %71 = trunc i32 %shr105 to i8
  %conv107 = and i8 %71, 15
  %hw_version_minor = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %mgmtdev, i32 0, i32 1
  %72 = ptrtoint ptr %hw_version_minor to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv107, ptr %hw_version_minor, align 1
  %73 = ptrtoint ptr %dma_channels to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %dma_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp110264.not = icmp eq i32 %74, 0
  br i1 %cmp110264.not, label %for.end.for.end144_crit_edge, label %for.body112.lr.ph

for.end.for.end144_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end144

for.body112.lr.ph:                                ; preds = %for.end
  %weight114 = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %mgmtdev, i32 0, i32 10
  %priority117 = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %mgmtdev, i32 0, i32 9
  br label %for.body112

for.body112:                                      ; preds = %for.body112.for.body112_crit_edge, %for.body112.lr.ph
  %i.1265 = phi i32 [ 0, %for.body112.lr.ph ], [ %inc143, %for.body112.for.body112_crit_edge ]
  %75 = ptrtoint ptr %weight114 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %weight114, align 4
  %arrayidx115 = getelementptr i32, ptr %76, i32 %i.1265
  %77 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx115, align 4
  %79 = ptrtoint ptr %priority117 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %priority117, align 4
  %arrayidx118 = getelementptr i32, ptr %80, i32 %i.1265
  %81 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx118, align 4
  %83 = ptrtoint ptr %virtaddr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %virtaddr, align 4
  %add.ptr122 = getelementptr i8, ptr %84, i32 1792
  %mul = shl i32 %i.1265, 2
  %add.ptr123 = getelementptr i8, ptr %add.ptr122, i32 %mul
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr123) #7, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !158
  %and128 = shl i32 %82, 15
  %shl129 = and i32 %and128, 32768
  %86 = and i32 %85, -16711681
  %87 = tail call i32 @llvm.bswap.i32(i32 %86)
  %and132 = shl i32 %78, 8
  %shl133 = and i32 %and132, 32512
  %and131 = or i32 %shl129, %shl133
  %or134 = or i32 %and131, %87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  tail call void @arm_heavy_mb() #7
  %88 = tail call i32 @llvm.bswap.i32(i32 %or134)
  %89 = ptrtoint ptr %virtaddr to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %virtaddr, align 4
  %add.ptr139 = getelementptr i8, ptr %90, i32 1792
  %add.ptr141 = getelementptr i8, ptr %add.ptr139, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr141, i32 %88) #7, !srcloc !154
  %inc143 = add nuw i32 %i.1265, 1
  %91 = ptrtoint ptr %dma_channels to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %dma_channels, align 4
  %cmp110 = icmp ult i32 %inc143, %92
  br i1 %cmp110, label %for.body112.for.body112_crit_edge, label %for.body112.for.end144_crit_edge

for.body112.for.end144_crit_edge:                 ; preds = %for.body112
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end144

for.body112.for.body112_crit_edge:                ; preds = %for.body112
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body112

for.end144:                                       ; preds = %for.body112.for.end144_crit_edge, %for.end.for.end144_crit_edge
  %93 = ptrtoint ptr %virtaddr to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %virtaddr, align 4
  %add.ptr148 = getelementptr i8, ptr %94, i32 1048
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr148) #7, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !160
  %96 = and i32 %95, 61695
  %97 = tail call i32 @llvm.bswap.i32(i32 %96)
  %chreset_timeout_cycles = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %mgmtdev, i32 0, i32 7
  %98 = ptrtoint ptr %chreset_timeout_cycles to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %chreset_timeout_cycles, align 4
  %and153 = and i32 %99, 1048575
  %or154 = or i32 %and153, %97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !161
  tail call void @arm_heavy_mb() #7
  %100 = tail call i32 @llvm.bswap.i32(i32 %or154)
  %101 = ptrtoint ptr %virtaddr to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %virtaddr, align 4
  %add.ptr159 = getelementptr i8, ptr %102, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr159, i32 %100) #7, !srcloc !154
  %103 = ptrtoint ptr %pdev62 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %pdev62, align 4
  %call.i248 = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %104, i32 0, i32 3, i32 12, i32 22
  %105 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %105)
  store volatile i64 %call.i248, ptr %last_busy.i, align 8
  %106 = ptrtoint ptr %pdev62 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pdev62, align 4
  %dev163 = getelementptr inbounds %struct.platform_device, ptr %107, i32 0, i32 3
  %call.i249 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev163, i32 noundef 13) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end144, %do.end51, %do.end42, %do.end33, %do.end25, %do.end16, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end16 ], [ -22, %do.end25 ], [ -22, %do.end33 ], [ -22, %do.end42 ], [ -22, %do.end51 ], [ 0, %for.end144 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hidma_mgmt_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @hidma_mgmt_match, ptr noundef null) #7
  %tobool.not7 = icmp eq ptr %call.i, null
  br i1 %tobool.not7, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %child.08 = phi ptr [ %call.i6, %for.body.for.body_crit_edge ], [ %call.i, %entry.for.body_crit_edge ]
  tail call fastcc void @hidma_mgmt_of_populate_channels(ptr noundef nonnull %child.08) #11
  %call.i6 = tail call ptr @of_find_matching_node_and_match(ptr noundef nonnull %child.08, ptr noundef nonnull @hidma_mgmt_match, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call.i6, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %call3 = tail call i32 @__platform_driver_register(ptr noundef nonnull @hidma_mgmt_driver, ptr noundef null) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hidma_mgmt_of_populate_channels(ptr noundef %np) unnamed_addr #5 section ".init.text" align 64 {
entry:
  %pdevinfo = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_find_device_by_node(ptr noundef %np) #7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo) #7
  %0 = call ptr @memset(ptr %pdevinfo, i32 255, i32 56)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 96) #12
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup31_crit_edge, label %if.end

entry.cleanup31_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup31

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_get_next_available_child(ptr noundef %np, ptr noundef null) #7
  %cmp.not3 = icmp eq ptr %call2, null
  br i1 %cmp.not3, label %if.end.cleanup31.sink.split_crit_edge, label %for.body.lr.ph

if.end.cleanup31.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup31.sink.split

for.body.lr.ph:                                   ; preds = %if.end
  %arrayidx7 = getelementptr %struct.resource, ptr %call7.i.i.i, i32 1
  %arrayidx12 = getelementptr %struct.resource, ptr %call7.i.i.i, i32 2
  %fwnode17 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 1
  %tobool18.not = icmp eq ptr %call, null
  %dev = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3
  %spec.select = select i1 %tobool18.not, ptr null, ptr %dev
  %name19 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 3
  %id = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 4
  %res20 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 5
  %num_res = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 6
  %data = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 7
  %size_data = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 8
  %dma_mask = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 9
  %2 = getelementptr inbounds i8, ptr %pdevinfo, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %child.04 = phi ptr [ %call2, %for.body.lr.ph ], [ %call30, %for.inc.for.body_crit_edge ]
  %call3 = call i32 @of_address_to_resource(ptr noundef nonnull %child.04, i32 noundef 0, ptr noundef nonnull %call7.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %for.body.out_crit_edge, label %if.end6

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end6:                                          ; preds = %for.body
  %call8 = call i32 @of_address_to_resource(ptr noundef nonnull %child.04, i32 noundef 1, ptr noundef %arrayidx7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end6.out_crit_edge, label %if.end11

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end11:                                         ; preds = %if.end6
  %call13 = call i32 @of_irq_to_resource(ptr noundef nonnull %child.04, i32 noundef 0, ptr noundef %arrayidx12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 1
  br i1 %cmp14, label %if.end11.out_crit_edge, label %if.end16

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end16:                                         ; preds = %if.end11
  %3 = call ptr @memset(ptr %2, i32 0, i32 48)
  %fwnode = getelementptr inbounds %struct.device_node, ptr %child.04, i32 0, i32 3
  %4 = ptrtoint ptr %fwnode17 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %fwnode, ptr %fwnode17, align 4
  %5 = ptrtoint ptr %pdevinfo to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spec.select, ptr %pdevinfo, align 8
  %6 = ptrtoint ptr %child.04 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %child.04, align 4
  %8 = ptrtoint ptr %name19 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %name19, align 4
  %9 = load i32, ptr @object_counter, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr @object_counter, align 4
  %10 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %id, align 8
  %11 = ptrtoint ptr %res20 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i.i, ptr %res20, align 4
  %12 = ptrtoint ptr %num_res to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %num_res, align 8
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %data, align 4
  %14 = ptrtoint ptr %size_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %size_data, align 8
  %15 = ptrtoint ptr %dma_mask to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 -1, ptr %dma_mask, align 8
  %call21 = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo) #7
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end16.out_crit_edge, label %for.inc

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.inc:                                          ; preds = %if.end16
  %dev26 = getelementptr inbounds %struct.platform_device, ptr %call21, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %call21, i32 0, i32 3, i32 27
  %16 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %child.04, ptr %of_node, align 8
  %call.i = call i32 @of_dma_configure_id(ptr noundef %dev26, ptr noundef nonnull %child.04, i1 noundef zeroext true, ptr noundef null) #7
  call void @of_msi_configure(ptr noundef %dev26, ptr noundef nonnull %child.04) #7
  %call30 = call ptr @of_get_next_available_child(ptr noundef %np, ptr noundef nonnull %child.04) #7
  %cmp.not = icmp eq ptr %call30, null
  br i1 %cmp.not, label %for.inc.cleanup31.sink.split_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup31.sink.split_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup31.sink.split

out:                                              ; preds = %if.end16.out_crit_edge, %if.end11.out_crit_edge, %if.end6.out_crit_edge, %for.body.out_crit_edge
  call void @of_node_put(ptr noundef nonnull %child.04) #7
  br label %cleanup31.sink.split

cleanup31.sink.split:                             ; preds = %out, %for.inc.cleanup31.sink.split_crit_edge, %if.end.cleanup31.sink.split_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %cleanup31

cleanup31:                                        ; preds = %cleanup31.sink.split, %entry.cleanup31_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_msi_configure(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_configure_id(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hidma_mgmt_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 2000) #7
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #7
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #7
  tail call void @pm_runtime_enable(ptr noundef %dev) #7
  %call.i262 = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #7
  %call6 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %call8 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call6) #7
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %call10 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end12

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end12:                                         ; preds = %if.end
  %call.i263 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 56, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i263, null
  br i1 %tobool.not, label %if.end12.out_crit_edge, label %if.end16

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end16:                                         ; preds = %if.end12
  %pdev17 = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %call.i263, i32 0, i32 14
  %0 = ptrtoint ptr %pdev17 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pdev, ptr %pdev17, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call6, i32 0, i32 1
  %1 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %end.i, align 4
  %3 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call6, align 4
  %sub.i = add i32 %2, 1
  %add.i = sub i32 %sub.i, %4
  %addrsize = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %call.i263, i32 0, i32 12
  %5 = ptrtoint ptr %addrsize to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add.i, ptr %addrsize, align 4
  %virtaddr19 = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %call.i263, i32 0, i32 11
  %6 = ptrtoint ptr %virtaddr19 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8, ptr %virtaddr19, align 4
  %dma_channels = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %call.i263, i32 0, i32 6
  %call.i264 = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.21, ptr noundef %dma_channels, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i264)
  %tobool22.not = icmp eq i32 %call.i264, 0
  br i1 %tobool22.not, label %if.end25, label %do.end

do.end:                                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #10
  br label %out

if.end25:                                         ; preds = %if.end16
  %chreset_timeout_cycles = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %call.i263, i32 0, i32 7
  %call.i265 = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef %chreset_timeout_cycles, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i265)
  %tobool28.not = icmp eq i32 %call.i265, 0
  br i1 %tobool28.not, label %if.end34, label %do.end32

do.end32:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #10
  br label %out

if.end34:                                         ; preds = %if.end25
  %max_write_request = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %call.i263, i32 0, i32 4
  %call.i266 = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef %max_write_request, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i266)
  %tobool37.not = icmp eq i32 %call.i266, 0
  br i1 %tobool37.not, label %if.end43, label %do.end41

do.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #10
  br label %out

if.end43:                                         ; preds = %if.end34
  %7 = load i32, ptr @max_write_request, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool44.not = icmp eq i32 %7, 0
  br i1 %tobool44.not, label %if.end43.if.end54_crit_edge, label %land.lhs.true

if.end43.if.end54_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

land.lhs.true:                                    ; preds = %if.end43
  %8 = ptrtoint ptr %max_write_request to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_write_request, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp46.not = icmp eq i32 %7, %9
  br i1 %cmp46.not, label %land.lhs.true.if.end54_crit_edge, label %do.end50

land.lhs.true.if.end54_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

do.end50:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %7) #10
  br label %if.end54

if.end54:                                         ; preds = %do.end50, %land.lhs.true.if.end54_crit_edge, %if.end43.if.end54_crit_edge
  %max_write_request.sink283 = phi ptr [ @max_write_request, %do.end50 ], [ %max_write_request, %land.lhs.true.if.end54_crit_edge ], [ %max_write_request, %if.end43.if.end54_crit_edge ]
  %max_write_request.sink = phi ptr [ %max_write_request, %do.end50 ], [ @max_write_request, %land.lhs.true.if.end54_crit_edge ], [ @max_write_request, %if.end43.if.end54_crit_edge ]
  %10 = ptrtoint ptr %max_write_request.sink283 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_write_request.sink283, align 4
  %12 = ptrtoint ptr %max_write_request.sink to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %max_write_request.sink, align 4
  %max_read_request = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %call.i263, i32 0, i32 5
  %call.i267 = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.36, ptr noundef %max_read_request, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i267)
  %tobool57.not = icmp eq i32 %call.i267, 0
  br i1 %tobool57.not, label %if.end63, label %do.end61

do.end61:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38) #10
  br label %out

if.end63:                                         ; preds = %if.end54
  %13 = load i32, ptr @max_read_request, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool64.not = icmp eq i32 %13, 0
  br i1 %tobool64.not, label %if.end63.if.end76_crit_edge, label %land.lhs.true65

if.end63.if.end76_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

land.lhs.true65:                                  ; preds = %if.end63
  %14 = ptrtoint ptr %max_read_request to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_read_request, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp67.not = icmp eq i32 %13, %15
  br i1 %cmp67.not, label %land.lhs.true65.if.end76_crit_edge, label %do.end71

land.lhs.true65.if.end76_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

do.end71:                                         ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.41, i32 noundef %13) #10
  br label %if.end76

if.end76:                                         ; preds = %do.end71, %land.lhs.true65.if.end76_crit_edge, %if.end63.if.end76_crit_edge
  %max_read_request.sink284 = phi ptr [ @max_read_request, %do.end71 ], [ %max_read_request, %land.lhs.true65.if.end76_crit_edge ], [ %max_read_request, %if.end63.if.end76_crit_edge ]
  %max_read_request.sink = phi ptr [ %max_read_request, %do.end71 ], [ @max_read_request, %land.lhs.true65.if.end76_crit_edge ], [ @max_read_request, %if.end63.if.end76_crit_edge ]
  %16 = ptrtoint ptr %max_read_request.sink284 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_read_request.sink284, align 4
  %18 = ptrtoint ptr %max_read_request.sink to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %max_read_request.sink, align 4
  %max_wr_xactions = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %call.i263, i32 0, i32 2
  %call.i268 = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.43, ptr noundef %max_wr_xactions, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i268)
  %tobool79.not = icmp eq i32 %call.i268, 0
  br i1 %tobool79.not, label %if.end85, label %do.end83

do.end83:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45) #10
  br label %out

if.end85:                                         ; preds = %if.end76
  %19 = load i32, ptr @max_wr_xactions, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool86.not = icmp eq i32 %19, 0
  br i1 %tobool86.not, label %if.end85.if.end98_crit_edge, label %land.lhs.true87

if.end85.if.end98_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

land.lhs.true87:                                  ; preds = %if.end85
  %20 = ptrtoint ptr %max_wr_xactions to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_wr_xactions, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp89.not = icmp eq i32 %19, %21
  br i1 %cmp89.not, label %land.lhs.true87.if.end98_crit_edge, label %do.end93

land.lhs.true87.if.end98_crit_edge:               ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

do.end93:                                         ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.48, i32 noundef %19) #10
  br label %if.end98

if.end98:                                         ; preds = %do.end93, %land.lhs.true87.if.end98_crit_edge, %if.end85.if.end98_crit_edge
  %max_wr_xactions.sink285 = phi ptr [ @max_wr_xactions, %do.end93 ], [ %max_wr_xactions, %land.lhs.true87.if.end98_crit_edge ], [ %max_wr_xactions, %if.end85.if.end98_crit_edge ]
  %max_wr_xactions.sink = phi ptr [ %max_wr_xactions, %do.end93 ], [ @max_wr_xactions, %land.lhs.true87.if.end98_crit_edge ], [ @max_wr_xactions, %if.end85.if.end98_crit_edge ]
  %22 = ptrtoint ptr %max_wr_xactions.sink285 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_wr_xactions.sink285, align 4
  %24 = ptrtoint ptr %max_wr_xactions.sink to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %max_wr_xactions.sink, align 4
  %max_rd_xactions = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %call.i263, i32 0, i32 3
  %call.i269 = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.50, ptr noundef %max_rd_xactions, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i269)
  %tobool101.not = icmp eq i32 %call.i269, 0
  br i1 %tobool101.not, label %if.end107, label %do.end105

do.end105:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.52) #10
  br label %out

if.end107:                                        ; preds = %if.end98
  %25 = load i32, ptr @max_rd_xactions, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool108.not = icmp eq i32 %25, 0
  br i1 %tobool108.not, label %if.end107.if.end120_crit_edge, label %land.lhs.true109

if.end107.if.end120_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

land.lhs.true109:                                 ; preds = %if.end107
  %26 = ptrtoint ptr %max_rd_xactions to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_rd_xactions, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp111.not = icmp eq i32 %25, %27
  br i1 %cmp111.not, label %land.lhs.true109.if.end120_crit_edge, label %do.end115

land.lhs.true109.if.end120_crit_edge:             ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

do.end115:                                        ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.55, i32 noundef %25) #10
  br label %if.end120

if.end120:                                        ; preds = %do.end115, %land.lhs.true109.if.end120_crit_edge, %if.end107.if.end120_crit_edge
  %max_rd_xactions.sink286 = phi ptr [ @max_rd_xactions, %do.end115 ], [ %max_rd_xactions, %land.lhs.true109.if.end120_crit_edge ], [ %max_rd_xactions, %if.end107.if.end120_crit_edge ]
  %max_rd_xactions.sink = phi ptr [ %max_rd_xactions, %do.end115 ], [ @max_rd_xactions, %land.lhs.true109.if.end120_crit_edge ], [ @max_rd_xactions, %if.end107.if.end120_crit_edge ]
  %28 = ptrtoint ptr %max_rd_xactions.sink286 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_rd_xactions.sink286, align 4
  %30 = ptrtoint ptr %max_rd_xactions.sink to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %max_rd_xactions.sink, align 4
  %31 = ptrtoint ptr %dma_channels to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dma_channels, align 4
  %33 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %32, i32 4) #7
  %34 = extractvalue { i32, i1 } %33, 1
  br i1 %34, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !162

devm_kcalloc.exit.thread:                         ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  %priority278 = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %call.i263, i32 0, i32 9
  %35 = ptrtoint ptr %priority278 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %priority278, align 4
  br label %out

devm_kcalloc.exit:                                ; preds = %if.end120
  %36 = extractvalue { i32, i1 } %33, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %36, i32 noundef 3520) #7
  %priority = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %call.i263, i32 0, i32 9
  %37 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call5.i.i, ptr %priority, align 4
  %tobool125.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool125.not, label %devm_kcalloc.exit.out_crit_edge, label %if.end127

devm_kcalloc.exit.out_crit_edge:                  ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end127:                                        ; preds = %devm_kcalloc.exit
  %38 = ptrtoint ptr %dma_channels to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dma_channels, align 4
  %40 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %39, i32 4) #7
  %41 = extractvalue { i32, i1 } %40, 1
  br i1 %41, label %devm_kcalloc.exit273.thread, label %devm_kcalloc.exit273, !prof !162

devm_kcalloc.exit273.thread:                      ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #9
  %weight281 = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %call.i263, i32 0, i32 10
  %42 = ptrtoint ptr %weight281 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %weight281, align 4
  br label %out

devm_kcalloc.exit273:                             ; preds = %if.end127
  %43 = extractvalue { i32, i1 } %40, 0
  %call5.i.i270 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %43, i32 noundef 3520) #7
  %weight = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %call.i263, i32 0, i32 10
  %44 = ptrtoint ptr %weight to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call5.i.i270, ptr %weight, align 4
  %tobool132.not = icmp eq ptr %call5.i.i270, null
  br i1 %tobool132.not, label %devm_kcalloc.exit273.out_crit_edge, label %if.end134

devm_kcalloc.exit273.out_crit_edge:               ; preds = %devm_kcalloc.exit273
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end134:                                        ; preds = %devm_kcalloc.exit273
  %call135 = tail call i32 @hidma_mgmt_setup(ptr noundef nonnull %call.i263)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if.end142, label %do.end140

do.end140:                                        ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.58) #10
  br label %out

if.end142:                                        ; preds = %if.end134
  %45 = ptrtoint ptr %virtaddr19 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %virtaddr19, align 4
  %add.ptr = getelementptr i8, ptr %46, i32 1024
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  %48 = or i32 %47, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !164
  tail call void @arm_heavy_mb() #7
  %49 = ptrtoint ptr %virtaddr19 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %virtaddr19, align 4
  %add.ptr150 = getelementptr i8, ptr %50, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr150, i32 %48) #7, !srcloc !154
  %call151 = tail call i32 @hidma_mgmt_init_sys(ptr noundef nonnull %call.i263) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %do.end161, label %do.end156

do.end156:                                        ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.61) #10
  br label %out

do.end161:                                        ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %call.i263 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %call.i263, align 4
  %conv = zext i8 %52 to i32
  %hw_version_minor = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %call.i263, i32 0, i32 1
  %53 = ptrtoint ptr %hw_version_minor to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %hw_version_minor, align 1
  %conv163 = zext i8 %54 to i32
  %55 = ptrtoint ptr %dma_channels to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dma_channels, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.64, i32 noundef %conv, i32 noundef %conv163, ptr noundef %call6, i32 noundef %56) #10
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %57 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.i263, ptr %driver_data.i.i, align 4
  %call.i274 = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 22
  %58 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store volatile i64 %call.i274, ptr %last_busy.i, align 8
  %call.i275 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 13) #7
  br label %cleanup

out:                                              ; preds = %do.end156, %do.end140, %devm_kcalloc.exit273.out_crit_edge, %devm_kcalloc.exit273.thread, %devm_kcalloc.exit.out_crit_edge, %devm_kcalloc.exit.thread, %do.end105, %do.end83, %do.end61, %do.end41, %do.end32, %do.end, %if.end12.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %rc.0 = phi i32 [ %call.i264, %do.end ], [ %call.i265, %do.end32 ], [ %call.i266, %do.end41 ], [ %call.i267, %do.end61 ], [ %call.i268, %do.end83 ], [ %call.i269, %do.end105 ], [ %call135, %do.end140 ], [ %call151, %do.end156 ], [ -12, %entry.out_crit_edge ], [ %call10, %if.end.out_crit_edge ], [ -12, %if.end12.out_crit_edge ], [ -12, %devm_kcalloc.exit.out_crit_edge ], [ -12, %devm_kcalloc.exit273.out_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %devm_kcalloc.exit273.thread ]
  %call.i276 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 4) #7
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end161
  %retval.0 = phi i32 [ %rc.0, %out ], [ 0, %do.end161 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hidma_mgmt_init_sys(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { cold }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !52, !54, !55, !57, !59, !61, !63, !64, !65, !66, !67, !69, !71, !73, !75, !77, !79, !80, !81, !82, !84, !86, !87, !88, !90, !92, !93, !94, !96, !97, !98, !99, !101, !103, !104, !105, !107, !108, !109, !111, !113, !114, !115, !117, !118, !119, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140}
!llvm.module.flags = !{!141, !142, !143, !144, !145, !146, !147, !148}
!llvm.ident = !{!149}

!0 = !{ptr @__param_max_write_request, !1, !"__param_max_write_request", i1 false, i1 false}
!1 = !{!"../drivers/dma/qcom/hidma_mgmt.c", i32 46, i32 1}
!2 = !{ptr @__UNIQUE_ID_max_write_requesttype233, !1, !"__UNIQUE_ID_max_write_requesttype233", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_max_write_request234, !4, !"__UNIQUE_ID_max_write_request234", i1 false, i1 false}
!4 = !{!"../drivers/dma/qcom/hidma_mgmt.c", i32 47, i32 1}
!5 = !{ptr @__param_max_read_request, !6, !"__param_max_read_request", i1 false, i1 false}
!6 = !{!"../drivers/dma/qcom/hidma_mgmt.c", i32 51, i32 1}
!7 = !{ptr @__UNIQUE_ID_max_read_requesttype235, !6, !"__UNIQUE_ID_max_read_requesttype235", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_max_read_request236, !9, !"__UNIQUE_ID_max_read_request236", i1 false, i1 false}
!9 = !{!"../drivers/dma/qcom/hidma_mgmt.c", i32 52, i32 1}
!10 = !{ptr @__param_max_wr_xactions, !11, !"__param_max_wr_xactions", i1 false, i1 false}
!11 = !{!"../drivers/dma/qcom/hidma_mgmt.c", i32 56, i32 1}
!12 = !{ptr @__UNIQUE_ID_max_wr_xactionstype237, !11, !"__UNIQUE_ID_max_wr_xactionstype237", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_max_wr_xactions238, !14, !"__UNIQUE_ID_max_wr_xactions238", i1 false, i1 false}
!14 = !{!"../drivers/dma/qcom/hidma_mgmt.c", i32 57, i32 1}
!15 = !{ptr @__param_max_rd_xactions, !16, !"__param_max_rd_xactions", i1 false, i1 false}
!16 = !{!"../drivers/dma/qcom/hidma_mgmt.c", i32 61, i32 1}
!17 = !{ptr @__UNIQUE_ID_max_rd_xactionstype239, !16, !"__UNIQUE_ID_max_rd_xactionstype239", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_max_rd_xactions240, !19, !"__UNIQUE_ID_max_rd_xactions240", i1 false, i1 false}
!19 = !{!"../drivers/dma/qcom/hidma_mgmt.c", i32 62, i32 1}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/dma/qcom/hidma_mgmt.c", i32 73, i32 3}
!22 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @hidma_mgmt_setup._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @hidma_mgmt_setup._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/dma/qcom/hidma_mgmt.c", i32 81, i32 3}
!30 = !{ptr @hidma_mgmt_setup._entry.5, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @hidma_mgmt_setup._entry_ptr.7, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/dma/qcom/hidma_mgmt.c", i32 87, i32 3}
!34 = !{ptr @hidma_mgmt_setup._entry.8, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @hidma_mgmt_setup._entry_ptr.10, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/dma/qcom/hidma_mgmt.c", i32 94, i32 3}
!38 = !{ptr @hidma_mgmt_setup._entry.11, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @hidma_mgmt_setup._entry_ptr.13, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/dma/qcom/hidma_mgmt.c", i32 102, i32 4}
!42 = !{ptr @hidma_mgmt_setup._entry.14, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @hidma_mgmt_setup._entry_ptr.16, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/dma/qcom/hidma_mgmt.c", i32 108, i32 4}
!46 = !{ptr @hidma_mgmt_setup._entry.17, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @hidma_mgmt_setup._entry_ptr.19, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @__ksymtab_hidma_mgmt_setup, !49, !"__ksymtab_hidma_mgmt_setup", i1 false, i1 false}
!49 = !{!"../drivers/dma/qcom/hidma_mgmt.c", i32 160, i32 1}
!50 = !{ptr @__initcall__kmod_hdma_mgmt__241_439_hidma_mgmt_init6, !51, !"__initcall__kmod_hdma_mgmt__241_439_hidma_mgmt_init6", i1 false, i1 false}
!51 = !{!"../drivers/dma/qcom/hidma_mgmt.c", i32 439, i32 1}
!52 = !{ptr @__UNIQUE_ID_file242, !53, !"__UNIQUE_ID_file242", i1 false, i1 false}
!53 = !{!"../drivers/dma/qcom/hidma_mgmt.c", i32 440, i32 1}
!54 = !{ptr @__UNIQUE_ID_license243, !53, !"__UNIQUE_ID_license243", i1 false, i1 false}
!55 = !{ptr @max_write_request, !56, !"max_write_request", i1 false, i1 false}
!56 = !{!"../drivers/dma/qcom/hidma_mgmt.c", i32 45, i32 21}
!57 = !{ptr @max_read_request, !58, !"max_read_request", i1 false, i1 false}
!58 = !{!"../drivers/dma/qcom/hidma_mgmt.c", i32 50, i32 21}
!59 = !{ptr @max_wr_xactions, !60, !"max_wr_xactions", i1 false, i1 false}
!60 = !{!"../drivers/dma/qcom/hidma_mgmt.c", i32 55, i32 21}
!61 = !{ptr @max_rd_xactions, !62, !"max_rd_xactions", i1 false, i1 false}
!62 = !{!"../drivers/dma/qcom/hidma_mgmt.c", i32 60, i32 21}
!63 = !{ptr @__param_str_max_write_request, !1, !"__param_str_max_write_request", i1 false, i1 false}
!64 = !{ptr @__param_str_max_read_request, !6, !"__param_str_max_read_request", i1 false, i1 false}
!65 = !{ptr @__param_str_max_wr_xactions, !11, !"__param_str_max_wr_xactions", i1 false, i1 false}
!66 = !{ptr @__param_str_max_rd_xactions, !16, !"__param_str_max_rd_xactions", i1 false, i1 false}
!67 = !{ptr @hidma_mgmt_match, !68, !"hidma_mgmt_match", i1 false, i1 false}
!68 = !{!"../drivers/dma/qcom/hidma_mgmt.c", i32 329, i32 34}
!69 = !{ptr @object_counter, !70, !"object_counter", i1 false, i1 false}
!70 = !{!"../drivers/dma/qcom/hidma_mgmt.c", i32 345, i32 12}
!71 = !{ptr @.str.20, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/dma/qcom/hidma_mgmt.c", i32 338, i32 14}
!73 = !{ptr @hidma_mgmt_driver, !74, !"hidma_mgmt_driver", i1 false, i1 false}
!74 = !{!"../drivers/dma/qcom/hidma_mgmt.c", i32 335, i32 31}
!75 = !{ptr @.str.21, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/dma/qcom/hidma_mgmt.c", i32 200, i32 44}
!77 = !{ptr @.str.22, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/dma/qcom/hidma_mgmt.c", i32 203, i32 3}
!79 = !{ptr @.str.23, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @hidma_mgmt_probe._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @hidma_mgmt_probe._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.24, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/dma/qcom/hidma_mgmt.c", i32 208, i32 11}
!84 = !{ptr @.str.26, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/dma/qcom/hidma_mgmt.c", i32 211, i32 3}
!86 = !{ptr @hidma_mgmt_probe._entry.25, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @hidma_mgmt_probe._entry_ptr.27, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.28, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/dma/qcom/hidma_mgmt.c", i32 215, i32 44}
!90 = !{ptr @.str.30, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/dma/qcom/hidma_mgmt.c", i32 218, i32 3}
!92 = !{ptr @hidma_mgmt_probe._entry.29, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @hidma_mgmt_probe._entry_ptr.31, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.33, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/dma/qcom/hidma_mgmt.c", i32 224, i32 3}
!96 = !{ptr @.str.34, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @hidma_mgmt_probe._entry.32, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @hidma_mgmt_probe._entry_ptr.35, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.36, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/dma/qcom/hidma_mgmt.c", i32 230, i32 44}
!101 = !{ptr @.str.38, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/dma/qcom/hidma_mgmt.c", i32 233, i32 3}
!103 = !{ptr @hidma_mgmt_probe._entry.37, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @hidma_mgmt_probe._entry_ptr.39, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.41, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/dma/qcom/hidma_mgmt.c", i32 238, i32 3}
!107 = !{ptr @hidma_mgmt_probe._entry.40, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @hidma_mgmt_probe._entry_ptr.42, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.43, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/dma/qcom/hidma_mgmt.c", i32 244, i32 44}
!111 = !{ptr @.str.45, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/dma/qcom/hidma_mgmt.c", i32 247, i32 3}
!113 = !{ptr @hidma_mgmt_probe._entry.44, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @hidma_mgmt_probe._entry_ptr.46, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.48, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/dma/qcom/hidma_mgmt.c", i32 252, i32 3}
!117 = !{ptr @hidma_mgmt_probe._entry.47, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @hidma_mgmt_probe._entry_ptr.49, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.50, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/dma/qcom/hidma_mgmt.c", i32 258, i32 44}
!121 = !{ptr @.str.52, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/dma/qcom/hidma_mgmt.c", i32 261, i32 3}
!123 = !{ptr @hidma_mgmt_probe._entry.51, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @hidma_mgmt_probe._entry_ptr.53, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.55, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/dma/qcom/hidma_mgmt.c", i32 266, i32 3}
!127 = !{ptr @hidma_mgmt_probe._entry.54, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @hidma_mgmt_probe._entry_ptr.56, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.58, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/dma/qcom/hidma_mgmt.c", i32 291, i32 3}
!131 = !{ptr @hidma_mgmt_probe._entry.57, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @hidma_mgmt_probe._entry_ptr.59, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.61, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/dma/qcom/hidma_mgmt.c", i32 302, i32 3}
!135 = !{ptr @hidma_mgmt_probe._entry.60, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @hidma_mgmt_probe._entry_ptr.62, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.64, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/dma/qcom/hidma_mgmt.c", i32 306, i32 2}
!139 = !{ptr @hidma_mgmt_probe._entry.63, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @hidma_mgmt_probe._entry_ptr.65, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{i32 1, !"wchar_size", i32 2}
!142 = !{i32 1, !"min_enum_size", i32 4}
!143 = !{i32 8, !"branch-target-enforcement", i32 0}
!144 = !{i32 8, !"sign-return-address", i32 0}
!145 = !{i32 8, !"sign-return-address-all", i32 0}
!146 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!147 = !{i32 7, !"uwtable", i32 1}
!148 = !{i32 7, !"frame-pointer", i32 2}
!149 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!150 = !{i32 0, i32 33}
!151 = !{i64 6278254}
!152 = !{i64 2154774241}
!153 = !{i64 2154775841}
!154 = !{i64 6277836}
!155 = !{i64 2154776548}
!156 = !{i64 2154778130}
!157 = !{i64 2154778837}
!158 = !{i64 2154779401}
!159 = !{i64 2154780997}
!160 = !{i64 2154781714}
!161 = !{i64 2154783308}
!162 = !{!"branch_weights", i32 1, i32 2000}
!163 = !{i64 2154804534}
!164 = !{i64 2154804762}
