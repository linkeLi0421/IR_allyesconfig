; ModuleID = '/llk/IR_all_yes/drivers/mtd/lpddr/qinfo_probe.c_pt.bc'
source_filename = "../drivers/mtd/lpddr/qinfo_probe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mtd_chip_driver = type { ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.qinfo_query_info = type { i8, i8, ptr, ptr }
%union.map_word = type { [8 x i32] }
%struct.map_info = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.qinfo_chip = type { i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.43 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
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
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.43 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }

@lpddr_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014Reducing visibility of %ldKiB chipto %ldKiB\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lpddr_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/mtd/lpddr/qinfo_probe.c\00", [32 x i8] zeroinitializer }, align 32
@lpddr_probe._entry_ptr = internal global ptr @lpddr_probe._entry, section ".printk_index", align 4
@lpddr_chipdrv = internal global { %struct.mtd_chip_driver, [40 x i8] } { %struct.mtd_chip_driver { ptr @lpddr_probe, ptr null, ptr null, ptr @.str.29, %struct.list_head zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_qinfo_probe__189_229_lpddr_probe_init6 = internal global ptr @lpddr_probe_init, section ".initcall6.init", align 4
@__exitcall_lpddr_probe_exit = internal global ptr @lpddr_probe_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file190 = internal constant [47 x i8] c"qinfo_probe.file=drivers/mtd/lpddr/qinfo_probe\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [24 x i8] c"qinfo_probe.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author192 = internal constant [65 x i8] c"qinfo_probe.author=Vasiliy Leonenko <vasiliy.leonenko@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description193 = internal constant [58 x i8] c"qinfo_probe.description=Driver to probe qinfo flash chips\00", section ".modinfo", align 1
@lpddr_probe_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\015%s Probe at base (0x%08lx) past the end ofthe map(0x%08lx)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lpddr_probe_chip\00", [47 x i8] zeroinitializer }, align 32
@lpddr_probe_chip._entry_ptr = internal global ptr @lpddr_probe_chip._entry, section ".printk_index", align 4
@lpddr_pfow_present._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014%s: PFOW string at 0x%lx is not found \0A\00", [54 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lpddr_pfow_present\00", [45 x i8] zeroinitializer }, align 32
@lpddr_pfow_present._entry_ptr = internal global ptr @lpddr_pfow_present._entry, section ".printk_index", align 4
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DevSizeShift\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TotalBlocksNum\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"BufSizeShift\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HWPartsNum\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"UniformBlockSizeShift\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SuspEraseSupp\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SingleWordProgTime\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ProgBufferTime\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"BlockEraseTime\00", [17 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@qinfo_array = internal constant { [10 x %struct.qinfo_query_info], [40 x i8] } { [10 x %struct.qinfo_query_info] [%struct.qinfo_query_info { i8 0, i8 0, ptr @.str.7, ptr @.str.18 }, %struct.qinfo_query_info { i8 0, i8 3, ptr @.str.9, ptr @.str.19 }, %struct.qinfo_query_info { i8 1, i8 1, ptr @.str.8, ptr @.str.20 }, %struct.qinfo_query_info { i8 1, i8 2, ptr @.str.11, ptr @.str.21 }, %struct.qinfo_query_info { i8 2, i8 1, ptr @.str.10, ptr @.str.22 }, %struct.qinfo_query_info { i8 5, i8 1, ptr @.str.12, ptr @.str.23 }, %struct.qinfo_query_info { i8 10, i8 0, ptr @.str.13, ptr @.str.24 }, %struct.qinfo_query_info { i8 10, i8 1, ptr @.str.14, ptr @.str.25 }, %struct.qinfo_query_info { i8 10, i8 2, ptr @.str.15, ptr @.str.26 }, %struct.qinfo_query_info { i8 10, i8 3, ptr @.str.27, ptr @.str.28 }], [40 x i8] zeroinitializer }, align 32
@lpddr_get_qinforec_pos._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s qinfo id string is wrong! \0A\00", [63 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lpddr_get_qinforec_pos\00", [41 x i8] zeroinitializer }, align 32
@lpddr_get_qinforec_pos._entry_ptr = internal global ptr @lpddr_get_qinforec_pos._entry, section ".printk_index", align 4
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Device size 2^n bytes\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Program buffer size 2^n bytes\00", [34 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Total number of blocks\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Uniform block size 2^n bytes\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Number of hardware partitions\00", [34 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Suspend erase supported\00", [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Single word program 2^n u-sec\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Program buffer write 2^n u-sec\00", [33 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Block erase 2^n m-sec\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"FullChipEraseTime\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Full chip erase 2^n m-sec\00", [38 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qinfo_probe\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 198, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant [14 x i8] c"lpddr_chipdrv\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 212, i32 31 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 153, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 115, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 132, i32 53 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 133, i32 55 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 134, i32 53 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 135, i32 51 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 137, i32 27 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 138, i32 54 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 140, i32 27 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 141, i32 55 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 142, i32 55 }
@___asan_gen_.90 = private unnamed_addr constant [12 x i8] c"qinfo_array\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 26, i32 32 }
@___asan_gen_.93 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 58, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 28, i32 25 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 29, i32 25 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 31, i32 27 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 32, i32 34 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 34, i32 23 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 36, i32 26 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 38, i32 32 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 39, i32 28 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 40, i32 28 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 41, i32 10 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 41, i32 31 }
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.136 = private constant [35 x i8] c"../drivers/mtd/lpddr/qinfo_probe.c\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 214, i32 11 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_author192, ptr @__UNIQUE_ID_description193, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__exitcall_lpddr_probe_exit, ptr @__initcall__kmod_qinfo_probe__189_229_lpddr_probe_init6, ptr @lpddr_get_qinforec_pos._entry, ptr @lpddr_get_qinforec_pos._entry_ptr, ptr @lpddr_pfow_present._entry, ptr @lpddr_pfow_present._entry_ptr, ptr @lpddr_probe._entry, ptr @lpddr_probe._entry_ptr, ptr @lpddr_probe_chip._entry, ptr @lpddr_probe_chip._entry_ptr, ptr @lpddr_probe_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @lpddr_chipdrv, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @qinfo_array, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpddr_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpddr_chipdrv to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpddr_probe_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpddr_pfow_present._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qinfo_array to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpddr_get_qinforec_pos._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @lpddr_probe(ptr noundef %map) #0 align 64 {
entry:
  %tmp.i.i = alloca %union.map_word, align 4
  %tmp5.i.i = alloca %union.map_word, align 4
  %pfow_val.i.i = alloca [4 x %union.map_word], align 4
  %tmp2.i.i = alloca %union.map_word, align 4
  %tmp7.i.i = alloca %union.map_word, align 4
  %tmp12.i.i = alloca %union.map_word, align 4
  %tmp17.i.i = alloca %union.map_word, align 4
  %tmp33.i.i = alloca %union.map_word, align 4
  %tmp55.i.i = alloca %union.map_word, align 4
  %tmp77.i.i = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pfow_base.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 13
  %0 = ptrtoint ptr %pfow_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pfow_base.i, align 4
  %add.i = add i32 %1, 4096
  %size.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 1
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %3)
  %cmp.not.i = icmp ult i32 %add.i, %3
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 4
  %sub.i = add i32 %3, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %5, i32 noundef %1, i32 noundef %sub.i) #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp17.i.i) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp33.i.i) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp55.i.i) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp77.i.i) #9
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %pfow_val.i.i) #9
  %read.i.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 7
  %6 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read.i.i, align 4
  call void %7(ptr nonnull sret(%union.map_word) align 4 %pfow_val.i.i, ptr noundef %map, i32 noundef %1) #9
  %8 = getelementptr inbounds i8, ptr %pfow_val.i.i, i32 32
  %9 = call ptr @memset(ptr %8, i32 255, i32 96)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp2.i.i) #9
  %10 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read.i.i, align 4
  %12 = ptrtoint ptr %pfow_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pfow_base.i, align 4
  %add5.i.i = add i32 %13, 2
  call void %11(ptr nonnull sret(%union.map_word) align 4 %tmp2.i.i, ptr noundef %map, i32 noundef %add5.i.i) #9
  %14 = call ptr @memcpy(ptr %8, ptr %tmp2.i.i, i32 32)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp2.i.i) #9
  %arrayidx6.i.i = getelementptr inbounds [4 x %union.map_word], ptr %pfow_val.i.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp7.i.i) #9
  %15 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read.i.i, align 4
  %17 = ptrtoint ptr %pfow_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pfow_base.i, align 4
  %add10.i.i = add i32 %18, 4
  call void %16(ptr nonnull sret(%union.map_word) align 4 %tmp7.i.i, ptr noundef %map, i32 noundef %add10.i.i) #9
  %19 = call ptr @memcpy(ptr %arrayidx6.i.i, ptr %tmp7.i.i, i32 32)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp7.i.i) #9
  %arrayidx11.i.i = getelementptr inbounds [4 x %union.map_word], ptr %pfow_val.i.i, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp12.i.i) #9
  %20 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read.i.i, align 4
  %22 = ptrtoint ptr %pfow_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pfow_base.i, align 4
  %add15.i.i = add i32 %23, 6
  call void %21(ptr nonnull sret(%union.map_word) align 4 %tmp12.i.i, ptr noundef %map, i32 noundef %add15.i.i) #9
  %24 = call ptr @memcpy(ptr %arrayidx11.i.i, ptr %tmp12.i.i, i32 32)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp12.i.i) #9
  %bankwidth.i.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 6
  %25 = ptrtoint ptr %bankwidth.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bankwidth.i.i, align 4
  %add16.i.i = add i32 %26, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add16.i.i)
  %cmp12.not.i.i = icmp ult i32 %add16.i.i, 4
  br i1 %cmp12.not.i.i, label %if.end.i.if.end5.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i
  %div1.i.i = lshr i32 %add16.i.i, 2
  %27 = getelementptr inbounds i8, ptr %tmp17.i.i, i32 4
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.013.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %div1.i.i
  br i1 %exitcond.not.i.i, label %for.body32.lr.ph.i.i, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.body32.lr.ph.i.i:                             ; preds = %for.cond.i.i
  %28 = getelementptr inbounds i8, ptr %tmp33.i.i, i32 4
  br label %for.body32.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.013.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %29 = call ptr @memset(ptr %27, i32 0, i32 28)
  %30 = ptrtoint ptr %tmp17.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 80, ptr %tmp17.i.i, align 4, !alias.scope !87
  %arrayidx18.i.i = getelementptr [8 x i32], ptr %tmp17.i.i, i32 0, i32 %i.013.i.i
  %31 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx18.i.i, align 4
  %arrayidx20.i.i = getelementptr [8 x i32], ptr %pfow_val.i.i, i32 0, i32 %i.013.i.i
  %33 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx20.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp21.not.i.i = icmp eq i32 %32, %34
  br i1 %cmp21.not.i.i, label %for.cond.i.i, label %for.body.i.i.lpddr_pfow_present.exit.i_crit_edge

for.body.i.i.lpddr_pfow_present.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lpddr_pfow_present.exit.i

for.cond27.i.i:                                   ; preds = %for.body32.i.i
  %inc41.i.i = add nuw nsw i32 %i25.015.i.i, 1
  %exitcond24.not.i.i = icmp eq i32 %inc41.i.i, %div1.i.i
  br i1 %exitcond24.not.i.i, label %for.body54.lr.ph.i.i, label %for.cond27.i.i.for.body32.i.i_crit_edge

for.cond27.i.i.for.body32.i.i_crit_edge:          ; preds = %for.cond27.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body32.i.i

for.body54.lr.ph.i.i:                             ; preds = %for.cond27.i.i
  %35 = getelementptr inbounds i8, ptr %tmp55.i.i, i32 4
  br label %for.body54.i.i

for.body32.i.i:                                   ; preds = %for.cond27.i.i.for.body32.i.i_crit_edge, %for.body32.lr.ph.i.i
  %i25.015.i.i = phi i32 [ 0, %for.body32.lr.ph.i.i ], [ %inc41.i.i, %for.cond27.i.i.for.body32.i.i_crit_edge ]
  %36 = call ptr @memset(ptr %28, i32 0, i32 28)
  %37 = ptrtoint ptr %tmp33.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 70, ptr %tmp33.i.i, align 4, !alias.scope !90
  %arrayidx34.i.i = getelementptr [8 x i32], ptr %tmp33.i.i, i32 0, i32 %i25.015.i.i
  %38 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx34.i.i, align 4
  %arrayidx36.i.i = getelementptr [8 x i32], ptr %8, i32 0, i32 %i25.015.i.i
  %40 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx36.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp37.not.i.i = icmp eq i32 %39, %41
  br i1 %cmp37.not.i.i, label %for.cond27.i.i, label %for.body32.i.i.lpddr_pfow_present.exit.i_crit_edge

for.body32.i.i.lpddr_pfow_present.exit.i_crit_edge: ; preds = %for.body32.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lpddr_pfow_present.exit.i

for.cond49.i.i:                                   ; preds = %for.body54.i.i
  %inc63.i.i = add nuw nsw i32 %i47.017.i.i, 1
  %exitcond26.not.i.i = icmp eq i32 %inc63.i.i, %div1.i.i
  br i1 %exitcond26.not.i.i, label %for.body76.lr.ph.i.i, label %for.cond49.i.i.for.body54.i.i_crit_edge

for.cond49.i.i.for.body54.i.i_crit_edge:          ; preds = %for.cond49.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body54.i.i

for.body76.lr.ph.i.i:                             ; preds = %for.cond49.i.i
  %42 = getelementptr inbounds i8, ptr %tmp77.i.i, i32 4
  br label %for.body76.i.i

for.body54.i.i:                                   ; preds = %for.cond49.i.i.for.body54.i.i_crit_edge, %for.body54.lr.ph.i.i
  %i47.017.i.i = phi i32 [ 0, %for.body54.lr.ph.i.i ], [ %inc63.i.i, %for.cond49.i.i.for.body54.i.i_crit_edge ]
  %43 = call ptr @memset(ptr %35, i32 0, i32 28)
  %44 = ptrtoint ptr %tmp55.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 79, ptr %tmp55.i.i, align 4, !alias.scope !93
  %arrayidx56.i.i = getelementptr [8 x i32], ptr %tmp55.i.i, i32 0, i32 %i47.017.i.i
  %45 = ptrtoint ptr %arrayidx56.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx56.i.i, align 4
  %arrayidx58.i.i = getelementptr [8 x i32], ptr %arrayidx6.i.i, i32 0, i32 %i47.017.i.i
  %47 = ptrtoint ptr %arrayidx58.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx58.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %48)
  %cmp59.not.i.i = icmp eq i32 %46, %48
  br i1 %cmp59.not.i.i, label %for.cond49.i.i, label %for.body54.i.i.lpddr_pfow_present.exit.i_crit_edge

for.body54.i.i.lpddr_pfow_present.exit.i_crit_edge: ; preds = %for.body54.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lpddr_pfow_present.exit.i

for.cond71.i.i:                                   ; preds = %for.body76.i.i
  %inc85.i.i = add nuw nsw i32 %i69.019.i.i, 1
  %exitcond28.not.i.i = icmp eq i32 %inc85.i.i, %div1.i.i
  br i1 %exitcond28.not.i.i, label %for.cond71.i.i.if.end5.i_crit_edge, label %for.cond71.i.i.for.body76.i.i_crit_edge

for.cond71.i.i.for.body76.i.i_crit_edge:          ; preds = %for.cond71.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body76.i.i

for.cond71.i.i.if.end5.i_crit_edge:               ; preds = %for.cond71.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

for.body76.i.i:                                   ; preds = %for.cond71.i.i.for.body76.i.i_crit_edge, %for.body76.lr.ph.i.i
  %i69.019.i.i = phi i32 [ 0, %for.body76.lr.ph.i.i ], [ %inc85.i.i, %for.cond71.i.i.for.body76.i.i_crit_edge ]
  %49 = call ptr @memset(ptr %42, i32 0, i32 28)
  %50 = ptrtoint ptr %tmp77.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 87, ptr %tmp77.i.i, align 4, !alias.scope !96
  %arrayidx78.i.i = getelementptr [8 x i32], ptr %tmp77.i.i, i32 0, i32 %i69.019.i.i
  %51 = ptrtoint ptr %arrayidx78.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx78.i.i, align 4
  %arrayidx80.i.i = getelementptr [8 x i32], ptr %arrayidx11.i.i, i32 0, i32 %i69.019.i.i
  %53 = ptrtoint ptr %arrayidx80.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx80.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %54)
  %cmp81.not.i.i = icmp eq i32 %52, %54
  br i1 %cmp81.not.i.i, label %for.cond71.i.i, label %for.body76.i.i.lpddr_pfow_present.exit.i_crit_edge

for.body76.i.i.lpddr_pfow_present.exit.i_crit_edge: ; preds = %for.body76.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lpddr_pfow_present.exit.i

lpddr_pfow_present.exit.i:                        ; preds = %for.body76.i.i.lpddr_pfow_present.exit.i_crit_edge, %for.body54.i.i.lpddr_pfow_present.exit.i_crit_edge, %for.body32.i.i.lpddr_pfow_present.exit.i_crit_edge, %for.body.i.i.lpddr_pfow_present.exit.i_crit_edge
  %55 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %map, align 4
  %57 = ptrtoint ptr %pfow_base.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pfow_base.i, align 4
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %56, i32 noundef %58) #12
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %pfow_val.i.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp17.i.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp33.i.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp55.i.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp77.i.i) #9
  br label %cleanup

if.end5.i:                                        ; preds = %for.cond71.i.i.if.end5.i_crit_edge, %if.end.i.if.end5.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %pfow_val.i.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp17.i.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp33.i.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp55.i.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp77.i.i) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp.i.i) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp5.i.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %59 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %59, i32 noundef 3520, i32 noundef 18) #13
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %lpddr_chip_setup.exit.thread.i, label %if.end9.i

lpddr_chip_setup.exit.thread.i:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp.i.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp5.i.i) #9
  br label %cleanup

if.end9.i:                                        ; preds = %if.end5.i
  %60 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %read.i.i, align 4
  %62 = ptrtoint ptr %pfow_base.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %pfow_base.i, align 4
  %add.i.i = add i32 %63, 32
  call void %61(ptr nonnull sret(%union.map_word) align 4 %tmp.i.i, ptr noundef %map, i32 noundef %add.i.i) #9
  %64 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tmp.i.i, align 4
  %66 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %read.i.i, align 4
  %68 = ptrtoint ptr %pfow_base.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pfow_base.i, align 4
  %add4.i.i = add i32 %69, 34
  call void %67(ptr nonnull sret(%union.map_word) align 4 %tmp5.i.i, ptr noundef %map, i32 noundef %add4.i.i) #9
  %70 = ptrtoint ptr %tmp5.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tmp5.i.i, align 4
  %call8.i.i = call fastcc zeroext i16 @lpddr_info_query(ptr noundef %map, ptr noundef nonnull @.str.7) #9
  %72 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %call8.i.i, ptr %call7.i.i.i.i, align 8
  %call10.i.i = call fastcc zeroext i16 @lpddr_info_query(ptr noundef %map, ptr noundef nonnull @.str.8) #9
  %TotalBlocksNum.i.i = getelementptr inbounds %struct.qinfo_chip, ptr %call7.i.i.i.i, i32 0, i32 2
  %73 = ptrtoint ptr %TotalBlocksNum.i.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %call10.i.i, ptr %TotalBlocksNum.i.i, align 4
  %call12.i.i = call fastcc zeroext i16 @lpddr_info_query(ptr noundef %map, ptr noundef nonnull @.str.9) #9
  %BufSizeShift.i.i = getelementptr inbounds %struct.qinfo_chip, ptr %call7.i.i.i.i, i32 0, i32 1
  %74 = ptrtoint ptr %BufSizeShift.i.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %call12.i.i, ptr %BufSizeShift.i.i, align 2
  %call14.i.i = call fastcc zeroext i16 @lpddr_info_query(ptr noundef %map, ptr noundef nonnull @.str.10) #9
  %HWPartsNum.i.i = getelementptr inbounds %struct.qinfo_chip, ptr %call7.i.i.i.i, i32 0, i32 4
  %75 = ptrtoint ptr %HWPartsNum.i.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %call14.i.i, ptr %HWPartsNum.i.i, align 8
  %call16.i.i = call fastcc zeroext i16 @lpddr_info_query(ptr noundef %map, ptr noundef nonnull @.str.11) #9
  %UniformBlockSizeShift.i.i = getelementptr inbounds %struct.qinfo_chip, ptr %call7.i.i.i.i, i32 0, i32 3
  %76 = ptrtoint ptr %UniformBlockSizeShift.i.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %call16.i.i, ptr %UniformBlockSizeShift.i.i, align 2
  %call18.i.i = call fastcc zeroext i16 @lpddr_info_query(ptr noundef %map, ptr noundef nonnull @.str.12) #9
  %SuspEraseSupp.i.i = getelementptr inbounds %struct.qinfo_chip, ptr %call7.i.i.i.i, i32 0, i32 5
  %77 = ptrtoint ptr %SuspEraseSupp.i.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %call18.i.i, ptr %SuspEraseSupp.i.i, align 2
  %call20.i.i = call fastcc zeroext i16 @lpddr_info_query(ptr noundef %map, ptr noundef nonnull @.str.13) #9
  %SingleWordProgTime.i.i = getelementptr inbounds %struct.qinfo_chip, ptr %call7.i.i.i.i, i32 0, i32 6
  %78 = ptrtoint ptr %SingleWordProgTime.i.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %call20.i.i, ptr %SingleWordProgTime.i.i, align 4
  %call22.i.i = call fastcc zeroext i16 @lpddr_info_query(ptr noundef %map, ptr noundef nonnull @.str.14) #9
  %ProgBufferTime.i.i = getelementptr inbounds %struct.qinfo_chip, ptr %call7.i.i.i.i, i32 0, i32 7
  %79 = ptrtoint ptr %ProgBufferTime.i.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %call22.i.i, ptr %ProgBufferTime.i.i, align 2
  %call24.i.i = call fastcc zeroext i16 @lpddr_info_query(ptr noundef %map, ptr noundef nonnull @.str.15) #9
  %BlockEraseTime.i.i = getelementptr inbounds %struct.qinfo_chip, ptr %call7.i.i.i.i, i32 0, i32 8
  %80 = ptrtoint ptr %BlockEraseTime.i.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %call24.i.i, ptr %BlockEraseTime.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp.i.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp5.i.i) #9
  %conv12.i = zext i16 %call14.i.i to i32
  %81 = mul nuw nsw i32 %conv12.i, 200
  %82 = add nuw nsw i32 %81, 16
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %82, i32 noundef 3520) #14
  %tobool15.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool15.not.i, label %if.end9.i.cleanup_crit_edge, label %if.end

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.end9.i
  %conv7.i.i = trunc i32 %71 to i16
  %conv.i.i = trunc i32 %65 to i16
  %83 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %conv.i.i, ptr %call9.i.i.i, align 128
  %lpddr.sroa.6.0.retval.1.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %call9.i.i.i, i32 2
  %84 = ptrtoint ptr %lpddr.sroa.6.0.retval.1.i.i.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv7.i.i, ptr %lpddr.sroa.6.0.retval.1.i.i.sroa_idx.i, align 2
  %lpddr.sroa.8.0.retval.1.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %call9.i.i.i, i32 4
  %85 = ptrtoint ptr %lpddr.sroa.8.0.retval.1.i.i.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call7.i.i.i.i, ptr %lpddr.sroa.8.0.retval.1.i.i.sroa_idx.i, align 4
  %lpddr.sroa.20.0.retval.1.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %call9.i.i.i, i32 8
  %lpddr.sroa.22.0.retval.1.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %call9.i.i.i, i32 12
  %86 = ptrtoint ptr %lpddr.sroa.20.0.retval.1.i.i.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %conv12.i, ptr %lpddr.sroa.20.0.retval.1.i.i.sroa_idx.i, align 8
  %87 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %call7.i.i.i.i, align 8
  %conv21.i = zext i16 %88 to i32
  %89 = ptrtoint ptr %HWPartsNum.i.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %HWPartsNum.i.i, align 8
  %conv24.i = zext i16 %90 to i32
  %91 = call i32 @llvm.cttz.i32(i32 %conv24.i, i1 false) #9, !range !99
  %sub26.i = sub nsw i32 %conv21.i, %91
  %92 = ptrtoint ptr %lpddr.sroa.22.0.retval.1.i.i.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %sub26.i, ptr %lpddr.sroa.22.0.retval.1.i.i.sroa_idx.i, align 4
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 17
  %93 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call9.i.i.i, ptr %fldrv_priv, align 4
  %call1 = call ptr @lpddr_cmdset(ptr noundef %map) #9
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end16, label %if.then3

if.then3:                                         ; preds = %if.end
  %size = getelementptr inbounds %struct.mtd_info, ptr %call1, i32 0, i32 2
  %94 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %size, align 8
  %96 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %size.i, align 4
  %conv = zext i32 %97 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %95, i64 %conv)
  %cmp = icmp ugt i64 %95, %conv
  br i1 %cmp, label %do.end, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %conv8 = trunc i64 %95 to i32
  %shr = lshr i32 %conv8, 10
  %shr10 = lshr i32 %97, 10
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %shr, i32 noundef %shr10) #12
  %98 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %size.i, align 4
  %conv13 = zext i32 %99 to i64
  %100 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %conv13, ptr %size, align 8
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %101 = ptrtoint ptr %lpddr.sroa.8.0.retval.1.i.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %lpddr.sroa.8.0.retval.1.i.i.sroa_idx.i, align 4
  call void @kfree(ptr noundef %102) #9
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #9
  %103 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %fldrv_priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.end, %if.then3.cleanup_crit_edge, %if.end9.i.cleanup_crit_edge, %lpddr_chip_setup.exit.thread.i, %lpddr_pfow_present.exit.i, %do.end.i
  %retval.0 = phi ptr [ null, %if.end16 ], [ %call1, %do.end ], [ %call1, %if.then3.cleanup_crit_edge ], [ null, %do.end.i ], [ null, %lpddr_pfow_present.exit.i ], [ null, %if.end9.i.cleanup_crit_edge ], [ null, %lpddr_chip_setup.exit.thread.i ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lpddr_cmdset(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lpddr_probe_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @unregister_mtd_chip_driver(ptr noundef nonnull @lpddr_chipdrv) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_mtd_chip_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lpddr_probe_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @register_mtd_chip_driver(ptr noundef nonnull @lpddr_chipdrv) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @lpddr_info_query(ptr noundef %map, ptr nocapture noundef readonly %id_str) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %union.map_word, align 4
  %tmp22 = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bankwidth = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 6
  %0 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bankwidth, align 4
  %mul = shl i32 %1, 3
  %call.i = tail call i32 @strcmp(ptr noundef %id_str, ptr noundef nonnull dereferenceable(13) @.str.7) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp eq i32 %call.i, 0
  br i1 %cmp3.i, label %entry.lpddr_get_qinforec_pos.exit_crit_edge, label %for.inc.i

entry.lpddr_get_qinforec_pos.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %lpddr_get_qinforec_pos.exit

for.inc.i:                                        ; preds = %entry
  %call.1.i = tail call i32 @strcmp(ptr noundef %id_str, ptr noundef nonnull dereferenceable(13) @.str.9) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %cmp3.1.i = icmp eq i32 %call.1.i, 0
  br i1 %cmp3.1.i, label %for.inc.i.lpddr_get_qinforec_pos.exit_crit_edge, label %for.inc.1.i

for.inc.i.lpddr_get_qinforec_pos.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lpddr_get_qinforec_pos.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %call.2.i = tail call i32 @strcmp(ptr noundef %id_str, ptr noundef nonnull dereferenceable(15) @.str.8) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %cmp3.2.i = icmp eq i32 %call.2.i, 0
  br i1 %cmp3.2.i, label %for.inc.1.i.lpddr_get_qinforec_pos.exit_crit_edge, label %for.inc.2.i

for.inc.1.i.lpddr_get_qinforec_pos.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lpddr_get_qinforec_pos.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %call.3.i = tail call i32 @strcmp(ptr noundef %id_str, ptr noundef nonnull dereferenceable(22) @.str.11) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %cmp3.3.i = icmp eq i32 %call.3.i, 0
  br i1 %cmp3.3.i, label %for.inc.2.i.lpddr_get_qinforec_pos.exit_crit_edge, label %for.inc.3.i

for.inc.2.i.lpddr_get_qinforec_pos.exit_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lpddr_get_qinforec_pos.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %call.4.i = tail call i32 @strcmp(ptr noundef %id_str, ptr noundef nonnull dereferenceable(11) @.str.10) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i)
  %cmp3.4.i = icmp eq i32 %call.4.i, 0
  br i1 %cmp3.4.i, label %for.inc.3.i.lpddr_get_qinforec_pos.exit_crit_edge, label %for.inc.4.i

for.inc.3.i.lpddr_get_qinforec_pos.exit_crit_edge: ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lpddr_get_qinforec_pos.exit

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %call.5.i = tail call i32 @strcmp(ptr noundef %id_str, ptr noundef nonnull dereferenceable(14) @.str.12) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5.i)
  %cmp3.5.i = icmp eq i32 %call.5.i, 0
  br i1 %cmp3.5.i, label %for.inc.4.i.lpddr_get_qinforec_pos.exit_crit_edge, label %for.inc.5.i

for.inc.4.i.lpddr_get_qinforec_pos.exit_crit_edge: ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lpddr_get_qinforec_pos.exit

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %call.6.i = tail call i32 @strcmp(ptr noundef %id_str, ptr noundef nonnull dereferenceable(19) @.str.13) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6.i)
  %cmp3.6.i = icmp eq i32 %call.6.i, 0
  br i1 %cmp3.6.i, label %for.inc.5.i.lpddr_get_qinforec_pos.exit_crit_edge, label %for.inc.6.i

for.inc.5.i.lpddr_get_qinforec_pos.exit_crit_edge: ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lpddr_get_qinforec_pos.exit

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %call.7.i = tail call i32 @strcmp(ptr noundef %id_str, ptr noundef nonnull dereferenceable(15) @.str.14) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7.i)
  %cmp3.7.i = icmp eq i32 %call.7.i, 0
  br i1 %cmp3.7.i, label %for.inc.6.i.lpddr_get_qinforec_pos.exit_crit_edge, label %for.inc.7.i

for.inc.6.i.lpddr_get_qinforec_pos.exit_crit_edge: ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lpddr_get_qinforec_pos.exit

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %call.8.i = tail call i32 @strcmp(ptr noundef %id_str, ptr noundef nonnull dereferenceable(15) @.str.15) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.8.i)
  %cmp3.8.i = icmp eq i32 %call.8.i, 0
  br i1 %cmp3.8.i, label %for.inc.7.i.lpddr_get_qinforec_pos.exit_crit_edge, label %for.inc.8.i

for.inc.7.i.lpddr_get_qinforec_pos.exit_crit_edge: ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lpddr_get_qinforec_pos.exit

for.inc.8.i:                                      ; preds = %for.inc.7.i
  %call.9.i = tail call i32 @strcmp(ptr noundef %id_str, ptr noundef nonnull dereferenceable(18) @.str.27) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.9.i)
  %cmp3.9.i = icmp eq i32 %call.9.i, 0
  br i1 %cmp3.9.i, label %for.inc.8.i.lpddr_get_qinforec_pos.exit_crit_edge, label %for.inc.9.i

for.inc.8.i.lpddr_get_qinforec_pos.exit_crit_edge: ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lpddr_get_qinforec_pos.exit

for.inc.9.i:                                      ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 4
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %3) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/lpddr/qinfo_probe.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 59, 0\0A.popsection", ""() #9, !srcloc !100
  unreachable

lpddr_get_qinforec_pos.exit:                      ; preds = %for.inc.8.i.lpddr_get_qinforec_pos.exit_crit_edge, %for.inc.7.i.lpddr_get_qinforec_pos.exit_crit_edge, %for.inc.6.i.lpddr_get_qinforec_pos.exit_crit_edge, %for.inc.5.i.lpddr_get_qinforec_pos.exit_crit_edge, %for.inc.4.i.lpddr_get_qinforec_pos.exit_crit_edge, %for.inc.3.i.lpddr_get_qinforec_pos.exit_crit_edge, %for.inc.2.i.lpddr_get_qinforec_pos.exit_crit_edge, %for.inc.1.i.lpddr_get_qinforec_pos.exit_crit_edge, %for.inc.i.lpddr_get_qinforec_pos.exit_crit_edge, %entry.lpddr_get_qinforec_pos.exit_crit_edge
  %i.032.lcssa.i = phi i32 [ 0, %entry.lpddr_get_qinforec_pos.exit_crit_edge ], [ 1, %for.inc.i.lpddr_get_qinforec_pos.exit_crit_edge ], [ 2, %for.inc.1.i.lpddr_get_qinforec_pos.exit_crit_edge ], [ 3, %for.inc.2.i.lpddr_get_qinforec_pos.exit_crit_edge ], [ 4, %for.inc.3.i.lpddr_get_qinforec_pos.exit_crit_edge ], [ 5, %for.inc.4.i.lpddr_get_qinforec_pos.exit_crit_edge ], [ 6, %for.inc.5.i.lpddr_get_qinforec_pos.exit_crit_edge ], [ 7, %for.inc.6.i.lpddr_get_qinforec_pos.exit_crit_edge ], [ 8, %for.inc.7.i.lpddr_get_qinforec_pos.exit_crit_edge ], [ 9, %for.inc.8.i.lpddr_get_qinforec_pos.exit_crit_edge ]
  %arrayidx.i = getelementptr [10 x %struct.qinfo_query_info], ptr @qinfo_array, i32 0, i32 %i.032.lcssa.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 4
  %conv.i = zext i8 %5 to i32
  %notmask.i = shl nsw i32 -1, %mul
  %sub.i = xor i32 %notmask.i, -1
  %and.i = and i32 %conv.i, %sub.i
  %minor7.i = getelementptr [10 x %struct.qinfo_query_info], ptr @qinfo_array, i32 0, i32 %i.032.lcssa.i, i32 1
  %6 = ptrtoint ptr %minor7.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %minor7.i, align 1
  %conv8.i = zext i8 %7 to i32
  %and11.i = and i32 %conv8.i, %sub.i
  %shl12.i = shl i32 %and.i, %mul
  %or.i = or i32 %and11.i, %shl12.i
  %write = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 9
  %8 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write, align 4
  %pfow_base = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 13
  %10 = ptrtoint ptr %pfow_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pfow_base, align 4
  %add = add i32 %11, 128
  tail call void %9(ptr noundef %map, [8 x i32] [i32 152, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 noundef %add) #9
  %12 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write, align 4
  %and = and i32 %or.i, %sub.i
  %14 = ptrtoint ptr %pfow_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pfow_base, align 4
  %add4 = add i32 %15, 136
  %.fca.0.insert50 = insertvalue [8 x i32] poison, i32 %and, 0
  %.fca.1.insert53 = insertvalue [8 x i32] %.fca.0.insert50, i32 0, 1
  %.fca.2.insert56 = insertvalue [8 x i32] %.fca.1.insert53, i32 0, 2
  %.fca.3.insert59 = insertvalue [8 x i32] %.fca.2.insert56, i32 0, 3
  %.fca.4.insert62 = insertvalue [8 x i32] %.fca.3.insert59, i32 0, 4
  %.fca.5.insert65 = insertvalue [8 x i32] %.fca.4.insert62, i32 0, 5
  %.fca.6.insert68 = insertvalue [8 x i32] %.fca.5.insert65, i32 0, 6
  %.fca.7.insert71 = insertvalue [8 x i32] %.fca.6.insert68, i32 0, 7
  tail call void %13(ptr noundef %map, [8 x i32] %.fca.7.insert71, i32 noundef %add4) #9
  %16 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write, align 4
  %shr = lshr i32 %or.i, %mul
  %18 = ptrtoint ptr %pfow_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pfow_base, align 4
  %add9 = add i32 %19, 138
  %.fca.0.insert26 = insertvalue [8 x i32] poison, i32 %shr, 0
  %.fca.1.insert29 = insertvalue [8 x i32] %.fca.0.insert26, i32 0, 1
  %.fca.2.insert32 = insertvalue [8 x i32] %.fca.1.insert29, i32 0, 2
  %.fca.3.insert35 = insertvalue [8 x i32] %.fca.2.insert32, i32 0, 3
  %.fca.4.insert38 = insertvalue [8 x i32] %.fca.3.insert35, i32 0, 4
  %.fca.5.insert41 = insertvalue [8 x i32] %.fca.4.insert38, i32 0, 5
  %.fca.6.insert44 = insertvalue [8 x i32] %.fca.5.insert41, i32 0, 6
  %.fca.7.insert47 = insertvalue [8 x i32] %.fca.6.insert44, i32 0, 7
  tail call void %17(ptr noundef %map, [8 x i32] %.fca.7.insert47, i32 noundef %add9) #9
  %20 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write, align 4
  %22 = ptrtoint ptr %pfow_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pfow_base, align 4
  %add14 = add i32 %23, 192
  tail call void %21(ptr noundef %map, [8 x i32] [i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 noundef %add14) #9
  %read = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %lpddr_get_qinforec_pos.exit
  %dec121 = phi i32 [ 19, %lpddr_get_qinforec_pos.exit ], [ %dec, %if.end.while.body_crit_edge ]
  %24 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read, align 4
  %26 = ptrtoint ptr %pfow_base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pfow_base, align 4
  %add17 = add i32 %27, 204
  call void %25(ptr nonnull sret(%union.map_word) align 4 %tmp, ptr noundef %map, i32 noundef %add17) #9
  %28 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tmp, align 4
  %and18 = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool.not = icmp eq i32 %and18, 0
  br i1 %tobool.not, label %if.end, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end:                                           ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %30(i32 noundef 2147480) #9
  %dec = add nsw i32 %dec121, -1
  %cmp.not = icmp eq i32 %dec121, 0
  br i1 %cmp.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %while.body.while.end_crit_edge
  %31 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read, align 4
  %33 = ptrtoint ptr %pfow_base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pfow_base, align 4
  %add21 = add i32 %34, 132
  call void %32(ptr nonnull sret(%union.map_word) align 4 %tmp22, ptr noundef %map, i32 noundef %add21) #9
  %35 = ptrtoint ptr %tmp22 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tmp22, align 4
  %conv = trunc i32 %36 to i16
  ret i16 %conv
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_mtd_chip_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !13, !15, !17, !19, !20, !21, !22, !24, !25, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !48, !49, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mtd/lpddr/qinfo_probe.c", i32 198, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @lpddr_probe._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @lpddr_probe._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__initcall__kmod_qinfo_probe__189_229_lpddr_probe_init6, !7, !"__initcall__kmod_qinfo_probe__189_229_lpddr_probe_init6", i1 false, i1 false}
!7 = !{!"../drivers/mtd/lpddr/qinfo_probe.c", i32 229, i32 1}
!8 = !{ptr @__exitcall_lpddr_probe_exit, !9, !"__exitcall_lpddr_probe_exit", i1 false, i1 false}
!9 = !{!"../drivers/mtd/lpddr/qinfo_probe.c", i32 230, i32 1}
!10 = !{ptr @__UNIQUE_ID_file190, !11, !"__UNIQUE_ID_file190", i1 false, i1 false}
!11 = !{!"../drivers/mtd/lpddr/qinfo_probe.c", i32 232, i32 1}
!12 = !{ptr @__UNIQUE_ID_license191, !11, !"__UNIQUE_ID_license191", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_author192, !14, !"__UNIQUE_ID_author192", i1 false, i1 false}
!14 = !{!"../drivers/mtd/lpddr/qinfo_probe.c", i32 233, i32 1}
!15 = !{ptr @__UNIQUE_ID_description193, !16, !"__UNIQUE_ID_description193", i1 false, i1 false}
!16 = !{!"../drivers/mtd/lpddr/qinfo_probe.c", i32 234, i32 1}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/mtd/lpddr/qinfo_probe.c", i32 153, i32 3}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @lpddr_probe_chip._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @lpddr_probe_chip._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mtd/lpddr/qinfo_probe.c", i32 115, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @lpddr_pfow_present._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @lpddr_pfow_present._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mtd/lpddr/qinfo_probe.c", i32 132, i32 53}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mtd/lpddr/qinfo_probe.c", i32 133, i32 55}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mtd/lpddr/qinfo_probe.c", i32 134, i32 53}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mtd/lpddr/qinfo_probe.c", i32 135, i32 51}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mtd/lpddr/qinfo_probe.c", i32 137, i32 27}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mtd/lpddr/qinfo_probe.c", i32 138, i32 54}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mtd/lpddr/qinfo_probe.c", i32 140, i32 27}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mtd/lpddr/qinfo_probe.c", i32 141, i32 55}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mtd/lpddr/qinfo_probe.c", i32 142, i32 55}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mtd/lpddr/qinfo_probe.c", i32 58, i32 2}
!47 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @lpddr_get_qinforec_pos._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @lpddr_get_qinforec_pos._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mtd/lpddr/qinfo_probe.c", i32 28, i32 25}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mtd/lpddr/qinfo_probe.c", i32 29, i32 25}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mtd/lpddr/qinfo_probe.c", i32 31, i32 27}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mtd/lpddr/qinfo_probe.c", i32 32, i32 34}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mtd/lpddr/qinfo_probe.c", i32 34, i32 23}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mtd/lpddr/qinfo_probe.c", i32 36, i32 26}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mtd/lpddr/qinfo_probe.c", i32 38, i32 32}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mtd/lpddr/qinfo_probe.c", i32 39, i32 28}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mtd/lpddr/qinfo_probe.c", i32 40, i32 28}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mtd/lpddr/qinfo_probe.c", i32 41, i32 10}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/mtd/lpddr/qinfo_probe.c", i32 41, i32 31}
!72 = !{ptr @qinfo_array, !73, !"qinfo_array", i1 false, i1 false}
!73 = !{!"../drivers/mtd/lpddr/qinfo_probe.c", i32 26, i32 32}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/mtd/lpddr/qinfo_probe.c", i32 214, i32 11}
!76 = !{ptr @lpddr_chipdrv, !77, !"lpddr_chipdrv", i1 false, i1 false}
!77 = !{!"../drivers/mtd/lpddr/qinfo_probe.c", i32 212, i32 31}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{!88}
!88 = distinct !{!88, !89, !"lpddr_build_cmd: %agg.result"}
!89 = distinct !{!89, !"lpddr_build_cmd"}
!90 = !{!91}
!91 = distinct !{!91, !92, !"lpddr_build_cmd: %agg.result"}
!92 = distinct !{!92, !"lpddr_build_cmd"}
!93 = !{!94}
!94 = distinct !{!94, !95, !"lpddr_build_cmd: %agg.result"}
!95 = distinct !{!95, !"lpddr_build_cmd"}
!96 = !{!97}
!97 = distinct !{!97, !98, !"lpddr_build_cmd: %agg.result"}
!98 = distinct !{!98, !"lpddr_build_cmd"}
!99 = !{i32 0, i32 33}
!100 = !{i64 2153234500, i64 2153234995, i64 2153234537, i64 2153234593, i64 2153234627, i64 2153234651, i64 2153234692, i64 2153234713, i64 2153234741, i64 2153234775}
