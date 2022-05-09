; ModuleID = '/llk/IR_all_yes/fs/jbd2/recovery.c_pt.bc'
source_filename = "../fs/jbd2/recovery.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.recovery_info = type { i32, i32, i32, i32, i32 }
%struct.journal_s = type { i32, i32, i32, %struct.mutex, ptr, ptr, i32, %struct.rwlock_t, i32, %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.mutex, [64 x ptr], %struct.shrinker, %struct.percpu_counter, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i64, [56 x i8], ptr, i32, %struct.atomic_t, %struct.spinlock, ptr, i32, i32, i32, i32, [16 x i8], ptr, i32, i32, i32, %struct.timer_list, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, i32, i32, i32, i64, i32, i32, ptr, ptr, ptr, %struct.spinlock, ptr, %struct.transaction_stats_s, i32, ptr, ptr, i32, %struct.lockdep_map, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.transaction_stats_s = type { i32, i32, %struct.transaction_run_stats_s }
%struct.transaction_run_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.journal_superblock_s = type { %struct.journal_header_s, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i8], i32, i32, i32, i32, i8, [3 x i8], i32, [41 x i32], i32, [768 x i8] }
%struct.journal_header_s = type { i32, i32, i32 }
%struct.anon.79 = type { %struct.shash_desc, [4 x i8], [4 x i8] }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.journal_block_tag3_s = type { i32, i32, i32, i32 }
%struct.commit_header = type { i32, i32, i32, i8, i8, [2 x i8], [8 x i32], i64, i32 }
%struct.jbd2_journal_revoke_header_s = type { %struct.journal_header_s, i32 }

@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/jbd2/recovery.c\00", [45 x i8] zeroinitializer }, align 32
@__func__.jbd2_journal_recover = private unnamed_addr constant [21 x i8] c"jbd2_journal_recover\00", align 1
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"No recovery required, last transaction %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"JBD2: recovery, exit status %d, recovered transactions %u to %u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"JBD2: Replayed %d and revoked %d/%d blocks\0A\00", [52 x i8] zeroinitializer }, align 32
@jbd2_journal_skip_recovery._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str, i32 359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013JBD2: error %d scanning journal\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"jbd2_journal_skip_recovery\00", [37 x i8] zeroinitializer }, align 32
@jbd2_journal_skip_recovery._entry_ptr = internal global ptr @jbd2_journal_skip_recovery._entry, section ".printk_index", align 4
@.str.6 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"JBD2: ignoring %d transaction%s from the journal.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"s\00", [30 x i8] zeroinitializer }, align 32
@__func__.do_one_pass = private unnamed_addr constant [12 x i8] c"do_one_pass\00", align 1
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Starting recovery pass %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Scanning for sequence ID %u at %lu/%lu\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"JBD2: checking block %ld\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Found magic %d, sequence %d\0A\00", [35 x i8] zeroinitializer }, align 32
@do_one_pass._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @__func__.do_one_pass, ptr @.str, i32 572, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013JBD2: Invalid checksum recovering block %lu in log\0A\00", [42 x i8] zeroinitializer }, align 32
@do_one_pass._entry_ptr = internal global ptr @do_one_pass._entry, section ".printk_index", align 4
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"invalid descriptor block found in %lu\0A\00", [57 x i8] zeroinitializer }, align 32
@do_one_pass._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @__func__.do_one_pass, ptr @.str, i32 629, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013JBD2: IO error %d recovering block %ld in log\0A\00", [47 x i8] zeroinitializer }, align 32
@do_one_pass._entry_ptr.17 = internal global ptr @do_one_pass._entry.15, section ".printk_index", align 4
@do_one_pass._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @__func__.do_one_pass, ptr @.str, i32 657, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013JBD2: Invalid checksum recovering data block %llu in log\0A\00", [36 x i8] zeroinitializer }, align 32
@do_one_pass._entry_ptr.20 = internal global ptr @do_one_pass._entry.18, section ".printk_index", align 4
@do_one_pass._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @__func__.do_one_pass, ptr @.str, i32 670, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013JBD2: Out of memory during recovery.\0A\00", [56 x i8] zeroinitializer }, align 32
@do_one_pass._entry_ptr.23 = internal global ptr @do_one_pass._entry.21, section ".printk_index", align 4
@do_one_pass._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @__func__.do_one_pass, ptr @.str, i32 751, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013JBD2: Invalid checksum found in transaction %u\0A\00", [46 x i8] zeroinitializer }, align 32
@do_one_pass._entry_ptr.26 = internal global ptr @do_one_pass._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"JBD2: Invalid checksum ignored in transaction %u, likely stale data\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"JBD2: invalid revoke block found in %lu\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unrecognised magic %d, end of scan.\0A\00", [59 x i8] zeroinitializer }, align 32
@do_one_pass._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @__func__.do_one_pass, ptr @.str, i32 872, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013JBD2: recovery pass %d ended at transaction %u, expected %u\0A\00", [33 x i8] zeroinitializer }, align 32
@do_one_pass._entry_ptr.32 = internal global ptr @do_one_pass._entry.30, section ".printk_index", align 4
@jread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013JBD2: corrupted journal superblock\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"jread\00", [26 x i8] zeroinitializer }, align 32
@jread._entry_ptr = internal global ptr @jread._entry, section ".printk_index", align 4
@jread._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013JBD2: bad block at offset %u\0A\00", [32 x i8] zeroinitializer }, align 32
@jread._entry_ptr.37 = internal global ptr @jread._entry.35, section ".printk_index", align 4
@jread._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.34, ptr @.str, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013JBD2: Failed to read block at offset %u\0A\00", [53 x i8] zeroinitializer }, align 32
@jread._entry_ptr.40 = internal global ptr @jread._entry.38, section ".printk_index", align 4
@do_readahead._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.41, ptr @.str, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"do_readahead\00", [19 x i8] zeroinitializer }, align 32
@do_readahead._entry_ptr = internal global ptr @do_readahead._entry, section ".printk_index", align 4
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@jbd2_journal_has_csum_v2or3.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/jbd2.h\00", [43 x i8] zeroinitializer }, align 32
@calc_chksums._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str, i32 406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013JBD2: IO error %d recovering block %lu in log\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"calc_chksums\00", [19 x i8] zeroinitializer }, align 32
@calc_chksums._entry_ptr = internal global ptr @calc_chksums._entry, section ".printk_index", align 4
@__func__.fc_do_one_pass = private unnamed_addr constant [15 x i8] c"fc_do_one_pass\00", align 1
@.str.46 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Fast commit replay: next block %ld\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Fast commit replay: read error\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Fast commit replay failed, err = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 5]
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 300, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 312, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 315, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 359, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 365, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 487, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 513, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 522, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 545, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 571, i32 6 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 578, i32 5 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 626, i32 6 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 654, i32 7 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 668, i32 7 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 750, i32 6 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 761, i32 5 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 829, i32 5 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 848, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 870, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 138, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 145, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 163, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 89, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 354, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant [24 x i8] c"../include/linux/jbd2.h\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1734, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 405, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 248, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 252, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.188 = private constant [22 x i8] c"../fs/jbd2/recovery.c\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 266, i32 3 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @calc_chksums._entry, ptr @calc_chksums._entry_ptr, ptr @do_one_pass._entry, ptr @do_one_pass._entry.15, ptr @do_one_pass._entry.18, ptr @do_one_pass._entry.21, ptr @do_one_pass._entry.24, ptr @do_one_pass._entry.30, ptr @do_one_pass._entry_ptr, ptr @do_one_pass._entry_ptr.17, ptr @do_one_pass._entry_ptr.20, ptr @do_one_pass._entry_ptr.23, ptr @do_one_pass._entry_ptr.26, ptr @do_one_pass._entry_ptr.32, ptr @do_readahead._entry, ptr @do_readahead._entry_ptr, ptr @jbd2_journal_skip_recovery._entry, ptr @jbd2_journal_skip_recovery._entry_ptr, ptr @jread._entry, ptr @jread._entry.35, ptr @jread._entry.38, ptr @jread._entry_ptr, ptr @jread._entry_ptr.37, ptr @jread._entry_ptr.40, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jbd2_journal_skip_recovery._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_one_pass._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_one_pass._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_one_pass._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_one_pass._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_one_pass._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_one_pass._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jread._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jread._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_readahead._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calc_chksums._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_recover(ptr noundef %journal) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.recovery_info, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %info) #8
  %0 = getelementptr inbounds %struct.recovery_info, ptr %info, i32 0, i32 1
  %1 = getelementptr inbounds %struct.recovery_info, ptr %info, i32 0, i32 2
  %2 = getelementptr inbounds %struct.recovery_info, ptr %info, i32 0, i32 3
  %3 = getelementptr inbounds %struct.recovery_info, ptr %info, i32 0, i32 4
  %4 = call ptr @memset(ptr %info, i32 0, i32 20)
  %j_superblock = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 5
  %5 = ptrtoint ptr %j_superblock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %j_superblock, align 4
  %s_start = getelementptr inbounds %struct.journal_superblock_s, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %s_start to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %s_sequence = getelementptr inbounds %struct.journal_superblock_s, ptr %6, i32 0, i32 4
  %9 = ptrtoint ptr %s_sequence to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_sequence, align 4
  tail call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.jbd2_journal_recover, i32 noundef 301, ptr noundef nonnull @.str.1, i32 noundef %10) #8
  %11 = ptrtoint ptr %s_sequence to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_sequence, align 4
  %add = add i32 %12, 1
  %j_transaction_sequence = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 42
  %13 = ptrtoint ptr %j_transaction_sequence to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add, ptr %j_transaction_sequence, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @do_one_pass(ptr noundef %journal, ptr noundef nonnull %info, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end5, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end5:                                          ; preds = %if.end
  %call4 = call fastcc i32 @do_one_pass(ptr noundef %journal, ptr noundef nonnull %info, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool6.not = icmp eq i32 %call4, 0
  br i1 %tobool6.not, label %if.then7, label %if.end5.if.end9_crit_edge

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = call fastcc i32 @do_one_pass(ptr noundef %journal, ptr noundef nonnull %info, i32 noundef 2)
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %err.1 = phi i32 [ %call4, %if.end5.if.end9_crit_edge ], [ %call8, %if.then7 ], [ %call, %if.end.if.end9_crit_edge ]
  %14 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %info, align 4
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %0, align 4
  tail call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.jbd2_journal_recover, i32 noundef 314, ptr noundef nonnull @.str.2, i32 noundef %err.1, i32 noundef %15, i32 noundef %17) #8
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 4
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %3, align 4
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %2, align 4
  tail call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.jbd2_journal_recover, i32 noundef 316, ptr noundef nonnull @.str.3, i32 noundef %19, i32 noundef %21, i32 noundef %23) #8
  %inc = add i32 %17, 1
  %j_transaction_sequence11 = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 42
  %24 = ptrtoint ptr %j_transaction_sequence11 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %inc, ptr %j_transaction_sequence11, align 8
  tail call void @jbd2_journal_clear_revoke(ptr noundef %journal) #8
  %j_fs_dev = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 36
  %25 = ptrtoint ptr %j_fs_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %j_fs_dev, align 8
  %call12 = tail call i32 @sync_blockdev(ptr noundef %26) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool13.not = icmp eq i32 %err.1, 0
  %spec.select = select i1 %tobool13.not, i32 %call12, i32 %err.1
  %27 = ptrtoint ptr %journal to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %journal, align 8
  %and = and i32 %28, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end9.cleanup_crit_edge, label %if.then17

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then17:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %j_fs_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %j_fs_dev, align 8
  %call19 = tail call i32 @blkdev_issue_flush(ptr noundef %30) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool20.not = icmp eq i32 %spec.select, 0
  %spec.select44 = select i1 %tobool20.not, i32 %call19, i32 %spec.select
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end9.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %spec.select, %if.end9.cleanup_crit_edge ], [ %spec.select44, %if.then17 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %info) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__jbd2_debug(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_one_pass(ptr noundef %journal, ptr nocapture noundef %info, i32 noundef %pass) unnamed_addr #0 align 64 {
entry:
  %bh.i = alloca ptr, align 4
  %desc.i21.i = alloca %struct.anon.79, align 8
  %desc.i.i = alloca %struct.anon.79, align 8
  %seq.i = alloca i32, align 4
  %next_log_block = alloca i32, align 4
  %bh = alloca ptr, align 4
  %crc32_sum = alloca i32, align 4
  %obh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %next_log_block) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #8
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !101
  %call = tail call i32 @journal_tag_bytes(ptr noundef %journal) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %crc32_sum) #8
  %1 = ptrtoint ptr %crc32_sum to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %crc32_sum, align 4
  %j_superblock = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 5
  %2 = ptrtoint ptr %j_superblock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %j_superblock, align 4
  %s_sequence = getelementptr inbounds %struct.journal_superblock_s, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %s_sequence to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_sequence, align 4
  %s_start = getelementptr inbounds %struct.journal_superblock_s, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %s_start to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_start, align 4
  %8 = ptrtoint ptr %next_log_block to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %next_log_block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pass)
  %cmp = icmp eq i32 %pass, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %5, ptr %info, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.do_one_pass, i32 noundef 487, ptr noundef nonnull @.str.9, i32 noundef %pass) #8
  %end_transaction = getelementptr inbounds %struct.recovery_info, ptr %info, i32 0, i32 1
  %j_format_version.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 6
  %j_fc_last705 = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 31
  %j_last706 = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 28
  %j_first = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 27
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %pass)
  %cmp277.not = icmp eq i32 %pass, 1
  %j_chksum_driver.i.i658 = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 70
  %j_blocksize.i667 = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 33
  %nr_revokes.i = getelementptr inbounds %struct.recovery_info, ptr %info, i32 0, i32 3
  %j_failed_commit = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 68
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %pass)
  %cmp49.not = icmp eq i32 %pass, 2
  %nr_revoke_hits = getelementptr inbounds %struct.recovery_info, ptr %info, i32 0, i32 4
  %j_csum_seed.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 71
  %10 = getelementptr inbounds %struct.anon.79, ptr %desc.i.i, i32 0, i32 1
  %11 = getelementptr inbounds %struct.anon.79, ptr %desc.i21.i, i32 0, i32 1
  %j_fs_dev = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 36
  %nr_replays = getelementptr inbounds %struct.recovery_info, ptr %info, i32 0, i32 2
  br label %while.cond

while.cond:                                       ; preds = %cleanup285, %if.end
  %descr_csum_size.0 = phi i32 [ 0, %if.end ], [ %descr_csum_size.3, %cleanup285 ]
  %block_error.0 = phi i32 [ 0, %if.end ], [ %block_error.6, %cleanup285 ]
  %need_check_commit_time.0.off0 = phi i1 [ false, %if.end ], [ %need_check_commit_time.4.off0, %cleanup285 ]
  %last_trans_commit_time.0 = phi i64 [ 0, %if.end ], [ %last_trans_commit_time.2, %cleanup285 ]
  %success.0 = phi i32 [ 0, %if.end ], [ %success.6, %cleanup285 ]
  %next_commit_ID.0 = phi i32 [ %5, %if.end ], [ %next_commit_ID.1, %cleanup285 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %obh) #8
  %12 = ptrtoint ptr %obh to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %obh, align 4, !annotation !101
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 503, i32 noundef 0) #8
  %call.i = call i32 @__cond_resched() #8
  br i1 %cmp, label %while.cond.if.end8_crit_edge, label %if.then4

while.cond.if.end8_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then4:                                         ; preds = %while.cond
  %13 = ptrtoint ptr %end_transaction to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %end_transaction, align 4
  %15 = xor i32 %next_commit_ID.0, -1
  %16 = add i32 %14, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %tobool.not = icmp sgt i32 %16, -1
  br i1 %tobool.not, label %if.then4.if.end8_crit_edge, label %done.thread

if.then4.if.end8_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

done.thread:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %obh) #8
  br label %if.else301

if.end8:                                          ; preds = %if.then4.if.end8_crit_edge, %while.cond.if.end8_crit_edge
  %17 = ptrtoint ptr %next_log_block to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %next_log_block, align 4
  %19 = ptrtoint ptr %j_format_version.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %j_format_version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.i = icmp sgt i32 %20, 1
  br i1 %cmp.i, label %jbd2_has_feature_fast_commit.exit, label %if.end8.jbd2_has_feature_fast_commit.exit.thread_crit_edge

if.end8.jbd2_has_feature_fast_commit.exit.thread_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_has_feature_fast_commit.exit.thread

jbd2_has_feature_fast_commit.exit:                ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %j_superblock to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %j_superblock, align 4
  %s_feature_incompat.i = getelementptr inbounds %struct.journal_superblock_s, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %s_feature_incompat.i, align 4
  %and.i = and i32 %24, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp1.i.not = icmp eq i32 %and.i, 0
  %spec.select773 = select i1 %cmp1.i.not, ptr %j_last706, ptr %j_fc_last705
  br label %jbd2_has_feature_fast_commit.exit.thread

jbd2_has_feature_fast_commit.exit.thread:         ; preds = %jbd2_has_feature_fast_commit.exit, %if.end8.jbd2_has_feature_fast_commit.exit.thread_crit_edge
  %25 = phi ptr [ %spec.select773, %jbd2_has_feature_fast_commit.exit ], [ %j_last706, %if.end8.jbd2_has_feature_fast_commit.exit.thread_crit_edge ]
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %cond = load i32, ptr %25, align 4
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.do_one_pass, i32 noundef 516, ptr noundef nonnull @.str.10, i32 noundef %next_commit_ID.0, i32 noundef %18, i32 noundef %cond) #8
  %27 = ptrtoint ptr %next_log_block to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %next_log_block, align 4
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 3, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.do_one_pass, i32 noundef 522, ptr noundef nonnull @.str.11, i32 noundef %28) #8
  %call10 = call fastcc i32 @jread(ptr noundef nonnull %bh, ptr noundef %journal, i32 noundef %28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %jbd2_has_feature_fast_commit.exit.thread.cleanup285.thread759_crit_edge

jbd2_has_feature_fast_commit.exit.thread.cleanup285.thread759_crit_edge: ; preds = %jbd2_has_feature_fast_commit.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup285.thread759

if.end13:                                         ; preds = %jbd2_has_feature_fast_commit.exit.thread
  %29 = ptrtoint ptr %next_log_block to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %next_log_block, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr %next_log_block, align 4
  %31 = ptrtoint ptr %j_format_version.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %j_format_version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp.i515 = icmp sgt i32 %32, 1
  br i1 %cmp.i515, label %jbd2_has_feature_fast_commit.exit521, label %if.end13.jbd2_has_feature_fast_commit.exit521.thread_crit_edge

if.end13.jbd2_has_feature_fast_commit.exit521.thread_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_has_feature_fast_commit.exit521.thread

jbd2_has_feature_fast_commit.exit521:             ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %j_superblock to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %j_superblock, align 4
  %s_feature_incompat.i517 = getelementptr inbounds %struct.journal_superblock_s, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %s_feature_incompat.i517 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %s_feature_incompat.i517, align 4
  %and.i518 = and i32 %36, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i518)
  %cmp1.i519.not = icmp eq i32 %and.i518, 0
  %spec.select774 = select i1 %cmp1.i519.not, ptr %j_last706, ptr %j_fc_last705
  br label %jbd2_has_feature_fast_commit.exit521.thread

jbd2_has_feature_fast_commit.exit521.thread:      ; preds = %jbd2_has_feature_fast_commit.exit521, %if.end13.jbd2_has_feature_fast_commit.exit521.thread_crit_edge
  %37 = phi ptr [ %j_last706, %if.end13.jbd2_has_feature_fast_commit.exit521.thread_crit_edge ], [ %spec.select774, %jbd2_has_feature_fast_commit.exit521 ]
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %cond20 = load i32, ptr %37, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %cond20)
  %cmp21.not = icmp ult i32 %inc, %cond20
  br i1 %cmp21.not, label %jbd2_has_feature_fast_commit.exit521.thread.if.end24_crit_edge, label %if.then22

jbd2_has_feature_fast_commit.exit521.thread.if.end24_crit_edge: ; preds = %jbd2_has_feature_fast_commit.exit521.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then22:                                        ; preds = %jbd2_has_feature_fast_commit.exit521.thread
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %j_first to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %j_first, align 8
  %sub.neg = sub i32 %inc, %cond20
  %sub23 = add i32 %sub.neg, %40
  %41 = ptrtoint ptr %next_log_block to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %sub23, ptr %next_log_block, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %jbd2_has_feature_fast_commit.exit521.thread.if.end24_crit_edge
  %42 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %b_data, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1069860456, i32 %47)
  %cmp25.not = icmp eq i32 %47, -1069860456
  br i1 %cmp25.not, label %if.end27, label %if.then26

if.then26:                                        ; preds = %if.end24
  %tobool.not.i522 = icmp eq ptr %43, null
  br i1 %tobool.not.i522, label %if.then26.done_crit_edge, label %if.then26.done.sink.split_crit_edge

if.then26.done.sink.split_crit_edge:              ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %done.sink.split

if.then26.done_crit_edge:                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end27:                                         ; preds = %if.end24
  %h_blocktype = getelementptr inbounds %struct.journal_header_s, ptr %45, i32 0, i32 1
  %48 = ptrtoint ptr %h_blocktype to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %h_blocktype, align 4
  %h_sequence = getelementptr inbounds %struct.journal_header_s, ptr %45, i32 0, i32 2
  %50 = ptrtoint ptr %h_sequence to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %h_sequence, align 4
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 3, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.do_one_pass, i32 noundef 546, ptr noundef nonnull @.str.12, i32 noundef %49, i32 noundef %51) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %next_commit_ID.0)
  %cmp28.not = icmp eq i32 %51, %next_commit_ID.0
  br i1 %cmp28.not, label %if.end30, label %if.then29

if.then29:                                        ; preds = %if.end27
  %52 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bh, align 4
  %tobool.not.i524 = icmp eq ptr %53, null
  br i1 %tobool.not.i524, label %if.then29.done_crit_edge, label %if.then29.done.sink.split_crit_edge

if.then29.done.sink.split_crit_edge:              ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %done.sink.split

if.then29.done_crit_edge:                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end30:                                         ; preds = %if.end27
  %54 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values)
  switch i32 %49, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb190
    i32 5, label %sw.bb268
  ]

sw.bb:                                            ; preds = %if.end30
  %55 = ptrtoint ptr %j_format_version.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %j_format_version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp.i.i.i = icmp sgt i32 %56, 1
  br i1 %cmp.i.i.i, label %jbd2_has_feature_csum2.exit.i.i, label %sw.bb.jbd2_journal_has_csum_v2or3.exit_crit_edge

sw.bb.jbd2_journal_has_csum_v2or3.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_journal_has_csum_v2or3.exit

jbd2_has_feature_csum2.exit.i.i:                  ; preds = %sw.bb
  %57 = ptrtoint ptr %j_superblock to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %j_superblock, align 4
  %s_feature_incompat.i.i.i = getelementptr inbounds %struct.journal_superblock_s, ptr %58, i32 0, i32 8
  %59 = ptrtoint ptr %s_feature_incompat.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %s_feature_incompat.i.i.i, align 4
  %61 = and i32 %60, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %.not.i = icmp eq i32 %61, 0
  br i1 %.not.i, label %jbd2_has_feature_csum2.exit.i.i.jbd2_journal_has_csum_v2or3.exit_crit_edge, label %land.rhs.i528

jbd2_has_feature_csum2.exit.i.i.jbd2_journal_has_csum_v2or3.exit_crit_edge: ; preds = %jbd2_has_feature_csum2.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_journal_has_csum_v2or3.exit

land.rhs.i528:                                    ; preds = %jbd2_has_feature_csum2.exit.i.i
  %62 = ptrtoint ptr %j_chksum_driver.i.i658 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %j_chksum_driver.i.i658, align 8
  %cmp.i527 = icmp eq ptr %63, null
  br i1 %cmp.i527, label %land.rhs2.i, label %land.rhs.i528.jbd2_journal_has_csum_v2or3.exit_crit_edge

land.rhs.i528.jbd2_journal_has_csum_v2or3.exit_crit_edge: ; preds = %land.rhs.i528
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_journal_has_csum_v2or3.exit

land.rhs2.i:                                      ; preds = %land.rhs.i528
  %.b43.i = load i1, ptr @jbd2_journal_has_csum_v2or3.__already_done, align 1
  br i1 %.b43.i, label %land.rhs2.i.jbd2_journal_has_csum_v2or3.exit_crit_edge, label %if.then.i529, !prof !102

land.rhs2.i.jbd2_journal_has_csum_v2or3.exit_crit_edge: ; preds = %land.rhs2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_journal_has_csum_v2or3.exit

if.then.i529:                                     ; preds = %land.rhs2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @jbd2_journal_has_csum_v2or3.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 1735, i32 noundef 9, ptr noundef null) #8
  br label %jbd2_journal_has_csum_v2or3.exit

jbd2_journal_has_csum_v2or3.exit:                 ; preds = %if.then.i529, %land.rhs2.i.jbd2_journal_has_csum_v2or3.exit_crit_edge, %land.rhs.i528.jbd2_journal_has_csum_v2or3.exit_crit_edge, %jbd2_has_feature_csum2.exit.i.i.jbd2_journal_has_csum_v2or3.exit_crit_edge, %sw.bb.jbd2_journal_has_csum_v2or3.exit_crit_edge
  %64 = ptrtoint ptr %j_chksum_driver.i.i658 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %j_chksum_driver.i.i658, align 8
  %cmp38.i.not = icmp eq ptr %65, null
  %spec.select = select i1 %cmp38.i.not, i32 %descr_csum_size.0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp35 = icmp sgt i32 %spec.select, 0
  br i1 %cmp35, label %land.lhs.true, label %jbd2_journal_has_csum_v2or3.exit.if.end48_crit_edge

jbd2_journal_has_csum_v2or3.exit.if.end48_crit_edge: ; preds = %jbd2_journal_has_csum_v2or3.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

land.lhs.true:                                    ; preds = %jbd2_journal_has_csum_v2or3.exit
  %66 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bh, align 4
  %b_data36 = getelementptr inbounds %struct.buffer_head, ptr %67, i32 0, i32 5
  %68 = ptrtoint ptr %b_data36 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %b_data36, align 4
  %call37 = call fastcc i32 @jbd2_descriptor_block_csum_verify(ptr noundef %journal, ptr noundef %69)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then39, label %land.lhs.true.if.end48_crit_edge

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then39:                                        ; preds = %land.lhs.true
  %70 = ptrtoint ptr %next_log_block to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %next_log_block, align 4
  br i1 %cmp, label %if.then50.thread, label %do.end44

do.end44:                                         ; preds = %if.then39
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %71) #11
  %72 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bh, align 4
  %tobool.not.i530 = icmp eq ptr %73, null
  br i1 %tobool.not.i530, label %do.end44.cleanup285.thread759_crit_edge, label %do.end44.cleanup285.thread759.sink.split_crit_edge

do.end44.cleanup285.thread759.sink.split_crit_edge: ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup285.thread759.sink.split

do.end44.cleanup285.thread759_crit_edge:          ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup285.thread759

if.then50.thread:                                 ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.do_one_pass, i32 noundef 580, ptr noundef nonnull @.str.14, i32 noundef %71) #8
  br label %land.lhs.true52

if.end48:                                         ; preds = %land.lhs.true.if.end48_crit_edge, %jbd2_journal_has_csum_v2or3.exit.if.end48_crit_edge
  br i1 %cmp49.not, label %if.end83, label %if.then50

if.then50:                                        ; preds = %if.end48
  br i1 %cmp, label %if.then50.land.lhs.true52_crit_edge, label %if.then50.if.end64_crit_edge

if.then50.if.end64_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then50.land.lhs.true52_crit_edge:              ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true52

land.lhs.true52:                                  ; preds = %if.then50.land.lhs.true52_crit_edge, %if.then50.thread
  %need_check_commit_time.1.off0711715 = phi i1 [ true, %if.then50.thread ], [ %need_check_commit_time.0.off0, %if.then50.land.lhs.true52_crit_edge ]
  %74 = ptrtoint ptr %j_format_version.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %j_format_version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %75)
  %cmp.i534 = icmp sgt i32 %75, 1
  br i1 %cmp.i534, label %jbd2_has_feature_checksum.exit, label %land.lhs.true52.if.end64_crit_edge

land.lhs.true52.if.end64_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

jbd2_has_feature_checksum.exit:                   ; preds = %land.lhs.true52
  %76 = ptrtoint ptr %j_superblock to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %j_superblock, align 4
  %s_feature_compat.i = getelementptr inbounds %struct.journal_superblock_s, ptr %77, i32 0, i32 7
  %78 = ptrtoint ptr %s_feature_compat.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %s_feature_compat.i, align 4
  %and.i536 = and i32 %79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i536)
  %cmp1.i537.not = icmp eq i32 %and.i536, 0
  %brmerge = select i1 %cmp1.i537.not, i1 true, i1 %need_check_commit_time.1.off0711715
  br i1 %brmerge, label %jbd2_has_feature_checksum.exit.if.end64_crit_edge, label %land.lhs.true56

jbd2_has_feature_checksum.exit.if.end64_crit_edge: ; preds = %jbd2_has_feature_checksum.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

land.lhs.true56:                                  ; preds = %jbd2_has_feature_checksum.exit
  %80 = ptrtoint ptr %end_transaction to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %end_transaction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool58.not = icmp eq i32 %81, 0
  br i1 %tobool58.not, label %if.then59, label %land.lhs.true56.if.end64_crit_edge

land.lhs.true56.if.end64_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then59:                                        ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %bh, align 4
  %call60 = call fastcc i32 @calc_chksums(ptr noundef %journal, ptr noundef %83, ptr noundef nonnull %next_log_block, ptr noundef nonnull %crc32_sum)
  %84 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bh, align 4
  call fastcc void @put_bh(ptr noundef %85)
  br label %cleanup285

if.end64:                                         ; preds = %land.lhs.true56.if.end64_crit_edge, %jbd2_has_feature_checksum.exit.if.end64_crit_edge, %land.lhs.true52.if.end64_crit_edge, %if.then50.if.end64_crit_edge
  %need_check_commit_time.1.off0712 = phi i1 [ %need_check_commit_time.1.off0711715, %jbd2_has_feature_checksum.exit.if.end64_crit_edge ], [ false, %land.lhs.true56.if.end64_crit_edge ], [ %need_check_commit_time.0.off0, %if.then50.if.end64_crit_edge ], [ %need_check_commit_time.1.off0711715, %land.lhs.true52.if.end64_crit_edge ]
  %86 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %bh, align 4
  %88 = ptrtoint ptr %j_blocksize.i667 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %j_blocksize.i667, align 8
  %call.i539 = call i32 @journal_tag_bytes(ptr noundef %journal) #8
  %90 = ptrtoint ptr %j_format_version.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %j_format_version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %91)
  %cmp.i.i.i.i = icmp sgt i32 %91, 1
  br i1 %cmp.i.i.i.i, label %jbd2_has_feature_csum2.exit.i.i.i, label %if.end64.jbd2_journal_has_csum_v2or3.exit.i_crit_edge

if.end64.jbd2_journal_has_csum_v2or3.exit.i_crit_edge: ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_journal_has_csum_v2or3.exit.i

jbd2_has_feature_csum2.exit.i.i.i:                ; preds = %if.end64
  %92 = ptrtoint ptr %j_superblock to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %j_superblock, align 4
  %s_feature_incompat.i.i.i.i = getelementptr inbounds %struct.journal_superblock_s, ptr %93, i32 0, i32 8
  %94 = ptrtoint ptr %s_feature_incompat.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %s_feature_incompat.i.i.i.i, align 4
  %96 = and i32 %95, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %.not.i.i = icmp eq i32 %96, 0
  br i1 %.not.i.i, label %jbd2_has_feature_csum2.exit.i.i.i.jbd2_journal_has_csum_v2or3.exit.i_crit_edge, label %land.rhs.i.i

jbd2_has_feature_csum2.exit.i.i.i.jbd2_journal_has_csum_v2or3.exit.i_crit_edge: ; preds = %jbd2_has_feature_csum2.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_journal_has_csum_v2or3.exit.i

land.rhs.i.i:                                     ; preds = %jbd2_has_feature_csum2.exit.i.i.i
  %97 = ptrtoint ptr %j_chksum_driver.i.i658 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %j_chksum_driver.i.i658, align 8
  %cmp.i.i = icmp eq ptr %98, null
  br i1 %cmp.i.i, label %land.rhs2.i.i, label %land.rhs.i.i.jbd2_journal_has_csum_v2or3.exit.i_crit_edge

land.rhs.i.i.jbd2_journal_has_csum_v2or3.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_journal_has_csum_v2or3.exit.i

land.rhs2.i.i:                                    ; preds = %land.rhs.i.i
  %.b43.i.i = load i1, ptr @jbd2_journal_has_csum_v2or3.__already_done, align 1
  br i1 %.b43.i.i, label %land.rhs2.i.i.jbd2_journal_has_csum_v2or3.exit.i_crit_edge, label %if.then.i.i, !prof !102

land.rhs2.i.i.jbd2_journal_has_csum_v2or3.exit.i_crit_edge: ; preds = %land.rhs2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_journal_has_csum_v2or3.exit.i

if.then.i.i:                                      ; preds = %land.rhs2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @jbd2_journal_has_csum_v2or3.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 1735, i32 noundef 9, ptr noundef null) #8
  br label %jbd2_journal_has_csum_v2or3.exit.i

jbd2_journal_has_csum_v2or3.exit.i:               ; preds = %if.then.i.i, %land.rhs2.i.i.jbd2_journal_has_csum_v2or3.exit.i_crit_edge, %land.rhs.i.i.jbd2_journal_has_csum_v2or3.exit.i_crit_edge, %jbd2_has_feature_csum2.exit.i.i.i.jbd2_journal_has_csum_v2or3.exit.i_crit_edge, %if.end64.jbd2_journal_has_csum_v2or3.exit.i_crit_edge
  %99 = ptrtoint ptr %j_chksum_driver.i.i658 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %j_chksum_driver.i.i658, align 8
  %cmp38.i.not.i = icmp eq ptr %100, null
  %sub.i = add i32 %89, -4
  %spec.select.i = select i1 %cmp38.i.not.i, i32 %89, i32 %sub.i
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %87, i32 0, i32 5
  %101 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %b_data.i, align 4
  %arrayidx.i = getelementptr i8, ptr %102, i32 12
  %sub.ptr.rhs.cast.i = ptrtoint ptr %102 to i32
  %sub.ptr.sub.i = sub i32 %call.i539, %sub.ptr.rhs.cast.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %jbd2_journal_has_csum_v2or3.exit.i
  %tagp.0.i = phi ptr [ %arrayidx.i, %jbd2_journal_has_csum_v2or3.exit.i ], [ %spec.select23.i, %while.body.i.while.cond.i_crit_edge ]
  %nr.0.i = phi i32 [ 0, %jbd2_journal_has_csum_v2or3.exit.i ], [ %inc.i, %while.body.i.while.cond.i_crit_edge ]
  %sub.ptr.lhs.cast.i = ptrtoint ptr %tagp.0.i to i32
  %add.i = add i32 %sub.ptr.sub.i, %sub.ptr.lhs.cast.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %spec.select.i)
  %cmp.not.i = icmp sgt i32 %add.i, %spec.select.i
  br i1 %cmp.not.i, label %while.cond.i.count_tags.exit_crit_edge, label %while.body.i

while.cond.i.count_tags.exit_crit_edge:           ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %count_tags.exit

while.body.i:                                     ; preds = %while.cond.i
  %tag.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %tagp.0.i, i32 6
  %103 = ptrtoint ptr %tag.sroa.5.0..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %103, i32 2)
  %tag.sroa.5.0.copyload.i = load i16, ptr %tag.sroa.5.0..sroa_idx.i, align 1
  %inc.i = add i32 %nr.0.i, 1
  %add.ptr.i = getelementptr i8, ptr %tagp.0.i, i32 %call.i539
  %conv.i540 = zext i16 %tag.sroa.5.0.copyload.i to i32
  %and.i541 = shl nuw nsw i32 %conv.i540, 3
  %104 = and i32 %and.i541, 16
  %105 = xor i32 %104, 16
  %spec.select23.i = getelementptr i8, ptr %add.ptr.i, i32 %105
  %and9.i = and i32 %conv.i540, 8
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %while.body.i.while.cond.i_crit_edge, label %while.body.i.count_tags.exit_crit_edge

while.body.i.count_tags.exit_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %count_tags.exit

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

count_tags.exit:                                  ; preds = %while.body.i.count_tags.exit_crit_edge, %while.cond.i.count_tags.exit_crit_edge
  %nr.1.i = phi i32 [ %inc.i, %while.body.i.count_tags.exit_crit_edge ], [ %nr.0.i, %while.cond.i.count_tags.exit_crit_edge ]
  %106 = ptrtoint ptr %next_log_block to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %next_log_block, align 4
  %add = add i32 %107, %nr.1.i
  store i32 %add, ptr %next_log_block, align 4
  %108 = ptrtoint ptr %j_format_version.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %j_format_version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %109)
  %cmp.i543 = icmp sgt i32 %109, 1
  br i1 %cmp.i543, label %jbd2_has_feature_fast_commit.exit549, label %count_tags.exit.jbd2_has_feature_fast_commit.exit549.thread_crit_edge

count_tags.exit.jbd2_has_feature_fast_commit.exit549.thread_crit_edge: ; preds = %count_tags.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_has_feature_fast_commit.exit549.thread

jbd2_has_feature_fast_commit.exit549:             ; preds = %count_tags.exit
  call void @__sanitizer_cov_trace_pc() #10
  %110 = ptrtoint ptr %j_superblock to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %j_superblock, align 4
  %s_feature_incompat.i545 = getelementptr inbounds %struct.journal_superblock_s, ptr %111, i32 0, i32 8
  %112 = ptrtoint ptr %s_feature_incompat.i545 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %s_feature_incompat.i545, align 4
  %and.i546 = and i32 %113, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i546)
  %cmp1.i547.not = icmp eq i32 %and.i546, 0
  %spec.select775 = select i1 %cmp1.i547.not, ptr %j_last706, ptr %j_fc_last705
  br label %jbd2_has_feature_fast_commit.exit549.thread

jbd2_has_feature_fast_commit.exit549.thread:      ; preds = %jbd2_has_feature_fast_commit.exit549, %count_tags.exit.jbd2_has_feature_fast_commit.exit549.thread_crit_edge
  %114 = phi ptr [ %j_last706, %count_tags.exit.jbd2_has_feature_fast_commit.exit549.thread_crit_edge ], [ %spec.select775, %jbd2_has_feature_fast_commit.exit549 ]
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %cond74 = load i32, ptr %114, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %cond74)
  %cmp75.not = icmp ult i32 %add, %cond74
  br i1 %cmp75.not, label %jbd2_has_feature_fast_commit.exit549.thread.if.end80_crit_edge, label %if.then76

jbd2_has_feature_fast_commit.exit549.thread.if.end80_crit_edge: ; preds = %jbd2_has_feature_fast_commit.exit549.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

if.then76:                                        ; preds = %jbd2_has_feature_fast_commit.exit549.thread
  call void @__sanitizer_cov_trace_pc() #10
  %116 = ptrtoint ptr %j_first to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %j_first, align 8
  %sub78.neg = sub i32 %add, %cond74
  %sub79 = add i32 %sub78.neg, %117
  %118 = ptrtoint ptr %next_log_block to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %sub79, ptr %next_log_block, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then76, %jbd2_has_feature_fast_commit.exit549.thread.if.end80_crit_edge
  %119 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %bh, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !103
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %120, i32 0, i32 11
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #8
  %121 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #8, !srcloc !104
  br label %cleanup285

if.end83:                                         ; preds = %if.end48
  %122 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %bh, align 4
  %b_data84 = getelementptr inbounds %struct.buffer_head, ptr %123, i32 0, i32 5
  %124 = ptrtoint ptr %b_data84 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %b_data84, align 4
  %arrayidx = getelementptr i8, ptr %125, i32 12
  %126 = ptrtoint ptr %next_log_block to i32
  call void @__asan_load4_noabort(i32 %126)
  %next_log_block.promoted = load i32, ptr %next_log_block, align 4
  br label %while.cond85

while.cond85:                                     ; preds = %skip_write.while.cond85_crit_edge, %if.end83
  %sub1071053 = phi i32 [ %next_log_block.promoted, %if.end83 ], [ %sub1071054, %skip_write.while.cond85_crit_edge ]
  %block_error.1 = phi i32 [ %block_error.0, %if.end83 ], [ %block_error.3, %skip_write.while.cond85_crit_edge ]
  %tagp.0 = phi ptr [ %arrayidx, %if.end83 ], [ %spec.select509, %skip_write.while.cond85_crit_edge ]
  %success.1 = phi i32 [ %success.0, %if.end83 ], [ %success.3, %skip_write.while.cond85_crit_edge ]
  %127 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %bh, align 4
  %b_data86 = getelementptr inbounds %struct.buffer_head, ptr %128, i32 0, i32 5
  %129 = ptrtoint ptr %b_data86 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %b_data86, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %tagp.0 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %130 to i32
  %sub.ptr.sub = add i32 %call, %sub.ptr.lhs.cast
  %add87 = sub i32 %sub.ptr.sub, %sub.ptr.rhs.cast
  %131 = ptrtoint ptr %j_blocksize.i667 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %j_blocksize.i667, align 8
  %sub88 = sub i32 %132, %spec.select
  call void @__sanitizer_cov_trace_cmp4(i32 %add87, i32 %sub88)
  %cmp89.not = icmp sgt i32 %add87, %sub88
  br i1 %cmp89.not, label %while.cond85.while.end_crit_edge, label %while.body90

while.cond85.while.end_crit_edge:                 ; preds = %while.cond85
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body90:                                     ; preds = %while.cond85
  %133 = ptrtoint ptr %tagp.0 to i32
  call void @__asan_loadN_noabort(i32 %133, i32 4)
  %tag.sroa.0.0.copyload = load i32, ptr %tagp.0, align 1
  %tag.sroa.5.0.tagp.0.sroa_idx = getelementptr inbounds i8, ptr %tagp.0, i32 4
  %134 = ptrtoint ptr %tag.sroa.5.0.tagp.0.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %134, i32 2)
  %tag.sroa.5.0.copyload = load i16, ptr %tag.sroa.5.0.tagp.0.sroa_idx, align 1
  %tag.sroa.7.0.tagp.0.sroa_idx = getelementptr inbounds i8, ptr %tagp.0, i32 6
  %135 = ptrtoint ptr %tag.sroa.7.0.tagp.0.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %135, i32 2)
  %tag.sroa.7.0.copyload = load i16, ptr %tag.sroa.7.0.tagp.0.sroa_idx, align 1
  %tag.sroa.9.0.tagp.0.sroa_idx = getelementptr inbounds i8, ptr %tagp.0, i32 8
  %136 = ptrtoint ptr %tag.sroa.9.0.tagp.0.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %136, i32 4)
  %tag.sroa.9.0.copyload = load i32, ptr %tag.sroa.9.0.tagp.0.sroa_idx, align 1
  %conv = zext i16 %tag.sroa.7.0.copyload to i32
  %inc91 = add i32 %sub1071053, 1
  %137 = ptrtoint ptr %j_format_version.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %j_format_version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %138)
  %cmp.i551 = icmp sgt i32 %138, 1
  br i1 %cmp.i551, label %jbd2_has_feature_fast_commit.exit557, label %while.body90.jbd2_has_feature_fast_commit.exit557.thread_crit_edge

while.body90.jbd2_has_feature_fast_commit.exit557.thread_crit_edge: ; preds = %while.body90
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_has_feature_fast_commit.exit557.thread

jbd2_has_feature_fast_commit.exit557:             ; preds = %while.body90
  call void @__sanitizer_cov_trace_pc() #10
  %139 = ptrtoint ptr %j_superblock to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %j_superblock, align 4
  %s_feature_incompat.i553 = getelementptr inbounds %struct.journal_superblock_s, ptr %140, i32 0, i32 8
  %141 = ptrtoint ptr %s_feature_incompat.i553 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %s_feature_incompat.i553, align 4
  %and.i554 = and i32 %142, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i554)
  %cmp1.i555.not = icmp eq i32 %and.i554, 0
  %spec.select776 = select i1 %cmp1.i555.not, ptr %j_last706, ptr %j_fc_last705
  br label %jbd2_has_feature_fast_commit.exit557.thread

jbd2_has_feature_fast_commit.exit557.thread:      ; preds = %jbd2_has_feature_fast_commit.exit557, %while.body90.jbd2_has_feature_fast_commit.exit557.thread_crit_edge
  %143 = phi ptr [ %j_last706, %while.body90.jbd2_has_feature_fast_commit.exit557.thread_crit_edge ], [ %spec.select776, %jbd2_has_feature_fast_commit.exit557 ]
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %cond101 = load i32, ptr %143, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc91, i32 %cond101)
  %cmp102.not = icmp ult i32 %inc91, %cond101
  br i1 %cmp102.not, label %jbd2_has_feature_fast_commit.exit557.thread.if.end108_crit_edge, label %if.then104

jbd2_has_feature_fast_commit.exit557.thread.if.end108_crit_edge: ; preds = %jbd2_has_feature_fast_commit.exit557.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end108

if.then104:                                       ; preds = %jbd2_has_feature_fast_commit.exit557.thread
  call void @__sanitizer_cov_trace_pc() #10
  %145 = ptrtoint ptr %j_first to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %j_first, align 8
  %sub106.neg = sub i32 %inc91, %cond101
  %sub107 = add i32 %sub106.neg, %146
  br label %if.end108

if.end108:                                        ; preds = %if.then104, %jbd2_has_feature_fast_commit.exit557.thread.if.end108_crit_edge
  %sub1071054 = phi i32 [ %sub107, %if.then104 ], [ %inc91, %jbd2_has_feature_fast_commit.exit557.thread.if.end108_crit_edge ]
  %call111 = call fastcc i32 @jread(ptr noundef nonnull %obh, ptr noundef %journal, i32 noundef %sub1071053)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.else, label %if.then113

if.then113:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  %call118 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call111, i32 noundef %sub1071053) #11
  br label %skip_write

if.else:                                          ; preds = %if.end108
  %147 = ptrtoint ptr %obh to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %obh, align 4
  %cmp120.not = icmp eq ptr %148, null
  br i1 %cmp120.not, label %do.body126, label %do.end134, !prof !105

do.body126:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %149 = ptrtoint ptr %next_log_block to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %sub1071054, ptr %next_log_block, align 4
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/recovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 633, 0\0A.popsection", ""() #8, !srcloc !106
  unreachable

do.end134:                                        ; preds = %if.else
  %conv.i558 = zext i32 %tag.sroa.0.0.copyload to i64
  %150 = ptrtoint ptr %j_format_version.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %j_format_version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %151)
  %cmp.i.i559 = icmp sgt i32 %151, 1
  br i1 %cmp.i.i559, label %jbd2_has_feature_64bit.exit.i, label %do.end134.read_tag_block.exit_crit_edge

do.end134.read_tag_block.exit_crit_edge:          ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #10
  br label %read_tag_block.exit

jbd2_has_feature_64bit.exit.i:                    ; preds = %do.end134
  %152 = ptrtoint ptr %j_superblock to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %j_superblock, align 4
  %s_feature_incompat.i.i = getelementptr inbounds %struct.journal_superblock_s, ptr %153, i32 0, i32 8
  %154 = ptrtoint ptr %s_feature_incompat.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %s_feature_incompat.i.i, align 4
  %and.i.i = and i32 %155, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp1.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp1.i.not.i, label %jbd2_has_feature_64bit.exit.i.read_tag_block.exit_crit_edge, label %if.then.i560

jbd2_has_feature_64bit.exit.i.read_tag_block.exit_crit_edge: ; preds = %jbd2_has_feature_64bit.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %read_tag_block.exit

if.then.i560:                                     ; preds = %jbd2_has_feature_64bit.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i = zext i32 %tag.sroa.9.0.copyload to i64
  %shl.i = shl nuw i64 %conv1.i, 32
  %or.i = or i64 %shl.i, %conv.i558
  br label %read_tag_block.exit

read_tag_block.exit:                              ; preds = %if.then.i560, %jbd2_has_feature_64bit.exit.i.read_tag_block.exit_crit_edge, %do.end134.read_tag_block.exit_crit_edge
  %block.0.i = phi i64 [ %or.i, %if.then.i560 ], [ %conv.i558, %jbd2_has_feature_64bit.exit.i.read_tag_block.exit_crit_edge ], [ %conv.i558, %do.end134.read_tag_block.exit_crit_edge ]
  %call136 = call i32 @jbd2_journal_test_revoke(ptr noundef %journal, i64 noundef %block.0.i, i32 noundef %next_commit_ID.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %if.end140, label %brelse.exit563

brelse.exit563:                                   ; preds = %read_tag_block.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %148) #8
  %156 = ptrtoint ptr %nr_revoke_hits to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %nr_revoke_hits, align 4
  %inc139 = add i32 %157, 1
  store i32 %inc139, ptr %nr_revoke_hits, align 4
  br label %skip_write

if.end140:                                        ; preds = %read_tag_block.exit
  %b_data141 = getelementptr inbounds %struct.buffer_head, ptr %148, i32 0, i32 5
  %158 = ptrtoint ptr %b_data141 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %b_data141, align 4
  %160 = ptrtoint ptr %h_sequence to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %h_sequence, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %seq.i) #8
  %162 = ptrtoint ptr %j_format_version.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %j_format_version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %163)
  %cmp.i.i.i.i565 = icmp sgt i32 %163, 1
  br i1 %cmp.i.i.i.i565, label %jbd2_has_feature_csum2.exit.i.i.i569, label %if.end140.jbd2_journal_has_csum_v2or3.exit.i578_crit_edge

if.end140.jbd2_journal_has_csum_v2or3.exit.i578_crit_edge: ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_journal_has_csum_v2or3.exit.i578

jbd2_has_feature_csum2.exit.i.i.i569:             ; preds = %if.end140
  %164 = ptrtoint ptr %j_superblock to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %j_superblock, align 4
  %s_feature_incompat.i.i.i.i567 = getelementptr inbounds %struct.journal_superblock_s, ptr %165, i32 0, i32 8
  %166 = ptrtoint ptr %s_feature_incompat.i.i.i.i567 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %s_feature_incompat.i.i.i.i567, align 4
  %168 = and i32 %167, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %.not.i.i568 = icmp eq i32 %168, 0
  br i1 %.not.i.i568, label %jbd2_has_feature_csum2.exit.i.i.i569.jbd2_journal_has_csum_v2or3.exit.i578_crit_edge, label %land.rhs.i.i572

jbd2_has_feature_csum2.exit.i.i.i569.jbd2_journal_has_csum_v2or3.exit.i578_crit_edge: ; preds = %jbd2_has_feature_csum2.exit.i.i.i569
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_journal_has_csum_v2or3.exit.i578

land.rhs.i.i572:                                  ; preds = %jbd2_has_feature_csum2.exit.i.i.i569
  %169 = ptrtoint ptr %j_chksum_driver.i.i658 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %j_chksum_driver.i.i658, align 8
  %cmp.i.i571 = icmp eq ptr %170, null
  br i1 %cmp.i.i571, label %land.rhs2.i.i574, label %land.rhs.i.i572.if.end.i_crit_edge

land.rhs.i.i572.if.end.i_crit_edge:               ; preds = %land.rhs.i.i572
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.rhs2.i.i574:                                 ; preds = %land.rhs.i.i572
  %.b43.i.i573 = load i1, ptr @jbd2_journal_has_csum_v2or3.__already_done, align 1
  br i1 %.b43.i.i573, label %land.rhs2.i.i574.jbd2_block_tag_csum_verify.exit.thread_crit_edge, label %if.then.i.i575, !prof !102

land.rhs2.i.i574.jbd2_block_tag_csum_verify.exit.thread_crit_edge: ; preds = %land.rhs2.i.i574
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_block_tag_csum_verify.exit.thread

if.then.i.i575:                                   ; preds = %land.rhs2.i.i574
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @jbd2_journal_has_csum_v2or3.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 1735, i32 noundef 9, ptr noundef null) #8
  br label %jbd2_journal_has_csum_v2or3.exit.i578

jbd2_journal_has_csum_v2or3.exit.i578:            ; preds = %if.then.i.i575, %jbd2_has_feature_csum2.exit.i.i.i569.jbd2_journal_has_csum_v2or3.exit.i578_crit_edge, %if.end140.jbd2_journal_has_csum_v2or3.exit.i578_crit_edge
  %171 = ptrtoint ptr %j_chksum_driver.i.i658 to i32
  call void @__asan_load4_noabort(i32 %171)
  %.pr = load ptr, ptr %j_chksum_driver.i.i658, align 8
  %cmp38.i.not.i577 = icmp eq ptr %.pr, null
  br i1 %cmp38.i.not.i577, label %jbd2_journal_has_csum_v2or3.exit.i578.jbd2_block_tag_csum_verify.exit.thread_crit_edge, label %jbd2_journal_has_csum_v2or3.exit.i578.if.end.i_crit_edge

jbd2_journal_has_csum_v2or3.exit.i578.if.end.i_crit_edge: ; preds = %jbd2_journal_has_csum_v2or3.exit.i578
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

jbd2_journal_has_csum_v2or3.exit.i578.jbd2_block_tag_csum_verify.exit.thread_crit_edge: ; preds = %jbd2_journal_has_csum_v2or3.exit.i578
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_block_tag_csum_verify.exit.thread

if.end.i:                                         ; preds = %jbd2_journal_has_csum_v2or3.exit.i578.if.end.i_crit_edge, %land.rhs.i.i572.if.end.i_crit_edge
  %172 = phi ptr [ %.pr, %jbd2_journal_has_csum_v2or3.exit.i578.if.end.i_crit_edge ], [ %170, %land.rhs.i.i572.if.end.i_crit_edge ]
  %173 = ptrtoint ptr %seq.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %161, ptr %seq.i, align 4
  %174 = ptrtoint ptr %j_csum_seed.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %j_csum_seed.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i.i) #8
  %176 = call ptr @memset(ptr %desc.i.i, i32 255, i32 16)
  %177 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %172, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %178)
  %cmp.i20.i = icmp ugt i32 %178, 4
  br i1 %cmp.i20.i, label %do.body2.i.i, label %do.end7.i.i, !prof !105

do.body2.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %179 = ptrtoint ptr %next_log_block to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %sub1071054, ptr %next_log_block, align 4
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/jbd2.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1787, 0\0A.popsection", ""() #8, !srcloc !107
  unreachable

do.end7.i.i:                                      ; preds = %if.end.i
  %180 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %172, ptr %desc.i.i, align 8
  %181 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %175, ptr %10, align 8
  %call10.i.i = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i.i, ptr noundef nonnull %seq.i, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool12.not.i.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool12.not.i.i, label %jbd2_chksum.exit.i, label %do.body20.i.i, !prof !102

do.body20.i.i:                                    ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %182 = ptrtoint ptr %next_log_block to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %sub1071054, ptr %next_log_block, align 4
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/jbd2.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1793, 0\0A.popsection", ""() #8, !srcloc !108
  unreachable

jbd2_chksum.exit.i:                               ; preds = %do.end7.i.i
  %183 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %10, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i.i) #8
  %185 = ptrtoint ptr %j_blocksize.i667 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %j_blocksize.i667, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i21.i) #8
  %187 = call ptr @memset(ptr %desc.i21.i, i32 255, i32 16)
  %188 = ptrtoint ptr %j_chksum_driver.i.i658 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %j_chksum_driver.i.i658, align 8
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %189, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %191)
  %cmp.i23.i = icmp ugt i32 %191, 4
  br i1 %cmp.i23.i, label %do.body2.i24.i, label %do.end7.i27.i, !prof !105

do.body2.i24.i:                                   ; preds = %jbd2_chksum.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %192 = ptrtoint ptr %next_log_block to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %sub1071054, ptr %next_log_block, align 4
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/jbd2.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1787, 0\0A.popsection", ""() #8, !srcloc !107
  unreachable

do.end7.i27.i:                                    ; preds = %jbd2_chksum.exit.i
  %193 = ptrtoint ptr %desc.i21.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %189, ptr %desc.i21.i, align 8
  %194 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %184, ptr %11, align 8
  %call10.i25.i = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i21.i, ptr noundef %159, i32 noundef %186) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i25.i)
  %tobool12.not.i26.i = icmp eq i32 %call10.i25.i, 0
  br i1 %tobool12.not.i26.i, label %jbd2_chksum.exit29.i, label %do.body20.i28.i, !prof !102

do.body20.i28.i:                                  ; preds = %do.end7.i27.i
  call void @__sanitizer_cov_trace_pc() #10
  %195 = ptrtoint ptr %next_log_block to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %sub1071054, ptr %next_log_block, align 4
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/jbd2.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1793, 0\0A.popsection", ""() #8, !srcloc !108
  unreachable

jbd2_chksum.exit29.i:                             ; preds = %do.end7.i27.i
  %196 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %11, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i21.i) #8
  %198 = ptrtoint ptr %j_format_version.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %j_format_version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %199)
  %cmp.i30.i = icmp sgt i32 %199, 1
  br i1 %cmp.i30.i, label %jbd2_has_feature_csum3.exit.i, label %jbd2_chksum.exit29.i.jbd2_block_tag_csum_verify.exit_crit_edge

jbd2_chksum.exit29.i.jbd2_block_tag_csum_verify.exit_crit_edge: ; preds = %jbd2_chksum.exit29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_block_tag_csum_verify.exit

jbd2_has_feature_csum3.exit.i:                    ; preds = %jbd2_chksum.exit29.i
  %200 = ptrtoint ptr %j_superblock to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %j_superblock, align 4
  %s_feature_incompat.i.i581 = getelementptr inbounds %struct.journal_superblock_s, ptr %201, i32 0, i32 8
  %202 = ptrtoint ptr %s_feature_incompat.i.i581 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %s_feature_incompat.i.i581, align 4
  %and.i.i582 = and i32 %203, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i582)
  %cmp1.i.not.i583 = icmp eq i32 %and.i.i582, 0
  br i1 %cmp1.i.not.i583, label %jbd2_has_feature_csum3.exit.i.jbd2_block_tag_csum_verify.exit_crit_edge, label %if.then4.i

jbd2_has_feature_csum3.exit.i.jbd2_block_tag_csum_verify.exit_crit_edge: ; preds = %jbd2_has_feature_csum3.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_block_tag_csum_verify.exit

if.then4.i:                                       ; preds = %jbd2_has_feature_csum3.exit.i
  %t_checksum.i = getelementptr inbounds %struct.journal_block_tag3_s, ptr %tagp.0, i32 0, i32 3
  %204 = ptrtoint ptr %t_checksum.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %t_checksum.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %205, i32 %197)
  %cmp.i584 = icmp eq i32 %205, %197
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %seq.i) #8
  br i1 %cmp.i584, label %if.then4.i.if.end151_crit_edge, label %if.then4.i.brelse.exit588_crit_edge

if.then4.i.brelse.exit588_crit_edge:              ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit588

if.then4.i.if.end151_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end151

jbd2_block_tag_csum_verify.exit.thread:           ; preds = %jbd2_journal_has_csum_v2or3.exit.i578.jbd2_block_tag_csum_verify.exit.thread_crit_edge, %land.rhs2.i.i574.jbd2_block_tag_csum_verify.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %seq.i) #8
  br label %if.end151

jbd2_block_tag_csum_verify.exit:                  ; preds = %jbd2_has_feature_csum3.exit.i.jbd2_block_tag_csum_verify.exit_crit_edge, %jbd2_chksum.exit29.i.jbd2_block_tag_csum_verify.exit_crit_edge
  %206 = trunc i32 %197 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %tag.sroa.5.0.copyload, i16 %206)
  %cmp9.i = icmp eq i16 %tag.sroa.5.0.copyload, %206
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %seq.i) #8
  br i1 %cmp9.i, label %jbd2_block_tag_csum_verify.exit.if.end151_crit_edge, label %jbd2_block_tag_csum_verify.exit.brelse.exit588_crit_edge

jbd2_block_tag_csum_verify.exit.brelse.exit588_crit_edge: ; preds = %jbd2_block_tag_csum_verify.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit588

jbd2_block_tag_csum_verify.exit.if.end151_crit_edge: ; preds = %jbd2_block_tag_csum_verify.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end151

brelse.exit588:                                   ; preds = %jbd2_block_tag_csum_verify.exit.brelse.exit588_crit_edge, %if.then4.i.brelse.exit588_crit_edge
  call void @__brelse(ptr noundef nonnull %148) #8
  %call150 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i64 noundef %block.0.i) #11
  br label %skip_write

if.end151:                                        ; preds = %jbd2_block_tag_csum_verify.exit.if.end151_crit_edge, %jbd2_block_tag_csum_verify.exit.thread, %if.then4.i.if.end151_crit_edge
  %207 = ptrtoint ptr %j_fs_dev to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %j_fs_dev, align 8
  %209 = ptrtoint ptr %j_blocksize.i667 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %j_blocksize.i667, align 8
  %call.i589 = call ptr @__getblk_gfp(ptr noundef %208, i64 noundef %block.0.i, i32 noundef %210, i32 noundef 8) #8
  %cmp154 = icmp eq ptr %call.i589, null
  br i1 %cmp154, label %do.end159, label %if.end162

do.end159:                                        ; preds = %if.end151
  %211 = ptrtoint ptr %next_log_block to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %sub1071054, ptr %next_log_block, align 4
  %call161 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #11
  %212 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %bh, align 4
  %tobool.not.i590 = icmp eq ptr %213, null
  br i1 %tobool.not.i590, label %do.end159.cleanup285.thread759.sink.split_crit_edge, label %if.then.i591

do.end159.cleanup285.thread759.sink.split_crit_edge: ; preds = %do.end159
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup285.thread759.sink.split

if.then.i591:                                     ; preds = %do.end159
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %213) #8
  br label %cleanup285.thread759.sink.split

if.end162:                                        ; preds = %if.end151
  call void @__might_sleep(ptr noundef nonnull @.str.42, i32 noundef 366) #8
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i589, i32 noundef 4) #8
  %214 = ptrtoint ptr %call.i589 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load volatile i32, ptr %call.i589, align 4
  %and.i.i.i.i = and i32 %215, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.end162.if.then.i598_crit_edge

if.end162.if.then.i598_crit_edge:                 ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i598

trylock_buffer.exit.i:                            ; preds = %if.end162
  call void @llvm.prefetch.p0(ptr nonnull %call.i589, i32 1, i32 3, i32 1) #8
  %216 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i589, ptr nonnull %call.i589, i32 4, ptr nonnull elementtype(i32) %call.i589) #8, !srcloc !109
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %216, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !110
  %217 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %tobool.not.not.i = icmp eq i32 %217, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i598_crit_edge

trylock_buffer.exit.i.if.then.i598_crit_edge:     ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i598

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lock_buffer.exit

if.then.i598:                                     ; preds = %trylock_buffer.exit.i.if.then.i598_crit_edge, %if.end162.if.then.i598_crit_edge
  call void @__lock_buffer(ptr noundef nonnull %call.i589) #8
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i598, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %b_data163 = getelementptr inbounds %struct.buffer_head, ptr %call.i589, i32 0, i32 5
  %218 = ptrtoint ptr %b_data163 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %b_data163, align 4
  %220 = ptrtoint ptr %b_data141 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %b_data141, align 4
  %222 = ptrtoint ptr %j_blocksize.i667 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %j_blocksize.i667, align 8
  %224 = call ptr @memcpy(ptr %219, ptr %221, i32 %223)
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool166.not = icmp eq i32 %and, 0
  br i1 %tobool166.not, label %lock_buffer.exit.do.end172_crit_edge, label %if.then167

lock_buffer.exit.do.end172_crit_edge:             ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end172

if.then167:                                       ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  %225 = ptrtoint ptr %b_data163 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %b_data163, align 4
  %227 = ptrtoint ptr %226 to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 -1069860456, ptr %226, align 4
  br label %do.end172

do.end172:                                        ; preds = %if.then167, %lock_buffer.exit.do.end172_crit_edge
  %228 = ptrtoint ptr %call.i589 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load volatile i32, ptr %call.i589, align 4
  %and1.i.i = and i32 %229, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.end172.brelse.exit607_crit_edge

do.end172.brelse.exit607_crit_edge:               ; preds = %do.end172
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit607

if.then.i:                                        ; preds = %do.end172
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %call.i589) #8
  br label %brelse.exit607

brelse.exit607:                                   ; preds = %if.then.i, %do.end172.brelse.exit607_crit_edge
  call void @mark_buffer_dirty(ptr noundef nonnull %call.i589) #8
  %230 = ptrtoint ptr %nr_replays to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %nr_replays, align 4
  %inc176 = add i32 %231, 1
  store i32 %inc176, ptr %nr_replays, align 4
  call void @unlock_buffer(ptr noundef nonnull %call.i589) #8
  call void @__brelse(ptr noundef nonnull %148) #8
  call void @__brelse(ptr noundef nonnull %call.i589) #8
  br label %skip_write

skip_write:                                       ; preds = %brelse.exit607, %brelse.exit588, %brelse.exit563, %if.then113
  %block_error.3 = phi i32 [ %block_error.1, %if.then113 ], [ 1, %brelse.exit588 ], [ %block_error.1, %brelse.exit607 ], [ %block_error.1, %brelse.exit563 ]
  %success.3 = phi i32 [ %call111, %if.then113 ], [ -74, %brelse.exit588 ], [ %success.1, %brelse.exit607 ], [ %success.1, %brelse.exit563 ]
  %add.ptr = getelementptr i8, ptr %tagp.0, i32 %call
  %and178 = shl nuw nsw i32 %conv, 3
  %232 = and i32 %and178, 16
  %233 = xor i32 %232, 16
  %spec.select509 = getelementptr i8, ptr %add.ptr, i32 %233
  %and183 = and i32 %conv, 8
  %tobool184.not = icmp eq i32 %and183, 0
  br i1 %tobool184.not, label %skip_write.while.cond85_crit_edge, label %skip_write.while.end_crit_edge

skip_write.while.end_crit_edge:                   ; preds = %skip_write
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

skip_write.while.cond85_crit_edge:                ; preds = %skip_write
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond85

while.end:                                        ; preds = %skip_write.while.end_crit_edge, %while.cond85.while.end_crit_edge
  %sub1071055 = phi i32 [ %sub1071053, %while.cond85.while.end_crit_edge ], [ %sub1071054, %skip_write.while.end_crit_edge ]
  %block_error.5 = phi i32 [ %block_error.1, %while.cond85.while.end_crit_edge ], [ %block_error.3, %skip_write.while.end_crit_edge ]
  %success.5 = phi i32 [ %success.1, %while.cond85.while.end_crit_edge ], [ %success.3, %skip_write.while.end_crit_edge ]
  %234 = ptrtoint ptr %next_log_block to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %sub1071055, ptr %next_log_block, align 4
  %235 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %bh, align 4
  %tobool.not.i608 = icmp eq ptr %236, null
  br i1 %tobool.not.i608, label %while.end.cleanup285_crit_edge, label %if.then.i609

while.end.cleanup285_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup285

if.then.i609:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %236) #8
  br label %cleanup285

sw.bb190:                                         ; preds = %if.end30
  %237 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %bh, align 4
  %b_data191 = getelementptr inbounds %struct.buffer_head, ptr %238, i32 0, i32 5
  %239 = ptrtoint ptr %b_data191 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %b_data191, align 4
  %h_commit_sec = getelementptr inbounds %struct.commit_header, ptr %240, i32 0, i32 7
  %241 = ptrtoint ptr %h_commit_sec to i32
  call void @__asan_load8_noabort(i32 %241)
  %242 = load i64, ptr %h_commit_sec, align 8
  br i1 %need_check_commit_time.0.off0, label %if.then193, label %if.end203

if.then193:                                       ; preds = %sw.bb190
  call void @__sanitizer_cov_trace_cmp8(i64 %242, i64 %last_trans_commit_time.0)
  %cmp194.not = icmp ult i64 %242, %last_trans_commit_time.0
  br i1 %cmp194.not, label %if.then193.ignore_crc_mismatch_crit_edge, label %do.end199

if.then193.ignore_crc_mismatch_crit_edge:         ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #10
  br label %ignore_crc_mismatch

do.end199:                                        ; preds = %if.then193
  %call201 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %next_commit_ID.0) #11
  %243 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %bh, align 4
  %tobool.not.i612 = icmp eq ptr %244, null
  br i1 %tobool.not.i612, label %do.end199.cleanup285.thread759_crit_edge, label %do.end199.cleanup285.thread759.sink.split_crit_edge

do.end199.cleanup285.thread759.sink.split_crit_edge: ; preds = %do.end199
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup285.thread759.sink.split

do.end199.cleanup285.thread759_crit_edge:         ; preds = %do.end199
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup285.thread759

ignore_crc_mismatch:                              ; preds = %chksum_error.ignore_crc_mismatch_crit_edge, %if.then193.ignore_crc_mismatch_crit_edge
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.do_one_pass, i32 noundef 762, ptr noundef nonnull @.str.27, i32 noundef %next_commit_ID.0) #8
  %245 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %bh, align 4
  %tobool.not.i616 = icmp eq ptr %246, null
  br i1 %tobool.not.i616, label %ignore_crc_mismatch.done_crit_edge, label %ignore_crc_mismatch.done.sink.split_crit_edge

ignore_crc_mismatch.done.sink.split_crit_edge:    ; preds = %ignore_crc_mismatch
  call void @__sanitizer_cov_trace_pc() #10
  br label %done.sink.split

ignore_crc_mismatch.done_crit_edge:               ; preds = %ignore_crc_mismatch
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end203:                                        ; preds = %sw.bb190
  br i1 %cmp, label %land.lhs.true206, label %if.end203.if.end262_crit_edge

if.end203.if.end262_crit_edge:                    ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end262

land.lhs.true206:                                 ; preds = %if.end203
  %247 = ptrtoint ptr %j_format_version.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %j_format_version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %248)
  %cmp.i621 = icmp sgt i32 %248, 1
  br i1 %cmp.i621, label %jbd2_has_feature_checksum.exit627, label %land.lhs.true206.land.lhs.true248_crit_edge

land.lhs.true206.land.lhs.true248_crit_edge:      ; preds = %land.lhs.true206
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true248

jbd2_has_feature_checksum.exit627:                ; preds = %land.lhs.true206
  %249 = ptrtoint ptr %j_superblock to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %j_superblock, align 4
  %s_feature_compat.i623 = getelementptr inbounds %struct.journal_superblock_s, ptr %250, i32 0, i32 7
  %251 = ptrtoint ptr %s_feature_compat.i623 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %s_feature_compat.i623, align 4
  %and.i624 = and i32 %252, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i624)
  %cmp1.i625.not = icmp eq i32 %and.i624, 0
  br i1 %cmp1.i625.not, label %jbd2_has_feature_checksum.exit627.land.lhs.true248_crit_edge, label %if.then209

jbd2_has_feature_checksum.exit627.land.lhs.true248_crit_edge: ; preds = %jbd2_has_feature_checksum.exit627
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true248

if.then209:                                       ; preds = %jbd2_has_feature_checksum.exit627
  %h_chksum = getelementptr inbounds %struct.commit_header, ptr %240, i32 0, i32 6
  %253 = ptrtoint ptr %h_chksum to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %h_chksum, align 8
  %255 = ptrtoint ptr %end_transaction to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %end_transaction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %256)
  %tobool213.not = icmp eq i32 %256, 0
  br i1 %tobool213.not, label %if.end216, label %if.then214

if.then214:                                       ; preds = %if.then209
  %257 = ptrtoint ptr %j_failed_commit to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 %256, ptr %j_failed_commit, align 8
  %tobool.not.i628 = icmp eq ptr %238, null
  br i1 %tobool.not.i628, label %if.then214.cleanup285_crit_edge, label %if.then.i629

if.then214.cleanup285_crit_edge:                  ; preds = %if.then214
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup285

if.then.i629:                                     ; preds = %if.then214
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %238) #8
  br label %cleanup285

if.end216:                                        ; preds = %if.then209
  %258 = ptrtoint ptr %crc32_sum to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %crc32_sum, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %259, i32 %254)
  %cmp217 = icmp eq i32 %259, %254
  br i1 %cmp217, label %land.lhs.true219, label %if.end216.lor.lhs.false_crit_edge

if.end216.lor.lhs.false_crit_edge:                ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

land.lhs.true219:                                 ; preds = %if.end216
  %h_chksum_type = getelementptr inbounds %struct.commit_header, ptr %240, i32 0, i32 3
  %260 = ptrtoint ptr %h_chksum_type to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %h_chksum_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %261)
  %cmp221 = icmp eq i8 %261, 1
  br i1 %cmp221, label %land.lhs.true223, label %land.lhs.true219.lor.lhs.false_crit_edge

land.lhs.true219.lor.lhs.false_crit_edge:         ; preds = %land.lhs.true219
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

land.lhs.true223:                                 ; preds = %land.lhs.true219
  %h_chksum_size = getelementptr inbounds %struct.commit_header, ptr %240, i32 0, i32 4
  %262 = ptrtoint ptr %h_chksum_size to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %h_chksum_size, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %263)
  %cmp225 = icmp eq i8 %263, 4
  br i1 %cmp225, label %land.lhs.true223.cleanup241_crit_edge, label %land.lhs.true223.lor.lhs.false_crit_edge

land.lhs.true223.lor.lhs.false_crit_edge:         ; preds = %land.lhs.true223
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

land.lhs.true223.cleanup241_crit_edge:            ; preds = %land.lhs.true223
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup241

lor.lhs.false:                                    ; preds = %land.lhs.true223.lor.lhs.false_crit_edge, %land.lhs.true219.lor.lhs.false_crit_edge, %if.end216.lor.lhs.false_crit_edge
  %h_chksum_type227 = getelementptr inbounds %struct.commit_header, ptr %240, i32 0, i32 3
  %264 = ptrtoint ptr %h_chksum_type227 to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %h_chksum_type227, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %265)
  %cmp229 = icmp eq i8 %265, 0
  br i1 %cmp229, label %land.lhs.true231, label %lor.lhs.false.chksum_error_crit_edge

lor.lhs.false.chksum_error_crit_edge:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %chksum_error

land.lhs.true231:                                 ; preds = %lor.lhs.false
  %h_chksum_size232 = getelementptr inbounds %struct.commit_header, ptr %240, i32 0, i32 4
  %266 = ptrtoint ptr %h_chksum_size232 to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %h_chksum_size232, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %267)
  %cmp234 = icmp eq i8 %267, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %254)
  %cmp237 = icmp eq i32 %254, 0
  %or.cond = select i1 %cmp234, i1 %cmp237, i1 false
  br i1 %or.cond, label %land.lhs.true231.cleanup241_crit_edge, label %land.lhs.true231.chksum_error_crit_edge

land.lhs.true231.chksum_error_crit_edge:          ; preds = %land.lhs.true231
  call void @__sanitizer_cov_trace_pc() #10
  br label %chksum_error

land.lhs.true231.cleanup241_crit_edge:            ; preds = %land.lhs.true231
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup241

cleanup241:                                       ; preds = %land.lhs.true231.cleanup241_crit_edge, %land.lhs.true223.cleanup241_crit_edge
  %268 = ptrtoint ptr %crc32_sum to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 -1, ptr %crc32_sum, align 4
  br label %land.lhs.true248

land.lhs.true248:                                 ; preds = %cleanup241, %jbd2_has_feature_checksum.exit627.land.lhs.true248_crit_edge, %land.lhs.true206.land.lhs.true248_crit_edge
  %269 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %bh, align 4
  %b_data249 = getelementptr inbounds %struct.buffer_head, ptr %270, i32 0, i32 5
  %271 = ptrtoint ptr %b_data249 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %b_data249, align 4
  %call250 = call fastcc i32 @jbd2_commit_block_csum_verify(ptr noundef %journal, ptr noundef %272)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call250)
  %tobool251.not = icmp eq i32 %call250, 0
  br i1 %tobool251.not, label %land.lhs.true248.chksum_error_crit_edge, label %land.lhs.true248.if.end262_crit_edge

land.lhs.true248.if.end262_crit_edge:             ; preds = %land.lhs.true248
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end262

land.lhs.true248.chksum_error_crit_edge:          ; preds = %land.lhs.true248
  call void @__sanitizer_cov_trace_pc() #10
  br label %chksum_error

chksum_error:                                     ; preds = %land.lhs.true248.chksum_error_crit_edge, %land.lhs.true231.chksum_error_crit_edge, %lor.lhs.false.chksum_error_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %242, i64 %last_trans_commit_time.0)
  %cmp253 = icmp ult i64 %242, %last_trans_commit_time.0
  br i1 %cmp253, label %chksum_error.ignore_crc_mismatch_crit_edge, label %if.end256

chksum_error.ignore_crc_mismatch_crit_edge:       ; preds = %chksum_error
  call void @__sanitizer_cov_trace_pc() #10
  br label %ignore_crc_mismatch

if.end256:                                        ; preds = %chksum_error
  %273 = ptrtoint ptr %end_transaction to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 %next_commit_ID.0, ptr %end_transaction, align 4
  %274 = ptrtoint ptr %j_format_version.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %j_format_version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %275)
  %cmp.i633 = icmp sgt i32 %275, 1
  br i1 %cmp.i633, label %jbd2_has_feature_async_commit.exit, label %if.end256.if.then259_crit_edge

if.end256.if.then259_crit_edge:                   ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then259

jbd2_has_feature_async_commit.exit:               ; preds = %if.end256
  %276 = ptrtoint ptr %j_superblock to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %j_superblock, align 4
  %s_feature_incompat.i635 = getelementptr inbounds %struct.journal_superblock_s, ptr %277, i32 0, i32 8
  %278 = ptrtoint ptr %s_feature_incompat.i635 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %s_feature_incompat.i635, align 4
  %and.i636 = and i32 %279, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i636)
  %cmp1.i637.not = icmp eq i32 %and.i636, 0
  br i1 %cmp1.i637.not, label %jbd2_has_feature_async_commit.exit.if.then259_crit_edge, label %jbd2_has_feature_async_commit.exit.if.end262_crit_edge

jbd2_has_feature_async_commit.exit.if.end262_crit_edge: ; preds = %jbd2_has_feature_async_commit.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end262

jbd2_has_feature_async_commit.exit.if.then259_crit_edge: ; preds = %jbd2_has_feature_async_commit.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then259

if.then259:                                       ; preds = %jbd2_has_feature_async_commit.exit.if.then259_crit_edge, %if.end256.if.then259_crit_edge
  %280 = ptrtoint ptr %j_failed_commit to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 %next_commit_ID.0, ptr %j_failed_commit, align 8
  %281 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %bh, align 4
  %tobool.not.i639 = icmp eq ptr %282, null
  br i1 %tobool.not.i639, label %if.then259.cleanup285_crit_edge, label %if.then.i640

if.then259.cleanup285_crit_edge:                  ; preds = %if.then259
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup285

if.then.i640:                                     ; preds = %if.then259
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %282) #8
  br label %cleanup285

if.end262:                                        ; preds = %jbd2_has_feature_async_commit.exit.if.end262_crit_edge, %land.lhs.true248.if.end262_crit_edge, %if.end203.if.end262_crit_edge
  %spec.select510 = phi i64 [ %last_trans_commit_time.0, %if.end203.if.end262_crit_edge ], [ %242, %jbd2_has_feature_async_commit.exit.if.end262_crit_edge ], [ %242, %land.lhs.true248.if.end262_crit_edge ]
  %283 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %bh, align 4
  %tobool.not.i643 = icmp eq ptr %284, null
  br i1 %tobool.not.i643, label %if.end262.brelse.exit646_crit_edge, label %if.then.i644

if.end262.brelse.exit646_crit_edge:               ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit646

if.then.i644:                                     ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %284) #8
  br label %brelse.exit646

brelse.exit646:                                   ; preds = %if.then.i644, %if.end262.brelse.exit646_crit_edge
  %inc267 = add i32 %next_commit_ID.0, 1
  br label %cleanup285

sw.bb268:                                         ; preds = %if.end30
  br i1 %cmp, label %land.lhs.true271, label %if.end276

land.lhs.true271:                                 ; preds = %sw.bb268
  %285 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %bh, align 4
  %b_data272 = getelementptr inbounds %struct.buffer_head, ptr %286, i32 0, i32 5
  %287 = ptrtoint ptr %b_data272 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %b_data272, align 4
  %call273 = call fastcc i32 @jbd2_descriptor_block_csum_verify(ptr noundef %journal, ptr noundef %288)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call273)
  %tobool274.not = icmp eq i32 %call273, 0
  br i1 %tobool274.not, label %if.then275, label %land.lhs.true271.if.then279_crit_edge

land.lhs.true271.if.then279_crit_edge:            ; preds = %land.lhs.true271
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then279

if.then275:                                       ; preds = %land.lhs.true271
  call void @__sanitizer_cov_trace_pc() #10
  %289 = ptrtoint ptr %next_log_block to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %next_log_block, align 4
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.do_one_pass, i32 noundef 830, ptr noundef nonnull @.str.28, i32 noundef %290) #8
  br label %if.then279

if.end276:                                        ; preds = %sw.bb268
  br i1 %cmp277.not, label %if.end280, label %if.end276.if.then279_crit_edge

if.end276.if.then279_crit_edge:                   ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then279

if.then279:                                       ; preds = %if.end276.if.then279_crit_edge, %if.then275, %land.lhs.true271.if.then279_crit_edge
  %need_check_commit_time.2.off0745 = phi i1 [ %need_check_commit_time.0.off0, %if.end276.if.then279_crit_edge ], [ true, %if.then275 ], [ %need_check_commit_time.0.off0, %land.lhs.true271.if.then279_crit_edge ]
  %291 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %bh, align 4
  %tobool.not.i647 = icmp eq ptr %292, null
  br i1 %tobool.not.i647, label %if.then279.cleanup285_crit_edge, label %if.then.i648

if.then279.cleanup285_crit_edge:                  ; preds = %if.then279
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup285

if.then.i648:                                     ; preds = %if.then279
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %292) #8
  br label %cleanup285

if.end280:                                        ; preds = %if.end276
  %293 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %bh, align 4
  %b_data.i651 = getelementptr inbounds %struct.buffer_head, ptr %294, i32 0, i32 5
  %295 = ptrtoint ptr %b_data.i651 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %b_data.i651, align 4
  %r_count.i = getelementptr inbounds %struct.jbd2_journal_revoke_header_s, ptr %296, i32 0, i32 1
  %297 = ptrtoint ptr %r_count.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %r_count.i, align 4
  %299 = ptrtoint ptr %j_format_version.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %j_format_version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %300)
  %cmp.i.i.i.i653 = icmp sgt i32 %300, 1
  br i1 %cmp.i.i.i.i653, label %jbd2_has_feature_csum2.exit.i.i.i657, label %if.end280.jbd2_journal_has_csum_v2or3.exit.i670_crit_edge

if.end280.jbd2_journal_has_csum_v2or3.exit.i670_crit_edge: ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_journal_has_csum_v2or3.exit.i670

jbd2_has_feature_csum2.exit.i.i.i657:             ; preds = %if.end280
  %301 = ptrtoint ptr %j_superblock to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %j_superblock, align 4
  %s_feature_incompat.i.i.i.i655 = getelementptr inbounds %struct.journal_superblock_s, ptr %302, i32 0, i32 8
  %303 = ptrtoint ptr %s_feature_incompat.i.i.i.i655 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %s_feature_incompat.i.i.i.i655, align 4
  %305 = and i32 %304, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %305)
  %.not.i.i656 = icmp eq i32 %305, 0
  br i1 %.not.i.i656, label %jbd2_has_feature_csum2.exit.i.i.i657.jbd2_journal_has_csum_v2or3.exit.i670_crit_edge, label %land.rhs.i.i660

jbd2_has_feature_csum2.exit.i.i.i657.jbd2_journal_has_csum_v2or3.exit.i670_crit_edge: ; preds = %jbd2_has_feature_csum2.exit.i.i.i657
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_journal_has_csum_v2or3.exit.i670

land.rhs.i.i660:                                  ; preds = %jbd2_has_feature_csum2.exit.i.i.i657
  %306 = ptrtoint ptr %j_chksum_driver.i.i658 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %j_chksum_driver.i.i658, align 8
  %cmp.i.i659 = icmp eq ptr %307, null
  br i1 %cmp.i.i659, label %land.rhs2.i.i662, label %land.rhs.i.i660.jbd2_journal_has_csum_v2or3.exit.i670_crit_edge

land.rhs.i.i660.jbd2_journal_has_csum_v2or3.exit.i670_crit_edge: ; preds = %land.rhs.i.i660
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_journal_has_csum_v2or3.exit.i670

land.rhs2.i.i662:                                 ; preds = %land.rhs.i.i660
  %.b43.i.i661 = load i1, ptr @jbd2_journal_has_csum_v2or3.__already_done, align 1
  br i1 %.b43.i.i661, label %land.rhs2.i.i662.jbd2_journal_has_csum_v2or3.exit.i670_crit_edge, label %if.then.i.i663, !prof !102

land.rhs2.i.i662.jbd2_journal_has_csum_v2or3.exit.i670_crit_edge: ; preds = %land.rhs2.i.i662
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_journal_has_csum_v2or3.exit.i670

if.then.i.i663:                                   ; preds = %land.rhs2.i.i662
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @jbd2_journal_has_csum_v2or3.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 1735, i32 noundef 9, ptr noundef null) #8
  br label %jbd2_journal_has_csum_v2or3.exit.i670

jbd2_journal_has_csum_v2or3.exit.i670:            ; preds = %if.then.i.i663, %land.rhs2.i.i662.jbd2_journal_has_csum_v2or3.exit.i670_crit_edge, %land.rhs.i.i660.jbd2_journal_has_csum_v2or3.exit.i670_crit_edge, %jbd2_has_feature_csum2.exit.i.i.i657.jbd2_journal_has_csum_v2or3.exit.i670_crit_edge, %if.end280.jbd2_journal_has_csum_v2or3.exit.i670_crit_edge
  %308 = ptrtoint ptr %j_chksum_driver.i.i658 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %j_chksum_driver.i.i658, align 8
  %cmp38.i.not.i665 = icmp eq ptr %309, null
  %spec.select.i666 = select i1 %cmp38.i.not.i665, i32 0, i32 -4
  %310 = ptrtoint ptr %j_blocksize.i667 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %j_blocksize.i667, align 8
  %sub.i668 = add i32 %spec.select.i666, %311
  call void @__sanitizer_cov_trace_cmp4(i32 %298, i32 %sub.i668)
  %cmp.i669 = icmp ugt i32 %298, %sub.i668
  br i1 %cmp.i669, label %jbd2_journal_has_csum_v2or3.exit.i670.scan_revoke_records.exit_crit_edge, label %if.end2.i

jbd2_journal_has_csum_v2or3.exit.i670.scan_revoke_records.exit_crit_edge: ; preds = %jbd2_journal_has_csum_v2or3.exit.i670
  call void @__sanitizer_cov_trace_pc() #10
  br label %scan_revoke_records.exit

if.end2.i:                                        ; preds = %jbd2_journal_has_csum_v2or3.exit.i670
  %312 = ptrtoint ptr %j_format_version.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %j_format_version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %313)
  %cmp.i38.i = icmp sgt i32 %313, 1
  br i1 %cmp.i38.i, label %jbd2_has_feature_64bit.exit.i674, label %if.end2.i.jbd2_has_feature_64bit.exit.thread.i_crit_edge

if.end2.i.jbd2_has_feature_64bit.exit.thread.i_crit_edge: ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_has_feature_64bit.exit.thread.i

jbd2_has_feature_64bit.exit.i674:                 ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  %314 = ptrtoint ptr %j_superblock to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %j_superblock, align 4
  %s_feature_incompat.i.i672 = getelementptr inbounds %struct.journal_superblock_s, ptr %315, i32 0, i32 8
  %316 = ptrtoint ptr %s_feature_incompat.i.i672 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %s_feature_incompat.i.i672, align 4
  %and.i.i673 = and i32 %317, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i673)
  %cmp1.i.i = icmp ne i32 %and.i.i673, 0
  %spec.select42.i = select i1 %cmp1.i.i, i32 8, i32 4
  br label %jbd2_has_feature_64bit.exit.thread.i

jbd2_has_feature_64bit.exit.thread.i:             ; preds = %jbd2_has_feature_64bit.exit.i674, %if.end2.i.jbd2_has_feature_64bit.exit.thread.i_crit_edge
  %318 = phi i1 [ false, %if.end2.i.jbd2_has_feature_64bit.exit.thread.i_crit_edge ], [ %cmp1.i.i, %jbd2_has_feature_64bit.exit.i674 ]
  %319 = phi i32 [ 4, %if.end2.i.jbd2_has_feature_64bit.exit.thread.i_crit_edge ], [ %spec.select42.i, %jbd2_has_feature_64bit.exit.i674 ]
  %add43.i = or i32 %319, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add43.i, i32 %298)
  %cmp6.not44.i = icmp sgt i32 %add43.i, %298
  br i1 %cmp6.not44.i, label %jbd2_has_feature_64bit.exit.thread.i.scan_revoke_records.exit_crit_edge, label %jbd2_has_feature_64bit.exit.thread.i.while.body.i675_crit_edge

jbd2_has_feature_64bit.exit.thread.i.while.body.i675_crit_edge: ; preds = %jbd2_has_feature_64bit.exit.thread.i
  br label %while.body.i675

jbd2_has_feature_64bit.exit.thread.i.scan_revoke_records.exit_crit_edge: ; preds = %jbd2_has_feature_64bit.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %scan_revoke_records.exit

while.body.i675:                                  ; preds = %cleanup.i.while.body.i675_crit_edge, %jbd2_has_feature_64bit.exit.thread.i.while.body.i675_crit_edge
  %add46.i = phi i32 [ %add.i679, %cleanup.i.while.body.i675_crit_edge ], [ %add43.i, %jbd2_has_feature_64bit.exit.thread.i.while.body.i675_crit_edge ]
  %offset.045.i = phi i32 [ %add46.i, %cleanup.i.while.body.i675_crit_edge ], [ 16, %jbd2_has_feature_64bit.exit.thread.i.while.body.i675_crit_edge ]
  %320 = ptrtoint ptr %b_data.i651 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %b_data.i651, align 4
  %add.ptr11.i = getelementptr i8, ptr %321, i32 %offset.045.i
  br i1 %318, label %if.else.i677, label %if.then8.i

if.then8.i:                                       ; preds = %while.body.i675
  call void @__sanitizer_cov_trace_pc() #10
  %322 = ptrtoint ptr %add.ptr11.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %add.ptr11.i, align 4
  %conv.i676 = zext i32 %323 to i64
  br label %if.end12.i

if.else.i677:                                     ; preds = %while.body.i675
  call void @__sanitizer_cov_trace_pc() #10
  %324 = ptrtoint ptr %add.ptr11.i to i32
  call void @__asan_load8_noabort(i32 %324)
  %325 = load i64, ptr %add.ptr11.i, align 8
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else.i677, %if.then8.i
  %blocknr.0.i = phi i64 [ %conv.i676, %if.then8.i ], [ %325, %if.else.i677 ]
  %call14.i = call i32 @jbd2_journal_set_revoke(ptr noundef %journal, i64 noundef %blocknr.0.i, i32 noundef %next_commit_ID.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %cleanup.i, label %if.end12.i.scan_revoke_records.exit_crit_edge

if.end12.i.scan_revoke_records.exit_crit_edge:    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %scan_revoke_records.exit

cleanup.i:                                        ; preds = %if.end12.i
  %326 = ptrtoint ptr %nr_revokes.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %nr_revokes.i, align 4
  %inc.i678 = add i32 %327, 1
  store i32 %inc.i678, ptr %nr_revokes.i, align 4
  %add.i679 = add i32 %add46.i, %319
  %cmp6.not.i = icmp sgt i32 %add.i679, %298
  br i1 %cmp6.not.i, label %cleanup.i.scan_revoke_records.exit_crit_edge, label %cleanup.i.while.body.i675_crit_edge

cleanup.i.while.body.i675_crit_edge:              ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i675

cleanup.i.scan_revoke_records.exit_crit_edge:     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %scan_revoke_records.exit

scan_revoke_records.exit:                         ; preds = %cleanup.i.scan_revoke_records.exit_crit_edge, %if.end12.i.scan_revoke_records.exit_crit_edge, %jbd2_has_feature_64bit.exit.thread.i.scan_revoke_records.exit_crit_edge, %jbd2_journal_has_csum_v2or3.exit.i670.scan_revoke_records.exit_crit_edge
  %retval.2.i = phi i32 [ -22, %jbd2_journal_has_csum_v2or3.exit.i670.scan_revoke_records.exit_crit_edge ], [ 0, %jbd2_has_feature_64bit.exit.thread.i.scan_revoke_records.exit_crit_edge ], [ %call14.i, %if.end12.i.scan_revoke_records.exit_crit_edge ], [ 0, %cleanup.i.scan_revoke_records.exit_crit_edge ]
  %328 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %bh, align 4
  %tobool.not.i680 = icmp eq ptr %329, null
  br i1 %tobool.not.i680, label %scan_revoke_records.exit.brelse.exit683_crit_edge, label %if.then.i681

scan_revoke_records.exit.brelse.exit683_crit_edge: ; preds = %scan_revoke_records.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit683

if.then.i681:                                     ; preds = %scan_revoke_records.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %329) #8
  br label %brelse.exit683

brelse.exit683:                                   ; preds = %if.then.i681, %scan_revoke_records.exit.brelse.exit683_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.2.i)
  %tobool282.not = icmp eq i32 %retval.2.i, 0
  br i1 %tobool282.not, label %brelse.exit683.cleanup285_crit_edge, label %brelse.exit683.cleanup285.thread759_crit_edge

brelse.exit683.cleanup285.thread759_crit_edge:    ; preds = %brelse.exit683
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup285.thread759

brelse.exit683.cleanup285_crit_edge:              ; preds = %brelse.exit683
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup285

sw.default:                                       ; preds = %if.end30
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 3, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.do_one_pass, i32 noundef 849, ptr noundef nonnull @.str.29, i32 noundef %49) #8
  %330 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %bh, align 4
  %tobool.not.i684 = icmp eq ptr %331, null
  br i1 %tobool.not.i684, label %sw.default.done_crit_edge, label %sw.default.done.sink.split_crit_edge

sw.default.done.sink.split_crit_edge:             ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  br label %done.sink.split

sw.default.done_crit_edge:                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

cleanup285.thread759.sink.split:                  ; preds = %do.end199.cleanup285.thread759.sink.split_crit_edge, %if.then.i591, %do.end159.cleanup285.thread759.sink.split_crit_edge, %do.end44.cleanup285.thread759.sink.split_crit_edge
  %.sink = phi ptr [ %73, %do.end44.cleanup285.thread759.sink.split_crit_edge ], [ %148, %do.end159.cleanup285.thread759.sink.split_crit_edge ], [ %148, %if.then.i591 ], [ %244, %do.end199.cleanup285.thread759.sink.split_crit_edge ]
  %err.6.ph.ph = phi i32 [ -74, %do.end44.cleanup285.thread759.sink.split_crit_edge ], [ -12, %do.end159.cleanup285.thread759.sink.split_crit_edge ], [ -12, %if.then.i591 ], [ -74, %do.end199.cleanup285.thread759.sink.split_crit_edge ]
  call void @__brelse(ptr noundef nonnull %.sink) #8
  br label %cleanup285.thread759

cleanup285.thread759:                             ; preds = %cleanup285.thread759.sink.split, %brelse.exit683.cleanup285.thread759_crit_edge, %do.end199.cleanup285.thread759_crit_edge, %do.end44.cleanup285.thread759_crit_edge, %jbd2_has_feature_fast_commit.exit.thread.cleanup285.thread759_crit_edge
  %err.6.ph = phi i32 [ -74, %do.end199.cleanup285.thread759_crit_edge ], [ -74, %do.end44.cleanup285.thread759_crit_edge ], [ %err.6.ph.ph, %cleanup285.thread759.sink.split ], [ %call10, %jbd2_has_feature_fast_commit.exit.thread.cleanup285.thread759_crit_edge ], [ %retval.2.i, %brelse.exit683.cleanup285.thread759_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %obh) #8
  br label %cleanup334

cleanup285:                                       ; preds = %brelse.exit683.cleanup285_crit_edge, %if.then.i648, %if.then279.cleanup285_crit_edge, %brelse.exit646, %if.then.i640, %if.then259.cleanup285_crit_edge, %if.then.i629, %if.then214.cleanup285_crit_edge, %if.then.i609, %while.end.cleanup285_crit_edge, %if.end80, %if.then59
  %descr_csum_size.3 = phi i32 [ %descr_csum_size.0, %brelse.exit646 ], [ %spec.select, %if.end80 ], [ %spec.select, %while.end.cleanup285_crit_edge ], [ %spec.select, %if.then.i609 ], [ %descr_csum_size.0, %if.then279.cleanup285_crit_edge ], [ %descr_csum_size.0, %if.then.i648 ], [ %descr_csum_size.0, %if.then259.cleanup285_crit_edge ], [ %descr_csum_size.0, %if.then.i640 ], [ %descr_csum_size.0, %if.then214.cleanup285_crit_edge ], [ %descr_csum_size.0, %if.then.i629 ], [ %descr_csum_size.0, %brelse.exit683.cleanup285_crit_edge ], [ %spec.select, %if.then59 ]
  %block_error.6 = phi i32 [ %block_error.0, %brelse.exit646 ], [ %block_error.0, %if.end80 ], [ %block_error.5, %while.end.cleanup285_crit_edge ], [ %block_error.5, %if.then.i609 ], [ %block_error.0, %if.then279.cleanup285_crit_edge ], [ %block_error.0, %if.then.i648 ], [ %block_error.0, %if.then259.cleanup285_crit_edge ], [ %block_error.0, %if.then.i640 ], [ %block_error.0, %if.then214.cleanup285_crit_edge ], [ %block_error.0, %if.then.i629 ], [ %block_error.0, %brelse.exit683.cleanup285_crit_edge ], [ %block_error.0, %if.then59 ]
  %need_check_commit_time.4.off0 = phi i1 [ false, %brelse.exit646 ], [ %need_check_commit_time.1.off0712, %if.end80 ], [ %need_check_commit_time.0.off0, %while.end.cleanup285_crit_edge ], [ %need_check_commit_time.0.off0, %if.then.i609 ], [ %need_check_commit_time.2.off0745, %if.then279.cleanup285_crit_edge ], [ %need_check_commit_time.2.off0745, %if.then.i648 ], [ false, %if.then259.cleanup285_crit_edge ], [ false, %if.then.i640 ], [ false, %if.then214.cleanup285_crit_edge ], [ false, %if.then.i629 ], [ %need_check_commit_time.0.off0, %brelse.exit683.cleanup285_crit_edge ], [ false, %if.then59 ]
  %last_trans_commit_time.2 = phi i64 [ %spec.select510, %brelse.exit646 ], [ %last_trans_commit_time.0, %if.end80 ], [ %last_trans_commit_time.0, %while.end.cleanup285_crit_edge ], [ %last_trans_commit_time.0, %if.then.i609 ], [ %last_trans_commit_time.0, %if.then279.cleanup285_crit_edge ], [ %last_trans_commit_time.0, %if.then.i648 ], [ %last_trans_commit_time.0, %if.then259.cleanup285_crit_edge ], [ %last_trans_commit_time.0, %if.then.i640 ], [ %last_trans_commit_time.0, %if.then214.cleanup285_crit_edge ], [ %last_trans_commit_time.0, %if.then.i629 ], [ %last_trans_commit_time.0, %brelse.exit683.cleanup285_crit_edge ], [ %last_trans_commit_time.0, %if.then59 ]
  %success.6 = phi i32 [ %success.0, %brelse.exit646 ], [ %success.0, %if.end80 ], [ %success.5, %while.end.cleanup285_crit_edge ], [ %success.5, %if.then.i609 ], [ %success.0, %if.then279.cleanup285_crit_edge ], [ %success.0, %if.then.i648 ], [ %success.0, %if.then259.cleanup285_crit_edge ], [ %success.0, %if.then.i640 ], [ %success.0, %if.then214.cleanup285_crit_edge ], [ %success.0, %if.then.i629 ], [ %success.0, %brelse.exit683.cleanup285_crit_edge ], [ %success.0, %if.then59 ]
  %next_commit_ID.1 = phi i32 [ %inc267, %brelse.exit646 ], [ %next_commit_ID.0, %if.end80 ], [ %next_commit_ID.0, %while.end.cleanup285_crit_edge ], [ %next_commit_ID.0, %if.then.i609 ], [ %next_commit_ID.0, %if.then279.cleanup285_crit_edge ], [ %next_commit_ID.0, %if.then.i648 ], [ %next_commit_ID.0, %if.then259.cleanup285_crit_edge ], [ %next_commit_ID.0, %if.then.i640 ], [ %next_commit_ID.0, %if.then214.cleanup285_crit_edge ], [ %next_commit_ID.0, %if.then.i629 ], [ %next_commit_ID.0, %brelse.exit683.cleanup285_crit_edge ], [ %next_commit_ID.0, %if.then59 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %obh) #8
  br label %while.cond

done.sink.split:                                  ; preds = %sw.default.done.sink.split_crit_edge, %ignore_crc_mismatch.done.sink.split_crit_edge, %if.then29.done.sink.split_crit_edge, %if.then26.done.sink.split_crit_edge
  %.lcssa1030.sink = phi ptr [ %43, %if.then26.done.sink.split_crit_edge ], [ %53, %if.then29.done.sink.split_crit_edge ], [ %246, %ignore_crc_mismatch.done.sink.split_crit_edge ], [ %331, %sw.default.done.sink.split_crit_edge ]
  call void @__brelse(ptr noundef nonnull %.lcssa1030.sink) #8
  br label %done

done:                                             ; preds = %done.sink.split, %sw.default.done_crit_edge, %ignore_crc_mismatch.done_crit_edge, %if.then29.done_crit_edge, %if.then26.done_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %obh) #8
  br i1 %cmp, label %if.then295, label %done.if.else301_crit_edge

done.if.else301_crit_edge:                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else301

if.then295:                                       ; preds = %done
  %332 = ptrtoint ptr %end_transaction to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %end_transaction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %333)
  %tobool297.not = icmp eq i32 %333, 0
  br i1 %tobool297.not, label %if.then298, label %if.then295.if.end316_crit_edge

if.then295.if.end316_crit_edge:                   ; preds = %if.then295
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end316

if.then298:                                       ; preds = %if.then295
  call void @__sanitizer_cov_trace_pc() #10
  %334 = ptrtoint ptr %end_transaction to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 %next_commit_ID.0, ptr %end_transaction, align 4
  br label %if.end316

if.else301:                                       ; preds = %done.if.else301_crit_edge, %done.thread
  %335 = ptrtoint ptr %end_transaction to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %end_transaction, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %336, i32 %next_commit_ID.0)
  %cmp303.not = icmp eq i32 %336, %next_commit_ID.0
  br i1 %cmp303.not, label %if.else301.if.end316_crit_edge, label %do.end308

if.else301.if.end316_crit_edge:                   ; preds = %if.else301
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end316

do.end308:                                        ; preds = %if.else301
  call void @__sanitizer_cov_trace_pc() #10
  %call311 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %pass, i32 noundef %next_commit_ID.0, i32 noundef %336) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %success.0)
  %tobool312.not = icmp eq i32 %success.0, 0
  %spec.store.select = select i1 %tobool312.not, i32 -5, i32 %success.0
  br label %if.end316

if.end316:                                        ; preds = %do.end308, %if.else301.if.end316_crit_edge, %if.then298, %if.then295.if.end316_crit_edge
  %success.7 = phi i32 [ %success.0, %if.then295.if.end316_crit_edge ], [ %success.0, %if.then298 ], [ %spec.store.select, %do.end308 ], [ %success.0, %if.else301.if.end316_crit_edge ]
  %337 = ptrtoint ptr %j_format_version.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %j_format_version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %338)
  %cmp.i689 = icmp sgt i32 %338, 1
  br i1 %cmp.i689, label %jbd2_has_feature_fast_commit.exit695, label %if.end316.if.end327_crit_edge

if.end316.if.end327_crit_edge:                    ; preds = %if.end316
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end327

jbd2_has_feature_fast_commit.exit695:             ; preds = %if.end316
  %339 = ptrtoint ptr %j_superblock to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %j_superblock, align 4
  %s_feature_incompat.i691 = getelementptr inbounds %struct.journal_superblock_s, ptr %340, i32 0, i32 8
  %341 = ptrtoint ptr %s_feature_incompat.i691 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %s_feature_incompat.i691, align 4
  %and.i692 = and i32 %342, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i692)
  %cmp1.i693.not = icmp eq i32 %and.i692, 0
  %or.cond511 = or i1 %cmp277.not, %cmp1.i693.not
  br i1 %or.cond511, label %jbd2_has_feature_fast_commit.exit695.if.end327_crit_edge, label %if.then322

jbd2_has_feature_fast_commit.exit695.if.end327_crit_edge: ; preds = %jbd2_has_feature_fast_commit.exit695
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end327

if.then322:                                       ; preds = %jbd2_has_feature_fast_commit.exit695
  %343 = ptrtoint ptr %end_transaction to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %end_transaction, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh.i) #8
  %345 = ptrtoint ptr %bh.i to i32
  call void @__asan_store4_noabort(i32 %345)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh.i, align 4, !annotation !101
  %j_fc_first.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 29
  %j_fc_replay_callback.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 74
  %346 = ptrtoint ptr %j_fc_replay_callback.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %j_fc_replay_callback.i, align 8
  %tobool.not.i696 = icmp eq ptr %347, null
  br i1 %tobool.not.i696, label %if.then322..loopexit_crit_edge, label %while.cond.preheader.i

if.then322..loopexit_crit_edge:                   ; preds = %if.then322
  call void @__sanitizer_cov_trace_pc() #10
  br label %.loopexit

while.cond.preheader.i:                           ; preds = %if.then322
  %348 = ptrtoint ptr %j_fc_first.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %j_fc_first.i, align 8
  br label %while.cond.i698

while.cond.i698:                                  ; preds = %lor.lhs.false.i.while.cond.i698_crit_edge, %while.cond.preheader.i
  %next_fc_block.0.i = phi i32 [ %inc.i702, %lor.lhs.false.i.while.cond.i698_crit_edge ], [ %349, %while.cond.preheader.i ]
  %350 = ptrtoint ptr %j_fc_last705 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %j_fc_last705, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %next_fc_block.0.i, i32 %351)
  %cmp.not.i697 = icmp ugt i32 %next_fc_block.0.i, %351
  br i1 %cmp.not.i697, label %while.cond.i698..loopexit_crit_edge, label %while.body.i700

while.cond.i698..loopexit_crit_edge:              ; preds = %while.cond.i698
  call void @__sanitizer_cov_trace_pc() #10
  br label %.loopexit

while.body.i700:                                  ; preds = %while.cond.i698
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 3, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.fc_do_one_pass, i32 noundef 249, ptr noundef nonnull @.str.46, i32 noundef %next_fc_block.0.i) #8
  %call.i699 = call fastcc i32 @jread(ptr noundef nonnull %bh.i, ptr noundef %journal, i32 noundef %next_fc_block.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i699)
  %tobool1.not.i = icmp eq i32 %call.i699, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.then2.i

if.then2.i:                                       ; preds = %while.body.i700
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 3, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.fc_do_one_pass, i32 noundef 252, ptr noundef nonnull @.str.47) #8
  br label %fc_do_one_pass.exit

if.end3.i:                                        ; preds = %while.body.i700
  %352 = ptrtoint ptr %j_fc_replay_callback.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %j_fc_replay_callback.i, align 8
  %354 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %bh.i, align 4
  %356 = ptrtoint ptr %j_fc_first.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %j_fc_first.i, align 8
  %sub.i701 = sub i32 %next_fc_block.0.i, %357
  %call6.i = call i32 %353(ptr noundef %journal, ptr noundef %355, i32 noundef %pass, i32 noundef %sub.i701, i32 noundef %344) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.end3.i.fc_do_one_pass.exit_crit_edge, label %lor.lhs.false.i

if.end3.i.fc_do_one_pass.exit_crit_edge:          ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fc_do_one_pass.exit

lor.lhs.false.i:                                  ; preds = %if.end3.i
  %inc.i702 = add i32 %next_fc_block.0.i, 1
  %cmp8.i = icmp eq i32 %call6.i, 0
  br i1 %cmp8.i, label %lor.lhs.false.i..loopexit_crit_edge, label %lor.lhs.false.i.while.cond.i698_crit_edge

lor.lhs.false.i.while.cond.i698_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i698

lor.lhs.false.i..loopexit_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %.loopexit

fc_do_one_pass.exit:                              ; preds = %if.end3.i.fc_do_one_pass.exit_crit_edge, %if.then2.i
  %err.1.i = phi i32 [ %call.i699, %if.then2.i ], [ %call6.i, %if.end3.i.fc_do_one_pass.exit_crit_edge ]
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 3, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.fc_do_one_pass, i32 noundef 266, ptr noundef nonnull @.str.48, i32 noundef %err.1.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #8
  br label %if.end327

.loopexit:                                        ; preds = %lor.lhs.false.i..loopexit_crit_edge, %while.cond.i698..loopexit_crit_edge, %if.then322..loopexit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #8
  br label %if.end327

if.end327:                                        ; preds = %.loopexit, %fc_do_one_pass.exit, %jbd2_has_feature_fast_commit.exit695.if.end327_crit_edge, %if.end316.if.end327_crit_edge
  %success.8 = phi i32 [ %success.7, %jbd2_has_feature_fast_commit.exit695.if.end327_crit_edge ], [ %success.7, %.loopexit ], [ %err.1.i, %fc_do_one_pass.exit ], [ %success.7, %if.end316.if.end327_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %block_error.0)
  %tobool328.not = icmp eq i32 %block_error.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %success.8)
  %cmp330 = icmp eq i32 %success.8, 0
  %spec.store.select351 = select i1 %cmp330, i32 -5, i32 %success.8
  %success.9 = select i1 %tobool328.not, i32 %success.8, i32 %spec.store.select351
  br label %cleanup334

cleanup334:                                       ; preds = %if.end327, %cleanup285.thread759
  %retval.0 = phi i32 [ %success.9, %if.end327 ], [ %err.6.ph, %cleanup285.thread759 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %crc32_sum) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %next_log_block) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_journal_clear_revoke(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_blockdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_skip_recovery(ptr noundef %journal) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.recovery_info, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %info) #8
  %0 = call ptr @memset(ptr %info, i32 0, i32 20)
  %call = call fastcc i32 @do_one_pass(ptr noundef %journal, ptr noundef nonnull %info, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call) #11
  %j_transaction_sequence = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 42
  %1 = ptrtoint ptr %j_transaction_sequence to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %j_transaction_sequence, align 8
  %inc = add i32 %2, 1
  store i32 %inc, ptr %j_transaction_sequence, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = getelementptr inbounds %struct.recovery_info, ptr %info, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %j_superblock = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 5
  %6 = ptrtoint ptr %j_superblock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %j_superblock, align 4
  %s_sequence = getelementptr inbounds %struct.journal_superblock_s, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %s_sequence to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_sequence, align 4
  %sub = sub i32 %5, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp = icmp eq i32 %sub, 1
  %cond = select i1 %cmp, ptr @.str.7, ptr @.str.8
  tail call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 367, ptr noundef nonnull @.str.6, i32 noundef %sub, ptr noundef nonnull %cond) #8
  %inc3 = add i32 %5, 1
  %j_transaction_sequence4 = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 42
  %10 = ptrtoint ptr %j_transaction_sequence4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %inc3, ptr %j_transaction_sequence4, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %j_tail = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 25
  %11 = ptrtoint ptr %j_tail to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %j_tail, align 8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %info) #8
  ret i32 %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @journal_tag_bytes(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jread(ptr nocapture noundef writeonly %bhp, ptr noundef %journal, i32 noundef %offset) unnamed_addr #0 align 64 {
entry:
  %blocknr.i = alloca i64, align 8
  %bufs.i = alloca [8 x ptr], align 4
  %blocknr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %blocknr) #8
  %0 = ptrtoint ptr %blocknr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %blocknr, align 8, !annotation !101
  %1 = ptrtoint ptr %bhp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %bhp, align 4
  %j_total_len = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 37
  %2 = ptrtoint ptr %j_total_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %j_total_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %offset)
  %cmp.not = icmp ugt i32 %3, %offset
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @jbd2_journal_bmap(ptr noundef %journal, i32 noundef %offset, ptr noundef nonnull %blocknr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end8, label %do.end5

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %offset) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %j_dev = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 32
  %4 = ptrtoint ptr %j_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %j_dev, align 4
  %6 = ptrtoint ptr %blocknr to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %blocknr, align 8
  %j_blocksize = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 33
  %8 = ptrtoint ptr %j_blocksize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %j_blocksize, align 8
  %call.i = call ptr @__getblk_gfp(ptr noundef %5, i64 noundef %7, i32 noundef %9, i32 noundef 8) #8
  %tobool10.not = icmp eq ptr %call.i, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %call.i, align 4
  %and1.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool14.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool14.not, label %if.then15, label %if.end12.if.end21_crit_edge

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then15:                                        ; preds = %if.end12
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %call.i, align 4
  %14 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool17.not = icmp eq i32 %14, 0
  br i1 %tobool17.not, label %if.then18, label %if.then15.if.end20_crit_edge

if.then15.if.end20_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then18:                                        ; preds = %if.then15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %blocknr.i) #8
  %15 = ptrtoint ptr %blocknr.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 -1, ptr %blocknr.i, align 8, !annotation !101
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %bufs.i) #8
  %16 = getelementptr inbounds [8 x ptr], ptr %bufs.i, i32 0, i32 1
  %17 = getelementptr inbounds [8 x ptr], ptr %bufs.i, i32 0, i32 2
  %18 = getelementptr inbounds [8 x ptr], ptr %bufs.i, i32 0, i32 3
  %19 = getelementptr inbounds [8 x ptr], ptr %bufs.i, i32 0, i32 4
  %20 = getelementptr inbounds [8 x ptr], ptr %bufs.i, i32 0, i32 5
  %21 = getelementptr inbounds [8 x ptr], ptr %bufs.i, i32 0, i32 6
  %22 = getelementptr inbounds [8 x ptr], ptr %bufs.i, i32 0, i32 7
  %23 = call ptr @memset(ptr %bufs.i, i32 255, i32 32)
  %24 = ptrtoint ptr %j_blocksize to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %j_blocksize, align 8
  %div.i = sdiv i32 131072, %25
  %add.i = add i32 %div.i, %offset
  %26 = ptrtoint ptr %j_total_len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %j_total_len, align 4
  %28 = call i32 @llvm.umin.i32(i32 %add.i, i32 %27) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %offset)
  %cmp217.i = icmp ugt i32 %28, %offset
  br i1 %cmp217.i, label %for.body.i.preheader, label %if.then18.do_readahead.exit_crit_edge

if.then18.do_readahead.exit_crit_edge:            ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_readahead.exit

for.body.i.preheader:                             ; preds = %if.then18
  %call.i5169 = call i32 @jbd2_journal_bmap(ptr noundef %journal, i32 noundef %offset, ptr noundef nonnull %blocknr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5169)
  %tobool.not.i70 = icmp eq i32 %call.i5169, 0
  br i1 %tobool.not.i70, label %for.body.i.preheader.if.end5.i_crit_edge, label %for.body.i.preheader.do.end.i_crit_edge

for.body.i.preheader.do.end.i_crit_edge:          ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

for.body.i.preheader.if.end5.i_crit_edge:         ; preds = %for.body.i.preheader
  br label %if.end5.i

do.end.i:                                         ; preds = %for.body.i.backedge.do.end.i_crit_edge, %for.body.i.preheader.do.end.i_crit_edge
  %next.020.i.lcssa = phi i32 [ %offset, %for.body.i.preheader.do.end.i_crit_edge ], [ %next.020.i.be, %for.body.i.backedge.do.end.i_crit_edge ]
  %nbufs.018.i.lcssa = phi i32 [ 0, %for.body.i.preheader.do.end.i_crit_edge ], [ %nbufs.018.i.be, %for.body.i.backedge.do.end.i_crit_edge ]
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %next.020.i.lcssa) #11
  br label %failed.i

if.end5.i:                                        ; preds = %for.body.i.backedge.if.end5.i_crit_edge, %for.body.i.preheader.if.end5.i_crit_edge
  %nbufs.018.i74 = phi i32 [ %nbufs.018.i.be, %for.body.i.backedge.if.end5.i_crit_edge ], [ 0, %for.body.i.preheader.if.end5.i_crit_edge ]
  %next.020.i71 = phi i32 [ %next.020.i.be, %for.body.i.backedge.if.end5.i_crit_edge ], [ %offset, %for.body.i.preheader.if.end5.i_crit_edge ]
  %29 = ptrtoint ptr %j_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %j_dev, align 4
  %31 = ptrtoint ptr %blocknr.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %blocknr.i, align 8
  %33 = ptrtoint ptr %j_blocksize to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %j_blocksize, align 8
  %call.i.i = call ptr @__getblk_gfp(ptr noundef %30, i64 noundef %32, i32 noundef %34, i32 noundef 8) #8
  %tobool8.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool8.not.i, label %if.end5.i.failed.i_crit_edge, label %if.end10.i

if.end5.i.failed.i_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed.i

if.end10.i:                                       ; preds = %if.end5.i
  %35 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %call.i.i, align 4
  %and1.i.i.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool12.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool12.not.i, label %land.lhs.true.i, label %if.end10.i.for.inc.sink.split.i_crit_edge

if.end10.i.for.inc.sink.split.i_crit_edge:        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split.i

land.lhs.true.i:                                  ; preds = %if.end10.i
  %37 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %call.i.i, align 4
  %39 = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool14.not.i = icmp eq i32 %39, 0
  br i1 %tobool14.not.i, label %if.then15.i, label %land.lhs.true.i.for.inc.sink.split.i_crit_edge

land.lhs.true.i.for.inc.sink.split.i_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split.i

if.then15.i:                                      ; preds = %land.lhs.true.i
  %inc.i = add i32 %nbufs.018.i74, 1
  %arrayidx.i = getelementptr [8 x ptr], ptr %bufs.i, i32 0, i32 %nbufs.018.i74
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i.i, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc.i)
  %cmp16.i = icmp eq i32 %inc.i, 8
  br i1 %cmp16.i, label %if.then17.i, label %if.then15.i.for.inc.i_crit_edge

if.then15.i.for.inc.i_crit_edge:                  ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then17.i:                                      ; preds = %if.then15.i
  call void @ll_rw_block(i32 noundef 0, i32 noundef 0, i32 noundef 8, ptr noundef nonnull %bufs.i) #8
  %41 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %22, align 4
  %tobool.not.i.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.i.i, label %if.then17.i.brelse.exit.i.i_crit_edge, label %if.then.i.i.i

if.then17.i.brelse.exit.i.i_crit_edge:            ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %42) #8
  br label %brelse.exit.i.i

brelse.exit.i.i:                                  ; preds = %if.then.i.i.i, %if.then17.i.brelse.exit.i.i_crit_edge
  %43 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %21, align 4
  %tobool.not.i.i.1.i = icmp eq ptr %44, null
  br i1 %tobool.not.i.i.1.i, label %brelse.exit.i.i.brelse.exit.i.1.i_crit_edge, label %if.then.i.i.1.i

brelse.exit.i.i.brelse.exit.i.1.i_crit_edge:      ; preds = %brelse.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.i.1.i

if.then.i.i.1.i:                                  ; preds = %brelse.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %44) #8
  br label %brelse.exit.i.1.i

brelse.exit.i.1.i:                                ; preds = %if.then.i.i.1.i, %brelse.exit.i.i.brelse.exit.i.1.i_crit_edge
  %45 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %20, align 4
  %tobool.not.i.i.2.i = icmp eq ptr %46, null
  br i1 %tobool.not.i.i.2.i, label %brelse.exit.i.1.i.brelse.exit.i.2.i_crit_edge, label %if.then.i.i.2.i

brelse.exit.i.1.i.brelse.exit.i.2.i_crit_edge:    ; preds = %brelse.exit.i.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.i.2.i

if.then.i.i.2.i:                                  ; preds = %brelse.exit.i.1.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %46) #8
  br label %brelse.exit.i.2.i

brelse.exit.i.2.i:                                ; preds = %if.then.i.i.2.i, %brelse.exit.i.1.i.brelse.exit.i.2.i_crit_edge
  %47 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %19, align 4
  %tobool.not.i.i.3.i = icmp eq ptr %48, null
  br i1 %tobool.not.i.i.3.i, label %brelse.exit.i.2.i.brelse.exit.i.3.i_crit_edge, label %if.then.i.i.3.i

brelse.exit.i.2.i.brelse.exit.i.3.i_crit_edge:    ; preds = %brelse.exit.i.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.i.3.i

if.then.i.i.3.i:                                  ; preds = %brelse.exit.i.2.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %48) #8
  br label %brelse.exit.i.3.i

brelse.exit.i.3.i:                                ; preds = %if.then.i.i.3.i, %brelse.exit.i.2.i.brelse.exit.i.3.i_crit_edge
  %49 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %18, align 4
  %tobool.not.i.i.4.i = icmp eq ptr %50, null
  br i1 %tobool.not.i.i.4.i, label %brelse.exit.i.3.i.brelse.exit.i.4.i_crit_edge, label %if.then.i.i.4.i

brelse.exit.i.3.i.brelse.exit.i.4.i_crit_edge:    ; preds = %brelse.exit.i.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.i.4.i

if.then.i.i.4.i:                                  ; preds = %brelse.exit.i.3.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %50) #8
  br label %brelse.exit.i.4.i

brelse.exit.i.4.i:                                ; preds = %if.then.i.i.4.i, %brelse.exit.i.3.i.brelse.exit.i.4.i_crit_edge
  %51 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %17, align 4
  %tobool.not.i.i.5.i = icmp eq ptr %52, null
  br i1 %tobool.not.i.i.5.i, label %brelse.exit.i.4.i.brelse.exit.i.5.i_crit_edge, label %if.then.i.i.5.i

brelse.exit.i.4.i.brelse.exit.i.5.i_crit_edge:    ; preds = %brelse.exit.i.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.i.5.i

if.then.i.i.5.i:                                  ; preds = %brelse.exit.i.4.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %52) #8
  br label %brelse.exit.i.5.i

brelse.exit.i.5.i:                                ; preds = %if.then.i.i.5.i, %brelse.exit.i.4.i.brelse.exit.i.5.i_crit_edge
  %53 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %16, align 4
  %tobool.not.i.i.6.i = icmp eq ptr %54, null
  br i1 %tobool.not.i.i.6.i, label %brelse.exit.i.5.i.brelse.exit.i.6.i_crit_edge, label %if.then.i.i.6.i

brelse.exit.i.5.i.brelse.exit.i.6.i_crit_edge:    ; preds = %brelse.exit.i.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.i.6.i

if.then.i.i.6.i:                                  ; preds = %brelse.exit.i.5.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %54) #8
  br label %brelse.exit.i.6.i

brelse.exit.i.6.i:                                ; preds = %if.then.i.i.6.i, %brelse.exit.i.5.i.brelse.exit.i.6.i_crit_edge
  %55 = ptrtoint ptr %bufs.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bufs.i, align 4
  %tobool.not.i.i.7.i = icmp eq ptr %56, null
  br i1 %tobool.not.i.i.7.i, label %for.inc.i.thread, label %brelse.exit.i.6.i.for.inc.sink.split.i_crit_edge

brelse.exit.i.6.i.for.inc.sink.split.i_crit_edge: ; preds = %brelse.exit.i.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split.i

for.inc.sink.split.i:                             ; preds = %brelse.exit.i.6.i.for.inc.sink.split.i_crit_edge, %land.lhs.true.i.for.inc.sink.split.i_crit_edge, %if.end10.i.for.inc.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %56, %brelse.exit.i.6.i.for.inc.sink.split.i_crit_edge ], [ %call.i.i, %land.lhs.true.i.for.inc.sink.split.i_crit_edge ], [ %call.i.i, %if.end10.i.for.inc.sink.split.i_crit_edge ]
  %nbufs.1.ph.i = phi i32 [ 0, %brelse.exit.i.6.i.for.inc.sink.split.i_crit_edge ], [ %nbufs.018.i74, %land.lhs.true.i.for.inc.sink.split.i_crit_edge ], [ %nbufs.018.i74, %if.end10.i.for.inc.sink.split.i_crit_edge ]
  call void @__brelse(ptr noundef nonnull %.sink.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %if.then15.i.for.inc.i_crit_edge
  %nbufs.1.i = phi i32 [ %inc.i, %if.then15.i.for.inc.i_crit_edge ], [ %nbufs.1.ph.i, %for.inc.sink.split.i ]
  %inc21.i = add nuw i32 %next.020.i71, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc21.i, i32 %28)
  %exitcond.not.i = icmp eq i32 %inc21.i, %28
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i.backedge_crit_edge

for.inc.i.for.body.i.backedge_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.backedge

for.body.i.backedge:                              ; preds = %for.inc.i.thread.for.body.i.backedge_crit_edge, %for.inc.i.for.body.i.backedge_crit_edge
  %next.020.i.be = phi i32 [ %inc21.i, %for.inc.i.for.body.i.backedge_crit_edge ], [ %inc21.i56, %for.inc.i.thread.for.body.i.backedge_crit_edge ]
  %nbufs.018.i.be = phi i32 [ %nbufs.1.i, %for.inc.i.for.body.i.backedge_crit_edge ], [ 0, %for.inc.i.thread.for.body.i.backedge_crit_edge ]
  %call.i51 = call i32 @jbd2_journal_bmap(ptr noundef %journal, i32 noundef %next.020.i.be, ptr noundef nonnull %blocknr.i) #8
  %tobool.not.i = icmp eq i32 %call.i51, 0
  br i1 %tobool.not.i, label %for.body.i.backedge.if.end5.i_crit_edge, label %for.body.i.backedge.do.end.i_crit_edge

for.body.i.backedge.do.end.i_crit_edge:           ; preds = %for.body.i.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

for.body.i.backedge.if.end5.i_crit_edge:          ; preds = %for.body.i.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

for.inc.i.thread:                                 ; preds = %brelse.exit.i.6.i
  %inc21.i56 = add nuw i32 %next.020.i71, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc21.i56, i32 %28)
  %exitcond.not.i57 = icmp eq i32 %inc21.i56, %28
  br i1 %exitcond.not.i57, label %for.inc.i.thread.do_readahead.exit_crit_edge, label %for.inc.i.thread.for.body.i.backedge_crit_edge

for.inc.i.thread.for.body.i.backedge_crit_edge:   ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.backedge

for.inc.i.thread.do_readahead.exit_crit_edge:     ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_readahead.exit

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbufs.1.i)
  %cond.i = icmp eq i32 %nbufs.1.i, 0
  br i1 %cond.i, label %for.end.i.do_readahead.exit_crit_edge, label %failed.thread.i

for.end.i.do_readahead.exit_crit_edge:            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_readahead.exit

failed.thread.i:                                  ; preds = %for.end.i
  call void @ll_rw_block(i32 noundef 0, i32 noundef 0, i32 noundef %nbufs.1.i, ptr noundef nonnull %bufs.i) #8
  %dec2.i.old.i = add i32 %nbufs.1.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec2.i.old.i)
  %cmp3.i.old.i = icmp sgt i32 %dec2.i.old.i, -1
  br i1 %cmp3.i.old.i, label %failed.thread.i.while.body.i5.i.preheader_crit_edge, label %failed.thread.i.do_readahead.exit_crit_edge

failed.thread.i.do_readahead.exit_crit_edge:      ; preds = %failed.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_readahead.exit

failed.thread.i.while.body.i5.i.preheader_crit_edge: ; preds = %failed.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i5.i.preheader

failed.i:                                         ; preds = %if.end5.i.failed.i_crit_edge, %do.end.i
  %nbufs.018.i65 = phi i32 [ %nbufs.018.i.lcssa, %do.end.i ], [ %nbufs.018.i74, %if.end5.i.failed.i_crit_edge ]
  %dec2.i.i = add i32 %nbufs.018.i65, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec2.i.i)
  %57 = icmp sgt i32 %dec2.i.i, -1
  br i1 %57, label %failed.i.while.body.i5.i.preheader_crit_edge, label %failed.i.do_readahead.exit_crit_edge

failed.i.do_readahead.exit_crit_edge:             ; preds = %failed.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_readahead.exit

failed.i.while.body.i5.i.preheader_crit_edge:     ; preds = %failed.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i5.i.preheader

while.body.i5.i.preheader:                        ; preds = %failed.i.while.body.i5.i.preheader_crit_edge, %failed.thread.i.while.body.i5.i.preheader_crit_edge
  %dec4.i2.i.ph = phi i32 [ %dec2.i.old.i, %failed.thread.i.while.body.i5.i.preheader_crit_edge ], [ %dec2.i.i, %failed.i.while.body.i5.i.preheader_crit_edge ]
  br label %while.body.i5.i

while.body.i5.i:                                  ; preds = %brelse.exit.i9.i.while.body.i5.i_crit_edge, %while.body.i5.i.preheader
  %dec4.i2.i = phi i32 [ %dec.i7.i, %brelse.exit.i9.i.while.body.i5.i_crit_edge ], [ %dec4.i2.i.ph, %while.body.i5.i.preheader ]
  %arrayidx.i3.i = getelementptr ptr, ptr %bufs.i, i32 %dec4.i2.i
  %58 = ptrtoint ptr %arrayidx.i3.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i3.i, align 4
  %tobool.not.i.i4.i = icmp eq ptr %59, null
  br i1 %tobool.not.i.i4.i, label %while.body.i5.i.brelse.exit.i9.i_crit_edge, label %if.then.i.i6.i

while.body.i5.i.brelse.exit.i9.i_crit_edge:       ; preds = %while.body.i5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.i9.i

if.then.i.i6.i:                                   ; preds = %while.body.i5.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %59) #8
  br label %brelse.exit.i9.i

brelse.exit.i9.i:                                 ; preds = %if.then.i.i6.i, %while.body.i5.i.brelse.exit.i9.i_crit_edge
  %dec.i7.i = add i32 %dec4.i2.i, -1
  %cmp.i8.i = icmp sgt i32 %dec.i7.i, -1
  br i1 %cmp.i8.i, label %brelse.exit.i9.i.while.body.i5.i_crit_edge, label %brelse.exit.i9.i.do_readahead.exit_crit_edge

brelse.exit.i9.i.do_readahead.exit_crit_edge:     ; preds = %brelse.exit.i9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_readahead.exit

brelse.exit.i9.i.while.body.i5.i_crit_edge:       ; preds = %brelse.exit.i9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i5.i

do_readahead.exit:                                ; preds = %brelse.exit.i9.i.do_readahead.exit_crit_edge, %failed.i.do_readahead.exit_crit_edge, %failed.thread.i.do_readahead.exit_crit_edge, %for.end.i.do_readahead.exit_crit_edge, %for.inc.i.thread.do_readahead.exit_crit_edge, %if.then18.do_readahead.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %bufs.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blocknr.i) #8
  br label %if.end20

if.end20:                                         ; preds = %do_readahead.exit, %if.then15.if.end20_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.42, i32 noundef 354) #8
  %60 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %call.i, align 4
  %62 = and i32 %61, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i52 = icmp eq i32 %62, 0
  br i1 %tobool.not.i52, label %if.end20.if.end21_crit_edge, label %if.then.i

if.end20.if.end21_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  call void @__wait_on_buffer(ptr noundef nonnull %call.i) #8
  br label %if.end21

if.end21:                                         ; preds = %if.then.i, %if.end20.if.end21_crit_edge, %if.end12.if.end21_crit_edge
  %63 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %call.i, align 4
  %and1.i.i50 = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i50)
  %tobool23.not = icmp eq i32 %and1.i.i50, 0
  br i1 %tobool23.not, label %brelse.exit, label %if.end30

brelse.exit:                                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %offset) #11
  call void @__brelse(ptr noundef nonnull %call.i) #8
  br label %cleanup

if.end30:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %bhp to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call.i, ptr %bhp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %brelse.exit, %if.end8.cleanup_crit_edge, %do.end5, %do.end
  %retval.0 = phi i32 [ -117, %do.end ], [ %call1, %do.end5 ], [ 0, %if.end30 ], [ -5, %brelse.exit ], [ -12, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blocknr) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jbd2_descriptor_block_csum_verify(ptr nocapture noundef readonly %j, ptr noundef %buf) unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.anon.79, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %j_format_version.i.i.i = getelementptr inbounds %struct.journal_s, ptr %j, i32 0, i32 6
  %0 = ptrtoint ptr %j_format_version.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %j_format_version.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i.i.i = icmp sgt i32 %1, 1
  br i1 %cmp.i.i.i, label %jbd2_has_feature_csum2.exit.i.i, label %entry.jbd2_journal_has_csum_v2or3.exit_crit_edge

entry.jbd2_journal_has_csum_v2or3.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_journal_has_csum_v2or3.exit

jbd2_has_feature_csum2.exit.i.i:                  ; preds = %entry
  %j_superblock.i.i.i = getelementptr inbounds %struct.journal_s, ptr %j, i32 0, i32 5
  %2 = ptrtoint ptr %j_superblock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %j_superblock.i.i.i, align 4
  %s_feature_incompat.i.i.i = getelementptr inbounds %struct.journal_superblock_s, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %s_feature_incompat.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_feature_incompat.i.i.i, align 4
  %6 = and i32 %5, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %.not.i = icmp eq i32 %6, 0
  br i1 %.not.i, label %jbd2_has_feature_csum2.exit.i.i.jbd2_journal_has_csum_v2or3.exit_crit_edge, label %land.rhs.i

jbd2_has_feature_csum2.exit.i.i.jbd2_journal_has_csum_v2or3.exit_crit_edge: ; preds = %jbd2_has_feature_csum2.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_journal_has_csum_v2or3.exit

land.rhs.i:                                       ; preds = %jbd2_has_feature_csum2.exit.i.i
  %j_chksum_driver.i = getelementptr inbounds %struct.journal_s, ptr %j, i32 0, i32 70
  %7 = ptrtoint ptr %j_chksum_driver.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %j_chksum_driver.i, align 8
  %cmp.i = icmp eq ptr %8, null
  br i1 %cmp.i, label %land.rhs2.i, label %land.rhs.i.jbd2_journal_has_csum_v2or3.exit_crit_edge

land.rhs.i.jbd2_journal_has_csum_v2or3.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_journal_has_csum_v2or3.exit

land.rhs2.i:                                      ; preds = %land.rhs.i
  %.b43.i = load i1, ptr @jbd2_journal_has_csum_v2or3.__already_done, align 1
  br i1 %.b43.i, label %land.rhs2.i.jbd2_journal_has_csum_v2or3.exit_crit_edge, label %if.then.i, !prof !102

land.rhs2.i.jbd2_journal_has_csum_v2or3.exit_crit_edge: ; preds = %land.rhs2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_journal_has_csum_v2or3.exit

if.then.i:                                        ; preds = %land.rhs2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @jbd2_journal_has_csum_v2or3.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 1735, i32 noundef 9, ptr noundef null) #8
  br label %jbd2_journal_has_csum_v2or3.exit

jbd2_journal_has_csum_v2or3.exit:                 ; preds = %if.then.i, %land.rhs2.i.jbd2_journal_has_csum_v2or3.exit_crit_edge, %land.rhs.i.jbd2_journal_has_csum_v2or3.exit_crit_edge, %jbd2_has_feature_csum2.exit.i.i.jbd2_journal_has_csum_v2or3.exit_crit_edge, %entry.jbd2_journal_has_csum_v2or3.exit_crit_edge
  %j_chksum_driver37.i = getelementptr inbounds %struct.journal_s, ptr %j, i32 0, i32 70
  %9 = ptrtoint ptr %j_chksum_driver37.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %j_chksum_driver37.i, align 8
  %cmp38.i.not = icmp eq ptr %10, null
  br i1 %cmp38.i.not, label %jbd2_journal_has_csum_v2or3.exit.cleanup_crit_edge, label %if.end

jbd2_journal_has_csum_v2or3.exit.cleanup_crit_edge: ; preds = %jbd2_journal_has_csum_v2or3.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %jbd2_journal_has_csum_v2or3.exit
  %j_blocksize = getelementptr inbounds %struct.journal_s, ptr %j, i32 0, i32 33
  %11 = ptrtoint ptr %j_blocksize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %j_blocksize, align 8
  %add.ptr = getelementptr i8, ptr %buf, i32 %12
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 -4
  %13 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr1, align 4
  store i32 0, ptr %add.ptr1, align 4
  %j_csum_seed = getelementptr inbounds %struct.journal_s, ptr %j, i32 0, i32 71
  %15 = ptrtoint ptr %j_csum_seed to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %j_csum_seed, align 4
  %17 = load i32, ptr %j_blocksize, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i) #8
  %18 = getelementptr inbounds %struct.anon.79, ptr %desc.i, i32 0, i32 1
  %19 = call ptr @memset(ptr %desc.i, i32 255, i32 16)
  %20 = ptrtoint ptr %j_chksum_driver37.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %j_chksum_driver37.i, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %23)
  %cmp.i17 = icmp ugt i32 %23, 4
  br i1 %cmp.i17, label %do.body2.i, label %do.end7.i, !prof !105

do.body2.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/jbd2.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1787, 0\0A.popsection", ""() #8, !srcloc !107
  unreachable

do.end7.i:                                        ; preds = %if.end
  %24 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %desc.i, align 8
  %25 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %16, ptr %18, align 8
  %call10.i = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i, ptr noundef %buf, i32 noundef %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool12.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool12.not.i, label %jbd2_chksum.exit, label %do.body20.i, !prof !102

do.body20.i:                                      ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/jbd2.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1793, 0\0A.popsection", ""() #8, !srcloc !108
  unreachable

jbd2_chksum.exit:                                 ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %18, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i) #8
  %28 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %14, ptr %add.ptr1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %27)
  %cmp = icmp eq i32 %14, %27
  %conv = zext i1 %cmp to i32
  br label %cleanup

cleanup:                                          ; preds = %jbd2_chksum.exit, %jbd2_journal_has_csum_v2or3.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %jbd2_chksum.exit ], [ 1, %jbd2_journal_has_csum_v2or3.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @calc_chksums(ptr noundef %journal, ptr nocapture noundef readonly %bh, ptr nocapture noundef %next_log_block, ptr nocapture noundef %crc32_sum) unnamed_addr #0 align 64 {
entry:
  %obh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %obh) #8
  %0 = ptrtoint ptr %obh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %obh, align 4, !annotation !101
  %j_blocksize.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 33
  %1 = ptrtoint ptr %j_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %j_blocksize.i, align 8
  %call.i = tail call i32 @journal_tag_bytes(ptr noundef %journal) #8
  %j_format_version.i.i.i.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 6
  %3 = ptrtoint ptr %j_format_version.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %j_format_version.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.i.i.i.i = icmp sgt i32 %4, 1
  br i1 %cmp.i.i.i.i, label %jbd2_has_feature_csum2.exit.i.i.i, label %entry.jbd2_journal_has_csum_v2or3.exit.i_crit_edge

entry.jbd2_journal_has_csum_v2or3.exit.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_journal_has_csum_v2or3.exit.i

jbd2_has_feature_csum2.exit.i.i.i:                ; preds = %entry
  %j_superblock.i.i.i.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 5
  %5 = ptrtoint ptr %j_superblock.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %j_superblock.i.i.i.i, align 4
  %s_feature_incompat.i.i.i.i = getelementptr inbounds %struct.journal_superblock_s, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %s_feature_incompat.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_feature_incompat.i.i.i.i, align 4
  %9 = and i32 %8, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %.not.i.i = icmp eq i32 %9, 0
  br i1 %.not.i.i, label %jbd2_has_feature_csum2.exit.i.i.i.jbd2_journal_has_csum_v2or3.exit.i_crit_edge, label %land.rhs.i.i

jbd2_has_feature_csum2.exit.i.i.i.jbd2_journal_has_csum_v2or3.exit.i_crit_edge: ; preds = %jbd2_has_feature_csum2.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_journal_has_csum_v2or3.exit.i

land.rhs.i.i:                                     ; preds = %jbd2_has_feature_csum2.exit.i.i.i
  %j_chksum_driver.i.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 70
  %10 = ptrtoint ptr %j_chksum_driver.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %j_chksum_driver.i.i, align 8
  %cmp.i.i = icmp eq ptr %11, null
  br i1 %cmp.i.i, label %land.rhs2.i.i, label %land.rhs.i.i.jbd2_journal_has_csum_v2or3.exit.i_crit_edge

land.rhs.i.i.jbd2_journal_has_csum_v2or3.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_journal_has_csum_v2or3.exit.i

land.rhs2.i.i:                                    ; preds = %land.rhs.i.i
  %.b43.i.i = load i1, ptr @jbd2_journal_has_csum_v2or3.__already_done, align 1
  br i1 %.b43.i.i, label %land.rhs2.i.i.jbd2_journal_has_csum_v2or3.exit.i_crit_edge, label %if.then.i.i, !prof !102

land.rhs2.i.i.jbd2_journal_has_csum_v2or3.exit.i_crit_edge: ; preds = %land.rhs2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_journal_has_csum_v2or3.exit.i

if.then.i.i:                                      ; preds = %land.rhs2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @jbd2_journal_has_csum_v2or3.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 1735, i32 noundef 9, ptr noundef null) #8
  br label %jbd2_journal_has_csum_v2or3.exit.i

jbd2_journal_has_csum_v2or3.exit.i:               ; preds = %if.then.i.i, %land.rhs2.i.i.jbd2_journal_has_csum_v2or3.exit.i_crit_edge, %land.rhs.i.i.jbd2_journal_has_csum_v2or3.exit.i_crit_edge, %jbd2_has_feature_csum2.exit.i.i.i.jbd2_journal_has_csum_v2or3.exit.i_crit_edge, %entry.jbd2_journal_has_csum_v2or3.exit.i_crit_edge
  %j_chksum_driver37.i.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 70
  %12 = ptrtoint ptr %j_chksum_driver37.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %j_chksum_driver37.i.i, align 8
  %cmp38.i.not.i = icmp eq ptr %13, null
  %sub.i = add i32 %2, -4
  %spec.select.i = select i1 %cmp38.i.not.i, i32 %2, i32 %sub.i
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %14 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %b_data.i, align 4
  %arrayidx.i = getelementptr i8, ptr %15, i32 12
  %sub.ptr.rhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i = sub i32 %call.i, %sub.ptr.rhs.cast.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %jbd2_journal_has_csum_v2or3.exit.i
  %tagp.0.i = phi ptr [ %arrayidx.i, %jbd2_journal_has_csum_v2or3.exit.i ], [ %spec.select23.i, %while.body.i.while.cond.i_crit_edge ]
  %nr.0.i = phi i32 [ 0, %jbd2_journal_has_csum_v2or3.exit.i ], [ %inc.i, %while.body.i.while.cond.i_crit_edge ]
  %sub.ptr.lhs.cast.i = ptrtoint ptr %tagp.0.i to i32
  %add.i = add i32 %sub.ptr.sub.i, %sub.ptr.lhs.cast.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %spec.select.i)
  %cmp.not.i = icmp sgt i32 %add.i, %spec.select.i
  br i1 %cmp.not.i, label %while.cond.i.count_tags.exit_crit_edge, label %while.body.i

while.cond.i.count_tags.exit_crit_edge:           ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %count_tags.exit

while.body.i:                                     ; preds = %while.cond.i
  %tag.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %tagp.0.i, i32 6
  %16 = ptrtoint ptr %tag.sroa.5.0..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %tag.sroa.5.0.copyload.i = load i16, ptr %tag.sroa.5.0..sroa_idx.i, align 1
  %inc.i = add i32 %nr.0.i, 1
  %add.ptr.i = getelementptr i8, ptr %tagp.0.i, i32 %call.i
  %conv.i = zext i16 %tag.sroa.5.0.copyload.i to i32
  %and.i = shl nuw nsw i32 %conv.i, 3
  %17 = and i32 %and.i, 16
  %18 = xor i32 %17, 16
  %spec.select23.i = getelementptr i8, ptr %add.ptr.i, i32 %18
  %and9.i = and i32 %conv.i, 8
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %while.body.i.while.cond.i_crit_edge, label %while.body.i.count_tags.exit_crit_edge

while.body.i.count_tags.exit_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %count_tags.exit

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

count_tags.exit:                                  ; preds = %while.body.i.count_tags.exit_crit_edge, %while.cond.i.count_tags.exit_crit_edge
  %nr.1.i = phi i32 [ %inc.i, %while.body.i.count_tags.exit_crit_edge ], [ %nr.0.i, %while.cond.i.count_tags.exit_crit_edge ]
  %19 = ptrtoint ptr %crc32_sum to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %crc32_sum, align 4
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 4
  %21 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %b_size, align 8
  %call1 = tail call i32 @crc32_be(i32 noundef %20, ptr noundef %15, i32 noundef %22) #12
  %23 = ptrtoint ptr %crc32_sum to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call1, ptr %crc32_sum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr.1.i)
  %cmp39 = icmp sgt i32 %nr.1.i, 0
  br i1 %cmp39, label %for.body.lr.ph, label %count_tags.exit.cleanup_crit_edge

count_tags.exit.cleanup_crit_edge:                ; preds = %count_tags.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %count_tags.exit
  %j_last38 = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 28
  %j_superblock.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 5
  %j_fc_last = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 31
  %j_first = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 27
  br label %for.body

for.body:                                         ; preds = %if.else.for.body_crit_edge, %for.body.lr.ph
  %i.040 = phi i32 [ 0, %for.body.lr.ph ], [ %inc15, %if.else.for.body_crit_edge ]
  %24 = ptrtoint ptr %next_log_block to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %next_log_block, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %next_log_block, align 4
  %26 = ptrtoint ptr %j_format_version.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %j_format_version.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp.i = icmp sgt i32 %27, 1
  br i1 %cmp.i, label %jbd2_has_feature_fast_commit.exit, label %for.body.jbd2_has_feature_fast_commit.exit.thread_crit_edge

for.body.jbd2_has_feature_fast_commit.exit.thread_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_has_feature_fast_commit.exit.thread

jbd2_has_feature_fast_commit.exit:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %j_superblock.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %j_superblock.i, align 4
  %s_feature_incompat.i = getelementptr inbounds %struct.journal_superblock_s, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %s_feature_incompat.i, align 4
  %and.i36 = and i32 %31, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36)
  %cmp1.i.not = icmp eq i32 %and.i36, 0
  %spec.select = select i1 %cmp1.i.not, ptr %j_last38, ptr %j_fc_last
  br label %jbd2_has_feature_fast_commit.exit.thread

jbd2_has_feature_fast_commit.exit.thread:         ; preds = %jbd2_has_feature_fast_commit.exit, %for.body.jbd2_has_feature_fast_commit.exit.thread_crit_edge
  %32 = phi ptr [ %spec.select, %jbd2_has_feature_fast_commit.exit ], [ %j_last38, %for.body.jbd2_has_feature_fast_commit.exit.thread_crit_edge ]
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %cond = load i32, ptr %32, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %cond)
  %cmp3.not = icmp ult i32 %inc, %cond
  br i1 %cmp3.not, label %jbd2_has_feature_fast_commit.exit.thread.if.end_crit_edge, label %if.then

jbd2_has_feature_fast_commit.exit.thread.if.end_crit_edge: ; preds = %jbd2_has_feature_fast_commit.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %jbd2_has_feature_fast_commit.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %j_first to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %j_first, align 8
  %sub.neg = sub i32 %inc, %cond
  %sub4 = add i32 %sub.neg, %35
  %36 = ptrtoint ptr %next_log_block to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %sub4, ptr %next_log_block, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %jbd2_has_feature_fast_commit.exit.thread.if.end_crit_edge
  %call5 = call fastcc i32 @jread(ptr noundef nonnull %obh, ptr noundef %journal, i32 noundef %25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.else, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %call5, i32 noundef %25) #11
  br label %cleanup

if.else:                                          ; preds = %if.end
  %37 = ptrtoint ptr %crc32_sum to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %crc32_sum, align 4
  %39 = ptrtoint ptr %obh to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %obh, align 4
  %b_data11 = getelementptr inbounds %struct.buffer_head, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %b_data11 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %b_data11, align 4
  %b_size12 = getelementptr inbounds %struct.buffer_head, ptr %40, i32 0, i32 4
  %43 = ptrtoint ptr %b_size12 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %b_size12, align 8
  %call13 = tail call i32 @crc32_be(i32 noundef %38, ptr noundef %42, i32 noundef %44) #12
  %45 = ptrtoint ptr %crc32_sum to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call13, ptr %crc32_sum, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !103
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %40, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #8
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #8, !srcloc !104
  %inc15 = add nuw nsw i32 %i.040, 1
  %exitcond.not = icmp eq i32 %inc15, %nr.1.i
  br i1 %exitcond.not, label %if.else.cleanup_crit_edge, label %if.else.for.body_crit_edge

if.else.for.body_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.else.cleanup_crit_edge, %do.end9, %count_tags.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end9 ], [ 0, %count_tags.exit.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %obh) #8
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_bh(ptr noundef %bh) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !103
  %b_count = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %b_count, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count, ptr %b_count, i32 1, ptr elementtype(i32) %b_count) #8, !srcloc !104
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_test_revoke(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jbd2_commit_block_csum_verify(ptr nocapture noundef readonly %j, ptr noundef %buf) unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.anon.79, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %j_format_version.i.i.i = getelementptr inbounds %struct.journal_s, ptr %j, i32 0, i32 6
  %0 = ptrtoint ptr %j_format_version.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %j_format_version.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i.i.i = icmp sgt i32 %1, 1
  br i1 %cmp.i.i.i, label %jbd2_has_feature_csum2.exit.i.i, label %entry.jbd2_journal_has_csum_v2or3.exit_crit_edge

entry.jbd2_journal_has_csum_v2or3.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_journal_has_csum_v2or3.exit

jbd2_has_feature_csum2.exit.i.i:                  ; preds = %entry
  %j_superblock.i.i.i = getelementptr inbounds %struct.journal_s, ptr %j, i32 0, i32 5
  %2 = ptrtoint ptr %j_superblock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %j_superblock.i.i.i, align 4
  %s_feature_incompat.i.i.i = getelementptr inbounds %struct.journal_superblock_s, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %s_feature_incompat.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_feature_incompat.i.i.i, align 4
  %6 = and i32 %5, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %.not.i = icmp eq i32 %6, 0
  br i1 %.not.i, label %jbd2_has_feature_csum2.exit.i.i.jbd2_journal_has_csum_v2or3.exit_crit_edge, label %land.rhs.i

jbd2_has_feature_csum2.exit.i.i.jbd2_journal_has_csum_v2or3.exit_crit_edge: ; preds = %jbd2_has_feature_csum2.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_journal_has_csum_v2or3.exit

land.rhs.i:                                       ; preds = %jbd2_has_feature_csum2.exit.i.i
  %j_chksum_driver.i = getelementptr inbounds %struct.journal_s, ptr %j, i32 0, i32 70
  %7 = ptrtoint ptr %j_chksum_driver.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %j_chksum_driver.i, align 8
  %cmp.i = icmp eq ptr %8, null
  br i1 %cmp.i, label %land.rhs2.i, label %land.rhs.i.jbd2_journal_has_csum_v2or3.exit_crit_edge

land.rhs.i.jbd2_journal_has_csum_v2or3.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_journal_has_csum_v2or3.exit

land.rhs2.i:                                      ; preds = %land.rhs.i
  %.b43.i = load i1, ptr @jbd2_journal_has_csum_v2or3.__already_done, align 1
  br i1 %.b43.i, label %land.rhs2.i.jbd2_journal_has_csum_v2or3.exit_crit_edge, label %if.then.i, !prof !102

land.rhs2.i.jbd2_journal_has_csum_v2or3.exit_crit_edge: ; preds = %land.rhs2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_journal_has_csum_v2or3.exit

if.then.i:                                        ; preds = %land.rhs2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @jbd2_journal_has_csum_v2or3.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 1735, i32 noundef 9, ptr noundef null) #8
  br label %jbd2_journal_has_csum_v2or3.exit

jbd2_journal_has_csum_v2or3.exit:                 ; preds = %if.then.i, %land.rhs2.i.jbd2_journal_has_csum_v2or3.exit_crit_edge, %land.rhs.i.jbd2_journal_has_csum_v2or3.exit_crit_edge, %jbd2_has_feature_csum2.exit.i.i.jbd2_journal_has_csum_v2or3.exit_crit_edge, %entry.jbd2_journal_has_csum_v2or3.exit_crit_edge
  %j_chksum_driver37.i = getelementptr inbounds %struct.journal_s, ptr %j, i32 0, i32 70
  %9 = ptrtoint ptr %j_chksum_driver37.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %j_chksum_driver37.i, align 8
  %cmp38.i.not = icmp eq ptr %10, null
  br i1 %cmp38.i.not, label %jbd2_journal_has_csum_v2or3.exit.cleanup_crit_edge, label %if.end

jbd2_journal_has_csum_v2or3.exit.cleanup_crit_edge: ; preds = %jbd2_journal_has_csum_v2or3.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %jbd2_journal_has_csum_v2or3.exit
  %h_chksum = getelementptr inbounds %struct.commit_header, ptr %buf, i32 0, i32 6
  %11 = ptrtoint ptr %h_chksum to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %h_chksum, align 8
  store i32 0, ptr %h_chksum, align 8
  %j_csum_seed = getelementptr inbounds %struct.journal_s, ptr %j, i32 0, i32 71
  %13 = ptrtoint ptr %j_csum_seed to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %j_csum_seed, align 4
  %j_blocksize = getelementptr inbounds %struct.journal_s, ptr %j, i32 0, i32 33
  %15 = ptrtoint ptr %j_blocksize to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %j_blocksize, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i) #8
  %17 = getelementptr inbounds %struct.anon.79, ptr %desc.i, i32 0, i32 1
  %18 = call ptr @memset(ptr %desc.i, i32 255, i32 16)
  %19 = ptrtoint ptr %j_chksum_driver37.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %j_chksum_driver37.i, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %22)
  %cmp.i16 = icmp ugt i32 %22, 4
  br i1 %cmp.i16, label %do.body2.i, label %do.end7.i, !prof !105

do.body2.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/jbd2.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1787, 0\0A.popsection", ""() #8, !srcloc !107
  unreachable

do.end7.i:                                        ; preds = %if.end
  %23 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %desc.i, align 8
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %14, ptr %17, align 8
  %call10.i = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i, ptr noundef %buf, i32 noundef %16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool12.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool12.not.i, label %jbd2_chksum.exit, label %do.body20.i, !prof !102

do.body20.i:                                      ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/jbd2.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1793, 0\0A.popsection", ""() #8, !srcloc !108
  unreachable

jbd2_chksum.exit:                                 ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %17, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i) #8
  %27 = ptrtoint ptr %h_chksum to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %12, ptr %h_chksum, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %26)
  %cmp = icmp eq i32 %12, %26
  %conv = zext i1 %cmp to i32
  br label %cleanup

cleanup:                                          ; preds = %jbd2_chksum.exit, %jbd2_journal_has_csum_v2or3.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %jbd2_chksum.exit ], [ 1, %jbd2_journal_has_csum_v2or3.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_bmap(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ll_rw_block(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wait_on_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_be(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_set_revoke(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !22, !24, !26, !28, !29, !30, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !52, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !79, !80, !82, !83, !84, !85, !87, !88, !90}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/jbd2/recovery.c", i32 300, i32 3}
!2 = !{ptr @__func__.jbd2_journal_recover, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/jbd2/recovery.c", i32 312, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/jbd2/recovery.c", i32 315, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/jbd2/recovery.c", i32 359, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @jbd2_journal_skip_recovery._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @jbd2_journal_skip_recovery._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/jbd2/recovery.c", i32 365, i32 3}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @__func__.do_one_pass, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/jbd2/recovery.c", i32 487, i32 2}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/jbd2/recovery.c", i32 513, i32 3}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/jbd2/recovery.c", i32 522, i32 3}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/jbd2/recovery.c", i32 545, i32 3}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/jbd2/recovery.c", i32 571, i32 6}
!28 = !{ptr @do_one_pass._entry, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @do_one_pass._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/jbd2/recovery.c", i32 578, i32 5}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/jbd2/recovery.c", i32 626, i32 6}
!34 = !{ptr @do_one_pass._entry.15, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @do_one_pass._entry_ptr.17, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/jbd2/recovery.c", i32 654, i32 7}
!38 = !{ptr @do_one_pass._entry.18, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @do_one_pass._entry_ptr.20, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/jbd2/recovery.c", i32 668, i32 7}
!42 = !{ptr @do_one_pass._entry.21, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @do_one_pass._entry_ptr.23, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/jbd2/recovery.c", i32 750, i32 6}
!46 = !{ptr @do_one_pass._entry.24, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @do_one_pass._entry_ptr.26, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/jbd2/recovery.c", i32 761, i32 5}
!50 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/jbd2/recovery.c", i32 829, i32 5}
!52 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/jbd2/recovery.c", i32 848, i32 4}
!54 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/jbd2/recovery.c", i32 870, i32 4}
!56 = !{ptr @do_one_pass._entry.30, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @do_one_pass._entry_ptr.32, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/jbd2/recovery.c", i32 138, i32 3}
!60 = !{ptr @.str.34, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @jread._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @jread._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.36, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/jbd2/recovery.c", i32 145, i32 3}
!65 = !{ptr @jread._entry.35, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @jread._entry_ptr.37, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.39, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/jbd2/recovery.c", i32 163, i32 3}
!69 = !{ptr @jread._entry.38, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @jread._entry_ptr.40, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.41, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/jbd2/recovery.c", i32 89, i32 4}
!73 = !{ptr @do_readahead._entry, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @do_readahead._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.42, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../include/linux/buffer_head.h", i32 354, i32 2}
!77 = distinct !{null, !78, !"__already_done", i1 false, i1 false}
!78 = !{!"../include/linux/jbd2.h", i32 1734, i32 2}
!79 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/jbd2/recovery.c", i32 405, i32 4}
!82 = !{ptr @.str.45, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @calc_chksums._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @calc_chksums._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @__func__.fc_do_one_pass, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/jbd2/recovery.c", i32 248, i32 3}
!87 = !{ptr @.str.46, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.47, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/jbd2/recovery.c", i32 252, i32 4}
!90 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/jbd2/recovery.c", i32 266, i32 3}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{!"auto-init"}
!102 = !{!"branch_weights", i32 2000, i32 1}
!103 = !{i64 2153870095}
!104 = !{i64 2148224612, i64 2148224638, i64 2148224667, i64 2148224701, i64 2148224732, i64 2148224755}
!105 = !{!"branch_weights", i32 1, i32 2000}
!106 = !{i64 2154592421, i64 2154592904, i64 2154592458, i64 2154592514, i64 2154592548, i64 2154592572, i64 2154592613, i64 2154592634, i64 2154592662, i64 2154592696}
!107 = !{i64 2154565293, i64 2154565779, i64 2154565330, i64 2154565386, i64 2154565420, i64 2154565444, i64 2154565485, i64 2154565506, i64 2154565534, i64 2154565568}
!108 = !{i64 2154566861, i64 2154567347, i64 2154566898, i64 2154566954, i64 2154566988, i64 2154567012, i64 2154567053, i64 2154567074, i64 2154567102, i64 2154567136}
!109 = !{i64 2148231005, i64 2148231037, i64 2148231066, i64 2148231100, i64 2148231131, i64 2148231154}
!110 = !{i64 2148320086}
