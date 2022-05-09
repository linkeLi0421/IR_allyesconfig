; ModuleID = '/llk/IR_all_yes/drivers/pci/pcie/err.c_pt.bc'
source_filename = "../drivers/pci/pcie/err.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.pci_error_handlers = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [32 x i8], [0 x i32] }

@pcie_do_recovery.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 51, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"err\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pcie_do_recovery\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/pci/pcie/err.c\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"AER: broadcast error_detected message\0A\00", [57 x i8] zeroinitializer }, align 32
@pcie_do_recovery._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 210, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"AER: subordinate device reset failed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pcie_do_recovery._entry_ptr = internal global ptr @pcie_do_recovery._entry, section ".printk_index", align 4
@pcie_do_recovery.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 54, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"AER: broadcast mmio_enabled message\0A\00", [59 x i8] zeroinitializer }, align 32
@pcie_do_recovery.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 0, i8 57, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"AER: broadcast slot_reset message\0A\00", [61 x i8] zeroinitializer }, align 32
@pcie_do_recovery.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 0, i8 59, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"AER: broadcast resume message\0A\00", [33 x i8] zeroinitializer }, align 32
@pcie_ports_native = external dso_local local_unnamed_addr global i8, align 1
@pcie_do_recovery._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 250, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"AER: device recovery successful\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pcie_do_recovery._entry_ptr.13 = internal global ptr @pcie_do_recovery._entry.10, section ".printk_index", align 4
@pcie_do_recovery._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 257, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"AER: device recovery failed\0A\00", [35 x i8] zeroinitializer }, align 32
@pcie_do_recovery._entry_ptr.16 = internal global ptr @pcie_do_recovery._entry.14, section ".printk_index", align 4
@report_error_detected._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 70, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"AER: can't recover (no error_detected callback)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"report_error_detected\00", [42 x i8] zeroinitializer }, align 32
@report_error_detected._entry_ptr = internal global ptr @report_error_detected._entry, section ".printk_index", align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/device.h\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 6, i64 9, i64 10]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 6]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 6]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 6]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 6]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 6]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 5]
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 206, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 210, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 219, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 230, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 237, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 250, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 257, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.86 = private constant [26 x i8] c"../drivers/pci/pcie/err.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 70, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [26 x i8] c"../include/linux/device.h\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 787, i32 2 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @pcie_do_recovery._entry, ptr @pcie_do_recovery._entry.10, ptr @pcie_do_recovery._entry.14, ptr @pcie_do_recovery._entry_ptr, ptr @pcie_do_recovery._entry_ptr.13, ptr @pcie_do_recovery._entry_ptr.16, ptr @report_error_detected._entry, ptr @report_error_detected._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_do_recovery._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_do_recovery._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_do_recovery._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @report_error_detected._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcie_do_recovery(ptr noundef %dev, i32 noundef %state, ptr nocapture noundef readonly %reset_subordinates) local_unnamed_addr #0 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_flags_reg.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 25
  %0 = ptrtoint ptr %pcie_flags_reg.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pcie_flags_reg.i.i, align 2
  %2 = lshr i16 %1, 4
  %3 = and i16 %2, 15
  %4 = zext i16 %3 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #4
  %5 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %status, align 4
  %bus = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus, align 8
  %call1 = tail call ptr @pci_find_host_bridge(ptr noundef %7) #4
  %8 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %if.else [
    i32 4, label %entry.do.body_crit_edge
    i32 6, label %entry.do.body_crit_edge194
    i32 10, label %entry.do.body_crit_edge195
    i32 9, label %entry.do.body_crit_edge196
  ]

entry.do.body_crit_edge196:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

entry.do.body_crit_edge195:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

entry.do.body_crit_edge194:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.else:                                          ; preds = %entry
  %is_virtfn.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 49
  %9 = ptrtoint ptr %is_virtfn.i.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 5)
  %bf.load.i.i = load i40, ptr %is_virtfn.i.i, align 1
  %10 = and i40 %bf.load.i.i, 65536
  %tobool.not.i.i = icmp eq i40 %10, 0
  br i1 %tobool.not.i.i, label %if.else.pci_physfn.exit.i_crit_edge, label %if.then.i.i

if.else.pci_physfn.exit.i_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %pci_physfn.exit.i

if.then.i.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %11 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 66
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  br label %pci_physfn.exit.i

pci_physfn.exit.i:                                ; preds = %if.then.i.i, %if.else.pci_physfn.exit.i_crit_edge
  %dev.addr.0.i.i = phi ptr [ %13, %if.then.i.i ], [ %dev, %if.else.pci_physfn.exit.i_crit_edge ]
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.0.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus.i, align 8
  %parent.i.i = getelementptr inbounds %struct.pci_bus, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent.i.i, align 8
  %tobool.not.i5.i = icmp eq ptr %17, null
  br i1 %tobool.not.i5.i, label %pci_physfn.exit.i.do.body_crit_edge, label %if.end.i

pci_physfn.exit.i.do.body_crit_edge:              ; preds = %pci_physfn.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.end.i:                                         ; preds = %pci_physfn.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %self.i = getelementptr inbounds %struct.pci_bus, ptr %15, i32 0, i32 4
  %18 = ptrtoint ptr %self.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %self.i, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.i, %pci_physfn.exit.i.do.body_crit_edge, %entry.do.body_crit_edge, %entry.do.body_crit_edge194, %entry.do.body_crit_edge195, %entry.do.body_crit_edge196
  %bridge.0 = phi ptr [ %dev, %entry.do.body_crit_edge ], [ %dev, %entry.do.body_crit_edge194 ], [ %dev, %entry.do.body_crit_edge195 ], [ %dev, %entry.do.body_crit_edge196 ], [ %19, %if.end.i ], [ null, %pci_physfn.exit.i.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcie_do_recovery.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pcie_do_recovery, %do.end)) #4
          to label %if.then12 [label %do.end], !srcloc !46

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %bridge.0, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcie_do_recovery.__UNIQUE_ID_ddebug236, ptr noundef %dev13, ptr noundef nonnull @.str.3) #4
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %state)
  %cmp15 = icmp eq i32 %state, 2
  %subordinate.i = getelementptr inbounds %struct.pci_dev, ptr %bridge.0, i32 0, i32 2
  %20 = ptrtoint ptr %subordinate.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %subordinate.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %cmp15, label %if.then16, label %if.else25

if.then16:                                        ; preds = %do.end
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  call void @pci_walk_bus(ptr noundef nonnull %21, ptr noundef nonnull @report_frozen_detected, ptr noundef nonnull %status) #4
  br label %pci_walk_bridge.exit

if.else.i:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @report_error_detected(ptr noundef %bridge.0, i32 noundef 2, ptr noundef nonnull %status) #4
  br label %pci_walk_bridge.exit

pci_walk_bridge.exit:                             ; preds = %if.else.i, %if.then.i
  %call17 = call i32 %reset_subordinates(ptr noundef %bridge.0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call17)
  %cmp18.not = icmp eq i32 %call17, 5
  br i1 %cmp18.not, label %pci_walk_bridge.exit.if.end26_crit_edge, label %do.end22

pci_walk_bridge.exit.if.end26_crit_edge:          ; preds = %pci_walk_bridge.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

do.end22:                                         ; preds = %pci_walk_bridge.exit
  call void @__sanitizer_cov_trace_pc() #6
  %dev23 = getelementptr inbounds %struct.pci_dev, ptr %bridge.0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev23, ptr noundef nonnull @.str.4) #7
  br label %failed

if.else25:                                        ; preds = %do.end
  br i1 %tobool.not.i, label %if.else.i146, label %if.then.i144

if.then.i144:                                     ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #6
  call void @pci_walk_bus(ptr noundef nonnull %21, ptr noundef nonnull @report_normal_detected, ptr noundef nonnull %status) #4
  br label %if.end26

if.else.i146:                                     ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @report_error_detected(ptr noundef %bridge.0, i32 noundef 1, ptr noundef nonnull %status) #4
  br label %if.end26

if.end26:                                         ; preds = %if.else.i146, %if.then.i144, %pci_walk_bridge.exit.if.end26_crit_edge
  %22 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp27 = icmp eq i32 %23, 2
  br i1 %cmp27, label %if.then28, label %if.end26.if.end48_crit_edge

if.end26.if.end48_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48

if.then28:                                        ; preds = %if.end26
  %24 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 5, ptr %status, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcie_do_recovery.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pcie_do_recovery, %do.end47)) #4
          to label %if.then43 [label %do.end47], !srcloc !46

if.then43:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #6
  %dev44 = getelementptr inbounds %struct.pci_dev, ptr %bridge.0, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcie_do_recovery.__UNIQUE_ID_ddebug237, ptr noundef %dev44, ptr noundef nonnull @.str.7) #4
  br label %do.end47

do.end47:                                         ; preds = %if.then43, %if.then28
  %subordinate.i149 = getelementptr inbounds %struct.pci_dev, ptr %bridge.0, i32 0, i32 2
  %25 = ptrtoint ptr %subordinate.i149 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %subordinate.i149, align 4
  %tobool.not.i150 = icmp eq ptr %26, null
  br i1 %tobool.not.i150, label %if.else.i153, label %if.then.i151

if.then.i151:                                     ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #6
  call void @pci_walk_bus(ptr noundef nonnull %26, ptr noundef nonnull @report_mmio_enabled, ptr noundef nonnull %status) #4
  br label %if.end48thread-pre-split

if.else.i153:                                     ; preds = %do.end47
  %mutex.i.i = getelementptr inbounds %struct.pci_dev, ptr %bridge.0, i32 0, i32 44, i32 10
  call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #4
  %driver.i = getelementptr inbounds %struct.pci_dev, ptr %bridge.0, i32 0, i32 27
  %27 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %driver.i, align 4
  %tobool.not.i170 = icmp eq ptr %28, null
  br i1 %tobool.not.i170, label %if.else.i153.report_mmio_enabled.exit_crit_edge, label %lor.lhs.false.i

if.else.i153.report_mmio_enabled.exit_crit_edge:  ; preds = %if.else.i153
  call void @__sanitizer_cov_trace_pc() #6
  br label %report_mmio_enabled.exit

lor.lhs.false.i:                                  ; preds = %if.else.i153
  %err_handler2.i = getelementptr inbounds %struct.pci_driver, ptr %28, i32 0, i32 11
  %29 = ptrtoint ptr %err_handler2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %err_handler2.i, align 4
  %tobool3.not.i = icmp eq ptr %30, null
  br i1 %tobool3.not.i, label %lor.lhs.false.i.report_mmio_enabled.exit_crit_edge, label %lor.lhs.false4.i

lor.lhs.false.i.report_mmio_enabled.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %report_mmio_enabled.exit

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %mmio_enabled.i = getelementptr inbounds %struct.pci_error_handlers, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %mmio_enabled.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio_enabled.i, align 4
  %tobool6.not.i = icmp eq ptr %32, null
  br i1 %tobool6.not.i, label %lor.lhs.false4.i.report_mmio_enabled.exit_crit_edge, label %if.end.i171

lor.lhs.false4.i.report_mmio_enabled.exit_crit_edge: ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %report_mmio_enabled.exit

if.end.i171:                                      ; preds = %lor.lhs.false4.i
  %call.i = call i32 %32(ptr noundef %bridge.0) #4
  %33 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %status, align 4
  %35 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %call.i, label %if.end3.i.i [
    i32 6, label %if.end.i171.merge_result.exit.i_crit_edge
    i32 1, label %if.then2.i.i
  ]

if.end.i171.merge_result.exit.i_crit_edge:        ; preds = %if.end.i171
  call void @__sanitizer_cov_trace_pc() #6
  br label %merge_result.exit.i

if.then2.i.i:                                     ; preds = %if.end.i171
  call void @__sanitizer_cov_trace_pc() #6
  br label %merge_result.exit.i

if.end3.i.i:                                      ; preds = %if.end.i171
  %36 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %34, label %if.end3.i.i.merge_result.exit.i_crit_edge [
    i32 2, label %if.end3.i.i.sw.bb.i.i_crit_edge
    i32 5, label %if.end3.i.i.sw.bb.i.i_crit_edge197
    i32 4, label %sw.bb4.i.i
  ]

if.end3.i.i.sw.bb.i.i_crit_edge197:               ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i.i

if.end3.i.i.sw.bb.i.i_crit_edge:                  ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i.i

if.end3.i.i.merge_result.exit.i_crit_edge:        ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %merge_result.exit.i

sw.bb.i.i:                                        ; preds = %if.end3.i.i.sw.bb.i.i_crit_edge, %if.end3.i.i.sw.bb.i.i_crit_edge197
  br label %merge_result.exit.i

sw.bb4.i.i:                                       ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i)
  %cmp5.i.i = icmp eq i32 %call.i, 3
  %spec.select.i.i = select i1 %cmp5.i.i, i32 3, i32 4
  br label %merge_result.exit.i

merge_result.exit.i:                              ; preds = %sw.bb4.i.i, %sw.bb.i.i, %if.end3.i.i.merge_result.exit.i_crit_edge, %if.then2.i.i, %if.end.i171.merge_result.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %34, %if.then2.i.i ], [ %call.i, %if.end.i171.merge_result.exit.i_crit_edge ], [ %34, %if.end3.i.i.merge_result.exit.i_crit_edge ], [ %call.i, %sw.bb.i.i ], [ %spec.select.i.i, %sw.bb4.i.i ]
  %37 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %retval.0.i.i, ptr %status, align 4
  br label %report_mmio_enabled.exit

report_mmio_enabled.exit:                         ; preds = %merge_result.exit.i, %lor.lhs.false4.i.report_mmio_enabled.exit_crit_edge, %lor.lhs.false.i.report_mmio_enabled.exit_crit_edge, %if.else.i153.report_mmio_enabled.exit_crit_edge
  call void @mutex_unlock(ptr noundef %mutex.i.i) #4
  br label %if.end48thread-pre-split

if.end48thread-pre-split:                         ; preds = %report_mmio_enabled.exit, %if.then.i151
  %38 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pr = load i32, ptr %status, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48thread-pre-split, %if.end26.if.end48_crit_edge
  %39 = phi i32 [ %.pr, %if.end48thread-pre-split ], [ %23, %if.end26.if.end48_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %39)
  %cmp49 = icmp eq i32 %39, 3
  br i1 %cmp49, label %if.then50, label %if.end48.if.end70_crit_edge

if.end48.if.end70_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end70

if.then50:                                        ; preds = %if.end48
  %40 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 5, ptr %status, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcie_do_recovery.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pcie_do_recovery, %do.end69)) #4
          to label %if.then65 [label %do.end69], !srcloc !46

if.then65:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #6
  %dev66 = getelementptr inbounds %struct.pci_dev, ptr %bridge.0, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcie_do_recovery.__UNIQUE_ID_ddebug238, ptr noundef %dev66, ptr noundef nonnull @.str.8) #4
  br label %do.end69

do.end69:                                         ; preds = %if.then65, %if.then50
  %subordinate.i156 = getelementptr inbounds %struct.pci_dev, ptr %bridge.0, i32 0, i32 2
  %41 = ptrtoint ptr %subordinate.i156 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %subordinate.i156, align 4
  %tobool.not.i157 = icmp eq ptr %42, null
  br i1 %tobool.not.i157, label %if.else.i160, label %if.then.i158

if.then.i158:                                     ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #6
  call void @pci_walk_bus(ptr noundef nonnull %42, ptr noundef nonnull @report_slot_reset, ptr noundef nonnull %status) #4
  br label %if.end70

if.else.i160:                                     ; preds = %do.end69
  %mutex.i.i172 = getelementptr inbounds %struct.pci_dev, ptr %bridge.0, i32 0, i32 44, i32 10
  call void @mutex_lock_nested(ptr noundef %mutex.i.i172, i32 noundef 0) #4
  %driver.i173 = getelementptr inbounds %struct.pci_dev, ptr %bridge.0, i32 0, i32 27
  %43 = ptrtoint ptr %driver.i173 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %driver.i173, align 4
  %tobool.not.i174 = icmp eq ptr %44, null
  br i1 %tobool.not.i174, label %if.else.i160.report_slot_reset.exit_crit_edge, label %lor.lhs.false.i177

if.else.i160.report_slot_reset.exit_crit_edge:    ; preds = %if.else.i160
  call void @__sanitizer_cov_trace_pc() #6
  br label %report_slot_reset.exit

lor.lhs.false.i177:                               ; preds = %if.else.i160
  %err_handler2.i175 = getelementptr inbounds %struct.pci_driver, ptr %44, i32 0, i32 11
  %45 = ptrtoint ptr %err_handler2.i175 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %err_handler2.i175, align 4
  %tobool3.not.i176 = icmp eq ptr %46, null
  br i1 %tobool3.not.i176, label %lor.lhs.false.i177.report_slot_reset.exit_crit_edge, label %lor.lhs.false4.i179

lor.lhs.false.i177.report_slot_reset.exit_crit_edge: ; preds = %lor.lhs.false.i177
  call void @__sanitizer_cov_trace_pc() #6
  br label %report_slot_reset.exit

lor.lhs.false4.i179:                              ; preds = %lor.lhs.false.i177
  %slot_reset.i = getelementptr inbounds %struct.pci_error_handlers, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %slot_reset.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %slot_reset.i, align 4
  %tobool6.not.i178 = icmp eq ptr %48, null
  br i1 %tobool6.not.i178, label %lor.lhs.false4.i179.report_slot_reset.exit_crit_edge, label %if.end.i181

lor.lhs.false4.i179.report_slot_reset.exit_crit_edge: ; preds = %lor.lhs.false4.i179
  call void @__sanitizer_cov_trace_pc() #6
  br label %report_slot_reset.exit

if.end.i181:                                      ; preds = %lor.lhs.false4.i179
  %call.i180 = call i32 %48(ptr noundef %bridge.0) #4
  %49 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %status, align 4
  %51 = zext i32 %call.i180 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %call.i180, label %if.end3.i.i183 [
    i32 6, label %if.end.i181.merge_result.exit.i189_crit_edge
    i32 1, label %if.then2.i.i182
  ]

if.end.i181.merge_result.exit.i189_crit_edge:     ; preds = %if.end.i181
  call void @__sanitizer_cov_trace_pc() #6
  br label %merge_result.exit.i189

if.then2.i.i182:                                  ; preds = %if.end.i181
  call void @__sanitizer_cov_trace_pc() #6
  br label %merge_result.exit.i189

if.end3.i.i183:                                   ; preds = %if.end.i181
  %52 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %50, label %if.end3.i.i183.merge_result.exit.i189_crit_edge [
    i32 2, label %if.end3.i.i183.sw.bb.i.i184_crit_edge
    i32 5, label %if.end3.i.i183.sw.bb.i.i184_crit_edge198
    i32 4, label %sw.bb4.i.i187
  ]

if.end3.i.i183.sw.bb.i.i184_crit_edge198:         ; preds = %if.end3.i.i183
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i.i184

if.end3.i.i183.sw.bb.i.i184_crit_edge:            ; preds = %if.end3.i.i183
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i.i184

if.end3.i.i183.merge_result.exit.i189_crit_edge:  ; preds = %if.end3.i.i183
  call void @__sanitizer_cov_trace_pc() #6
  br label %merge_result.exit.i189

sw.bb.i.i184:                                     ; preds = %if.end3.i.i183.sw.bb.i.i184_crit_edge, %if.end3.i.i183.sw.bb.i.i184_crit_edge198
  br label %merge_result.exit.i189

sw.bb4.i.i187:                                    ; preds = %if.end3.i.i183
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i180)
  %cmp5.i.i185 = icmp eq i32 %call.i180, 3
  %spec.select.i.i186 = select i1 %cmp5.i.i185, i32 3, i32 4
  br label %merge_result.exit.i189

merge_result.exit.i189:                           ; preds = %sw.bb4.i.i187, %sw.bb.i.i184, %if.end3.i.i183.merge_result.exit.i189_crit_edge, %if.then2.i.i182, %if.end.i181.merge_result.exit.i189_crit_edge
  %retval.0.i.i188 = phi i32 [ %50, %if.then2.i.i182 ], [ %call.i180, %if.end.i181.merge_result.exit.i189_crit_edge ], [ %50, %if.end3.i.i183.merge_result.exit.i189_crit_edge ], [ %call.i180, %sw.bb.i.i184 ], [ %spec.select.i.i186, %sw.bb4.i.i187 ]
  %53 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %retval.0.i.i188, ptr %status, align 4
  br label %report_slot_reset.exit

report_slot_reset.exit:                           ; preds = %merge_result.exit.i189, %lor.lhs.false4.i179.report_slot_reset.exit_crit_edge, %lor.lhs.false.i177.report_slot_reset.exit_crit_edge, %if.else.i160.report_slot_reset.exit_crit_edge
  call void @mutex_unlock(ptr noundef %mutex.i.i172) #4
  br label %if.end70

if.end70:                                         ; preds = %report_slot_reset.exit, %if.then.i158, %if.end48.if.end70_crit_edge
  %54 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %55)
  %cmp71.not = icmp eq i32 %55, 5
  br i1 %cmp71.not, label %do.body74, label %if.end70.failed_crit_edge

if.end70.failed_crit_edge:                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #6
  br label %failed

do.body74:                                        ; preds = %if.end70
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcie_do_recovery.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pcie_do_recovery, %do.end92)) #4
          to label %if.then88 [label %do.end92], !srcloc !46

if.then88:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #6
  %dev89 = getelementptr inbounds %struct.pci_dev, ptr %bridge.0, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcie_do_recovery.__UNIQUE_ID_ddebug239, ptr noundef %dev89, ptr noundef nonnull @.str.9) #4
  br label %do.end92

do.end92:                                         ; preds = %if.then88, %do.body74
  %subordinate.i163 = getelementptr inbounds %struct.pci_dev, ptr %bridge.0, i32 0, i32 2
  %56 = ptrtoint ptr %subordinate.i163 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %subordinate.i163, align 4
  %tobool.not.i164 = icmp eq ptr %57, null
  br i1 %tobool.not.i164, label %if.else.i167, label %if.then.i165

if.then.i165:                                     ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #6
  call void @pci_walk_bus(ptr noundef nonnull %57, ptr noundef nonnull @report_resume, ptr noundef nonnull %status) #4
  br label %pci_walk_bridge.exit169

if.else.i167:                                     ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #6
  %call.i166 = call i32 @report_resume(ptr noundef %bridge.0, ptr noundef nonnull %status) #4
  br label %pci_walk_bridge.exit169

pci_walk_bridge.exit169:                          ; preds = %if.else.i167, %if.then.i165
  %native_aer = getelementptr inbounds %struct.pci_host_bridge, ptr %call1, i32 0, i32 13
  %58 = ptrtoint ptr %native_aer to i32
  call void @__asan_load2_noabort(i32 %58)
  %bf.load = load i16, ptr %native_aer, align 8
  %59 = and i16 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool93.not = icmp eq i16 %59, 0
  br i1 %tobool93.not, label %lor.lhs.false94, label %pci_walk_bridge.exit169.if.then96_crit_edge

pci_walk_bridge.exit169.if.then96_crit_edge:      ; preds = %pci_walk_bridge.exit169
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then96

lor.lhs.false94:                                  ; preds = %pci_walk_bridge.exit169
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @pcie_ports_native to i32))
  %60 = load i8, ptr @pcie_ports_native, align 1, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool95.not = icmp eq i8 %60, 0
  br i1 %tobool95.not, label %lor.lhs.false94.cleanup_crit_edge, label %lor.lhs.false94.if.then96_crit_edge

lor.lhs.false94.if.then96_crit_edge:              ; preds = %lor.lhs.false94
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then96

lor.lhs.false94.cleanup_crit_edge:                ; preds = %lor.lhs.false94
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then96:                                        ; preds = %lor.lhs.false94.if.then96_crit_edge, %pci_walk_bridge.exit169.if.then96_crit_edge
  call void @pcie_clear_device_status(ptr noundef %dev) #4
  %call97 = call i32 @pci_aer_clear_nonfatal_status(ptr noundef %dev) #4
  br label %cleanup

failed:                                           ; preds = %if.end70.failed_crit_edge, %do.end22
  call void @pci_uevent_ers(ptr noundef %bridge.0, i32 noundef 4) #4
  br label %cleanup

cleanup:                                          ; preds = %failed, %if.then96, %lor.lhs.false94.cleanup_crit_edge
  %.str.15.sink = phi ptr [ @.str.15, %failed ], [ @.str.11, %lor.lhs.false94.cleanup_crit_edge ], [ @.str.11, %if.then96 ]
  %dev106 = getelementptr inbounds %struct.pci_dev, ptr %bridge.0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev106, ptr noundef nonnull %.str.15.sink) #7
  %61 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %61)
  %retval.0 = load i32, ptr %status, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_find_host_bridge(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @report_frozen_detected(ptr noundef %dev, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @report_error_detected(ptr noundef %dev, i32 noundef 2, ptr noundef %data)
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @report_normal_detected(ptr noundef %dev, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @report_error_detected(ptr noundef %dev, i32 noundef 1, ptr noundef %data)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @report_mmio_enabled(ptr noundef %dev, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %driver = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %err_handler2 = getelementptr inbounds %struct.pci_driver, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %err_handler2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %err_handler2, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %lor.lhs.false.out_crit_edge, label %lor.lhs.false4

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %mmio_enabled = getelementptr inbounds %struct.pci_error_handlers, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %mmio_enabled to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio_enabled, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %lor.lhs.false4.out_crit_edge, label %if.end

lor.lhs.false4.out_crit_edge:                     ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %lor.lhs.false4
  %call = tail call i32 %5(ptr noundef %dev) #4
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data, align 4
  %8 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %call, label %if.end3.i [
    i32 6, label %if.end.merge_result.exit_crit_edge
    i32 1, label %if.then2.i
  ]

if.end.merge_result.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %merge_result.exit

if.then2.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %merge_result.exit

if.end3.i:                                        ; preds = %if.end
  %9 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %7, label %if.end3.i.merge_result.exit_crit_edge [
    i32 2, label %if.end3.i.sw.bb.i_crit_edge
    i32 5, label %if.end3.i.sw.bb.i_crit_edge21
    i32 4, label %sw.bb4.i
  ]

if.end3.i.sw.bb.i_crit_edge21:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.end3.i.sw.bb.i_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.end3.i.merge_result.exit_crit_edge:            ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %merge_result.exit

sw.bb.i:                                          ; preds = %if.end3.i.sw.bb.i_crit_edge, %if.end3.i.sw.bb.i_crit_edge21
  br label %merge_result.exit

sw.bb4.i:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call)
  %cmp5.i = icmp eq i32 %call, 3
  %spec.select.i = select i1 %cmp5.i, i32 3, i32 4
  br label %merge_result.exit

merge_result.exit:                                ; preds = %sw.bb4.i, %sw.bb.i, %if.end3.i.merge_result.exit_crit_edge, %if.then2.i, %if.end.merge_result.exit_crit_edge
  %retval.0.i = phi i32 [ %7, %if.then2.i ], [ %call, %if.end.merge_result.exit_crit_edge ], [ %7, %if.end3.i.merge_result.exit_crit_edge ], [ %call, %sw.bb.i ], [ %spec.select.i, %sw.bb4.i ]
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %retval.0.i, ptr %data, align 4
  br label %out

out:                                              ; preds = %merge_result.exit, %lor.lhs.false4.out_crit_edge, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @report_slot_reset(ptr noundef %dev, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %driver = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %err_handler2 = getelementptr inbounds %struct.pci_driver, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %err_handler2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %err_handler2, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %lor.lhs.false.out_crit_edge, label %lor.lhs.false4

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %slot_reset = getelementptr inbounds %struct.pci_error_handlers, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %slot_reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slot_reset, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %lor.lhs.false4.out_crit_edge, label %if.end

lor.lhs.false4.out_crit_edge:                     ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %lor.lhs.false4
  %call = tail call i32 %5(ptr noundef %dev) #4
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data, align 4
  %8 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %call, label %if.end3.i [
    i32 6, label %if.end.merge_result.exit_crit_edge
    i32 1, label %if.then2.i
  ]

if.end.merge_result.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %merge_result.exit

if.then2.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %merge_result.exit

if.end3.i:                                        ; preds = %if.end
  %9 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %7, label %if.end3.i.merge_result.exit_crit_edge [
    i32 2, label %if.end3.i.sw.bb.i_crit_edge
    i32 5, label %if.end3.i.sw.bb.i_crit_edge21
    i32 4, label %sw.bb4.i
  ]

if.end3.i.sw.bb.i_crit_edge21:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.end3.i.sw.bb.i_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.end3.i.merge_result.exit_crit_edge:            ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %merge_result.exit

sw.bb.i:                                          ; preds = %if.end3.i.sw.bb.i_crit_edge, %if.end3.i.sw.bb.i_crit_edge21
  br label %merge_result.exit

sw.bb4.i:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call)
  %cmp5.i = icmp eq i32 %call, 3
  %spec.select.i = select i1 %cmp5.i, i32 3, i32 4
  br label %merge_result.exit

merge_result.exit:                                ; preds = %sw.bb4.i, %sw.bb.i, %if.end3.i.merge_result.exit_crit_edge, %if.then2.i, %if.end.merge_result.exit_crit_edge
  %retval.0.i = phi i32 [ %7, %if.then2.i ], [ %call, %if.end.merge_result.exit_crit_edge ], [ %7, %if.end3.i.merge_result.exit_crit_edge ], [ %call, %sw.bb.i ], [ %spec.select.i, %sw.bb4.i ]
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %retval.0.i, ptr %data, align 4
  br label %out

out:                                              ; preds = %merge_result.exit, %lor.lhs.false4.out_crit_edge, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @report_resume(ptr noundef %dev, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %driver = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i, label %entry.device_lock_assert.exit.i_crit_edge, label %land.rhs.i.i

entry.device_lock_assert.exit.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %device_lock_assert.exit.i

land.rhs.i.i:                                     ; preds = %entry
  %dep_map.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 10, i32 5
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.device_lock_assert.exit.i_crit_edge, !prof !48

land.rhs.i.i.device_lock_assert.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %device_lock_assert.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 787, i32 noundef 9, ptr noundef null) #4
  br label %device_lock_assert.exit.i

device_lock_assert.exit.i:                        ; preds = %do.end.i.i, %land.rhs.i.i.device_lock_assert.exit.i_crit_edge, %entry.device_lock_assert.exit.i_crit_edge
  %error_state8.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 43
  %3 = ptrtoint ptr %error_state8.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %error_state8.i, align 4
  %.off20.i = add i32 %4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off20.i)
  %switch21.i = icmp ult i32 %.off20.i, 2
  br i1 %switch21.i, label %pci_dev_set_io_state.exit, label %device_lock_assert.exit.i.out_crit_edge

device_lock_assert.exit.i.out_crit_edge:          ; preds = %device_lock_assert.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

pci_dev_set_io_state.exit:                        ; preds = %device_lock_assert.exit.i
  %5 = ptrtoint ptr %error_state8.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %error_state8.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %pci_dev_set_io_state.exit.out_crit_edge, label %lor.lhs.false2

pci_dev_set_io_state.exit.out_crit_edge:          ; preds = %pci_dev_set_io_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

lor.lhs.false2:                                   ; preds = %pci_dev_set_io_state.exit
  %err_handler3 = getelementptr inbounds %struct.pci_driver, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %err_handler3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %err_handler3, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %lor.lhs.false2.out_crit_edge, label %lor.lhs.false5

lor.lhs.false2.out_crit_edge:                     ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %resume = getelementptr inbounds %struct.pci_error_handlers, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resume, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %lor.lhs.false5.out_crit_edge, label %if.end

lor.lhs.false5.out_crit_edge:                     ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %9(ptr noundef %dev) #4
  br label %out

out:                                              ; preds = %if.end, %lor.lhs.false5.out_crit_edge, %lor.lhs.false2.out_crit_edge, %pci_dev_set_io_state.exit.out_crit_edge, %device_lock_assert.exit.i.out_crit_edge
  tail call void @pci_uevent_ers(ptr noundef %dev, i32 noundef 5) #4
  tail call void @mutex_unlock(ptr noundef %mutex.i) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcie_clear_device_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_aer_clear_nonfatal_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_uevent_ers(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_walk_bus(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @report_error_detected(ptr noundef %dev, i32 noundef %state, ptr nocapture noundef %result) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %mutex.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %driver = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i, label %entry.device_lock_assert.exit.i_crit_edge, label %land.rhs.i.i

entry.device_lock_assert.exit.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %device_lock_assert.exit.i

land.rhs.i.i:                                     ; preds = %entry
  %dep_map.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 10, i32 5
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.device_lock_assert.exit.i_crit_edge, !prof !48

land.rhs.i.i.device_lock_assert.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %device_lock_assert.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 787, i32 noundef 9, ptr noundef null) #4
  br label %device_lock_assert.exit.i

device_lock_assert.exit.i:                        ; preds = %do.end.i.i, %land.rhs.i.i.device_lock_assert.exit.i_crit_edge, %entry.device_lock_assert.exit.i_crit_edge
  %3 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %state, label %device_lock_assert.exit.i.if.then_crit_edge [
    i32 1, label %sw.epilog11.i
    i32 2, label %sw.bb3.i
  ]

device_lock_assert.exit.i.if.then_crit_edge:      ; preds = %device_lock_assert.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

sw.bb3.i:                                         ; preds = %device_lock_assert.exit.i
  %error_state4.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 43
  %4 = ptrtoint ptr %error_state4.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %error_state4.i, align 4
  %.off.i = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %sw.bb3.i.pci_dev_set_io_state.exit_crit_edge, label %sw.bb3.i.if.then_crit_edge

sw.bb3.i.if.then_crit_edge:                       ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

sw.bb3.i.pci_dev_set_io_state.exit_crit_edge:     ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pci_dev_set_io_state.exit

sw.epilog11.i:                                    ; preds = %device_lock_assert.exit.i
  %error_state8.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 43
  %6 = ptrtoint ptr %error_state8.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %error_state8.i, align 4
  %.off20.i = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off20.i)
  %switch21.i = icmp ult i32 %.off20.i, 2
  br i1 %switch21.i, label %sw.epilog11.i.pci_dev_set_io_state.exit_crit_edge, label %sw.epilog11.i.if.then_crit_edge

sw.epilog11.i.if.then_crit_edge:                  ; preds = %sw.epilog11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

sw.epilog11.i.pci_dev_set_io_state.exit_crit_edge: ; preds = %sw.epilog11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pci_dev_set_io_state.exit

pci_dev_set_io_state.exit:                        ; preds = %sw.epilog11.i.pci_dev_set_io_state.exit_crit_edge, %sw.bb3.i.pci_dev_set_io_state.exit_crit_edge
  %error_state12.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 43
  %8 = ptrtoint ptr %error_state12.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %state, ptr %error_state12.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %pci_dev_set_io_state.exit.if.then_crit_edge, label %lor.lhs.false2

pci_dev_set_io_state.exit.if.then_crit_edge:      ; preds = %pci_dev_set_io_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false2:                                   ; preds = %pci_dev_set_io_state.exit
  %err_handler3 = getelementptr inbounds %struct.pci_driver, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %err_handler3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %err_handler3, align 4
  %tobool4.not = icmp eq ptr %10, null
  br i1 %tobool4.not, label %lor.lhs.false2.if.then_crit_edge, label %lor.lhs.false5

lor.lhs.false2.if.then_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool7.not = icmp eq ptr %12, null
  br i1 %tobool7.not, label %lor.lhs.false5.if.then_crit_edge, label %if.end15

lor.lhs.false5.if.then_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false5.if.then_crit_edge, %lor.lhs.false2.if.then_crit_edge, %pci_dev_set_io_state.exit.if.then_crit_edge, %sw.epilog11.i.if.then_crit_edge, %sw.bb3.i.if.then_crit_edge, %device_lock_assert.exit.i.if.then_crit_edge
  %hdr_type = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 13
  %13 = ptrtoint ptr %hdr_type to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %hdr_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp.not = icmp eq i8 %14, 1
  br i1 %cmp.not, label %if.end15.thread7, label %if.end15.thread

if.end15.thread7:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @pci_uevent_ers(ptr noundef %dev, i32 noundef 1) #4
  %15 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %result, align 4
  br label %if.then2.i

if.end15.thread:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.17) #7
  tail call void @pci_uevent_ers(ptr noundef %dev, i32 noundef 6) #4
  br label %merge_result.exit

if.end15:                                         ; preds = %lor.lhs.false5
  %call14 = tail call i32 %12(ptr noundef %dev, i32 noundef %state) #4
  tail call void @pci_uevent_ers(ptr noundef %dev, i32 noundef %call14) #4
  %17 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %result, align 4
  %19 = zext i32 %call14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %call14, label %if.end3.i [
    i32 6, label %if.end15.merge_result.exit_crit_edge
    i32 1, label %if.end15.if.then2.i_crit_edge
  ]

if.end15.if.then2.i_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then2.i

if.end15.merge_result.exit_crit_edge:             ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %merge_result.exit

if.then2.i:                                       ; preds = %if.end15.if.then2.i_crit_edge, %if.end15.thread7
  %20 = phi i32 [ %16, %if.end15.thread7 ], [ %18, %if.end15.if.then2.i_crit_edge ]
  br label %merge_result.exit

if.end3.i:                                        ; preds = %if.end15
  %21 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %18, label %if.end3.i.merge_result.exit_crit_edge [
    i32 2, label %if.end3.i.sw.bb.i_crit_edge
    i32 5, label %if.end3.i.sw.bb.i_crit_edge9
    i32 4, label %sw.bb4.i
  ]

if.end3.i.sw.bb.i_crit_edge9:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.end3.i.sw.bb.i_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.end3.i.merge_result.exit_crit_edge:            ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %merge_result.exit

sw.bb.i:                                          ; preds = %if.end3.i.sw.bb.i_crit_edge, %if.end3.i.sw.bb.i_crit_edge9
  br label %merge_result.exit

sw.bb4.i:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call14)
  %cmp5.i = icmp eq i32 %call14, 3
  %spec.select.i = select i1 %cmp5.i, i32 3, i32 4
  br label %merge_result.exit

merge_result.exit:                                ; preds = %sw.bb4.i, %sw.bb.i, %if.end3.i.merge_result.exit_crit_edge, %if.then2.i, %if.end15.merge_result.exit_crit_edge, %if.end15.thread
  %retval.0.i = phi i32 [ %20, %if.then2.i ], [ %call14, %if.end15.merge_result.exit_crit_edge ], [ %18, %if.end3.i.merge_result.exit_crit_edge ], [ %call14, %sw.bb.i ], [ %spec.select.i, %sw.bb4.i ], [ 6, %if.end15.thread ]
  %22 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %retval.0.i, ptr %result, align 4
  tail call void @mutex_unlock(ptr noundef %mutex.i) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pci/pcie/err.c", i32 206, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @pcie_do_recovery.__UNIQUE_ID_ddebug236, !1, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pci/pcie/err.c", i32 210, i32 4}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @pcie_do_recovery._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @pcie_do_recovery._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pci/pcie/err.c", i32 219, i32 3}
!14 = !{ptr @pcie_do_recovery.__UNIQUE_ID_ddebug237, !13, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/pci/pcie/err.c", i32 230, i32 3}
!17 = !{ptr @pcie_do_recovery.__UNIQUE_ID_ddebug238, !16, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pci/pcie/err.c", i32 237, i32 2}
!20 = !{ptr @pcie_do_recovery.__UNIQUE_ID_ddebug239, !19, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/pci/pcie/err.c", i32 250, i32 2}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @pcie_do_recovery._entry.10, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @pcie_do_recovery._entry_ptr.13, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pci/pcie/err.c", i32 257, i32 2}
!28 = !{ptr @pcie_do_recovery._entry.14, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @pcie_do_recovery._entry_ptr.16, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pci/pcie/err.c", i32 70, i32 4}
!32 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @report_error_detected._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @report_error_detected._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../include/linux/device.h", i32 787, i32 2}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{i64 2148490461, i64 2148490466, i64 2148490479, i64 2148490523, i64 2148490557, i64 2148490578}
!47 = !{i8 0, i8 2}
!48 = !{!"branch_weights", i32 1, i32 2000}
