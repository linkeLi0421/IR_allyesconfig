; ModuleID = '/llk/IR_all_yes/drivers/dma/lpc18xx-dmamux.c_pt.bc'
source_filename = "../drivers/dma/lpc18xx-dmamux.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.lpc18xx_dmamux_data = type { %struct.dma_router, ptr, i32, i32, ptr, %struct.spinlock }
%struct.dma_router = type { ptr, ptr }
%struct.lpc18xx_dmamux = type { i32, i8 }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_lpc18xx_dmamux__230_179_lpc18xx_dmamux_init3 = internal global ptr @lpc18xx_dmamux_init, section ".initcall3.init", align 4
@lpc18xx_dmamux_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @lpc18xx_dmamux_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lpc18xx_dmamux_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lpc18xx-dmamux\00", [17 x i8] zeroinitializer }, align 32
@lpc18xx_dmamux_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,lpc1850-dmamux\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nxp,lpc1850-creg\00", [47 x i8] zeroinitializer }, align 32
@lpc18xx_dmamux_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 122, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"syscon lookup failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lpc18xx_dmamux_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/dma/lpc18xx-dmamux.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lpc18xx_dmamux_probe._entry_ptr = internal global ptr @lpc18xx_dmamux_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dma-requests\00", [19 x i8] zeroinitializer }, align 32
@lpc18xx_dmamux_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 129, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"missing dma-requests property\0A\00", [33 x i8] zeroinitializer }, align 32
@lpc18xx_dmamux_probe._entry_ptr.10 = internal global ptr @lpc18xx_dmamux_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dma-masters\00", [20 x i8] zeroinitializer }, align 32
@lpc18xx_dmamux_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 135, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"can't get dma master\0A\00", [42 x i8] zeroinitializer }, align 32
@lpc18xx_dmamux_probe._entry_ptr.14 = internal global ptr @lpc18xx_dmamux_probe._entry.12, section ".printk_index", align 4
@lpc18xx_dmamux_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 143, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"missing master dma-requests property\0A\00", [58 x i8] zeroinitializer }, align 32
@lpc18xx_dmamux_probe._entry_ptr.17 = internal global ptr @lpc18xx_dmamux_probe._entry.15, section ".printk_index", align 4
@lpc18xx_dmamux_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&dmamux->lock\00", [18 x i8] zeroinitializer }, align 32
@lpc18xx_dmamux_reserve._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 60, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"invalid number of dma mux args\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lpc18xx_dmamux_reserve\00", [41 x i8] zeroinitializer }, align 32
@lpc18xx_dmamux_reserve._entry_ptr = internal global ptr @lpc18xx_dmamux_reserve._entry, section ".printk_index", align 4
@lpc18xx_dmamux_reserve._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.4, i32 67, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid mux number: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@lpc18xx_dmamux_reserve._entry_ptr.23 = internal global ptr @lpc18xx_dmamux_reserve._entry.21, section ".printk_index", align 4
@lpc18xx_dmamux_reserve._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.4, i32 73, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid dma mux value: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@lpc18xx_dmamux_reserve._entry_ptr.26 = internal global ptr @lpc18xx_dmamux_reserve._entry.24, section ".printk_index", align 4
@lpc18xx_dmamux_reserve._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.20, ptr @.str.4, i32 80, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@lpc18xx_dmamux_reserve._entry_ptr.28 = internal global ptr @lpc18xx_dmamux_reserve._entry.27, section ".printk_index", align 4
@lpc18xx_dmamux_reserve._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.20, ptr @.str.4, i32 88, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dma request %u busy with %u.%u\0A\00", [32 x i8] zeroinitializer }, align 32
@lpc18xx_dmamux_reserve._entry_ptr.31 = internal global ptr @lpc18xx_dmamux_reserve._entry.29, section ".printk_index", align 4
@lpc18xx_dmamux_reserve.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.20, ptr @.str.4, ptr @.str.33, i8 0, i8 26, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lpc18xx_dmamux\00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"mapping dmamux %u.%u to dma request %u\0A\00", [56 x i8] zeroinitializer }, align 32
@___asan_gen_.34 = private unnamed_addr constant [22 x i8] c"lpc18xx_dmamux_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 167, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 170, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant [21 x i8] c"lpc18xx_dmamux_match\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 162, i32 34 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 120, i32 51 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 122, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 126, i32 33 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 129, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 133, i32 32 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 135, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 143, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 153, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 60, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 66, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 72, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 80, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 87, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.128 = private constant [32 x i8] c"../drivers/dma/lpc18xx-dmamux.c\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 104, i32 2 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__initcall__kmod_lpc18xx_dmamux__230_179_lpc18xx_dmamux_init3, ptr @lpc18xx_dmamux_probe._entry, ptr @lpc18xx_dmamux_probe._entry.12, ptr @lpc18xx_dmamux_probe._entry.15, ptr @lpc18xx_dmamux_probe._entry.8, ptr @lpc18xx_dmamux_probe._entry_ptr, ptr @lpc18xx_dmamux_probe._entry_ptr.10, ptr @lpc18xx_dmamux_probe._entry_ptr.14, ptr @lpc18xx_dmamux_probe._entry_ptr.17, ptr @lpc18xx_dmamux_reserve._entry, ptr @lpc18xx_dmamux_reserve._entry.21, ptr @lpc18xx_dmamux_reserve._entry.24, ptr @lpc18xx_dmamux_reserve._entry.27, ptr @lpc18xx_dmamux_reserve._entry.29, ptr @lpc18xx_dmamux_reserve._entry_ptr, ptr @lpc18xx_dmamux_reserve._entry_ptr.23, ptr @lpc18xx_dmamux_reserve._entry_ptr.26, ptr @lpc18xx_dmamux_reserve._entry_ptr.28, ptr @lpc18xx_dmamux_reserve._entry_ptr.31, ptr @lpc18xx_dmamux_driver, ptr @.str, ptr @lpc18xx_dmamux_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @lpc18xx_dmamux_probe.__key, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.30, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_dmamux_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_dmamux_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_dmamux_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_dmamux_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_dmamux_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_dmamux_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_dmamux_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_dmamux_reserve._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_dmamux_reserve._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_dmamux_reserve._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_dmamux_reserve._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_dmamux_reserve._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc18xx_dmamux_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @lpc18xx_dmamux_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc18xx_dmamux_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 68, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.1) #6
  %reg = getelementptr inbounds %struct.lpc18xx_dmamux_data, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %reg, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg, align 4
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %dma_mux_requests = getelementptr inbounds %struct.lpc18xx_dmamux_data, ptr %call.i, i32 0, i32 3
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef %dma_mux_requests, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool11.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool11.not, label %if.end17, label %do.end15

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #9
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #6
  %6 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i81 = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %tobool.not.i = icmp eq i32 %call.i81, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #6
  br label %do.end23

of_parse_phandle.exit:                            ; preds = %if.end17
  %7 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #6
  %tobool19.not = icmp eq ptr %8, null
  br i1 %tobool19.not, label %of_parse_phandle.exit.do.end23_crit_edge, label %if.end25

of_parse_phandle.exit.do.end23_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23

do.end23:                                         ; preds = %of_parse_phandle.exit.do.end23_crit_edge, %of_parse_phandle.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #9
  br label %cleanup

if.end25:                                         ; preds = %of_parse_phandle.exit
  %dma_master_requests = getelementptr inbounds %struct.lpc18xx_dmamux_data, ptr %call.i, i32 0, i32 2
  %call.i.i82 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %8, ptr noundef nonnull @.str.7, ptr noundef %dma_master_requests, i32 noundef 1, i32 noundef 0) #6
  call void @of_node_put(ptr noundef nonnull %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i82)
  %tobool27.not = icmp sgt i32 %call.i.i82, -1
  br i1 %tobool27.not, label %if.end33, label %do.end31

do.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #9
  br label %cleanup

if.end33:                                         ; preds = %if.end25
  %9 = ptrtoint ptr %dma_master_requests to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma_master_requests, align 4
  %11 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %10, i32 8) #6
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !70

devm_kcalloc.exit.thread:                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %muxes86 = getelementptr inbounds %struct.lpc18xx_dmamux_data, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %muxes86 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %muxes86, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end33
  %14 = extractvalue { i32, i1 } %11, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %14, i32 noundef 3520) #6
  %muxes = getelementptr inbounds %struct.lpc18xx_dmamux_data, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %muxes to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call5.i.i, ptr %muxes, align 4
  %tobool38.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool38.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %do.body41

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body41:                                        ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  %lock = getelementptr inbounds %struct.lpc18xx_dmamux_data, ptr %call.i, i32 0, i32 5
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.18, ptr noundef nonnull @lpc18xx_dmamux_probe.__key, i16 noundef signext 3) #6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev, ptr %call.i, align 4
  %route_free = getelementptr inbounds %struct.dma_router, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %route_free to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @lpc18xx_dmamux_free, ptr %route_free, align 4
  %call49 = call i32 @of_dma_router_register(ptr noundef %1, ptr noundef nonnull @lpc18xx_dmamux_reserve, ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body41, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %do.end31, %do.end23, %do.end15, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %do.end ], [ %call.i.i, %do.end15 ], [ %call.i.i82, %do.end31 ], [ %call49, %do.body41 ], [ -19, %do.end23 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpc18xx_dmamux_free(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %route_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.lpc18xx_dmamux_data, ptr %1, i32 0, i32 5
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %busy = getelementptr inbounds %struct.lpc18xx_dmamux, ptr %route_data, i32 0, i32 1
  %2 = ptrtoint ptr %busy to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %busy, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_router_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @lpc18xx_dmamux_reserve(ptr nocapture noundef %dma_spec, ptr nocapture noundef readonly %ofdma) #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.of_dma, ptr %ofdma, i32 0, i32 1
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 4
  %call = tail call ptr @of_find_device_by_node(ptr noundef %1) #6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 1
  %4 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp.not = icmp eq i32 %5, 3
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2
  %6 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %args, align 4
  %dma_master_requests = getelementptr inbounds %struct.lpc18xx_dmamux_data, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %dma_master_requests to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_master_requests, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp3.not = icmp ult i32 %7, %9
  br i1 %cmp3.not, label %if.end12, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev8 = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.22, i32 noundef %7) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %arrayidx14 = getelementptr %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp15 = icmp ugt i32 %11, 3
  br i1 %cmp15, label %do.end19, label %if.end24

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %dev20 = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.25, i32 noundef %11) #9
  br label %cleanup

if.end24:                                         ; preds = %if.end12
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #6
  %14 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %13, ptr noundef nonnull @.str.11, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #6
  %15 = ptrtoint ptr %dma_spec to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %dma_spec, align 4
  br label %do.end31

of_parse_phandle.exit:                            ; preds = %if.end24
  %16 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #6
  %18 = ptrtoint ptr %dma_spec to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %dma_spec, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %of_parse_phandle.exit.do.end31_crit_edge, label %do.body36

of_parse_phandle.exit.do.end31_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end31

do.end31:                                         ; preds = %of_parse_phandle.exit.do.end31_crit_edge, %of_parse_phandle.exit.thread
  %dev32 = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32, ptr noundef nonnull @.str.13) #9
  br label %cleanup

do.body36:                                        ; preds = %of_parse_phandle.exit
  %lock = getelementptr inbounds %struct.lpc18xx_dmamux_data, ptr %3, i32 0, i32 5
  %call39 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %muxes = getelementptr inbounds %struct.lpc18xx_dmamux_data, ptr %3, i32 0, i32 1
  %19 = ptrtoint ptr %muxes to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %muxes, align 4
  %busy = getelementptr %struct.lpc18xx_dmamux, ptr %20, i32 %7, i32 1
  %21 = ptrtoint ptr %busy to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %busy, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool45.not = icmp eq i8 %22, 0
  br i1 %tobool45.not, label %if.end56, label %if.then46

if.then46:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call39) #6
  %dev51 = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3
  %23 = ptrtoint ptr %muxes to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %muxes, align 4
  %arrayidx53 = getelementptr %struct.lpc18xx_dmamux, ptr %24, i32 %7
  %25 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx53, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev51, ptr noundef nonnull @.str.30, i32 noundef %7, i32 noundef %7, i32 noundef %26) #9
  %27 = ptrtoint ptr %dma_spec to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dma_spec, align 4
  call void @of_node_put(ptr noundef %28) #6
  br label %cleanup

if.end56:                                         ; preds = %do.body36
  %29 = ptrtoint ptr %busy to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %busy, align 4
  %30 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx14, align 4
  %32 = ptrtoint ptr %muxes to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %muxes, align 4
  %arrayidx63 = getelementptr %struct.lpc18xx_dmamux, ptr %33, i32 %7
  %34 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %31, ptr %arrayidx63, align 4
  %reg = getelementptr inbounds %struct.lpc18xx_dmamux_data, ptr %3, i32 0, i32 4
  %35 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg, align 4
  %mul = shl i32 %7, 1
  %shl = shl i32 3, %mul
  %37 = load ptr, ptr %muxes, align 4
  %arrayidx66 = getelementptr %struct.lpc18xx_dmamux, ptr %37, i32 %7
  %38 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx66, align 4
  %shl69 = shl i32 %39, %mul
  %call.i142 = call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 284, i32 noundef %shl, i32 noundef %shl69, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call39) #6
  %arrayidx73 = getelementptr %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2, i32 2
  %40 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx73, align 4
  %42 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %arrayidx14, align 4
  %43 = ptrtoint ptr %args_count to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2, ptr %args_count, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lpc18xx_dmamux_reserve.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lpc18xx_dmamux_reserve, %do.end91)) #6
          to label %if.then84 [label %do.end91], !srcloc !72

if.then84:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  %dev85 = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3
  %44 = ptrtoint ptr %muxes to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %muxes, align 4
  %arrayidx87 = getelementptr %struct.lpc18xx_dmamux, ptr %45, i32 %7
  %46 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx87, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lpc18xx_dmamux_reserve.__UNIQUE_ID_ddebug229, ptr noundef %dev85, ptr noundef nonnull @.str.33, i32 noundef %7, i32 noundef %47, i32 noundef %7) #6
  br label %do.end91

do.end91:                                         ; preds = %if.then84, %if.end56
  %48 = ptrtoint ptr %muxes to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %muxes, align 4
  %arrayidx93 = getelementptr %struct.lpc18xx_dmamux, ptr %49, i32 %7
  br label %cleanup

cleanup:                                          ; preds = %do.end91, %if.then46, %do.end31, %do.end19, %do.end7, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -22 to ptr), %do.end7 ], [ inttoptr (i32 -22 to ptr), %do.end19 ], [ inttoptr (i32 -16 to ptr), %if.then46 ], [ %arrayidx93, %do.end91 ], [ inttoptr (i32 -22 to ptr), %do.end31 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !20, !21, !22, !24, !26, !27, !28, !30, !31, !32, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !53, !54, !55, !57, !58, !59}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @__initcall__kmod_lpc18xx_dmamux__230_179_lpc18xx_dmamux_init3, !1, !"__initcall__kmod_lpc18xx_dmamux__230_179_lpc18xx_dmamux_init3", i1 false, i1 false}
!1 = !{!"../drivers/dma/lpc18xx-dmamux.c", i32 179, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/dma/lpc18xx-dmamux.c", i32 170, i32 11}
!4 = !{ptr @lpc18xx_dmamux_driver, !5, !"lpc18xx_dmamux_driver", i1 false, i1 false}
!5 = !{!"../drivers/dma/lpc18xx-dmamux.c", i32 167, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/dma/lpc18xx-dmamux.c", i32 120, i32 51}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/dma/lpc18xx-dmamux.c", i32 122, i32 3}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @lpc18xx_dmamux_probe._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @lpc18xx_dmamux_probe._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/dma/lpc18xx-dmamux.c", i32 126, i32 33}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/dma/lpc18xx-dmamux.c", i32 129, i32 3}
!20 = !{ptr @lpc18xx_dmamux_probe._entry.8, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @lpc18xx_dmamux_probe._entry_ptr.10, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/dma/lpc18xx-dmamux.c", i32 133, i32 32}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/dma/lpc18xx-dmamux.c", i32 135, i32 3}
!26 = !{ptr @lpc18xx_dmamux_probe._entry.12, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @lpc18xx_dmamux_probe._entry_ptr.14, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/dma/lpc18xx-dmamux.c", i32 143, i32 3}
!30 = !{ptr @lpc18xx_dmamux_probe._entry.15, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @lpc18xx_dmamux_probe._entry_ptr.17, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @lpc18xx_dmamux_probe.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/dma/lpc18xx-dmamux.c", i32 153, i32 2}
!34 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/dma/lpc18xx-dmamux.c", i32 60, i32 3}
!37 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @lpc18xx_dmamux_reserve._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @lpc18xx_dmamux_reserve._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/dma/lpc18xx-dmamux.c", i32 66, i32 3}
!42 = !{ptr @lpc18xx_dmamux_reserve._entry.21, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @lpc18xx_dmamux_reserve._entry_ptr.23, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/dma/lpc18xx-dmamux.c", i32 72, i32 3}
!46 = !{ptr @lpc18xx_dmamux_reserve._entry.24, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @lpc18xx_dmamux_reserve._entry_ptr.26, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @lpc18xx_dmamux_reserve._entry.27, !49, !"_entry", i1 false, i1 false}
!49 = !{!"../drivers/dma/lpc18xx-dmamux.c", i32 80, i32 3}
!50 = !{ptr @lpc18xx_dmamux_reserve._entry_ptr.28, !49, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.30, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/dma/lpc18xx-dmamux.c", i32 87, i32 3}
!53 = !{ptr @lpc18xx_dmamux_reserve._entry.29, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @lpc18xx_dmamux_reserve._entry_ptr.31, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.32, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/dma/lpc18xx-dmamux.c", i32 104, i32 2}
!57 = !{ptr @.str.33, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @lpc18xx_dmamux_reserve.__UNIQUE_ID_ddebug229, !56, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!59 = !{ptr @lpc18xx_dmamux_match, !60, !"lpc18xx_dmamux_match", i1 false, i1 false}
!60 = !{!"../drivers/dma/lpc18xx-dmamux.c", i32 162, i32 34}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{!"branch_weights", i32 1, i32 2000}
!71 = !{i8 0, i8 2}
!72 = !{i64 2148309548, i64 2148309553, i64 2148309566, i64 2148309610, i64 2148309644, i64 2148309665}
