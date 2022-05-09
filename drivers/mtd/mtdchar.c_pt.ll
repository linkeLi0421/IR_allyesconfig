; ModuleID = '/llk/IR_all_yes/drivers/mtd/mtdchar.c_pt.bc'
source_filename = "../drivers/mtd/mtdchar.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.80 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.80 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.mtd_oob_ops = type { i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.mtd_file_info = type { ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.74, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.75, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.76, ptr, %struct.address_space, %struct.list_head, %union.anon.77, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.74 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.75 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.76 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.77 = type { ptr }
%struct.mtd_write_req = type { i64, i64, i64, i64, i64, i8, [7 x i8] }
%struct.mtd_info_user = type { i8, i32, i32, i32, i32, i32, i64 }
%struct.erase_info_user64 = type { i64, i64 }
%struct.erase_info_user = type { i32, i32 }
%struct.mtd_oob_buf = type { i32, i32, ptr }
%struct.mtd_oob_buf64 = type { i64, i32, i32, i64 }
%struct.nand_oobinfo = type { i32, i32, [8 x [2 x i32]], [32 x i32] }
%struct.otp_info = type { i32, i32, i32 }
%struct.blkpg_ioctl_arg = type { i32, i32, i32, ptr }
%struct.region_info_user = type { i32, i32, i32, i32 }
%struct.mtd_erase_region_info = type { i64, i32, i32, ptr }
%struct.erase_info = type { i64, i64, i64 }
%struct.mtd_oob_region = type { i32, i32 }
%struct.nand_ecclayout_user = type { i32, [64 x i32], i32, [8 x %struct.nand_oobfree] }
%struct.nand_oobfree = type { i32, i32 }
%struct.blkpg_partition = type { i64, i64, i32, [64 x i8], [64 x i8] }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mtd\00", [28 x i8] zeroinitializer }, align 32
@mtd_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @mtdchar_lseek, ptr @mtdchar_read, ptr @mtdchar_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtdchar_unlocked_ioctl, ptr null, ptr @mtdchar_mmap, i32 0, ptr @mtdchar_open, ptr null, ptr @mtdchar_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@init_mtdchar._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013Can't allocate major number %d for MTD\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"init_mtdchar\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/mtd/mtdchar.c\00", [42 x i8] zeroinitializer }, align 32
@init_mtdchar._entry_ptr = internal global ptr @init_mtdchar._entry, section ".printk_index", align 4
@__UNIQUE_ID_alias289 = internal constant [26 x i8] c"mtd.alias=char-major-90-*\00", section ".modinfo", align 1
@mtdchar_read.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.3, ptr @.str.5, i8 0, i8 34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mtdchar_read\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MTD_read\0A\00", [22 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@mtdchar_write.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.3, ptr @.str.10, i8 0, i8 57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mtdchar_write\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MTD_write\0A\00", [21 x i8] zeroinitializer }, align 32
@mtdchar_ioctl.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.3, ptr @.str.12, i8 0, i8 -82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mtdchar_ioctl\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MTD_ioctl\0A\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mtdchar_open.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.3, ptr @.str.14, i8 0, i8 13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mtdchar_open\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MTD_open\0A\00", [22 x i8] zeroinitializer }, align 32
@mtdchar_close.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.3, ptr @.str.16, i8 0, i8 24, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mtdchar_close\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MTD_close\0A\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967179, i64 4294967222]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.19 = internal global [28 x i64] [i64 26, i64 32, i64 4703, i64 4713, i64 19731, i64 1074023694, i64 1074285826, i64 1074285829, i64 1074285830, i64 1074285835, i64 1074285836, i64 1074547983, i64 1074547993, i64 1074810132, i64 2147765511, i64 2147765517, i64 2148027671, i64 2148289808, i64 2148551954, i64 2149600513, i64 2160610570, i64 2168999185, i64 3222031619, i64 3222031620, i64 3222293768, i64 3222818069, i64 3222818070, i64 3224390936]
@__sancov_gen_cov_switch_values.20 = internal global [27 x i64] [i64 25, i64 32, i64 4713, i64 19731, i64 1074023694, i64 1074285826, i64 1074285829, i64 1074285830, i64 1074285835, i64 1074285836, i64 1074547983, i64 1074547993, i64 1074810132, i64 2147765511, i64 2147765517, i64 2148027671, i64 2148289808, i64 2148551954, i64 2149600513, i64 2160610570, i64 2168999185, i64 3222031619, i64 3222031620, i64 3222293768, i64 3222818069, i64 3222818070, i64 3224390936]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.22 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1282, i32 8 }
@___asan_gen_.28 = private unnamed_addr constant [9 x i8] c"mtd_fops\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1259, i32 37 }
@___asan_gen_.31 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1284, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 139, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 230, i32 6 }
@___asan_gen_.53 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 214, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 174, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 229, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 697, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 53, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private constant [25 x i8] c"../drivers/mtd/mtdchar.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 96, i32 2 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_alias289, ptr @cleanup_mtdchar, ptr @init_mtdchar._entry, ptr @init_mtdchar._entry_ptr, ptr @.str, ptr @mtd_fops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_mtdchar._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_mtdchar() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__register_chrdev(i32 noundef 90, i32 noundef 0, i32 noundef 1048576, ptr noundef nonnull @.str, ptr noundef nonnull @mtd_fops) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 90) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @cleanup_mtdchar() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__unregister_chrdev(i32 noundef 90, i32 noundef 0, i32 noundef 1048576, ptr noundef nonnull @.str) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__unregister_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mtdchar_lseek(ptr noundef %file, i64 noundef %offset, i32 noundef %orig) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %size = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %size, align 8
  %call = tail call i64 @fixed_size_llseek(ptr noundef %file, i64 noundef %offset, i32 noundef %orig, i64 noundef %5) #10
  ret i64 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtdchar_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %ppos) #4 align 64 {
entry:
  %retlen = alloca i32, align 4
  %size = alloca i32, align 4
  %ops = alloca %struct.mtd_oob_ops, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen) #10
  %4 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %retlen, align 4, !annotation !49
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #10
  %5 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %count, ptr %size, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtdchar_read.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtdchar_read, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !50

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtdchar_read.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.5) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ppos, align 8
  %conv = zext i32 %count to i64
  %add = add i64 %7, %conv
  %size4 = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %size4 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %size4, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %9)
  %cmp = icmp ugt i64 %add, %9
  br i1 %cmp, label %if.then6, label %do.end.if.end14_crit_edge

do.end.if.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %7)
  %cmp8 = icmp ugt i64 %9, %7
  br i1 %cmp8, label %if.then10, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub i64 %9, %7
  %conv12 = trunc i64 %sub to i32
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %do.end.if.end14_crit_edge
  %count.addr.0 = phi i32 [ %conv12, %if.then10 ], [ %count, %do.end.if.end14_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.0)
  %tobool15.not = icmp eq i32 %count.addr.0, 0
  br i1 %tobool15.not, label %if.end14.cleanup_crit_edge, label %if.end17

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.end14
  %call18 = call ptr @mtd_kmalloc_up_to(ptr noundef %3, ptr noundef nonnull %size) #10
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %while.body.lr.ph

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end17
  %mode = getelementptr inbounds %struct.mtd_file_info, ptr %1, i32 0, i32 1
  %datbuf = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 6
  %oobbuf = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 7
  %len31 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 1
  %retlen33 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 2
  %10 = getelementptr inbounds i8, ptr %ops, i32 8
  br label %while.body

while.body:                                       ; preds = %if.else44.while.body_crit_edge, %while.body.lr.ph
  %buf.addr.0120 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr, %if.else44.while.body_crit_edge ]
  %count.addr.1119 = phi i32 [ %count.addr.0, %while.body.lr.ph ], [ %sub47, %if.else44.while.body_crit_edge ]
  %total_retlen.0118 = phi i32 [ 0, %while.body.lr.ph ], [ %add45, %if.else44.while.body_crit_edge ]
  %11 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size, align 4
  %13 = call i32 @llvm.umin.i32(i32 %count.addr.1119, i32 %12)
  %14 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mode, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %15, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb27
    i32 3, label %sw.bb29
  ]

sw.bb:                                            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %ppos, align 8
  %call26 = call i32 @mtd_read_fact_prot_reg(ptr noundef %3, i64 noundef %18, i32 noundef %13, ptr noundef nonnull %retlen, ptr noundef nonnull %call18) #10
  br label %sw.epilog

sw.bb27:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %ppos, align 8
  %call28 = call i32 @mtd_read_user_prot_reg(ptr noundef %3, i64 noundef %20, i32 noundef %13, ptr noundef nonnull %retlen, ptr noundef nonnull %call18) #10
  br label %sw.epilog

sw.bb29:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops) #10
  %21 = call ptr @memset(ptr %10, i32 0, i32 16)
  %22 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %ops, align 4
  %23 = ptrtoint ptr %datbuf to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call18, ptr %datbuf, align 4
  %24 = ptrtoint ptr %oobbuf to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %oobbuf, align 4
  %25 = ptrtoint ptr %len31 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %13, ptr %len31, align 4
  %26 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %ppos, align 8
  %call32 = call i32 @mtd_read_oob(ptr noundef %3, i64 noundef %27, ptr noundef nonnull %ops) #10
  %28 = ptrtoint ptr %retlen33 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %retlen33, align 4
  %30 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %retlen, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops) #10
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %ppos, align 8
  %call34 = call i32 @mtd_read(ptr noundef %3, i64 noundef %32, i32 noundef %13, ptr noundef nonnull %retlen, ptr noundef nonnull %call18) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb29, %sw.bb27, %sw.bb
  %ret.0 = phi i32 [ %call34, %sw.default ], [ %call32, %sw.bb29 ], [ %call28, %sw.bb27 ], [ %call26, %sw.bb ]
  %33 = zext i32 %ret.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %ret.0, label %sw.epilog.cleanup.sink.split_crit_edge [
    i32 0, label %sw.epilog.if.then38_crit_edge
    i32 -74, label %sw.epilog.if.then38_crit_edge137
    i32 -117, label %sw.epilog.if.then38_crit_edge138
  ]

sw.epilog.if.then38_crit_edge138:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then38

sw.epilog.if.then38_crit_edge137:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then38

sw.epilog.if.then38_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then38

sw.epilog.cleanup.sink.split_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then38:                                        ; preds = %sw.epilog.if.then38_crit_edge, %sw.epilog.if.then38_crit_edge137, %sw.epilog.if.then38_crit_edge138
  %34 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %retlen, align 4
  %conv39 = zext i32 %35 to i64
  %36 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ppos, align 8
  %add40 = add i64 %37, %conv39
  store i64 %add40, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp9.i.i = icmp slt i32 %35, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.then38
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.cleanup.sink.split_crit_edge, label %if.then27.i.i, !prof !51

land.rhs16.i.i.cleanup.sink.split_crit_edge:      ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %cleanup.sink.split

if.then.i.i.i:                                    ; preds = %if.then38
  call void @__check_object_size(ptr noundef nonnull %call18, i32 noundef %35, i1 noundef zeroext true) #10
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %38 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0120, i32 %35, i32 -1226833920) #14, !srcloc !52
  %asmresult.i.i = extractvalue { i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call18, i32 noundef %35) #10
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf.addr.0120, ptr noundef nonnull %call18, i32 noundef %35) #10
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %35, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %35, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool42.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool42.not, label %if.else44, label %copy_to_user.exit.cleanup.sink.split_crit_edge

copy_to_user.exit.cleanup.sink.split_crit_edge:   ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.else44:                                        ; preds = %copy_to_user.exit
  %39 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %retlen, align 4
  %add45 = add i32 %40, %total_retlen.0118
  %sub47 = sub i32 %count.addr.1119, %40
  %add.ptr = getelementptr i8, ptr %buf.addr.0120, i32 %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp48 = icmp eq i32 %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub47)
  %tobool22.not136 = icmp eq i32 %sub47, 0
  %tobool22.not = select i1 %cmp48, i1 true, i1 %tobool22.not136
  br i1 %tobool22.not, label %if.else44.cleanup.sink.split_crit_edge, label %if.else44.while.body_crit_edge

if.else44.while.body_crit_edge:                   ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.else44.cleanup.sink.split_crit_edge:           ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else44.cleanup.sink.split_crit_edge, %copy_to_user.exit.cleanup.sink.split_crit_edge, %if.then27.i.i, %land.rhs16.i.i.cleanup.sink.split_crit_edge, %sw.epilog.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -14, %land.rhs16.i.i.cleanup.sink.split_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %copy_to_user.exit.cleanup.sink.split_crit_edge ], [ %ret.0, %sw.epilog.cleanup.sink.split_crit_edge ], [ %add45, %if.else44.cleanup.sink.split_crit_edge ]
  call void @kfree(ptr noundef nonnull %call18) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end17.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.then6.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14.cleanup_crit_edge ], [ -12, %if.end17.cleanup_crit_edge ], [ 0, %if.then6.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtdchar_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %ppos) #4 align 64 {
entry:
  %size = alloca i32, align 4
  %retlen = alloca i32, align 4
  %ops = alloca %struct.mtd_oob_ops, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #10
  %4 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %count, ptr %size, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen) #10
  %5 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %retlen, align 4, !annotation !49
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtdchar_write.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtdchar_write, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !50

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtdchar_write.__UNIQUE_ID_ddebug275, ptr noundef nonnull @.str.10) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ppos, align 8
  %size4 = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %size4 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %size4, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %7)
  %cmp.not = icmp ugt i64 %9, %7
  br i1 %cmp.not, label %if.end6, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %conv = zext i32 %count to i64
  %add = add i64 %7, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %9)
  %cmp8 = icmp ugt i64 %add, %9
  %sub = sub i64 %9, %7
  %conv12 = trunc i64 %sub to i32
  %count.addr.0 = select i1 %cmp8, i32 %conv12, i32 %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.0)
  %tobool14.not = icmp eq i32 %count.addr.0, 0
  br i1 %tobool14.not, label %if.end6.cleanup_crit_edge, label %if.end16

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end6
  %call17 = call ptr @mtd_kmalloc_up_to(ptr noundef %3, ptr noundef nonnull %size) #10
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end16.cleanup_crit_edge, label %while.body.lr.ph

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end16
  %mode = getelementptr inbounds %struct.mtd_file_info, ptr %1, i32 0, i32 1
  %datbuf = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 6
  %oobbuf = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 7
  %ooboffs = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 5
  %len33 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 1
  %retlen35 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 2
  %10 = getelementptr inbounds i8, ptr %ops, i32 8
  br label %while.body

while.body:                                       ; preds = %if.then43.while.body_crit_edge, %while.body.lr.ph
  %buf.addr.0119 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr, %if.then43.while.body_crit_edge ]
  %count.addr.1118 = phi i32 [ %count.addr.0, %while.body.lr.ph ], [ %sub47, %if.then43.while.body_crit_edge ]
  %total_retlen.0117 = phi i32 [ 0, %while.body.lr.ph ], [ %add46, %if.then43.while.body_crit_edge ]
  %11 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size, align 4
  %13 = call i32 @llvm.umin.i32(i32 %count.addr.1118, i32 %12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp9.i.i = icmp slt i32 %13, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %while.body
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.cleanup.sink.split_crit_edge, label %if.then27.i.i, !prof !51

land.rhs16.i.i.cleanup.sink.split_crit_edge:      ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %cleanup.sink.split

if.then.i.i.i:                                    ; preds = %while.body
  call void @__check_object_size(ptr noundef nonnull %call17, i32 noundef %13, i1 noundef zeroext false) #10
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %14 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0119, i32 %13, i32 -1226833920) #14, !srcloc !53
  %asmresult.i.i = extractvalue { i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !51

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call17, i32 noundef %13) #10
  %15 = call i32 @llvm.read_register.i32(metadata !39) #10
  %and.i.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !54
  %and.i.i.i.i = and i32 %17, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %call17, ptr noundef %buf.addr.0119, i32 noundef %13) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #10, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %13, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %13, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end28, label %if.then11.i.i, !prof !51

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = sub i32 %13, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call17, i32 %sub.i.i
  %18 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup.sink.split

if.end28:                                         ; preds = %if.end.i.i
  %19 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mode, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %20, label %sw.default [
    i32 1, label %if.end28.cleanup.sink.split_crit_edge
    i32 2, label %sw.bb29
    i32 3, label %sw.bb31
  ]

if.end28.cleanup.sink.split_crit_edge:            ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

sw.bb29:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %ppos, align 8
  %call30 = call i32 @mtd_write_user_prot_reg(ptr noundef %3, i64 noundef %23, i32 noundef %13, ptr noundef nonnull %retlen, ptr noundef nonnull %call17) #10
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops) #10
  %24 = call ptr @memset(ptr %10, i32 0, i32 12)
  %25 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %ops, align 4
  %26 = ptrtoint ptr %datbuf to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call17, ptr %datbuf, align 4
  %27 = ptrtoint ptr %oobbuf to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %oobbuf, align 4
  %28 = ptrtoint ptr %ooboffs to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %ooboffs, align 4
  %29 = ptrtoint ptr %len33 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %13, ptr %len33, align 4
  %30 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %ppos, align 8
  %call34 = call i32 @mtd_write_oob(ptr noundef %3, i64 noundef %31, ptr noundef nonnull %ops) #10
  %32 = ptrtoint ptr %retlen35 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %retlen35, align 4
  %34 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %retlen, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops) #10
  br label %sw.epilog

sw.default:                                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %ppos, align 8
  %call36 = call i32 @mtd_write(ptr noundef %3, i64 noundef %36, i32 noundef %13, ptr noundef nonnull %retlen, ptr noundef nonnull %call17) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb31, %sw.bb29
  %ret.0 = phi i32 [ %call36, %sw.default ], [ %call34, %sw.bb31 ], [ %call30, %sw.bb29 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %ret.0)
  %cmp37 = icmp ne i32 %ret.0, -28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %total_retlen.0117)
  %tobool39.not = icmp eq i32 %total_retlen.0117, 0
  %or.cond = select i1 %cmp37, i1 true, i1 %tobool39.not
  br i1 %or.cond, label %if.end41, label %sw.epilog.cleanup.sink.split_crit_edge

sw.epilog.cleanup.sink.split_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end41:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool42.not = icmp eq i32 %ret.0, 0
  br i1 %tobool42.not, label %if.then43, label %if.end41.cleanup.sink.split_crit_edge

if.end41.cleanup.sink.split_crit_edge:            ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then43:                                        ; preds = %if.end41
  %37 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %retlen, align 4
  %conv44 = zext i32 %38 to i64
  %39 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %ppos, align 8
  %add45 = add i64 %40, %conv44
  store i64 %add45, ptr %ppos, align 8
  %add46 = add i32 %38, %total_retlen.0117
  %sub47 = sub i32 %count.addr.1118, %38
  %add.ptr = getelementptr i8, ptr %buf.addr.0119, i32 %38
  %tobool21.not = icmp eq i32 %sub47, 0
  br i1 %tobool21.not, label %if.then43.cleanup.sink.split_crit_edge, label %if.then43.while.body_crit_edge

if.then43.while.body_crit_edge:                   ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.then43.cleanup.sink.split_crit_edge:           ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then43.cleanup.sink.split_crit_edge, %if.end41.cleanup.sink.split_crit_edge, %sw.epilog.cleanup.sink.split_crit_edge, %if.end28.cleanup.sink.split_crit_edge, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup.sink.split_crit_edge ], [ %ret.0, %if.end41.cleanup.sink.split_crit_edge ], [ -30, %if.end28.cleanup.sink.split_crit_edge ], [ %add46, %if.then43.cleanup.sink.split_crit_edge ], [ %total_retlen.0117, %sw.epilog.cleanup.sink.split_crit_edge ]
  call void @kfree(ptr noundef nonnull %call17) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end16.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %do.end.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ -12, %if.end16.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtdchar_unlocked_ioctl(ptr nocapture noundef %file, i32 noundef %cmd, i32 noundef %arg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %entry
  %mtd.addr.0.i = phi ptr [ %3, %entry ], [ %5, %while.cond.i.while.cond.i_crit_edge ]
  %parent.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i, i32 0, i32 62
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %mtd_get_master.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

mtd_get_master.exit:                              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %chrdev_lock = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i, i32 0, i32 64, i32 1, i32 60
  tail call void @mutex_lock_nested(ptr noundef %chrdev_lock, i32 noundef 0) #10
  %call2 = tail call fastcc i32 @mtdchar_ioctl(ptr noundef %file, i32 noundef %cmd, i32 noundef %arg)
  tail call void @mutex_unlock(ptr noundef %chrdev_lock) #10
  ret i32 %call2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mtdchar_mmap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %vma) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtdchar_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef %file) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = lshr i32 %1, 1
  %shr45 = and i32 %and.i, 524287
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtdchar_open.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtdchar_open, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !50

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtdchar_open.__UNIQUE_ID_ddebug270, ptr noundef nonnull @.str.14) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %2 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_mode, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  %and5 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %or.cond = select i1 %tobool4.not, i1 true, i1 %tobool6.not
  br i1 %or.cond, label %if.end8, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %call9 = tail call ptr @get_mtd_device(ptr noundef null, i32 noundef %shr45) #10
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %5 = ptrtoint ptr %call9 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %call9, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp = icmp eq i8 %6, 0
  br i1 %cmp, label %if.end13.out1_crit_edge, label %if.end16

if.end13.out1_crit_edge:                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %out1

if.end16:                                         ; preds = %if.end13
  %7 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %f_mode, align 8
  %and18 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end16.if.end24_crit_edge, label %land.lhs.true20

if.end16.if.end24_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true20:                                  ; preds = %if.end16
  %flags = getelementptr inbounds %struct.mtd_info, ptr %call9, i32 0, i32 1
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %and21 = and i32 %10, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %land.lhs.true20.out1_crit_edge, label %land.lhs.true20.if.end24_crit_edge

land.lhs.true20.if.end24_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true20.out1_crit_edge:                   ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #12
  br label %out1

if.end24:                                         ; preds = %land.lhs.true20.if.end24_crit_edge, %if.end16.if.end24_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 8) #15
  %tobool26.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool26.not, label %if.end24.out1_crit_edge, label %if.end28

if.end24.out1_crit_edge:                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %out1

if.end28:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call9, ptr %call7.i.i, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %13 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %private_data, align 4
  br label %cleanup

out1:                                             ; preds = %if.end24.out1_crit_edge, %land.lhs.true20.out1_crit_edge, %if.end13.out1_crit_edge
  %ret.0 = phi i32 [ -19, %if.end13.out1_crit_edge ], [ -13, %land.lhs.true20.out1_crit_edge ], [ -12, %if.end24.out1_crit_edge ]
  tail call void @put_mtd_device(ptr noundef %call9) #10
  br label %cleanup

cleanup:                                          ; preds = %out1, %if.end28, %if.then11, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then11 ], [ %ret.0, %out1 ], [ 0, %if.end28 ], [ -13, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtdchar_close(ptr nocapture noundef readnone %inode, ptr nocapture noundef %file) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtdchar_close.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtdchar_close, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !50

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtdchar_close.__UNIQUE_ID_ddebug271, ptr noundef nonnull @.str.16) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %4 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_mode, align 8
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.end.if.end6_crit_edge, label %do.end.while.cond.i.i_crit_edge

do.end.while.cond.i.i_crit_edge:                  ; preds = %do.end
  br label %while.cond.i.i

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %do.end.while.cond.i.i_crit_edge
  %mtd.addr.0.i.i = phi ptr [ %7, %while.cond.i.i.while.cond.i.i_crit_edge ], [ %3, %do.end.while.cond.i.i_crit_edge ]
  %parent.i.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i, i32 0, i32 62
  %6 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %mtd_get_master.exit.i, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i.i

mtd_get_master.exit.i:                            ; preds = %while.cond.i.i
  %_sync.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i, i32 0, i32 37
  %8 = ptrtoint ptr %_sync.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_sync.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %mtd_get_master.exit.i.if.end6_crit_edge, label %if.then.i

mtd_get_master.exit.i.if.end6_crit_edge:          ; preds = %mtd_get_master.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then.i:                                        ; preds = %mtd_get_master.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %9(ptr noundef %mtd.addr.0.i.i) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then.i, %mtd_get_master.exit.i.if.end6_crit_edge, %do.end.if.end6_crit_edge
  tail call void @put_mtd_device(ptr noundef %3) #10
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %private_data, align 4
  tail call void @kfree(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @fixed_size_llseek(ptr noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mtd_kmalloc_up_to(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read_fact_prot_reg(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read_user_prot_reg(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read_oob(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_write_user_prot_reg(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_write_oob(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_write(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtdchar_ioctl(ptr nocapture noundef %file, i32 noundef %cmd, i32 noundef %arg) unnamed_addr #4 align 64 {
entry:
  %req.i = alloca %struct.mtd_write_req, align 8
  %ops.i = alloca %struct.mtd_oob_ops, align 4
  %info = alloca %struct.mtd_info_user, align 8
  %einfo64 = alloca %struct.erase_info_user64, align 8
  %einfo32 = alloca %struct.erase_info_user, align 4
  %buf = alloca %struct.mtd_oob_buf, align 4
  %buf137 = alloca %struct.mtd_oob_buf, align 4
  %buf153 = alloca %struct.mtd_oob_buf64, align 8
  %buf168 = alloca %struct.mtd_oob_buf64, align 8
  %einfo = alloca %struct.erase_info_user, align 4
  %einfo198 = alloca %struct.erase_info_user, align 4
  %einfo211 = alloca %struct.erase_info_user, align 4
  %oi = alloca %struct.nand_oobinfo, align 4
  %offs = alloca i64, align 8
  %offs245 = alloca i64, align 8
  %mode = alloca i32, align 4
  %retlen = alloca i32, align 4
  %nbr = alloca i32, align 4
  %oinfo = alloca %struct.otp_info, align 4
  %a = alloca %struct.blkpg_ioctl_arg, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %entry
  %mtd.addr.0.i = phi ptr [ %3, %entry ], [ %5, %while.cond.i.while.cond.i_crit_edge ]
  %parent.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i, i32 0, i32 62
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %mtd_get_master.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

mtd_get_master.exit:                              ; preds = %while.cond.i
  %6 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %info) #10
  %7 = call ptr @memset(ptr %info, i32 255, i32 32)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtdchar_ioctl.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtdchar_ioctl, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !50

if.then:                                          ; preds = %mtd_get_master.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtdchar_ioctl.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.12) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %mtd_get_master.exit
  %8 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %cmd, label %do.end.cleanup360_crit_edge [
    i32 -2147201785, label %do.end.sw.epilog_crit_edge
    i32 -1072673528, label %do.end.sw.epilog_crit_edge1127
    i32 -2145366783, label %do.end.sw.epilog_crit_edge1128
    i32 -1072935676, label %do.end.sw.epilog_crit_edge1129
    i32 -1072149226, label %do.end.sw.epilog_crit_edge1130
    i32 -2146939625, label %do.end.sw.epilog_crit_edge1131
    i32 -2134356726, label %do.end.sw.epilog_crit_edge1132
    i32 1074285835, label %do.end.sw.epilog_crit_edge1133
    i32 -2147201779, label %do.end.sw.epilog_crit_edge1134
    i32 1074023694, label %do.end.sw.epilog_crit_edge1135
    i32 1074547983, label %do.end.sw.epilog_crit_edge1136
    i32 -2125968111, label %do.end.sw.epilog_crit_edge1137
    i32 -2146415342, label %do.end.sw.epilog_crit_edge1138
    i32 19731, label %do.end.sw.epilog_crit_edge1139
    i32 4713, label %do.end.sw.epilog_crit_edge1140
    i32 4703, label %do.end.sw.epilog_crit_edge1141
    i32 1074285826, label %do.end.sw.bb5_crit_edge
    i32 1074810132, label %do.end.sw.bb5_crit_edge1142
    i32 1074285829, label %do.end.sw.bb5_crit_edge1143
    i32 1074285830, label %do.end.sw.bb5_crit_edge1144
    i32 1074285836, label %do.end.sw.bb5_crit_edge1145
    i32 -1072935677, label %do.end.sw.bb5_crit_edge1146
    i32 -1072149227, label %do.end.sw.bb5_crit_edge1147
    i32 -1070576360, label %do.end.sw.bb5_crit_edge1148
    i32 -2146677488, label %do.end.sw.bb5_crit_edge1149
    i32 1074547993, label %do.end.sw.bb5_crit_edge1150
  ]

do.end.sw.bb5_crit_edge1150:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

do.end.sw.bb5_crit_edge1149:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

do.end.sw.bb5_crit_edge1148:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

do.end.sw.bb5_crit_edge1147:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

do.end.sw.bb5_crit_edge1146:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

do.end.sw.bb5_crit_edge1145:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

do.end.sw.bb5_crit_edge1144:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

do.end.sw.bb5_crit_edge1143:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

do.end.sw.bb5_crit_edge1142:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

do.end.sw.bb5_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

do.end.sw.epilog_crit_edge1141:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end.sw.epilog_crit_edge1140:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end.sw.epilog_crit_edge1139:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end.sw.epilog_crit_edge1138:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end.sw.epilog_crit_edge1137:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end.sw.epilog_crit_edge1136:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end.sw.epilog_crit_edge1135:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end.sw.epilog_crit_edge1134:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end.sw.epilog_crit_edge1133:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end.sw.epilog_crit_edge1132:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end.sw.epilog_crit_edge1131:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end.sw.epilog_crit_edge1130:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end.sw.epilog_crit_edge1129:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end.sw.epilog_crit_edge1128:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end.sw.epilog_crit_edge1127:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end.cleanup360_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup360

sw.bb5:                                           ; preds = %do.end.sw.bb5_crit_edge, %do.end.sw.bb5_crit_edge1142, %do.end.sw.bb5_crit_edge1143, %do.end.sw.bb5_crit_edge1144, %do.end.sw.bb5_crit_edge1145, %do.end.sw.bb5_crit_edge1146, %do.end.sw.bb5_crit_edge1147, %do.end.sw.bb5_crit_edge1148, %do.end.sw.bb5_crit_edge1149, %do.end.sw.bb5_crit_edge1150
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %9 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %f_mode, align 8
  %and = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %sw.bb5.cleanup360_crit_edge, label %sw.bb5.sw.epilog_crit_edge

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb5.cleanup360_crit_edge:                      ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup360

sw.epilog:                                        ; preds = %sw.bb5.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge1127, %do.end.sw.epilog_crit_edge1128, %do.end.sw.epilog_crit_edge1129, %do.end.sw.epilog_crit_edge1130, %do.end.sw.epilog_crit_edge1131, %do.end.sw.epilog_crit_edge1132, %do.end.sw.epilog_crit_edge1133, %do.end.sw.epilog_crit_edge1134, %do.end.sw.epilog_crit_edge1135, %do.end.sw.epilog_crit_edge1136, %do.end.sw.epilog_crit_edge1137, %do.end.sw.epilog_crit_edge1138, %do.end.sw.epilog_crit_edge1139, %do.end.sw.epilog_crit_edge1140, %do.end.sw.epilog_crit_edge1141
  %11 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %cmd, label %sw.epilog.sw.epilog359_crit_edge [
    i32 -2147201785, label %sw.bb9
    i32 -1072673528, label %sw.bb14
    i32 -2145366783, label %sw.bb78
    i32 1074285826, label %sw.epilog.sw.bb91_crit_edge
    i32 1074810132, label %sw.epilog.sw.bb91_crit_edge1151
    i32 -1072935677, label %sw.bb123
    i32 -1072935676, label %sw.bb136
    i32 -1072149227, label %sw.bb152
    i32 -1072149226, label %sw.bb167
    i32 -1070576360, label %sw.epilog.while.cond.i.i_crit_edge
    i32 1074285829, label %sw.bb185
    i32 1074285830, label %sw.bb197
    i32 -2146939625, label %sw.bb210
    i32 -2134356726, label %sw.bb223
    i32 1074285835, label %sw.bb237
    i32 1074285836, label %sw.bb244
    i32 -2147201779, label %sw.bb252
    i32 1074023694, label %sw.epilog.sw.bb261_crit_edge
    i32 1074547983, label %sw.epilog.sw.bb261_crit_edge1152
    i32 -2146677488, label %sw.epilog.sw.bb290_crit_edge
    i32 1074547993, label %sw.epilog.sw.bb290_crit_edge1153
    i32 -2125968111, label %sw.bb315
    i32 -2146415342, label %sw.bb331
    i32 19731, label %sw.bb336
    i32 4713, label %sw.bb349
  ]

sw.epilog.sw.bb290_crit_edge1153:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb290

sw.epilog.sw.bb290_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb290

sw.epilog.sw.bb261_crit_edge1152:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb261

sw.epilog.sw.bb261_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb261

sw.epilog.while.cond.i.i_crit_edge:               ; preds = %sw.epilog
  br label %while.cond.i.i

sw.epilog.sw.bb91_crit_edge1151:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb91

sw.epilog.sw.bb91_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb91

sw.epilog.sw.epilog359_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog359

sw.bb9:                                           ; preds = %sw.epilog
  %numeraseregions = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 19
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %sw.bb9.cleanup360_crit_edge, label %if.end.i.i

sw.bb9.cleanup360_crit_edge:                      ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup360

if.end.i.i:                                       ; preds = %sw.bb9
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 4, i32 -1226833920) #14, !srcloc !52
  %asmresult.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup360_crit_edge

if.end.i.i.cleanup360_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup360

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %numeraseregions, i32 noundef 4) #10
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %6, ptr noundef %numeraseregions, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool11.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool11.not, label %copy_to_user.exit.sw.epilog359_crit_edge, label %copy_to_user.exit.cleanup360_crit_edge

copy_to_user.exit.cleanup360_crit_edge:           ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup360

copy_to_user.exit.sw.epilog359_crit_edge:         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog359

sw.bb14:                                          ; preds = %sw.epilog
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 754) #10
  %regionindex = getelementptr inbounds %struct.region_info_user, ptr %6, i32 0, i32 3
  %13 = tail call i32 @llvm.read_register.i32(metadata !39) #10
  %and.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !54
  %and.i = and i32 %15, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  %16 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %regionindex, i32 -1226833921) #10, !srcloc !57
  %asmresult = extractvalue { i32, i32 } %16, 0
  %asmresult17 = extractvalue { i32, i32 } %16, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #10, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool19.not = icmp eq i32 %asmresult, 0
  br i1 %tobool19.not, label %if.end21, label %sw.bb14.cleanup360_crit_edge

sw.bb14.cleanup360_crit_edge:                     ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup360

if.end21:                                         ; preds = %sw.bb14
  %numeraseregions22 = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 19
  %17 = ptrtoint ptr %numeraseregions22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %numeraseregions22, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult17, i32 %18)
  %cmp.not = icmp ult i32 %asmresult17, %18
  br i1 %cmp.not, label %if.end24, label %if.end21.cleanup360_crit_edge

if.end21.cleanup360_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup360

if.end24:                                         ; preds = %if.end21
  %eraseregions = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 20
  %19 = ptrtoint ptr %eraseregions to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %eraseregions, align 4
  %arrayidx = getelementptr %struct.mtd_erase_region_info, ptr %20, i32 %asmresult17
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx, align 8
  %conv = trunc i64 %22 to i32
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 762) #10
  %23 = tail call i32 @llvm.read_register.i32(metadata !39) #10
  %and.i.i.i496 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i496 to ptr
  %cpu_domain.i.i497 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 4
  %25 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i497) #6, !srcloc !54
  %and.i498 = and i32 %25, -13
  %or.i499 = or i32 %and.i498, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i499) #10, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  %26 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %6, i32 %conv, i32 -1226833921) #10, !srcloc !58
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #10, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool38.not = icmp eq i32 %26, 0
  br i1 %tobool38.not, label %lor.lhs.false, label %if.end24.cleanup360_crit_edge

if.end24.cleanup360_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup360

lor.lhs.false:                                    ; preds = %if.end24
  %erasesize = getelementptr inbounds %struct.region_info_user, ptr %6, i32 0, i32 1
  %erasesize43 = getelementptr %struct.mtd_erase_region_info, ptr %20, i32 %asmresult17, i32 1
  %27 = ptrtoint ptr %erasesize43 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %erasesize43, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 763) #10
  %29 = tail call i32 @llvm.read_register.i32(metadata !39) #10
  %and.i.i.i500 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i500 to ptr
  %cpu_domain.i.i501 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 4
  %31 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i501) #6, !srcloc !54
  %and.i502 = and i32 %31, -13
  %or.i503 = or i32 %and.i502, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i503) #10, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  %32 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %erasesize, i32 %28, i32 -1226833921) #10, !srcloc !59
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #10, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool55.not = icmp eq i32 %32, 0
  br i1 %tobool55.not, label %cleanup, label %lor.lhs.false.cleanup360_crit_edge

lor.lhs.false.cleanup360_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup360

cleanup:                                          ; preds = %lor.lhs.false
  %numblocks = getelementptr inbounds %struct.region_info_user, ptr %6, i32 0, i32 2
  %numblocks61 = getelementptr %struct.mtd_erase_region_info, ptr %20, i32 %asmresult17, i32 2
  %33 = ptrtoint ptr %numblocks61 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %numblocks61, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 764) #10
  %35 = tail call i32 @llvm.read_register.i32(metadata !39) #10
  %and.i.i.i504 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i504 to ptr
  %cpu_domain.i.i505 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 4
  %37 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i505) #6, !srcloc !54
  %and.i506 = and i32 %37, -13
  %or.i507 = or i32 %and.i506, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i507) #10, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  %38 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %numblocks, i32 %34, i32 -1226833921) #10, !srcloc !60
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #10, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool73.not = icmp eq i32 %38, 0
  br i1 %tobool73.not, label %cleanup.sw.epilog359_crit_edge, label %cleanup.cleanup360_crit_edge

cleanup.cleanup360_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup360

cleanup.sw.epilog359_crit_edge:                   ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog359

sw.bb78:                                          ; preds = %sw.epilog
  %39 = ptrtoint ptr %info to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 0, ptr %info, align 8
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %3, align 8
  store i8 %41, ptr %info, align 8
  %flags = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 1
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags, align 4
  %flags80 = getelementptr inbounds %struct.mtd_info_user, ptr %info, i32 0, i32 1
  %44 = ptrtoint ptr %flags80 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %flags80, align 4
  %size = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 2
  %45 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %size, align 8
  %conv81 = trunc i64 %46 to i32
  %size82 = getelementptr inbounds %struct.mtd_info_user, ptr %info, i32 0, i32 2
  %47 = ptrtoint ptr %size82 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv81, ptr %size82, align 8
  %erasesize83 = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 3
  %48 = ptrtoint ptr %erasesize83 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %erasesize83, align 8
  %erasesize84 = getelementptr inbounds %struct.mtd_info_user, ptr %info, i32 0, i32 3
  %50 = ptrtoint ptr %erasesize84 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %erasesize84, align 4
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 4
  %51 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %writesize, align 4
  %writesize85 = getelementptr inbounds %struct.mtd_info_user, ptr %info, i32 0, i32 4
  %53 = ptrtoint ptr %writesize85 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %writesize85, align 8
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 6
  %54 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %oobsize, align 4
  %oobsize86 = getelementptr inbounds %struct.mtd_info_user, ptr %info, i32 0, i32 5
  %56 = ptrtoint ptr %oobsize86 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %oobsize86, align 4
  %padding = getelementptr inbounds %struct.mtd_info_user, ptr %info, i32 0, i32 6
  %57 = ptrtoint ptr %padding to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 0, ptr %padding, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #10
  %call.i.i512 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i512, label %sw.bb78.cleanup360_crit_edge, label %if.end.i.i515

sw.bb78.cleanup360_crit_edge:                     ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup360

if.end.i.i515:                                    ; preds = %sw.bb78
  %58 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 32, i32 -1226833920) #14, !srcloc !52
  %asmresult.i.i513 = extractvalue { i32, i32 } %58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i513)
  %cmp.i6.i514 = icmp eq i32 %asmresult.i.i513, 0
  br i1 %cmp.i6.i514, label %copy_to_user.exit520, label %if.end.i.i515.cleanup360_crit_edge

if.end.i.i515.cleanup360_crit_edge:               ; preds = %if.end.i.i515
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup360

copy_to_user.exit520:                             ; preds = %if.end.i.i515
  %call.i.i.i516 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info, i32 noundef 32) #10
  %call.i12.i.i517 = call i32 @arm_copy_to_user(ptr noundef %6, ptr noundef nonnull %info, i32 noundef 32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i517)
  %tobool88.not = icmp eq i32 %call.i12.i.i517, 0
  br i1 %tobool88.not, label %copy_to_user.exit520.sw.epilog359_crit_edge, label %copy_to_user.exit520.cleanup360_crit_edge

copy_to_user.exit520.cleanup360_crit_edge:        ; preds = %copy_to_user.exit520
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup360

copy_to_user.exit520.sw.epilog359_crit_edge:      ; preds = %copy_to_user.exit520
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog359

sw.bb91:                                          ; preds = %sw.epilog.sw.bb91_crit_edge, %sw.epilog.sw.bb91_crit_edge1151
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %59 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %59, i32 noundef 3520, i32 noundef 24) #15
  %tobool93.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool93.not, label %sw.bb91.sw.epilog359_crit_edge, label %if.else

sw.bb91.sw.epilog359_crit_edge:                   ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog359

if.else:                                          ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_const_cmp4(i32 1074810132, i32 %cmd)
  %cmp95 = icmp eq i32 %cmd, 1074810132
  br i1 %cmp95, label %if.then97, label %if.else104

if.then97:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %einfo64) #10
  %60 = getelementptr inbounds %struct.erase_info_user64, ptr %einfo64, i32 0, i32 1
  %61 = call ptr @memset(ptr %einfo64, i32 255, i32 16)
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #10
  %call.i.i525 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i525, label %if.then97.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then97.if.then11.i.i_crit_edge:                ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then97
  %62 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 16, i32 -1226833920) #14, !srcloc !53
  %asmresult.i.i526 = extractvalue { i32, i32 } %62, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i526)
  %cmp.i6.i527 = icmp eq i32 %asmresult.i.i526, 0
  br i1 %cmp.i6.i527, label %if.end.i.i529, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !51

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i529:                                    ; preds = %land.lhs.true.i.i
  %call.i.i.i528 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %einfo64, i32 noundef 16) #10
  %63 = call i32 @llvm.read_register.i32(metadata !39) #10
  %and.i.i.i.i.i.i = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 4
  %65 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !54
  %and.i.i.i.i = and i32 %65, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %einfo64, ptr noundef %6, i32 noundef 16) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %65) #10, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end101, label %if.end.i.i529.if.then11.i.i_crit_edge, !prof !51

if.end.i.i529.if.then11.i.i_crit_edge:            ; preds = %if.end.i.i529
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i529.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then97.if.then11.i.i_crit_edge
  %res.0.i.i943 = phi i32 [ %call1.i.i.i, %if.end.i.i529.if.then11.i.i_crit_edge ], [ 16, %if.then97.if.then11.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 16, %res.0.i.i943
  %add.ptr.i.i = getelementptr i8, ptr %einfo64, i32 %sub.i.i
  %66 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i943)
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %einfo64) #10
  br label %cleanup360

if.end101:                                        ; preds = %if.end.i.i529
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %einfo64 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %einfo64, align 8
  %69 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %68, ptr %call7.i.i, align 8
  %70 = ptrtoint ptr %60 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %60, align 8
  %len = getelementptr inbounds %struct.erase_info, ptr %call7.i.i, i32 0, i32 1
  %72 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %71, ptr %len, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %einfo64) #10
  br label %if.end118

if.else104:                                       ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %einfo32) #10
  %73 = ptrtoint ptr %einfo32 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 -1, ptr %einfo32, align 4, !annotation !49
  %74 = getelementptr inbounds %struct.erase_info_user, ptr %einfo32, i32 0, i32 1
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -1, ptr %74, align 4, !annotation !49
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #10
  %call.i.i535 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i535, label %if.else104.if.then11.i.i551_crit_edge, label %land.lhs.true.i.i538

if.else104.if.then11.i.i551_crit_edge:            ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i551

land.lhs.true.i.i538:                             ; preds = %if.else104
  %76 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 8, i32 -1226833920) #14, !srcloc !53
  %asmresult.i.i536 = extractvalue { i32, i32 } %76, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i536)
  %cmp.i6.i537 = icmp eq i32 %asmresult.i.i536, 0
  br i1 %cmp.i6.i537, label %if.end.i.i548, label %land.lhs.true.i.i538.if.then11.i.i551_crit_edge, !prof !51

land.lhs.true.i.i538.if.then11.i.i551_crit_edge:  ; preds = %land.lhs.true.i.i538
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i551

if.end.i.i548:                                    ; preds = %land.lhs.true.i.i538
  %call.i.i.i539 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %einfo32, i32 noundef 8) #10
  %77 = call i32 @llvm.read_register.i32(metadata !39) #10
  %and.i.i.i.i.i.i540 = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i.i.i.i.i540 to ptr
  %cpu_domain.i.i.i.i.i541 = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 4
  %79 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i541) #6, !srcloc !54
  %and.i.i.i.i542 = and i32 %79, -13
  %or.i.i.i.i543 = or i32 %and.i.i.i.i542, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i543) #10, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  %call1.i.i.i544 = call i32 @arm_copy_from_user(ptr noundef nonnull %einfo32, ptr noundef %6, i32 noundef 8) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %79) #10, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i544)
  %tobool4.not.i.i547 = icmp eq i32 %call1.i.i.i544, 0
  br i1 %tobool4.not.i.i547, label %if.end108, label %if.end.i.i548.if.then11.i.i551_crit_edge, !prof !51

if.end.i.i548.if.then11.i.i551_crit_edge:         ; preds = %if.end.i.i548
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i551

if.then11.i.i551:                                 ; preds = %if.end.i.i548.if.then11.i.i551_crit_edge, %land.lhs.true.i.i538.if.then11.i.i551_crit_edge, %if.else104.if.then11.i.i551_crit_edge
  %res.0.i.i546948 = phi i32 [ %call1.i.i.i544, %if.end.i.i548.if.then11.i.i551_crit_edge ], [ 8, %if.else104.if.then11.i.i551_crit_edge ], [ 8, %land.lhs.true.i.i538.if.then11.i.i551_crit_edge ]
  %sub.i.i549 = sub i32 8, %res.0.i.i546948
  %add.ptr.i.i550 = getelementptr i8, ptr %einfo32, i32 %sub.i.i549
  %80 = call ptr @memset(ptr %add.ptr.i.i550, i32 0, i32 %res.0.i.i546948)
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %einfo32) #10
  br label %cleanup360

if.end108:                                        ; preds = %if.end.i.i548
  call void @__sanitizer_cov_trace_pc() #12
  %81 = ptrtoint ptr %einfo32 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %einfo32, align 4
  %conv110 = zext i32 %82 to i64
  %83 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %conv110, ptr %call7.i.i, align 8
  %84 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %74, align 4
  %conv113 = zext i32 %85 to i64
  %len114 = getelementptr inbounds %struct.erase_info, ptr %call7.i.i, i32 0, i32 1
  %86 = ptrtoint ptr %len114 to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %conv113, ptr %len114, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %einfo32) #10
  br label %if.end118

if.end118:                                        ; preds = %if.end108, %if.end101
  %call119 = call i32 @mtd_erase(ptr noundef %3, ptr noundef nonnull %call7.i.i) #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %sw.epilog359

sw.bb123:                                         ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buf) #10
  %87 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 -1, ptr %buf, align 4, !annotation !49
  %88 = getelementptr inbounds %struct.mtd_oob_buf, ptr %buf, i32 0, i32 1
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 -1, ptr %88, align 4, !annotation !49
  %90 = getelementptr inbounds %struct.mtd_oob_buf, ptr %buf, i32 0, i32 2
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr inttoptr (i32 -1 to ptr), ptr %90, align 4, !annotation !49
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #10
  %call.i.i558 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i558, label %sw.bb123.if.then11.i.i574_crit_edge, label %land.lhs.true.i.i561

sw.bb123.if.then11.i.i574_crit_edge:              ; preds = %sw.bb123
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i574

land.lhs.true.i.i561:                             ; preds = %sw.bb123
  %92 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 12, i32 -1226833920) #14, !srcloc !53
  %asmresult.i.i559 = extractvalue { i32, i32 } %92, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i559)
  %cmp.i6.i560 = icmp eq i32 %asmresult.i.i559, 0
  br i1 %cmp.i6.i560, label %if.end.i.i571, label %land.lhs.true.i.i561.if.then11.i.i574_crit_edge, !prof !51

land.lhs.true.i.i561.if.then11.i.i574_crit_edge:  ; preds = %land.lhs.true.i.i561
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i574

if.end.i.i571:                                    ; preds = %land.lhs.true.i.i561
  %call.i.i.i562 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef 12) #10
  %93 = call i32 @llvm.read_register.i32(metadata !39) #10
  %and.i.i.i.i.i.i563 = and i32 %93, -16384
  %94 = inttoptr i32 %and.i.i.i.i.i.i563 to ptr
  %cpu_domain.i.i.i.i.i564 = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 4
  %95 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i564) #6, !srcloc !54
  %and.i.i.i.i565 = and i32 %95, -13
  %or.i.i.i.i566 = or i32 %and.i.i.i.i565, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i566) #10, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  %call1.i.i.i567 = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %6, i32 noundef 12) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %95) #10, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i567)
  %tobool4.not.i.i570 = icmp eq i32 %call1.i.i.i567, 0
  br i1 %tobool4.not.i.i570, label %if.else127, label %if.end.i.i571.if.then11.i.i574_crit_edge, !prof !51

if.end.i.i571.if.then11.i.i574_crit_edge:         ; preds = %if.end.i.i571
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i574

if.then11.i.i574:                                 ; preds = %if.end.i.i571.if.then11.i.i574_crit_edge, %land.lhs.true.i.i561.if.then11.i.i574_crit_edge, %sw.bb123.if.then11.i.i574_crit_edge
  %res.0.i.i569955 = phi i32 [ %call1.i.i.i567, %if.end.i.i571.if.then11.i.i574_crit_edge ], [ 12, %sw.bb123.if.then11.i.i574_crit_edge ], [ 12, %land.lhs.true.i.i561.if.then11.i.i574_crit_edge ]
  %sub.i.i572 = sub i32 12, %res.0.i.i569955
  %add.ptr.i.i573 = getelementptr i8, ptr %buf, i32 %sub.i.i572
  %96 = call ptr @memset(ptr %add.ptr.i.i573, i32 0, i32 %res.0.i.i569955)
  br label %if.end133

if.else127:                                       ; preds = %if.end.i.i571
  call void @__sanitizer_cov_trace_pc() #12
  %97 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %buf, align 4
  %conv129 = zext i32 %98 to i64
  %99 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %88, align 4
  %101 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %90, align 4
  %length131 = getelementptr inbounds %struct.mtd_oob_buf, ptr %6, i32 0, i32 1
  %call132 = call fastcc i32 @mtdchar_writeoob(ptr noundef %file, ptr noundef %3, i64 noundef %conv129, i32 noundef %100, ptr noundef %102, ptr noundef %length131)
  br label %if.end133

if.end133:                                        ; preds = %if.else127, %if.then11.i.i574
  %ret.2 = phi i32 [ %call132, %if.else127 ], [ -14, %if.then11.i.i574 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf) #10
  br label %sw.epilog359

sw.bb136:                                         ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buf137) #10
  %103 = ptrtoint ptr %buf137 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 -1, ptr %buf137, align 4, !annotation !49
  %104 = getelementptr inbounds %struct.mtd_oob_buf, ptr %buf137, i32 0, i32 1
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 -1, ptr %104, align 4, !annotation !49
  %106 = getelementptr inbounds %struct.mtd_oob_buf, ptr %buf137, i32 0, i32 2
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr inttoptr (i32 -1 to ptr), ptr %106, align 4, !annotation !49
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #10
  %call.i.i581 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i581, label %sw.bb136.if.then11.i.i597_crit_edge, label %land.lhs.true.i.i584

sw.bb136.if.then11.i.i597_crit_edge:              ; preds = %sw.bb136
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i597

land.lhs.true.i.i584:                             ; preds = %sw.bb136
  %108 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 12, i32 -1226833920) #14, !srcloc !53
  %asmresult.i.i582 = extractvalue { i32, i32 } %108, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i582)
  %cmp.i6.i583 = icmp eq i32 %asmresult.i.i582, 0
  br i1 %cmp.i6.i583, label %if.end.i.i594, label %land.lhs.true.i.i584.if.then11.i.i597_crit_edge, !prof !51

land.lhs.true.i.i584.if.then11.i.i597_crit_edge:  ; preds = %land.lhs.true.i.i584
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i597

if.end.i.i594:                                    ; preds = %land.lhs.true.i.i584
  %call.i.i.i585 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf137, i32 noundef 12) #10
  %109 = call i32 @llvm.read_register.i32(metadata !39) #10
  %and.i.i.i.i.i.i586 = and i32 %109, -16384
  %110 = inttoptr i32 %and.i.i.i.i.i.i586 to ptr
  %cpu_domain.i.i.i.i.i587 = getelementptr inbounds %struct.thread_info, ptr %110, i32 0, i32 4
  %111 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i587) #6, !srcloc !54
  %and.i.i.i.i588 = and i32 %111, -13
  %or.i.i.i.i589 = or i32 %and.i.i.i.i588, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i589) #10, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  %call1.i.i.i590 = call i32 @arm_copy_from_user(ptr noundef nonnull %buf137, ptr noundef %6, i32 noundef 12) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %111) #10, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i590)
  %tobool4.not.i.i593 = icmp eq i32 %call1.i.i.i590, 0
  br i1 %tobool4.not.i.i593, label %if.else142, label %if.end.i.i594.if.then11.i.i597_crit_edge, !prof !51

if.end.i.i594.if.then11.i.i597_crit_edge:         ; preds = %if.end.i.i594
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i597

if.then11.i.i597:                                 ; preds = %if.end.i.i594.if.then11.i.i597_crit_edge, %land.lhs.true.i.i584.if.then11.i.i597_crit_edge, %sw.bb136.if.then11.i.i597_crit_edge
  %res.0.i.i592960 = phi i32 [ %call1.i.i.i590, %if.end.i.i594.if.then11.i.i597_crit_edge ], [ 12, %sw.bb136.if.then11.i.i597_crit_edge ], [ 12, %land.lhs.true.i.i584.if.then11.i.i597_crit_edge ]
  %sub.i.i595 = sub i32 12, %res.0.i.i592960
  %add.ptr.i.i596 = getelementptr i8, ptr %buf137, i32 %sub.i.i595
  %112 = call ptr @memset(ptr %add.ptr.i.i596, i32 0, i32 %res.0.i.i592960)
  br label %if.end149

if.else142:                                       ; preds = %if.end.i.i594
  call void @__sanitizer_cov_trace_pc() #12
  %113 = ptrtoint ptr %buf137 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %buf137, align 4
  %conv144 = zext i32 %114 to i64
  %115 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %104, align 4
  %117 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %106, align 4
  %call148 = call fastcc i32 @mtdchar_readoob(ptr noundef %file, ptr noundef %3, i64 noundef %conv144, i32 noundef %116, ptr noundef %118, ptr noundef %6)
  br label %if.end149

if.end149:                                        ; preds = %if.else142, %if.then11.i.i597
  %ret.3 = phi i32 [ %call148, %if.else142 ], [ -14, %if.then11.i.i597 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf137) #10
  br label %sw.epilog359

sw.bb152:                                         ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %buf153) #10
  %119 = getelementptr inbounds %struct.mtd_oob_buf64, ptr %buf153, i32 0, i32 2
  %120 = getelementptr inbounds %struct.mtd_oob_buf64, ptr %buf153, i32 0, i32 3
  %121 = call ptr @memset(ptr %buf153, i32 255, i32 24)
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #10
  %call.i.i604 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i604, label %sw.bb152.if.then11.i.i620_crit_edge, label %land.lhs.true.i.i607

sw.bb152.if.then11.i.i620_crit_edge:              ; preds = %sw.bb152
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i620

land.lhs.true.i.i607:                             ; preds = %sw.bb152
  %122 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 24, i32 -1226833920) #14, !srcloc !53
  %asmresult.i.i605 = extractvalue { i32, i32 } %122, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i605)
  %cmp.i6.i606 = icmp eq i32 %asmresult.i.i605, 0
  br i1 %cmp.i6.i606, label %if.end.i.i617, label %land.lhs.true.i.i607.if.then11.i.i620_crit_edge, !prof !51

land.lhs.true.i.i607.if.then11.i.i620_crit_edge:  ; preds = %land.lhs.true.i.i607
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i620

if.end.i.i617:                                    ; preds = %land.lhs.true.i.i607
  %call.i.i.i608 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf153, i32 noundef 24) #10
  %123 = call i32 @llvm.read_register.i32(metadata !39) #10
  %and.i.i.i.i.i.i609 = and i32 %123, -16384
  %124 = inttoptr i32 %and.i.i.i.i.i.i609 to ptr
  %cpu_domain.i.i.i.i.i610 = getelementptr inbounds %struct.thread_info, ptr %124, i32 0, i32 4
  %125 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i610) #6, !srcloc !54
  %and.i.i.i.i611 = and i32 %125, -13
  %or.i.i.i.i612 = or i32 %and.i.i.i.i611, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i612) #10, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  %call1.i.i.i613 = call i32 @arm_copy_from_user(ptr noundef nonnull %buf153, ptr noundef %6, i32 noundef 24) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %125) #10, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i613)
  %tobool4.not.i.i616 = icmp eq i32 %call1.i.i.i613, 0
  br i1 %tobool4.not.i.i616, label %if.else158, label %if.end.i.i617.if.then11.i.i620_crit_edge, !prof !51

if.end.i.i617.if.then11.i.i620_crit_edge:         ; preds = %if.end.i.i617
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i620

if.then11.i.i620:                                 ; preds = %if.end.i.i617.if.then11.i.i620_crit_edge, %land.lhs.true.i.i607.if.then11.i.i620_crit_edge, %sw.bb152.if.then11.i.i620_crit_edge
  %res.0.i.i615965 = phi i32 [ %call1.i.i.i613, %if.end.i.i617.if.then11.i.i620_crit_edge ], [ 24, %sw.bb152.if.then11.i.i620_crit_edge ], [ 24, %land.lhs.true.i.i607.if.then11.i.i620_crit_edge ]
  %sub.i.i618 = sub i32 24, %res.0.i.i615965
  %add.ptr.i.i619 = getelementptr i8, ptr %buf153, i32 %sub.i.i618
  %126 = call ptr @memset(ptr %add.ptr.i.i619, i32 0, i32 %res.0.i.i615965)
  br label %if.end164

if.else158:                                       ; preds = %if.end.i.i617
  call void @__sanitizer_cov_trace_pc() #12
  %127 = ptrtoint ptr %buf153 to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %buf153, align 8
  %129 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %119, align 4
  %131 = ptrtoint ptr %120 to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %120, align 8
  %conv161 = trunc i64 %132 to i32
  %133 = inttoptr i32 %conv161 to ptr
  %length162 = getelementptr inbounds %struct.mtd_oob_buf64, ptr %6, i32 0, i32 2
  %call163 = call fastcc i32 @mtdchar_writeoob(ptr noundef %file, ptr noundef %3, i64 noundef %128, i32 noundef %130, ptr noundef %133, ptr noundef %length162)
  br label %if.end164

if.end164:                                        ; preds = %if.else158, %if.then11.i.i620
  %ret.4 = phi i32 [ %call163, %if.else158 ], [ -14, %if.then11.i.i620 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %buf153) #10
  br label %sw.epilog359

sw.bb167:                                         ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %buf168) #10
  %134 = getelementptr inbounds %struct.mtd_oob_buf64, ptr %buf168, i32 0, i32 2
  %135 = getelementptr inbounds %struct.mtd_oob_buf64, ptr %buf168, i32 0, i32 3
  %136 = call ptr @memset(ptr %buf168, i32 255, i32 24)
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #10
  %call.i.i627 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i627, label %sw.bb167.if.then11.i.i643_crit_edge, label %land.lhs.true.i.i630

sw.bb167.if.then11.i.i643_crit_edge:              ; preds = %sw.bb167
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i643

land.lhs.true.i.i630:                             ; preds = %sw.bb167
  %137 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 24, i32 -1226833920) #14, !srcloc !53
  %asmresult.i.i628 = extractvalue { i32, i32 } %137, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i628)
  %cmp.i6.i629 = icmp eq i32 %asmresult.i.i628, 0
  br i1 %cmp.i6.i629, label %if.end.i.i640, label %land.lhs.true.i.i630.if.then11.i.i643_crit_edge, !prof !51

land.lhs.true.i.i630.if.then11.i.i643_crit_edge:  ; preds = %land.lhs.true.i.i630
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i643

if.end.i.i640:                                    ; preds = %land.lhs.true.i.i630
  %call.i.i.i631 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf168, i32 noundef 24) #10
  %138 = call i32 @llvm.read_register.i32(metadata !39) #10
  %and.i.i.i.i.i.i632 = and i32 %138, -16384
  %139 = inttoptr i32 %and.i.i.i.i.i.i632 to ptr
  %cpu_domain.i.i.i.i.i633 = getelementptr inbounds %struct.thread_info, ptr %139, i32 0, i32 4
  %140 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i633) #6, !srcloc !54
  %and.i.i.i.i634 = and i32 %140, -13
  %or.i.i.i.i635 = or i32 %and.i.i.i.i634, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i635) #10, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  %call1.i.i.i636 = call i32 @arm_copy_from_user(ptr noundef nonnull %buf168, ptr noundef %6, i32 noundef 24) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %140) #10, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i636)
  %tobool4.not.i.i639 = icmp eq i32 %call1.i.i.i636, 0
  br i1 %tobool4.not.i.i639, label %if.else173, label %if.end.i.i640.if.then11.i.i643_crit_edge, !prof !51

if.end.i.i640.if.then11.i.i643_crit_edge:         ; preds = %if.end.i.i640
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i643

if.then11.i.i643:                                 ; preds = %if.end.i.i640.if.then11.i.i643_crit_edge, %land.lhs.true.i.i630.if.then11.i.i643_crit_edge, %sw.bb167.if.then11.i.i643_crit_edge
  %res.0.i.i638970 = phi i32 [ %call1.i.i.i636, %if.end.i.i640.if.then11.i.i643_crit_edge ], [ 24, %sw.bb167.if.then11.i.i643_crit_edge ], [ 24, %land.lhs.true.i.i630.if.then11.i.i643_crit_edge ]
  %sub.i.i641 = sub i32 24, %res.0.i.i638970
  %add.ptr.i.i642 = getelementptr i8, ptr %buf168, i32 %sub.i.i641
  %141 = call ptr @memset(ptr %add.ptr.i.i642, i32 0, i32 %res.0.i.i638970)
  br label %if.end180

if.else173:                                       ; preds = %if.end.i.i640
  call void @__sanitizer_cov_trace_pc() #12
  %142 = ptrtoint ptr %buf168 to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %buf168, align 8
  %144 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %134, align 4
  %146 = ptrtoint ptr %135 to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %135, align 8
  %conv177 = trunc i64 %147 to i32
  %148 = inttoptr i32 %conv177 to ptr
  %length178 = getelementptr inbounds %struct.mtd_oob_buf64, ptr %6, i32 0, i32 2
  %call179 = call fastcc i32 @mtdchar_readoob(ptr noundef %file, ptr noundef %3, i64 noundef %143, i32 noundef %145, ptr noundef %148, ptr noundef %length178)
  br label %if.end180

if.end180:                                        ; preds = %if.else173, %if.then11.i.i643
  %ret.5 = phi i32 [ %call179, %if.else173 ], [ -14, %if.then11.i.i643 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %buf168) #10
  br label %sw.epilog359

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %sw.epilog.while.cond.i.i_crit_edge
  %mtd.addr.0.i.i = phi ptr [ %150, %while.cond.i.i.while.cond.i.i_crit_edge ], [ %3, %sw.epilog.while.cond.i.i_crit_edge ]
  %parent.i.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i, i32 0, i32 62
  %149 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %parent.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %150, null
  br i1 %tobool.not.i.i, label %mtd_get_master.exit.i, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i.i

mtd_get_master.exit.i:                            ; preds = %while.cond.i.i
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %req.i) #10
  %151 = call ptr @memset(ptr %req.i, i32 255, i32 48)
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #10
  %call.i.i.i913 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i913, label %mtd_get_master.exit.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

mtd_get_master.exit.i.if.then11.i.i.i_crit_edge:  ; preds = %mtd_get_master.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %mtd_get_master.exit.i
  %152 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 48, i32 -1226833920) #14, !srcloc !53
  %asmresult.i.i.i = extractvalue { i32, i32 } %152, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !51

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %req.i, i32 noundef 48) #10
  %153 = call i32 @llvm.read_register.i32(metadata !39) #10
  %and.i.i.i.i.i.i.i = and i32 %153, -16384
  %154 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %154, i32 0, i32 4
  %155 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #6, !srcloc !54
  %and.i.i.i.i.i = and i32 %155, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #10, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %req.i, ptr noundef %6, i32 noundef 48) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %155) #10, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !51

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %mtd_get_master.exit.i.if.then11.i.i.i_crit_edge
  %res.0.i.i273.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 48, %mtd_get_master.exit.i.if.then11.i.i.i_crit_edge ], [ 48, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 48, %res.0.i.i273.i
  %add.ptr.i.i.i = getelementptr i8, ptr %req.i, i32 %sub.i.i.i
  %156 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i273.i)
  br label %mtdchar_write_ioctl.exit

if.end.i:                                         ; preds = %if.end.i.i.i
  %usr_data2.i = getelementptr inbounds %struct.mtd_write_req, ptr %req.i, i32 0, i32 3
  %157 = ptrtoint ptr %usr_data2.i to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %usr_data2.i, align 8
  %conv.i = trunc i64 %158 to i32
  %159 = inttoptr i32 %conv.i to ptr
  %usr_oob3.i = getelementptr inbounds %struct.mtd_write_req, ptr %req.i, i32 0, i32 4
  %160 = ptrtoint ptr %usr_oob3.i to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %usr_oob3.i, align 8
  %conv4.i = trunc i64 %161 to i32
  %162 = inttoptr i32 %conv4.i to ptr
  %_write_oob.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i, i32 0, i32 28
  %163 = ptrtoint ptr %_write_oob.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %_write_oob.i, align 4
  %tobool5.not.i = icmp eq ptr %164, null
  br i1 %tobool5.not.i, label %if.end.i.mtdchar_write_ioctl.exit_crit_edge, label %if.end7.i

if.end.i.mtdchar_write_ioctl.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mtdchar_write_ioctl.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool8.not.i = icmp eq i32 %conv.i, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %if.end7.i.if.end10.i_crit_edge

if.end7.i.if.end10.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %len.i = getelementptr inbounds %struct.mtd_write_req, ptr %req.i, i32 0, i32 1
  %165 = ptrtoint ptr %len.i to i32
  call void @__asan_store8_noabort(i32 %165)
  store i64 0, ptr %len.i, align 8
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %if.end7.i.if.end10.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv4.i)
  %tobool11.not.i = icmp eq i32 %conv4.i, 0
  br i1 %tobool11.not.i, label %if.then12.i, label %if.end10.i.if.end13.i_crit_edge

if.end10.i.if.end13.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %ooblen.i = getelementptr inbounds %struct.mtd_write_req, ptr %req.i, i32 0, i32 2
  %166 = ptrtoint ptr %ooblen.i to i32
  call void @__asan_store8_noabort(i32 %166)
  store i64 0, ptr %ooblen.i, align 8
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then12.i, %if.end10.i.if.end13.i_crit_edge
  %167 = ptrtoint ptr %req.i to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %req.i, align 8
  %len14.i = getelementptr inbounds %struct.mtd_write_req, ptr %req.i, i32 0, i32 1
  %169 = ptrtoint ptr %len14.i to i32
  call void @__asan_load8_noabort(i32 %169)
  %170 = load i64, ptr %len14.i, align 8
  %add.i = add i64 %170, %168
  %size.i = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 2
  %171 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %172)
  %cmp.i = icmp ugt i64 %add.i, %172
  br i1 %cmp.i, label %if.end13.i.mtdchar_write_ioctl.exit_crit_edge, label %if.end17.i

if.end13.i.mtdchar_write_ioctl.exit_crit_edge:    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mtdchar_write_ioctl.exit

if.end17.i:                                       ; preds = %if.end13.i
  %conv19.i = trunc i64 %170 to i32
  %erasesize.i = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 3
  %173 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %erasesize.i, align 8
  %175 = call i32 @llvm.umin.i32(i32 %174, i32 %conv19.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %cmp22.not.i = icmp eq i32 %175, 0
  br i1 %cmp22.not.i, label %if.end17.i.if.end29.i_crit_edge, label %if.end8.i.i918

if.end17.i.if.end29.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i

if.end8.i.i918:                                   ; preds = %if.end17.i
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %175, i32 noundef 3264) #16
  %tobool26.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool26.not.i, label %if.end8.i.i918.mtdchar_write_ioctl.exit_crit_edge, label %if.end8.i.i918.if.end29.i_crit_edge

if.end8.i.i918.if.end29.i_crit_edge:              ; preds = %if.end8.i.i918
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i

if.end8.i.i918.mtdchar_write_ioctl.exit_crit_edge: ; preds = %if.end8.i.i918
  call void @__sanitizer_cov_trace_pc() #12
  br label %mtdchar_write_ioctl.exit

if.end29.i:                                       ; preds = %if.end8.i.i918.if.end29.i_crit_edge, %if.end17.i.if.end29.i_crit_edge
  %datbuf.0.i = phi ptr [ %call9.i.i, %if.end8.i.i918.if.end29.i_crit_edge ], [ null, %if.end17.i.if.end29.i_crit_edge ]
  %ooblen30.i = getelementptr inbounds %struct.mtd_write_req, ptr %req.i, i32 0, i32 2
  %176 = ptrtoint ptr %ooblen30.i to i32
  call void @__asan_load8_noabort(i32 %176)
  %177 = load i64, ptr %ooblen30.i, align 8
  %conv31.i = trunc i64 %177 to i32
  %178 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %erasesize.i, align 8
  %180 = call i32 @llvm.umin.i32(i32 %179, i32 %conv31.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %cmp40.not.i = icmp eq i32 %180, 0
  br i1 %cmp40.not.i, label %if.end29.i.if.end47.i_crit_edge, label %if.end8.i191.i

if.end29.i.if.end47.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47.i

if.end8.i191.i:                                   ; preds = %if.end29.i
  %call9.i190.i = call noalias align 128 ptr @__kmalloc(i32 noundef %180, i32 noundef 3264) #16
  %tobool44.not.i = icmp eq ptr %call9.i190.i, null
  br i1 %tobool44.not.i, label %if.then45.i, label %if.end8.i191.i.if.end47.i_crit_edge

if.end8.i191.i.if.end47.i_crit_edge:              ; preds = %if.end8.i191.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47.i

if.then45.i:                                      ; preds = %if.end8.i191.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef %datbuf.0.i) #10
  br label %mtdchar_write_ioctl.exit

if.end47.i:                                       ; preds = %if.end8.i191.i.if.end47.i_crit_edge, %if.end29.i.if.end47.i_crit_edge
  %oobbuf.0.i = phi ptr [ %call9.i190.i, %if.end8.i191.i.if.end47.i_crit_edge ], [ null, %if.end29.i.if.end47.i_crit_edge ]
  %181 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 1
  %182 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 2
  %183 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 3
  %184 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 4
  %185 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 5
  %186 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 6
  %187 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 7
  %mode55.i = getelementptr inbounds %struct.mtd_write_req, ptr %req.i, i32 0, i32 5
  %writesize_shift.i.i = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 9
  %writesize_mask.i.i = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 11
  %writesize.i.i = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 4
  %oobavail.i.i.i = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 7
  %oobsize.i.i.i = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 6
  br label %while.cond.i919

while.cond.i919:                                  ; preds = %cleanup.i, %if.end47.i
  %usr_oob.0.i = phi ptr [ %162, %if.end47.i ], [ %add.ptr119.i, %cleanup.i ]
  %usr_data.0.i = phi ptr [ %159, %if.end47.i ], [ %add.ptr.i, %cleanup.i ]
  %188 = ptrtoint ptr %len14.i to i32
  call void @__asan_load8_noabort(i32 %188)
  %189 = load i64, ptr %len14.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %189)
  %cmp49.not.i = icmp eq i64 %189, 0
  br i1 %cmp49.not.i, label %lor.rhs.i, label %while.cond.i919.while.body.i_crit_edge

while.cond.i919.while.body.i_crit_edge:           ; preds = %while.cond.i919
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

lor.rhs.i:                                        ; preds = %while.cond.i919
  %tobool51.not.i = icmp eq ptr %usr_data.0.i, null
  br i1 %tobool51.not.i, label %land.rhs.i, label %lor.rhs.i.while.end.i_crit_edge

lor.rhs.i.while.end.i_crit_edge:                  ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

land.rhs.i:                                       ; preds = %lor.rhs.i
  %190 = ptrtoint ptr %ooblen30.i to i32
  call void @__asan_load8_noabort(i32 %190)
  %191 = load i64, ptr %ooblen30.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %191)
  %cmp53.not.i = icmp eq i64 %191, 0
  br i1 %cmp53.not.i, label %land.rhs.i.while.end.i_crit_edge, label %land.rhs.i.while.body.i_crit_edge

land.rhs.i.while.body.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

land.rhs.i.while.end.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.i:                                     ; preds = %land.rhs.i.while.body.i_crit_edge, %while.cond.i919.while.body.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops.i) #10
  %192 = ptrtoint ptr %mode55.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %mode55.i, align 8
  %conv56.i = zext i8 %193 to i32
  %194 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %conv56.i, ptr %ops.i, align 4
  %conv59.i = trunc i64 %189 to i32
  %195 = call i32 @llvm.umin.i32(i32 %175, i32 %conv59.i) #10
  %196 = ptrtoint ptr %181 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %195, ptr %181, align 4
  %197 = ptrtoint ptr %182 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 0, ptr %182, align 4
  %198 = ptrtoint ptr %ooblen30.i to i32
  call void @__asan_load8_noabort(i32 %198)
  %199 = load i64, ptr %ooblen30.i, align 8
  %conv69.i = trunc i64 %199 to i32
  %200 = call i32 @llvm.umin.i32(i32 %180, i32 %conv69.i) #10
  %201 = ptrtoint ptr %183 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %200, ptr %183, align 4
  %202 = ptrtoint ptr %184 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 0, ptr %184, align 4
  %203 = ptrtoint ptr %185 to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 0, ptr %185, align 4
  %204 = ptrtoint ptr %186 to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %datbuf.0.i, ptr %186, align 4
  %205 = ptrtoint ptr %187 to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %oobbuf.0.i, ptr %187, align 4
  %206 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %erasesize.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %195, i32 %207)
  %cmp81.i = icmp eq i32 %195, %207
  br i1 %cmp81.i, label %if.then83.i, label %while.body.i.if.end90.i_crit_edge

while.body.i.if.end90.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90.i

if.then83.i:                                      ; preds = %while.body.i
  %208 = ptrtoint ptr %req.i to i32
  call void @__asan_load8_noabort(i32 %208)
  %209 = load i64, ptr %req.i, align 8
  %conv86.i = zext i32 %195 to i64
  %add87.i = add i64 %209, %conv86.i
  %210 = ptrtoint ptr %writesize_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %writesize_shift.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %211)
  %tobool.not.i254.i = icmp eq i32 %211, 0
  br i1 %tobool.not.i254.i, label %if.end.i256.i, label %if.then.i255.i

if.then.i255.i:                                   ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #12
  %212 = ptrtoint ptr %writesize_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %writesize_mask.i.i, align 8
  %214 = trunc i64 %add87.i to i32
  %conv1.i.i = and i32 %213, %214
  br label %mtd_mod_by_ws.exit.i

if.end.i256.i:                                    ; preds = %if.then83.i
  %215 = ptrtoint ptr %writesize.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %writesize.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add87.i)
  %cmp171.i.i = icmp ult i64 %add87.i, 4294967296
  br i1 %cmp171.i.i, label %if.then175.i.i, label %if.else181.i.i, !prof !51

if.then175.i.i:                                   ; preds = %if.end.i256.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv176.i.i = trunc i64 %add87.i to i32
  %rem177.i.i = urem i32 %conv176.i.i, %216
  br label %mtd_mod_by_ws.exit.i

if.else181.i.i:                                   ; preds = %if.end.i256.i
  call void @__sanitizer_cov_trace_pc() #12
  %217 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %216, i64 %add87.i) #14, !srcloc !61
  %asmresult.i270.i.i = extractvalue { i64, i64 } %217, 0
  %shr.i.i.i = lshr i64 %asmresult.i270.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  br label %mtd_mod_by_ws.exit.i

mtd_mod_by_ws.exit.i:                             ; preds = %if.else181.i.i, %if.then175.i.i, %if.then.i255.i
  %retval.0.i.i = phi i32 [ %conv1.i.i, %if.then.i255.i ], [ %rem177.i.i, %if.then175.i.i ], [ %conv.i.i.i, %if.else181.i.i ]
  %sub.i = sub i32 %195, %retval.0.i.i
  %218 = ptrtoint ptr %181 to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %sub.i, ptr %181, align 4
  br label %if.end90.i

if.end90.i:                                       ; preds = %mtd_mod_by_ws.exit.i, %while.body.i.if.end90.i_crit_edge
  %219 = phi i32 [ %sub.i, %mtd_mod_by_ws.exit.i ], [ %195, %while.body.i.if.end90.i_crit_edge ]
  %220 = ptrtoint ptr %req.i to i32
  call void @__asan_load8_noabort(i32 %220)
  %221 = load i64, ptr %req.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %219)
  %cmp.i260.i = icmp eq i32 %219, 0
  br i1 %cmp.i260.i, label %if.end90.i.if.then.i.i.i.i_crit_edge, label %lor.lhs.false.i.i

if.end90.i.if.then.i.i.i.i_crit_edge:             ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i.i

lor.lhs.false.i.i:                                ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %200)
  %cmp1.i.i923 = icmp eq i32 %200, 0
  br i1 %cmp1.i.i923, label %lor.lhs.false.i.i.if.end8.i.i198.i_crit_edge, label %if.end.i262.i

lor.lhs.false.i.i.if.end8.i.i198.i_crit_edge:     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i198.i

if.end.i262.i:                                    ; preds = %lor.lhs.false.i.i
  %222 = ptrtoint ptr %writesize_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %writesize_shift.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %223)
  %tobool.not.i.i261.i = icmp eq i32 %223, 0
  br i1 %tobool.not.i.i261.i, label %if.end.i.i263.i, label %if.then.i28.i.i

if.end.i.i263.i:                                  ; preds = %if.end.i262.i
  %224 = ptrtoint ptr %writesize.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %writesize.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %221)
  %cmp172.i.i.i = icmp ult i64 %221, 4294967296
  br i1 %cmp172.i.i.i, label %if.then176.i.i.i, label %if.else182.i.i.i, !prof !51

if.then176.i.i.i:                                 ; preds = %if.end.i.i263.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv177.i.i.i = trunc i64 %221 to i32
  %div180.i.i.i = udiv i32 %conv177.i.i.i, %225
  br label %if.else170.i140.i.i

if.else182.i.i.i:                                 ; preds = %if.end.i.i263.i
  call void @__sanitizer_cov_trace_pc() #12
  %226 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %225, i64 %221) #14, !srcloc !61
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %226, 1
  %extract.t297.i.i.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %if.else170.i140.i.i

if.then.i28.i.i:                                  ; preds = %if.end.i262.i
  call void @__sanitizer_cov_trace_pc() #12
  %sh_prom.i.i.i = zext i32 %223 to i64
  %shr.i.i265.i = lshr i64 %221, %sh_prom.i.i.i
  %conv.i.i266.i = trunc i64 %shr.i.i265.i to i32
  %conv.i.i = zext i32 %219 to i64
  %add.i267.i = add i64 %221, -1
  %sub.i268.i = add i64 %add.i267.i, %conv.i.i
  %shr.i26.i.i = lshr i64 %sub.i268.i, %sh_prom.i.i.i
  %conv.i27.i.i = trunc i64 %shr.i26.i.i to i32
  br label %mtd_div_by_ws.exit148.i.i

if.else170.i140.i.i:                              ; preds = %if.else182.i.i.i, %if.then176.i.i.i
  %retval.0.i.ph.i269.ph.i = phi i32 [ %div180.i.i.i, %if.then176.i.i.i ], [ %extract.t297.i.i.i, %if.else182.i.i.i ]
  %conv151.i277.i = zext i32 %219 to i64
  %add152.i278.i = add i64 %221, -1
  %sub153.i279.i = add i64 %add152.i278.i, %conv151.i277.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub153.i279.i)
  %cmp172.i139.i.i = icmp ult i64 %sub153.i279.i, 4294967296
  br i1 %cmp172.i139.i.i, label %if.then176.i143.i.i, label %if.else182.i146.i.i, !prof !51

if.then176.i143.i.i:                              ; preds = %if.else170.i140.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv177.i141.i.i = trunc i64 %sub153.i279.i to i32
  %div180.i142.i.i = udiv i32 %conv177.i141.i.i, %225
  br label %mtd_div_by_ws.exit148.i.i

if.else182.i146.i.i:                              ; preds = %if.else170.i140.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %227 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %225, i64 %sub153.i279.i) #14, !srcloc !61
  %asmresult1.i.i144.i.i = extractvalue { i64, i64 } %227, 1
  %extract.t297.i145.i.i = trunc i64 %asmresult1.i.i144.i.i to i32
  br label %mtd_div_by_ws.exit148.i.i

mtd_div_by_ws.exit148.i.i:                        ; preds = %if.else182.i146.i.i, %if.then176.i143.i.i, %if.then.i28.i.i
  %retval.0.i154.i.i = phi i32 [ %conv.i.i266.i, %if.then.i28.i.i ], [ %retval.0.i.ph.i269.ph.i, %if.then176.i143.i.i ], [ %retval.0.i.ph.i269.ph.i, %if.else182.i146.i.i ]
  %retval.0.i147.i.i = phi i32 [ %conv.i27.i.i, %if.then.i28.i.i ], [ %div180.i142.i.i, %if.then176.i143.i.i ], [ %extract.t297.i145.i.i, %if.else182.i146.i.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %193)
  %cmp.i149.i.i = icmp eq i8 %193, 1
  %cond.in.i.i.i = select i1 %cmp.i149.i.i, ptr %oobavail.i.i.i, ptr %oobsize.i.i.i
  %228 = ptrtoint ptr %cond.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %cond.i.i.i = load i32, ptr %cond.in.i.i.i, align 4
  %sub6.i.i = sub i32 1, %retval.0.i154.i.i
  %add7.i.i = add i32 %sub6.i.i, %retval.0.i147.i.i
  %mul.i270.i = mul i32 %cond.i.i.i, %add7.i.i
  %229 = call i32 @llvm.umin.i32(i32 %200, i32 %mul.i270.i) #10
  %230 = ptrtoint ptr %183 to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %229, ptr %183, align 4
  br label %if.end8.i.i198.i

if.end8.i.i198.i:                                 ; preds = %mtd_div_by_ws.exit148.i.i, %lor.lhs.false.i.i.if.end8.i.i198.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %219)
  %cmp9.i.i.i = icmp slt i32 %219, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.end8.i.i198.i.if.then.i.i.i.i_crit_edge

if.end8.i.i198.i.if.then.i.i.i.i_crit_edge:       ; preds = %if.end8.i.i198.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.end8.i.i198.i
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.cleanup.thread.i_crit_edge, label %if.then27.i.i.i, !prof !51

land.rhs16.i.i.i.cleanup.thread.i_crit_edge:      ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %cleanup.thread.i

if.then.i.i.i.i:                                  ; preds = %if.end8.i.i198.i.if.then.i.i.i.i_crit_edge, %if.end90.i.if.then.i.i.i.i_crit_edge
  call void @__check_object_size(ptr noundef %datbuf.0.i, i32 noundef %219, i1 noundef zeroext false) #10
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #10
  %call.i.i199.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i199.i, label %if.then.i.i.i.i.if.end.i.i213.i_crit_edge, label %land.lhs.true.i.i203.i

if.then.i.i.i.i.if.end.i.i213.i_crit_edge:        ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i213.i

land.lhs.true.i.i203.i:                           ; preds = %if.then.i.i.i.i
  %231 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %usr_data.0.i, i32 %219, i32 -1226833920) #14, !srcloc !53
  %asmresult.i.i201.i = extractvalue { i32, i32 } %231, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i201.i)
  %cmp.i6.i202.i = icmp eq i32 %asmresult.i.i201.i, 0
  br i1 %cmp.i6.i202.i, label %if.then.i7.i210.i, label %land.lhs.true.i.i203.i.if.end.i.i213.i_crit_edge, !prof !51

land.lhs.true.i.i203.i.if.end.i.i213.i_crit_edge: ; preds = %land.lhs.true.i.i203.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i213.i

if.then.i7.i210.i:                                ; preds = %land.lhs.true.i.i203.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i204.i = call zeroext i1 @__kasan_check_write(ptr noundef %datbuf.0.i, i32 noundef %219) #10
  %232 = call i32 @llvm.read_register.i32(metadata !39) #10
  %and.i.i.i.i.i.i205.i = and i32 %232, -16384
  %233 = inttoptr i32 %and.i.i.i.i.i.i205.i to ptr
  %cpu_domain.i.i.i.i.i206.i = getelementptr inbounds %struct.thread_info, ptr %233, i32 0, i32 4
  %234 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i206.i) #6, !srcloc !54
  %and.i.i.i.i207.i = and i32 %234, -13
  %or.i.i.i.i208.i = or i32 %and.i.i.i.i207.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i208.i) #10, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  %call1.i.i.i209.i = call i32 @arm_copy_from_user(ptr noundef %datbuf.0.i, ptr noundef %usr_data.0.i, i32 noundef %219) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %234) #10, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  br label %if.end.i.i213.i

if.end.i.i213.i:                                  ; preds = %if.then.i7.i210.i, %land.lhs.true.i.i203.i.if.end.i.i213.i_crit_edge, %if.then.i.i.i.i.if.end.i.i213.i_crit_edge
  %res.0.i.i211.i = phi i32 [ %219, %if.then.i.i.i.i.if.end.i.i213.i_crit_edge ], [ %call1.i.i.i209.i, %if.then.i7.i210.i ], [ %219, %land.lhs.true.i.i203.i.if.end.i.i213.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i211.i)
  %tobool4.not.i.i212.i = icmp eq i32 %res.0.i.i211.i, 0
  br i1 %tobool4.not.i.i212.i, label %lor.lhs.false.i, label %if.then11.i.i216.i, !prof !51

if.then11.i.i216.i:                               ; preds = %if.end.i.i213.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i214.i = sub i32 %219, %res.0.i.i211.i
  %add.ptr.i.i215.i = getelementptr i8, ptr %datbuf.0.i, i32 %sub.i.i214.i
  %235 = call ptr @memset(ptr %add.ptr.i.i215.i, i32 0, i32 %res.0.i.i211.i)
  br label %cleanup.thread.i

lor.lhs.false.i:                                  ; preds = %if.end.i.i213.i
  %236 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %183, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %237)
  %cmp9.i.i226.i = icmp slt i32 %237, 0
  br i1 %cmp9.i.i226.i, label %land.rhs16.i.i229.i, label %if.then.i.i.i232.i

land.rhs16.i.i229.i:                              ; preds = %lor.lhs.false.i
  %.b71.i.i228.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i228.i, label %land.rhs16.i.i229.i.cleanup.thread.i_crit_edge, label %if.then27.i.i230.i, !prof !51

land.rhs16.i.i229.i.cleanup.thread.i_crit_edge:   ; preds = %land.rhs16.i.i229.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i

if.then27.i.i230.i:                               ; preds = %land.rhs16.i.i229.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %cleanup.thread.i

if.then.i.i.i232.i:                               ; preds = %lor.lhs.false.i
  call void @__check_object_size(ptr noundef %oobbuf.0.i, i32 noundef %237, i1 noundef zeroext false) #10
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #10
  %call.i.i233.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i233.i, label %if.then.i.i.i232.i.if.end.i.i247.i_crit_edge, label %land.lhs.true.i.i237.i

if.then.i.i.i232.i.if.end.i.i247.i_crit_edge:     ; preds = %if.then.i.i.i232.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i247.i

land.lhs.true.i.i237.i:                           ; preds = %if.then.i.i.i232.i
  %238 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %usr_oob.0.i, i32 %237, i32 -1226833920) #14, !srcloc !53
  %asmresult.i.i235.i = extractvalue { i32, i32 } %238, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i235.i)
  %cmp.i6.i236.i = icmp eq i32 %asmresult.i.i235.i, 0
  br i1 %cmp.i6.i236.i, label %if.then.i7.i244.i, label %land.lhs.true.i.i237.i.if.end.i.i247.i_crit_edge, !prof !51

land.lhs.true.i.i237.i.if.end.i.i247.i_crit_edge: ; preds = %land.lhs.true.i.i237.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i247.i

if.then.i7.i244.i:                                ; preds = %land.lhs.true.i.i237.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i238.i = call zeroext i1 @__kasan_check_write(ptr noundef %oobbuf.0.i, i32 noundef %237) #10
  %239 = call i32 @llvm.read_register.i32(metadata !39) #10
  %and.i.i.i.i.i.i239.i = and i32 %239, -16384
  %240 = inttoptr i32 %and.i.i.i.i.i.i239.i to ptr
  %cpu_domain.i.i.i.i.i240.i = getelementptr inbounds %struct.thread_info, ptr %240, i32 0, i32 4
  %241 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i240.i) #6, !srcloc !54
  %and.i.i.i.i241.i = and i32 %241, -13
  %or.i.i.i.i242.i = or i32 %and.i.i.i.i241.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i242.i) #10, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  %call1.i.i.i243.i = call i32 @arm_copy_from_user(ptr noundef %oobbuf.0.i, ptr noundef %usr_oob.0.i, i32 noundef %237) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %241) #10, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  br label %if.end.i.i247.i

if.end.i.i247.i:                                  ; preds = %if.then.i7.i244.i, %land.lhs.true.i.i237.i.if.end.i.i247.i_crit_edge, %if.then.i.i.i232.i.if.end.i.i247.i_crit_edge
  %res.0.i.i245.i = phi i32 [ %237, %if.then.i.i.i232.i.if.end.i.i247.i_crit_edge ], [ %call1.i.i.i243.i, %if.then.i7.i244.i ], [ %237, %land.lhs.true.i.i237.i.if.end.i.i247.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i245.i)
  %tobool4.not.i.i246.i = icmp eq i32 %res.0.i.i245.i, 0
  br i1 %tobool4.not.i.i246.i, label %if.end99.i, label %if.then11.i.i250.i, !prof !51

if.then11.i.i250.i:                               ; preds = %if.end.i.i247.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i248.i = sub i32 %237, %res.0.i.i245.i
  %add.ptr.i.i249.i = getelementptr i8, ptr %oobbuf.0.i, i32 %sub.i.i248.i
  %242 = call ptr @memset(ptr %add.ptr.i.i249.i, i32 0, i32 %res.0.i.i245.i)
  br label %cleanup.thread.i

if.end99.i:                                       ; preds = %if.end.i.i247.i
  %243 = ptrtoint ptr %req.i to i32
  call void @__asan_load8_noabort(i32 %243)
  %244 = load i64, ptr %req.i, align 8
  %call101.i = call i32 @mtd_write_oob(ptr noundef %3, i64 noundef %244, ptr noundef nonnull %ops.i) #10
  %tobool102.not.i = icmp eq i32 %call101.i, 0
  br i1 %tobool102.not.i, label %cleanup.i, label %if.end99.i.cleanup.thread.i_crit_edge

if.end99.i.cleanup.thread.i_crit_edge:            ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.end99.i.cleanup.thread.i_crit_edge, %if.then11.i.i250.i, %if.then27.i.i230.i, %land.rhs16.i.i229.i.cleanup.thread.i_crit_edge, %if.then11.i.i216.i, %if.then27.i.i.i, %land.rhs16.i.i.i.cleanup.thread.i_crit_edge
  %ret.1.ph.i = phi i32 [ -14, %if.then11.i.i216.i ], [ -14, %if.then27.i.i.i ], [ -14, %land.rhs16.i.i.i.cleanup.thread.i_crit_edge ], [ -14, %if.then11.i.i250.i ], [ -14, %if.then27.i.i230.i ], [ -14, %land.rhs16.i.i229.i.cleanup.thread.i_crit_edge ], [ %call101.i, %if.end99.i.cleanup.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops.i) #10
  br label %while.end.i

cleanup.i:                                        ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #12
  %245 = ptrtoint ptr %182 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %182, align 4
  %conv106.i = zext i32 %246 to i64
  %247 = ptrtoint ptr %req.i to i32
  call void @__asan_load8_noabort(i32 %247)
  %248 = load i64, ptr %req.i, align 8
  %add108.i = add i64 %248, %conv106.i
  store i64 %add108.i, ptr %req.i, align 8
  %249 = ptrtoint ptr %len14.i to i32
  call void @__asan_load8_noabort(i32 %249)
  %250 = load i64, ptr %len14.i, align 8
  %sub112.i = sub i64 %250, %conv106.i
  store i64 %sub112.i, ptr %len14.i, align 8
  %add.ptr.i = getelementptr i8, ptr %usr_data.0.i, i32 %246
  %251 = ptrtoint ptr %184 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %184, align 4
  %conv115.i = zext i32 %252 to i64
  %253 = ptrtoint ptr %ooblen30.i to i32
  call void @__asan_load8_noabort(i32 %253)
  %254 = load i64, ptr %ooblen30.i, align 8
  %sub117.i = sub i64 %254, %conv115.i
  store i64 %sub117.i, ptr %ooblen30.i, align 8
  %add.ptr119.i = getelementptr i8, ptr %usr_oob.0.i, i32 %252
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops.i) #10
  br label %while.cond.i919

while.end.i:                                      ; preds = %cleanup.thread.i, %land.rhs.i.while.end.i_crit_edge, %lor.rhs.i.while.end.i_crit_edge
  %ret.2.i = phi i32 [ %ret.1.ph.i, %cleanup.thread.i ], [ 0, %lor.rhs.i.while.end.i_crit_edge ], [ 0, %land.rhs.i.while.end.i_crit_edge ]
  call void @kfree(ptr noundef %datbuf.0.i) #10
  call void @kfree(ptr noundef %oobbuf.0.i) #10
  br label %mtdchar_write_ioctl.exit

mtdchar_write_ioctl.exit:                         ; preds = %while.end.i, %if.then45.i, %if.end8.i.i918.mtdchar_write_ioctl.exit_crit_edge, %if.end13.i.mtdchar_write_ioctl.exit_crit_edge, %if.end.i.mtdchar_write_ioctl.exit_crit_edge, %if.then11.i.i.i
  %retval.0.i925 = phi i32 [ %ret.2.i, %while.end.i ], [ -12, %if.then45.i ], [ -95, %if.end.i.mtdchar_write_ioctl.exit_crit_edge ], [ -22, %if.end13.i.mtdchar_write_ioctl.exit_crit_edge ], [ -12, %if.end8.i.i918.mtdchar_write_ioctl.exit_crit_edge ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %req.i) #10
  br label %sw.epilog359

sw.bb185:                                         ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %einfo) #10
  %255 = ptrtoint ptr %einfo to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 -1, ptr %einfo, align 4, !annotation !49
  %256 = getelementptr inbounds %struct.erase_info_user, ptr %einfo, i32 0, i32 1
  %257 = ptrtoint ptr %256 to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 -1, ptr %256, align 4, !annotation !49
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #10
  %call.i.i650 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i650, label %sw.bb185.if.then11.i.i666_crit_edge, label %land.lhs.true.i.i653

sw.bb185.if.then11.i.i666_crit_edge:              ; preds = %sw.bb185
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i666

land.lhs.true.i.i653:                             ; preds = %sw.bb185
  %258 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 8, i32 -1226833920) #14, !srcloc !53
  %asmresult.i.i651 = extractvalue { i32, i32 } %258, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i651)
  %cmp.i6.i652 = icmp eq i32 %asmresult.i.i651, 0
  br i1 %cmp.i6.i652, label %if.end.i.i663, label %land.lhs.true.i.i653.if.then11.i.i666_crit_edge, !prof !51

land.lhs.true.i.i653.if.then11.i.i666_crit_edge:  ; preds = %land.lhs.true.i.i653
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i666

if.end.i.i663:                                    ; preds = %land.lhs.true.i.i653
  %call.i.i.i654 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %einfo, i32 noundef 8) #10
  %259 = call i32 @llvm.read_register.i32(metadata !39) #10
  %and.i.i.i.i.i.i655 = and i32 %259, -16384
  %260 = inttoptr i32 %and.i.i.i.i.i.i655 to ptr
  %cpu_domain.i.i.i.i.i656 = getelementptr inbounds %struct.thread_info, ptr %260, i32 0, i32 4
  %261 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i656) #6, !srcloc !54
  %and.i.i.i.i657 = and i32 %261, -13
  %or.i.i.i.i658 = or i32 %and.i.i.i.i657, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i658) #10, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  %call1.i.i.i659 = call i32 @arm_copy_from_user(ptr noundef nonnull %einfo, ptr noundef %6, i32 noundef 8) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %261) #10, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i659)
  %tobool4.not.i.i662 = icmp eq i32 %call1.i.i.i659, 0
  br i1 %tobool4.not.i.i662, label %cleanup195.thread, label %if.end.i.i663.if.then11.i.i666_crit_edge, !prof !51

if.end.i.i663.if.then11.i.i666_crit_edge:         ; preds = %if.end.i.i663
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i666

if.then11.i.i666:                                 ; preds = %if.end.i.i663.if.then11.i.i666_crit_edge, %land.lhs.true.i.i653.if.then11.i.i666_crit_edge, %sw.bb185.if.then11.i.i666_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %einfo) #10
  br label %cleanup360

cleanup195.thread:                                ; preds = %if.end.i.i663
  call void @__sanitizer_cov_trace_pc() #12
  %262 = ptrtoint ptr %einfo to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %einfo, align 4
  %conv191 = zext i32 %263 to i64
  %264 = ptrtoint ptr %256 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %256, align 4
  %conv193 = zext i32 %265 to i64
  %call194 = call i32 @mtd_lock(ptr noundef %3, i64 noundef %conv191, i64 noundef %conv193) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %einfo) #10
  br label %sw.epilog359

sw.bb197:                                         ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %einfo198) #10
  %266 = ptrtoint ptr %einfo198 to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 -1, ptr %einfo198, align 4, !annotation !49
  %267 = getelementptr inbounds %struct.erase_info_user, ptr %einfo198, i32 0, i32 1
  %268 = ptrtoint ptr %267 to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 -1, ptr %267, align 4, !annotation !49
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #10
  %call.i.i673 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i673, label %sw.bb197.if.then11.i.i689_crit_edge, label %land.lhs.true.i.i676

sw.bb197.if.then11.i.i689_crit_edge:              ; preds = %sw.bb197
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i689

land.lhs.true.i.i676:                             ; preds = %sw.bb197
  %269 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 8, i32 -1226833920) #14, !srcloc !53
  %asmresult.i.i674 = extractvalue { i32, i32 } %269, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i674)
  %cmp.i6.i675 = icmp eq i32 %asmresult.i.i674, 0
  br i1 %cmp.i6.i675, label %if.end.i.i686, label %land.lhs.true.i.i676.if.then11.i.i689_crit_edge, !prof !51

land.lhs.true.i.i676.if.then11.i.i689_crit_edge:  ; preds = %land.lhs.true.i.i676
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i689

if.end.i.i686:                                    ; preds = %land.lhs.true.i.i676
  %call.i.i.i677 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %einfo198, i32 noundef 8) #10
  %270 = call i32 @llvm.read_register.i32(metadata !39) #10
  %and.i.i.i.i.i.i678 = and i32 %270, -16384
  %271 = inttoptr i32 %and.i.i.i.i.i.i678 to ptr
  %cpu_domain.i.i.i.i.i679 = getelementptr inbounds %struct.thread_info, ptr %271, i32 0, i32 4
  %272 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i679) #6, !srcloc !54
  %and.i.i.i.i680 = and i32 %272, -13
  %or.i.i.i.i681 = or i32 %and.i.i.i.i680, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i681) #10, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  %call1.i.i.i682 = call i32 @arm_copy_from_user(ptr noundef nonnull %einfo198, ptr noundef %6, i32 noundef 8) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %272) #10, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i682)
  %tobool4.not.i.i685 = icmp eq i32 %call1.i.i.i682, 0
  br i1 %tobool4.not.i.i685, label %cleanup208.thread, label %if.end.i.i686.if.then11.i.i689_crit_edge, !prof !51

if.end.i.i686.if.then11.i.i689_crit_edge:         ; preds = %if.end.i.i686
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i689

if.then11.i.i689:                                 ; preds = %if.end.i.i686.if.then11.i.i689_crit_edge, %land.lhs.true.i.i676.if.then11.i.i689_crit_edge, %sw.bb197.if.then11.i.i689_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %einfo198) #10
  br label %cleanup360

cleanup208.thread:                                ; preds = %if.end.i.i686
  call void @__sanitizer_cov_trace_pc() #12
  %273 = ptrtoint ptr %einfo198 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %einfo198, align 4
  %conv204 = zext i32 %274 to i64
  %275 = ptrtoint ptr %267 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %267, align 4
  %conv206 = zext i32 %276 to i64
  %call207 = call i32 @mtd_unlock(ptr noundef %3, i64 noundef %conv204, i64 noundef %conv206) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %einfo198) #10
  br label %sw.epilog359

sw.bb210:                                         ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %einfo211) #10
  %277 = ptrtoint ptr %einfo211 to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 -1, ptr %einfo211, align 4, !annotation !49
  %278 = getelementptr inbounds %struct.erase_info_user, ptr %einfo211, i32 0, i32 1
  %279 = ptrtoint ptr %278 to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 -1, ptr %278, align 4, !annotation !49
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #10
  %call.i.i696 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i696, label %sw.bb210.if.then11.i.i712_crit_edge, label %land.lhs.true.i.i699

sw.bb210.if.then11.i.i712_crit_edge:              ; preds = %sw.bb210
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i712

land.lhs.true.i.i699:                             ; preds = %sw.bb210
  %280 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 8, i32 -1226833920) #14, !srcloc !53
  %asmresult.i.i697 = extractvalue { i32, i32 } %280, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i697)
  %cmp.i6.i698 = icmp eq i32 %asmresult.i.i697, 0
  br i1 %cmp.i6.i698, label %if.end.i.i709, label %land.lhs.true.i.i699.if.then11.i.i712_crit_edge, !prof !51

land.lhs.true.i.i699.if.then11.i.i712_crit_edge:  ; preds = %land.lhs.true.i.i699
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i712

if.end.i.i709:                                    ; preds = %land.lhs.true.i.i699
  %call.i.i.i700 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %einfo211, i32 noundef 8) #10
  %281 = call i32 @llvm.read_register.i32(metadata !39) #10
  %and.i.i.i.i.i.i701 = and i32 %281, -16384
  %282 = inttoptr i32 %and.i.i.i.i.i.i701 to ptr
  %cpu_domain.i.i.i.i.i702 = getelementptr inbounds %struct.thread_info, ptr %282, i32 0, i32 4
  %283 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i702) #6, !srcloc !54
  %and.i.i.i.i703 = and i32 %283, -13
  %or.i.i.i.i704 = or i32 %and.i.i.i.i703, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i704) #10, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  %call1.i.i.i705 = call i32 @arm_copy_from_user(ptr noundef nonnull %einfo211, ptr noundef %6, i32 noundef 8) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %283) #10, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i705)
  %tobool4.not.i.i708 = icmp eq i32 %call1.i.i.i705, 0
  br i1 %tobool4.not.i.i708, label %cleanup221.thread, label %if.end.i.i709.if.then11.i.i712_crit_edge, !prof !51

if.end.i.i709.if.then11.i.i712_crit_edge:         ; preds = %if.end.i.i709
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i712

if.then11.i.i712:                                 ; preds = %if.end.i.i709.if.then11.i.i712_crit_edge, %land.lhs.true.i.i699.if.then11.i.i712_crit_edge, %sw.bb210.if.then11.i.i712_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %einfo211) #10
  br label %cleanup360

cleanup221.thread:                                ; preds = %if.end.i.i709
  call void @__sanitizer_cov_trace_pc() #12
  %284 = ptrtoint ptr %einfo211 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %einfo211, align 4
  %conv217 = zext i32 %285 to i64
  %286 = ptrtoint ptr %278 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %278, align 4
  %conv219 = zext i32 %287 to i64
  %call220 = call i32 @mtd_is_locked(ptr noundef %3, i64 noundef %conv217, i64 noundef %conv219) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %einfo211) #10
  br label %sw.epilog359

sw.bb223:                                         ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %oi) #10
  %288 = call ptr @memset(ptr %oi, i32 255, i32 200)
  %ooblayout = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i, i32 0, i32 15
  %289 = ptrtoint ptr %ooblayout to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %ooblayout, align 8
  %tobool224.not = icmp eq ptr %290, null
  br i1 %tobool224.not, label %sw.bb223.cleanup235.thread_crit_edge, label %if.end226

sw.bb223.cleanup235.thread_crit_edge:             ; preds = %sw.bb223
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup235.thread

if.end226:                                        ; preds = %sw.bb223
  %call227 = call fastcc i32 @get_oobinfo(ptr noundef %3, ptr noundef nonnull %oi)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call227)
  %tobool228.not = icmp eq i32 %call227, 0
  br i1 %tobool228.not, label %if.end8.i.i718, label %if.end226.cleanup235.thread_crit_edge

if.end226.cleanup235.thread_crit_edge:            ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup235.thread

if.end8.i.i718:                                   ; preds = %if.end226
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #10
  %call.i.i719 = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i719, label %if.end8.i.i718.cleanup235.thread1001_crit_edge, label %if.end.i.i722

if.end8.i.i718.cleanup235.thread1001_crit_edge:   ; preds = %if.end8.i.i718
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup235.thread1001

if.end.i.i722:                                    ; preds = %if.end8.i.i718
  %291 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 200, i32 -1226833920) #14, !srcloc !52
  %asmresult.i.i720 = extractvalue { i32, i32 } %291, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i720)
  %cmp.i6.i721 = icmp eq i32 %asmresult.i.i720, 0
  br i1 %cmp.i6.i721, label %cleanup235, label %if.end.i.i722.cleanup235.thread1001_crit_edge

if.end.i.i722.cleanup235.thread1001_crit_edge:    ; preds = %if.end.i.i722
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup235.thread1001

cleanup235.thread:                                ; preds = %if.end226.cleanup235.thread_crit_edge, %sw.bb223.cleanup235.thread_crit_edge
  %retval.9.ph = phi i32 [ %call227, %if.end226.cleanup235.thread_crit_edge ], [ -95, %sw.bb223.cleanup235.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %oi) #10
  br label %cleanup360

cleanup235.thread1001:                            ; preds = %if.end.i.i722.cleanup235.thread1001_crit_edge, %if.end8.i.i718.cleanup235.thread1001_crit_edge
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %oi) #10
  br label %cleanup360

cleanup235:                                       ; preds = %if.end.i.i722
  %call.i.i.i723 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %oi, i32 noundef 200) #10
  %call.i12.i.i724 = call i32 @arm_copy_to_user(ptr noundef %6, ptr noundef nonnull %oi, i32 noundef 200) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i724)
  %tobool232.not = icmp eq i32 %call.i12.i.i724, 0
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %oi) #10
  br i1 %tobool232.not, label %cleanup235.sw.epilog359_crit_edge, label %cleanup235.cleanup360_crit_edge

cleanup235.cleanup360_crit_edge:                  ; preds = %cleanup235
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup360

cleanup235.sw.epilog359_crit_edge:                ; preds = %cleanup235
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog359

sw.bb237:                                         ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %offs) #10
  %292 = ptrtoint ptr %offs to i32
  call void @__asan_store8_noabort(i32 %292)
  store i64 -1, ptr %offs, align 8, !annotation !49
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #10
  %call.i.i732 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i732, label %sw.bb237.if.then11.i.i748_crit_edge, label %land.lhs.true.i.i735

sw.bb237.if.then11.i.i748_crit_edge:              ; preds = %sw.bb237
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i748

land.lhs.true.i.i735:                             ; preds = %sw.bb237
  %293 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 8, i32 -1226833920) #14, !srcloc !53
  %asmresult.i.i733 = extractvalue { i32, i32 } %293, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i733)
  %cmp.i6.i734 = icmp eq i32 %asmresult.i.i733, 0
  br i1 %cmp.i6.i734, label %if.end.i.i745, label %land.lhs.true.i.i735.if.then11.i.i748_crit_edge, !prof !51

land.lhs.true.i.i735.if.then11.i.i748_crit_edge:  ; preds = %land.lhs.true.i.i735
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i748

if.end.i.i745:                                    ; preds = %land.lhs.true.i.i735
  %call.i.i.i736 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %offs, i32 noundef 8) #10
  %294 = call i32 @llvm.read_register.i32(metadata !39) #10
  %and.i.i.i.i.i.i737 = and i32 %294, -16384
  %295 = inttoptr i32 %and.i.i.i.i.i.i737 to ptr
  %cpu_domain.i.i.i.i.i738 = getelementptr inbounds %struct.thread_info, ptr %295, i32 0, i32 4
  %296 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i738) #6, !srcloc !54
  %and.i.i.i.i739 = and i32 %296, -13
  %or.i.i.i.i740 = or i32 %and.i.i.i.i739, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i740) #10, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  %call1.i.i.i741 = call i32 @arm_copy_from_user(ptr noundef nonnull %offs, ptr noundef %6, i32 noundef 8) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %296) #10, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i741)
  %tobool4.not.i.i744 = icmp eq i32 %call1.i.i.i741, 0
  br i1 %tobool4.not.i.i744, label %if.end241, label %if.end.i.i745.if.then11.i.i748_crit_edge, !prof !51

if.end.i.i745.if.then11.i.i748_crit_edge:         ; preds = %if.end.i.i745
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i748

if.then11.i.i748:                                 ; preds = %if.end.i.i745.if.then11.i.i748_crit_edge, %land.lhs.true.i.i735.if.then11.i.i748_crit_edge, %sw.bb237.if.then11.i.i748_crit_edge
  %res.0.i.i7431006 = phi i32 [ %call1.i.i.i741, %if.end.i.i745.if.then11.i.i748_crit_edge ], [ 8, %sw.bb237.if.then11.i.i748_crit_edge ], [ 8, %land.lhs.true.i.i735.if.then11.i.i748_crit_edge ]
  %sub.i.i746 = sub i32 8, %res.0.i.i7431006
  %add.ptr.i.i747 = getelementptr i8, ptr %offs, i32 %sub.i.i746
  %297 = call ptr @memset(ptr %add.ptr.i.i747, i32 0, i32 %res.0.i.i7431006)
  br label %cleanup243

if.end241:                                        ; preds = %if.end.i.i745
  call void @__sanitizer_cov_trace_pc() #12
  %298 = ptrtoint ptr %offs to i32
  call void @__asan_load8_noabort(i32 %298)
  %299 = load i64, ptr %offs, align 8
  %call242 = call i32 @mtd_block_isbad(ptr noundef %3, i64 noundef %299) #10
  br label %cleanup243

cleanup243:                                       ; preds = %if.end241, %if.then11.i.i748
  %retval.10 = phi i32 [ %call242, %if.end241 ], [ -14, %if.then11.i.i748 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %offs) #10
  br label %cleanup360

sw.bb244:                                         ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %offs245) #10
  %300 = ptrtoint ptr %offs245 to i32
  call void @__asan_store8_noabort(i32 %300)
  store i64 -1, ptr %offs245, align 8, !annotation !49
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #10
  %call.i.i755 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i755, label %sw.bb244.if.then11.i.i771_crit_edge, label %land.lhs.true.i.i758

sw.bb244.if.then11.i.i771_crit_edge:              ; preds = %sw.bb244
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i771

land.lhs.true.i.i758:                             ; preds = %sw.bb244
  %301 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 8, i32 -1226833920) #14, !srcloc !53
  %asmresult.i.i756 = extractvalue { i32, i32 } %301, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i756)
  %cmp.i6.i757 = icmp eq i32 %asmresult.i.i756, 0
  br i1 %cmp.i6.i757, label %if.end.i.i768, label %land.lhs.true.i.i758.if.then11.i.i771_crit_edge, !prof !51

land.lhs.true.i.i758.if.then11.i.i771_crit_edge:  ; preds = %land.lhs.true.i.i758
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i771

if.end.i.i768:                                    ; preds = %land.lhs.true.i.i758
  %call.i.i.i759 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %offs245, i32 noundef 8) #10
  %302 = call i32 @llvm.read_register.i32(metadata !39) #10
  %and.i.i.i.i.i.i760 = and i32 %302, -16384
  %303 = inttoptr i32 %and.i.i.i.i.i.i760 to ptr
  %cpu_domain.i.i.i.i.i761 = getelementptr inbounds %struct.thread_info, ptr %303, i32 0, i32 4
  %304 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i761) #6, !srcloc !54
  %and.i.i.i.i762 = and i32 %304, -13
  %or.i.i.i.i763 = or i32 %and.i.i.i.i762, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i763) #10, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  %call1.i.i.i764 = call i32 @arm_copy_from_user(ptr noundef nonnull %offs245, ptr noundef %6, i32 noundef 8) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %304) #10, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i764)
  %tobool4.not.i.i767 = icmp eq i32 %call1.i.i.i764, 0
  br i1 %tobool4.not.i.i767, label %if.end249, label %if.end.i.i768.if.then11.i.i771_crit_edge, !prof !51

if.end.i.i768.if.then11.i.i771_crit_edge:         ; preds = %if.end.i.i768
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i771

if.then11.i.i771:                                 ; preds = %if.end.i.i768.if.then11.i.i771_crit_edge, %land.lhs.true.i.i758.if.then11.i.i771_crit_edge, %sw.bb244.if.then11.i.i771_crit_edge
  %res.0.i.i7661011 = phi i32 [ %call1.i.i.i764, %if.end.i.i768.if.then11.i.i771_crit_edge ], [ 8, %sw.bb244.if.then11.i.i771_crit_edge ], [ 8, %land.lhs.true.i.i758.if.then11.i.i771_crit_edge ]
  %sub.i.i769 = sub i32 8, %res.0.i.i7661011
  %add.ptr.i.i770 = getelementptr i8, ptr %offs245, i32 %sub.i.i769
  %305 = call ptr @memset(ptr %add.ptr.i.i770, i32 0, i32 %res.0.i.i7661011)
  br label %cleanup251

if.end249:                                        ; preds = %if.end.i.i768
  call void @__sanitizer_cov_trace_pc() #12
  %306 = ptrtoint ptr %offs245 to i32
  call void @__asan_load8_noabort(i32 %306)
  %307 = load i64, ptr %offs245, align 8
  %call250 = call i32 @mtd_block_markbad(ptr noundef %3, i64 noundef %307) #10
  br label %cleanup251

cleanup251:                                       ; preds = %if.end249, %if.then11.i.i771
  %retval.11 = phi i32 [ %call250, %if.end249 ], [ -14, %if.then11.i.i771 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %offs245) #10
  br label %cleanup360

sw.bb252:                                         ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode) #10
  %308 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 -1, ptr %mode, align 4, !annotation !49
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #10
  %call.i.i778 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i778, label %sw.bb252.if.then11.i.i794_crit_edge, label %land.lhs.true.i.i781

sw.bb252.if.then11.i.i794_crit_edge:              ; preds = %sw.bb252
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i794

land.lhs.true.i.i781:                             ; preds = %sw.bb252
  %309 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 4, i32 -1226833920) #14, !srcloc !53
  %asmresult.i.i779 = extractvalue { i32, i32 } %309, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i779)
  %cmp.i6.i780 = icmp eq i32 %asmresult.i.i779, 0
  br i1 %cmp.i6.i780, label %if.end.i.i791, label %land.lhs.true.i.i781.if.then11.i.i794_crit_edge, !prof !51

land.lhs.true.i.i781.if.then11.i.i794_crit_edge:  ; preds = %land.lhs.true.i.i781
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i794

if.end.i.i791:                                    ; preds = %land.lhs.true.i.i781
  %call.i.i.i782 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %mode, i32 noundef 4) #10
  %310 = call i32 @llvm.read_register.i32(metadata !39) #10
  %and.i.i.i.i.i.i783 = and i32 %310, -16384
  %311 = inttoptr i32 %and.i.i.i.i.i.i783 to ptr
  %cpu_domain.i.i.i.i.i784 = getelementptr inbounds %struct.thread_info, ptr %311, i32 0, i32 4
  %312 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i784) #6, !srcloc !54
  %and.i.i.i.i785 = and i32 %312, -13
  %or.i.i.i.i786 = or i32 %and.i.i.i.i785, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i786) #10, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  %call1.i.i.i787 = call i32 @arm_copy_from_user(ptr noundef nonnull %mode, ptr noundef %6, i32 noundef 4) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %312) #10, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i787)
  %tobool4.not.i.i790 = icmp eq i32 %call1.i.i.i787, 0
  br i1 %tobool4.not.i.i790, label %cleanup259.thread, label %if.end.i.i791.if.then11.i.i794_crit_edge, !prof !51

if.end.i.i791.if.then11.i.i794_crit_edge:         ; preds = %if.end.i.i791
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i794

if.then11.i.i794:                                 ; preds = %if.end.i.i791.if.then11.i.i794_crit_edge, %land.lhs.true.i.i781.if.then11.i.i794_crit_edge, %sw.bb252.if.then11.i.i794_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #10
  br label %cleanup360

cleanup259.thread:                                ; preds = %if.end.i.i791
  call void @__sanitizer_cov_trace_pc() #12
  %mode257 = getelementptr inbounds %struct.mtd_file_info, ptr %1, i32 0, i32 1
  %313 = ptrtoint ptr %mode257 to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 0, ptr %mode257, align 4
  %314 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %mode, align 4
  %call258 = call fastcc i32 @otp_select_filemode(ptr noundef %1, i32 noundef %315)
  %f_pos = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 10
  %316 = ptrtoint ptr %f_pos to i32
  call void @__asan_store8_noabort(i32 %316)
  store i64 0, ptr %f_pos, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #10
  br label %sw.epilog359

sw.bb261:                                         ; preds = %sw.epilog.sw.bb261_crit_edge, %sw.epilog.sw.bb261_crit_edge1152
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %317 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %317, i32 noundef 3264, i32 noundef 4096) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen) #10
  %318 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 -1, ptr %retlen, align 4, !annotation !49
  %tobool264.not = icmp eq ptr %call7.i, null
  br i1 %tobool264.not, label %cleanup287.thread, label %if.end266

cleanup287.thread:                                ; preds = %sw.bb261
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #10
  br label %cleanup360

if.end266:                                        ; preds = %sw.bb261
  %mode267 = getelementptr inbounds %struct.mtd_file_info, ptr %1, i32 0, i32 1
  %319 = ptrtoint ptr %mode267 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %mode267, align 4
  %321 = zext i32 %320 to i64
  call void @__sanitizer_cov_trace_switch(i64 %321, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %320, label %if.end266.cleanup287_crit_edge [
    i32 1, label %sw.bb268
    i32 2, label %sw.bb270
  ]

if.end266.cleanup287_crit_edge:                   ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup287

sw.bb268:                                         ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #12
  %call269 = call i32 @mtd_get_fact_prot_info(ptr noundef %3, i32 noundef 4096, ptr noundef nonnull %retlen, ptr noundef nonnull %call7.i) #10
  br label %sw.epilog273

sw.bb270:                                         ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #12
  %call271 = call i32 @mtd_get_user_prot_info(ptr noundef %3, i32 noundef 4096, ptr noundef nonnull %retlen, ptr noundef nonnull %call7.i) #10
  br label %sw.epilog273

sw.epilog273:                                     ; preds = %sw.bb270, %sw.bb268
  %ret.11 = phi i32 [ %call271, %sw.bb270 ], [ %call269, %sw.bb268 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.11)
  %tobool274.not = icmp eq i32 %ret.11, 0
  br i1 %tobool274.not, label %if.then275, label %sw.epilog273.cleanup287_crit_edge

sw.epilog273.cleanup287_crit_edge:                ; preds = %sw.epilog273
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup287

if.then275:                                       ; preds = %sw.epilog273
  call void @__sanitizer_cov_trace_const_cmp4(i32 1074023694, i32 %cmd)
  %cmp276 = icmp eq i32 %cmd, 1074023694
  br i1 %cmp276, label %if.then278, label %if.else280

if.then278:                                       ; preds = %if.then275
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nbr) #10
  %322 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %retlen, align 4
  %div = udiv i32 %323, 12
  %324 = ptrtoint ptr %nbr to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 %div, ptr %nbr, align 4
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #10
  %call.i.i802 = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i802, label %if.then278.copy_to_user.exit810_crit_edge, label %if.end.i.i805

if.then278.copy_to_user.exit810_crit_edge:        ; preds = %if.then278
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit810

if.end.i.i805:                                    ; preds = %if.then278
  %325 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 4, i32 -1226833920) #14, !srcloc !52
  %asmresult.i.i803 = extractvalue { i32, i32 } %325, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i803)
  %cmp.i6.i804 = icmp eq i32 %asmresult.i.i803, 0
  br i1 %cmp.i6.i804, label %if.then2.i.i808, label %if.end.i.i805.copy_to_user.exit810_crit_edge

if.end.i.i805.copy_to_user.exit810_crit_edge:     ; preds = %if.end.i.i805
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit810

if.then2.i.i808:                                  ; preds = %if.end.i.i805
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i806 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %nbr, i32 noundef 4) #10
  %call.i12.i.i807 = call i32 @arm_copy_to_user(ptr noundef %6, ptr noundef nonnull %nbr, i32 noundef 4) #10
  br label %copy_to_user.exit810

copy_to_user.exit810:                             ; preds = %if.then2.i.i808, %if.end.i.i805.copy_to_user.exit810_crit_edge, %if.then278.copy_to_user.exit810_crit_edge
  %n.addr.0.i809 = phi i32 [ 4, %if.then278.copy_to_user.exit810_crit_edge ], [ %call.i12.i.i807, %if.then2.i.i808 ], [ 4, %if.end.i.i805.copy_to_user.exit810_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nbr) #10
  br label %if.end282

if.else280:                                       ; preds = %if.then275
  %326 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %retlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %327)
  %cmp1.i.i812 = icmp ugt i32 %327, 4096
  br i1 %cmp1.i.i812, label %if.then3.i.i, label %if.then.i.i.i, !prof !62

if.then3.i.i:                                     ; preds = %if.else280
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.7, i32 noundef 4096, i32 noundef %327) #10
  br label %cleanup287

if.then.i.i.i:                                    ; preds = %if.else280
  call void @__check_object_size(ptr noundef nonnull %call7.i, i32 noundef %327, i1 noundef zeroext true) #10
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #10
  %call.i.i815 = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i815, label %if.then.i.i.i.if.end282_crit_edge, label %if.end.i.i818

if.then.i.i.i.if.end282_crit_edge:                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end282

if.end.i.i818:                                    ; preds = %if.then.i.i.i
  %328 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 %327, i32 -1226833920) #14, !srcloc !52
  %asmresult.i.i816 = extractvalue { i32, i32 } %328, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i816)
  %cmp.i6.i817 = icmp eq i32 %asmresult.i.i816, 0
  br i1 %cmp.i6.i817, label %if.then2.i.i821, label %if.end.i.i818.if.end282_crit_edge

if.end.i.i818.if.end282_crit_edge:                ; preds = %if.end.i.i818
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end282

if.then2.i.i821:                                  ; preds = %if.end.i.i818
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i819 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call7.i, i32 noundef %327) #10
  %call.i12.i.i820 = call i32 @arm_copy_to_user(ptr noundef %6, ptr noundef nonnull %call7.i, i32 noundef %327) #10
  br label %if.end282

if.end282:                                        ; preds = %if.then2.i.i821, %if.end.i.i818.if.end282_crit_edge, %if.then.i.i.i.if.end282_crit_edge, %copy_to_user.exit810
  %ret.12 = phi i32 [ %n.addr.0.i809, %copy_to_user.exit810 ], [ %327, %if.then.i.i.i.if.end282_crit_edge ], [ %call.i12.i.i820, %if.then2.i.i821 ], [ %327, %if.end.i.i818.if.end282_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.12)
  %tobool283.not = icmp eq i32 %ret.12, 0
  %spec.select = select i1 %tobool283.not, i32 0, i32 -14
  br label %cleanup287

cleanup287:                                       ; preds = %if.end282, %if.then3.i.i, %sw.epilog273.cleanup287_crit_edge, %if.end266.cleanup287_crit_edge
  %ret.13 = phi i32 [ %ret.11, %sw.epilog273.cleanup287_crit_edge ], [ -22, %if.end266.cleanup287_crit_edge ], [ -14, %if.then3.i.i ], [ %spec.select, %if.end282 ]
  call void @kfree(ptr noundef nonnull %call7.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #10
  br label %sw.epilog359

sw.bb290:                                         ; preds = %sw.epilog.sw.bb290_crit_edge, %sw.epilog.sw.bb290_crit_edge1153
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %oinfo) #10
  %329 = ptrtoint ptr %oinfo to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 -1, ptr %oinfo, align 4, !annotation !49
  %330 = getelementptr inbounds %struct.otp_info, ptr %oinfo, i32 0, i32 1
  %331 = ptrtoint ptr %330 to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 -1, ptr %330, align 4, !annotation !49
  %332 = getelementptr inbounds %struct.otp_info, ptr %oinfo, i32 0, i32 2
  %333 = ptrtoint ptr %332 to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 -1, ptr %332, align 4, !annotation !49
  %mode291 = getelementptr inbounds %struct.mtd_file_info, ptr %1, i32 0, i32 1
  %334 = ptrtoint ptr %mode291 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %mode291, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %335)
  %cmp292.not = icmp eq i32 %335, 2
  br i1 %cmp292.not, label %if.end8.i.i828, label %sw.bb290.cleanup313_crit_edge

sw.bb290.cleanup313_crit_edge:                    ; preds = %sw.bb290
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup313

if.end8.i.i828:                                   ; preds = %sw.bb290
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #10
  %call.i.i830 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i830, label %if.end8.i.i828.if.then11.i.i847_crit_edge, label %land.lhs.true.i.i834

if.end8.i.i828.if.then11.i.i847_crit_edge:        ; preds = %if.end8.i.i828
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i847

land.lhs.true.i.i834:                             ; preds = %if.end8.i.i828
  %336 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 12, i32 -1226833920) #14, !srcloc !53
  %asmresult.i.i832 = extractvalue { i32, i32 } %336, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i832)
  %cmp.i6.i833 = icmp eq i32 %asmresult.i.i832, 0
  br i1 %cmp.i6.i833, label %if.end.i.i844, label %land.lhs.true.i.i834.if.then11.i.i847_crit_edge, !prof !51

land.lhs.true.i.i834.if.then11.i.i847_crit_edge:  ; preds = %land.lhs.true.i.i834
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i847

if.end.i.i844:                                    ; preds = %land.lhs.true.i.i834
  %call.i.i.i835 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %oinfo, i32 noundef 12) #10
  %337 = call i32 @llvm.read_register.i32(metadata !39) #10
  %and.i.i.i.i.i.i836 = and i32 %337, -16384
  %338 = inttoptr i32 %and.i.i.i.i.i.i836 to ptr
  %cpu_domain.i.i.i.i.i837 = getelementptr inbounds %struct.thread_info, ptr %338, i32 0, i32 4
  %339 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i837) #6, !srcloc !54
  %and.i.i.i.i838 = and i32 %339, -13
  %or.i.i.i.i839 = or i32 %and.i.i.i.i838, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i839) #10, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  %call1.i.i.i840 = call i32 @arm_copy_from_user(ptr noundef nonnull %oinfo, ptr noundef %6, i32 noundef 12) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %339) #10, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i840)
  %tobool4.not.i.i843 = icmp eq i32 %call1.i.i.i840, 0
  br i1 %tobool4.not.i.i843, label %if.end299, label %if.end.i.i844.if.then11.i.i847_crit_edge, !prof !51

if.end.i.i844.if.then11.i.i847_crit_edge:         ; preds = %if.end.i.i844
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i847

if.then11.i.i847:                                 ; preds = %if.end.i.i844.if.then11.i.i847_crit_edge, %land.lhs.true.i.i834.if.then11.i.i847_crit_edge, %if.end8.i.i828.if.then11.i.i847_crit_edge
  %res.0.i.i8421027 = phi i32 [ %call1.i.i.i840, %if.end.i.i844.if.then11.i.i847_crit_edge ], [ 12, %if.end8.i.i828.if.then11.i.i847_crit_edge ], [ 12, %land.lhs.true.i.i834.if.then11.i.i847_crit_edge ]
  %sub.i.i845 = sub i32 12, %res.0.i.i8421027
  %add.ptr.i.i846 = getelementptr i8, ptr %oinfo, i32 %sub.i.i845
  %340 = call ptr @memset(ptr %add.ptr.i.i846, i32 0, i32 %res.0.i.i8421027)
  br label %cleanup313

if.end299:                                        ; preds = %if.end.i.i844
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2146677488, i32 %cmd)
  %cmp300 = icmp eq i32 %cmd, -2146677488
  %341 = ptrtoint ptr %oinfo to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %oinfo, align 4
  %conv304 = zext i32 %342 to i64
  %343 = ptrtoint ptr %330 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %330, align 4
  br i1 %cmp300, label %if.then302, label %if.else307

if.then302:                                       ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #12
  %call306 = call i32 @mtd_lock_user_prot_reg(ptr noundef %3, i64 noundef %conv304, i32 noundef %344) #10
  br label %cleanup313.thread

if.else307:                                       ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #12
  %call311 = call i32 @mtd_erase_user_prot_reg(ptr noundef %3, i64 noundef %conv304, i32 noundef %344) #10
  br label %cleanup313.thread

cleanup313.thread:                                ; preds = %if.else307, %if.then302
  %ret.16.ph = phi i32 [ %call311, %if.else307 ], [ %call306, %if.then302 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %oinfo) #10
  br label %sw.epilog359

cleanup313:                                       ; preds = %if.then11.i.i847, %sw.bb290.cleanup313_crit_edge
  %retval.14 = phi i32 [ -22, %sw.bb290.cleanup313_crit_edge ], [ -14, %if.then11.i.i847 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %oinfo) #10
  br label %cleanup360

sw.bb315:                                         ; preds = %sw.epilog
  %ooblayout316 = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i, i32 0, i32 15
  %345 = ptrtoint ptr %ooblayout316 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %ooblayout316, align 8
  %tobool317.not = icmp eq ptr %346, null
  br i1 %tobool317.not, label %sw.bb315.cleanup360_crit_edge, label %if.end319

sw.bb315.cleanup360_crit_edge:                    ; preds = %sw.bb315
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup360

if.end319:                                        ; preds = %sw.bb315
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %347 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i852 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %347, i32 noundef 3264, i32 noundef 328) #15
  %tobool321.not = icmp eq ptr %call7.i852, null
  br i1 %tobool321.not, label %if.end319.cleanup360_crit_edge, label %if.end323

if.end319.cleanup360_crit_edge:                   ; preds = %if.end319
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup360

if.end323:                                        ; preds = %if.end319
  tail call fastcc void @shrink_ecclayout(ptr noundef %3, ptr noundef nonnull %call7.i852)
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #10
  %call.i.i859 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i859, label %if.end323.cleanup329_crit_edge, label %if.end.i.i863

if.end323.cleanup329_crit_edge:                   ; preds = %if.end323
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup329

if.end.i.i863:                                    ; preds = %if.end323
  %348 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 328, i32 -1226833920) #14, !srcloc !52
  %asmresult.i.i861 = extractvalue { i32, i32 } %348, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i861)
  %cmp.i6.i862 = icmp eq i32 %asmresult.i.i861, 0
  br i1 %cmp.i6.i862, label %copy_to_user.exit868, label %if.end.i.i863.cleanup329_crit_edge

if.end.i.i863.cleanup329_crit_edge:               ; preds = %if.end.i.i863
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup329

copy_to_user.exit868:                             ; preds = %if.end.i.i863
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i864 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call7.i852, i32 noundef 328) #10
  %call.i12.i.i865 = tail call i32 @arm_copy_to_user(ptr noundef %6, ptr noundef nonnull %call7.i852, i32 noundef 328) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i865)
  %tobool326.not = icmp eq i32 %call.i12.i.i865, 0
  %spec.select1046 = select i1 %tobool326.not, i32 0, i32 -14
  br label %cleanup329

cleanup329:                                       ; preds = %copy_to_user.exit868, %if.end.i.i863.cleanup329_crit_edge, %if.end323.cleanup329_crit_edge
  %349 = phi i32 [ -14, %if.end323.cleanup329_crit_edge ], [ -14, %if.end.i.i863.cleanup329_crit_edge ], [ %spec.select1046, %copy_to_user.exit868 ]
  tail call void @kfree(ptr noundef nonnull %call7.i852) #10
  br label %sw.epilog359

sw.bb331:                                         ; preds = %sw.epilog
  %ecc_stats = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 52
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #10
  %call.i.i875 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i875, label %sw.bb331.cleanup360_crit_edge, label %if.end.i.i879

sw.bb331.cleanup360_crit_edge:                    ; preds = %sw.bb331
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup360

if.end.i.i879:                                    ; preds = %sw.bb331
  %350 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 16, i32 -1226833920) #14, !srcloc !52
  %asmresult.i.i877 = extractvalue { i32, i32 } %350, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i877)
  %cmp.i6.i878 = icmp eq i32 %asmresult.i.i877, 0
  br i1 %cmp.i6.i878, label %copy_to_user.exit884, label %if.end.i.i879.cleanup360_crit_edge

if.end.i.i879.cleanup360_crit_edge:               ; preds = %if.end.i.i879
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup360

copy_to_user.exit884:                             ; preds = %if.end.i.i879
  %call.i.i.i880 = tail call zeroext i1 @__kasan_check_read(ptr noundef %ecc_stats, i32 noundef 16) #10
  %call.i12.i.i881 = tail call i32 @arm_copy_to_user(ptr noundef %6, ptr noundef %ecc_stats, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i881)
  %tobool333.not = icmp eq i32 %call.i12.i.i881, 0
  br i1 %tobool333.not, label %copy_to_user.exit884.sw.epilog359_crit_edge, label %copy_to_user.exit884.cleanup360_crit_edge

copy_to_user.exit884.cleanup360_crit_edge:        ; preds = %copy_to_user.exit884
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup360

copy_to_user.exit884.sw.epilog359_crit_edge:      ; preds = %copy_to_user.exit884
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog359

sw.bb336:                                         ; preds = %sw.epilog
  %mode337 = getelementptr inbounds %struct.mtd_file_info, ptr %1, i32 0, i32 1
  %351 = ptrtoint ptr %mode337 to i32
  call void @__asan_store4_noabort(i32 %351)
  store i32 0, ptr %mode337, align 4
  %352 = zext i32 %arg to i64
  call void @__sanitizer_cov_trace_switch(i64 %352, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %arg, label %sw.default346 [
    i32 1, label %sw.bb336.sw.bb338_crit_edge
    i32 2, label %sw.bb336.sw.bb338_crit_edge1154
    i32 3, label %sw.bb336.while.cond.i.i929_crit_edge
    i32 0, label %sw.bb336.sw.epilog347_crit_edge
  ]

sw.bb336.sw.epilog347_crit_edge:                  ; preds = %sw.bb336
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog347

sw.bb336.while.cond.i.i929_crit_edge:             ; preds = %sw.bb336
  br label %while.cond.i.i929

sw.bb336.sw.bb338_crit_edge1154:                  ; preds = %sw.bb336
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb338

sw.bb336.sw.bb338_crit_edge:                      ; preds = %sw.bb336
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb338

sw.bb338:                                         ; preds = %sw.bb336.sw.bb338_crit_edge, %sw.bb336.sw.bb338_crit_edge1154
  %call339 = tail call fastcc i32 @otp_select_filemode(ptr noundef %1, i32 noundef %arg)
  br label %sw.epilog347

while.cond.i.i929:                                ; preds = %while.cond.i.i929.while.cond.i.i929_crit_edge, %sw.bb336.while.cond.i.i929_crit_edge
  %mtd.addr.0.i.i926 = phi ptr [ %354, %while.cond.i.i929.while.cond.i.i929_crit_edge ], [ %3, %sw.bb336.while.cond.i.i929_crit_edge ]
  %parent.i.i927 = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i926, i32 0, i32 62
  %353 = ptrtoint ptr %parent.i.i927 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %parent.i.i927, align 4
  %tobool.not.i.i928 = icmp eq ptr %354, null
  br i1 %tobool.not.i.i928, label %mtd_get_master.exit.i931, label %while.cond.i.i929.while.cond.i.i929_crit_edge

while.cond.i.i929.while.cond.i.i929_crit_edge:    ; preds = %while.cond.i.i929
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i.i929

mtd_get_master.exit.i931:                         ; preds = %while.cond.i.i929
  %_read_oob.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i926, i32 0, i32 27
  %355 = ptrtoint ptr %_read_oob.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %_read_oob.i, align 8
  %tobool.not.i930 = icmp eq ptr %356, null
  br i1 %tobool.not.i930, label %mtd_get_master.exit.i931.cleanup360_crit_edge, label %mtd_has_oob.exit

mtd_get_master.exit.i931.cleanup360_crit_edge:    ; preds = %mtd_get_master.exit.i931
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup360

mtd_has_oob.exit:                                 ; preds = %mtd_get_master.exit.i931
  %_write_oob.i932 = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i926, i32 0, i32 28
  %357 = ptrtoint ptr %_write_oob.i932 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %_write_oob.i932, align 4
  %tobool1.i.not = icmp eq ptr %358, null
  br i1 %tobool1.i.not, label %mtd_has_oob.exit.cleanup360_crit_edge, label %if.end344

mtd_has_oob.exit.cleanup360_crit_edge:            ; preds = %mtd_has_oob.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup360

if.end344:                                        ; preds = %mtd_has_oob.exit
  call void @__sanitizer_cov_trace_pc() #12
  %359 = ptrtoint ptr %mode337 to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 3, ptr %mode337, align 4
  br label %sw.epilog347

sw.default346:                                    ; preds = %sw.bb336
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog347

sw.epilog347:                                     ; preds = %sw.default346, %if.end344, %sw.bb338, %sw.bb336.sw.epilog347_crit_edge
  %ret.19 = phi i32 [ -22, %sw.default346 ], [ %arg, %sw.bb336.sw.epilog347_crit_edge ], [ 0, %if.end344 ], [ %call339, %sw.bb338 ]
  %f_pos348 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 10
  %360 = ptrtoint ptr %f_pos348 to i32
  call void @__asan_store8_noabort(i32 %360)
  store i64 0, ptr %f_pos348, align 8
  br label %sw.epilog359

sw.bb349:                                         ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %a) #10
  %361 = call ptr @memset(ptr %a, i32 255, i32 16)
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #10
  %call.i.i891 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i891, label %sw.bb349.if.then11.i.i908_crit_edge, label %land.lhs.true.i.i895

sw.bb349.if.then11.i.i908_crit_edge:              ; preds = %sw.bb349
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i908

land.lhs.true.i.i895:                             ; preds = %sw.bb349
  %362 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 16, i32 -1226833920) #14, !srcloc !53
  %asmresult.i.i893 = extractvalue { i32, i32 } %362, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i893)
  %cmp.i6.i894 = icmp eq i32 %asmresult.i.i893, 0
  br i1 %cmp.i6.i894, label %if.end.i.i905, label %land.lhs.true.i.i895.if.then11.i.i908_crit_edge, !prof !51

land.lhs.true.i.i895.if.then11.i.i908_crit_edge:  ; preds = %land.lhs.true.i.i895
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i908

if.end.i.i905:                                    ; preds = %land.lhs.true.i.i895
  %call.i.i.i896 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %a, i32 noundef 16) #10
  %363 = call i32 @llvm.read_register.i32(metadata !39) #10
  %and.i.i.i.i.i.i897 = and i32 %363, -16384
  %364 = inttoptr i32 %and.i.i.i.i.i.i897 to ptr
  %cpu_domain.i.i.i.i.i898 = getelementptr inbounds %struct.thread_info, ptr %364, i32 0, i32 4
  %365 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i898) #6, !srcloc !54
  %and.i.i.i.i899 = and i32 %365, -13
  %or.i.i.i.i900 = or i32 %and.i.i.i.i899, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i900) #10, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  %call1.i.i.i901 = call i32 @arm_copy_from_user(ptr noundef nonnull %a, ptr noundef %6, i32 noundef 16) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %365) #10, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i901)
  %tobool4.not.i.i904 = icmp eq i32 %call1.i.i.i901, 0
  br i1 %tobool4.not.i.i904, label %if.else353, label %if.end.i.i905.if.then11.i.i908_crit_edge, !prof !51

if.end.i.i905.if.then11.i.i908_crit_edge:         ; preds = %if.end.i.i905
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i908

if.then11.i.i908:                                 ; preds = %if.end.i.i905.if.then11.i.i908_crit_edge, %land.lhs.true.i.i895.if.then11.i.i908_crit_edge, %sw.bb349.if.then11.i.i908_crit_edge
  %res.0.i.i9031043 = phi i32 [ %call1.i.i.i901, %if.end.i.i905.if.then11.i.i908_crit_edge ], [ 16, %sw.bb349.if.then11.i.i908_crit_edge ], [ 16, %land.lhs.true.i.i895.if.then11.i.i908_crit_edge ]
  %sub.i.i906 = sub i32 16, %res.0.i.i9031043
  %add.ptr.i.i907 = getelementptr i8, ptr %a, i32 %sub.i.i906
  %366 = call ptr @memset(ptr %add.ptr.i.i907, i32 0, i32 %res.0.i.i9031043)
  br label %if.end355

if.else353:                                       ; preds = %if.end.i.i905
  call void @__sanitizer_cov_trace_pc() #12
  %call354 = call fastcc i32 @mtdchar_blkpg_ioctl(ptr noundef %3, ptr noundef nonnull %a)
  br label %if.end355

if.end355:                                        ; preds = %if.else353, %if.then11.i.i908
  %ret.20 = phi i32 [ %call354, %if.else353 ], [ -14, %if.then11.i.i908 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %a) #10
  br label %sw.epilog359

sw.epilog359:                                     ; preds = %if.end355, %sw.epilog347, %copy_to_user.exit884.sw.epilog359_crit_edge, %cleanup329, %cleanup313.thread, %cleanup287, %cleanup259.thread, %cleanup235.sw.epilog359_crit_edge, %cleanup221.thread, %cleanup208.thread, %cleanup195.thread, %mtdchar_write_ioctl.exit, %if.end180, %if.end164, %if.end149, %if.end133, %if.end118, %sw.bb91.sw.epilog359_crit_edge, %copy_to_user.exit520.sw.epilog359_crit_edge, %cleanup.sw.epilog359_crit_edge, %copy_to_user.exit.sw.epilog359_crit_edge, %sw.epilog.sw.epilog359_crit_edge
  %ret.21 = phi i32 [ %ret.20, %if.end355 ], [ %ret.19, %sw.epilog347 ], [ 0, %copy_to_user.exit884.sw.epilog359_crit_edge ], [ %349, %cleanup329 ], [ %ret.13, %cleanup287 ], [ 0, %cleanup235.sw.epilog359_crit_edge ], [ %retval.0.i925, %mtdchar_write_ioctl.exit ], [ %ret.5, %if.end180 ], [ %ret.4, %if.end164 ], [ %ret.3, %if.end149 ], [ %ret.2, %if.end133 ], [ 0, %copy_to_user.exit520.sw.epilog359_crit_edge ], [ 0, %cleanup.sw.epilog359_crit_edge ], [ 0, %copy_to_user.exit.sw.epilog359_crit_edge ], [ 0, %sw.epilog.sw.epilog359_crit_edge ], [ %call194, %cleanup195.thread ], [ %call207, %cleanup208.thread ], [ %call220, %cleanup221.thread ], [ %call258, %cleanup259.thread ], [ %ret.16.ph, %cleanup313.thread ], [ -12, %sw.bb91.sw.epilog359_crit_edge ], [ %call119, %if.end118 ]
  br label %cleanup360

cleanup360:                                       ; preds = %sw.epilog359, %mtd_has_oob.exit.cleanup360_crit_edge, %mtd_get_master.exit.i931.cleanup360_crit_edge, %copy_to_user.exit884.cleanup360_crit_edge, %if.end.i.i879.cleanup360_crit_edge, %sw.bb331.cleanup360_crit_edge, %if.end319.cleanup360_crit_edge, %sw.bb315.cleanup360_crit_edge, %cleanup313, %cleanup287.thread, %if.then11.i.i794, %cleanup251, %cleanup243, %cleanup235.cleanup360_crit_edge, %cleanup235.thread1001, %cleanup235.thread, %if.then11.i.i712, %if.then11.i.i689, %if.then11.i.i666, %if.then11.i.i551, %if.then11.i.i, %copy_to_user.exit520.cleanup360_crit_edge, %if.end.i.i515.cleanup360_crit_edge, %sw.bb78.cleanup360_crit_edge, %cleanup.cleanup360_crit_edge, %lor.lhs.false.cleanup360_crit_edge, %if.end24.cleanup360_crit_edge, %if.end21.cleanup360_crit_edge, %sw.bb14.cleanup360_crit_edge, %copy_to_user.exit.cleanup360_crit_edge, %if.end.i.i.cleanup360_crit_edge, %sw.bb9.cleanup360_crit_edge, %sw.bb5.cleanup360_crit_edge, %do.end.cleanup360_crit_edge
  %retval.16 = phi i32 [ %ret.21, %sw.epilog359 ], [ %retval.14, %cleanup313 ], [ -14, %if.then11.i.i794 ], [ %retval.11, %cleanup251 ], [ %retval.10, %cleanup243 ], [ -14, %cleanup235.cleanup360_crit_edge ], [ -14, %if.then11.i.i712 ], [ -14, %if.then11.i.i689 ], [ -14, %if.then11.i.i666 ], [ -14, %cleanup.cleanup360_crit_edge ], [ -1, %sw.bb5.cleanup360_crit_edge ], [ -25, %do.end.cleanup360_crit_edge ], [ -14, %copy_to_user.exit.cleanup360_crit_edge ], [ -14, %copy_to_user.exit520.cleanup360_crit_edge ], [ -14, %copy_to_user.exit884.cleanup360_crit_edge ], [ -95, %mtd_has_oob.exit.cleanup360_crit_edge ], [ -14, %if.then11.i.i551 ], [ -14, %if.then11.i.i ], [ %retval.9.ph, %cleanup235.thread ], [ -14, %cleanup235.thread1001 ], [ -12, %cleanup287.thread ], [ -14, %sw.bb9.cleanup360_crit_edge ], [ -14, %if.end.i.i.cleanup360_crit_edge ], [ -14, %if.end24.cleanup360_crit_edge ], [ -14, %lor.lhs.false.cleanup360_crit_edge ], [ -22, %if.end21.cleanup360_crit_edge ], [ -14, %sw.bb14.cleanup360_crit_edge ], [ -14, %sw.bb78.cleanup360_crit_edge ], [ -14, %if.end.i.i515.cleanup360_crit_edge ], [ -12, %if.end319.cleanup360_crit_edge ], [ -95, %sw.bb315.cleanup360_crit_edge ], [ -14, %sw.bb331.cleanup360_crit_edge ], [ -14, %if.end.i.i879.cleanup360_crit_edge ], [ -95, %mtd_get_master.exit.i931.cleanup360_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %info) #10
  ret i32 %retval.16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtdchar_writeoob(ptr nocapture noundef readonly %file, ptr noundef %mtd, i64 noundef %start, i32 noundef %length, ptr noundef %ptr, ptr noundef %retp) unnamed_addr #4 align 64 {
entry:
  %ops = alloca %struct.mtd_oob_ops, align 4
  %retlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %entry
  %mtd.addr.0.i = phi ptr [ %mtd, %entry ], [ %1, %while.cond.i.while.cond.i_crit_edge ]
  %parent.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i, i32 0, i32 62
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %mtd_get_master.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

mtd_get_master.exit:                              ; preds = %while.cond.i
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops) #10
  %4 = getelementptr inbounds i8, ptr %ops, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %length)
  %cmp = icmp ugt i32 %length, 4096
  br i1 %cmp, label %mtd_get_master.exit.cleanup_crit_edge, label %if.end

mtd_get_master.exit.cleanup_crit_edge:            ; preds = %mtd_get_master.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %mtd_get_master.exit
  %_write_oob = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i, i32 0, i32 28
  %6 = ptrtoint ptr %_write_oob to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_write_oob, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %ooblen = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 3
  %8 = ptrtoint ptr %ooblen to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %length, ptr %ooblen, align 4
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %9 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %writesize, align 4
  %sub = add i32 %10, -1
  %11 = trunc i64 %start to i32
  %conv3 = and i32 %sub, %11
  %ooboffs = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 5
  %12 = ptrtoint ptr %ooboffs to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv3, ptr %ooboffs, align 4
  %datbuf = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 6
  %13 = ptrtoint ptr %datbuf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %datbuf, align 4
  %mode = getelementptr inbounds %struct.mtd_file_info, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp4 = icmp eq i32 %15, 3
  %cond = select i1 %cmp4, i32 2, i32 0
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cond, ptr %ops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3)
  %tobool8.not = icmp eq i32 %conv3, 0
  br i1 %tobool8.not, label %if.end2.if.end15_crit_edge, label %land.lhs.true

if.end2.if.end15_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end2
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %17 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %oobsize, align 4
  %sub11 = sub i32 %18, %conv3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub11, i32 %length)
  %cmp12 = icmp ult i32 %sub11, %length
  br i1 %cmp12, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true.if.end15_crit_edge, %if.end2.if.end15_crit_edge
  %call16 = tail call ptr @memdup_user(ptr noundef %ptr, i32 noundef %length) #10
  %oobbuf = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 7
  %19 = ptrtoint ptr %oobbuf to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call16, ptr %oobbuf, align 4
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %call16 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  %21 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %writesize, align 4
  %conv24 = zext i32 %22 to i64
  %neg = sub nsw i64 0, %conv24
  %and26 = and i64 %neg, %start
  %call27 = call i32 @mtd_write_oob(ptr noundef %mtd, i64 noundef %and26, ptr noundef nonnull %ops) #10
  %oobretlen = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 4
  %23 = ptrtoint ptr %oobretlen to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %oobretlen, align 4
  %25 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %retlen, align 4
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.end22.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

if.end22.copy_to_user.exit.thread_crit_edge:      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %if.end22
  %26 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %retp, i32 4, i32 -1226833920) #14, !srcloc !52
  %asmresult.i.i = extractvalue { i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %retlen, i32 noundef 4) #10
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %retp, ptr noundef nonnull %retlen, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool34.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool34.not, i32 %call27, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %if.end22.copy_to_user.exit.thread_crit_edge
  %27 = phi i32 [ -14, %if.end22.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  %28 = ptrtoint ptr %oobbuf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %oobbuf, align 4
  call void @kfree(ptr noundef %29) #10
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit.thread, %if.then19, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %mtd_get_master.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %20, %if.then19 ], [ %27, %copy_to_user.exit.thread ], [ -22, %mtd_get_master.exit.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtdchar_readoob(ptr nocapture noundef readonly %file, ptr noundef %mtd, i64 noundef %start, i32 noundef %length, ptr noundef %ptr, ptr noundef %retp) unnamed_addr #4 align 64 {
entry:
  %ops = alloca %struct.mtd_oob_ops, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops) #10
  %2 = getelementptr inbounds i8, ptr %ops, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %length)
  %cmp = icmp ugt i32 %length, 4096
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %ooblen = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 3
  %4 = ptrtoint ptr %ooblen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %length, ptr %ooblen, align 4
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %5 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %writesize, align 4
  %sub = add i32 %6, -1
  %7 = trunc i64 %start to i32
  %conv1 = and i32 %sub, %7
  %ooboffs = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 5
  %8 = ptrtoint ptr %ooboffs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv1, ptr %ooboffs, align 4
  %mode = getelementptr inbounds %struct.mtd_file_info, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp2 = icmp eq i32 %10, 3
  %cond = select i1 %cmp2, i32 2, i32 0
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond, ptr %ops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1)
  %tobool.not = icmp eq i32 %conv1, 0
  br i1 %tobool.not, label %if.end.if.end8.i_crit_edge, label %land.lhs.true

if.end.if.end8.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

land.lhs.true:                                    ; preds = %if.end
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %12 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %oobsize, align 4
  %sub8 = sub i32 %13, %conv1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub8, i32 %length)
  %cmp9 = icmp ult i32 %sub8, %length
  br i1 %cmp9, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end8.i_crit_edge

land.lhs.true.if.end8.i_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8.i:                                        ; preds = %land.lhs.true.if.end8.i_crit_edge, %if.end.if.end8.i_crit_edge
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %length, i32 noundef 3264) #16
  %oobbuf = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 7
  %14 = ptrtoint ptr %oobbuf to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call9.i, ptr %oobbuf, align 4
  %tobool14.not = icmp eq ptr %call9.i, null
  br i1 %tobool14.not, label %if.end8.i.cleanup_crit_edge, label %if.end16

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end8.i
  %15 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %writesize, align 4
  %conv18 = zext i32 %16 to i64
  %neg = sub nsw i64 0, %conv18
  %and20 = and i64 %neg, %start
  %call21 = call i32 @mtd_read_oob(ptr noundef %mtd, i64 noundef %and20, ptr noundef nonnull %ops) #10
  %oobretlen = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 4
  %17 = ptrtoint ptr %oobretlen to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %oobretlen, align 4
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 409) #10
  %19 = call i32 @llvm.read_register.i32(metadata !39) #10
  %and.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 4
  %21 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !54
  %and.i = and i32 %21, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  %22 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %retp, i32 %18, i32 -1226833921) #10, !srcloc !63
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #10, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool24.not = icmp eq i32 %22, 0
  br i1 %tobool24.not, label %if.else, label %if.end16.if.end35_crit_edge

if.end16.if.end35_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.else:                                          ; preds = %if.end16
  %23 = ptrtoint ptr %oobretlen to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %oobretlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool27.not = icmp eq i32 %24, 0
  br i1 %tobool27.not, label %if.else.if.end35_crit_edge, label %land.lhs.true28

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

land.lhs.true28:                                  ; preds = %if.else
  %25 = ptrtoint ptr %oobbuf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %oobbuf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp9.i.i = icmp slt i32 %24, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %land.lhs.true28
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.if.end35_crit_edge, label %if.then27.i.i, !prof !51

land.rhs16.i.i.if.end35_crit_edge:                ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %if.end35

if.then.i.i.i:                                    ; preds = %land.lhs.true28
  call void @__check_object_size(ptr noundef %26, i32 noundef %24, i1 noundef zeroext true) #10
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.then.i.i.i.if.end35_crit_edge, label %if.end.i.i55

if.then.i.i.i.if.end35_crit_edge:                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.end.i.i55:                                     ; preds = %if.then.i.i.i
  %27 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %ptr, i32 %24, i32 -1226833920) #14, !srcloc !52
  %asmresult.i.i = extractvalue { i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i55.if.end35_crit_edge

if.end.i.i55.if.end35_crit_edge:                  ; preds = %if.end.i.i55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then2.i.i:                                     ; preds = %if.end.i.i55
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %26, i32 noundef %24) #10
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %ptr, ptr noundef %26, i32 noundef %24) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %phi.cmp = icmp eq i32 %call.i12.i.i, 0
  %phi.sel = select i1 %phi.cmp, i32 %call21, i32 -14
  br label %if.end35

if.end35:                                         ; preds = %if.then2.i.i, %if.end.i.i55.if.end35_crit_edge, %if.then.i.i.i.if.end35_crit_edge, %if.then27.i.i, %land.rhs16.i.i.if.end35_crit_edge, %if.else.if.end35_crit_edge, %if.end16.if.end35_crit_edge
  %ret.0 = phi i32 [ %call21, %if.else.if.end35_crit_edge ], [ -14, %if.end16.if.end35_crit_edge ], [ -14, %if.then.i.i.i.if.end35_crit_edge ], [ %phi.sel, %if.then2.i.i ], [ -14, %if.end.i.i55.if.end35_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.if.end35_crit_edge ]
  %28 = ptrtoint ptr %oobbuf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %oobbuf, align 4
  call void @kfree(ptr noundef %29) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -117, i32 %ret.0)
  %cmp.i.not.i = icmp ne i32 %ret.0, -117
  call void @__sanitizer_cov_trace_const_cmp4(i32 -74, i32 %ret.0)
  %cmp.i4.i = icmp ne i32 %ret.0, -74
  %tobool38.not = and i1 %cmp.i.not.i, %cmp.i4.i
  %ret.0. = select i1 %tobool38.not, i32 %ret.0, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end8.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ], [ %ret.0., %if.end35 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_lock(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_unlock(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_is_locked(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_oobinfo(ptr noundef %mtd, ptr noundef %to) unnamed_addr #4 align 64 {
entry:
  %oobregion = alloca %struct.mtd_oob_region, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %oobregion) #10
  %0 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %oobregion, align 4, !annotation !49
  %1 = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !49
  %tobool.not = icmp eq ptr %mtd, null
  %tobool1.not = icmp eq ptr %to, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup43_crit_edge, label %if.end

entry.cleanup43_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup43

if.end:                                           ; preds = %entry
  %eccbytes = getelementptr inbounds %struct.nand_oobinfo, ptr %to, i32 0, i32 1
  %3 = call ptr @memset(ptr %to, i32 0, i32 200)
  br label %for.body

for.cond.loopexit:                                ; preds = %for.body16.for.cond.loopexit_crit_edge, %if.end10.for.cond.loopexit_crit_edge
  %i.1.lcssa = phi i32 [ %i.081, %if.end10.for.cond.loopexit_crit_edge ], [ %inc21, %for.body16.for.cond.loopexit_crit_edge ]
  %cmp = icmp ult i32 %i.1.lcssa, 32
  br i1 %cmp, label %for.cond.loopexit.for.body_crit_edge, label %for.cond.loopexit.for.end22_crit_edge

for.cond.loopexit.for.end22_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end22

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %if.end
  %section.082 = phi i32 [ 0, %if.end ], [ %inc, %for.cond.loopexit.for.body_crit_edge ]
  %i.081 = phi i32 [ 0, %if.end ], [ %i.1.lcssa, %for.cond.loopexit.for.body_crit_edge ]
  %inc = add i32 %section.082, 1
  %call = call i32 @mtd_ooblayout_ecc(ptr noundef nonnull %mtd, i32 noundef %section.082, ptr noundef nonnull %oobregion) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.then3, label %if.end7

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -34, i32 %call)
  %cmp4.not = icmp eq i32 %call, -34
  br i1 %cmp4.not, label %if.then3.for.end22_crit_edge, label %if.then3.cleanup43_crit_edge

if.then3.cleanup43_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup43

if.then3.for.end22_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end22

if.end7:                                          ; preds = %for.body
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %add = add i32 %5, %i.081
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add)
  %cmp8 = icmp ugt i32 %add, 32
  br i1 %cmp8, label %if.end7.cleanup43_crit_edge, label %if.end10

if.end7.cleanup43_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup43

if.end10:                                         ; preds = %if.end7
  %6 = ptrtoint ptr %oobregion to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oobregion, align 4
  %add14 = add i32 %7, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add14)
  %cmp1578 = icmp ult i32 %7, %add14
  br i1 %cmp1578, label %if.end10.for.body16_crit_edge, label %if.end10.for.cond.loopexit_crit_edge

if.end10.for.cond.loopexit_crit_edge:             ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit

if.end10.for.body16_crit_edge:                    ; preds = %if.end10
  br label %for.body16

for.body16:                                       ; preds = %for.body16.for.body16_crit_edge, %if.end10.for.body16_crit_edge
  %eccpos.080 = phi i32 [ %inc17, %for.body16.for.body16_crit_edge ], [ %7, %if.end10.for.body16_crit_edge ]
  %i.179 = phi i32 [ %inc21, %for.body16.for.body16_crit_edge ], [ %i.081, %if.end10.for.body16_crit_edge ]
  %inc17 = add nuw i32 %eccpos.080, 1
  %arrayidx = getelementptr %struct.nand_oobinfo, ptr %to, i32 0, i32 3, i32 %i.179
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %eccpos.080, ptr %arrayidx, align 4
  %9 = ptrtoint ptr %eccbytes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %eccbytes, align 4
  %inc20 = add i32 %10, 1
  store i32 %inc20, ptr %eccbytes, align 4
  %inc21 = add i32 %i.179, 1
  %exitcond.not = icmp eq i32 %inc17, %add14
  br i1 %exitcond.not, label %for.body16.for.cond.loopexit_crit_edge, label %for.body16.for.body16_crit_edge

for.body16.for.body16_crit_edge:                  ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body16

for.body16.for.cond.loopexit_crit_edge:           ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit

for.end22:                                        ; preds = %if.then3.for.end22_crit_edge, %for.cond.loopexit.for.end22_crit_edge
  %call26 = call i32 @mtd_ooblayout_free(ptr noundef nonnull %mtd, i32 noundef 0, ptr noundef nonnull %oobregion) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %for.end22.if.then28_crit_edge, label %if.end32

for.end22.if.then28_crit_edge:                    ; preds = %for.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

if.then28:                                        ; preds = %if.end32.6.if.then28_crit_edge, %if.end32.5.if.then28_crit_edge, %if.end32.4.if.then28_crit_edge, %if.end32.3.if.then28_crit_edge, %if.end32.2.if.then28_crit_edge, %if.end32.1.if.then28_crit_edge, %if.end32.if.then28_crit_edge, %for.end22.if.then28_crit_edge
  %call26.lcssa = phi i32 [ %call26, %for.end22.if.then28_crit_edge ], [ %call26.1, %if.end32.if.then28_crit_edge ], [ %call26.2, %if.end32.1.if.then28_crit_edge ], [ %call26.3, %if.end32.2.if.then28_crit_edge ], [ %call26.4, %if.end32.3.if.then28_crit_edge ], [ %call26.5, %if.end32.4.if.then28_crit_edge ], [ %call26.6, %if.end32.5.if.then28_crit_edge ], [ %call26.7, %if.end32.6.if.then28_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -34, i32 %call26.lcssa)
  %cmp29.not = icmp eq i32 %call26.lcssa, -34
  br i1 %cmp29.not, label %if.then28.for.end42_crit_edge, label %if.then28.cleanup43_crit_edge

if.then28.cleanup43_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup43

if.then28.for.end42_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end42

if.end32:                                         ; preds = %for.end22
  %11 = ptrtoint ptr %oobregion to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %oobregion, align 4
  %arrayidx34 = getelementptr %struct.nand_oobinfo, ptr %to, i32 0, i32 2, i32 0
  %13 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx34, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 4
  %arrayidx39 = getelementptr %struct.nand_oobinfo, ptr %to, i32 0, i32 2, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx39, align 4
  %call26.1 = call i32 @mtd_ooblayout_free(ptr noundef nonnull %mtd, i32 noundef 1, ptr noundef nonnull %oobregion) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.1)
  %cmp27.1 = icmp slt i32 %call26.1, 0
  br i1 %cmp27.1, label %if.end32.if.then28_crit_edge, label %if.end32.1

if.end32.if.then28_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

if.end32.1:                                       ; preds = %if.end32
  %17 = ptrtoint ptr %oobregion to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %oobregion, align 4
  %arrayidx34.1 = getelementptr %struct.nand_oobinfo, ptr %to, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %arrayidx34.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx34.1, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %1, align 4
  %arrayidx39.1 = getelementptr %struct.nand_oobinfo, ptr %to, i32 0, i32 2, i32 1, i32 1
  %22 = ptrtoint ptr %arrayidx39.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx39.1, align 4
  %call26.2 = call i32 @mtd_ooblayout_free(ptr noundef nonnull %mtd, i32 noundef 2, ptr noundef nonnull %oobregion) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.2)
  %cmp27.2 = icmp slt i32 %call26.2, 0
  br i1 %cmp27.2, label %if.end32.1.if.then28_crit_edge, label %if.end32.2

if.end32.1.if.then28_crit_edge:                   ; preds = %if.end32.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

if.end32.2:                                       ; preds = %if.end32.1
  %23 = ptrtoint ptr %oobregion to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %oobregion, align 4
  %arrayidx34.2 = getelementptr %struct.nand_oobinfo, ptr %to, i32 0, i32 2, i32 2
  %25 = ptrtoint ptr %arrayidx34.2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx34.2, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %1, align 4
  %arrayidx39.2 = getelementptr %struct.nand_oobinfo, ptr %to, i32 0, i32 2, i32 2, i32 1
  %28 = ptrtoint ptr %arrayidx39.2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx39.2, align 4
  %call26.3 = call i32 @mtd_ooblayout_free(ptr noundef nonnull %mtd, i32 noundef 3, ptr noundef nonnull %oobregion) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.3)
  %cmp27.3 = icmp slt i32 %call26.3, 0
  br i1 %cmp27.3, label %if.end32.2.if.then28_crit_edge, label %if.end32.3

if.end32.2.if.then28_crit_edge:                   ; preds = %if.end32.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

if.end32.3:                                       ; preds = %if.end32.2
  %29 = ptrtoint ptr %oobregion to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %oobregion, align 4
  %arrayidx34.3 = getelementptr %struct.nand_oobinfo, ptr %to, i32 0, i32 2, i32 3
  %31 = ptrtoint ptr %arrayidx34.3 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx34.3, align 4
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %1, align 4
  %arrayidx39.3 = getelementptr %struct.nand_oobinfo, ptr %to, i32 0, i32 2, i32 3, i32 1
  %34 = ptrtoint ptr %arrayidx39.3 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx39.3, align 4
  %call26.4 = call i32 @mtd_ooblayout_free(ptr noundef nonnull %mtd, i32 noundef 4, ptr noundef nonnull %oobregion) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.4)
  %cmp27.4 = icmp slt i32 %call26.4, 0
  br i1 %cmp27.4, label %if.end32.3.if.then28_crit_edge, label %if.end32.4

if.end32.3.if.then28_crit_edge:                   ; preds = %if.end32.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

if.end32.4:                                       ; preds = %if.end32.3
  %35 = ptrtoint ptr %oobregion to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %oobregion, align 4
  %arrayidx34.4 = getelementptr %struct.nand_oobinfo, ptr %to, i32 0, i32 2, i32 4
  %37 = ptrtoint ptr %arrayidx34.4 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx34.4, align 4
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %1, align 4
  %arrayidx39.4 = getelementptr %struct.nand_oobinfo, ptr %to, i32 0, i32 2, i32 4, i32 1
  %40 = ptrtoint ptr %arrayidx39.4 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx39.4, align 4
  %call26.5 = call i32 @mtd_ooblayout_free(ptr noundef nonnull %mtd, i32 noundef 5, ptr noundef nonnull %oobregion) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.5)
  %cmp27.5 = icmp slt i32 %call26.5, 0
  br i1 %cmp27.5, label %if.end32.4.if.then28_crit_edge, label %if.end32.5

if.end32.4.if.then28_crit_edge:                   ; preds = %if.end32.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

if.end32.5:                                       ; preds = %if.end32.4
  %41 = ptrtoint ptr %oobregion to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %oobregion, align 4
  %arrayidx34.5 = getelementptr %struct.nand_oobinfo, ptr %to, i32 0, i32 2, i32 5
  %43 = ptrtoint ptr %arrayidx34.5 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %arrayidx34.5, align 4
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %1, align 4
  %arrayidx39.5 = getelementptr %struct.nand_oobinfo, ptr %to, i32 0, i32 2, i32 5, i32 1
  %46 = ptrtoint ptr %arrayidx39.5 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx39.5, align 4
  %call26.6 = call i32 @mtd_ooblayout_free(ptr noundef nonnull %mtd, i32 noundef 6, ptr noundef nonnull %oobregion) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.6)
  %cmp27.6 = icmp slt i32 %call26.6, 0
  br i1 %cmp27.6, label %if.end32.5.if.then28_crit_edge, label %if.end32.6

if.end32.5.if.then28_crit_edge:                   ; preds = %if.end32.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

if.end32.6:                                       ; preds = %if.end32.5
  %47 = ptrtoint ptr %oobregion to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %oobregion, align 4
  %arrayidx34.6 = getelementptr %struct.nand_oobinfo, ptr %to, i32 0, i32 2, i32 6
  %49 = ptrtoint ptr %arrayidx34.6 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %arrayidx34.6, align 4
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %1, align 4
  %arrayidx39.6 = getelementptr %struct.nand_oobinfo, ptr %to, i32 0, i32 2, i32 6, i32 1
  %52 = ptrtoint ptr %arrayidx39.6 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %arrayidx39.6, align 4
  %call26.7 = call i32 @mtd_ooblayout_free(ptr noundef nonnull %mtd, i32 noundef 7, ptr noundef nonnull %oobregion) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.7)
  %cmp27.7 = icmp slt i32 %call26.7, 0
  br i1 %cmp27.7, label %if.end32.6.if.then28_crit_edge, label %if.end32.7

if.end32.6.if.then28_crit_edge:                   ; preds = %if.end32.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

if.end32.7:                                       ; preds = %if.end32.6
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %oobregion to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %oobregion, align 4
  %arrayidx34.7 = getelementptr %struct.nand_oobinfo, ptr %to, i32 0, i32 2, i32 7
  %55 = ptrtoint ptr %arrayidx34.7 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %arrayidx34.7, align 4
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %1, align 4
  %arrayidx39.7 = getelementptr %struct.nand_oobinfo, ptr %to, i32 0, i32 2, i32 7, i32 1
  %58 = ptrtoint ptr %arrayidx39.7 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %arrayidx39.7, align 4
  br label %for.end42

for.end42:                                        ; preds = %if.end32.7, %if.then28.for.end42_crit_edge
  %59 = ptrtoint ptr %to to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 2, ptr %to, align 4
  br label %cleanup43

cleanup43:                                        ; preds = %for.end42, %if.then28.cleanup43_crit_edge, %if.end7.cleanup43_crit_edge, %if.then3.cleanup43_crit_edge, %entry.cleanup43_crit_edge
  %retval.2 = phi i32 [ 0, %for.end42 ], [ -22, %entry.cleanup43_crit_edge ], [ %call26.lcssa, %if.then28.cleanup43_crit_edge ], [ %call, %if.then3.cleanup43_crit_edge ], [ -22, %if.end7.cleanup43_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %oobregion) #10
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_block_isbad(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_block_markbad(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @otp_select_filemode(ptr nocapture noundef %mfi, i32 noundef %mode) unnamed_addr #4 align 64 {
entry:
  %retlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mfi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mfi, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen) #10
  %2 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %retlen, align 4, !annotation !49
  %3 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %mode, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
    i32 0, label %entry.cleanup.sink.split_crit_edge
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call = call i32 @mtd_read_fact_prot_reg(ptr noundef %1, i64 noundef -1, i32 noundef 0, ptr noundef nonnull %retlen, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call)
  %cmp = icmp eq i32 %call, -95
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %sw.bb.cleanup.sink.split_crit_edge

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %call4 = call i32 @mtd_read_user_prot_reg(ptr noundef %1, i64 noundef -1, i32 noundef 0, ptr noundef nonnull %retlen, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call4)
  %cmp5 = icmp eq i32 %call4, -95
  br i1 %cmp5, label %sw.bb3.cleanup_crit_edge, label %sw.bb3.cleanup.sink.split_crit_edge

sw.bb3.cleanup.sink.split_crit_edge:              ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.sink.split:                               ; preds = %sw.bb3.cleanup.sink.split_crit_edge, %sw.bb.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %mode2 = getelementptr inbounds %struct.mtd_file_info, ptr %mfi, i32 0, i32 1
  %4 = ptrtoint ptr %mode2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mode, ptr %mode2, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb3.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %sw.bb.cleanup_crit_edge ], [ -95, %sw.bb3.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_get_fact_prot_info(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_get_user_prot_info(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_lock_user_prot_reg(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_erase_user_prot_reg(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @shrink_ecclayout(ptr noundef %mtd, ptr noundef %to) unnamed_addr #4 align 64 {
entry:
  %oobregion = alloca %struct.mtd_oob_region, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %oobregion) #10
  %0 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %oobregion, align 4, !annotation !49
  %1 = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !49
  %tobool.not = icmp eq ptr %mtd, null
  %tobool1.not = icmp eq ptr %to, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup43_crit_edge, label %if.end

entry.cleanup43_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup43

if.end:                                           ; preds = %entry
  %3 = call ptr @memset(ptr %to, i32 0, i32 328)
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end
  %section.013 = phi i32 [ 0, %if.end ], [ %inc, %cleanup.for.body_crit_edge ]
  %i.012 = phi i32 [ 0, %if.end ], [ %i.19, %cleanup.for.body_crit_edge ]
  %inc = add i32 %section.013, 1
  %call = call i32 @mtd_ooblayout_ecc(ptr noundef nonnull %mtd, i32 noundef %section.013, ptr noundef nonnull %oobregion) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.then3, label %land.rhs.lr.ph

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -34, i32 %call)
  %cmp4.not = icmp eq i32 %call, -34
  br i1 %cmp4.not, label %if.then3.for.end18_crit_edge, label %if.then3.cleanup43_crit_edge

if.then3.cleanup43_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup43

if.then3.for.end18_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end18

land.rhs.lr.ph:                                   ; preds = %for.body
  %4 = ptrtoint ptr %oobregion to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %oobregion, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %add = add i32 %7, %5
  %umax = call i32 @llvm.umax.i32(i32 %5, i32 %add)
  br label %land.rhs

land.rhs:                                         ; preds = %for.body12.land.rhs_crit_edge, %land.rhs.lr.ph
  %eccpos.010 = phi i32 [ %5, %land.rhs.lr.ph ], [ %inc13, %for.body12.land.rhs_crit_edge ]
  %i.19 = phi i32 [ %i.012, %land.rhs.lr.ph ], [ %inc17, %for.body12.land.rhs_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %eccpos.010, i32 %umax)
  %exitcond.not = icmp eq i32 %eccpos.010, %umax
  br i1 %exitcond.not, label %cleanup, label %for.body12

for.body12:                                       ; preds = %land.rhs
  %inc13 = add i32 %eccpos.010, 1
  %arrayidx = getelementptr %struct.nand_ecclayout_user, ptr %to, i32 0, i32 1, i32 %i.19
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %eccpos.010, ptr %arrayidx, align 4
  %9 = ptrtoint ptr %to to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %to, align 4
  %inc16 = add i32 %10, 1
  store i32 %inc16, ptr %to, align 4
  %inc17 = add i32 %i.19, 1
  %exitcond16.not = icmp eq i32 %inc17, 64
  br i1 %exitcond16.not, label %for.body12.for.end18_crit_edge, label %for.body12.land.rhs_crit_edge

for.body12.land.rhs_crit_edge:                    ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

for.body12.for.end18_crit_edge:                   ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end18

cleanup:                                          ; preds = %land.rhs
  %cmp = icmp slt i32 %i.19, 64
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end18_crit_edge

cleanup.for.end18_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end18

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end18:                                        ; preds = %cleanup.for.end18_crit_edge, %for.body12.for.end18_crit_edge, %if.then3.for.end18_crit_edge
  %oobavail = getelementptr inbounds %struct.nand_ecclayout_user, ptr %to, i32 0, i32 2
  %call22 = call i32 @mtd_ooblayout_free(ptr noundef nonnull %mtd, i32 noundef 0, ptr noundef nonnull %oobregion) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %for.end18.cleanup43_crit_edge, label %if.end28

for.end18.cleanup43_crit_edge:                    ; preds = %for.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup43

if.end28:                                         ; preds = %for.end18
  %11 = ptrtoint ptr %oobregion to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %oobregion, align 4
  %arrayidx30 = getelementptr %struct.nand_ecclayout_user, ptr %to, i32 0, i32 3, i32 0
  %13 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx30, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 4
  %length35 = getelementptr %struct.nand_ecclayout_user, ptr %to, i32 0, i32 3, i32 0, i32 1
  %16 = ptrtoint ptr %length35 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %length35, align 4
  %17 = ptrtoint ptr %oobavail to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %oobavail, align 4
  %add39 = add i32 %18, %15
  store i32 %add39, ptr %oobavail, align 4
  %call22.1 = call i32 @mtd_ooblayout_free(ptr noundef nonnull %mtd, i32 noundef 1, ptr noundef nonnull %oobregion) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.1)
  %cmp23.1 = icmp slt i32 %call22.1, 0
  br i1 %cmp23.1, label %if.end28.cleanup43_crit_edge, label %if.end28.1

if.end28.cleanup43_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup43

if.end28.1:                                       ; preds = %if.end28
  %19 = ptrtoint ptr %oobregion to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %oobregion, align 4
  %arrayidx30.1 = getelementptr %struct.nand_ecclayout_user, ptr %to, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %arrayidx30.1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx30.1, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %1, align 4
  %length35.1 = getelementptr %struct.nand_ecclayout_user, ptr %to, i32 0, i32 3, i32 1, i32 1
  %24 = ptrtoint ptr %length35.1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %length35.1, align 4
  %25 = ptrtoint ptr %oobavail to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %oobavail, align 4
  %add39.1 = add i32 %26, %23
  store i32 %add39.1, ptr %oobavail, align 4
  %call22.2 = call i32 @mtd_ooblayout_free(ptr noundef nonnull %mtd, i32 noundef 2, ptr noundef nonnull %oobregion) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.2)
  %cmp23.2 = icmp slt i32 %call22.2, 0
  br i1 %cmp23.2, label %if.end28.1.cleanup43_crit_edge, label %if.end28.2

if.end28.1.cleanup43_crit_edge:                   ; preds = %if.end28.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup43

if.end28.2:                                       ; preds = %if.end28.1
  %27 = ptrtoint ptr %oobregion to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %oobregion, align 4
  %arrayidx30.2 = getelementptr %struct.nand_ecclayout_user, ptr %to, i32 0, i32 3, i32 2
  %29 = ptrtoint ptr %arrayidx30.2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx30.2, align 4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %1, align 4
  %length35.2 = getelementptr %struct.nand_ecclayout_user, ptr %to, i32 0, i32 3, i32 2, i32 1
  %32 = ptrtoint ptr %length35.2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %length35.2, align 4
  %33 = ptrtoint ptr %oobavail to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %oobavail, align 4
  %add39.2 = add i32 %34, %31
  store i32 %add39.2, ptr %oobavail, align 4
  %call22.3 = call i32 @mtd_ooblayout_free(ptr noundef nonnull %mtd, i32 noundef 3, ptr noundef nonnull %oobregion) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.3)
  %cmp23.3 = icmp slt i32 %call22.3, 0
  br i1 %cmp23.3, label %if.end28.2.cleanup43_crit_edge, label %if.end28.3

if.end28.2.cleanup43_crit_edge:                   ; preds = %if.end28.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup43

if.end28.3:                                       ; preds = %if.end28.2
  %35 = ptrtoint ptr %oobregion to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %oobregion, align 4
  %arrayidx30.3 = getelementptr %struct.nand_ecclayout_user, ptr %to, i32 0, i32 3, i32 3
  %37 = ptrtoint ptr %arrayidx30.3 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx30.3, align 4
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %1, align 4
  %length35.3 = getelementptr %struct.nand_ecclayout_user, ptr %to, i32 0, i32 3, i32 3, i32 1
  %40 = ptrtoint ptr %length35.3 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %length35.3, align 4
  %41 = ptrtoint ptr %oobavail to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %oobavail, align 4
  %add39.3 = add i32 %42, %39
  store i32 %add39.3, ptr %oobavail, align 4
  %call22.4 = call i32 @mtd_ooblayout_free(ptr noundef nonnull %mtd, i32 noundef 4, ptr noundef nonnull %oobregion) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.4)
  %cmp23.4 = icmp slt i32 %call22.4, 0
  br i1 %cmp23.4, label %if.end28.3.cleanup43_crit_edge, label %if.end28.4

if.end28.3.cleanup43_crit_edge:                   ; preds = %if.end28.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup43

if.end28.4:                                       ; preds = %if.end28.3
  %43 = ptrtoint ptr %oobregion to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %oobregion, align 4
  %arrayidx30.4 = getelementptr %struct.nand_ecclayout_user, ptr %to, i32 0, i32 3, i32 4
  %45 = ptrtoint ptr %arrayidx30.4 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %arrayidx30.4, align 4
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %1, align 4
  %length35.4 = getelementptr %struct.nand_ecclayout_user, ptr %to, i32 0, i32 3, i32 4, i32 1
  %48 = ptrtoint ptr %length35.4 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %length35.4, align 4
  %49 = ptrtoint ptr %oobavail to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %oobavail, align 4
  %add39.4 = add i32 %50, %47
  store i32 %add39.4, ptr %oobavail, align 4
  %call22.5 = call i32 @mtd_ooblayout_free(ptr noundef nonnull %mtd, i32 noundef 5, ptr noundef nonnull %oobregion) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.5)
  %cmp23.5 = icmp slt i32 %call22.5, 0
  br i1 %cmp23.5, label %if.end28.4.cleanup43_crit_edge, label %if.end28.5

if.end28.4.cleanup43_crit_edge:                   ; preds = %if.end28.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup43

if.end28.5:                                       ; preds = %if.end28.4
  %51 = ptrtoint ptr %oobregion to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %oobregion, align 4
  %arrayidx30.5 = getelementptr %struct.nand_ecclayout_user, ptr %to, i32 0, i32 3, i32 5
  %53 = ptrtoint ptr %arrayidx30.5 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %arrayidx30.5, align 4
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %1, align 4
  %length35.5 = getelementptr %struct.nand_ecclayout_user, ptr %to, i32 0, i32 3, i32 5, i32 1
  %56 = ptrtoint ptr %length35.5 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %length35.5, align 4
  %57 = ptrtoint ptr %oobavail to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %oobavail, align 4
  %add39.5 = add i32 %58, %55
  store i32 %add39.5, ptr %oobavail, align 4
  %call22.6 = call i32 @mtd_ooblayout_free(ptr noundef nonnull %mtd, i32 noundef 6, ptr noundef nonnull %oobregion) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.6)
  %cmp23.6 = icmp slt i32 %call22.6, 0
  br i1 %cmp23.6, label %if.end28.5.cleanup43_crit_edge, label %if.end28.6

if.end28.5.cleanup43_crit_edge:                   ; preds = %if.end28.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup43

if.end28.6:                                       ; preds = %if.end28.5
  %59 = ptrtoint ptr %oobregion to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %oobregion, align 4
  %arrayidx30.6 = getelementptr %struct.nand_ecclayout_user, ptr %to, i32 0, i32 3, i32 6
  %61 = ptrtoint ptr %arrayidx30.6 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %arrayidx30.6, align 4
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %1, align 4
  %length35.6 = getelementptr %struct.nand_ecclayout_user, ptr %to, i32 0, i32 3, i32 6, i32 1
  %64 = ptrtoint ptr %length35.6 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %length35.6, align 4
  %65 = ptrtoint ptr %oobavail to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %oobavail, align 4
  %add39.6 = add i32 %66, %63
  store i32 %add39.6, ptr %oobavail, align 4
  %call22.7 = call i32 @mtd_ooblayout_free(ptr noundef nonnull %mtd, i32 noundef 7, ptr noundef nonnull %oobregion) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.7)
  %cmp23.7 = icmp slt i32 %call22.7, 0
  br i1 %cmp23.7, label %if.end28.6.cleanup43_crit_edge, label %if.end28.7

if.end28.6.cleanup43_crit_edge:                   ; preds = %if.end28.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup43

if.end28.7:                                       ; preds = %if.end28.6
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %oobregion to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %oobregion, align 4
  %arrayidx30.7 = getelementptr %struct.nand_ecclayout_user, ptr %to, i32 0, i32 3, i32 7
  %69 = ptrtoint ptr %arrayidx30.7 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %arrayidx30.7, align 4
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %1, align 4
  %length35.7 = getelementptr %struct.nand_ecclayout_user, ptr %to, i32 0, i32 3, i32 7, i32 1
  %72 = ptrtoint ptr %length35.7 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %length35.7, align 4
  %73 = ptrtoint ptr %oobavail to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %oobavail, align 4
  %add39.7 = add i32 %74, %71
  store i32 %add39.7, ptr %oobavail, align 4
  br label %cleanup43

cleanup43:                                        ; preds = %if.end28.7, %if.end28.6.cleanup43_crit_edge, %if.end28.5.cleanup43_crit_edge, %if.end28.4.cleanup43_crit_edge, %if.end28.3.cleanup43_crit_edge, %if.end28.2.cleanup43_crit_edge, %if.end28.1.cleanup43_crit_edge, %if.end28.cleanup43_crit_edge, %for.end18.cleanup43_crit_edge, %if.then3.cleanup43_crit_edge, %entry.cleanup43_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %oobregion) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtdchar_blkpg_ioctl(ptr noundef %mtd, ptr nocapture noundef readonly %arg) unnamed_addr #4 align 64 {
entry:
  %p = alloca %struct.blkpg_partition, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %p) #10
  %0 = call ptr @memset(ptr %p, i32 255, i32 152)
  %call = tail call zeroext i1 @capable(i32 noundef 21) #10
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.blkpg_ioctl_arg, ptr %arg, i32 0, i32 3
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.end.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end.if.then11.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 152, i32 -1226833920) #14, !srcloc !53
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !51

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %p, i32 noundef 152) #10
  %4 = call i32 @llvm.read_register.i32(metadata !39) #10
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !54
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %p, ptr noundef %2, i32 noundef 152) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #10, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end3, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !51

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end.if.then11.i.i_crit_edge
  %res.0.i.i19 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 152, %if.end.if.then11.i.i_crit_edge ], [ 152, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 152, %res.0.i.i19
  %add.ptr.i.i = getelementptr i8, ptr %p, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i19)
  br label %cleanup

if.end3:                                          ; preds = %if.end.i.i
  %8 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arg, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %9, label %if.end3.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb9
  ]

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end3
  %parent.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 62
  %11 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent.i, align 4
  %tobool.i.not = icmp eq ptr %12, null
  br i1 %tobool.i.not, label %if.end6, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %devname = getelementptr inbounds %struct.blkpg_partition, ptr %p, i32 0, i32 3
  %arrayidx = getelementptr inbounds %struct.blkpg_partition, ptr %p, i32 0, i32 3, i32 63
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx, align 1
  %14 = ptrtoint ptr %p to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %p, align 8
  %length = getelementptr inbounds %struct.blkpg_partition, ptr %p, i32 0, i32 1
  %16 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %length, align 8
  %call8 = call i32 @mtd_add_partition(ptr noundef %mtd, ptr noundef %devname, i64 noundef %15, i64 noundef %17) #10
  br label %cleanup

sw.bb9:                                           ; preds = %if.end3
  %pno = getelementptr inbounds %struct.blkpg_partition, ptr %p, i32 0, i32 2
  %18 = ptrtoint ptr %pno to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pno, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp = icmp slt i32 %19, 0
  br i1 %cmp, label %sw.bb9.cleanup_crit_edge, label %if.end11

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = call i32 @mtd_del_partition(ptr noundef %mtd, i32 noundef %19) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %sw.bb9.cleanup_crit_edge, %if.end6, %sw.bb.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end11 ], [ %call8, %if.end6 ], [ -1, %entry.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb9.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %p) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_ooblayout_ecc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_ooblayout_free(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_add_partition(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_del_partition(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_mtd_device(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_mtd_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !15, !16, !18, !19, !21, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38}
!llvm.named.register.sp = !{!39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mtd/mtdchar.c", i32 1282, i32 8}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/mtd/mtdchar.c", i32 1284, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @init_mtdchar._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @init_mtdchar._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_alias289, !9, !"__UNIQUE_ID_alias289", i1 false, i1 false}
!9 = !{!"../drivers/mtd/mtdchar.c", i32 1297, i32 1}
!10 = !{ptr @mtd_fops, !11, !"mtd_fops", i1 false, i1 false}
!11 = !{!"../drivers/mtd/mtdchar.c", i32 1259, i32 37}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mtd/mtdchar.c", i32 139, i32 2}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @mtdchar_read.__UNIQUE_ID_ddebug272, !13, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/mtd/mtdchar.c", i32 229, i32 2}
!25 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @mtdchar_write.__UNIQUE_ID_ddebug275, !24, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mtd/mtdchar.c", i32 697, i32 2}
!29 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @mtdchar_ioctl.__UNIQUE_ID_ddebug288, !28, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mtd/mtdchar.c", i32 53, i32 2}
!33 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @mtdchar_open.__UNIQUE_ID_ddebug270, !32, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mtd/mtdchar.c", i32 96, i32 2}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @mtdchar_close.__UNIQUE_ID_ddebug271, !36, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!39 = !{!"sp"}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"auto-init"}
!50 = !{i64 2148303898, i64 2148303903, i64 2148303916, i64 2148303960, i64 2148303994, i64 2148304015}
!51 = !{!"branch_weights", i32 2000, i32 1}
!52 = !{i64 2152670506, i64 2152670531}
!53 = !{i64 2152669825, i64 2152669850}
!54 = !{i64 5165380}
!55 = !{i64 5165577}
!56 = !{i64 2152650810}
!57 = !{i64 2154954431, i64 2154954711, i64 2154955045, i64 2154955379}
!58 = !{i64 2154963953, i64 2154964233, i64 2154964567, i64 2154964901}
!59 = !{i64 2154972807, i64 2154973087, i64 2154973421, i64 2154973755}
!60 = !{i64 2154981661, i64 2154981941, i64 2154982275, i64 2154982609}
!61 = !{i64 2148329085, i64 2148329365, i64 2148329699, i64 2148330033}
!62 = !{!"branch_weights", i32 1, i32 2000}
!63 = !{i64 2154903838, i64 2154904118, i64 2154904452, i64 2154904786}
