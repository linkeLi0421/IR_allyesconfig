; ModuleID = '/llk/IR_all_yes/kernel/dma/contiguous.c_pt.bc'
source_filename = "../kernel/dma/contiguous.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.reserved_mem_ops = type { ptr, ptr }
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
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.reserved_mem = type { ptr, i32, i32, ptr, i32, i32, ptr }

@__setup_str_early_cma = internal constant [4 x i8] c"cma\00", section ".init.rodata", align 1
@__setup_early_cma = internal global %struct.obs_kernel_param { ptr @__setup_str_early_cma, ptr @early_cma, i32 1 }, section ".init.setup", align 4
@__setup_str_early_cma_pernuma = internal constant [12 x i8] c"cma_pernuma\00", section ".init.rodata", align 1
@__setup_early_cma_pernuma = internal global %struct.obs_kernel_param { ptr @__setup_str_early_cma_pernuma, ptr @early_cma_pernuma, i32 1 }, section ".init.setup", align 4
@pernuma_size_bytes = internal unnamed_addr global i32 0, section ".init.data", align 4
@dma_contiguous_pernuma_area = internal global { [1 x ptr], [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pernuma%d\00", [22 x i8] zeroinitializer }, align 32
@dma_pernuma_cma_reserve._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014cma: %s: reservation failed: err %d, node %d\00", [49 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dma_pernuma_cma_reserve\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"kernel/dma/contiguous.c\00", [40 x i8] zeroinitializer }, align 32
@dma_pernuma_cma_reserve._entry_ptr = internal global ptr @dma_pernuma_cma_reserve._entry, section ".printk_index", align 4
@dma_pernuma_cma_reserve.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 0, i8 38, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"contiguous\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: reserved %llu MiB on node %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"cma: %s: reserved %llu MiB on node %d\0A\00", [57 x i8] zeroinitializer }, align 32
@dma_contiguous_reserve.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.7, ptr @.str.3, ptr @.str.8, i8 0, i8 43, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dma_contiguous_reserve\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s(limit %08lx)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cma: %s(limit %08lx)\0A\00", [42 x i8] zeroinitializer }, align 32
@size_cmdline = internal unnamed_addr global i32 -1, section ".init.data", align 4
@base_cmdline = internal unnamed_addr global i32 0, section ".init.data", align 4
@limit_cmdline = internal unnamed_addr global i32 0, section ".init.data", align 4
@dma_contiguous_default_area = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@dma_contiguous_reserve.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.7, ptr @.str.3, ptr @.str.10, i8 0, i8 49, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: reserving %ld MiB for global area\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"cma: %s: reserving %ld MiB for global area\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reserved\00", [23 x i8] zeroinitializer }, align 32
@__of_table_cma = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"shared-dma-pool\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rmem_cma_setup }, section "__reservedmem_of_table", align 4
@early_cma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 81, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013cma: Config string not provided\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"early_cma\00", [22 x i8] zeroinitializer }, align 32
@early_cma._entry_ptr = internal global ptr @early_cma._entry, section ".printk_index", align 4
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(p))\00", [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"linux,cma-default\00", [46 x i8] zeroinitializer }, align 32
@rmem_cma_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016Reserved memory: bypass %s node, using cmdline CMA params instead\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rmem_cma_setup\00", [17 x i8] zeroinitializer }, align 32
@rmem_cma_setup._entry_ptr = internal global ptr @rmem_cma_setup._entry, section ".printk_index", align 4
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reusable\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"no-map\00", [25 x i8] zeroinitializer }, align 32
@rmem_cma_setup._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.18, ptr @.str.3, i32 420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013Reserved memory: incorrect alignment of CMA region\0A\00", [42 x i8] zeroinitializer }, align 32
@rmem_cma_setup._entry_ptr.23 = internal global ptr @rmem_cma_setup._entry.21, section ".printk_index", align 4
@rmem_cma_setup._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.18, ptr @.str.3, i32 426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013Reserved memory: unable to setup CMA region\0A\00", [49 x i8] zeroinitializer }, align 32
@rmem_cma_setup._entry_ptr.26 = internal global ptr @rmem_cma_setup._entry.24, section ".printk_index", align 4
@rmem_cma_ops = internal constant { %struct.reserved_mem_ops, [24 x i8] } { %struct.reserved_mem_ops { ptr @rmem_cma_device_init, ptr @rmem_cma_device_release }, [24 x i8] zeroinitializer }, align 32
@rmem_cma_setup._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.18, ptr @.str.3, i32 439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016Reserved memory: created CMA memory pool at %pa, size %ld MiB\0A\00", [63 x i8] zeroinitializer }, align 32
@rmem_cma_setup._entry_ptr.29 = internal global ptr @rmem_cma_setup._entry.27, section ".printk_index", align 4
@___asan_gen_.30 = private unnamed_addr constant [28 x i8] c"dma_contiguous_pernuma_area\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 101, i32 20 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 143, i32 32 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 147, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 152, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 174, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [28 x i8] c"dma_contiguous_default_area\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 60, i32 13 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 195, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 234, i32 6 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 81, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 1368, i32 10 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 405, i32 47 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 410, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 415, i32 33 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 416, i32 32 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 420, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 426, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [13 x i8] c"rmem_cma_ops\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 395, i32 38 }
@___asan_gen_.123 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.127 = private constant [27 x i8] c"../kernel/dma/contiguous.c\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 438, i32 2 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__of_table_cma, ptr @__setup_early_cma, ptr @__setup_early_cma_pernuma, ptr @dma_pernuma_cma_reserve._entry, ptr @dma_pernuma_cma_reserve._entry_ptr, ptr @early_cma._entry, ptr @early_cma._entry_ptr, ptr @rmem_cma_setup._entry, ptr @rmem_cma_setup._entry.21, ptr @rmem_cma_setup._entry.24, ptr @rmem_cma_setup._entry.27, ptr @rmem_cma_setup._entry_ptr, ptr @rmem_cma_setup._entry_ptr.23, ptr @rmem_cma_setup._entry_ptr.26, ptr @rmem_cma_setup._entry_ptr.29, ptr @dma_contiguous_pernuma_area, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @dma_contiguous_default_area, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @rmem_cma_ops, ptr @.str.28], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_contiguous_pernuma_area to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_pernuma_cma_reserve._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_contiguous_default_area to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @early_cma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmem_cma_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmem_cma_setup._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmem_cma_setup._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmem_cma_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmem_cma_setup._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @early_cma(ptr noundef %p) #0 section ".init.text" align 64 {
entry:
  %p.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %p, ptr %p.addr, align 4
  %tobool.not = icmp eq ptr %p, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #12
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i64 @memparse(ptr noundef nonnull %p, ptr noundef nonnull %p.addr) #9
  %conv = trunc i64 %call1 to i32
  store i32 %conv, ptr @size_cmdline, align 4
  %1 = ptrtoint ptr %p.addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %p.addr, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %4)
  %cmp.not = icmp eq i8 %4, 64
  br i1 %cmp.not, label %if.end5, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end5:                                          ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %2, i32 1
  %call6 = call i64 @memparse(ptr noundef %add.ptr, ptr noundef nonnull %p.addr) #9
  %conv7 = trunc i64 %call6 to i32
  store i32 %conv7, ptr @base_cmdline, align 4
  %5 = ptrtoint ptr %p.addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %p.addr, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %8)
  %cmp9.not = icmp eq i8 %8, 45
  br i1 %cmp9.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %9 = load i32, ptr @size_cmdline, align 4
  %add = add i32 %9, %conv7
  store i32 %add, ptr @limit_cmdline, align 4
  br label %return

if.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr13 = getelementptr i8, ptr %6, i32 1
  %call14 = call i64 @memparse(ptr noundef %add.ptr13, ptr noundef nonnull %p.addr) #9
  %conv15 = trunc i64 %call14 to i32
  store i32 %conv15, ptr @limit_cmdline, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.then11, %if.end.return_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.then11 ], [ 0, %if.end12 ], [ -22, %do.end ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @early_cma_pernuma(ptr noundef %p) #0 section ".init.text" align 64 {
entry:
  %p.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %p, ptr %p.addr, align 4
  %call = call i64 @memparse(ptr noundef %p, ptr noundef nonnull %p.addr) #9
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr @pernuma_size_bytes, align 4
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @dma_pernuma_cma_reserve() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %name = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @pernuma_size_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup20_crit_edge, label %for.body

entry.cleanup20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup20

for.body:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %name) #9
  %1 = call ptr @memset(ptr %name, i32 255, i32 64)
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 64, ptr noundef nonnull @.str, i32 noundef 0)
  %2 = load i32, ptr @pernuma_size_bytes, align 4
  %call2 = call i32 @cma_declare_contiguous_nid(i32 noundef 0, i32 noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false, ptr noundef nonnull %name, ptr noundef nonnull @dma_contiguous_pernuma_area, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.body7, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %call2, i32 noundef 0) #12
  br label %cleanup

do.body7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dma_pernuma_cma_reserve.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dma_pernuma_cma_reserve, %cleanup)) #9
          to label %if.then14 [label %cleanup], !srcloc !85

if.then14:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  %3 = load i32, ptr @pernuma_size_bytes, align 4
  %4 = lshr i32 %3, 20
  %div = zext i32 %4 to i64
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dma_pernuma_cma_reserve.__UNIQUE_ID_ddebug229, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i64 noundef %div, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %do.body7, %do.end
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %name) #9
  br label %cleanup20

cleanup20:                                        ; preds = %cleanup, %entry.cleanup20_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @cma_declare_contiguous_nid(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @dma_contiguous_reserve(i32 noundef %limit) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dma_contiguous_reserve.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dma_contiguous_reserve, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !85

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dma_contiguous_reserve.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, i32 noundef %limit) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = load i32, ptr @size_cmdline, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %cmp.not = icmp eq i32 %0, -1
  br i1 %cmp.not, label %do.end.land.lhs.true_crit_edge, label %if.then4

do.end.land.lhs.true_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.then4:                                         ; preds = %do.end
  %1 = load i32, ptr @base_cmdline, align 4
  %2 = load i32, ptr @limit_cmdline, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp6 = icmp eq i32 %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %limit)
  %cmp7 = icmp eq i32 %limit, 0
  %3 = tail call i32 @llvm.umin.i32(i32 %2, i32 %limit)
  %spec.select = select i1 %cmp7, i32 %2, i32 %3
  %cond17 = select i1 %cmp6, i32 %limit, i32 %spec.select
  %add = add i32 %1, %0
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %2)
  %cmp18 = icmp eq i32 %add, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool22.not = icmp eq i32 %0, 0
  br i1 %tobool22.not, label %if.then4.if.end45_crit_edge, label %if.then4.land.lhs.true_crit_edge

if.then4.land.lhs.true_crit_edge:                 ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.then4.if.end45_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

land.lhs.true:                                    ; preds = %if.then4.land.lhs.true_crit_edge, %do.end.land.lhs.true_crit_edge
  %selected_size.070 = phi i32 [ %0, %if.then4.land.lhs.true_crit_edge ], [ 16777216, %do.end.land.lhs.true_crit_edge ]
  %selected_base.069 = phi i32 [ %1, %if.then4.land.lhs.true_crit_edge ], [ 0, %do.end.land.lhs.true_crit_edge ]
  %selected_limit.068 = phi i32 [ %cond17, %if.then4.land.lhs.true_crit_edge ], [ %limit, %do.end.land.lhs.true_crit_edge ]
  %fixed.0.off067 = phi i1 [ %cmp18, %if.then4.land.lhs.true_crit_edge ], [ false, %do.end.land.lhs.true_crit_edge ]
  %4 = load ptr, ptr @dma_contiguous_default_area, align 4
  %tobool23.not = icmp eq ptr %4, null
  br i1 %tobool23.not, label %do.body25, label %land.lhs.true.if.end45_crit_edge

land.lhs.true.if.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

do.body25:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dma_contiguous_reserve.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dma_contiguous_reserve, %do.end42)) #9
          to label %if.then39 [label %do.end42], !srcloc !85

if.then39:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #11
  %div57 = lshr i32 %selected_size.070, 20
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dma_contiguous_reserve.__UNIQUE_ID_ddebug233, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.7, i32 noundef %div57) #9
  br label %do.end42

do.end42:                                         ; preds = %if.then39, %do.body25
  %call44 = tail call i32 @dma_contiguous_reserve_area(i32 noundef %selected_size.070, i32 noundef %selected_base.069, i32 noundef %selected_limit.068, ptr noundef nonnull @dma_contiguous_default_area, i1 noundef zeroext %fixed.0.off067) #13
  br label %if.end45

if.end45:                                         ; preds = %do.end42, %land.lhs.true.if.end45_crit_edge, %if.then4.if.end45_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dma_contiguous_reserve_area(i32 noundef %size, i32 noundef %base, i32 noundef %limit, ptr noundef %res_cma, i1 noundef zeroext %fixed) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @cma_declare_contiguous_nid(i32 noundef %base, i32 noundef %size, i32 noundef %limit, i32 noundef 0, i32 noundef 0, i1 noundef zeroext %fixed, ptr noundef nonnull @.str.12, ptr noundef %res_cma, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %res_cma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res_cma, align 4
  %call2 = tail call i32 @cma_get_base(ptr noundef %1) #9
  %2 = ptrtoint ptr %res_cma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %res_cma, align 4
  %call3 = tail call i32 @cma_get_size(ptr noundef %3) #9
  tail call void @dma_contiguous_early_fixup(i32 noundef %call2, i32 noundef %call3)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @dma_contiguous_early_fixup(i32 noundef %base, i32 noundef %size) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cma_get_base(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cma_get_size(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dma_alloc_from_contiguous(ptr noundef readonly %dev, i32 noundef %count, i32 noundef %align, i1 noundef zeroext %no_warn) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %cma_area.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 25
  %0 = ptrtoint ptr %cma_area.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cma_area.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.dev_get_cma_area.exit_crit_edge

land.lhs.true.i.dev_get_cma_area.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_get_cma_area.exit

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %2 = load ptr, ptr @dma_contiguous_default_area, align 4
  br label %dev_get_cma_area.exit

dev_get_cma_area.exit:                            ; preds = %if.end.i, %land.lhs.true.i.dev_get_cma_area.exit_crit_edge
  %retval.0.i = phi ptr [ %2, %if.end.i ], [ %1, %land.lhs.true.i.dev_get_cma_area.exit_crit_edge ]
  %3 = tail call i32 @llvm.umin.i32(i32 %align, i32 8)
  %call1 = tail call ptr @cma_alloc(ptr noundef %retval.0.i, i32 noundef %count, i32 noundef %3, i1 noundef zeroext %no_warn) #9
  ret ptr %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cma_alloc(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dma_release_from_contiguous(ptr noundef readonly %dev, ptr noundef %pages, i32 noundef %count) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %cma_area.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 25
  %0 = ptrtoint ptr %cma_area.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cma_area.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.dev_get_cma_area.exit_crit_edge

land.lhs.true.i.dev_get_cma_area.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_get_cma_area.exit

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %2 = load ptr, ptr @dma_contiguous_default_area, align 4
  br label %dev_get_cma_area.exit

dev_get_cma_area.exit:                            ; preds = %if.end.i, %land.lhs.true.i.dev_get_cma_area.exit_crit_edge
  %retval.0.i = phi ptr [ %2, %if.end.i ], [ %1, %land.lhs.true.i.dev_get_cma_area.exit_crit_edge ]
  %call1 = tail call zeroext i1 @cma_release(ptr noundef %retval.0.i, ptr noundef %pages, i32 noundef %count) #9
  ret i1 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cma_release(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dma_alloc_contiguous(ptr nocapture noundef readonly %dev, i32 noundef %size, i32 noundef %gfp) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %gfp, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup24_crit_edge, label %if.end

entry.cleanup24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup24

if.end:                                           ; preds = %entry
  %cma_area = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 25
  %0 = ptrtoint ptr %cma_area to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cma_area, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end5, label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.end
  %dec.i.i = add i32 %size, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i.i)
  %tobool.not.i.i.i = icmp ult i32 %dec.i.i, 4096
  br i1 %tobool.not.i.i.i, label %if.end14.i.i.get_order.exit.thread.i_crit_edge, label %get_order.exit.i

if.end14.i.i.get_order.exit.thread.i_crit_edge:   ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_order.exit.thread.i

get_order.exit.i:                                 ; preds = %if.end14.i.i
  %shr.i.i = lshr i32 %dec.i.i, 12
  %2 = tail call i32 @llvm.ctlz.i32(i32 %shr.i.i, i1 true) #9, !range !86
  %sub.i.i.i = sub nuw nsw i32 32, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %dec.i.i)
  %cmp.i = icmp ult i32 %dec.i.i, 524288
  br i1 %cmp.i, label %get_order.exit.i.get_order.exit.thread.i_crit_edge, label %get_order.exit.i.cma_alloc_aligned.exit_crit_edge

get_order.exit.i.cma_alloc_aligned.exit_crit_edge: ; preds = %get_order.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cma_alloc_aligned.exit

get_order.exit.i.get_order.exit.thread.i_crit_edge: ; preds = %get_order.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_order.exit.thread.i

get_order.exit.thread.i:                          ; preds = %get_order.exit.i.get_order.exit.thread.i_crit_edge, %if.end14.i.i.get_order.exit.thread.i_crit_edge
  %retval.0.i7.i = phi i32 [ %sub.i.i.i, %get_order.exit.i.get_order.exit.thread.i_crit_edge ], [ 0, %if.end14.i.i.get_order.exit.thread.i_crit_edge ]
  br label %cma_alloc_aligned.exit

cma_alloc_aligned.exit:                           ; preds = %get_order.exit.thread.i, %get_order.exit.i.cma_alloc_aligned.exit_crit_edge
  %3 = phi i32 [ %retval.0.i7.i, %get_order.exit.thread.i ], [ 8, %get_order.exit.i.cma_alloc_aligned.exit_crit_edge ]
  %shr.i = lshr i32 %size, 12
  %and.i39 = and i32 %gfp, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i39)
  %tobool.i40 = icmp ne i32 %and.i39, 0
  %call1.i = tail call ptr @cma_alloc(ptr noundef nonnull %1, i32 noundef %shr.i, i32 noundef %3, i1 noundef zeroext %tobool.i40) #9
  br label %cleanup24

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %size)
  %cmp = icmp ult i32 %size, 4097
  br i1 %cmp, label %if.end5.cleanup24_crit_edge, label %if.end19

if.end5.cleanup24_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup24

if.end19:                                         ; preds = %if.end5
  %4 = load ptr, ptr @dma_contiguous_default_area, align 4
  %tobool20.not = icmp eq ptr %4, null
  br i1 %tobool20.not, label %if.end19.cleanup24_crit_edge, label %get_order.exit.i58

if.end19.cleanup24_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup24

get_order.exit.i58:                               ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i45 = add i32 %size, -1
  %shr.i.i52 = lshr i32 %sub.i.i45, 12
  %5 = tail call i32 @llvm.ctlz.i32(i32 %shr.i.i52, i1 true) #9, !range !86
  %sub.i.i.i54 = sub nuw nsw i32 32, %5
  %6 = tail call i32 @llvm.smin.i32(i32 %sub.i.i.i54, i32 8)
  %shr.i61 = lshr i32 %size, 12
  %and.i62 = and i32 %gfp, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i62)
  %tobool.i63 = icmp ne i32 %and.i62, 0
  %call1.i64 = tail call ptr @cma_alloc(ptr noundef nonnull %4, i32 noundef %shr.i61, i32 noundef %6, i1 noundef zeroext %tobool.i63) #9
  br label %cleanup24

cleanup24:                                        ; preds = %get_order.exit.i58, %if.end19.cleanup24_crit_edge, %if.end5.cleanup24_crit_edge, %cma_alloc_aligned.exit, %entry.cleanup24_crit_edge
  %retval.1 = phi ptr [ %call1.i, %cma_alloc_aligned.exit ], [ %call1.i64, %get_order.exit.i58 ], [ null, %entry.cleanup24_crit_edge ], [ null, %if.end5.cleanup24_crit_edge ], [ null, %if.end19.cleanup24_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dma_free_contiguous(ptr nocapture noundef readonly %dev, ptr noundef %page, i32 noundef %size) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %size, 4095
  %shr = lshr i32 %add, 12
  %cma_area = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 25
  %0 = ptrtoint ptr %cma_area to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cma_area, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call zeroext i1 @cma_release(ptr noundef nonnull %1, ptr noundef %page, i32 noundef %shr) #9
  br i1 %call, label %if.then.cleanup_crit_edge, label %if.then.get_order.exit_crit_edge

if.then.get_order.exit_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_order.exit

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %entry
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i.not.i = icmp eq i32 %3, -1
  br i1 %cmp.i.not.i, label %if.then.i20, label %page_to_nid.exit, !prof !87

if.then.i20:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.15) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #9, !srcloc !88
  unreachable

page_to_nid.exit:                                 ; preds = %if.else
  %4 = load ptr, ptr @dma_contiguous_pernuma_area, align 4
  %call4 = tail call zeroext i1 @cma_release(ptr noundef %4, ptr noundef %page, i32 noundef %shr) #9
  br i1 %call4, label %page_to_nid.exit.cleanup_crit_edge, label %if.end6

page_to_nid.exit.cleanup_crit_edge:               ; preds = %page_to_nid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %page_to_nid.exit
  %5 = load ptr, ptr @dma_contiguous_default_area, align 4
  %call7 = tail call zeroext i1 @cma_release(ptr noundef %5, ptr noundef %page, i32 noundef %shr) #9
  br i1 %call7, label %if.end6.cleanup_crit_edge, label %if.end6.get_order.exit_crit_edge

if.end6.get_order.exit_crit_edge:                 ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_order.exit

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

get_order.exit:                                   ; preds = %if.end6.get_order.exit_crit_edge, %if.then.get_order.exit_crit_edge
  %dec.i = add i32 %size, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i)
  %tobool.not.i.i = icmp ult i32 %dec.i, 4096
  %shr.i = lshr i32 %dec.i, 12
  %6 = tail call i32 @llvm.ctlz.i32(i32 %shr.i, i1 true) #9, !range !86
  %sub.i.i = sub nuw nsw i32 32, %6
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  tail call void @__free_pages(ptr noundef %page, i32 noundef %cond.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %get_order.exit, %if.end6.cleanup_crit_edge, %page_to_nid.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rmem_cma_setup(ptr noundef %rmem) #0 section ".init.text" align 64 {
entry:
  %cma = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fdt_node = getelementptr inbounds %struct.reserved_mem, ptr %rmem, i32 0, i32 1
  %0 = ptrtoint ptr %fdt_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fdt_node, align 4
  %call = tail call ptr @of_get_flat_dt_prop(i32 noundef %1, ptr noundef nonnull @.str.16, ptr noundef null) #9
  %tobool.not = icmp eq ptr %call, null
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cma) #9
  %2 = ptrtoint ptr %cma to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %cma, align 4, !annotation !89
  %3 = load i32, ptr @size_cmdline, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.not = icmp eq i32 %3, -1
  %brmerge = select i1 %cmp.not, i1 true, i1 %tobool.not
  br i1 %brmerge, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %rmem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmem, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %5) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @of_get_flat_dt_prop(i32 noundef %1, ptr noundef nonnull @.str.19, ptr noundef null) #9
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %call5 = tail call ptr @of_get_flat_dt_prop(i32 noundef %1, ptr noundef nonnull @.str.20, ptr noundef null) #9
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end8, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %base = getelementptr inbounds %struct.reserved_mem, ptr %rmem, i32 0, i32 4
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base, align 4
  %and = and i32 %7, 8388607
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %lor.lhs.false10, label %if.end8.do.end16_crit_edge

if.end8.do.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

lor.lhs.false10:                                  ; preds = %if.end8
  %size = getelementptr inbounds %struct.reserved_mem, ptr %rmem, i32 0, i32 5
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  %and11 = and i32 %9, 8388607
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end19, label %lor.lhs.false10.do.end16_crit_edge

lor.lhs.false10.do.end16_crit_edge:               ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

do.end16:                                         ; preds = %lor.lhs.false10.do.end16_crit_edge, %if.end8.do.end16_crit_edge
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #12
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false10
  %10 = ptrtoint ptr %rmem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmem, align 4
  %call23 = call i32 @cma_init_reserved_mem(i32 noundef %7, i32 noundef %9, i32 noundef 0, ptr noundef %11, ptr noundef nonnull %cma) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end31, label %do.end28

do.end28:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #12
  br label %cleanup

if.end31:                                         ; preds = %if.end19
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base, align 4
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size, align 4
  call void @dma_contiguous_early_fixup(i32 noundef %13, i32 noundef %15)
  br i1 %tobool.not, label %if.end31.if.end36_crit_edge, label %if.then35

if.end31.if.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %cma to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cma, align 4
  store ptr %17, ptr @dma_contiguous_default_area, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end31.if.end36_crit_edge
  %ops = getelementptr inbounds %struct.reserved_mem, ptr %rmem, i32 0, i32 3
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @rmem_cma_ops, ptr %ops, align 4
  %19 = ptrtoint ptr %cma to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cma, align 4
  %priv = getelementptr inbounds %struct.reserved_mem, ptr %rmem, i32 0, i32 6
  %21 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %priv, align 4
  %22 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size, align 4
  %div66 = lshr i32 %23, 20
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %base, i32 noundef %div66) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %do.end28, %do.end16, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ -22, %do.end16 ], [ %call23, %do.end28 ], [ 0, %if.end36 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cma) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @memparse(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_flat_dt_prop(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cma_init_reserved_mem(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rmem_cma_device_init(ptr nocapture noundef readonly %rmem, ptr nocapture noundef writeonly %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.reserved_mem, ptr %rmem, i32 0, i32 6
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %cma_area = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 25
  %2 = ptrtoint ptr %cma_area to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %cma_area, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @rmem_cma_device_release(ptr nocapture noundef readnone %rmem, ptr nocapture noundef writeonly %dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cma_area = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 25
  %0 = ptrtoint ptr %cma_area to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %cma_area, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !28, !30, !32, !34, !36, !38, !40, !41, !43, !44, !45, !46, !47, !49, !51, !53, !55, !56, !57, !58, !60, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @__setup_early_cma, !1, !"__setup_early_cma", i1 false, i1 false}
!1 = !{!"../kernel/dma/contiguous.c", i32 97, i32 1}
!2 = !{ptr @__setup_early_cma_pernuma, !3, !"__setup_early_cma_pernuma", i1 false, i1 false}
!3 = !{!"../kernel/dma/contiguous.c", i32 109, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../kernel/dma/contiguous.c", i32 143, i32 32}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../kernel/dma/contiguous.c", i32 147, i32 4}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @dma_pernuma_cma_reserve._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @dma_pernuma_cma_reserve._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../kernel/dma/contiguous.c", i32 152, i32 3}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @dma_pernuma_cma_reserve.__UNIQUE_ID_ddebug229, !13, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!16 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../kernel/dma/contiguous.c", i32 174, i32 2}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @dma_contiguous_reserve.__UNIQUE_ID_ddebug230, !18, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!21 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../kernel/dma/contiguous.c", i32 195, i32 3}
!24 = !{ptr @dma_contiguous_reserve.__UNIQUE_ID_ddebug233, !23, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!25 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../kernel/dma/contiguous.c", i32 234, i32 6}
!28 = !{ptr @__of_table_cma, !29, !"__of_table_cma", i1 false, i1 false}
!29 = !{!"../kernel/dma/contiguous.c", i32 443, i32 1}
!30 = !{ptr @dma_contiguous_default_area, !31, !"dma_contiguous_default_area", i1 false, i1 false}
!31 = !{!"../kernel/dma/contiguous.c", i32 60, i32 13}
!32 = !{ptr @base_cmdline, !33, !"base_cmdline", i1 false, i1 false}
!33 = !{!"../kernel/dma/contiguous.c", i32 75, i32 20}
!34 = !{ptr @limit_cmdline, !35, !"limit_cmdline", i1 false, i1 false}
!35 = !{!"../kernel/dma/contiguous.c", i32 76, i32 20}
!36 = !{ptr @dma_contiguous_pernuma_area, !37, !"dma_contiguous_pernuma_area", i1 false, i1 false}
!37 = !{!"../kernel/dma/contiguous.c", i32 101, i32 20}
!38 = !{ptr @pernuma_size_bytes, !39, !"pernuma_size_bytes", i1 false, i1 false}
!39 = !{!"../kernel/dma/contiguous.c", i32 102, i32 20}
!40 = !{ptr @__setup_str_early_cma, !1, !"__setup_str_early_cma", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../kernel/dma/contiguous.c", i32 81, i32 3}
!43 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @early_cma._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @early_cma._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @__setup_str_early_cma_pernuma, !3, !"__setup_str_early_cma_pernuma", i1 false, i1 false}
!47 = !{ptr @size_cmdline, !48, !"size_cmdline", i1 false, i1 false}
!48 = !{!"../kernel/dma/contiguous.c", i32 74, i32 21}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../include/linux/mm.h", i32 1368, i32 10}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../kernel/dma/contiguous.c", i32 405, i32 47}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../kernel/dma/contiguous.c", i32 410, i32 3}
!55 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @rmem_cma_setup._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @rmem_cma_setup._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../kernel/dma/contiguous.c", i32 415, i32 33}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../kernel/dma/contiguous.c", i32 416, i32 32}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../kernel/dma/contiguous.c", i32 420, i32 3}
!64 = !{ptr @rmem_cma_setup._entry.21, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @rmem_cma_setup._entry_ptr.23, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../kernel/dma/contiguous.c", i32 426, i32 3}
!68 = !{ptr @rmem_cma_setup._entry.24, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @rmem_cma_setup._entry_ptr.26, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../kernel/dma/contiguous.c", i32 438, i32 2}
!72 = !{ptr @rmem_cma_setup._entry.27, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @rmem_cma_setup._entry_ptr.29, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @rmem_cma_ops, !75, !"rmem_cma_ops", i1 false, i1 false}
!75 = !{!"../kernel/dma/contiguous.c", i32 395, i32 38}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{i64 2148830396, i64 2148830401, i64 2148830414, i64 2148830458, i64 2148830492, i64 2148830513}
!86 = !{i32 0, i32 33}
!87 = !{!"branch_weights", i32 1, i32 2000}
!88 = !{i64 2153173071, i64 2153173555, i64 2153173108, i64 2153173164, i64 2153173198, i64 2153173222, i64 2153173263, i64 2153173284, i64 2153173312, i64 2153173346}
!89 = !{!"auto-init"}
