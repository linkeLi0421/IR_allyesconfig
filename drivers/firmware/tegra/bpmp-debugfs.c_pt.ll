; ModuleID = '/llk/IR_all_yes/drivers/firmware/tegra/bpmp-debugfs.c_pt.bc'
source_filename = "../drivers/firmware/tegra/bpmp-debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mrq_debugfs_request = type { i32, %union.anon.81 }
%union.anon.81 = type { %struct.cmd_debugfs_fileop_request }
%struct.cmd_debugfs_fileop_request = type { i32, i32, i32, i32 }
%struct.mrq_debugfs_response = type { i32, %union.anon.82 }
%union.anon.82 = type { %struct.cmd_debugfs_fileop_response }
%struct.cmd_debugfs_fileop_response = type { i32, i32 }
%struct.tegra_bpmp_message = type { i32, %struct.anon.79, %struct.anon.80 }
%struct.anon.79 = type { ptr, i32 }
%struct.anon.80 = type { ptr, i32, i32 }
%struct.seqbuf = type { ptr, i32, i32 }
%struct.tegra_bpmp = type { ptr, ptr, ptr, %struct.anon.69, %struct.spinlock, ptr, ptr, ptr, %struct.anon.70, %struct.list_head, %struct.spinlock, ptr, i32, %struct.reset_controller_dev, %struct.genpd_onecell_data, ptr }
%struct.anon.69 = type { %struct.mbox_client, ptr }
%struct.mbox_client = type { ptr, i8, i32, i8, ptr, ptr, ptr }
%struct.anon.70 = type { ptr, ptr, i32, %struct.semaphore }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.genpd_onecell_data = type { ptr, i32, ptr }
%struct.mrq_debug_request = type { i32, %union.anon.77 }
%union.anon.77 = type { %struct.cmd_debug_fwrite_request }
%struct.cmd_debug_fwrite_request = type { i32, i32, [108 x i8] }
%struct.mrq_debug_response = type { %union.anon.78 }
%union.anon.78 = type { %struct.cmd_debug_fread_response }
%struct.cmd_debug_fread_response = type { i32, [116 x i8] }
%struct.cmd_debug_fopen_response = type { i32, i32 }
%struct.file = type { %union.anon.17, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.17 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.73, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.74, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.75, ptr, %struct.address_space, %struct.list_head, %union.anon.76, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.73 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.74 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.75 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.76 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bpmp\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"debug\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"/\00", [30 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s%s/\00", [26 x i8] zeroinitializer }, align 32
@bpmp_debug_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @bpmp_debug_store, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @bpmp_debug_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@bpmp_debug_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @bpmp_debug_lock, i64 52), ptr getelementptr (i8, ptr @bpmp_debug_lock, i64 52) }, ptr @bpmp_debug_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@mrq_debug_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: read data length invalid\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mrq_debug_read\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/firmware/tegra/bpmp-debugfs.c\00", [58 x i8] zeroinitializer }, align 32
@mrq_debug_read._entry_ptr = internal global ptr @mrq_debug_read._entry, section ".printk_index", align 4
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bpmp_debug_lock.wait_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bpmp_debug_lock\00", [16 x i8] zeroinitializer }, align 32
@mrq_debug_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.6, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013File name too large: %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mrq_debug_open\00", [17 x i8] zeroinitializer }, align 32
@mrq_debug_open._entry_ptr = internal global ptr @mrq_debug_open._entry, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@bpmp_debug_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.14, ptr @.str.6, i32 350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bpmp_debug_show\00", [16 x i8] zeroinitializer }, align 32
@bpmp_debug_show._entry_ptr = internal global ptr @bpmp_debug_show._entry, section ".printk_index", align 4
@debugfs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @debugfs_store, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @debugfs_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 790, i32 28 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 794, i32 44 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 802, i32 10 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 460, i32 37 }
@___asan_gen_.27 = private unnamed_addr constant [16 x i8] c"bpmp_debug_fops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 402, i32 37 }
@___asan_gen_.30 = private unnamed_addr constant [16 x i8] c"bpmp_debug_lock\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 225, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 13, i32 8 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 134, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 230, i32 6 }
@___asan_gen_.64 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 214, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 156, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 350, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant [13 x i8] c"debugfs_fops\00", align 1
@___asan_gen_.76 = private constant [41 x i8] c"../drivers/firmware/tegra/bpmp-debugfs.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 689, i32 37 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @bpmp_debug_show._entry, ptr @bpmp_debug_show._entry_ptr, ptr @mrq_debug_open._entry, ptr @mrq_debug_open._entry_ptr, ptr @mrq_debug_read._entry, ptr @mrq_debug_read._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @bpmp_debug_fops, ptr @bpmp_debug_lock, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @debugfs_fops], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpmp_debug_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpmp_debug_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mrq_debug_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mrq_debug_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpmp_debug_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debugfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_bpmp_init_debugfs(ptr noundef %bpmp) local_unnamed_addr #0 align 64 {
entry:
  %req.i.i = alloca %struct.mrq_debugfs_request, align 4
  %resp.i.i = alloca %struct.mrq_debugfs_response, align 4
  %msg.i.i = alloca %struct.tegra_bpmp_message, align 4
  %seqbuf.i = alloca %struct.seqbuf, align 4
  %phys.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @tegra_bpmp_mrq_is_supported(ptr noundef %bpmp, i32 noundef 75) #11
  br i1 %call, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call zeroext i1 @tegra_bpmp_mrq_is_supported(ptr noundef %bpmp, i32 noundef 19) #11
  br i1 %call1, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call2 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef null) #11
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.1, ptr noundef nonnull %call2) #11
  %debugfs_mirror = getelementptr inbounds %struct.tegra_bpmp, ptr %bpmp, i32 0, i32 15
  %0 = ptrtoint ptr %debugfs_mirror to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call6, ptr %debugfs_mirror, align 4
  %tobool8.not = icmp eq ptr %call6, null
  br i1 %tobool8.not, label %if.end5.if.then17_crit_edge, label %if.end10

if.end5.if.then17_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

if.end10:                                         ; preds = %if.end5
  br i1 %call, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %call14 = tail call fastcc i32 @bpmp_populate_debugfs_inband(ptr noundef %bpmp, ptr noundef nonnull %call6, ptr noundef nonnull @.str.2)
  br label %out

if.else:                                          ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %seqbuf.i) #11
  %1 = getelementptr inbounds %struct.seqbuf, ptr %seqbuf.i, i32 0, i32 1
  %2 = getelementptr inbounds %struct.seqbuf, ptr %seqbuf.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phys.i) #11
  %3 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %phys.i, align 4, !annotation !48
  %dev.i = getelementptr inbounds %struct.tegra_bpmp, ptr %bpmp, i32 0, i32 1
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %5, i32 noundef 524288, ptr noundef nonnull %phys.i, i32 noundef 3268, i32 noundef 0) #11
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.else.bpmp_populate_debugfs_shmem.exit_crit_edge, label %if.end.i

if.else.bpmp_populate_debugfs_shmem.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %bpmp_populate_debugfs_shmem.exit

if.end.i:                                         ; preds = %if.else
  %6 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phys.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req.i.i) #11
  %8 = getelementptr inbounds %struct.mrq_debugfs_request, ptr %req.i.i, i32 0, i32 1
  %9 = getelementptr inbounds %struct.mrq_debugfs_request, ptr %req.i.i, i32 0, i32 1, i32 0, i32 1
  %10 = getelementptr inbounds i8, ptr %req.i.i, i32 12
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 -1, ptr %10, align 4
  %12 = ptrtoint ptr %req.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 50331648, ptr %req.i.i, align 4
  %13 = call i32 @llvm.bswap.i32(i32 %7) #11
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %8, align 4
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2048, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %resp.i.i) #11
  %16 = ptrtoint ptr %resp.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %resp.i.i, align 4, !annotation !48
  %17 = getelementptr inbounds %struct.mrq_debugfs_response, ptr %resp.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %17, align 4, !annotation !48
  %19 = getelementptr inbounds %struct.mrq_debugfs_response, ptr %resp.i.i, i32 0, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %19, align 4, !annotation !48
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #11
  %21 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i.i, i32 0, i32 1
  %22 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i.i, i32 0, i32 1, i32 1
  %23 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i.i, i32 0, i32 2
  %24 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i.i, i32 0, i32 2, i32 1
  %25 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i.i, i32 0, i32 2, i32 2
  %26 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %msg.i.i, align 4
  %27 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %req.i.i, ptr %21, align 4
  %28 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 20, ptr %22, align 4
  %29 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %resp.i.i, ptr %23, align 4
  %30 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 12, ptr %24, align 4
  %31 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %25, align 4
  %call.i21.i = call i32 @tegra_bpmp_transfer(ptr noundef %bpmp, ptr noundef nonnull %msg.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21.i)
  %cmp.i.i = icmp slt i32 %call.i21.i, 0
  br i1 %cmp.i.i, label %if.end.i.mrq_debugfs_dumpdir.exit.thread.i_crit_edge, label %if.else.i.i

if.end.i.mrq_debugfs_dumpdir.exit.thread.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mrq_debugfs_dumpdir.exit.thread.i

if.else.i.i:                                      ; preds = %if.end.i
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp6.i.i = icmp slt i32 %33, 0
  br i1 %cmp6.i.i, label %if.else.i.i.mrq_debugfs_dumpdir.exit.thread.i_crit_edge, label %if.else.i

if.else.i.i.mrq_debugfs_dumpdir.exit.thread.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mrq_debugfs_dumpdir.exit.thread.i

mrq_debugfs_dumpdir.exit.thread.i:                ; preds = %if.else.i.i.mrq_debugfs_dumpdir.exit.thread.i_crit_edge, %if.end.i.mrq_debugfs_dumpdir.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -22, %if.else.i.i.mrq_debugfs_dumpdir.exit.thread.i_crit_edge ], [ %call.i21.i, %if.end.i.mrq_debugfs_dumpdir.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %resp.i.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req.i.i) #11
  br label %free.i

if.else.i:                                        ; preds = %if.else.i.i
  %34 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %19, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %resp.i.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %35)
  %cmp3.i = icmp ugt i32 %35, 524288
  br i1 %cmp3.i, label %if.else.i.free.i_crit_edge, label %if.end6.i

if.else.i.free.i_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free.i

if.end6.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %seqbuf.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i.i, ptr %seqbuf.i, align 4
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %35, ptr %2, align 4
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %1, align 4
  %39 = ptrtoint ptr %debugfs_mirror to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %debugfs_mirror, align 4
  %call7.i = call fastcc i32 @bpmp_populate_dir(ptr noundef %bpmp, ptr noundef nonnull %seqbuf.i, ptr noundef %40, i32 noundef 0) #11
  br label %free.i

free.i:                                           ; preds = %if.end6.i, %if.else.i.free.i_crit_edge, %mrq_debugfs_dumpdir.exit.thread.i
  %err.0.i = phi i32 [ %call7.i, %if.end6.i ], [ -22, %if.else.i.free.i_crit_edge ], [ %retval.0.i.ph.i, %mrq_debugfs_dumpdir.exit.thread.i ]
  %41 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i, align 4
  %43 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %phys.i, align 4
  call void @dma_free_attrs(ptr noundef %42, i32 noundef 524288, ptr noundef nonnull %call.i.i, i32 noundef %44, i32 noundef 0) #11
  br label %bpmp_populate_debugfs_shmem.exit

bpmp_populate_debugfs_shmem.exit:                 ; preds = %free.i, %if.else.bpmp_populate_debugfs_shmem.exit_crit_edge
  %retval.0.i = phi i32 [ %err.0.i, %free.i ], [ -12, %if.else.bpmp_populate_debugfs_shmem.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %seqbuf.i) #11
  br label %out

out:                                              ; preds = %bpmp_populate_debugfs_shmem.exit, %if.then12
  %err.0 = phi i32 [ %call14, %if.then12 ], [ %retval.0.i, %bpmp_populate_debugfs_shmem.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp = icmp slt i32 %err.0, 0
  br i1 %cmp, label %out.if.then17_crit_edge, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

out.if.then17_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

if.then17:                                        ; preds = %out.if.then17_crit_edge, %if.end5.if.then17_crit_edge
  %err.033 = phi i32 [ %err.0, %out.if.then17_crit_edge ], [ -12, %if.end5.if.then17_crit_edge ]
  call void @debugfs_remove(ptr noundef nonnull %call2) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %out.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %err.033, %if.then17 ], [ %err.0, %out.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tegra_bpmp_mrq_is_supported(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bpmp_populate_debugfs_inband(ptr noundef %bpmp, ptr noundef %parent, ptr noundef %ppath) unnamed_addr #0 align 64 {
entry:
  %req.i1.i = alloca %struct.mrq_debug_request, align 4
  %resp.i2.i = alloca %struct.mrq_debug_response, align 1
  %msg.i3.i = alloca %struct.tegra_bpmp_message, align 4
  %req.i.i = alloca %struct.mrq_debug_request, align 4
  %resp.i.i = alloca %struct.mrq_debug_response, align 4
  %msg.i.i = alloca %struct.tegra_bpmp_message, align 4
  %req.i = alloca %struct.mrq_debug_request, align 4
  %resp.i = alloca %struct.mrq_debug_response, align 4
  %msg.i = alloca %struct.tegra_bpmp_message, align 4
  %attrs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %attrs)
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %attrs, align 4
  %tobool.not = icmp eq ptr %bpmp, null
  %tobool1.not = icmp eq ptr %parent, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %tobool3.not = icmp eq ptr %ppath, null
  %or.cond87 = or i1 %or.cond, %tobool3.not
  br i1 %or.cond87, label %entry.cleanup54_crit_edge, label %if.end

entry.cleanup54_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup54

if.end:                                           ; preds = %entry
  %call1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 16384, i32 noundef 3264, i32 noundef 2) #14
  %tobool4.not = icmp eq ptr %call1.i.i, null
  br i1 %tobool4.not, label %if.end.cleanup54_crit_edge, label %if.end6

if.end.cleanup54_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup54

if.end6:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 256) #15
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call1.i.i) #11
  br label %cleanup54

if.end10:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %req.i) #11
  %2 = getelementptr inbounds i8, ptr %req.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 116)
  %4 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 33554432, ptr %req.i, align 4
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %resp.i) #11
  %5 = call ptr @memset(ptr %resp.i, i32 255, i32 120)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #11
  %6 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1
  %7 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1, i32 1
  %8 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 2
  %9 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 2, i32 1
  %10 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 75, ptr %msg.i, align 4
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %req.i, ptr %6, align 4
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 120, ptr %7, align 4
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %resp.i, ptr %8, align 4
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 120, ptr %9, align 4
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %10, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @bpmp_debug_lock, i32 noundef 0) #11
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %req.i.i) #11
  %17 = getelementptr inbounds i8, ptr %req.i.i, i32 4
  %18 = call ptr @memset(ptr %req.i.i, i32 0, i32 120)
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %resp.i.i) #11
  %19 = call ptr @memset(ptr %resp.i.i, i32 255, i32 120)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #11
  %20 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i.i, i32 0, i32 1
  %21 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i.i, i32 0, i32 1, i32 1
  %22 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i.i, i32 0, i32 2
  %23 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i.i, i32 0, i32 2, i32 1
  %24 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i.i, i32 0, i32 2, i32 2
  %25 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 75, ptr %msg.i.i, align 4
  %26 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %req.i.i, ptr %20, align 4
  %27 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 120, ptr %21, align 4
  %28 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %resp.i.i, ptr %22, align 4
  %29 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 120, ptr %23, align 4
  %30 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %24, align 4
  %call.i.i = call i32 @strscpy(ptr noundef %17, ptr noundef nonnull %ppath, i32 noundef 116) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull %ppath) #16
  br label %mrq_debug_read.exit.thread

if.end.i.i:                                       ; preds = %if.end10
  %call5.i.i = call i32 @tegra_bpmp_transfer(ptr noundef nonnull %bpmp, ptr noundef nonnull %msg.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp6.i.i = icmp slt i32 %call5.i.i, 0
  br i1 %cmp6.i.i, label %if.end.i.i.mrq_debug_read.exit.thread_crit_edge, label %if.else.i.i

if.end.i.i.mrq_debug_read.exit.thread_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mrq_debug_read.exit.thread

if.else.i.i:                                      ; preds = %if.end.i.i
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp10.i.i = icmp slt i32 %32, 0
  br i1 %cmp10.i.i, label %if.else.i.i.mrq_debug_read.exit.thread_crit_edge, label %if.end.i

if.else.i.i.mrq_debug_read.exit.thread_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mrq_debug_read.exit.thread

mrq_debug_read.exit.thread:                       ; preds = %if.else.i.i.mrq_debug_read.exit.thread_crit_edge, %if.end.i.i.mrq_debug_read.exit.thread_crit_edge, %do.end.i.i
  %retval.0.i.ph.i = phi i32 [ -22, %if.else.i.i.mrq_debug_read.exit.thread_crit_edge ], [ %call5.i.i, %if.end.i.i.mrq_debug_read.exit.thread_crit_edge ], [ -22, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #11
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %resp.i.i) #11
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %req.i.i) #11
  call void @mutex_unlock(ptr noundef nonnull @bpmp_debug_lock) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #11
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %resp.i) #11
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %req.i) #11
  br label %out

if.end.i:                                         ; preds = %if.else.i.i
  %datalen.i.i = getelementptr inbounds %struct.cmd_debug_fopen_response, ptr %resp.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %datalen.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %datalen.i.i, align 4
  %35 = ptrtoint ptr %resp.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %resp.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #11
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %resp.i.i) #11
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %req.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %34)
  %cmp.i = icmp ugt i32 %34, 16384
  br i1 %cmp.i, label %if.end.i.close.i_crit_edge, label %if.end5.i

if.end.i.close.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %close.i

if.end5.i:                                        ; preds = %if.end.i
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp716.not.i = icmp eq i32 %34, 0
  br i1 %cmp716.not.i, label %if.end5.i.close.i_crit_edge, label %while.body.lr.ph.i

if.end5.i.close.i_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %close.i

while.body.lr.ph.i:                               ; preds = %if.end5.i
  %data21.i = getelementptr inbounds %struct.cmd_debug_fread_response, ptr %resp.i, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.end20.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %data.addr.018.i = phi ptr [ %call1.i.i, %while.body.lr.ph.i ], [ %add.ptr.i, %if.end20.i.while.body.i_crit_edge ]
  %remaining.017.i = phi i32 [ %34, %while.body.lr.ph.i ], [ %sub.i, %if.end20.i.while.body.i_crit_edge ]
  %call8.i = call i32 @tegra_bpmp_transfer(ptr noundef %bpmp, ptr noundef nonnull %msg.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %while.body.i.close.i_crit_edge, label %if.else.i

while.body.i.close.i_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %close.i

if.else.i:                                        ; preds = %while.body.i
  %38 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp13.i = icmp slt i32 %39, 0
  br i1 %cmp13.i, label %if.else.i.close.i_crit_edge, label %if.end16.i

if.else.i.close.i_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %close.i

if.end16.i:                                       ; preds = %if.else.i
  %40 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %resp.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %remaining.017.i, i32 %41)
  %cmp17.i = icmp ult i32 %remaining.017.i, %41
  br i1 %cmp17.i, label %do.end.i, label %if.end20.i

do.end.i:                                         ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #16
  br label %close.i

if.end20.i:                                       ; preds = %if.end16.i
  %42 = call ptr @memcpy(ptr %data.addr.018.i, ptr %data21.i, i32 %41)
  %add.ptr.i = getelementptr i8, ptr %data.addr.018.i, i32 %41
  %sub.i = sub i32 %remaining.017.i, %41
  %cmp7.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp7.i, label %if.end20.i.while.body.i_crit_edge, label %if.end20.i.close.i_crit_edge

if.end20.i.close.i_crit_edge:                     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %close.i

if.end20.i.while.body.i_crit_edge:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

close.i:                                          ; preds = %if.end20.i.close.i_crit_edge, %do.end.i, %if.else.i.close.i_crit_edge, %while.body.i.close.i_crit_edge, %if.end5.i.close.i_crit_edge, %if.end.i.close.i_crit_edge
  %dsize.0 = phi i32 [ -1, %if.end.i.close.i_crit_edge ], [ -1, %do.end.i ], [ 0, %if.end5.i.close.i_crit_edge ], [ %34, %if.end20.i.close.i_crit_edge ], [ -1, %if.else.i.close.i_crit_edge ], [ -1, %while.body.i.close.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %req.i1.i) #11
  %43 = getelementptr inbounds i8, ptr %req.i1.i, i32 8
  %44 = call ptr @memset(ptr %43, i32 0, i32 112)
  %45 = ptrtoint ptr %req.i1.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 67108864, ptr %req.i1.i, align 4
  %46 = getelementptr inbounds %struct.mrq_debug_request, ptr %req.i1.i, i32 0, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %36, ptr %46, align 4
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %resp.i2.i) #11
  %48 = call ptr @memset(ptr %resp.i2.i, i32 255, i32 120)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i3.i) #11
  %49 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i3.i, i32 0, i32 1
  %50 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i3.i, i32 0, i32 1, i32 1
  %51 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i3.i, i32 0, i32 2
  %52 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i3.i, i32 0, i32 2, i32 1
  %53 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i3.i, i32 0, i32 2, i32 2
  %54 = ptrtoint ptr %msg.i3.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 75, ptr %msg.i3.i, align 4
  %55 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %req.i1.i, ptr %49, align 4
  %56 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 120, ptr %50, align 4
  %57 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %resp.i2.i, ptr %51, align 4
  %58 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 120, ptr %52, align 4
  %59 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %53, align 4
  %call.i4.i = call i32 @tegra_bpmp_transfer(ptr noundef %bpmp, ptr noundef nonnull %msg.i3.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i)
  %cmp.i5.i = icmp slt i32 %call.i4.i, 0
  br i1 %cmp.i5.i, label %close.i.mrq_debug_read.exit.thread109_crit_edge, label %if.else.i7.i

close.i.mrq_debug_read.exit.thread109_crit_edge:  ; preds = %close.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mrq_debug_read.exit.thread109

if.else.i7.i:                                     ; preds = %close.i
  %60 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp6.i6.i = icmp slt i32 %61, 0
  br i1 %cmp6.i6.i, label %if.else.i7.i.mrq_debug_read.exit.thread109_crit_edge, label %if.end14

if.else.i7.i.mrq_debug_read.exit.thread109_crit_edge: ; preds = %if.else.i7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mrq_debug_read.exit.thread109

mrq_debug_read.exit.thread109:                    ; preds = %if.else.i7.i.mrq_debug_read.exit.thread109_crit_edge, %close.i.mrq_debug_read.exit.thread109_crit_edge
  %retval.0.i8.i.ph = phi i32 [ %call.i4.i, %close.i.mrq_debug_read.exit.thread109_crit_edge ], [ -22, %if.else.i7.i.mrq_debug_read.exit.thread109_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i3.i) #11
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %resp.i2.i) #11
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %req.i1.i) #11
  call void @mutex_unlock(ptr noundef nonnull @bpmp_debug_lock) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #11
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %resp.i) #11
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %req.i) #11
  br label %out

if.end14:                                         ; preds = %if.else.i7.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i3.i) #11
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %resp.i2.i) #11
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %req.i1.i) #11
  call void @mutex_unlock(ptr noundef nonnull @bpmp_debug_lock) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #11
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %resp.i) #11
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %req.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dsize.0)
  %cmp.i91.not116.not = icmp eq i32 %dsize.0, 0
  br i1 %cmp.i91.not116.not, label %if.end14.out_crit_edge, label %if.end14.while.body_crit_edge

if.end14.while.body_crit_edge:                    ; preds = %if.end14
  br label %while.body

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

while.body:                                       ; preds = %if.end53.while.body_crit_edge, %if.end14.while.body_crit_edge
  %seqbuf.sroa.6.0117 = phi i32 [ %inc.i, %if.end53.while.body_crit_edge ], [ 0, %if.end14.while.body_crit_edge ]
  %62 = call i32 @llvm.usub.sat.i32(i32 %dsize.0, i32 %seqbuf.sroa.6.0117) #11
  %63 = call i32 @llvm.umin.i32(i32 %62, i32 4) #11
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i, i32 %seqbuf.sroa.6.0117
  %64 = call ptr @memcpy(ptr %attrs, ptr %add.ptr.i.i, i32 %63)
  %add.i.i = add i32 %63, %seqbuf.sroa.6.0117
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %dsize.0)
  %cmp.not.i.i.i.not = icmp ugt i32 %add.i.i, %dsize.0
  %65 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %65)
  %attrs.0.attrs.0.105 = load i32, ptr %attrs, align 4
  %66 = call i32 @llvm.bswap.i32(i32 %attrs.0.attrs.0.105) #11
  %67 = ptrtoint ptr %attrs to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %attrs, align 4
  br i1 %cmp.not.i.i.i.not, label %while.body.out_crit_edge, label %if.end20

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end20:                                         ; preds = %while.body
  %add.ptr.i93 = getelementptr i8, ptr %call1.i.i, i32 %add.i.i
  %68 = call i32 @llvm.usub.sat.i32(i32 %dsize.0, i32 %add.i.i) #11
  %call1.i = call i32 @strnlen(ptr noundef %add.ptr.i93, i32 noundef %68) #17
  %add.i = add i32 %add.i.i, 1
  %inc.i = add i32 %add.i, %call1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %dsize.0)
  %cmp.not.i.i = icmp ugt i32 %inc.i, %dsize.0
  br i1 %cmp.not.i.i, label %if.end20.out_crit_edge, label %if.end23

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end23:                                         ; preds = %if.end20
  %and = and i32 %66, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.end23
  %call26 = call ptr @debugfs_create_dir(ptr noundef %add.ptr.i93, ptr noundef nonnull %parent) #11
  %cmp.i94 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i94, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  %69 = ptrtoint ptr %call26 to i32
  br label %out

if.end30:                                         ; preds = %if.then25
  %call31 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i, i32 noundef 256, ptr noundef nonnull @.str.3, ptr noundef nonnull %ppath, ptr noundef %add.ptr.i93)
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call31)
  %cmp32 = icmp ugt i32 %call31, 255
  br i1 %cmp32, label %if.end30.out_crit_edge, label %if.end34

if.end30.out_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end34:                                         ; preds = %if.end30
  %call35 = call fastcc i32 @bpmp_populate_debugfs_inband(ptr noundef nonnull %bpmp, ptr noundef %call26, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.end34.out_crit_edge, label %if.end34.if.end53_crit_edge

if.end34.if.end53_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.end34.out_crit_edge:                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.else:                                          ; preds = %if.end23
  %70 = trunc i32 %66 to i16
  %conv45 = and i16 %70, 384
  %call46 = call ptr @debugfs_create_file(ptr noundef %add.ptr.i93, i16 noundef zeroext %conv45, ptr noundef nonnull %parent, ptr noundef nonnull %bpmp, ptr noundef nonnull @bpmp_debug_fops) #11
  %tobool47.not = icmp eq ptr %call46, null
  br i1 %tobool47.not, label %if.else.out_crit_edge, label %if.else.if.end53_crit_edge

if.else.if.end53_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end53:                                         ; preds = %if.else.if.end53_crit_edge, %if.end34.if.end53_crit_edge
  %err.3 = phi i32 [ 0, %if.else.if.end53_crit_edge ], [ %call35, %if.end34.if.end53_crit_edge ]
  %cmp.i91.not = icmp ult i32 %inc.i, %dsize.0
  br i1 %cmp.i91.not, label %if.end53.while.body_crit_edge, label %if.end53.out_crit_edge

if.end53.out_crit_edge:                           ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end53.while.body_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

out:                                              ; preds = %if.end53.out_crit_edge, %if.else.out_crit_edge, %if.end34.out_crit_edge, %if.end30.out_crit_edge, %if.then28, %if.end20.out_crit_edge, %while.body.out_crit_edge, %if.end14.out_crit_edge, %mrq_debug_read.exit.thread109, %mrq_debug_read.exit.thread
  %err.4 = phi i32 [ %retval.0.i.ph.i, %mrq_debug_read.exit.thread ], [ %retval.0.i8.i.ph, %mrq_debug_read.exit.thread109 ], [ %69, %if.then28 ], [ 0, %if.end14.out_crit_edge ], [ -75, %while.body.out_crit_edge ], [ -75, %if.end20.out_crit_edge ], [ %err.3, %if.end53.out_crit_edge ], [ -12, %if.else.out_crit_edge ], [ -22, %if.end30.out_crit_edge ], [ %call35, %if.end34.out_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  call void @kfree(ptr noundef nonnull %call1.i.i) #11
  br label %cleanup54

cleanup54:                                        ; preds = %out, %if.then9, %if.end.cleanup54_crit_edge, %entry.cleanup54_crit_edge
  %retval.0 = phi i32 [ %err.4, %out ], [ -12, %if.then9 ], [ -22, %entry.cleanup54_crit_edge ], [ -12, %if.end.cleanup54_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %attrs)
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_bpmp_transfer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpmp_debug_store(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %f_pos) #0 align 64 {
entry:
  %req.i32.i = alloca %struct.mrq_debug_request, align 4
  %resp.i33.i = alloca %struct.mrq_debug_response, align 1
  %msg.i34.i = alloca %struct.tegra_bpmp_message, align 4
  %req.i.i = alloca %struct.mrq_debug_request, align 4
  %resp.i.i = alloca %struct.mrq_debug_response, align 4
  %msg.i.i = alloca %struct.tegra_bpmp_message, align 4
  %req.i = alloca %struct.mrq_debug_request, align 4
  %resp.i = alloca %struct.mrq_debug_response, align 1
  %msg.i = alloca %struct.tegra_bpmp_message, align 4
  %fnamebuf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %fnamebuf) #11
  %4 = call ptr @memset(ptr %fnamebuf, i32 255, i32 256)
  %call1 = call fastcc ptr @get_filename(ptr noundef %3, ptr noundef %file, ptr noundef nonnull %fnamebuf)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end8.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.i:                                        ; preds = %entry
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %count, i32 noundef 3264) #14
  %tobool3.not = icmp eq ptr %call9.i, null
  br i1 %tobool3.not, label %if.end8.i.cleanup_crit_edge, label %if.end8.i.i

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp9.i.i = icmp slt i32 %count, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end8.i.i
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.free_ret.thread_crit_edge, label %if.then27.i.i, !prof !49

land.rhs16.i.i.free_ret.thread_crit_edge:         ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_ret.thread

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %free_ret.thread

if.then.i.i.i:                                    ; preds = %if.end8.i.i
  call void @__check_object_size(ptr noundef nonnull %call9.i, i32 noundef %count, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 156) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i29_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i29_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i29

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %5 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %count, i32 -1226833920) #18, !srcloc !50
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i29_crit_edge, !prof !49

land.lhs.true.i.i.if.end.i.i29_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i29

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i, i32 noundef %count) #11
  %6 = call i32 @llvm.read_register.i32(metadata !38) #11
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !51
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !52
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !53
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %call9.i, ptr noundef %buf, i32 noundef %count) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #11, !srcloc !52
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !53
  br label %if.end.i.i29

if.end.i.i29:                                     ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i29_crit_edge, %if.then.i.i.i.if.end.i.i29_crit_edge
  %res.0.i.i = phi i32 [ %count, %if.then.i.i.i.if.end.i.i29_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %count, %land.lhs.true.i.i.if.end.i.i29_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end9, label %if.then11.i.i, !prof !49

if.then11.i.i:                                    ; preds = %if.end.i.i29
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %count, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call9.i, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %free_ret.thread

if.end9:                                          ; preds = %if.end.i.i29
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %req.i) #11
  %10 = getelementptr inbounds i8, ptr %req.i, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 116)
  %12 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 50331648, ptr %req.i, align 4
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %resp.i) #11
  %13 = call ptr @memset(ptr %resp.i, i32 255, i32 120)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #11
  %14 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1
  %15 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1, i32 1
  %16 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 2
  %17 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 2, i32 1
  %18 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 75, ptr %msg.i, align 4
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %req.i, ptr %14, align 4
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 120, ptr %15, align 4
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %resp.i, ptr %16, align 4
  %23 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 120, ptr %17, align 4
  %24 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %18, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @bpmp_debug_lock, i32 noundef 0) #11
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %req.i.i) #11
  %25 = getelementptr inbounds i8, ptr %req.i.i, i32 4
  %26 = call ptr @memset(ptr %25, i32 0, i32 116)
  %27 = ptrtoint ptr %req.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 16777216, ptr %req.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %resp.i.i) #11
  %28 = call ptr @memset(ptr %resp.i.i, i32 255, i32 120)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #11
  %29 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i.i, i32 0, i32 1
  %30 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i.i, i32 0, i32 1, i32 1
  %31 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i.i, i32 0, i32 2
  %32 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i.i, i32 0, i32 2, i32 1
  %33 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i.i, i32 0, i32 2, i32 2
  %34 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 75, ptr %msg.i.i, align 4
  %35 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %req.i.i, ptr %29, align 4
  %36 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 120, ptr %30, align 4
  %37 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %resp.i.i, ptr %31, align 4
  %38 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 120, ptr %32, align 4
  %39 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %33, align 4
  %call.i.i31 = call i32 @strscpy(ptr noundef %25, ptr noundef nonnull %call1, i32 noundef 116) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i31)
  %cmp.i.i32 = icmp slt i32 %call.i.i31, 0
  br i1 %cmp.i.i32, label %do.end.i.i, label %if.end.i.i33

do.end.i.i:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull %call1) #16
  br label %mrq_debug_open.exit.thread.i

if.end.i.i33:                                     ; preds = %if.end9
  %call5.i.i = call i32 @tegra_bpmp_transfer(ptr noundef %3, ptr noundef nonnull %msg.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp6.i.i = icmp slt i32 %call5.i.i, 0
  br i1 %cmp6.i.i, label %if.end.i.i33.mrq_debug_open.exit.thread.i_crit_edge, label %if.else.i.i

if.end.i.i33.mrq_debug_open.exit.thread.i_crit_edge: ; preds = %if.end.i.i33
  call void @__sanitizer_cov_trace_pc() #13
  br label %mrq_debug_open.exit.thread.i

if.else.i.i:                                      ; preds = %if.end.i.i33
  %40 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp10.i.i = icmp slt i32 %41, 0
  br i1 %cmp10.i.i, label %if.else.i.i.mrq_debug_open.exit.thread.i_crit_edge, label %if.end.i36

if.else.i.i.mrq_debug_open.exit.thread.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mrq_debug_open.exit.thread.i

mrq_debug_open.exit.thread.i:                     ; preds = %if.else.i.i.mrq_debug_open.exit.thread.i_crit_edge, %if.end.i.i33.mrq_debug_open.exit.thread.i_crit_edge, %do.end.i.i
  %retval.0.i.ph.i34 = phi i32 [ -22, %if.else.i.i.mrq_debug_open.exit.thread.i_crit_edge ], [ %call5.i.i, %if.end.i.i33.mrq_debug_open.exit.thread.i_crit_edge ], [ -22, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #11
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %resp.i.i) #11
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %req.i.i) #11
  br label %free_ret

if.end.i36:                                       ; preds = %if.else.i.i
  %datalen.i.i = getelementptr inbounds %struct.cmd_debug_fopen_response, ptr %resp.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %datalen.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %datalen.i.i, align 4
  %44 = ptrtoint ptr %resp.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %resp.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #11
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %resp.i.i) #11
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %req.i.i) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %count)
  %cmp.i35 = icmp ult i32 %43, %count
  br i1 %cmp.i35, label %if.end.i36.close.i_crit_edge, label %if.end5.i

if.end.i36.close.i_crit_edge:                     ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #13
  br label %close.i

if.end5.i:                                        ; preds = %if.end.i36
  %46 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp7.not45.i = icmp eq i32 %count, 0
  br i1 %cmp7.not45.i, label %if.end5.i.close.i_crit_edge, label %while.body.lr.ph.i

if.end5.i.close.i_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %close.i

while.body.lr.ph.i:                               ; preds = %if.end5.i
  %data9.i = getelementptr inbounds %struct.mrq_debug_request, ptr %req.i, i32 0, i32 1, i32 0, i32 2
  %datalen.i = getelementptr inbounds %struct.mrq_debug_request, ptr %req.i, i32 0, i32 1, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.end18.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %data.addr.047.i = phi ptr [ %call9.i, %while.body.lr.ph.i ], [ %add.ptr.i, %if.end18.i.while.body.i_crit_edge ]
  %remaining.046.i = phi i32 [ %count, %while.body.lr.ph.i ], [ %sub.i, %if.end18.i.while.body.i_crit_edge ]
  %47 = call i32 @llvm.umin.i32(i32 %remaining.046.i, i32 108) #11
  %48 = call ptr @memcpy(ptr %data9.i, ptr %data.addr.047.i, i32 %47)
  %49 = ptrtoint ptr %datalen.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %47, ptr %datalen.i, align 4
  %call10.i = call i32 @tegra_bpmp_transfer(ptr noundef %3, ptr noundef nonnull %msg.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %while.body.i.close.i_crit_edge, label %if.else.i

while.body.i.close.i_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %close.i

if.else.i:                                        ; preds = %while.body.i
  %50 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp15.i = icmp slt i32 %51, 0
  br i1 %cmp15.i, label %if.else.i.close.i_crit_edge, label %if.end18.i

if.else.i.close.i_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %close.i

if.end18.i:                                       ; preds = %if.else.i
  %52 = ptrtoint ptr %datalen.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %datalen.i, align 4
  %add.ptr.i = getelementptr i8, ptr %data.addr.047.i, i32 %53
  %sub.i = sub i32 %remaining.046.i, %53
  %cmp7.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp7.not.i, label %if.end18.i.close.i_crit_edge, label %if.end18.i.while.body.i_crit_edge

if.end18.i.while.body.i_crit_edge:                ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.end18.i.close.i_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %close.i

close.i:                                          ; preds = %if.end18.i.close.i_crit_edge, %if.else.i.close.i_crit_edge, %while.body.i.close.i_crit_edge, %if.end5.i.close.i_crit_edge, %if.end.i36.close.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %req.i32.i) #11
  %54 = getelementptr inbounds i8, ptr %req.i32.i, i32 8
  %55 = call ptr @memset(ptr %54, i32 0, i32 112)
  %56 = ptrtoint ptr %req.i32.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 67108864, ptr %req.i32.i, align 4
  %57 = getelementptr inbounds %struct.mrq_debug_request, ptr %req.i32.i, i32 0, i32 1
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %45, ptr %57, align 4
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %resp.i33.i) #11
  %59 = call ptr @memset(ptr %resp.i33.i, i32 255, i32 120)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i34.i) #11
  %60 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i34.i, i32 0, i32 1
  %61 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i34.i, i32 0, i32 1, i32 1
  %62 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i34.i, i32 0, i32 2
  %63 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i34.i, i32 0, i32 2, i32 1
  %64 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i34.i, i32 0, i32 2, i32 2
  %65 = ptrtoint ptr %msg.i34.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 75, ptr %msg.i34.i, align 4
  %66 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %req.i32.i, ptr %60, align 4
  %67 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 120, ptr %61, align 4
  %68 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %resp.i33.i, ptr %62, align 4
  %69 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 120, ptr %63, align 4
  %70 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %64, align 4
  %call.i35.i = call i32 @tegra_bpmp_transfer(ptr noundef %3, ptr noundef nonnull %msg.i34.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35.i)
  %cmp.i36.i = icmp slt i32 %call.i35.i, 0
  br i1 %cmp.i36.i, label %close.i.mrq_debug_close.exit.i_crit_edge, label %if.else.i38.i

close.i.mrq_debug_close.exit.i_crit_edge:         ; preds = %close.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mrq_debug_close.exit.i

if.else.i38.i:                                    ; preds = %close.i
  call void @__sanitizer_cov_trace_pc() #13
  %71 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp6.i37.i = icmp slt i32 %72, 0
  %..i.i = select i1 %cmp6.i37.i, i32 -22, i32 0
  br label %mrq_debug_close.exit.i

mrq_debug_close.exit.i:                           ; preds = %if.else.i38.i, %close.i.mrq_debug_close.exit.i_crit_edge
  %retval.0.i39.i = phi i32 [ %call.i35.i, %close.i.mrq_debug_close.exit.i_crit_edge ], [ %..i.i, %if.else.i38.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i34.i) #11
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %resp.i33.i) #11
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %req.i32.i) #11
  br label %free_ret

free_ret.thread:                                  ; preds = %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.free_ret.thread_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i) #11
  br label %cleanup

free_ret:                                         ; preds = %mrq_debug_close.exit.i, %mrq_debug_open.exit.thread.i
  %err.0.i = phi i32 [ %retval.0.i39.i, %mrq_debug_close.exit.i ], [ %retval.0.i.ph.i34, %mrq_debug_open.exit.thread.i ]
  call void @mutex_unlock(ptr noundef nonnull @bpmp_debug_lock) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #11
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %resp.i) #11
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %req.i) #11
  call void @kfree(ptr noundef nonnull %call9.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool11.not = icmp eq i32 %err.0.i, 0
  %spec.select = select i1 %tobool11.not, i32 %count, i32 %err.0.i
  br label %cleanup

cleanup:                                          ; preds = %free_ret, %free_ret.thread, %if.end8.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ], [ -14, %free_ret.thread ], [ %spec.select, %free_ret ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %fnamebuf) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpmp_debug_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @single_open_size(ptr noundef %file, ptr noundef nonnull @bpmp_debug_show, ptr noundef %file, i32 noundef 262144) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_filename(ptr nocapture noundef readonly %bpmp, ptr nocapture noundef readonly %file, ptr noundef %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 512) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %debugfs_mirror = getelementptr inbounds %struct.tegra_bpmp, ptr %bpmp, i32 0, i32 15
  %1 = ptrtoint ptr %debugfs_mirror to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %debugfs_mirror, align 4
  %call1 = tail call ptr @dentry_path(ptr noundef %2, ptr noundef nonnull %call7.i.i, i32 noundef 512) #11
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @strlen(ptr noundef %call1) #19
  %dentry = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dentry, align 4
  %call6 = tail call ptr @dentry_path(ptr noundef %4, ptr noundef %buf, i32 noundef 256) #11
  %cmp.i1 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1, label %if.end4.out_crit_edge, label %if.end9

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end9:                                          ; preds = %if.end4
  %call10 = tail call i32 @strlen(ptr noundef %call6) #19
  call void @__sanitizer_cov_trace_cmp4(i32 %call10, i32 %call5)
  %cmp = icmp ult i32 %call10, %call5
  br i1 %cmp, label %if.end9.out_crit_edge, label %lor.lhs.false

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

lor.lhs.false:                                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %call11 = tail call i32 @strncmp(ptr noundef %call6, ptr noundef %call1, i32 noundef %call5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  %add.ptr = getelementptr i8, ptr %call6, i32 %call5
  %spec.select = select i1 %tobool12.not, ptr %add.ptr, ptr null
  br label %out

out:                                              ; preds = %lor.lhs.false, %if.end9.out_crit_edge, %if.end4.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %filename.0 = phi ptr [ null, %if.end.out_crit_edge ], [ null, %entry.out_crit_edge ], [ null, %if.end4.out_crit_edge ], [ null, %if.end9.out_crit_edge ], [ %spec.select, %lor.lhs.false ]
  tail call void @kfree(ptr noundef %call7.i.i) #11
  ret ptr %filename.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dentry_path(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open_size(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpmp_debug_show(ptr noundef %m, ptr nocapture noundef readnone %p) #0 align 64 {
entry:
  %req.i49 = alloca %struct.mrq_debug_request, align 4
  %resp.i50 = alloca %struct.mrq_debug_response, align 1
  %msg.i51 = alloca %struct.tegra_bpmp_message, align 4
  %req.i = alloca %struct.mrq_debug_request, align 4
  %resp.i = alloca %struct.mrq_debug_response, align 4
  %msg.i = alloca %struct.tegra_bpmp_message, align 4
  %fnamebuf = alloca [256 x i8], align 1
  %req = alloca %struct.mrq_debug_request, align 4
  %resp = alloca %struct.mrq_debug_response, align 4
  %msg = alloca %struct.tegra_bpmp_message, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_private, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %fnamebuf) #11
  %6 = call ptr @memset(ptr %fnamebuf, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %req) #11
  %7 = getelementptr inbounds i8, ptr %req, i32 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 116)
  %9 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 33554432, ptr %req, align 4
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %resp) #11
  %10 = call ptr @memset(ptr %resp, i32 255, i32 120)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #11
  %11 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg, i32 0, i32 1
  %12 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg, i32 0, i32 1, i32 1
  %13 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg, i32 0, i32 2
  %14 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg, i32 0, i32 2, i32 1
  %15 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 75, ptr %msg, align 4
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %req, ptr %11, align 4
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 120, ptr %12, align 4
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %resp, ptr %13, align 4
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 120, ptr %14, align 4
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %15, align 4
  %call3 = call fastcc ptr @get_filename(ptr noundef %5, ptr noundef %1, ptr noundef nonnull %fnamebuf)
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @mutex_lock_nested(ptr noundef nonnull @bpmp_debug_lock, i32 noundef 0) #11
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %req.i) #11
  %22 = getelementptr inbounds i8, ptr %req.i, i32 4
  %23 = call ptr @memset(ptr %req.i, i32 0, i32 120)
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %resp.i) #11
  %24 = call ptr @memset(ptr %resp.i, i32 255, i32 120)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #11
  %25 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1
  %26 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1, i32 1
  %27 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 2
  %28 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 2, i32 1
  %29 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 2, i32 2
  %30 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 75, ptr %msg.i, align 4
  %31 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %req.i, ptr %25, align 4
  %32 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 120, ptr %26, align 4
  %33 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %resp.i, ptr %27, align 4
  %34 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 120, ptr %28, align 4
  %35 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %29, align 4
  %call.i = call i32 @strscpy(ptr noundef %22, ptr noundef nonnull %call3, i32 noundef 116) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull %call3) #16
  br label %mrq_debug_open.exit.thread

if.end.i:                                         ; preds = %if.end
  %call5.i = call i32 @tegra_bpmp_transfer(ptr noundef %5, ptr noundef nonnull %msg.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end.i.mrq_debug_open.exit.thread_crit_edge, label %if.else.i

if.end.i.mrq_debug_open.exit.thread_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mrq_debug_open.exit.thread

if.else.i:                                        ; preds = %if.end.i
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp10.i = icmp slt i32 %37, 0
  br i1 %cmp10.i, label %if.else.i.mrq_debug_open.exit.thread_crit_edge, label %if.end7

if.else.i.mrq_debug_open.exit.thread_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mrq_debug_open.exit.thread

mrq_debug_open.exit.thread:                       ; preds = %if.else.i.mrq_debug_open.exit.thread_crit_edge, %if.end.i.mrq_debug_open.exit.thread_crit_edge, %do.end.i
  %retval.0.i.ph = phi i32 [ -22, %if.else.i.mrq_debug_open.exit.thread_crit_edge ], [ %call5.i, %if.end.i.mrq_debug_open.exit.thread_crit_edge ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #11
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %resp.i) #11
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %req.i) #11
  br label %out

if.end7:                                          ; preds = %if.else.i
  %datalen.i = getelementptr inbounds %struct.cmd_debug_fopen_response, ptr %resp.i, i32 0, i32 1
  %38 = ptrtoint ptr %datalen.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %datalen.i, align 4
  %40 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %resp.i, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #11
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %resp.i) #11
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %req.i) #11
  %42 = getelementptr inbounds %struct.mrq_debug_request, ptr %req, i32 0, i32 1
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %41, ptr %42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp62 = icmp sgt i32 %39, 0
  br i1 %cmp62, label %while.body.lr.ph, label %if.end7.close_crit_edge

if.end7.close_crit_edge:                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %close

while.body.lr.ph:                                 ; preds = %if.end7
  %data22 = getelementptr inbounds %struct.cmd_debug_fread_response, ptr %resp, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end21.while.body_crit_edge, %while.body.lr.ph
  %remaining.063 = phi i32 [ %39, %while.body.lr.ph ], [ %sub, %if.end21.while.body_crit_edge ]
  %call9 = call i32 @tegra_bpmp_transfer(ptr noundef %5, ptr noundef nonnull %msg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %while.body.close_crit_edge, label %if.else

while.body.close_crit_edge:                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %close

if.else:                                          ; preds = %while.body
  %44 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp14 = icmp slt i32 %45, 0
  br i1 %cmp14, label %if.else.close_crit_edge, label %if.end17

if.else.close_crit_edge:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %close

if.end17:                                         ; preds = %if.else
  %46 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %resp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %remaining.063)
  %cmp18 = icmp ugt i32 %47, %remaining.063
  br i1 %cmp18, label %do.end, label %if.end21

do.end:                                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.14) #16
  br label %close

if.end21:                                         ; preds = %if.end17
  %call25 = call i32 @seq_write(ptr noundef %m, ptr noundef %data22, i32 noundef %47) #11
  %48 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %resp, align 4
  %sub = sub i32 %remaining.063, %49
  %cmp = icmp sgt i32 %sub, 0
  br i1 %cmp, label %if.end21.while.body_crit_edge, label %if.end21.close_crit_edge

if.end21.close_crit_edge:                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %close

if.end21.while.body_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

close:                                            ; preds = %if.end21.close_crit_edge, %do.end, %if.else.close_crit_edge, %while.body.close_crit_edge, %if.end7.close_crit_edge
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %req.i49) #11
  %50 = getelementptr inbounds i8, ptr %req.i49, i32 8
  %51 = call ptr @memset(ptr %50, i32 0, i32 112)
  %52 = ptrtoint ptr %req.i49 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 67108864, ptr %req.i49, align 4
  %53 = getelementptr inbounds %struct.mrq_debug_request, ptr %req.i49, i32 0, i32 1
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %41, ptr %53, align 4
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %resp.i50) #11
  %55 = call ptr @memset(ptr %resp.i50, i32 255, i32 120)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i51) #11
  %56 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i51, i32 0, i32 1
  %57 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i51, i32 0, i32 1, i32 1
  %58 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i51, i32 0, i32 2
  %59 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i51, i32 0, i32 2, i32 1
  %60 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i51, i32 0, i32 2, i32 2
  %61 = ptrtoint ptr %msg.i51 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 75, ptr %msg.i51, align 4
  %62 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %req.i49, ptr %56, align 4
  %63 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 120, ptr %57, align 4
  %64 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %resp.i50, ptr %58, align 4
  %65 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 120, ptr %59, align 4
  %66 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %60, align 4
  %call.i52 = call i32 @tegra_bpmp_transfer(ptr noundef %5, ptr noundef nonnull %msg.i51) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %cmp.i53 = icmp slt i32 %call.i52, 0
  br i1 %cmp.i53, label %close.mrq_debug_close.exit_crit_edge, label %if.else.i55

close.mrq_debug_close.exit_crit_edge:             ; preds = %close
  call void @__sanitizer_cov_trace_pc() #13
  br label %mrq_debug_close.exit

if.else.i55:                                      ; preds = %close
  call void @__sanitizer_cov_trace_pc() #13
  %67 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp6.i54 = icmp slt i32 %68, 0
  %..i = select i1 %cmp6.i54, i32 -22, i32 0
  br label %mrq_debug_close.exit

mrq_debug_close.exit:                             ; preds = %if.else.i55, %close.mrq_debug_close.exit_crit_edge
  %retval.0.i56 = phi i32 [ %call.i52, %close.mrq_debug_close.exit_crit_edge ], [ %..i, %if.else.i55 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i51) #11
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %resp.i50) #11
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %req.i49) #11
  br label %out

out:                                              ; preds = %mrq_debug_close.exit, %mrq_debug_open.exit.thread
  %err.0 = phi i32 [ %retval.0.i56, %mrq_debug_close.exit ], [ %retval.0.i.ph, %mrq_debug_open.exit.thread ]
  call void @mutex_unlock(ptr noundef nonnull @bpmp_debug_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #11
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %resp) #11
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %req) #11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %fnamebuf) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bpmp_populate_dir(ptr noundef %bpmp, ptr nocapture noundef %seqbuf, ptr noundef %parent, i32 noundef %depth) unnamed_addr #0 align 64 {
entry:
  %d = alloca i32, align 4
  %t = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d)
  %0 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %d, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t)
  %1 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %t, align 4
  %pos.i = getelementptr inbounds %struct.seqbuf, ptr %seqbuf, i32 0, i32 1
  %size.i = getelementptr inbounds %struct.seqbuf, ptr %seqbuf, i32 0, i32 2
  %2 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pos.i, align 4
  %4 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.i.not77 = icmp ult i32 %3, %5
  br i1 %cmp.i.not77, label %while.body.lr.ph, label %entry.cleanup39_crit_edge

entry.cleanup39_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup39

while.body.lr.ph:                                 ; preds = %entry
  %add = add i32 %depth, 1
  br label %while.body

while.body:                                       ; preds = %if.end38.while.body_crit_edge, %while.body.lr.ph
  %6 = phi i32 [ %5, %while.body.lr.ph ], [ %31, %if.end38.while.body_crit_edge ]
  %7 = phi i32 [ %3, %while.body.lr.ph ], [ %29, %if.end38.while.body_crit_edge ]
  %8 = tail call i32 @llvm.usub.sat.i32(i32 %6, i32 %7) #11
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 4) #11
  %10 = ptrtoint ptr %seqbuf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %seqbuf, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %7
  %12 = call ptr @memcpy(ptr %d, ptr %add.ptr.i.i, i32 %9)
  %add.i.i = add i32 %9, %7
  %13 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add.i.i, ptr %pos.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %6)
  %cmp.not.i.i.i = icmp ugt i32 %add.i.i, %6
  %14 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %14)
  %d.0.d.0.75 = load i32, ptr %d, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %d.0.d.0.75) #11
  %16 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %d, align 4
  br i1 %cmp.not.i.i.i, label %while.body.cleanup39_crit_edge, label %if.end

while.body.cleanup39_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup39

if.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %depth)
  %cmp2 = icmp ult i32 %15, %depth
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.i = add i32 %add.i.i, -4
  %17 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add.i, ptr %pos.i, align 4
  br label %cleanup39

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %depth)
  %cmp4.not = icmp eq i32 %15, %depth
  br i1 %cmp4.not, label %if.end7, label %if.else.cleanup39_crit_edge

if.else.cleanup39_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup39

if.end7:                                          ; preds = %if.else
  %18 = tail call i32 @llvm.usub.sat.i32(i32 %6, i32 %add.i.i) #11
  %19 = tail call i32 @llvm.umin.i32(i32 %18, i32 4) #11
  %add.ptr.i.i67 = getelementptr i8, ptr %11, i32 %add.i.i
  %20 = call ptr @memcpy(ptr %t, ptr %add.ptr.i.i67, i32 %19)
  %add.i.i68 = add i32 %19, %add.i.i
  %21 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add.i.i68, ptr %pos.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i68, i32 %6)
  %cmp.not.i.i.i69 = icmp ugt i32 %add.i.i68, %6
  %22 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %22)
  %t.0.t.0.74 = load i32, ptr %t, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %t.0.t.0.74) #11
  %24 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %t, align 4
  br i1 %cmp.not.i.i.i69, label %if.end7.cleanup39_crit_edge, label %if.end11

if.end7.cleanup39_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup39

if.end11:                                         ; preds = %if.end7
  %add.ptr.i = getelementptr i8, ptr %11, i32 %add.i.i68
  %25 = tail call i32 @llvm.usub.sat.i32(i32 %6, i32 %add.i.i68) #11
  %call1.i = tail call i32 @strnlen(ptr noundef %add.ptr.i, i32 noundef %25) #17
  %add.i72 = add i32 %add.i.i68, 1
  %inc.i = add i32 %add.i72, %call1.i
  %26 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %inc.i, ptr %pos.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %6)
  %cmp.not.i.i = icmp ugt i32 %inc.i, %6
  br i1 %cmp.not.i.i, label %if.end11.cleanup39_crit_edge, label %if.end15

if.end11.cleanup39_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup39

if.end15:                                         ; preds = %if.end11
  %and = and i32 %23, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.else26, label %if.then17

if.then17:                                        ; preds = %if.end15
  %call18 = tail call ptr @debugfs_create_dir(ptr noundef %add.ptr.i, ptr noundef %parent) #11
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.then17.cleanup39_crit_edge, label %if.end21

if.then17.cleanup39_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup39

if.end21:                                         ; preds = %if.then17
  %call22 = tail call fastcc i32 @bpmp_populate_dir(ptr noundef %bpmp, ptr noundef %seqbuf, ptr noundef nonnull %call18, i32 noundef %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.end21.cleanup39_crit_edge, label %if.end21.if.end38_crit_edge

if.end21.if.end38_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.end21.cleanup39_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup39

if.else26:                                        ; preds = %if.end15
  %27 = trunc i32 %23 to i16
  %conv33 = and i16 %27, 384
  %call34 = tail call ptr @debugfs_create_file(ptr noundef %add.ptr.i, i16 noundef zeroext %conv33, ptr noundef %parent, ptr noundef %bpmp, ptr noundef nonnull @debugfs_fops) #11
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.else26.cleanup39_crit_edge, label %if.else26.if.end38_crit_edge

if.else26.if.end38_crit_edge:                     ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.else26.cleanup39_crit_edge:                    ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup39

if.end38:                                         ; preds = %if.else26.if.end38_crit_edge, %if.end21.if.end38_crit_edge
  %28 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pos.i, align 4
  %30 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size.i, align 4
  %cmp.i.not = icmp ult i32 %29, %31
  br i1 %cmp.i.not, label %if.end38.while.body_crit_edge, label %if.end38.cleanup39_crit_edge

if.end38.cleanup39_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup39

if.end38.while.body_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

cleanup39:                                        ; preds = %if.end38.cleanup39_crit_edge, %if.else26.cleanup39_crit_edge, %if.end21.cleanup39_crit_edge, %if.then17.cleanup39_crit_edge, %if.end11.cleanup39_crit_edge, %if.end7.cleanup39_crit_edge, %if.else.cleanup39_crit_edge, %if.then3, %while.body.cleanup39_crit_edge, %entry.cleanup39_crit_edge
  %retval.3 = phi i32 [ 0, %if.then3 ], [ 0, %entry.cleanup39_crit_edge ], [ -12, %if.else26.cleanup39_crit_edge ], [ -75, %while.body.cleanup39_crit_edge ], [ -5, %if.else.cleanup39_crit_edge ], [ -75, %if.end7.cleanup39_crit_edge ], [ -75, %if.end11.cleanup39_crit_edge ], [ -12, %if.then17.cleanup39_crit_edge ], [ %call22, %if.end21.cleanup39_crit_edge ], [ 0, %if.end38.cleanup39_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d)
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @debugfs_store(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %f_pos) #0 align 64 {
entry:
  %req.i = alloca %struct.mrq_debugfs_request, align 4
  %msg.i = alloca %struct.tegra_bpmp_message, align 4
  %dataphys = alloca i32, align 4
  %namephys = alloca i32, align 4
  %fnamebuf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dataphys) #11
  %4 = ptrtoint ptr %dataphys to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %dataphys, align 4, !annotation !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %namephys) #11
  %5 = ptrtoint ptr %namephys to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %namephys, align 4, !annotation !48
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %fnamebuf) #11
  %6 = call ptr @memset(ptr %fnamebuf, i32 255, i32 256)
  %call1 = call fastcc ptr @get_filename(ptr noundef %3, ptr noundef %file, ptr noundef nonnull %fnamebuf)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.tegra_bpmp, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %8, i32 noundef 256, ptr noundef nonnull %namephys, i32 noundef 3268, i32 noundef 0) #11
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %call.i48 = call ptr @dma_alloc_attrs(ptr noundef %10, i32 noundef %count, ptr noundef nonnull %dataphys, i32 noundef 3268, i32 noundef 0) #11
  %tobool8.not = icmp eq ptr %call.i48, null
  br i1 %tobool8.not, label %if.end5.free_namebuf_crit_edge, label %if.end10

if.end5.free_namebuf_crit_edge:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_namebuf

if.end10:                                         ; preds = %if.end5
  %call11 = call i32 @strlen(ptr noundef nonnull %call1) #19
  %call12 = call ptr @strncpy(ptr noundef nonnull %call.i, ptr noundef nonnull %call1, i32 noundef 256)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp9.i.i = icmp slt i32 %count, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end10
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.free_databuf_crit_edge, label %if.then27.i.i, !prof !49

land.rhs16.i.i.free_databuf_crit_edge:            ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_databuf

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %free_databuf

if.then.i.i.i:                                    ; preds = %if.end10
  call void @__check_object_size(ptr noundef nonnull %call.i48, i32 noundef %count, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 156) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %11 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %count, i32 -1226833920) #18, !srcloc !50
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !49

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i48, i32 noundef %count) #11
  %12 = call i32 @llvm.read_register.i32(metadata !38) #11
  %and.i.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !51
  %and.i.i.i.i = and i32 %14, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !52
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !53
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %call.i48, ptr noundef %buf, i32 noundef %count) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #11, !srcloc !52
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !53
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %count, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %count, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end16, label %if.then11.i.i, !prof !49

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %count, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call.i48, i32 %sub.i.i
  %15 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %free_databuf

if.end16:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %namephys to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %namephys, align 4
  %18 = ptrtoint ptr %dataphys to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dataphys, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req.i) #11
  %20 = getelementptr inbounds %struct.mrq_debugfs_request, ptr %req.i, i32 0, i32 1
  %21 = getelementptr inbounds %struct.mrq_debugfs_request, ptr %req.i, i32 0, i32 1, i32 0, i32 1
  %22 = getelementptr inbounds %struct.mrq_debugfs_request, ptr %req.i, i32 0, i32 1, i32 0, i32 2
  %23 = getelementptr inbounds %struct.mrq_debugfs_request, ptr %req.i, i32 0, i32 1, i32 0, i32 3
  %24 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 33554432, ptr %req.i, align 4
  %25 = call i32 @llvm.bswap.i32(i32 %17) #11
  %26 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %20, align 4
  %27 = call i32 @llvm.bswap.i32(i32 %call11) #11
  %28 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %21, align 4
  %29 = call i32 @llvm.bswap.i32(i32 %19) #11
  %30 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %22, align 4
  %31 = call i32 @llvm.bswap.i32(i32 %count) #11
  %32 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %23, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #11
  %33 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1
  %34 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1, i32 1
  %35 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 2
  %36 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 19, ptr %msg.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %req.i, ptr %33, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 20, ptr %34, align 4
  %39 = call ptr @memset(ptr %35, i32 0, i32 12)
  %call.i49 = call i32 @tegra_bpmp_transfer(ptr noundef %3, ptr noundef nonnull %msg.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req.i) #11
  br label %free_databuf

free_databuf:                                     ; preds = %if.end16, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.free_databuf_crit_edge
  %err.0 = phi i32 [ %call.i49, %if.end16 ], [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.free_databuf_crit_edge ]
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  %42 = ptrtoint ptr %dataphys to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dataphys, align 4
  call void @dma_free_attrs(ptr noundef %41, i32 noundef %count, ptr noundef nonnull %call.i48, i32 noundef %43, i32 noundef 0) #11
  br label %free_namebuf

free_namebuf:                                     ; preds = %free_databuf, %if.end5.free_namebuf_crit_edge
  %err.1 = phi i32 [ %err.0, %free_databuf ], [ -12, %if.end5.free_namebuf_crit_edge ]
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 4
  %46 = ptrtoint ptr %namephys to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %namephys, align 4
  call void @dma_free_attrs(ptr noundef %45, i32 noundef 256, ptr noundef nonnull %call.i, i32 noundef %47, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool20.not = icmp eq i32 %err.1, 0
  %spec.select = select i1 %tobool20.not, i32 %count, i32 %err.1
  br label %cleanup

cleanup:                                          ; preds = %free_namebuf, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %spec.select, %free_namebuf ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %fnamebuf) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %namephys) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dataphys) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @debugfs_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @single_open_size(ptr noundef %file, ptr noundef nonnull @debugfs_show, ptr noundef %file, i32 noundef 131072) #11
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @debugfs_show(ptr noundef %m, ptr nocapture noundef readnone %p) #0 align 64 {
entry:
  %req.i = alloca %struct.mrq_debugfs_request, align 4
  %resp.i = alloca %struct.mrq_debugfs_response, align 4
  %msg.i = alloca %struct.tegra_bpmp_message, align 4
  %dataphys = alloca i32, align 4
  %namephys = alloca i32, align 4
  %buf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_private, align 4
  %size = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 1
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dataphys) #11
  %8 = ptrtoint ptr %dataphys to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %dataphys, align 4, !annotation !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %namephys) #11
  %9 = ptrtoint ptr %namephys to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %namephys, align 4, !annotation !48
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #11
  %10 = call ptr @memset(ptr %buf, i32 255, i32 256)
  %call1 = call fastcc ptr @get_filename(ptr noundef %5, ptr noundef %1, ptr noundef nonnull %buf)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.tegra_bpmp, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %12, i32 noundef 256, ptr noundef nonnull %namephys, i32 noundef 3268, i32 noundef 0) #11
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %call.i50 = call ptr @dma_alloc_attrs(ptr noundef %14, i32 noundef %7, ptr noundef nonnull %dataphys, i32 noundef 3268, i32 noundef 0) #11
  %tobool8.not = icmp eq ptr %call.i50, null
  br i1 %tobool8.not, label %if.end5.free_namebuf_crit_edge, label %if.end10

if.end5.free_namebuf_crit_edge:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_namebuf

if.end10:                                         ; preds = %if.end5
  %call11 = call i32 @strlen(ptr noundef nonnull %call1) #19
  %call12 = call ptr @strncpy(ptr noundef nonnull %call.i, ptr noundef nonnull %call1, i32 noundef 256)
  %15 = ptrtoint ptr %namephys to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %namephys, align 4
  %17 = ptrtoint ptr %dataphys to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dataphys, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req.i) #11
  %19 = getelementptr inbounds %struct.mrq_debugfs_request, ptr %req.i, i32 0, i32 1
  %20 = getelementptr inbounds %struct.mrq_debugfs_request, ptr %req.i, i32 0, i32 1, i32 0, i32 1
  %21 = getelementptr inbounds %struct.mrq_debugfs_request, ptr %req.i, i32 0, i32 1, i32 0, i32 2
  %22 = getelementptr inbounds %struct.mrq_debugfs_request, ptr %req.i, i32 0, i32 1, i32 0, i32 3
  %23 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 16777216, ptr %req.i, align 4
  %24 = call i32 @llvm.bswap.i32(i32 %16) #11
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %19, align 4
  %26 = call i32 @llvm.bswap.i32(i32 %call11) #11
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %20, align 4
  %28 = call i32 @llvm.bswap.i32(i32 %18) #11
  %29 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %21, align 4
  %30 = call i32 @llvm.bswap.i32(i32 %7) #11
  %31 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %22, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %resp.i) #11
  %32 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %resp.i, align 4, !annotation !48
  %33 = getelementptr inbounds %struct.mrq_debugfs_response, ptr %resp.i, i32 0, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %33, align 4, !annotation !48
  %35 = getelementptr inbounds %struct.mrq_debugfs_response, ptr %resp.i, i32 0, i32 1, i32 0, i32 1
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %35, align 4, !annotation !48
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #11
  %37 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1
  %38 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1, i32 1
  %39 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 2
  %40 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 2, i32 1
  %41 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 2, i32 2
  %42 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 19, ptr %msg.i, align 4
  %43 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %req.i, ptr %37, align 4
  %44 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 20, ptr %38, align 4
  %45 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %resp.i, ptr %39, align 4
  %46 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 12, ptr %40, align 4
  %47 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %41, align 4
  %call.i51 = call i32 @tegra_bpmp_transfer(ptr noundef %5, ptr noundef nonnull %msg.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %cmp.i = icmp slt i32 %call.i51, 0
  br i1 %cmp.i, label %if.end10.mrq_debugfs_read.exit.thread_crit_edge, label %if.else.i

if.end10.mrq_debugfs_read.exit.thread_crit_edge:  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %mrq_debugfs_read.exit.thread

if.else.i:                                        ; preds = %if.end10
  %48 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp6.i = icmp slt i32 %49, 0
  br i1 %cmp6.i, label %if.else.i.mrq_debugfs_read.exit.thread_crit_edge, label %if.then15

if.else.i.mrq_debugfs_read.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mrq_debugfs_read.exit.thread

mrq_debugfs_read.exit.thread:                     ; preds = %if.else.i.mrq_debugfs_read.exit.thread_crit_edge, %if.end10.mrq_debugfs_read.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.else.i.mrq_debugfs_read.exit.thread_crit_edge ], [ %call.i51, %if.end10.mrq_debugfs_read.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %resp.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req.i) #11
  br label %if.end17

if.then15:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %35, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %resp.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req.i) #11
  %call16 = call i32 @seq_write(ptr noundef %m, ptr noundef nonnull %call.i50, i32 noundef %51) #11
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %mrq_debugfs_read.exit.thread
  %retval.0.i55 = phi i32 [ %retval.0.i.ph, %mrq_debugfs_read.exit.thread ], [ 0, %if.then15 ]
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 4
  %54 = ptrtoint ptr %dataphys to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dataphys, align 4
  call void @dma_free_attrs(ptr noundef %53, i32 noundef %7, ptr noundef nonnull %call.i50, i32 noundef %55, i32 noundef 0) #11
  br label %free_namebuf

free_namebuf:                                     ; preds = %if.end17, %if.end5.free_namebuf_crit_edge
  %err.0 = phi i32 [ %retval.0.i55, %if.end17 ], [ -12, %if.end5.free_namebuf_crit_edge ]
  %56 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev, align 4
  %58 = ptrtoint ptr %namephys to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %namephys, align 4
  call void @dma_free_attrs(ptr noundef %57, i32 noundef 256, ptr noundef nonnull %call.i, i32 noundef %59, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %free_namebuf, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %free_namebuf ], [ -2, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %namephys) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dataphys) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nounwind readnone }
attributes #19 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !23, !25, !27, !28, !30, !32, !34, !35, !36}
!llvm.named.register.sp = !{!38}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/firmware/tegra/bpmp-debugfs.c", i32 790, i32 28}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/firmware/tegra/bpmp-debugfs.c", i32 794, i32 44}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/firmware/tegra/bpmp-debugfs.c", i32 802, i32 10}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/firmware/tegra/bpmp-debugfs.c", i32 460, i32 37}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/firmware/tegra/bpmp-debugfs.c", i32 225, i32 4}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @mrq_debug_read._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @mrq_debug_read._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/firmware/tegra/bpmp-debugfs.c", i32 13, i32 8}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @bpmp_debug_lock, !15, !"bpmp_debug_lock", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/firmware/tegra/bpmp-debugfs.c", i32 134, i32 3}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @mrq_debug_open._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @mrq_debug_open._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @bpmp_debug_fops, !24, !"bpmp_debug_fops", i1 false, i1 false}
!24 = !{!"../drivers/firmware/tegra/bpmp-debugfs.c", i32 402, i32 37}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/firmware/tegra/bpmp-debugfs.c", i32 350, i32 4}
!34 = !{ptr @bpmp_debug_show._entry, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @bpmp_debug_show._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @debugfs_fops, !37, !"debugfs_fops", i1 false, i1 false}
!37 = !{!"../drivers/firmware/tegra/bpmp-debugfs.c", i32 689, i32 37}
!38 = !{!"sp"}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{!"auto-init"}
!49 = !{!"branch_weights", i32 2000, i32 1}
!50 = !{i64 2152190992, i64 2152191017}
!51 = !{i64 4686547}
!52 = !{i64 4686744}
!53 = !{i64 2152171977}
