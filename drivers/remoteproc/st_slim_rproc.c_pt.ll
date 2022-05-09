; ModuleID = '/llk/IR_all_yes/drivers/remoteproc/st_slim_rproc.c_pt.bc'
source_filename = "../drivers/remoteproc/st_slim_rproc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+st_slim_rproc_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_st_slim_rproc_alloc\09\09\09\09"
module asm "\09.long\09__crc_st_slim_rproc_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_st_slim_rproc_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22st_slim_rproc_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_st_slim_rproc_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+st_slim_rproc_put\22, \22a\22\09"
module asm "\09.weak\09__crc_st_slim_rproc_put\09\09\09\09"
module asm "\09.long\09__crc_st_slim_rproc_put\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_st_slim_rproc_put:\09\09\09\09\09"
module asm "\09.asciz \09\22st_slim_rproc_put\22\09\09\09\09\09"
module asm "__kstrtabns_st_slim_rproc_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rproc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.rproc = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.device, %struct.atomic_t, i32, i32, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, %struct.list_head, i64, %struct.list_head, %struct.list_head, %struct.idr, i32, %struct.work_struct, i32, i8, i32, ptr, ptr, ptr, i32, i8, i8, %struct.list_head, i32, i8, i16, %struct.cdev, i8 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.st_slim_rproc = type { ptr, [2 x %struct.st_slim_mem], ptr, ptr, [4 x ptr] }
%struct.st_slim_mem = type { ptr, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"st,slim-rproc\00", [18 x i8] zeroinitializer }, align 32
@slim_rproc_ops = internal constant { %struct.rproc_ops, [60 x i8] } { %struct.rproc_ops { ptr null, ptr null, ptr @slim_rproc_start, ptr @slim_rproc_stop, ptr null, ptr null, ptr null, ptr @slim_rproc_da_to_va, ptr null, ptr null, ptr null, ptr null, ptr @rproc_elf_load_segments, ptr @rproc_elf_sanity_check, ptr @rproc_elf_get_boot_addr, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@st_slim_rproc_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 255, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"devm_ioremap_resource failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"st_slim_rproc_alloc\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/remoteproc/st_slim_rproc.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@st_slim_rproc_alloc._entry_ptr = internal global ptr @st_slim_rproc_alloc._entry, section ".printk_index", align 4
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"slimcore\00", [23 x i8] zeroinitializer }, align 32
@st_slim_rproc_alloc._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 266, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to ioremap slimcore IO\0A\00", [33 x i8] zeroinitializer }, align 32
@st_slim_rproc_alloc._entry_ptr.9 = internal global ptr @st_slim_rproc_alloc._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"peripherals\00", [20 x i8] zeroinitializer }, align 32
@st_slim_rproc_alloc._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 274, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to ioremap peripherals IO\0A\00", [62 x i8] zeroinitializer }, align 32
@st_slim_rproc_alloc._entry_ptr.13 = internal global ptr @st_slim_rproc_alloc._entry.11, section ".printk_index", align 4
@st_slim_rproc_alloc._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 285, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to enable clocks\0A\00", [39 x i8] zeroinitializer }, align 32
@st_slim_rproc_alloc._entry_ptr.16 = internal global ptr @st_slim_rproc_alloc._entry.14, section ".printk_index", align 4
@st_slim_rproc_alloc._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 292, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"registration of slim remoteproc failed\0A\00", [56 x i8] zeroinitializer }, align 32
@st_slim_rproc_alloc._entry_ptr.19 = internal global ptr @st_slim_rproc_alloc._entry.17, section ".printk_index", align 4
@__kstrtab_st_slim_rproc_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_st_slim_rproc_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_st_slim_rproc_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @st_slim_rproc_alloc to i32), ptr @__kstrtab_st_slim_rproc_alloc, ptr @__kstrtabns_st_slim_rproc_alloc }, section "___ksymtab+st_slim_rproc_alloc", align 4
@__kstrtab_st_slim_rproc_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_st_slim_rproc_put = external dso_local constant [0 x i8], align 1
@__ksymtab_st_slim_rproc_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @st_slim_rproc_put to i32), ptr @__kstrtab_st_slim_rproc_put, ptr @__kstrtabns_st_slim_rproc_put }, section "___ksymtab+st_slim_rproc_put", align 4
@__UNIQUE_ID_author229 = internal constant [62 x i8] c"st_slim_rproc.author=Peter Griffin <peter.griffin@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description230 = internal constant [68 x i8] c"st_slim_rproc.description=STMicroelectronics SLIM core rproc driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [52 x i8] c"st_slim_rproc.file=drivers/remoteproc/st_slim_rproc\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [29 x i8] c"st_slim_rproc.license=GPL v2\00", section ".modinfo", align 1
@slim_rproc_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 149, ptr @.str.22, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"fw rev:%ld.%ld on SLIM %ld.%ld\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"slim_rproc_start\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@slim_rproc_start._entry_ptr = internal global ptr @slim_rproc_start._entry, section ".printk_index", align 4
@slim_rproc_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 170, ptr @.str.25, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to disable SLIM\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"slim_rproc_stop\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@slim_rproc_stop._entry_ptr = internal global ptr @slim_rproc_stop._entry, section ".printk_index", align 4
@slim_rproc_stop.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.24, ptr @.str.3, ptr @.str.27, i8 0, i8 43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"st_slim_rproc\00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"slim stopped\0A\00", [18 x i8] zeroinitializer }, align 32
@slim_rproc_da_to_va.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"slim_rproc_da_to_va\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"da = 0x%llx len = 0x%zx va = 0x%pK\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dmem\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"imem\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 235, i32 35 }
@___asan_gen_.35 = private unnamed_addr constant [15 x i8] c"slim_rproc_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 200, i32 31 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 255, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 263, i32 59 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 266, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 271, i32 59 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 274, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 285, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 292, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 147, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 170, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 172, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 194, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 54, i32 19 }
@___asan_gen_.125 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.126 = private constant [38 x i8] c"../drivers/remoteproc/st_slim_rproc.c\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 55, i32 19 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__ksymtab_st_slim_rproc_alloc, ptr @__ksymtab_st_slim_rproc_put, ptr @slim_rproc_start._entry, ptr @slim_rproc_start._entry_ptr, ptr @slim_rproc_stop._entry, ptr @slim_rproc_stop._entry_ptr, ptr @st_slim_rproc_alloc._entry, ptr @st_slim_rproc_alloc._entry.11, ptr @st_slim_rproc_alloc._entry.14, ptr @st_slim_rproc_alloc._entry.17, ptr @st_slim_rproc_alloc._entry.7, ptr @st_slim_rproc_alloc._entry_ptr, ptr @st_slim_rproc_alloc._entry_ptr.13, ptr @st_slim_rproc_alloc._entry_ptr.16, ptr @st_slim_rproc_alloc._entry_ptr.19, ptr @st_slim_rproc_alloc._entry_ptr.9, ptr @.str, ptr @slim_rproc_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slim_rproc_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_slim_rproc_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_slim_rproc_alloc._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_slim_rproc_alloc._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_slim_rproc_alloc._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_slim_rproc_alloc._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slim_rproc_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slim_rproc_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @st_slim_rproc_alloc(ptr noundef %pdev, ptr noundef %fw_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %fw_name, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call7 = tail call ptr @rproc_alloc(ptr noundef %dev1, ptr noundef %3, ptr noundef nonnull @slim_rproc_ops, ptr noundef nonnull %fw_name, i32 noundef 52) #4
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %has_iommu = getelementptr inbounds %struct.rproc, ptr %call7, i32 0, i32 29
  %4 = ptrtoint ptr %has_iommu to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %has_iommu, align 8
  %priv = getelementptr inbounds %struct.rproc, ptr %call7, i32 0, i32 4
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7, ptr %6, align 4
  %call13 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.30) #4
  %call14 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call13) #4
  %arrayidx15 = getelementptr %struct.st_slim_rproc, ptr %6, i32 0, i32 1, i32 0
  %8 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call14, ptr %arrayidx15, align 4
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end11.do.end_crit_edge, label %if.end26

if.end11.do.end_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %if.end26.do.end_crit_edge, %if.end11.do.end_crit_edge
  %arrayidx15.lcssa = phi ptr [ %arrayidx15, %if.end11.do.end_crit_edge ], [ %arrayidx15.1, %if.end26.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #7
  %9 = ptrtoint ptr %arrayidx15.lcssa to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx15.lcssa, align 4
  %11 = ptrtoint ptr %10 to i32
  br label %err84

if.end26:                                         ; preds = %if.end11
  %12 = ptrtoint ptr %call13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call13, align 4
  %bus_addr = getelementptr %struct.st_slim_rproc, ptr %6, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %bus_addr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %bus_addr, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call13, i32 0, i32 1
  %15 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %end.i, align 4
  %17 = load i32, ptr %call13, align 4
  %sub.i = add i32 %16, 1
  %add.i = sub i32 %sub.i, %17
  %size = getelementptr %struct.st_slim_rproc, ptr %6, i32 0, i32 1, i32 0, i32 2
  %18 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add.i, ptr %size, align 4
  %call13.1 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.31) #4
  %call14.1 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call13.1) #4
  %arrayidx15.1 = getelementptr %struct.st_slim_rproc, ptr %6, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %arrayidx15.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call14.1, ptr %arrayidx15.1, align 4
  %cmp.i.1 = icmp ugt ptr %call14.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %if.end26.do.end_crit_edge, label %if.end26.1

if.end26.do.end_crit_edge:                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end26.1:                                       ; preds = %if.end26
  %20 = ptrtoint ptr %call13.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call13.1, align 4
  %bus_addr.1 = getelementptr %struct.st_slim_rproc, ptr %6, i32 0, i32 1, i32 1, i32 1
  %22 = ptrtoint ptr %bus_addr.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %bus_addr.1, align 4
  %end.i.1 = getelementptr inbounds %struct.resource, ptr %call13.1, i32 0, i32 1
  %23 = ptrtoint ptr %end.i.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %end.i.1, align 4
  %25 = load i32, ptr %call13.1, align 4
  %sub.i.1 = add i32 %24, 1
  %add.i.1 = sub i32 %sub.i.1, %25
  %size.1 = getelementptr %struct.st_slim_rproc, ptr %6, i32 0, i32 1, i32 1, i32 2
  %26 = ptrtoint ptr %size.1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add.i.1, ptr %size.1, align 4
  %call32 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.6) #4
  %call33 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call32) #4
  %slimcore = getelementptr inbounds %struct.st_slim_rproc, ptr %6, i32 0, i32 2
  %27 = ptrtoint ptr %slimcore to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call33, ptr %slimcore, align 4
  %cmp.i147 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i147, label %do.end39, label %if.end43

do.end39:                                         ; preds = %if.end26.1
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #7
  %28 = ptrtoint ptr %slimcore to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %slimcore, align 4
  %30 = ptrtoint ptr %29 to i32
  br label %err84

if.end43:                                         ; preds = %if.end26.1
  %call44 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.10) #4
  %call45 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call44) #4
  %peri = getelementptr inbounds %struct.st_slim_rproc, ptr %6, i32 0, i32 3
  %31 = ptrtoint ptr %peri to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call45, ptr %peri, align 4
  %cmp.i148 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i148, label %do.end51, label %if.end55

do.end51:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #7
  %32 = ptrtoint ptr %peri to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %peri, align 4
  %34 = ptrtoint ptr %33 to i32
  br label %err84

if.end55:                                         ; preds = %if.end43
  %35 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_clk_get(ptr noundef %36, i32 noundef 0) #4
  %arrayidx.i = getelementptr %struct.st_slim_rproc, ptr %6, i32 0, i32 4, i32 0
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i, ptr %arrayidx.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.thread.i, label %for.inc.i

if.then.i:                                        ; preds = %for.inc.2.i.if.then.i_crit_edge, %for.inc.1.i.if.then.i_crit_edge, %for.inc.i.if.then.i_crit_edge
  %clk.031.lcssa.i = phi i32 [ 0, %for.inc.i.if.then.i_crit_edge ], [ 1, %for.inc.1.i.if.then.i_crit_edge ], [ 2, %for.inc.2.i.if.then.i_crit_edge ]
  %call.lcssa.i = phi ptr [ %call.1.i, %for.inc.i.if.then.i_crit_edge ], [ %call.2.i, %for.inc.1.i.if.then.i_crit_edge ], [ %call.3.i, %for.inc.2.i.if.then.i_crit_edge ]
  %arrayidx.lcssa.i = phi ptr [ %arrayidx.1.i, %for.inc.i.if.then.i_crit_edge ], [ %arrayidx.2.i, %for.inc.1.i.if.then.i_crit_edge ], [ %arrayidx.3.i, %for.inc.2.i.if.then.i_crit_edge ]
  %cmp7.i = icmp eq ptr %call.lcssa.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp7.i, label %while.body.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.thread.i:                                 ; preds = %if.end55
  %cmp742.i = icmp eq ptr %call.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp742.i, label %if.then.thread.i.err84_crit_edge, label %if.then.thread.i.if.end.i_crit_edge

if.then.thread.i.if.end.i_crit_edge:              ; preds = %if.then.thread.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.thread.i.err84_crit_edge:                 ; preds = %if.then.thread.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %err84

if.end.i:                                         ; preds = %if.then.thread.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %arrayidx.lcssa44.i = phi ptr [ %arrayidx.i, %if.then.thread.i.if.end.i_crit_edge ], [ %arrayidx.lcssa.i, %if.then.i.if.end.i_crit_edge ]
  %38 = ptrtoint ptr %arrayidx.lcssa44.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %arrayidx.lcssa44.i, align 4
  br label %if.end59

for.inc.i:                                        ; preds = %if.end55
  %39 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %of_node, align 8
  %call.1.i = tail call ptr @of_clk_get(ptr noundef %40, i32 noundef 1) #4
  %arrayidx.1.i = getelementptr %struct.st_slim_rproc, ptr %6, i32 0, i32 4, i32 1
  %41 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.1.i, ptr %arrayidx.1.i, align 4
  %cmp.i.1.i = icmp ugt ptr %call.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %for.inc.i.if.then.i_crit_edge, label %for.inc.1.i

for.inc.i.if.then.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %42 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %of_node, align 8
  %call.2.i = tail call ptr @of_clk_get(ptr noundef %43, i32 noundef 2) #4
  %arrayidx.2.i = getelementptr %struct.st_slim_rproc, ptr %6, i32 0, i32 4, i32 2
  %44 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.2.i, ptr %arrayidx.2.i, align 4
  %cmp.i.2.i = icmp ugt ptr %call.2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2.i, label %for.inc.1.i.if.then.i_crit_edge, label %for.inc.2.i

for.inc.1.i.if.then.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %45 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %of_node, align 8
  %call.3.i = tail call ptr @of_clk_get(ptr noundef %46, i32 noundef 3) #4
  %arrayidx.3.i = getelementptr %struct.st_slim_rproc, ptr %6, i32 0, i32 4, i32 3
  %47 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.3.i, ptr %arrayidx.3.i, align 4
  %cmp.i.3.i = icmp ugt ptr %call.3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3.i, label %for.inc.2.i.if.then.i_crit_edge, label %for.inc.2.i.if.end59_crit_edge

for.inc.2.i.if.end59_crit_edge:                   ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end59

for.inc.2.i.if.then.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

while.body.i:                                     ; preds = %if.then.i
  %arrayidx14.i = getelementptr %struct.st_slim_rproc, ptr %6, i32 0, i32 4, i32 %clk.031.lcssa.i
  %48 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx14.i, align 4
  tail call void @clk_put(ptr noundef %49) #4
  br i1 %cmp.i.1.i, label %while.body.i.err84_crit_edge, label %while.body.i.1

while.body.i.err84_crit_edge:                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %err84

while.body.i.1:                                   ; preds = %while.body.i
  %dec.i = add nsw i32 %clk.031.lcssa.i, -1
  %arrayidx14.i.1 = getelementptr %struct.st_slim_rproc, ptr %6, i32 0, i32 4, i32 %dec.i
  %50 = ptrtoint ptr %arrayidx14.i.1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx14.i.1, align 4
  tail call void @clk_put(ptr noundef %51) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp12.not.i.1 = icmp eq i32 %dec.i, 0
  br i1 %cmp12.not.i.1, label %while.body.i.1.err84_crit_edge, label %while.body.i.2

while.body.i.1.err84_crit_edge:                   ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %err84

while.body.i.2:                                   ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #6
  %dec.i.1 = add nsw i32 %clk.031.lcssa.i, -2
  %arrayidx14.i.2 = getelementptr %struct.st_slim_rproc, ptr %6, i32 0, i32 4, i32 %dec.i.1
  %52 = ptrtoint ptr %arrayidx14.i.2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx14.i.2, align 4
  tail call void @clk_put(ptr noundef %53) #4
  br label %err84

if.end59:                                         ; preds = %for.inc.2.i.if.end59_crit_edge, %if.end.i
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %55, null
  br i1 %tobool.not.i, label %if.end59.if.end66_crit_edge, label %for.body.i

if.end59.if.end66_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end66

for.body.i:                                       ; preds = %if.end59
  %call.i.i = tail call i32 @clk_prepare(ptr noundef nonnull %55) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.do.end65_crit_edge

for.body.i.do.end65_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end65

if.end.i.i:                                       ; preds = %for.body.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef nonnull %55) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %for.inc.i151, label %clk_prepare_enable.exit.i

clk_prepare_enable.exit.thread45.i:               ; preds = %if.end.i.3.i.clk_prepare_enable.exit.thread45.i_crit_edge, %if.end.i.2.i.clk_prepare_enable.exit.thread45.i_crit_edge, %if.end.i.1.i.clk_prepare_enable.exit.thread45.i_crit_edge
  %clk.024.lcssa33.ph.i = phi i32 [ 3, %if.end.i.3.i.clk_prepare_enable.exit.thread45.i_crit_edge ], [ 2, %if.end.i.2.i.clk_prepare_enable.exit.thread45.i_crit_edge ], [ 1, %if.end.i.1.i.clk_prepare_enable.exit.thread45.i_crit_edge ]
  %.lcssa31.ph.i = phi ptr [ %61, %if.end.i.3.i.clk_prepare_enable.exit.thread45.i_crit_edge ], [ %59, %if.end.i.2.i.clk_prepare_enable.exit.thread45.i_crit_edge ], [ %57, %if.end.i.1.i.clk_prepare_enable.exit.thread45.i_crit_edge ]
  %call1.i.lcssa.ph.i = phi i32 [ %call1.i.3.i, %if.end.i.3.i.clk_prepare_enable.exit.thread45.i_crit_edge ], [ %call1.i.2.i, %if.end.i.2.i.clk_prepare_enable.exit.thread45.i_crit_edge ], [ %call1.i.1.i, %if.end.i.1.i.clk_prepare_enable.exit.thread45.i_crit_edge ]
  tail call void @clk_unprepare(ptr noundef nonnull %.lcssa31.ph.i) #4
  br label %while.body.i156

clk_prepare_enable.exit.i:                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef nonnull %55) #4
  br label %do.end65

for.inc.i151:                                     ; preds = %if.end.i.i
  %arrayidx.1.i150 = getelementptr %struct.st_slim_rproc, ptr %6, i32 0, i32 4, i32 1
  %56 = ptrtoint ptr %arrayidx.1.i150 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.1.i150, align 4
  %tobool.not.1.i = icmp eq ptr %57, null
  br i1 %tobool.not.1.i, label %for.inc.i151.if.end66_crit_edge, label %for.body.1.i

for.inc.i151.if.end66_crit_edge:                  ; preds = %for.inc.i151
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end66

for.body.1.i:                                     ; preds = %for.inc.i151
  %call.i.1.i = tail call i32 @clk_prepare(ptr noundef nonnull %57) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i)
  %tobool.not.i.1.i = icmp eq i32 %call.i.1.i, 0
  br i1 %tobool.not.i.1.i, label %if.end.i.1.i, label %for.body.1.i.while.body.i156_crit_edge

for.body.1.i.while.body.i156_crit_edge:           ; preds = %for.body.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i156

if.end.i.1.i:                                     ; preds = %for.body.1.i
  %call1.i.1.i = tail call i32 @clk_enable(ptr noundef nonnull %57) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.1.i)
  %tobool2.not.i.1.i = icmp eq i32 %call1.i.1.i, 0
  br i1 %tobool2.not.i.1.i, label %for.inc.1.i153, label %if.end.i.1.i.clk_prepare_enable.exit.thread45.i_crit_edge

if.end.i.1.i.clk_prepare_enable.exit.thread45.i_crit_edge: ; preds = %if.end.i.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit.thread45.i

for.inc.1.i153:                                   ; preds = %if.end.i.1.i
  %arrayidx.2.i152 = getelementptr %struct.st_slim_rproc, ptr %6, i32 0, i32 4, i32 2
  %58 = ptrtoint ptr %arrayidx.2.i152 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.2.i152, align 4
  %tobool.not.2.i = icmp eq ptr %59, null
  br i1 %tobool.not.2.i, label %for.inc.1.i153.if.end66_crit_edge, label %for.body.2.i

for.inc.1.i153.if.end66_crit_edge:                ; preds = %for.inc.1.i153
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end66

for.body.2.i:                                     ; preds = %for.inc.1.i153
  %call.i.2.i = tail call i32 @clk_prepare(ptr noundef nonnull %59) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2.i)
  %tobool.not.i.2.i = icmp eq i32 %call.i.2.i, 0
  br i1 %tobool.not.i.2.i, label %if.end.i.2.i, label %for.body.2.i.while.body.i156_crit_edge

for.body.2.i.while.body.i156_crit_edge:           ; preds = %for.body.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i156

if.end.i.2.i:                                     ; preds = %for.body.2.i
  %call1.i.2.i = tail call i32 @clk_enable(ptr noundef nonnull %59) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.2.i)
  %tobool2.not.i.2.i = icmp eq i32 %call1.i.2.i, 0
  br i1 %tobool2.not.i.2.i, label %for.inc.2.i155, label %if.end.i.2.i.clk_prepare_enable.exit.thread45.i_crit_edge

if.end.i.2.i.clk_prepare_enable.exit.thread45.i_crit_edge: ; preds = %if.end.i.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit.thread45.i

for.inc.2.i155:                                   ; preds = %if.end.i.2.i
  %arrayidx.3.i154 = getelementptr %struct.st_slim_rproc, ptr %6, i32 0, i32 4, i32 3
  %60 = ptrtoint ptr %arrayidx.3.i154 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.3.i154, align 4
  %tobool.not.3.i = icmp eq ptr %61, null
  br i1 %tobool.not.3.i, label %for.inc.2.i155.if.end66_crit_edge, label %for.body.3.i

for.inc.2.i155.if.end66_crit_edge:                ; preds = %for.inc.2.i155
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end66

for.body.3.i:                                     ; preds = %for.inc.2.i155
  %call.i.3.i = tail call i32 @clk_prepare(ptr noundef nonnull %61) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3.i)
  %tobool.not.i.3.i = icmp eq i32 %call.i.3.i, 0
  br i1 %tobool.not.i.3.i, label %if.end.i.3.i, label %for.body.3.i.while.body.i156_crit_edge

for.body.3.i.while.body.i156_crit_edge:           ; preds = %for.body.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i156

if.end.i.3.i:                                     ; preds = %for.body.3.i
  %call1.i.3.i = tail call i32 @clk_enable(ptr noundef nonnull %61) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.3.i)
  %tobool2.not.i.3.i = icmp eq i32 %call1.i.3.i, 0
  br i1 %tobool2.not.i.3.i, label %if.end.i.3.i.if.end66_crit_edge, label %if.end.i.3.i.clk_prepare_enable.exit.thread45.i_crit_edge

if.end.i.3.i.clk_prepare_enable.exit.thread45.i_crit_edge: ; preds = %if.end.i.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit.thread45.i

if.end.i.3.i.if.end66_crit_edge:                  ; preds = %if.end.i.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end66

while.body.i156:                                  ; preds = %for.body.3.i.while.body.i156_crit_edge, %for.body.2.i.while.body.i156_crit_edge, %for.body.1.i.while.body.i156_crit_edge, %clk_prepare_enable.exit.thread45.i
  %retval.0.i39.i = phi i32 [ %call1.i.lcssa.ph.i, %clk_prepare_enable.exit.thread45.i ], [ %call.i.3.i, %for.body.3.i.while.body.i156_crit_edge ], [ %call.i.2.i, %for.body.2.i.while.body.i156_crit_edge ], [ %call.i.1.i, %for.body.1.i.while.body.i156_crit_edge ]
  %clk.0243438.i = phi i32 [ %clk.024.lcssa33.ph.i, %clk_prepare_enable.exit.thread45.i ], [ 3, %for.body.3.i.while.body.i156_crit_edge ], [ 2, %for.body.2.i.while.body.i156_crit_edge ], [ 1, %for.body.1.i.while.body.i156_crit_edge ]
  %dec27.i = add nsw i32 %clk.0243438.i, -1
  %arrayidx6.i = getelementptr %struct.st_slim_rproc, ptr %6, i32 0, i32 4, i32 %dec27.i
  %62 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx6.i, align 4
  tail call void @clk_disable(ptr noundef %63) #4
  tail call void @clk_unprepare(ptr noundef %63) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %clk.0243438.i)
  %cmp4.i = icmp ugt i32 %clk.0243438.i, 1
  br i1 %cmp4.i, label %while.body.i156.1, label %while.body.i156.slim_clk_enable.exit_crit_edge

while.body.i156.slim_clk_enable.exit_crit_edge:   ; preds = %while.body.i156
  call void @__sanitizer_cov_trace_pc() #6
  br label %slim_clk_enable.exit

while.body.i156.1:                                ; preds = %while.body.i156
  %dec27.i.1 = add nsw i32 %clk.0243438.i, -2
  %arrayidx6.i.1 = getelementptr %struct.st_slim_rproc, ptr %6, i32 0, i32 4, i32 %dec27.i.1
  %64 = ptrtoint ptr %arrayidx6.i.1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx6.i.1, align 4
  tail call void @clk_disable(ptr noundef %65) #4
  tail call void @clk_unprepare(ptr noundef %65) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec27.i)
  %cmp4.i.1 = icmp ugt i32 %dec27.i, 1
  br i1 %cmp4.i.1, label %while.body.i156.2, label %while.body.i156.1.slim_clk_enable.exit_crit_edge

while.body.i156.1.slim_clk_enable.exit_crit_edge: ; preds = %while.body.i156.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %slim_clk_enable.exit

while.body.i156.2:                                ; preds = %while.body.i156.1
  call void @__sanitizer_cov_trace_pc() #6
  %dec27.i.2 = add nsw i32 %clk.0243438.i, -3
  %arrayidx6.i.2 = getelementptr %struct.st_slim_rproc, ptr %6, i32 0, i32 4, i32 %dec27.i.2
  %66 = ptrtoint ptr %arrayidx6.i.2 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx6.i.2, align 4
  tail call void @clk_disable(ptr noundef %67) #4
  tail call void @clk_unprepare(ptr noundef %67) #4
  br label %slim_clk_enable.exit

slim_clk_enable.exit:                             ; preds = %while.body.i156.2, %while.body.i156.1.slim_clk_enable.exit_crit_edge, %while.body.i156.slim_clk_enable.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i39.i)
  %tobool61.not = icmp eq i32 %retval.0.i39.i, 0
  br i1 %tobool61.not, label %slim_clk_enable.exit.if.end66_crit_edge, label %slim_clk_enable.exit.do.end65_crit_edge

slim_clk_enable.exit.do.end65_crit_edge:          ; preds = %slim_clk_enable.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end65

slim_clk_enable.exit.if.end66_crit_edge:          ; preds = %slim_clk_enable.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end66

do.end65:                                         ; preds = %slim_clk_enable.exit.do.end65_crit_edge, %clk_prepare_enable.exit.i, %for.body.i.do.end65_crit_edge
  %retval.0.i157166 = phi i32 [ %retval.0.i39.i, %slim_clk_enable.exit.do.end65_crit_edge ], [ %call.i.i, %for.body.i.do.end65_crit_edge ], [ %call1.i.i, %clk_prepare_enable.exit.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #7
  br label %err_clk_put

if.end66:                                         ; preds = %slim_clk_enable.exit.if.end66_crit_edge, %if.end.i.3.i.if.end66_crit_edge, %for.inc.2.i155.if.end66_crit_edge, %for.inc.1.i153.if.end66_crit_edge, %for.inc.i151.if.end66_crit_edge, %if.end59.if.end66_crit_edge
  %call67 = tail call i32 @rproc_add(ptr noundef nonnull %call7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end66.cleanup_crit_edge, label %do.end72

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end72:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #7
  tail call fastcc void @slim_clk_disable(ptr noundef %6)
  br label %err_clk_put

err_clk_put:                                      ; preds = %do.end72, %do.end65
  %err.0 = phi i32 [ %retval.0.i157166, %do.end65 ], [ %call67, %do.end72 ]
  %68 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx.i, align 4
  %tobool77.not = icmp eq ptr %69, null
  br i1 %tobool77.not, label %err_clk_put.err84_crit_edge, label %for.body78

err_clk_put.err84_crit_edge:                      ; preds = %err_clk_put
  call void @__sanitizer_cov_trace_pc() #6
  br label %err84

for.body78:                                       ; preds = %err_clk_put
  tail call void @clk_put(ptr noundef nonnull %69) #4
  %arrayidx76.1 = getelementptr %struct.st_slim_rproc, ptr %6, i32 0, i32 4, i32 1
  %70 = ptrtoint ptr %arrayidx76.1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx76.1, align 4
  %tobool77.not.1 = icmp eq ptr %71, null
  br i1 %tobool77.not.1, label %for.body78.err84_crit_edge, label %for.body78.1

for.body78.err84_crit_edge:                       ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #6
  br label %err84

for.body78.1:                                     ; preds = %for.body78
  tail call void @clk_put(ptr noundef nonnull %71) #4
  %arrayidx76.2 = getelementptr %struct.st_slim_rproc, ptr %6, i32 0, i32 4, i32 2
  %72 = ptrtoint ptr %arrayidx76.2 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx76.2, align 4
  %tobool77.not.2 = icmp eq ptr %73, null
  br i1 %tobool77.not.2, label %for.body78.1.err84_crit_edge, label %for.body78.2

for.body78.1.err84_crit_edge:                     ; preds = %for.body78.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %err84

for.body78.2:                                     ; preds = %for.body78.1
  tail call void @clk_put(ptr noundef nonnull %73) #4
  %arrayidx76.3 = getelementptr %struct.st_slim_rproc, ptr %6, i32 0, i32 4, i32 3
  %74 = ptrtoint ptr %arrayidx76.3 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx76.3, align 4
  %tobool77.not.3 = icmp eq ptr %75, null
  br i1 %tobool77.not.3, label %for.body78.2.err84_crit_edge, label %for.body78.3

for.body78.2.err84_crit_edge:                     ; preds = %for.body78.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %err84

for.body78.3:                                     ; preds = %for.body78.2
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_put(ptr noundef nonnull %75) #4
  br label %err84

err84:                                            ; preds = %for.body78.3, %for.body78.2.err84_crit_edge, %for.body78.1.err84_crit_edge, %for.body78.err84_crit_edge, %err_clk_put.err84_crit_edge, %while.body.i.2, %while.body.i.1.err84_crit_edge, %while.body.i.err84_crit_edge, %if.then.thread.i.err84_crit_edge, %do.end51, %do.end39, %do.end
  %err.1 = phi i32 [ %11, %do.end ], [ %30, %do.end39 ], [ %34, %do.end51 ], [ -517, %if.then.thread.i.err84_crit_edge ], [ %err.0, %for.body78.3 ], [ %err.0, %for.body78.2.err84_crit_edge ], [ %err.0, %for.body78.1.err84_crit_edge ], [ %err.0, %for.body78.err84_crit_edge ], [ %err.0, %err_clk_put.err84_crit_edge ], [ -517, %while.body.i.2 ], [ -517, %while.body.i.1.err84_crit_edge ], [ -517, %while.body.i.err84_crit_edge ]
  tail call void @rproc_free(ptr noundef nonnull %call7) #4
  %76 = inttoptr i32 %err.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err84, %if.end66.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %76, %err84 ], [ %6, %if.end66.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end6.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rproc_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @slim_clk_disable(ptr nocapture noundef readonly %slim_rproc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.st_slim_rproc, ptr %slim_rproc, i32 0, i32 4, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.for.end_crit_edge, label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %entry
  tail call void @clk_disable(ptr noundef nonnull %1) #4
  tail call void @clk_unprepare(ptr noundef nonnull %1) #4
  %arrayidx.1 = getelementptr %struct.st_slim_rproc, ptr %slim_rproc, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %3, null
  br i1 %tobool.not.1, label %for.body.for.end_crit_edge, label %for.body.1

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.1:                                       ; preds = %for.body
  tail call void @clk_disable(ptr noundef nonnull %3) #4
  tail call void @clk_unprepare(ptr noundef nonnull %3) #4
  %arrayidx.2 = getelementptr %struct.st_slim_rproc, ptr %slim_rproc, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %5, null
  br i1 %tobool.not.2, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  tail call void @clk_disable(ptr noundef nonnull %5) #4
  tail call void @clk_unprepare(ptr noundef nonnull %5) #4
  %arrayidx.3 = getelementptr %struct.st_slim_rproc, ptr %slim_rproc, i32 0, i32 4, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %7, null
  br i1 %tobool.not.3, label %for.body.2.for.end_crit_edge, label %for.body.3

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.3:                                       ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_disable(ptr noundef nonnull %7) #4
  tail call void @clk_unprepare(ptr noundef nonnull %7) #4
  br label %for.end

for.end:                                          ; preds = %for.body.3, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rproc_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @st_slim_rproc_put(ptr noundef readonly %slim_rproc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %slim_rproc, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @slim_clk_disable(ptr noundef nonnull %slim_rproc)
  %arrayidx = getelementptr %struct.st_slim_rproc, ptr %slim_rproc, i32 0, i32 4, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.for.end_crit_edge, label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %if.end
  tail call void @clk_put(ptr noundef nonnull %1) #4
  %arrayidx.1 = getelementptr %struct.st_slim_rproc, ptr %slim_rproc, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.1, align 4
  %tobool1.not.1 = icmp eq ptr %3, null
  br i1 %tobool1.not.1, label %for.body.for.end_crit_edge, label %for.body.1

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.1:                                       ; preds = %for.body
  tail call void @clk_put(ptr noundef nonnull %3) #4
  %arrayidx.2 = getelementptr %struct.st_slim_rproc, ptr %slim_rproc, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.2, align 4
  %tobool1.not.2 = icmp eq ptr %5, null
  br i1 %tobool1.not.2, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  tail call void @clk_put(ptr noundef nonnull %5) #4
  %arrayidx.3 = getelementptr %struct.st_slim_rproc, ptr %slim_rproc, i32 0, i32 4, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.3, align 4
  %tobool1.not.3 = icmp eq ptr %7, null
  br i1 %tobool1.not.3, label %for.body.2.for.end_crit_edge, label %for.body.3

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.3:                                       ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_put(ptr noundef nonnull %7) #4
  br label %for.end

for.end:                                          ; preds = %for.body.3, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %8 = ptrtoint ptr %slim_rproc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %slim_rproc, align 4
  %call = tail call i32 @rproc_del(ptr noundef %9) #4
  %10 = ptrtoint ptr %slim_rproc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %slim_rproc, align 4
  tail call void @rproc_free(ptr noundef %11) #4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @slim_rproc_start(ptr noundef %rproc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !78
  tail call void @arm_heavy_mb() #4
  %slimcore = getelementptr inbounds %struct.st_slim_rproc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %slimcore to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slimcore, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 83886080) #4, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !80
  tail call void @arm_heavy_mb() #4
  %peri = getelementptr inbounds %struct.st_slim_rproc, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %peri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %peri, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 3976
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 16777216) #4, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !81
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %slimcore to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %slimcore, align 4
  %add.ptr10 = getelementptr i8, ptr %7, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 0) #4, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !82
  tail call void @arm_heavy_mb() #4
  %8 = ptrtoint ptr %peri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %peri, align 4
  %add.ptr15 = getelementptr i8, ptr %9, i32 4056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 -1) #4, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !83
  tail call void @arm_heavy_mb() #4
  %10 = ptrtoint ptr %peri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %peri, align 4
  %add.ptr20 = getelementptr i8, ptr %11, i32 4040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 -1) #4, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !84
  tail call void @arm_heavy_mb() #4
  %12 = ptrtoint ptr %peri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %peri, align 4
  %add.ptr25 = getelementptr i8, ptr %13, i32 4060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 -1) #4, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !85
  tail call void @arm_heavy_mb() #4
  %14 = ptrtoint ptr %peri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %peri, align 4
  %add.ptr30 = getelementptr i8, ptr %15, i32 4044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 -1) #4, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !86
  tail call void @arm_heavy_mb() #4
  %16 = ptrtoint ptr %slimcore to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %slimcore, align 4
  %add.ptr35 = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 16777216) #4, !srcloc !79
  %18 = ptrtoint ptr %slimcore to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %slimcore, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #4, !srcloc !87
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %22 = ptrtoint ptr %slimcore to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %slimcore, align 4
  %add.ptr40 = getelementptr i8, ptr %23, i32 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #4, !srcloc !87
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %mem = getelementptr inbounds %struct.st_slim_rproc, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mem, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #4, !srcloc !87
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !88
  %and = lshr i32 %29, 16
  %shr = and i32 %and, 255
  %and51 = lshr i32 %29, 8
  %shr52 = and i32 %and51, 255
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.20, i32 noundef %shr, i32 noundef %shr52, i32 noundef %21, i32 noundef %25) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @slim_rproc_stop(ptr noundef %rproc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !89
  tail call void @arm_heavy_mb() #4
  %peri = getelementptr inbounds %struct.st_slim_rproc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %peri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %peri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #4, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !90
  tail call void @arm_heavy_mb() #4
  %4 = ptrtoint ptr %peri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %peri, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 4044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 0) #4, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !91
  tail call void @arm_heavy_mb() #4
  %slimcore = getelementptr inbounds %struct.st_slim_rproc, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %slimcore to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %slimcore, align 4
  %add.ptr9 = getelementptr i8, ptr %7, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 16777216) #4, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !92
  tail call void @arm_heavy_mb() #4
  %8 = ptrtoint ptr %slimcore to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %slimcore, align 4
  %add.ptr14 = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 0) #4, !srcloc !79
  %10 = ptrtoint ptr %slimcore to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %slimcore, align 4
  %add.ptr16 = getelementptr i8, ptr %11, i32 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #4, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !93
  %13 = and i32 %12, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %entry.do.body21_crit_edge, label %do.end20

entry.do.body21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body21

do.end20:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.23) #7
  br label %do.body21

do.body21:                                        ; preds = %do.end20, %entry.do.body21_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @slim_rproc_stop.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@slim_rproc_stop, %if.then27)) #4
          to label %do.end31 [label %if.then27], !srcloc !94

if.then27:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #6
  %dev28 = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @slim_rproc_stop.__UNIQUE_ID_ddebug227, ptr noundef %dev28, ptr noundef nonnull @.str.27) #4
  br label %do.end31

do.end31:                                         ; preds = %if.then27, %do.body21
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @slim_rproc_da_to_va(ptr noundef %rproc, i64 noundef %da, i32 noundef %len, ptr nocapture noundef readnone %is_iomem) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %bus_addr = getelementptr %struct.st_slim_rproc, ptr %1, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %bus_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bus_addr, align 4
  %conv = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %da)
  %cmp1.not = icmp eq i64 %conv, %da
  br i1 %cmp1.not, label %if.end, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end:                                           ; preds = %entry
  %size = getelementptr %struct.st_slim_rproc, ptr %1, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %len)
  %cmp5.not = icmp ult i32 %5, %len
  br i1 %cmp5.not, label %if.end.for.inc_crit_edge, label %if.end.if.then7_crit_edge

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then7

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then7:                                         ; preds = %if.end.1.if.then7_crit_edge, %if.end.if.then7_crit_edge
  %i.026.lcssa = phi i32 [ 0, %if.end.if.then7_crit_edge ], [ 1, %if.end.1.if.then7_crit_edge ]
  %arrayidx.le = getelementptr %struct.st_slim_rproc, ptr %1, i32 0, i32 1, i32 %i.026.lcssa
  %6 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.le, align 4
  br label %do.body

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %entry.for.inc_crit_edge
  %bus_addr.1 = getelementptr %struct.st_slim_rproc, ptr %1, i32 0, i32 1, i32 1, i32 1
  %8 = ptrtoint ptr %bus_addr.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bus_addr.1, align 4
  %conv.1 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv.1, i64 %da)
  %cmp1.not.1 = icmp eq i64 %conv.1, %da
  br i1 %cmp1.not.1, label %if.end.1, label %for.inc.do.body_crit_edge

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.end.1:                                         ; preds = %for.inc
  %size.1 = getelementptr %struct.st_slim_rproc, ptr %1, i32 0, i32 1, i32 1, i32 2
  %10 = ptrtoint ptr %size.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %len)
  %cmp5.not.1 = icmp ult i32 %11, %len
  br i1 %cmp5.not.1, label %if.end.1.do.body_crit_edge, label %if.end.1.if.then7_crit_edge

if.end.1.if.then7_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then7

if.end.1.do.body_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.body:                                          ; preds = %if.end.1.do.body_crit_edge, %for.inc.do.body_crit_edge, %if.then7
  %va.0 = phi ptr [ %7, %if.then7 ], [ null, %if.end.1.do.body_crit_edge ], [ null, %for.inc.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @slim_rproc_da_to_va.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@slim_rproc_da_to_va, %if.then13)) #4
          to label %do.end [label %if.then13], !srcloc !94

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @slim_rproc_da_to_va.__UNIQUE_ID_ddebug228, ptr noundef %dev, ptr noundef nonnull @.str.29, i64 noundef %da, i32 noundef %len, ptr noundef %va.0) #4
  br label %do.end

do.end:                                           ; preds = %if.then13, %do.body
  ret ptr %va.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_elf_load_segments(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_elf_sanity_check(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rproc_elf_get_boot_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !14, !15, !16, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !34, !36, !38, !40, !41, !43, !45, !46, !47, !48, !49, !51, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/remoteproc/st_slim_rproc.c", i32 235, i32 35}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/remoteproc/st_slim_rproc.c", i32 255, i32 4}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @st_slim_rproc_alloc._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @st_slim_rproc_alloc._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/remoteproc/st_slim_rproc.c", i32 263, i32 59}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/remoteproc/st_slim_rproc.c", i32 266, i32 3}
!14 = !{ptr @st_slim_rproc_alloc._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @st_slim_rproc_alloc._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/remoteproc/st_slim_rproc.c", i32 271, i32 59}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/remoteproc/st_slim_rproc.c", i32 274, i32 3}
!20 = !{ptr @st_slim_rproc_alloc._entry.11, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @st_slim_rproc_alloc._entry_ptr.13, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/remoteproc/st_slim_rproc.c", i32 285, i32 3}
!24 = !{ptr @st_slim_rproc_alloc._entry.14, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @st_slim_rproc_alloc._entry_ptr.16, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/remoteproc/st_slim_rproc.c", i32 292, i32 3}
!28 = !{ptr @st_slim_rproc_alloc._entry.17, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @st_slim_rproc_alloc._entry_ptr.19, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @__ksymtab_st_slim_rproc_alloc, !31, !"__ksymtab_st_slim_rproc_alloc", i1 false, i1 false}
!31 = !{!"../drivers/remoteproc/st_slim_rproc.c", i32 307, i32 1}
!32 = !{ptr @__ksymtab_st_slim_rproc_put, !33, !"__ksymtab_st_slim_rproc_put", i1 false, i1 false}
!33 = !{!"../drivers/remoteproc/st_slim_rproc.c", i32 331, i32 1}
!34 = !{ptr @__UNIQUE_ID_author229, !35, !"__UNIQUE_ID_author229", i1 false, i1 false}
!35 = !{!"../drivers/remoteproc/st_slim_rproc.c", i32 333, i32 1}
!36 = !{ptr @__UNIQUE_ID_description230, !37, !"__UNIQUE_ID_description230", i1 false, i1 false}
!37 = !{!"../drivers/remoteproc/st_slim_rproc.c", i32 334, i32 1}
!38 = !{ptr @__UNIQUE_ID_file231, !39, !"__UNIQUE_ID_file231", i1 false, i1 false}
!39 = !{!"../drivers/remoteproc/st_slim_rproc.c", i32 335, i32 1}
!40 = !{ptr @__UNIQUE_ID_license232, !39, !"__UNIQUE_ID_license232", i1 false, i1 false}
!41 = !{ptr @slim_rproc_ops, !42, !"slim_rproc_ops", i1 false, i1 false}
!42 = !{!"../drivers/remoteproc/st_slim_rproc.c", i32 200, i32 31}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/remoteproc/st_slim_rproc.c", i32 147, i32 2}
!45 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @slim_rproc_start._entry, !44, !"_entry", i1 false, i1 false}
!48 = !{ptr @slim_rproc_start._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/remoteproc/st_slim_rproc.c", i32 170, i32 3}
!51 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @slim_rproc_stop._entry, !50, !"_entry", i1 false, i1 false}
!54 = !{ptr @slim_rproc_stop._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/remoteproc/st_slim_rproc.c", i32 172, i32 2}
!57 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @slim_rproc_stop.__UNIQUE_ID_ddebug227, !56, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/remoteproc/st_slim_rproc.c", i32 194, i32 2}
!61 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @slim_rproc_da_to_va.__UNIQUE_ID_ddebug228, !60, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/remoteproc/st_slim_rproc.c", i32 54, i32 19}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/remoteproc/st_slim_rproc.c", i32 55, i32 19}
!67 = distinct !{null, !68, !"mem_names", i1 false, i1 false}
!68 = !{!"../drivers/remoteproc/st_slim_rproc.c", i32 53, i32 20}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{i64 2154011217}
!79 = !{i64 6434499}
!80 = !{i64 2154011734}
!81 = !{i64 2154012323}
!82 = !{i64 2154012812}
!83 = !{i64 2154013221}
!84 = !{i64 2154013630}
!85 = !{i64 2154014039}
!86 = !{i64 2154014554}
!87 = !{i64 6434917}
!88 = !{i64 2154016112}
!89 = !{i64 2154019596}
!90 = !{i64 2154020005}
!91 = !{i64 2154020520}
!92 = !{i64 2154021111}
!93 = !{i64 2154021899}
!94 = !{i64 2148728405, i64 2148728410, i64 2148728423, i64 2148728467, i64 2148728501, i64 2148728522}
