; ModuleID = '/llk/IR_all_yes/drivers/interconnect/imx/imx.c_pt.bc'
source_filename = "../drivers/interconnect/imx/imx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+imx_icc_register\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_icc_register\09\09\09\09"
module asm "\09.long\09__crc_imx_icc_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_icc_register:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_icc_register\22\09\09\09\09\09"
module asm "__kstrtabns_imx_icc_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+imx_icc_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_icc_unregister\09\09\09\09"
module asm "\09.long\09__crc_imx_icc_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_icc_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_icc_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_imx_icc_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.imx_icc_node_desc = type { ptr, i16, [4 x i16], i16, ptr }
%struct.icc_provider = type { %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr }
%struct.icc_node = type { i32, ptr, ptr, i32, ptr, %struct.list_head, %struct.list_head, ptr, i8, %struct.hlist_head, i32, i32, i32, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.icc_onecell_data = type { i32, [0 x ptr] }
%struct.imx_icc_node = type { ptr, ptr, %struct.dev_pm_qos_request }
%struct.dev_pm_qos_request = type { i32, %union.anon.43, ptr }
%union.anon.43 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.imx_icc_node_adj_desc = type { i32, i32, ptr, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@imx_icc_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 252, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"error adding interconnect provider: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"imx_icc_register\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/interconnect/imx/imx.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx_icc_register._entry_ptr = internal global ptr @imx_icc_register._entry, section ".printk_index", align 4
@__kstrtab_imx_icc_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_icc_register = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_icc_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_icc_register to i32), ptr @__kstrtab_imx_icc_register, ptr @__kstrtabns_imx_icc_register }, section "___ksymtab_gpl+imx_icc_register", align 4
@__kstrtab_imx_icc_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_icc_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_icc_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_icc_unregister to i32), ptr @__kstrtab_imx_icc_unregister, ptr @__kstrtabns_imx_icc_unregister }, section "___ksymtab_gpl+imx_icc_unregister", align 4
@__UNIQUE_ID_file173 = internal constant [64 x i8] c"imx_interconnect.file=drivers/interconnect/imx/imx-interconnect\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [32 x i8] c"imx_interconnect.license=GPL v2\00", section ".modinfo", align 1
@imx_icc_node_set.__UNIQUE_ID_ddebug170 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 10, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"imx_interconnect\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"imx_icc_node_set\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"node %s device %s avg_bw %ukBps peak_bw %ukBps min_freq %llukHz\0A\00", [63 x i8] zeroinitializer }, align 32
@imx_icc_node_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 45, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s can't request more than S32_MAX freq\0A\00", [55 x i8] zeroinitializer }, align 32
@imx_icc_node_set._entry_ptr = internal global ptr @imx_icc_node_set._entry, section ".printk_index", align 4
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"failed to add %s\0A\00", [46 x i8] zeroinitializer }, align 32
@imx_icc_register_nodes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 198, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to link node %d to %d: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"imx_icc_register_nodes\00", [41 x i8] zeroinitializer }, align 32
@imx_icc_register_nodes._entry_ptr = internal global ptr @imx_icc_register_nodes._entry, section ".printk_index", align 4
@imx_icc_node_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 133, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to create node %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"imx_icc_node_add\00", [47 x i8] zeroinitializer }, align 32
@imx_icc_node_add._entry_ptr = internal global ptr @imx_icc_node_add._entry, section ".printk_index", align 4
@imx_icc_node_add._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 139, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"already created node %s id=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@imx_icc_node_add._entry_ptr.16 = internal global ptr @imx_icc_node_add._entry.14, section ".printk_index", align 4
@imx_icc_node_init_qos.__UNIQUE_ID_ddebug171 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"imx_icc_node_init_qos\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"icc node %s[%d] is main noc itself\0A\00", [60 x i8] zeroinitializer }, align 32
@imx_icc_node_init_qos._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 95, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed to parse %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@imx_icc_node_init_qos._entry_ptr = internal global ptr @imx_icc_node_init_qos._entry, section ".printk_index", align 4
@imx_icc_node_init_qos._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.2, i32 101, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Missing property %s, skip scaling %s\0A\00", [58 x i8] zeroinitializer }, align 32
@imx_icc_node_init_qos._entry_ptr.23 = internal global ptr @imx_icc_node_init_qos._entry.21, section ".printk_index", align 4
@imx_icc_node_init_qos._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.17, ptr @.str.2, i32 110, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"node %s[%d] missing device for %pOF\0A\00", [59 x i8] zeroinitializer }, align 32
@imx_icc_node_init_qos._entry_ptr.26 = internal global ptr @imx_icc_node_init_qos._entry.24, section ".printk_index", align 4
@imx_icc_node_init_qos.__UNIQUE_ID_ddebug172 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.17, ptr @.str.2, ptr @.str.27, i8 0, i8 28, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"node %s[%d] has device node %pOF\0A\00", [62 x i8] zeroinitializer }, align 32
@imx_icc_node_destroy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 70, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to remove qos request for %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"imx_icc_node_destroy\00", [43 x i8] zeroinitializer }, align 32
@imx_icc_node_destroy._entry_ptr = internal global ptr @imx_icc_node_destroy._entry, section ".printk_index", align 4
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 252, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 39, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 44, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 189, i32 10 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 197, i32 5 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 133, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 138, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 89, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 94, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 100, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 109, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 114, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.127 = private constant [34 x i8] c"../drivers/interconnect/imx/imx.c\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 68, i32 4 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__ksymtab_imx_icc_register, ptr @__ksymtab_imx_icc_unregister, ptr @imx_icc_node_add._entry, ptr @imx_icc_node_add._entry.14, ptr @imx_icc_node_add._entry_ptr, ptr @imx_icc_node_add._entry_ptr.16, ptr @imx_icc_node_destroy._entry, ptr @imx_icc_node_destroy._entry_ptr, ptr @imx_icc_node_init_qos._entry, ptr @imx_icc_node_init_qos._entry.21, ptr @imx_icc_node_init_qos._entry.24, ptr @imx_icc_node_init_qos._entry_ptr, ptr @imx_icc_node_init_qos._entry_ptr.23, ptr @imx_icc_node_init_qos._entry_ptr.26, ptr @imx_icc_node_set._entry, ptr @imx_icc_node_set._entry_ptr, ptr @imx_icc_register._entry, ptr @imx_icc_register._entry_ptr, ptr @imx_icc_register_nodes._entry, ptr @imx_icc_register_nodes._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_icc_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_icc_node_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_icc_register_nodes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_icc_node_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_icc_node_add._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_icc_node_init_qos._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_icc_node_init_qos._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_icc_node_init_qos._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_icc_node_destroy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @imx_icc_register(ptr noundef %pdev, ptr noundef %nodes, i32 noundef %nodes_count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nodes_count)
  %cmp11.i = icmp sgt i32 %nodes_count, 0
  br i1 %cmp11.i, label %entry.for.body.i_crit_edge, label %entry.get_max_node_id.exit_crit_edge

entry.get_max_node_id.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_max_node_id.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %ret.013.i = phi i32 [ %2, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %i.012.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %id.i = getelementptr %struct.imx_icc_node_desc, ptr %nodes, i32 %i.012.i, i32 1
  %0 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %id.i, align 4
  %conv.i = zext i16 %1 to i32
  %2 = tail call i32 @llvm.smax.i32(i32 %ret.013.i, i32 %conv.i) #5
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %nodes_count
  br i1 %exitcond.not.i, label %for.body.i.get_max_node_id.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.get_max_node_id.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_max_node_id.exit

get_max_node_id.exit:                             ; preds = %for.body.i.get_max_node_id.exit_crit_edge, %entry.get_max_node_id.exit_crit_edge
  %ret.0.lcssa.i = phi i32 [ 0, %entry.get_max_node_id.exit_crit_edge ], [ %2, %for.body.i.get_max_node_id.exit_crit_edge ]
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %ret.0.lcssa.i, i32 4) #5
  %4 = extractvalue { i32, i1 } %3, 1
  %5 = extractvalue { i32, i1 } %3, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %5, i32 4) #5
  %retval.0.i = select i1 %4, i32 -1, i32 %spec.select.i
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %retval.0.i, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %get_max_node_id.exit.cleanup_crit_edge, label %if.end

get_max_node_id.exit.cleanup_crit_edge:           ; preds = %get_max_node_id.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %get_max_node_id.exit
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %ret.0.lcssa.i, ptr %call.i, align 4
  %call.i45 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 56, i32 noundef 3520) #5
  %tobool5.not = icmp eq ptr %call.i45, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %set = getelementptr inbounds %struct.icc_provider, ptr %call.i45, i32 0, i32 2
  %7 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @imx_icc_set, ptr %set, align 4
  %aggregate = getelementptr inbounds %struct.icc_provider, ptr %call.i45, i32 0, i32 3
  %8 = ptrtoint ptr %aggregate to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @icc_std_aggregate, ptr %aggregate, align 4
  %xlate = getelementptr inbounds %struct.icc_provider, ptr %call.i45, i32 0, i32 6
  %9 = ptrtoint ptr %xlate to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @of_icc_xlate_onecell, ptr %xlate, align 4
  %data8 = getelementptr inbounds %struct.icc_provider, ptr %call.i45, i32 0, i32 11
  %10 = ptrtoint ptr %data8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %data8, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent, align 8
  %dev9 = getelementptr inbounds %struct.icc_provider, ptr %call.i45, i32 0, i32 8
  %13 = ptrtoint ptr %dev9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %dev9, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i45, ptr %driver_data.i.i, align 4
  %call10 = tail call i32 @icc_provider_add(ptr noundef nonnull %call.i45) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %do.end

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str, i32 noundef %call10) #8
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %15 = ptrtoint ptr %data8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data8, align 4
  br i1 %cmp11.i, label %if.end13.for.body.i46_crit_edge, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13.for.body.i46_crit_edge:                  ; preds = %if.end13
  br label %for.body.i46

for.body.i46:                                     ; preds = %for.inc21.i.for.body.i46_crit_edge, %if.end13.for.body.i46_crit_edge
  %i.080.i = phi i32 [ %inc22.i, %for.inc21.i.for.body.i46_crit_edge ], [ 0, %if.end13.for.body.i46_crit_edge ]
  %arrayidx.i = getelementptr %struct.imx_icc_node_desc, ptr %nodes, i32 %i.080.i
  %17 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev9, align 4
  %id.i.i = getelementptr %struct.imx_icc_node_desc, ptr %nodes, i32 %i.080.i, i32 1
  %19 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %id.i.i, align 4
  %conv.i.i = zext i16 %20 to i32
  %call.i.i = tail call ptr @icc_node_create(i32 noundef %conv.i.i) #5
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %for.body.i46
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %id.i.i, align 4
  %conv4.i.i = zext i16 %22 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.12, i32 noundef %conv4.i.i) #8
  br label %imx_icc_node_add.exit.i

if.end.i.i:                                       ; preds = %for.body.i46
  %data.i.i = getelementptr inbounds %struct.icc_node, ptr %call.i.i, i32 0, i32 14
  %23 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %if.end12.i.i, label %do.end8.i.i

do.end8.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %27 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %id.i.i, align 4
  %conv10.i.i = zext i16 %28 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.15, ptr noundef %26, i32 noundef %conv10.i.i) #8
  br label %if.then.i

if.end12.i.i:                                     ; preds = %if.end.i.i
  %call.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %18, i32 noundef 44, i32 noundef 3520) #5
  %tobool14.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool14.not.i.i, label %if.then15.i.i, label %if.end18.i.i

if.then15.i.i:                                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call.i.i, align 4
  tail call void @icc_node_destroy(i32 noundef %30) #5
  br label %if.then.i

if.end18.i.i:                                     ; preds = %if.end12.i.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i, align 4
  %name20.i.i = getelementptr inbounds %struct.icc_node, ptr %call.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %name20.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %name20.i.i, align 4
  %34 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i.i.i, ptr %data.i.i, align 4
  %35 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %arrayidx.i, ptr %call.i.i.i, align 4
  tail call void @icc_node_add(ptr noundef %call.i.i, ptr noundef nonnull %call.i45) #5
  %adj.i.i = getelementptr %struct.imx_icc_node_desc, ptr %nodes, i32 %i.080.i, i32 4
  %36 = ptrtoint ptr %adj.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %adj.i.i, align 4
  %tobool22.not.i.i = icmp eq ptr %37, null
  br i1 %tobool22.not.i.i, label %if.end18.i.i.imx_icc_node_add.exit.i_crit_edge, label %if.then23.i.i

if.end18.i.i.imx_icc_node_add.exit.i_crit_edge:   ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %imx_icc_node_add.exit.i

if.then23.i.i:                                    ; preds = %if.end18.i.i
  %call24.i.i = tail call fastcc i32 @imx_icc_node_init_qos(ptr noundef nonnull %call.i45, ptr noundef %call.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i)
  %cmp.i.i = icmp slt i32 %call24.i.i, 0
  br i1 %cmp.i.i, label %if.then26.i.i, label %if.then23.i.i.imx_icc_node_add.exit.i_crit_edge

if.then23.i.i.imx_icc_node_add.exit.i_crit_edge:  ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %imx_icc_node_add.exit.i

if.then26.i.i:                                    ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @imx_icc_node_destroy(ptr noundef %call.i.i) #5
  %38 = inttoptr i32 %call24.i.i to ptr
  br label %imx_icc_node_add.exit.i

imx_icc_node_add.exit.i:                          ; preds = %if.then26.i.i, %if.then23.i.i.imx_icc_node_add.exit.i_crit_edge, %if.end18.i.i.imx_icc_node_add.exit.i_crit_edge, %do.end.i.i
  %retval.0.i.i = phi ptr [ %call.i.i, %do.end.i.i ], [ %38, %if.then26.i.i ], [ %call.i.i, %if.then23.i.i.imx_icc_node_add.exit.i_crit_edge ], [ %call.i.i, %if.end18.i.i.imx_icc_node_add.exit.i_crit_edge ]
  %cmp.i47.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i47.i, label %imx_icc_node_add.exit.i.if.then.i_crit_edge, label %if.end.i

imx_icc_node_add.exit.i.if.then.i_crit_edge:      ; preds = %imx_icc_node_add.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.then.i:                                        ; preds = %imx_icc_node_add.exit.i.if.then.i_crit_edge, %if.then15.i.i, %do.end8.i.i
  %retval.0.i50.i = phi ptr [ inttoptr (i32 -12 to ptr), %if.then15.i.i ], [ inttoptr (i32 -17 to ptr), %do.end8.i.i ], [ %retval.0.i.i, %imx_icc_node_add.exit.i.if.then.i_crit_edge ]
  %39 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev9, align 4
  %41 = ptrtoint ptr %retval.0.i50.i to i32
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i, align 4
  %call3.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %40, i32 noundef %41, ptr noundef nonnull @.str.9, ptr noundef %43) #5
  br label %err.i

if.end.i:                                         ; preds = %imx_icc_node_add.exit.i
  %44 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %retval.0.i.i, align 4
  %arrayidx4.i = getelementptr %struct.icc_onecell_data, ptr %16, i32 0, i32 1, i32 %45
  %46 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %retval.0.i.i, ptr %arrayidx4.i, align 4
  %num_links.i = getelementptr %struct.imx_icc_node_desc, ptr %nodes, i32 %i.080.i, i32 3
  %47 = ptrtoint ptr %num_links.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %num_links.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %cmp674.not.i = icmp eq i16 %48, 0
  br i1 %cmp674.not.i, label %if.end.i.for.inc21.i_crit_edge, label %if.end.i.for.body8.i_crit_edge

if.end.i.for.body8.i_crit_edge:                   ; preds = %if.end.i
  br label %for.body8.i

if.end.i.for.inc21.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc21.i

for.cond5.i:                                      ; preds = %for.body8.i
  %inc.i47 = add nuw nsw i32 %j.075.i, 1
  %49 = ptrtoint ptr %num_links.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %num_links.i, align 2
  %conv.i48 = zext i16 %50 to i32
  %cmp6.i = icmp ult i32 %inc.i47, %conv.i48
  br i1 %cmp6.i, label %for.cond5.i.for.body8.i_crit_edge, label %for.cond5.i.for.inc21.i_crit_edge

for.cond5.i.for.inc21.i_crit_edge:                ; preds = %for.cond5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc21.i

for.cond5.i.for.body8.i_crit_edge:                ; preds = %for.cond5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body8.i

for.body8.i:                                      ; preds = %for.cond5.i.for.body8.i_crit_edge, %if.end.i.for.body8.i_crit_edge
  %j.075.i = phi i32 [ %inc.i47, %for.cond5.i.for.body8.i_crit_edge ], [ 0, %if.end.i.for.body8.i_crit_edge ]
  %arrayidx9.i = getelementptr %struct.imx_icc_node_desc, ptr %nodes, i32 %i.080.i, i32 2, i32 %j.075.i
  %51 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx9.i, align 2
  %conv10.i = zext i16 %52 to i32
  %call11.i = tail call i32 @icc_link_create(ptr noundef %retval.0.i.i, i32 noundef %conv10.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool.not.i, label %for.cond5.i, label %do.end.i

do.end.i:                                         ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev9, align 4
  %55 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %retval.0.i.i, align 4
  %57 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx9.i, align 2
  %conv17.i = zext i16 %58 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.10, i32 noundef %56, i32 noundef %conv17.i, i32 noundef %call11.i) #8
  br label %err.i

for.inc21.i:                                      ; preds = %for.cond5.i.for.inc21.i_crit_edge, %if.end.i.for.inc21.i_crit_edge
  %inc22.i = add nuw nsw i32 %i.080.i, 1
  %exitcond.not.i49 = icmp eq i32 %inc22.i, %nodes_count
  br i1 %exitcond.not.i49, label %for.inc21.i.cleanup_crit_edge, label %for.inc21.i.for.body.i46_crit_edge

for.inc21.i.for.body.i46_crit_edge:               ; preds = %for.inc21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i46

for.inc21.i.cleanup_crit_edge:                    ; preds = %for.inc21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err.i:                                            ; preds = %do.end.i, %if.then.i
  %ret.2.ph.i = phi i32 [ %call11.i, %do.end.i ], [ %call3.i, %if.then.i ]
  %nodes.i.i = getelementptr inbounds %struct.icc_provider, ptr %call.i45, i32 0, i32 1
  %59 = ptrtoint ptr %nodes.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %nodes.i.i, align 4
  %cmp.not18.i.i = icmp eq ptr %60, %nodes.i.i
  br i1 %cmp.not18.i.i, label %err.i.imx_icc_register_nodes.exit_crit_edge, label %err.i.for.body.i.i_crit_edge

err.i.for.body.i.i_crit_edge:                     ; preds = %err.i
  br label %for.body.i.i

err.i.imx_icc_register_nodes.exit_crit_edge:      ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %imx_icc_register_nodes.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %err.i.for.body.i.i_crit_edge
  %.pn.in19.i.i = phi ptr [ %.pn.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %60, %err.i.for.body.i.i_crit_edge ]
  %node.0.i.i = getelementptr i8, ptr %.pn.in19.i.i, i32 -20
  %61 = ptrtoint ptr %.pn.in19.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pn.i.i = load ptr, ptr %.pn.in19.i.i, align 4
  tail call fastcc void @imx_icc_node_destroy(ptr noundef %node.0.i.i) #5
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %nodes.i.i
  br i1 %cmp.not.i.i, label %for.body.i.i.imx_icc_register_nodes.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.body.i.i.imx_icc_register_nodes.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %imx_icc_register_nodes.exit

imx_icc_register_nodes.exit:                      ; preds = %for.body.i.i.imx_icc_register_nodes.exit_crit_edge, %err.i.imx_icc_register_nodes.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.ph.i)
  %tobool15.not = icmp eq i32 %ret.2.ph.i, 0
  br i1 %tobool15.not, label %imx_icc_register_nodes.exit.cleanup_crit_edge, label %provider_del

imx_icc_register_nodes.exit.cleanup_crit_edge:    ; preds = %imx_icc_register_nodes.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

provider_del:                                     ; preds = %imx_icc_register_nodes.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call18 = tail call i32 @icc_provider_del(ptr noundef nonnull %call.i45) #5
  br label %cleanup

cleanup:                                          ; preds = %provider_del, %imx_icc_register_nodes.exit.cleanup_crit_edge, %for.inc21.i.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %get_max_node_id.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %do.end ], [ %ret.2.ph.i, %provider_del ], [ -12, %get_max_node_id.exit.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %imx_icc_register_nodes.exit.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ], [ 0, %for.inc21.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_icc_set(ptr nocapture noundef readnone %src, ptr nocapture noundef readonly %dst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @imx_icc_node_set(ptr noundef %dst)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_std_aggregate(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_icc_xlate_onecell(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_provider_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_provider_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @imx_icc_unregister(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %nodes.i = getelementptr inbounds %struct.icc_provider, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nodes.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nodes.i, align 4
  %cmp.not18.i = icmp eq ptr %3, %nodes.i
  br i1 %cmp.not18.i, label %entry.imx_icc_unregister_nodes.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.imx_icc_unregister_nodes.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %imx_icc_unregister_nodes.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn.in19.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %3, %entry.for.body.i_crit_edge ]
  %node.0.i = getelementptr i8, ptr %.pn.in19.i, i32 -20
  %4 = ptrtoint ptr %.pn.in19.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn.in19.i, align 4
  tail call fastcc void @imx_icc_node_destroy(ptr noundef %node.0.i) #5
  %cmp.not.i = icmp eq ptr %.pn.i, %nodes.i
  br i1 %cmp.not.i, label %for.body.i.imx_icc_unregister_nodes.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.imx_icc_unregister_nodes.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %imx_icc_unregister_nodes.exit

imx_icc_unregister_nodes.exit:                    ; preds = %for.body.i.imx_icc_unregister_nodes.exit_crit_edge, %entry.imx_icc_unregister_nodes.exit_crit_edge
  %call1 = tail call i32 @icc_provider_del(ptr noundef %1) #5
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx_icc_node_set(ptr nocapture noundef readonly %node) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %provider = getelementptr inbounds %struct.icc_node, ptr %node, i32 0, i32 4
  %0 = ptrtoint ptr %provider to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %provider, align 4
  %dev1 = getelementptr inbounds %struct.icc_provider, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %data = getelementptr inbounds %struct.icc_node, ptr %node, i32 0, i32 14
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %qos_dev = getelementptr inbounds %struct.imx_icc_node, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %qos_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %qos_dev, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %avg_bw = getelementptr inbounds %struct.icc_node, ptr %node, i32 0, i32 10
  %peak_bw = getelementptr inbounds %struct.icc_node, ptr %node, i32 0, i32 11
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %adj = getelementptr inbounds %struct.imx_icc_node_desc, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %adj to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adj, align 4
  %bw_div = getelementptr inbounds %struct.imx_icc_node_adj_desc, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %bw_div to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bw_div, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %11, align 4
  %16 = ptrtoint ptr %peak_bw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %peak_bw, align 4
  %18 = ptrtoint ptr %avg_bw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %avg_bw, align 4
  %add = add i32 %17, %19
  %mul = mul i32 %15, %add
  %div182 = udiv i32 %mul, %13
  %conv183 = zext i32 %div182 to i64
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_icc_node_set.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_icc_node_set, %if.then199)) #5
          to label %do.end [label %if.then199], !srcloc !74

if.then199:                                       ; preds = %if.end
  %name = getelementptr inbounds %struct.icc_node, ptr %node, i32 0, i32 1
  %20 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name, align 4
  %22 = ptrtoint ptr %qos_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %qos_dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then199.dev_name.exit_crit_edge

if.then199.dev_name.exit_crit_edge:               ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then199.dev_name.exit_crit_edge
  %retval.0.i311 = phi ptr [ %27, %if.end.i ], [ %25, %if.then199.dev_name.exit_crit_edge ]
  %28 = ptrtoint ptr %avg_bw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %avg_bw, align 4
  %30 = ptrtoint ptr %peak_bw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %peak_bw, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_icc_node_set.__UNIQUE_ID_ddebug170, ptr noundef %3, ptr noundef nonnull @.str.7, ptr noundef %21, ptr noundef %retval.0.i311, i32 noundef %29, i32 noundef %31, i64 noundef %conv183) #5
  br label %do.end

do.end:                                           ; preds = %dev_name.exit, %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div182)
  %cmp205 = icmp slt i32 %div182, 0
  br i1 %cmp205, label %do.end210, label %if.end212

do.end210:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %name211 = getelementptr inbounds %struct.icc_node, ptr %node, i32 0, i32 1
  %32 = ptrtoint ptr %name211 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %name211, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8, ptr noundef %33) #8
  br label %cleanup

if.end212:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %qos_req = getelementptr inbounds %struct.imx_icc_node, ptr %5, i32 0, i32 2
  %call214 = tail call i32 @dev_pm_qos_update_request(ptr noundef %qos_req, i32 noundef %div182) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end212, %do.end210, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -34, %do.end210 ], [ 0, %if.end212 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_update_request(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_link_create(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @icc_node_create(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @icc_node_destroy(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @icc_node_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx_icc_node_init_qos(ptr nocapture noundef readonly %provider, ptr nocapture noundef readonly %node) unnamed_addr #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.icc_node, ptr %node, i32 0, i32 14
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %adj1 = getelementptr inbounds %struct.imx_icc_node_desc, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %adj1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adj1, align 4
  %dev2 = getelementptr inbounds %struct.icc_provider, ptr %provider, i32 0, i32 8
  %6 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev2, align 4
  %main_noc = getelementptr inbounds %struct.imx_icc_node_adj_desc, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %main_noc to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %main_noc, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %qos_dev = getelementptr inbounds %struct.imx_icc_node, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %qos_dev to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %qos_dev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_icc_node_init_qos.__UNIQUE_ID_ddebug171, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_icc_node_init_qos, %if.then6)) #5
          to label %if.end52 [label %if.then6], !srcloc !74

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.icc_node, ptr %node, i32 0, i32 1
  %11 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name, align 4
  %13 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %node, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_icc_node_init_qos.__UNIQUE_ID_ddebug171, ptr noundef %7, ptr noundef nonnull @.str.18, ptr noundef %12, i32 noundef %14) #5
  br label %if.end52

if.else:                                          ; preds = %entry
  %of_node = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 27
  %15 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node, align 8
  %phandle_name = getelementptr inbounds %struct.imx_icc_node_adj_desc, ptr %5, i32 0, i32 2
  %17 = ptrtoint ptr %phandle_name to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phandle_name, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #5
  %19 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %16, ptr noundef %18, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  br label %do.end12

of_parse_phandle.exit:                            ; preds = %if.else
  %20 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  %tobool8.not = icmp eq ptr %21, null
  br i1 %tobool8.not, label %of_parse_phandle.exit.do.end12_crit_edge, label %if.end14

of_parse_phandle.exit.do.end12_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end12

do.end12:                                         ; preds = %of_parse_phandle.exit.do.end12_crit_edge, %of_parse_phandle.exit.thread
  %22 = ptrtoint ptr %phandle_name to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phandle_name, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.19, ptr noundef %23) #8
  br label %cleanup

if.end14:                                         ; preds = %of_parse_phandle.exit
  %call15 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %21) #5
  br i1 %call15, label %if.end22, label %do.end19

do.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %phandle_name to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %phandle_name, align 4
  %name21 = getelementptr inbounds %struct.icc_node, ptr %node, i32 0, i32 1
  %26 = ptrtoint ptr %name21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name21, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.22, ptr noundef %25, ptr noundef %27) #8
  call void @of_node_put(ptr noundef nonnull %21) #5
  br label %cleanup

if.end22:                                         ; preds = %if.end14
  %call23 = call ptr @of_find_device_by_node(ptr noundef nonnull %21) #5
  call void @of_node_put(ptr noundef nonnull %21) #5
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %do.end28, label %if.end31

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %name29 = getelementptr inbounds %struct.icc_node, ptr %node, i32 0, i32 1
  %28 = ptrtoint ptr %name29 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name29, align 4
  %30 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %node, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.25, ptr noundef %29, i32 noundef %31, ptr noundef nonnull %21) #8
  br label %cleanup

if.end31:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %dev32 = getelementptr inbounds %struct.platform_device, ptr %call23, i32 0, i32 3
  %qos_dev33 = getelementptr inbounds %struct.imx_icc_node, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %qos_dev33 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %dev32, ptr %qos_dev33, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_icc_node_init_qos.__UNIQUE_ID_ddebug172, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_icc_node_init_qos, %if.then46)) #5
          to label %if.end52 [label %if.then46], !srcloc !74

if.then46:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  %name47 = getelementptr inbounds %struct.icc_node, ptr %node, i32 0, i32 1
  %33 = ptrtoint ptr %name47 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %name47, align 4
  %35 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %node, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_icc_node_init_qos.__UNIQUE_ID_ddebug172, ptr noundef %7, ptr noundef nonnull @.str.27, ptr noundef %34, i32 noundef %36, ptr noundef nonnull %21) #5
  br label %if.end52

if.end52:                                         ; preds = %if.then46, %if.end31, %if.then6, %if.then
  %qos_dev53 = getelementptr inbounds %struct.imx_icc_node, ptr %1, i32 0, i32 1
  %37 = ptrtoint ptr %qos_dev53 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %qos_dev53, align 4
  %qos_req = getelementptr inbounds %struct.imx_icc_node, ptr %1, i32 0, i32 2
  %call54 = call i32 @dev_pm_qos_add_request(ptr noundef %38, ptr noundef %qos_req, i32 noundef 3, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %do.end28, %do.end19, %do.end12
  %retval.0 = phi i32 [ %call54, %if.end52 ], [ -517, %do.end28 ], [ 0, %do.end19 ], [ -19, %do.end12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @imx_icc_node_destroy(ptr noundef %node) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.icc_node, ptr %node, i32 0, i32 14
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dev.i = getelementptr inbounds %struct.imx_icc_node, ptr %1, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %cmp.i.not = icmp eq ptr %3, null
  br i1 %cmp.i.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then:                                          ; preds = %entry
  %qos_req = getelementptr inbounds %struct.imx_icc_node, ptr %1, i32 0, i32 2
  %call2 = tail call i32 @dev_pm_qos_remove_request(ptr noundef %qos_req) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.if.end6_crit_edge, label %do.end

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

do.end:                                           ; preds = %if.then
  %provider = getelementptr inbounds %struct.icc_node, ptr %node, i32 0, i32 4
  %4 = ptrtoint ptr %provider to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %provider, align 4
  %dev = getelementptr inbounds %struct.icc_provider, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %qos_dev = getelementptr inbounds %struct.imx_icc_node, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %qos_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qos_dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %13, %if.end.i ], [ %11, %do.end.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.28, ptr noundef %retval.0.i) #8
  br label %if.end6

if.end6:                                          ; preds = %dev_name.exit, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %qos_dev7 = getelementptr inbounds %struct.imx_icc_node, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %qos_dev7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %qos_dev7, align 4
  tail call void @put_device(ptr noundef %15) #5
  tail call void @icc_node_del(ptr noundef %node) #5
  %16 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %node, align 4
  tail call void @icc_node_destroy(i32 noundef %17) #5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_add_request(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_remove_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @icc_node_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !15, !17, !18, !19, !20, !22, !23, !24, !26, !28, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !62, !63, !64}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/interconnect/imx/imx.c", i32 252, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @imx_icc_register._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @imx_icc_register._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_imx_icc_register, !9, !"__ksymtab_imx_icc_register", i1 false, i1 false}
!9 = !{!"../drivers/interconnect/imx/imx.c", i32 266, i32 1}
!10 = !{ptr @__ksymtab_imx_icc_unregister, !11, !"__ksymtab_imx_icc_unregister", i1 false, i1 false}
!11 = !{!"../drivers/interconnect/imx/imx.c", i32 276, i32 1}
!12 = !{ptr @__UNIQUE_ID_file173, !13, !"__UNIQUE_ID_file173", i1 false, i1 false}
!13 = !{!"../drivers/interconnect/imx/imx.c", i32 278, i32 1}
!14 = !{ptr @__UNIQUE_ID_license174, !13, !"__UNIQUE_ID_license174", i1 false, i1 false}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/interconnect/imx/imx.c", i32 39, i32 2}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @imx_icc_node_set.__UNIQUE_ID_ddebug170, !16, !"__UNIQUE_ID_ddebug170", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/interconnect/imx/imx.c", i32 44, i32 3}
!22 = !{ptr @imx_icc_node_set._entry, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @imx_icc_node_set._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/interconnect/imx/imx.c", i32 189, i32 10}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/interconnect/imx/imx.c", i32 197, i32 5}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @imx_icc_register_nodes._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @imx_icc_register_nodes._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/interconnect/imx/imx.c", i32 133, i32 3}
!33 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @imx_icc_node_add._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @imx_icc_node_add._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/interconnect/imx/imx.c", i32 138, i32 3}
!38 = !{ptr @imx_icc_node_add._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @imx_icc_node_add._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/interconnect/imx/imx.c", i32 89, i32 3}
!42 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @imx_icc_node_init_qos.__UNIQUE_ID_ddebug171, !41, !"__UNIQUE_ID_ddebug171", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/interconnect/imx/imx.c", i32 94, i32 4}
!46 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @imx_icc_node_init_qos._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @imx_icc_node_init_qos._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/interconnect/imx/imx.c", i32 100, i32 4}
!51 = !{ptr @imx_icc_node_init_qos._entry.21, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @imx_icc_node_init_qos._entry_ptr.23, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/interconnect/imx/imx.c", i32 109, i32 4}
!55 = !{ptr @imx_icc_node_init_qos._entry.24, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @imx_icc_node_init_qos._entry_ptr.26, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/interconnect/imx/imx.c", i32 114, i32 3}
!59 = !{ptr @imx_icc_node_init_qos.__UNIQUE_ID_ddebug172, !58, !"__UNIQUE_ID_ddebug172", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/interconnect/imx/imx.c", i32 68, i32 4}
!62 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @imx_icc_node_destroy._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @imx_icc_node_destroy._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{i64 2148282344, i64 2148282349, i64 2148282362, i64 2148282406, i64 2148282440, i64 2148282461}
!75 = !{i8 0, i8 2}
