; ModuleID = '/llk/IR_all_yes/drivers/edac/qcom_edac.c_pt.bc'
source_filename = "../drivers/edac/qcom_edac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.llcc_edac_reg_data = type { ptr, i64, i64, i64, i32, i32, i32, i8, i8 }
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
%struct.llcc_drv_data = type { ptr, ptr, ptr, %struct.mutex, i32, i32, i32, ptr, ptr, i32, i32 }
%struct.edac_device_ctl_info = type { %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.completion, [32 x i8], i32, ptr, %struct.edac_device_counter, %struct.kobject }
%struct.edac_device_counter = type { i32, i32 }

@__initcall__kmod_qcom_edac__236_407_qcom_llcc_edac_driver_init6 = internal global ptr @qcom_llcc_edac_driver_init, section ".initcall6.init", align 4
@qcom_llcc_edac_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qcom_llcc_edac_probe, ptr @qcom_llcc_edac_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_qcom_llcc_edac_driver_exit = internal global ptr @qcom_llcc_edac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description237 = internal constant [39 x i8] c"qcom_edac.description=QCOM EDAC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file238 = internal constant [38 x i8] c"qcom_edac.file=drivers/edac/qcom_edac\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [25 x i8] c"qcom_edac.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qcom_llcc_edac\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qcom-llcc\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bank\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"llcc\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"llcc_ecc\00", [23 x i8] zeroinitializer }, align 32
@llcc_ecc_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\012EDAC qcom_llcc: Single Bit Error detected in Data RAM\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"llcc_ecc_irq_handler\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/edac/qcom_edac.c\00", [39 x i8] zeroinitializer }, align 32
@llcc_ecc_irq_handler._entry_ptr = internal global ptr @llcc_ecc_irq_handler._entry, section ".printk_index", align 4
@llcc_ecc_irq_handler._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.7, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\012EDAC qcom_llcc: Double Bit Error detected in Data RAM\0A\00", [39 x i8] zeroinitializer }, align 32
@llcc_ecc_irq_handler._entry_ptr.10 = internal global ptr @llcc_ecc_irq_handler._entry.8, section ".printk_index", align 4
@llcc_ecc_irq_handler._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.7, i32 321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\012EDAC qcom_llcc: Single Bit Error detected in Tag RAM\0A\00", [40 x i8] zeroinitializer }, align 32
@llcc_ecc_irq_handler._entry_ptr.13 = internal global ptr @llcc_ecc_irq_handler._entry.11, section ".printk_index", align 4
@llcc_ecc_irq_handler._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.6, ptr @.str.7, i32 325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\012EDAC qcom_llcc: Double Bit Error detected in Tag RAM\0A\00", [40 x i8] zeroinitializer }, align 32
@llcc_ecc_irq_handler._entry_ptr.16 = internal global ptr @llcc_ecc_irq_handler._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"LLCC Data RAM correctable Error\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"LLCC Data RAM uncorrectable Error\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"LLCC Tag RAM correctable Error\00", [33 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"LLCC Tag RAM uncorrectable Error\00", [63 x i8] zeroinitializer }, align 32
@dump_syn_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.7, i32 282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\012EDAC qcom_llcc: Unexpected error type: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dump_syn_reg\00", [19 x i8] zeroinitializer }, align 32
@dump_syn_reg._entry_ptr = internal global ptr @dump_syn_reg._entry, section ".printk_index", align 4
@edac_reg_data = internal constant { [4 x %struct.llcc_edac_reg_data], [32 x i8] } { [4 x %struct.llcc_edac_reg_data] [%struct.llcc_edac_reg_data { ptr @.str.31, i64 270412, i64 270408, i64 270404, i32 8, i32 16711680, i32 65535, i8 16, i8 0 }, %struct.llcc_edac_reg_data { ptr @.str.32, i64 270448, i64 270408, i64 270404, i32 8, i32 31, i32 -65536, i8 0, i8 16 }, %struct.llcc_edac_reg_data { ptr @.str.33, i64 143436, i64 131912, i64 131908, i32 6, i32 16711680, i32 65535, i8 16, i8 0 }, %struct.llcc_edac_reg_data { ptr @.str.34, i64 131952, i64 131912, i64 131908, i32 6, i32 31, i32 -65536, i8 0, i8 16 }], [32 x i8] zeroinitializer }, align 32
@dump_syn_reg_values._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.7, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\012EDAC qcom_llcc: %s: ECC_SYN%d: 0x%8x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dump_syn_reg_values\00", [44 x i8] zeroinitializer }, align 32
@dump_syn_reg_values._entry_ptr = internal global ptr @dump_syn_reg_values._entry, section ".printk_index", align 4
@dump_syn_reg_values._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.7, i32 234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\012EDAC qcom_llcc: %s: Error count: 0x%4x\0A\00", [54 x i8] zeroinitializer }, align 32
@dump_syn_reg_values._entry_ptr.27 = internal global ptr @dump_syn_reg_values._entry.25, section ".printk_index", align 4
@dump_syn_reg_values._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.7, i32 246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\012EDAC qcom_llcc: %s: Error ways: 0x%4x\0A\00", [55 x i8] zeroinitializer }, align 32
@dump_syn_reg_values._entry_ptr.30 = internal global ptr @dump_syn_reg_values._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DRAM Single-bit\00", [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DRAM Double-bit\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TRAM Single-bit\00", [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TRAM Double-bit\00", [16 x i8] zeroinitializer }, align 32
@qcom_llcc_clear_error_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.35, ptr @.str.7, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qcom_llcc_clear_error_status\00", [35 x i8] zeroinitializer }, align 32
@qcom_llcc_clear_error_status._entry_ptr = internal global ptr @qcom_llcc_clear_error_status._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.36 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.37 = private unnamed_addr constant [22 x i8] c"qcom_llcc_edac_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 400, i32 31 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 404, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 348, i32 43 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 348, i32 59 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 359, i32 23 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 376, i32 29 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 304, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 308, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 320, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 324, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 265, i32 11 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 269, i32 11 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 273, i32 11 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 277, i32 11 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 281, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [14 x i8] c"edac_reg_data\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 86, i32 40 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 221, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 233, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 245, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 88, i32 11 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 98, i32 11 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 108, i32 11 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 118, i32 11 }
@___asan_gen_.142 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.146 = private constant [28 x i8] c"../drivers/edac/qcom_edac.c\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 200, i32 3 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__exitcall_qcom_llcc_edac_driver_exit, ptr @__initcall__kmod_qcom_edac__236_407_qcom_llcc_edac_driver_init6, ptr @dump_syn_reg._entry, ptr @dump_syn_reg._entry_ptr, ptr @dump_syn_reg_values._entry, ptr @dump_syn_reg_values._entry.25, ptr @dump_syn_reg_values._entry.28, ptr @dump_syn_reg_values._entry_ptr, ptr @dump_syn_reg_values._entry_ptr.27, ptr @dump_syn_reg_values._entry_ptr.30, ptr @llcc_ecc_irq_handler._entry, ptr @llcc_ecc_irq_handler._entry.11, ptr @llcc_ecc_irq_handler._entry.14, ptr @llcc_ecc_irq_handler._entry.8, ptr @llcc_ecc_irq_handler._entry_ptr, ptr @llcc_ecc_irq_handler._entry_ptr.10, ptr @llcc_ecc_irq_handler._entry_ptr.13, ptr @llcc_ecc_irq_handler._entry_ptr.16, ptr @qcom_llcc_clear_error_status._entry, ptr @qcom_llcc_clear_error_status._entry_ptr, ptr @qcom_llcc_edac_driver_exit, ptr @qcom_llcc_edac_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @edac_reg_data, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_llcc_edac_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llcc_ecc_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llcc_ecc_irq_handler._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llcc_ecc_irq_handler._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llcc_ecc_irq_handler._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_syn_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_reg_data to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_syn_reg_values._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_syn_reg_values._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_syn_reg_values._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_llcc_clear_error_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_llcc_edac_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @qcom_llcc_edac_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qcom_llcc_edac_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @qcom_llcc_edac_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_llcc_edac_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %bcast_regmap = getelementptr inbounds %struct.llcc_drv_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bcast_regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bcast_regmap, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 196668, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call.i27.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 132232, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27.i)
  %tobool2.not.i = icmp eq i32 %call.i27.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 262144, i32 noundef 16777216) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.cleanup_crit_edge

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8.i:                                        ; preds = %if.end4.i
  %call.i28.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 196668, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28.i)
  %tobool10.not.i = icmp eq i32 %call.i28.i, 0
  br i1 %tobool10.not.i, label %qcom_llcc_core_setup.exit, label %if.end8.i.cleanup_crit_edge

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

qcom_llcc_core_setup.exit:                        ; preds = %if.end8.i
  %call13.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 266252, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool.not = icmp eq i32 %call13.i, 0
  br i1 %tobool.not, label %if.end, label %qcom_llcc_core_setup.exit.cleanup_crit_edge

qcom_llcc_core_setup.exit.cleanup_crit_edge:      ; preds = %qcom_llcc_core_setup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %qcom_llcc_core_setup.exit
  %num_banks = getelementptr inbounds %struct.llcc_drv_data, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %num_banks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_banks, align 4
  %call3 = tail call i32 @edac_device_alloc_index() #5
  %call4 = tail call ptr @edac_device_alloc_ctl_info(i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %5, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef %call3) #5
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %dev8 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call4, i32 0, i32 13
  %6 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %dev8, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i53 = icmp eq ptr %8, null
  br i1 %tobool.not.i53, label %if.end.i54, label %if.end7.dev_name.exit_crit_edge

if.end7.dev_name.exit_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i54:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i54, %if.end7.dev_name.exit_crit_edge
  %retval.0.i55 = phi ptr [ %10, %if.end.i54 ], [ %8, %if.end7.dev_name.exit_crit_edge ]
  %mod_name = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call4, i32 0, i32 14
  %11 = ptrtoint ptr %mod_name to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %retval.0.i55, ptr %mod_name, align 4
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i57 = icmp eq ptr %13, null
  br i1 %tobool.not.i57, label %if.end.i58, label %dev_name.exit.dev_name.exit60_crit_edge

dev_name.exit.dev_name.exit60_crit_edge:          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit60

if.end.i58:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  br label %dev_name.exit60

dev_name.exit60:                                  ; preds = %if.end.i58, %dev_name.exit.dev_name.exit60_crit_edge
  %retval.0.i59 = phi ptr [ %15, %if.end.i58 ], [ %13, %dev_name.exit.dev_name.exit60_crit_edge ]
  %dev_name = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call4, i32 0, i32 16
  %16 = ptrtoint ptr %dev_name to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %retval.0.i59, ptr %dev_name, align 4
  %ctl_name = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call4, i32 0, i32 15
  %17 = ptrtoint ptr %ctl_name to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.3, ptr %ctl_name, align 4
  %panic_on_ue = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call4, i32 0, i32 5
  %18 = ptrtoint ptr %panic_on_ue to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %panic_on_ue, align 4
  %pvt_info = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call4, i32 0, i32 17
  %19 = ptrtoint ptr %pvt_info to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %1, ptr %pvt_info, align 4
  %call11 = tail call i32 @edac_device_add_device(ptr noundef nonnull %call4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %dev_name.exit60.out_mem_crit_edge

dev_name.exit60.out_mem_crit_edge:                ; preds = %dev_name.exit60
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_mem

if.end14:                                         ; preds = %dev_name.exit60
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call4, ptr %driver_data.i.i, align 4
  %ecc_irq15 = getelementptr inbounds %struct.llcc_drv_data, ptr %1, i32 0, i32 9
  %21 = ptrtoint ptr %ecc_irq15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ecc_irq15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp = icmp slt i32 %22, 0
  br i1 %cmp, label %if.end14.out_dev_crit_edge, label %if.end17

if.end14.out_dev_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_dev

if.end17:                                         ; preds = %if.end14
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %22, ptr noundef nonnull @llcc_ecc_irq_handler, ptr noundef null, i32 noundef 4, ptr noundef nonnull @.str.4, ptr noundef nonnull %call4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool19.not = icmp eq i32 %call.i, 0
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %if.end17.out_dev_crit_edge

if.end17.out_dev_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_dev

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

out_dev:                                          ; preds = %if.end17.out_dev_crit_edge, %if.end14.out_dev_crit_edge
  %rc.0 = phi i32 [ %call.i, %if.end17.out_dev_crit_edge ], [ -19, %if.end14.out_dev_crit_edge ]
  %23 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev8, align 4
  %call23 = tail call ptr @edac_device_del_device(ptr noundef %24) #5
  br label %out_mem

out_mem:                                          ; preds = %out_dev, %dev_name.exit60.out_mem_crit_edge
  %rc.1 = phi i32 [ %call11, %dev_name.exit60.out_mem_crit_edge ], [ %rc.0, %out_dev ]
  tail call void @edac_device_free_ctl_info(ptr noundef nonnull %call4) #5
  br label %cleanup

cleanup:                                          ; preds = %out_mem, %if.end17.cleanup_crit_edge, %if.end.cleanup_crit_edge, %qcom_llcc_core_setup.exit.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.1, %out_mem ], [ %call13.i, %qcom_llcc_core_setup.exit.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ], [ %call.i28.i, %if.end8.i.cleanup_crit_edge ], [ %call5.i, %if.end4.i.cleanup_crit_edge ], [ %call.i27.i, %if.end.i.cleanup_crit_edge ], [ %call.i.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_llcc_edac_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev1 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %call2 = tail call ptr @edac_device_del_device(ptr noundef %3) #5
  tail call void @edac_device_free_ctl_info(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_device_alloc_ctl_info(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @edac_device_alloc_index() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @edac_device_add_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @llcc_ecc_irq_handler(i32 noundef %irq, ptr noundef %edev_ctl) #2 align 64 {
entry:
  %drp_error = alloca i32, align 4
  %trp_error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pvt_info = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edev_ctl, i32 0, i32 17
  %0 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pvt_info, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %drp_error) #5
  %2 = ptrtoint ptr %drp_error to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %drp_error, align 4, !annotation !87
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trp_error) #5
  %3 = ptrtoint ptr %trp_error to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %trp_error, align 4, !annotation !87
  %num_banks = getelementptr inbounds %struct.llcc_drv_data, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %num_banks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_banks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp83.not = icmp eq i32 %5, 0
  br i1 %cmp83.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %offsets = getelementptr inbounds %struct.llcc_drv_data, ptr %1, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %if.end48.thread80.for.body_crit_edge, %for.body.lr.ph
  %irq_rc.091 = phi i32 [ 0, %for.body.lr.ph ], [ %23, %if.end48.thread80.for.body_crit_edge ]
  %i.084 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end48.thread80.for.body_crit_edge ]
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %8 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %offsets, align 4
  %arrayidx = getelementptr i32, ptr %9, i32 %i.084
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %add = add i32 %11, 266240
  %call = call i32 @regmap_read(ptr noundef %7, i32 noundef %add, ptr noundef nonnull %drp_error) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.body.if.end15.thread75_crit_edge

for.body.if.end15.thread75_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.thread75

land.lhs.true:                                    ; preds = %for.body
  %12 = ptrtoint ptr %drp_error to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %drp_error, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true5.critedge, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

land.lhs.true5.critedge:                          ; preds = %land.lhs.true
  %and6 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %land.lhs.true5.critedge.if.end15.thread_crit_edge, label %land.lhs.true5.critedge.if.end15_crit_edge

land.lhs.true5.critedge.if.end15_crit_edge:       ; preds = %land.lhs.true5.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

land.lhs.true5.critedge.if.end15.thread_crit_edge: ; preds = %land.lhs.true5.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.thread

if.end15:                                         ; preds = %land.lhs.true5.critedge.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge
  %.str.9.sink = phi ptr [ @.str.5, %land.lhs.true.if.end15_crit_edge ], [ @.str.9, %land.lhs.true5.critedge.if.end15_crit_edge ]
  %.sink = phi i32 [ 0, %land.lhs.true.if.end15_crit_edge ], [ 1, %land.lhs.true5.critedge.if.end15_crit_edge ]
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.9.sink) #8
  %call14 = call fastcc i32 @dump_syn_reg(ptr noundef %edev_ctl, i32 noundef %.sink, i32 noundef %i.084)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool16.not = icmp eq i32 %call14, 0
  br i1 %tobool16.not, label %if.end15.if.end15.thread_crit_edge, label %if.end15.if.end15.thread75_crit_edge

if.end15.if.end15.thread75_crit_edge:             ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.thread75

if.end15.if.end15.thread_crit_edge:               ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.thread

if.end15.thread:                                  ; preds = %if.end15.if.end15.thread_crit_edge, %land.lhs.true5.critedge.if.end15.thread_crit_edge
  br label %if.end15.thread75

if.end15.thread75:                                ; preds = %if.end15.thread, %if.end15.if.end15.thread75_crit_edge, %for.body.if.end15.thread75_crit_edge
  %14 = phi i32 [ 1, %if.end15.thread ], [ %irq_rc.091, %if.end15.if.end15.thread75_crit_edge ], [ %irq_rc.091, %for.body.if.end15.thread75_crit_edge ]
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %17 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %offsets, align 4
  %arrayidx21 = getelementptr i32, ptr %18, i32 %i.084
  %19 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx21, align 4
  %add22 = add i32 %20, 132224
  %call23 = call i32 @regmap_read(ptr noundef %16, i32 noundef %add22, ptr noundef nonnull %trp_error) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.lhs.true25, label %if.end15.thread75.if.end48.thread80_crit_edge

if.end15.thread75.if.end48.thread80_crit_edge:    ; preds = %if.end15.thread75
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48.thread80

land.lhs.true25:                                  ; preds = %if.end15.thread75
  %21 = ptrtoint ptr %trp_error to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %trp_error, align 4
  %and26 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %land.lhs.true37.critedge, label %land.lhs.true25.if.end48_crit_edge

land.lhs.true25.if.end48_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

land.lhs.true37.critedge:                         ; preds = %land.lhs.true25
  %and38 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %land.lhs.true37.critedge.if.end48.thread_crit_edge, label %land.lhs.true37.critedge.if.end48_crit_edge

land.lhs.true37.critedge.if.end48_crit_edge:      ; preds = %land.lhs.true37.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

land.lhs.true37.critedge.if.end48.thread_crit_edge: ; preds = %land.lhs.true37.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48.thread

if.end48:                                         ; preds = %land.lhs.true37.critedge.if.end48_crit_edge, %land.lhs.true25.if.end48_crit_edge
  %.str.15.sink = phi ptr [ @.str.12, %land.lhs.true25.if.end48_crit_edge ], [ @.str.15, %land.lhs.true37.critedge.if.end48_crit_edge ]
  %.sink92 = phi i32 [ 2, %land.lhs.true25.if.end48_crit_edge ], [ 3, %land.lhs.true37.critedge.if.end48_crit_edge ]
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.15.sink) #8
  %call46 = call fastcc i32 @dump_syn_reg(ptr noundef %edev_ctl, i32 noundef %.sink92, i32 noundef %i.084)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool49.not = icmp eq i32 %call46, 0
  br i1 %tobool49.not, label %if.end48.if.end48.thread_crit_edge, label %if.end48.if.end48.thread80_crit_edge

if.end48.if.end48.thread80_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48.thread80

if.end48.if.end48.thread_crit_edge:               ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48.thread

if.end48.thread:                                  ; preds = %if.end48.if.end48.thread_crit_edge, %land.lhs.true37.critedge.if.end48.thread_crit_edge
  br label %if.end48.thread80

if.end48.thread80:                                ; preds = %if.end48.thread, %if.end48.if.end48.thread80_crit_edge, %if.end15.thread75.if.end48.thread80_crit_edge
  %23 = phi i32 [ 1, %if.end48.thread ], [ %14, %if.end48.if.end48.thread80_crit_edge ], [ %14, %if.end15.thread75.if.end48.thread80_crit_edge ]
  %inc = add nuw i32 %i.084, 1
  %24 = ptrtoint ptr %num_banks to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_banks, align 4
  %cmp = icmp ult i32 %inc, %25
  br i1 %cmp, label %if.end48.thread80.for.body_crit_edge, label %if.end48.thread80.for.end_crit_edge

if.end48.thread80.for.end_crit_edge:              ; preds = %if.end48.thread80
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end48.thread80.for.body_crit_edge:             ; preds = %if.end48.thread80
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end48.thread80.for.end_crit_edge, %entry.for.end_crit_edge
  %irq_rc.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %23, %if.end48.thread80.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trp_error) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %drp_error) #5
  ret i32 %irq_rc.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_device_del_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_device_free_ctl_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dump_syn_reg(ptr noundef %edev_ctl, i32 noundef %err_type, i32 noundef %bank) unnamed_addr #2 align 64 {
entry:
  %err_cnt.i = alloca i32, align 4
  %err_ways.i = alloca i32, align 4
  %synd_val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pvt_info = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edev_ctl, i32 0, i32 17
  %0 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pvt_info, align 4
  %arrayidx.i = getelementptr [4 x %struct.llcc_edac_reg_data], ptr @edac_reg_data, i32 0, i32 %err_type
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %reg_data.sroa.0.0.copyload.i = load ptr, ptr %arrayidx.i, align 8
  %reg_data.sroa.750.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 8
  %3 = ptrtoint ptr %reg_data.sroa.750.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %reg_data.sroa.750.0.copyload.i = load i64, ptr %reg_data.sroa.750.0.arrayidx.sroa_idx.i, align 8
  %reg_data.sroa.8.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 16
  %4 = ptrtoint ptr %reg_data.sroa.8.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %reg_data.sroa.8.0.copyload.i = load i64, ptr %reg_data.sroa.8.0.arrayidx.sroa_idx.i, align 8
  %reg_data.sroa.9.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 24
  %5 = ptrtoint ptr %reg_data.sroa.9.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %reg_data.sroa.9.0.copyload.i = load i64, ptr %reg_data.sroa.9.0.arrayidx.sroa_idx.i, align 8
  %reg_data.sroa.10.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 32
  %6 = ptrtoint ptr %reg_data.sroa.10.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %reg_data.sroa.10.0.copyload.i = load i32, ptr %reg_data.sroa.10.0.arrayidx.sroa_idx.i, align 8
  %reg_data.sroa.11.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 36
  %7 = ptrtoint ptr %reg_data.sroa.11.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %reg_data.sroa.11.0.copyload.i = load i32, ptr %reg_data.sroa.11.0.arrayidx.sroa_idx.i, align 4
  %reg_data.sroa.12.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 40
  %8 = ptrtoint ptr %reg_data.sroa.12.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %reg_data.sroa.12.0.copyload.i = load i32, ptr %reg_data.sroa.12.0.arrayidx.sroa_idx.i, align 8
  %reg_data.sroa.13.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 44
  %9 = ptrtoint ptr %reg_data.sroa.13.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %reg_data.sroa.13.0.copyload.i = load i8, ptr %reg_data.sroa.13.0.arrayidx.sroa_idx.i, align 4
  %reg_data.sroa.14.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 45
  %10 = ptrtoint ptr %reg_data.sroa.14.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %reg_data.sroa.14.0.copyload.i = load i8, ptr %reg_data.sroa.14.0.arrayidx.sroa_idx.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err_cnt.i) #5
  %11 = ptrtoint ptr %err_cnt.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %err_cnt.i, align 4, !annotation !87
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err_ways.i) #5
  %12 = ptrtoint ptr %err_ways.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %err_ways.i, align 4, !annotation !87
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %synd_val.i) #5
  %13 = ptrtoint ptr %synd_val.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %synd_val.i, align 4, !annotation !87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reg_data.sroa.10.0.copyload.i)
  %cmp61.not.i = icmp eq i32 %reg_data.sroa.10.0.copyload.i, 0
  br i1 %cmp61.not.i, label %entry.for.end.i_crit_edge, label %for.body.lr.ph.i

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %entry
  %14 = trunc i64 %reg_data.sroa.750.0.copyload.i to i32
  %offsets.i = getelementptr inbounds %struct.llcc_drv_data, ptr %1, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %do.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.062.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %do.end.i.for.body.i_crit_edge ]
  %mul.i = shl i32 %i.062.i, 2
  %conv2.i = add i32 %mul.i, %14
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %17 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %offsets.i, align 4
  %arrayidx3.i = getelementptr i32, ptr %18, i32 %bank
  %19 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx3.i, align 4
  %add4.i = add i32 %conv2.i, %20
  %call.i = call i32 @regmap_read(ptr noundef %16, i32 noundef %add4.i, ptr noundef nonnull %synd_val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %for.body.i.clear.i_crit_edge

for.body.i.clear.i_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %clear.i

do.end.i:                                         ; preds = %for.body.i
  %21 = ptrtoint ptr %synd_val.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %synd_val.i, align 4
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %reg_data.sroa.0.0.copyload.i, i32 noundef %i.062.i, i32 noundef %22) #8
  %inc.i = add nuw i32 %i.062.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %reg_data.sroa.10.0.copyload.i
  br i1 %exitcond.not.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.i:                                        ; preds = %do.end.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %offsets7.i = getelementptr inbounds %struct.llcc_drv_data, ptr %1, i32 0, i32 8
  %25 = ptrtoint ptr %offsets7.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %offsets7.i, align 4
  %arrayidx8.i = getelementptr i32, ptr %26, i32 %bank
  %27 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx8.i, align 4
  %29 = trunc i64 %reg_data.sroa.8.0.copyload.i to i32
  %conv11.i = add i32 %28, %29
  %call12.i = call i32 @regmap_read(ptr noundef %24, i32 noundef %conv11.i, ptr noundef nonnull %err_cnt.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %for.end.i.clear.i_crit_edge

for.end.i.clear.i_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %clear.i

if.end15.i:                                       ; preds = %for.end.i
  %30 = ptrtoint ptr %err_cnt.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %err_cnt.i, align 4
  %and.i = and i32 %31, %reg_data.sroa.11.0.copyload.i
  %conv16.i = zext i8 %reg_data.sroa.13.0.copyload.i to i32
  %shr.i = ashr i32 %and.i, %conv16.i
  store i32 %shr.i, ptr %err_cnt.i, align 4
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %reg_data.sroa.0.0.copyload.i, i32 noundef %shr.i) #8
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %34 = ptrtoint ptr %offsets7.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %offsets7.i, align 4
  %arrayidx25.i = getelementptr i32, ptr %35, i32 %bank
  %36 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx25.i, align 4
  %38 = trunc i64 %reg_data.sroa.9.0.copyload.i to i32
  %conv28.i = add i32 %37, %38
  %call29.i = call i32 @regmap_read(ptr noundef %33, i32 noundef %conv28.i, ptr noundef nonnull %err_ways.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end32.i, label %if.end15.i.clear.i_crit_edge

if.end15.i.clear.i_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %clear.i

if.end32.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %err_ways.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %err_ways.i, align 4
  %and33.i = and i32 %40, %reg_data.sroa.12.0.copyload.i
  %conv34.i = zext i8 %reg_data.sroa.14.0.copyload.i to i32
  %shr35.i = ashr i32 %and33.i, %conv34.i
  store i32 %shr35.i, ptr %err_ways.i, align 4
  %call41.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %reg_data.sroa.0.0.copyload.i, i32 noundef %shr35.i) #8
  br label %clear.i

clear.i:                                          ; preds = %if.end32.i, %if.end15.i.clear.i_crit_edge, %for.end.i.clear.i_crit_edge, %for.body.i.clear.i_crit_edge
  %41 = zext i32 %err_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values)
  switch i32 %err_type, label %dump_syn_reg_values.exit [
    i32 0, label %clear.i.sw.bb.i.i_crit_edge
    i32 1, label %clear.i.sw.bb.i.i_crit_edge24
    i32 2, label %clear.i.sw.bb6.i.i_crit_edge
    i32 3, label %clear.i.sw.bb6.i.i_crit_edge25
  ]

clear.i.sw.bb6.i.i_crit_edge25:                   ; preds = %clear.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb6.i.i

clear.i.sw.bb6.i.i_crit_edge:                     ; preds = %clear.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb6.i.i

clear.i.sw.bb.i.i_crit_edge24:                    ; preds = %clear.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i.i

clear.i.sw.bb.i.i_crit_edge:                      ; preds = %clear.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i.i

sw.bb.i.i:                                        ; preds = %clear.i.sw.bb.i.i_crit_edge, %clear.i.sw.bb.i.i_crit_edge24
  %bcast_regmap.i.i = getelementptr inbounds %struct.llcc_drv_data, ptr %1, i32 0, i32 1
  %42 = ptrtoint ptr %bcast_regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bcast_regmap.i.i, align 4
  %call.i.i = call i32 @regmap_write(ptr noundef %43, i32 noundef 266248, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %sw.bb.i.i.dump_syn_reg_values.exit.thread_crit_edge

sw.bb.i.i.dump_syn_reg_values.exit.thread_crit_edge: ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dump_syn_reg_values.exit.thread

if.end.i.i:                                       ; preds = %sw.bb.i.i
  %44 = ptrtoint ptr %bcast_regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bcast_regmap.i.i, align 4
  %call2.i.i = call i32 @regmap_write(ptr noundef %45, i32 noundef 262148, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.end_crit_edge, label %if.end.i.i.dump_syn_reg_values.exit.thread_crit_edge

if.end.i.i.dump_syn_reg_values.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dump_syn_reg_values.exit.thread

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

sw.bb6.i.i:                                       ; preds = %clear.i.sw.bb6.i.i_crit_edge, %clear.i.sw.bb6.i.i_crit_edge25
  %bcast_regmap7.i.i = getelementptr inbounds %struct.llcc_drv_data, ptr %1, i32 0, i32 1
  %46 = ptrtoint ptr %bcast_regmap7.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bcast_regmap7.i.i, align 4
  %call8.i.i = call i32 @regmap_write(ptr noundef %47, i32 noundef 132228, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end11.i.i, label %sw.bb6.i.i.dump_syn_reg_values.exit.thread_crit_edge

sw.bb6.i.i.dump_syn_reg_values.exit.thread_crit_edge: ; preds = %sw.bb6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dump_syn_reg_values.exit.thread

if.end11.i.i:                                     ; preds = %sw.bb6.i.i
  %48 = ptrtoint ptr %bcast_regmap7.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bcast_regmap7.i.i, align 4
  %call13.i.i = call i32 @regmap_write(ptr noundef %49, i32 noundef 132160, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool14.not.i.i = icmp eq i32 %call13.i.i, 0
  br i1 %tobool14.not.i.i, label %if.end11.i.i.if.end_crit_edge, label %if.end11.i.i.dump_syn_reg_values.exit.thread_crit_edge

if.end11.i.i.dump_syn_reg_values.exit.thread_crit_edge: ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dump_syn_reg_values.exit.thread

if.end11.i.i.if.end_crit_edge:                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

dump_syn_reg_values.exit.thread:                  ; preds = %if.end11.i.i.dump_syn_reg_values.exit.thread_crit_edge, %sw.bb6.i.i.dump_syn_reg_values.exit.thread_crit_edge, %if.end.i.i.dump_syn_reg_values.exit.thread_crit_edge, %sw.bb.i.i.dump_syn_reg_values.exit.thread_crit_edge
  %retval.0.i.i.ph = phi i32 [ %call13.i.i, %if.end11.i.i.dump_syn_reg_values.exit.thread_crit_edge ], [ %call8.i.i, %sw.bb6.i.i.dump_syn_reg_values.exit.thread_crit_edge ], [ %call2.i.i, %if.end.i.i.dump_syn_reg_values.exit.thread_crit_edge ], [ %call.i.i, %sw.bb.i.i.dump_syn_reg_values.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %synd_val.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err_ways.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err_cnt.i) #5
  br label %cleanup

dump_syn_reg_values.exit:                         ; preds = %clear.i
  call void @__sanitizer_cov_trace_pc() #7
  %call17.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %err_type) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %synd_val.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err_ways.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err_cnt.i) #5
  br label %cleanup

if.end:                                           ; preds = %if.end11.i.i.if.end_crit_edge, %if.end.i.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %synd_val.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err_ways.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err_cnt.i) #5
  %50 = zext i32 %err_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %err_type, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @edac_device_handle_ce_count(ptr noundef %edev_ctl, i32 noundef 1, i32 noundef 0, i32 noundef %bank, ptr noundef nonnull @.str.17) #5
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @edac_device_handle_ue_count(ptr noundef %edev_ctl, i32 noundef 1, i32 noundef 0, i32 noundef %bank, ptr noundef nonnull @.str.18) #5
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @edac_device_handle_ce_count(ptr noundef %edev_ctl, i32 noundef 1, i32 noundef 0, i32 noundef %bank, ptr noundef nonnull @.str.19) #5
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @edac_device_handle_ue_count(ptr noundef %edev_ctl, i32 noundef 1, i32 noundef 0, i32 noundef %bank, ptr noundef nonnull @.str.20) #5
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %err_type) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb, %dump_syn_reg_values.exit, %dump_syn_reg_values.exit.thread
  %retval.0 = phi i32 [ -22, %dump_syn_reg_values.exit ], [ -22, %sw.default ], [ 0, %sw.bb3 ], [ 0, %sw.bb2 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ], [ %retval.0.i.i.ph, %dump_syn_reg_values.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_device_handle_ce_count(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_device_handle_ue_count(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !42, !44, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !68, !70, !72, !74, !76, !77}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @__initcall__kmod_qcom_edac__236_407_qcom_llcc_edac_driver_init6, !1, !"__initcall__kmod_qcom_edac__236_407_qcom_llcc_edac_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/edac/qcom_edac.c", i32 407, i32 1}
!2 = !{ptr @__exitcall_qcom_llcc_edac_driver_exit, !1, !"__exitcall_qcom_llcc_edac_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description237, !4, !"__UNIQUE_ID_description237", i1 false, i1 false}
!4 = !{!"../drivers/edac/qcom_edac.c", i32 409, i32 1}
!5 = !{ptr @__UNIQUE_ID_file238, !6, !"__UNIQUE_ID_file238", i1 false, i1 false}
!6 = !{!"../drivers/edac/qcom_edac.c", i32 410, i32 1}
!7 = !{ptr @__UNIQUE_ID_license239, !6, !"__UNIQUE_ID_license239", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/edac/qcom_edac.c", i32 404, i32 11}
!10 = !{ptr @qcom_llcc_edac_driver, !11, !"qcom_llcc_edac_driver", i1 false, i1 false}
!11 = !{!"../drivers/edac/qcom_edac.c", i32 400, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/edac/qcom_edac.c", i32 348, i32 43}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/edac/qcom_edac.c", i32 348, i32 59}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/edac/qcom_edac.c", i32 359, i32 23}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/edac/qcom_edac.c", i32 376, i32 29}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/edac/qcom_edac.c", i32 304, i32 4}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @llcc_ecc_irq_handler._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @llcc_ecc_irq_handler._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/edac/qcom_edac.c", i32 308, i32 4}
!28 = !{ptr @llcc_ecc_irq_handler._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @llcc_ecc_irq_handler._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/edac/qcom_edac.c", i32 320, i32 4}
!32 = !{ptr @llcc_ecc_irq_handler._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @llcc_ecc_irq_handler._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/edac/qcom_edac.c", i32 324, i32 4}
!36 = !{ptr @llcc_ecc_irq_handler._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @llcc_ecc_irq_handler._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/edac/qcom_edac.c", i32 265, i32 11}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/edac/qcom_edac.c", i32 269, i32 11}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/edac/qcom_edac.c", i32 273, i32 11}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/edac/qcom_edac.c", i32 277, i32 11}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/edac/qcom_edac.c", i32 281, i32 3}
!48 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @dump_syn_reg._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @dump_syn_reg._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/edac/qcom_edac.c", i32 221, i32 3}
!53 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @dump_syn_reg_values._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @dump_syn_reg_values._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/edac/qcom_edac.c", i32 233, i32 2}
!58 = !{ptr @dump_syn_reg_values._entry.25, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @dump_syn_reg_values._entry_ptr.27, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/edac/qcom_edac.c", i32 245, i32 2}
!62 = !{ptr @dump_syn_reg_values._entry.28, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @dump_syn_reg_values._entry_ptr.30, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/edac/qcom_edac.c", i32 88, i32 11}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/edac/qcom_edac.c", i32 98, i32 11}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/edac/qcom_edac.c", i32 108, i32 11}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/edac/qcom_edac.c", i32 118, i32 11}
!72 = !{ptr @edac_reg_data, !73, !"edac_reg_data", i1 false, i1 false}
!73 = !{!"../drivers/edac/qcom_edac.c", i32 86, i32 40}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/edac/qcom_edac.c", i32 200, i32 3}
!76 = !{ptr @qcom_llcc_clear_error_status._entry, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @qcom_llcc_clear_error_status._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{!"auto-init"}
