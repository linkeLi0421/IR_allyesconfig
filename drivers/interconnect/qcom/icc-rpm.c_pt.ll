; ModuleID = '/llk/IR_all_yes/drivers/interconnect/qcom/icc-rpm.c_pt.bc'
source_filename = "../drivers/interconnect/qcom/icc-rpm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+qnoc_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_qnoc_probe\09\09\09\09"
module asm "\09.long\09__crc_qnoc_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qnoc_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22qnoc_probe\22\09\09\09\09\09"
module asm "__kstrtabns_qnoc_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+qnoc_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_qnoc_remove\09\09\09\09"
module asm "\09.long\09__crc_qnoc_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qnoc_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22qnoc_remove\22\09\09\09\09\09"
module asm "__kstrtabns_qnoc_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.qcom_icc_desc = type { ptr, i32, ptr, i32, i8, i32, ptr, i32 }
%struct.qcom_icc_provider = type { %struct.icc_provider, i32, i32, ptr, i32, [0 x %struct.clk_bulk_data] }
%struct.icc_provider = type { %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.qcom_icc_node = type { ptr, i16, ptr, i16, i16, i32, i32, %struct.qcom_icc_qos, i64 }
%struct.qcom_icc_qos = type { i32, i32, i8, i8, i32, i32, i8 }
%struct.icc_node = type { i32, ptr, ptr, i32, ptr, %struct.list_head, %struct.list_head, ptr, i8, %struct.hlist_head, i32, i32, i32, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.icc_onecell_data = type { i32, [0 x ptr] }

@bus_clocks = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.12, ptr @.str.13], [24 x i8] zeroinitializer }, align 32
@qnoc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 363, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Cannot ioremap interconnect bus resource\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qnoc_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/interconnect/qcom/icc-rpm.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qnoc_probe._entry_ptr = internal global ptr @qnoc_probe._entry, section ".printk_index", align 4
@qnoc_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"icc_rpm:367:(desc->regmap_cfg)->lock\00", [59 x i8] zeroinitializer }, align 32
@qnoc_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 369, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Cannot regmap interconnect bus resource\0A\00", [55 x i8] zeroinitializer }, align 32
@qnoc_probe._entry_ptr.8 = internal global ptr @qnoc_probe._entry.6, section ".printk_index", align 4
@qnoc_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 399, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"error adding interconnect provider: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@qnoc_probe._entry_ptr.11 = internal global ptr @qnoc_probe._entry.9, section ".printk_index", align 4
@__kstrtab_qnoc_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_qnoc_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_qnoc_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qnoc_probe to i32), ptr @__kstrtab_qnoc_probe, ptr @__kstrtabns_qnoc_probe }, section "___ksymtab+qnoc_probe", align 4
@__kstrtab_qnoc_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_qnoc_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_qnoc_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qnoc_remove to i32), ptr @__kstrtab_qnoc_remove, ptr @__kstrtabns_qnoc_remove }, section "___ksymtab+qnoc_remove", align 4
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bus_a\00", [26 x i8] zeroinitializer }, align 32
@qcom_icc_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s clk_set_rate error: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qcom_icc_set\00", [19 x i8] zeroinitializer }, align 32
@qcom_icc_set._entry_ptr = internal global ptr @qcom_icc_set._entry, section ".printk_index", align 4
@qcom_icc_rpm_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013qcom_icc_rpm_smd_send mas %d error %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qcom_icc_rpm_set\00", [47 x i8] zeroinitializer }, align 32
@qcom_icc_rpm_set._entry_ptr = internal global ptr @qcom_icc_rpm_set._entry, section ".printk_index", align 4
@qcom_icc_rpm_set._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013qcom_icc_rpm_smd_send slv %d error %d\0A\00", [55 x i8] zeroinitializer }, align 32
@qcom_icc_rpm_set._entry_ptr.20 = internal global ptr @qcom_icc_rpm_set._entry.18, section ".printk_index", align 4
@qcom_icc_qos_set.__UNIQUE_ID_ddebug186 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"icc_smd_rpm\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qcom_icc_qos_set\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Setting QoS for %s\0A\00", [44 x i8] zeroinitializer }, align 32
@qcom_icc_set_noc_qos.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qcom_icc_set_noc_qos\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"NoC QoS: Skipping %s: vote aggregated on parent.\0A\00", [46 x i8] zeroinitializer }, align 32
@qcom_icc_set_noc_qos.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.24, ptr @.str.2, ptr @.str.26, i8 0, i8 43, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"NoC QoS: %s: Set Fixed mode\0A\00", [35 x i8] zeroinitializer }, align 32
@qcom_icc_set_noc_qos.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.24, ptr @.str.2, ptr @.str.27, i8 0, i8 45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"NoC QoS: %s: Set Bypass mode\0A\00", [34 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4294967295]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.30 = private unnamed_addr constant [11 x i8] c"bus_clocks\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 294, i32 27 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 363, i32 4 }
@___asan_gen_.51 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 367, i32 16 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 369, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 399, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 295, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 295, i32 9 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 283, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 215, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 227, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 193, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 163, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 173, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.118 = private constant [39 x i8] c"../drivers/interconnect/qcom/icc-rpm.c\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 179, i32 3 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__ksymtab_qnoc_probe, ptr @__ksymtab_qnoc_remove, ptr @qcom_icc_rpm_set._entry, ptr @qcom_icc_rpm_set._entry.18, ptr @qcom_icc_rpm_set._entry_ptr, ptr @qcom_icc_rpm_set._entry_ptr.20, ptr @qcom_icc_set._entry, ptr @qcom_icc_set._entry_ptr, ptr @qnoc_probe._entry, ptr @qnoc_probe._entry.6, ptr @qnoc_probe._entry.9, ptr @qnoc_probe._entry_ptr, ptr @qnoc_probe._entry_ptr.11, ptr @qnoc_probe._entry_ptr.8, ptr @bus_clocks, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @qnoc_probe._key, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_clocks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnoc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnoc_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnoc_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnoc_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_icc_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_icc_rpm_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_icc_rpm_set._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qnoc_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call zeroext i1 @qcom_icc_rpm_smd_available() #6
  br i1 %call, label %if.end, label %entry.cleanup135_crit_edge

entry.cleanup135_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup135

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup135_crit_edge, label %if.end4

if.end.cleanup135_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup135

if.end4:                                          ; preds = %if.end
  %0 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call2, align 4
  %num_nodes5 = getelementptr inbounds %struct.qcom_icc_desc, ptr %call2, i32 0, i32 1
  %2 = ptrtoint ptr %num_nodes5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_nodes5, align 4
  %num_clocks = getelementptr inbounds %struct.qcom_icc_desc, ptr %call2, i32 0, i32 3
  %4 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_clocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  br i1 %tobool6.not, label %if.end4.if.end9_crit_edge, label %if.then7

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %clocks = getelementptr inbounds %struct.qcom_icc_desc, ptr %call2, i32 0, i32 2
  %6 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clocks, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end4.if.end9_crit_edge
  %cds.0 = phi ptr [ %7, %if.then7 ], [ @bus_clocks, %if.end4.if.end9_crit_edge ]
  %cd_num.0 = phi i32 [ %5, %if.then7 ], [ 2, %if.end4.if.end9_crit_edge ]
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %cd_num.0, i32 8) #6
  %9 = extractvalue { i32, i1 } %8, 1
  %10 = extractvalue { i32, i1 } %8, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %10, i32 72) #6
  %retval.0.i = select i1 %9, i32 -1, i32 %spec.select.i
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %retval.0.i, i32 noundef 3520) #6
  %tobool12.not = icmp eq ptr %call.i, null
  br i1 %tobool12.not, label %if.end9.cleanup135_crit_edge, label %if.end14

if.end9.cleanup135_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup135

if.end14:                                         ; preds = %if.end9
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 4) #6
  %12 = extractvalue { i32, i1 } %11, 1
  %13 = extractvalue { i32, i1 } %11, 0
  %spec.select.i246 = tail call i32 @llvm.uadd.sat.i32(i32 %13, i32 4) #6
  %retval.0.i247 = select i1 %12, i32 -1, i32 %spec.select.i246
  %call.i248 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %retval.0.i247, i32 noundef 3520) #6
  %tobool17.not = icmp eq ptr %call.i248, null
  br i1 %tobool17.not, label %if.end14.cleanup135_crit_edge, label %if.end14.for.body_crit_edge

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  br label %for.body

if.end14.cleanup135_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup135

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end14.for.body_crit_edge
  %i.0260 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end14.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %cds.0, i32 %i.0260
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %arrayidx20 = getelementptr %struct.qcom_icc_provider, ptr %call.i, i32 0, i32 5, i32 %i.0260
  %16 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %arrayidx20, align 4
  %inc = add nuw i32 %i.0260, 1
  %exitcond.not = icmp eq i32 %inc, %cd_num.0
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  %num_clks = getelementptr inbounds %struct.qcom_icc_provider, ptr %call.i, i32 0, i32 1
  %17 = ptrtoint ptr %num_clks to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cd_num.0, ptr %num_clks, align 4
  %type = getelementptr inbounds %struct.qcom_icc_desc, ptr %call2, i32 0, i32 5
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type, align 4
  %type21 = getelementptr inbounds %struct.qcom_icc_provider, ptr %call.i, i32 0, i32 2
  %20 = ptrtoint ptr %type21 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %type21, align 4
  %qos_offset = getelementptr inbounds %struct.qcom_icc_desc, ptr %call2, i32 0, i32 7
  %21 = ptrtoint ptr %qos_offset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %qos_offset, align 4
  %qos_offset22 = getelementptr inbounds %struct.qcom_icc_provider, ptr %call.i, i32 0, i32 4
  %23 = ptrtoint ptr %qos_offset22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %qos_offset22, align 4
  %regmap_cfg = getelementptr inbounds %struct.qcom_icc_desc, ptr %call2, i32 0, i32 6
  %24 = ptrtoint ptr %regmap_cfg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap_cfg, align 4
  %tobool23.not = icmp eq ptr %25, null
  br i1 %tobool23.not, label %for.end.regmap_done_crit_edge, label %if.then24

for.end.regmap_done_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %regmap_done

if.then24:                                        ; preds = %for.end
  %call25 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.then27, label %if.end33

if.then27:                                        ; preds = %if.then24
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parent, align 8
  %call28 = tail call ptr @dev_get_regmap(ptr noundef %27, ptr noundef null) #6
  %regmap = getelementptr inbounds %struct.qcom_icc_provider, ptr %call.i, i32 0, i32 3
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call28, ptr %regmap, align 4
  %tobool30.not = icmp eq ptr %call28, null
  br i1 %tobool30.not, label %if.then27.cleanup135_crit_edge, label %if.then27.regmap_done_crit_edge

if.then27.regmap_done_crit_edge:                  ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %regmap_done

if.then27.cleanup135_crit_edge:                   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup135

if.end33:                                         ; preds = %if.then24
  %call34 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call25) #6
  %cmp.i = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end38

do.end:                                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str) #9
  %29 = ptrtoint ptr %call34 to i32
  br label %cleanup135

if.end38:                                         ; preds = %if.end33
  %30 = ptrtoint ptr %regmap_cfg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap_cfg, align 4
  %call40 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call34, ptr noundef %31, ptr noundef nonnull @qnoc_probe._key, ptr noundef nonnull @.str.5) #6
  %regmap41 = getelementptr inbounds %struct.qcom_icc_provider, ptr %call.i, i32 0, i32 3
  %32 = ptrtoint ptr %regmap41 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call40, ptr %regmap41, align 4
  %cmp.i249 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i249, label %do.end47, label %if.end38.regmap_done_crit_edge

if.end38.regmap_done_crit_edge:                   ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %regmap_done

do.end47:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #9
  %33 = ptrtoint ptr %regmap41 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap41, align 4
  %35 = ptrtoint ptr %34 to i32
  br label %cleanup135

regmap_done:                                      ; preds = %if.end38.regmap_done_crit_edge, %if.then27.regmap_done_crit_edge, %for.end.regmap_done_crit_edge
  %36 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_clks, align 4
  %bus_clks54 = getelementptr inbounds %struct.qcom_icc_provider, ptr %call.i, i32 0, i32 5
  %call55 = tail call i32 @devm_clk_bulk_get(ptr noundef %dev1, i32 noundef %37, ptr noundef %bus_clks54) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %regmap_done.cleanup135_crit_edge

regmap_done.cleanup135_crit_edge:                 ; preds = %regmap_done
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup135

if.end58:                                         ; preds = %regmap_done
  %38 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_clks, align 4
  %call.i250 = tail call i32 @clk_bulk_prepare(i32 noundef %39, ptr noundef %bus_clks54) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i250)
  %tobool.not.i = icmp eq i32 %call.i250, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end58.cleanup135_crit_edge

if.end58.cleanup135_crit_edge:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup135

if.end.i:                                         ; preds = %if.end58
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef %39, ptr noundef %bus_clks54) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end65, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_bulk_unprepare(i32 noundef %39, ptr noundef %bus_clks54) #6
  br label %cleanup135

if.end65:                                         ; preds = %if.end.i
  %has_bus_pd = getelementptr inbounds %struct.qcom_icc_desc, ptr %call2, i32 0, i32 4
  %40 = ptrtoint ptr %has_bus_pd to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %has_bus_pd, align 4, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool66.not = icmp eq i8 %41, 0
  br i1 %tobool66.not, label %if.end65.if.end72_crit_edge, label %if.then67

if.end65.if.end72_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.then67:                                        ; preds = %if.end65
  %call68 = tail call i32 @dev_pm_domain_attach(ptr noundef %dev1, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.then67.if.end72_crit_edge, label %if.then67.cleanup135_crit_edge

if.then67.cleanup135_crit_edge:                   ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup135

if.then67.if.end72_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.end72:                                         ; preds = %if.then67.if.end72_crit_edge, %if.end65.if.end72_crit_edge
  %nodes74 = getelementptr inbounds %struct.icc_provider, ptr %call.i, i32 0, i32 1
  %42 = ptrtoint ptr %nodes74 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %nodes74, ptr %nodes74, align 4
  %prev.i = getelementptr inbounds %struct.icc_provider, ptr %call.i, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %nodes74, ptr %prev.i, align 4
  %dev75 = getelementptr inbounds %struct.icc_provider, ptr %call.i, i32 0, i32 8
  %44 = ptrtoint ptr %dev75 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %dev1, ptr %dev75, align 4
  %set = getelementptr inbounds %struct.icc_provider, ptr %call.i, i32 0, i32 2
  %45 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @qcom_icc_set, ptr %set, align 4
  %aggregate = getelementptr inbounds %struct.icc_provider, ptr %call.i, i32 0, i32 3
  %46 = ptrtoint ptr %aggregate to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @icc_std_aggregate, ptr %aggregate, align 4
  %xlate = getelementptr inbounds %struct.icc_provider, ptr %call.i, i32 0, i32 6
  %47 = ptrtoint ptr %xlate to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @of_icc_xlate_onecell, ptr %xlate, align 4
  %data76 = getelementptr inbounds %struct.icc_provider, ptr %call.i, i32 0, i32 11
  %48 = ptrtoint ptr %data76 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i248, ptr %data76, align 4
  %call77 = tail call i32 @icc_provider_add(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %for.cond87.preheader, label %do.end82

for.cond87.preheader:                             ; preds = %if.end72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp88265.not = icmp eq i32 %3, 0
  br i1 %cmp88265.not, label %for.cond87.preheader.for.end121_crit_edge, label %for.cond87.preheader.for.body89_crit_edge

for.cond87.preheader.for.body89_crit_edge:        ; preds = %for.cond87.preheader
  br label %for.body89

for.cond87.preheader.for.end121_crit_edge:        ; preds = %for.cond87.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end121

do.end82:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %call77) #9
  %49 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_clks, align 4
  tail call void @clk_bulk_disable(i32 noundef %50, ptr noundef %bus_clks54) #6
  tail call void @clk_bulk_unprepare(i32 noundef %50, ptr noundef %bus_clks54) #6
  br label %cleanup135

for.body89:                                       ; preds = %for.inc119.for.body89_crit_edge, %for.cond87.preheader.for.body89_crit_edge
  %i.1266 = phi i32 [ %inc120, %for.inc119.for.body89_crit_edge ], [ 0, %for.cond87.preheader.for.body89_crit_edge ]
  %arrayidx90 = getelementptr ptr, ptr %1, i32 %i.1266
  %51 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx90, align 4
  %id91 = getelementptr inbounds %struct.qcom_icc_node, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %id91 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %id91, align 4
  %conv = zext i16 %54 to i32
  %call92 = tail call ptr @icc_node_create(i32 noundef %conv) #6
  %cmp.i252 = icmp ugt ptr %call92, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i252, label %err, label %if.end96

if.end96:                                         ; preds = %for.body89
  %55 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx90, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 8
  %name98 = getelementptr inbounds %struct.icc_node, ptr %call92, i32 0, i32 1
  %59 = ptrtoint ptr %name98 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %name98, align 4
  %60 = load ptr, ptr %arrayidx90, align 4
  %data100 = getelementptr inbounds %struct.icc_node, ptr %call92, i32 0, i32 14
  %61 = ptrtoint ptr %data100 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %data100, align 4
  tail call void @icc_node_add(ptr noundef %call92, ptr noundef nonnull %call.i) #6
  %62 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx90, align 4
  %num_links261 = getelementptr inbounds %struct.qcom_icc_node, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %num_links261 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %num_links261, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %cmp104263.not = icmp eq i16 %65, 0
  br i1 %cmp104263.not, label %if.end96.for.inc119_crit_edge, label %if.end96.for.body106_crit_edge

if.end96.for.body106_crit_edge:                   ; preds = %if.end96
  br label %for.body106

if.end96.for.inc119_crit_edge:                    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc119

for.body106:                                      ; preds = %for.body106.for.body106_crit_edge, %if.end96.for.body106_crit_edge
  %66 = phi ptr [ %72, %for.body106.for.body106_crit_edge ], [ %63, %if.end96.for.body106_crit_edge ]
  %j.0264 = phi i32 [ %inc112, %for.body106.for.body106_crit_edge ], [ 0, %if.end96.for.body106_crit_edge ]
  %links = getelementptr inbounds %struct.qcom_icc_node, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %links to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %links, align 8
  %arrayidx108 = getelementptr i16, ptr %68, i32 %j.0264
  %69 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %arrayidx108, align 2
  %conv109 = zext i16 %70 to i32
  %call110 = tail call i32 @icc_link_create(ptr noundef %call92, i32 noundef %conv109) #6
  %inc112 = add nuw nsw i32 %j.0264, 1
  %71 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx90, align 4
  %num_links = getelementptr inbounds %struct.qcom_icc_node, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %num_links to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %num_links, align 4
  %conv103 = zext i16 %74 to i32
  %cmp104 = icmp ult i32 %inc112, %conv103
  br i1 %cmp104, label %for.body106.for.body106_crit_edge, label %for.body106.for.inc119_crit_edge

for.body106.for.inc119_crit_edge:                 ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc119

for.body106.for.body106_crit_edge:                ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body106

for.inc119:                                       ; preds = %for.body106.for.inc119_crit_edge, %if.end96.for.inc119_crit_edge
  %arrayidx115 = getelementptr %struct.icc_onecell_data, ptr %call.i248, i32 0, i32 1, i32 %i.1266
  %75 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call92, ptr %arrayidx115, align 4
  %inc120 = add nuw i32 %i.1266, 1
  %exitcond268.not = icmp eq i32 %inc120, %3
  br i1 %exitcond268.not, label %for.inc119.for.end121_crit_edge, label %for.inc119.for.body89_crit_edge

for.inc119.for.body89_crit_edge:                  ; preds = %for.inc119
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body89

for.inc119.for.end121_crit_edge:                  ; preds = %for.inc119
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end121

for.end121:                                       ; preds = %for.inc119.for.end121_crit_edge, %for.cond87.preheader.for.end121_crit_edge
  %76 = ptrtoint ptr %call.i248 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %3, ptr %call.i248, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %77 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %78 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %of_node, align 8
  %call123 = tail call fastcc i32 @of_get_child_count(ptr noundef %79)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %cmp124 = icmp sgt i32 %call123, 0
  br i1 %cmp124, label %if.then126, label %for.end121.cleanup135_crit_edge

for.end121.cleanup135_crit_edge:                  ; preds = %for.end121
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup135

if.then126:                                       ; preds = %for.end121
  call void @__sanitizer_cov_trace_pc() #8
  %80 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %of_node, align 8
  %call128 = tail call i32 @of_platform_populate(ptr noundef %81, ptr noundef null, ptr noundef null, ptr noundef %dev1) #6
  br label %cleanup135

err:                                              ; preds = %for.body89
  call void @__sanitizer_cov_trace_pc() #8
  %82 = ptrtoint ptr %call92 to i32
  %call130 = tail call i32 @icc_nodes_remove(ptr noundef nonnull %call.i) #6
  %83 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %num_clks, align 4
  tail call void @clk_bulk_disable(i32 noundef %84, ptr noundef %bus_clks54) #6
  tail call void @clk_bulk_unprepare(i32 noundef %84, ptr noundef %bus_clks54) #6
  %call134 = tail call i32 @icc_provider_del(ptr noundef nonnull %call.i) #6
  br label %cleanup135

cleanup135:                                       ; preds = %err, %if.then126, %for.end121.cleanup135_crit_edge, %do.end82, %if.then67.cleanup135_crit_edge, %if.then3.i, %if.end58.cleanup135_crit_edge, %regmap_done.cleanup135_crit_edge, %do.end47, %do.end, %if.then27.cleanup135_crit_edge, %if.end14.cleanup135_crit_edge, %if.end9.cleanup135_crit_edge, %if.end.cleanup135_crit_edge, %entry.cleanup135_crit_edge
  %retval.2 = phi i32 [ %call77, %do.end82 ], [ %82, %err ], [ %call128, %if.then126 ], [ -517, %entry.cleanup135_crit_edge ], [ -22, %if.end.cleanup135_crit_edge ], [ -12, %if.end9.cleanup135_crit_edge ], [ -12, %if.end14.cleanup135_crit_edge ], [ %call55, %regmap_done.cleanup135_crit_edge ], [ %call68, %if.then67.cleanup135_crit_edge ], [ 0, %for.end121.cleanup135_crit_edge ], [ %35, %do.end47 ], [ %29, %do.end ], [ -19, %if.then27.cleanup135_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i250, %if.end58.cleanup135_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qcom_icc_rpm_smd_available() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_domain_attach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_icc_set(ptr nocapture noundef readonly %src, ptr nocapture noundef readnone %dst) #0 align 64 {
entry:
  %agg_avg = alloca i32, align 4
  %agg_peak = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg_avg) #6
  %0 = ptrtoint ptr %agg_avg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %agg_avg, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg_peak) #6
  %1 = ptrtoint ptr %agg_peak to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %agg_peak, align 4
  %data = getelementptr inbounds %struct.icc_node, ptr %src, i32 0, i32 14
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %provider1 = getelementptr inbounds %struct.icc_node, ptr %src, i32 0, i32 4
  %4 = ptrtoint ptr %provider1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %provider1, align 4
  %nodes = getelementptr inbounds %struct.icc_provider, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn403 = load ptr, ptr %nodes, align 4
  %cmp.not404 = icmp eq ptr %.pn403, %nodes
  br i1 %cmp.not404, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %aggregate = getelementptr inbounds %struct.icc_provider, ptr %5, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %.pn405 = phi ptr [ %.pn403, %for.body.lr.ph ], [ %.pn, %for.body.for.body_crit_edge ]
  %n.0 = getelementptr i8, ptr %.pn405, i32 -20
  %7 = ptrtoint ptr %aggregate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %aggregate, align 4
  %avg_bw = getelementptr i8, ptr %.pn405, i32 28
  %9 = ptrtoint ptr %avg_bw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %avg_bw, align 4
  %peak_bw = getelementptr i8, ptr %.pn405, i32 32
  %11 = ptrtoint ptr %peak_bw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %peak_bw, align 4
  %call = call i32 %8(ptr noundef %n.0, i32 noundef 0, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %agg_avg, ptr noundef nonnull %agg_peak) #6
  %13 = ptrtoint ptr %.pn405 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load ptr, ptr %.pn405, align 4
  %cmp.not = icmp eq ptr %.pn, %nodes
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %14 = ptrtoint ptr %agg_avg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %agg_avg, align 4
  %conv = zext i32 %15 to i64
  %mul = mul nuw nsw i64 %conv, 1000
  %16 = ptrtoint ptr %agg_peak to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %agg_peak, align 4
  %conv11 = zext i32 %17 to i64
  %mul12 = mul nuw nsw i64 %conv11, 1000
  %ap_owned = getelementptr inbounds %struct.qcom_icc_node, ptr %3, i32 0, i32 7, i32 3
  %18 = ptrtoint ptr %ap_owned to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ap_owned, align 1, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %mas_rpm_id = getelementptr inbounds %struct.qcom_icc_node, ptr %3, i32 0, i32 5
  %20 = ptrtoint ptr %mas_rpm_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mas_rpm_id, align 8
  %slv_rpm_id = getelementptr inbounds %struct.qcom_icc_node, ptr %3, i32 0, i32 6
  %22 = ptrtoint ptr %slv_rpm_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %slv_rpm_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp.not.i = icmp eq i32 %21, -1
  br i1 %cmp.not.i, label %if.then.if.end3.i_crit_edge, label %if.then.i

if.then.if.end3.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i

if.then.i:                                        ; preds = %if.then
  %conv.i = trunc i64 %mul to i32
  %call.i = call i32 @qcom_icc_rpm_smd_send(i32 noundef 0, i32 noundef 1935764834, i32 noundef %21, i32 noundef %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end3.i_crit_edge, label %do.end.i

if.then.i.if.end3.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %21, i32 noundef %call.i) #9
  br label %cleanup

if.end3.i:                                        ; preds = %if.then.i.if.end3.i_crit_edge, %if.then.if.end3.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp4.not.i = icmp eq i32 %23, -1
  br i1 %cmp4.not.i, label %if.end3.i.if.end25_crit_edge, label %if.then6.i

if.end3.i.if.end25_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then6.i:                                       ; preds = %if.end3.i
  %conv7.i = trunc i64 %mul to i32
  %call8.i = call i32 @qcom_icc_rpm_smd_send(i32 noundef 0, i32 noundef 1986818914, i32 noundef %23, i32 noundef %conv7.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.then6.i.if.end25_crit_edge, label %do.end13.i

if.then6.i.if.end25_crit_edge:                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

do.end13.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %23, i32 noundef %call8.i) #9
  br label %cleanup

if.else:                                          ; preds = %for.end
  %qos_mode = getelementptr inbounds %struct.qcom_icc_node, ptr %3, i32 0, i32 7, i32 4
  %24 = ptrtoint ptr %qos_mode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %qos_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp17.not = icmp eq i32 %25, -1
  br i1 %cmp17.not, label %if.else.if.end25_crit_edge, label %if.then19

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then19:                                        ; preds = %if.else
  %call20 = call fastcc i32 @qcom_icc_qos_set(ptr noundef %src)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then19.if.end25_crit_edge, label %if.then19.cleanup_crit_edge

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then19.if.end25_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.end25:                                         ; preds = %if.then19.if.end25_crit_edge, %if.else.if.end25_crit_edge, %if.then6.i.if.end25_crit_edge, %if.end3.i.if.end25_crit_edge
  %26 = call i64 @llvm.umax.i64(i64 %mul, i64 %mul12)
  %buswidth = getelementptr inbounds %struct.qcom_icc_node, ptr %3, i32 0, i32 4
  %27 = ptrtoint ptr %buswidth to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %buswidth, align 2
  %conv29 = zext i16 %28 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %26)
  %cmp207 = icmp ult i64 %26, 4294967296
  br i1 %cmp207, label %if.then212, label %if.else218, !prof !68

if.then212:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %conv213 = trunc i64 %26 to i32
  %div216 = udiv i32 %conv213, %conv29
  %conv217 = zext i32 %div216 to i64
  br label %if.end222

if.else218:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %29 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv29, i64 %26) #10, !srcloc !69
  %asmresult1.i = extractvalue { i64, i64 } %29, 1
  br label %if.end222

if.end222:                                        ; preds = %if.else218, %if.then212
  %rate.0 = phi i64 [ %conv217, %if.then212 ], [ %asmresult1.i, %if.else218 ]
  %30 = call i64 @llvm.umin.i64(i64 %rate.0, i64 2147483647)
  %rate231 = getelementptr inbounds %struct.qcom_icc_node, ptr %3, i32 0, i32 8
  %31 = ptrtoint ptr %rate231 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %rate231, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %30)
  %cmp232 = icmp eq i64 %32, %30
  br i1 %cmp232, label %if.end222.cleanup_crit_edge, label %for.cond236.preheader

if.end222.cleanup_crit_edge:                      ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond236.preheader:                            ; preds = %if.end222
  %num_clks = getelementptr inbounds %struct.qcom_icc_provider, ptr %5, i32 0, i32 1
  %33 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_clks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp237406 = icmp sgt i32 %34, 0
  br i1 %cmp237406, label %for.body239.lr.ph, label %for.cond236.preheader.for.end250_crit_edge

for.cond236.preheader.for.end250_crit_edge:       ; preds = %for.cond236.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end250

for.body239.lr.ph:                                ; preds = %for.cond236.preheader
  %conv240 = trunc i64 %30 to i32
  br label %for.body239

for.body239:                                      ; preds = %for.inc249.for.body239_crit_edge, %for.body239.lr.ph
  %i.0407 = phi i32 [ 0, %for.body239.lr.ph ], [ %inc, %for.inc249.for.body239_crit_edge ]
  %clk = getelementptr %struct.qcom_icc_provider, ptr %5, i32 0, i32 5, i32 %i.0407, i32 1
  %35 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %clk, align 4
  %call241 = call i32 @clk_set_rate(ptr noundef %36, i32 noundef %conv240) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call241)
  %tobool242.not = icmp eq i32 %call241, 0
  br i1 %tobool242.not, label %for.inc249, label %do.end

do.end:                                           ; preds = %for.body239
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.qcom_icc_provider, ptr %5, i32 0, i32 5, i32 %i.0407
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx, align 4
  %call247 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %38, i32 noundef %call241) #9
  br label %cleanup

for.inc249:                                       ; preds = %for.body239
  %inc = add nuw nsw i32 %i.0407, 1
  %39 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_clks, align 4
  %cmp237 = icmp slt i32 %inc, %40
  br i1 %cmp237, label %for.inc249.for.body239_crit_edge, label %for.inc249.for.end250_crit_edge

for.inc249.for.end250_crit_edge:                  ; preds = %for.inc249
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end250

for.inc249.for.body239_crit_edge:                 ; preds = %for.inc249
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body239

for.end250:                                       ; preds = %for.inc249.for.end250_crit_edge, %for.cond236.preheader.for.end250_crit_edge
  %41 = ptrtoint ptr %rate231 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %30, ptr %rate231, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end250, %do.end, %if.end222.cleanup_crit_edge, %if.then19.cleanup_crit_edge, %do.end13.i, %do.end.i
  %retval.0 = phi i32 [ %call241, %do.end ], [ 0, %for.end250 ], [ %call20, %if.then19.cleanup_crit_edge ], [ 0, %if.end222.cleanup_crit_edge ], [ %call.i, %do.end.i ], [ %call8.i, %do.end13.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg_peak) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg_avg) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_std_aggregate(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_icc_xlate_onecell(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_provider_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @icc_node_create(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @icc_node_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_link_create(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @of_get_child_count(ptr noundef %np) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef null) #6
  %cmp.not5 = icmp eq ptr %call, null
  br i1 %cmp.not5, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %num.07 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %child.06 = phi ptr [ %call1, %for.body.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %inc = add i32 %num.07, 1
  %call1 = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef nonnull %child.06) #6
  %cmp.not = icmp eq ptr %call1, null
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %num.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  ret i32 %num.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_nodes_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_provider_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qnoc_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @icc_nodes_remove(ptr noundef %1) #6
  %num_clks = getelementptr inbounds %struct.qcom_icc_provider, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_clks, align 4
  %bus_clks = getelementptr inbounds %struct.qcom_icc_provider, ptr %1, i32 0, i32 5
  tail call void @clk_bulk_disable(i32 noundef %3, ptr noundef %bus_clks) #6
  tail call void @clk_bulk_unprepare(i32 noundef %3, ptr noundef %bus_clks) #6
  %call3 = tail call i32 @icc_provider_del(ptr noundef %1) #6
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qcom_icc_qos_set(ptr nocapture noundef readonly %node) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %provider = getelementptr inbounds %struct.icc_node, ptr %node, i32 0, i32 4
  %0 = ptrtoint ptr %provider to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %provider, align 4
  %data = getelementptr inbounds %struct.icc_node, ptr %node, i32 0, i32 14
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcom_icc_qos_set.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcom_icc_qos_set, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !70

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %provider to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %provider, align 4
  %dev = getelementptr inbounds %struct.icc_provider, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcom_icc_qos_set.__UNIQUE_ID_ddebug186, ptr noundef %7, ptr noundef nonnull @.str.23, ptr noundef %9) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %type = getelementptr inbounds %struct.qcom_icc_provider, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb6
  ]

sw.bb:                                            ; preds = %do.end
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %15 = ptrtoint ptr %provider to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %provider, align 4
  %qos.i = getelementptr inbounds %struct.qcom_icc_node, ptr %14, i32 0, i32 7
  %qos_mode.i = getelementptr inbounds %struct.qcom_icc_node, ptr %14, i32 0, i32 7, i32 4
  %17 = ptrtoint ptr %qos_mode.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %qos_mode.i, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %18, label %qcom_icc_bimc_set_qos_health.exit.i [
    i32 -1, label %sw.bb.if.end10.i_crit_edge
    i32 2, label %sw.bb.if.end10.i_crit_edge13
  ]

sw.bb.if.end10.i_crit_edge13:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

sw.bb.if.end10.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

qcom_icc_bimc_set_qos_health.exit.1.i:            ; preds = %qcom_icc_bimc_set_qos_health.exit.i
  %20 = ptrtoint ptr %qos.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %qos.i, align 4
  %shl.i.1.i = shl i32 %21, 8
  %22 = ptrtoint ptr %prio_level.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %prio_level.i.i, align 4
  %or.i.1.i = or i32 %shl.i.1.i, %23
  %24 = ptrtoint ptr %limit_commands.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %limit_commands.i.i, align 4, !range !67
  %26 = zext i8 %25 to i32
  %shl2.i.1.i = shl nuw i32 %26, 31
  %or3.i.1.i = or i32 %or.i.1.i, %shl2.i.1.i
  %27 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap.i.i, align 4
  %29 = ptrtoint ptr %qos_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %qos_offset.i.i, align 4
  %31 = ptrtoint ptr %qos_port.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %qos_port.i.i, align 4
  %mul.i.1.i = shl i32 %32, 14
  %add7.i.1.i = add i32 %30, 840
  %add8.i.1.i = add i32 %add7.i.1.i, %mul.i.1.i
  %call.i.i.1.i = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef %add8.i.1.i, i32 noundef -2147482877, i32 noundef %or3.i.1.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1.i)
  %tobool.not.1.i = icmp eq i32 %call.i.i.1.i, 0
  br i1 %tobool.not.1.i, label %qcom_icc_bimc_set_qos_health.exit.2.i, label %qcom_icc_bimc_set_qos_health.exit.1.i.cleanup_crit_edge

qcom_icc_bimc_set_qos_health.exit.1.i.cleanup_crit_edge: ; preds = %qcom_icc_bimc_set_qos_health.exit.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

qcom_icc_bimc_set_qos_health.exit.2.i:            ; preds = %qcom_icc_bimc_set_qos_health.exit.1.i
  %33 = ptrtoint ptr %qos.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %qos.i, align 4
  %shl.i.2.i = shl i32 %34, 8
  %35 = ptrtoint ptr %prio_level.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %prio_level.i.i, align 4
  %or.i.2.i = or i32 %shl.i.2.i, %36
  %37 = ptrtoint ptr %limit_commands.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %limit_commands.i.i, align 4, !range !67
  %39 = zext i8 %38 to i32
  %shl2.i.2.i = shl nuw i32 %39, 31
  %or3.i.2.i = or i32 %or.i.2.i, %shl2.i.2.i
  %40 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap.i.i, align 4
  %42 = ptrtoint ptr %qos_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %qos_offset.i.i, align 4
  %44 = ptrtoint ptr %qos_port.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %qos_port.i.i, align 4
  %mul.i.2.i = shl i32 %45, 14
  %add7.i.2.i = add i32 %43, 836
  %add8.i.2.i = add i32 %add7.i.2.i, %mul.i.2.i
  %call.i.i.2.i = tail call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef %add8.i.2.i, i32 noundef -2147482877, i32 noundef %or3.i.2.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.2.i)
  %tobool.not.2.i = icmp eq i32 %call.i.i.2.i, 0
  br i1 %tobool.not.2.i, label %qcom_icc_bimc_set_qos_health.exit.3.i, label %qcom_icc_bimc_set_qos_health.exit.2.i.cleanup_crit_edge

qcom_icc_bimc_set_qos_health.exit.2.i.cleanup_crit_edge: ; preds = %qcom_icc_bimc_set_qos_health.exit.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

qcom_icc_bimc_set_qos_health.exit.3.i:            ; preds = %qcom_icc_bimc_set_qos_health.exit.2.i
  %46 = ptrtoint ptr %qos.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %qos.i, align 4
  %shl.i.3.i = shl i32 %47, 8
  %48 = ptrtoint ptr %prio_level.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %prio_level.i.i, align 4
  %or.i.3.i = or i32 %shl.i.3.i, %49
  %50 = ptrtoint ptr %limit_commands.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %limit_commands.i.i, align 4, !range !67
  %52 = zext i8 %51 to i32
  %shl2.i.3.i = shl nuw i32 %52, 31
  %or3.i.3.i = or i32 %or.i.3.i, %shl2.i.3.i
  %53 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap.i.i, align 4
  %55 = ptrtoint ptr %qos_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %qos_offset.i.i, align 4
  %57 = ptrtoint ptr %qos_port.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %qos_port.i.i, align 4
  %mul.i.3.i = shl i32 %58, 14
  %add7.i.3.i = add i32 %56, 832
  %add8.i.3.i = add i32 %add7.i.3.i, %mul.i.3.i
  %call.i.i.3.i = tail call i32 @regmap_update_bits_base(ptr noundef %54, i32 noundef %add8.i.3.i, i32 noundef -2147482877, i32 noundef %or3.i.3.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.3.i)
  %tobool.not.3.i = icmp eq i32 %call.i.i.3.i, 0
  br i1 %tobool.not.3.i, label %qcom_icc_bimc_set_qos_health.exit.3.i.if.end10.i_crit_edge, label %qcom_icc_bimc_set_qos_health.exit.3.i.cleanup_crit_edge

qcom_icc_bimc_set_qos_health.exit.3.i.cleanup_crit_edge: ; preds = %qcom_icc_bimc_set_qos_health.exit.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

qcom_icc_bimc_set_qos_health.exit.3.i.if.end10.i_crit_edge: ; preds = %qcom_icc_bimc_set_qos_health.exit.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

qcom_icc_bimc_set_qos_health.exit.i:              ; preds = %sw.bb
  %prio_level.i.i = getelementptr inbounds %struct.qcom_icc_node, ptr %14, i32 0, i32 7, i32 1
  %regmap.i.i = getelementptr inbounds %struct.qcom_icc_provider, ptr %16, i32 0, i32 3
  %qos_offset.i.i = getelementptr inbounds %struct.qcom_icc_provider, ptr %16, i32 0, i32 4
  %qos_port.i.i = getelementptr inbounds %struct.qcom_icc_node, ptr %14, i32 0, i32 7, i32 5
  %limit_commands.i.i = getelementptr inbounds %struct.qcom_icc_node, ptr %14, i32 0, i32 7, i32 2
  %59 = ptrtoint ptr %prio_level.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %prio_level.i.i, align 4
  %61 = ptrtoint ptr %qos.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %qos.i, align 4
  %shl.i.i = shl i32 %62, 8
  %or.i.i = or i32 %shl.i.i, %60
  %63 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap.i.i, align 4
  %65 = ptrtoint ptr %qos_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %qos_offset.i.i, align 4
  %67 = ptrtoint ptr %qos_port.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %qos_port.i.i, align 4
  %mul.i.i = shl i32 %68, 14
  %add7.i.i = add i32 %66, 844
  %add8.i.i = add i32 %add7.i.i, %mul.i.i
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %64, i32 noundef %add8.i.i, i32 noundef 771, i32 noundef %or.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %qcom_icc_bimc_set_qos_health.exit.1.i, label %qcom_icc_bimc_set_qos_health.exit.i.cleanup_crit_edge

qcom_icc_bimc_set_qos_health.exit.i.cleanup_crit_edge: ; preds = %qcom_icc_bimc_set_qos_health.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10.i:                                       ; preds = %qcom_icc_bimc_set_qos_health.exit.3.i.if.end10.i_crit_edge, %sw.bb.if.end10.i_crit_edge, %sw.bb.if.end10.i_crit_edge13
  %val.0.i = phi i32 [ 0, %sw.bb.if.end10.i_crit_edge ], [ 0, %sw.bb.if.end10.i_crit_edge13 ], [ 1, %qcom_icc_bimc_set_qos_health.exit.3.i.if.end10.i_crit_edge ]
  %regmap.i = getelementptr inbounds %struct.qcom_icc_provider, ptr %16, i32 0, i32 3
  %69 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regmap.i, align 4
  %qos_offset.i = getelementptr inbounds %struct.qcom_icc_provider, ptr %16, i32 0, i32 4
  %71 = ptrtoint ptr %qos_offset.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %qos_offset.i, align 4
  %qos_port.i = getelementptr inbounds %struct.qcom_icc_node, ptr %14, i32 0, i32 7, i32 5
  %73 = ptrtoint ptr %qos_port.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %qos_port.i, align 8
  %mul.i = shl i32 %74, 14
  %add.i = add i32 %72, 768
  %add12.i = add i32 %add.i, %mul.i
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %70, i32 noundef %add12.i, i32 noundef 1, i32 noundef %val.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

sw.bb6:                                           ; preds = %do.end
  %75 = ptrtoint ptr %provider to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %provider, align 4
  %77 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data, align 4
  %qos2.i = getelementptr inbounds %struct.qcom_icc_node, ptr %78, i32 0, i32 7
  %regmap.i4 = getelementptr inbounds %struct.qcom_icc_provider, ptr %76, i32 0, i32 3
  %79 = ptrtoint ptr %regmap.i4 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regmap.i4, align 4
  %qos_offset.i5 = getelementptr inbounds %struct.qcom_icc_provider, ptr %76, i32 0, i32 4
  %81 = ptrtoint ptr %qos_offset.i5 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %qos_offset.i5, align 4
  %qos_port.i6 = getelementptr inbounds %struct.qcom_icc_node, ptr %78, i32 0, i32 7, i32 5
  %83 = ptrtoint ptr %qos_port.i6 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %qos_port.i6, align 4
  %mul.i7 = shl i32 %84, 12
  %add.i8 = add i32 %82, 8
  %add3.i = add i32 %add.i8, %mul.i7
  %85 = ptrtoint ptr %qos2.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %qos2.i, align 4
  %shl.i = shl i32 %86, 4
  %call.i.i9 = tail call i32 @regmap_update_bits_base(ptr noundef %80, i32 noundef %add3.i, i32 noundef 112, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i9)
  %tobool.not.i10 = icmp eq i32 %call.i.i9, 0
  br i1 %tobool.not.i10, label %if.end.i, label %sw.bb6.cleanup_crit_edge

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  %87 = ptrtoint ptr %regmap.i4 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regmap.i4, align 4
  %89 = ptrtoint ptr %qos_offset.i5 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %qos_offset.i5, align 4
  %91 = ptrtoint ptr %qos_port.i6 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %qos_port.i6, align 4
  %mul7.i = shl i32 %92, 12
  %add8.i = add i32 %90, 8
  %add9.i = add i32 %add8.i, %mul7.i
  %urg_fwd_en.i = getelementptr inbounds %struct.qcom_icc_node, ptr %78, i32 0, i32 7, i32 6
  %93 = ptrtoint ptr %urg_fwd_en.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %urg_fwd_en.i, align 4, !range !67
  %95 = shl nuw nsw i8 %94, 3
  %shl12.i = zext i8 %95 to i32
  %call.i1.i = tail call i32 @regmap_update_bits_base(ptr noundef %88, i32 noundef %add9.i, i32 noundef 8, i32 noundef %shl12.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call fastcc i32 @qcom_icc_set_noc_qos(ptr noundef %node)
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.end.i, %sw.bb6.cleanup_crit_edge, %if.end10.i, %qcom_icc_bimc_set_qos_health.exit.i.cleanup_crit_edge, %qcom_icc_bimc_set_qos_health.exit.3.i.cleanup_crit_edge, %qcom_icc_bimc_set_qos_health.exit.2.i.cleanup_crit_edge, %qcom_icc_bimc_set_qos_health.exit.1.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %sw.default ], [ %call.i.i, %if.end10.i ], [ %call.i.i.i, %qcom_icc_bimc_set_qos_health.exit.i.cleanup_crit_edge ], [ %call.i.i.1.i, %qcom_icc_bimc_set_qos_health.exit.1.i.cleanup_crit_edge ], [ %call.i.i.2.i, %qcom_icc_bimc_set_qos_health.exit.2.i.cleanup_crit_edge ], [ %call.i.i.3.i, %qcom_icc_bimc_set_qos_health.exit.3.i.cleanup_crit_edge ], [ %call.i1.i, %if.end.i ], [ %call.i.i9, %sw.bb6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_icc_rpm_smd_send(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qcom_icc_set_noc_qos(ptr nocapture noundef readonly %src) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.icc_node, ptr %src, i32 0, i32 14
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %provider1 = getelementptr inbounds %struct.icc_node, ptr %src, i32 0, i32 4
  %2 = ptrtoint ptr %provider1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %provider1, align 4
  %qos = getelementptr inbounds %struct.qcom_icc_node, ptr %1, i32 0, i32 7
  %qos_port = getelementptr inbounds %struct.qcom_icc_node, ptr %1, i32 0, i32 7, i32 5
  %4 = ptrtoint ptr %qos_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qos_port, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcom_icc_set_noc_qos.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcom_icc_set_noc_qos, %if.then5)) #6
          to label %cleanup [label %if.then5], !srcloc !70

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %provider1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %provider1, align 4
  %dev = getelementptr inbounds %struct.icc_provider, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcom_icc_set_noc_qos.__UNIQUE_ID_ddebug183, ptr noundef %9, ptr noundef nonnull @.str.25, ptr noundef %11) #6
  br label %cleanup

if.end7:                                          ; preds = %entry
  %qos_mode = getelementptr inbounds %struct.qcom_icc_node, ptr %1, i32 0, i32 7, i32 4
  %12 = ptrtoint ptr %qos_mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qos_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp9.not = icmp eq i32 %13, -1
  %spec.select = select i1 %cmp9.not, i32 2, i32 %13
  %14 = zext i32 %spec.select to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %spec.select, label %if.end7.if.end62_crit_edge [
    i32 0, label %do.body16
    i32 2, label %do.body42
  ]

if.end7.if.end62_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

do.body16:                                        ; preds = %if.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcom_icc_set_noc_qos.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcom_icc_set_noc_qos, %if.then28)) #6
          to label %do.end34 [label %if.then28], !srcloc !70

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %provider1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %provider1, align 4
  %dev30 = getelementptr inbounds %struct.icc_provider, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev30, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcom_icc_set_noc_qos.__UNIQUE_ID_ddebug184, ptr noundef %18, ptr noundef nonnull @.str.26, ptr noundef %20) #6
  br label %do.end34

do.end34:                                         ; preds = %if.then28, %do.body16
  %21 = ptrtoint ptr %qos to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %qos, align 4
  %shl.i = shl i32 %22, 2
  %regmap.i = getelementptr inbounds %struct.qcom_icc_provider, ptr %3, i32 0, i32 3
  %23 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i, align 4
  %qos_offset.i = getelementptr inbounds %struct.qcom_icc_provider, ptr %3, i32 0, i32 4
  %25 = ptrtoint ptr %qos_offset.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %qos_offset.i, align 4
  %27 = ptrtoint ptr %qos_port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %qos_port, align 4
  %mul.i = shl i32 %28, 12
  %add.i = add i32 %26, 8
  %add1.i = add i32 %add.i, %mul.i
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef %add1.i, i32 noundef 12, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %qcom_icc_noc_set_qos_priority.exit, label %do.end34.cleanup_crit_edge

do.end34.cleanup_crit_edge:                       ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

qcom_icc_noc_set_qos_priority.exit:               ; preds = %do.end34
  %29 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap.i, align 4
  %31 = ptrtoint ptr %qos_offset.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %qos_offset.i, align 4
  %33 = ptrtoint ptr %qos_port to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %qos_port, align 4
  %mul5.i = shl i32 %34, 12
  %add6.i = add i32 %32, 8
  %add7.i = add i32 %add6.i, %mul5.i
  %prio_level.i = getelementptr inbounds %struct.qcom_icc_node, ptr %1, i32 0, i32 7, i32 1
  %35 = ptrtoint ptr %prio_level.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %prio_level.i, align 4
  %call.i17.i = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef %add7.i, i32 noundef 3, i32 noundef %36, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i)
  %tobool37.not = icmp eq i32 %call.i17.i, 0
  br i1 %tobool37.not, label %qcom_icc_noc_set_qos_priority.exit.if.end62_crit_edge, label %qcom_icc_noc_set_qos_priority.exit.cleanup_crit_edge

qcom_icc_noc_set_qos_priority.exit.cleanup_crit_edge: ; preds = %qcom_icc_noc_set_qos_priority.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

qcom_icc_noc_set_qos_priority.exit.if.end62_crit_edge: ; preds = %qcom_icc_noc_set_qos_priority.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

do.body42:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcom_icc_set_noc_qos.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcom_icc_set_noc_qos, %if.then54)) #6
          to label %if.end62 [label %if.then54], !srcloc !70

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %provider1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %provider1, align 4
  %dev56 = getelementptr inbounds %struct.icc_provider, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev56, align 4
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcom_icc_set_noc_qos.__UNIQUE_ID_ddebug185, ptr noundef %40, ptr noundef nonnull @.str.27, ptr noundef %42) #6
  br label %if.end62

if.end62:                                         ; preds = %if.then54, %do.body42, %qcom_icc_noc_set_qos_priority.exit.if.end62_crit_edge, %if.end7.if.end62_crit_edge
  %regmap = getelementptr inbounds %struct.qcom_icc_provider, ptr %3, i32 0, i32 3
  %43 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap, align 4
  %qos_offset = getelementptr inbounds %struct.qcom_icc_provider, ptr %3, i32 0, i32 4
  %45 = ptrtoint ptr %qos_offset to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %qos_offset, align 4
  %47 = ptrtoint ptr %qos_port to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %qos_port, align 8
  %mul = shl i32 %48, 12
  %add = add i32 %46, 12
  %add65 = add i32 %add, %mul
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %44, i32 noundef %add65, i32 noundef 3, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %qcom_icc_noc_set_qos_priority.exit.cleanup_crit_edge, %do.end34.cleanup_crit_edge, %if.then5, %do.body
  %retval.0 = phi i32 [ %call.i, %if.end62 ], [ 0, %if.then5 ], [ %call.i17.i, %qcom_icc_noc_set_qos_priority.exit.cleanup_crit_edge ], [ 0, %do.body ], [ %call.i.i, %do.end34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !14, !15, !17, !18, !19, !21, !23, !25, !27, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !57}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/interconnect/qcom/icc-rpm.c", i32 363, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @qnoc_probe._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @qnoc_probe._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @qnoc_probe._key, !9, !"_key", i1 false, i1 false}
!9 = !{!"../drivers/interconnect/qcom/icc-rpm.c", i32 367, i32 16}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/interconnect/qcom/icc-rpm.c", i32 369, i32 4}
!13 = !{ptr @qnoc_probe._entry.6, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @qnoc_probe._entry_ptr.8, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/interconnect/qcom/icc-rpm.c", i32 399, i32 3}
!17 = !{ptr @qnoc_probe._entry.9, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @qnoc_probe._entry_ptr.11, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @__ksymtab_qnoc_probe, !20, !"__ksymtab_qnoc_probe", i1 false, i1 false}
!20 = !{!"../drivers/interconnect/qcom/icc-rpm.c", i32 438, i32 1}
!21 = !{ptr @__ksymtab_qnoc_remove, !22, !"__ksymtab_qnoc_remove", i1 false, i1 false}
!22 = !{!"../drivers/interconnect/qcom/icc-rpm.c", i32 448, i32 1}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/interconnect/qcom/icc-rpm.c", i32 295, i32 2}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/interconnect/qcom/icc-rpm.c", i32 295, i32 9}
!27 = !{ptr @bus_clocks, !28, !"bus_clocks", i1 false, i1 false}
!28 = !{!"../drivers/interconnect/qcom/icc-rpm.c", i32 294, i32 27}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/interconnect/qcom/icc-rpm.c", i32 283, i32 4}
!31 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @qcom_icc_set._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @qcom_icc_set._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/interconnect/qcom/icc-rpm.c", i32 215, i32 4}
!36 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @qcom_icc_rpm_set._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @qcom_icc_rpm_set._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/interconnect/qcom/icc-rpm.c", i32 227, i32 4}
!41 = !{ptr @qcom_icc_rpm_set._entry.18, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @qcom_icc_rpm_set._entry_ptr.20, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/interconnect/qcom/icc-rpm.c", i32 193, i32 2}
!45 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @qcom_icc_qos_set.__UNIQUE_ID_ddebug186, !44, !"__UNIQUE_ID_ddebug186", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/interconnect/qcom/icc-rpm.c", i32 163, i32 3}
!50 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @qcom_icc_set_noc_qos.__UNIQUE_ID_ddebug183, !49, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/interconnect/qcom/icc-rpm.c", i32 173, i32 3}
!54 = !{ptr @qcom_icc_set_noc_qos.__UNIQUE_ID_ddebug184, !53, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/interconnect/qcom/icc-rpm.c", i32 179, i32 3}
!57 = !{ptr @qcom_icc_set_noc_qos.__UNIQUE_ID_ddebug185, !56, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{i8 0, i8 2}
!68 = !{!"branch_weights", i32 2000, i32 1}
!69 = !{i64 2148639478, i64 2148639758, i64 2148640092, i64 2148640426}
!70 = !{i64 2148730759, i64 2148730764, i64 2148730777, i64 2148730821, i64 2148730855, i64 2148730876}
