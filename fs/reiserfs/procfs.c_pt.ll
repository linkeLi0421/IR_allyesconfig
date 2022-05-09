; ModuleID = '/llk/IR_all_yes/fs/reiserfs/procfs.c_pt.bc'
source_filename = "../fs/reiserfs/procfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.reiserfs_sb_info = type { ptr, ptr, ptr, ptr, i16, %struct.mutex, ptr, i32, ptr, ptr, ptr, i32, %struct.anon.77, %struct.wait_queue_head, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.reiserfs_proc_info_data, ptr, i32, %struct.spinlock, ptr, ptr, i32, i32, %struct.delayed_work, %struct.spinlock, [2 x ptr], i32, ptr, ptr }
%struct.anon.77 = type { i32, i32, i32, i32, i32 }
%struct.reiserfs_proc_info_data = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32, %struct.__scan_bitmap_stats, %struct.__journal_stats }
%struct.__scan_bitmap_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.__journal_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.reiserfs_super_block_v1 = type { i32, i32, i32, %struct.journal_params, i16, i16, i16, i16, [10 x i8], i16, i32, i16, i16, i16, i16 }
%struct.journal_params = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.reiserfs_super_block = type { %struct.reiserfs_super_block_v1, i32, i32, [16 x i8], [16 x i8], i16, i16, i32, i32, [76 x i8] }
%struct.reiserfs_journal = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, i32, i32, ptr, i64, %struct.mutex, %struct.mutex, %struct.wait_queue_head, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, [8192 x ptr], [8192 x ptr], [5 x %struct.reiserfs_list_bitmap], %struct.list_head, i32, i32, i32, i32, %struct.delayed_work, ptr, %struct.atomic_t }
%struct.reiserfs_list_bitmap = type { ptr, ptr }

@reiserfs_proc_info_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&__PINFO(sb).lock\00", [46 x i8] zeroinitializer }, align 32
@proc_info_root = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"super\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"per-level\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bitmap\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"on-disk-super\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"oidmap\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"journal\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot create /proc/%s/%s\00", [38 x i8] zeroinitializer }, align 32
@__func__.reiserfs_proc_info_init = private unnamed_addr constant [24 x i8] c"reiserfs_proc_info_init\00", align 1
@proc_info_root_name = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fs/reiserfs\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cannot create /proc/%s\00", [41 x i8] zeroinitializer }, align 32
@__func__.reiserfs_proc_info_global_init = private unnamed_addr constant [31 x i8] c"reiserfs_proc_info_global_init\00", align 1
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"3.6\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"3.5\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s format\09with checks %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [621 x i8], [147 x i8] } { [621 x i8] c"state: \09%s\0Amount options: \09%s%s%s%s%s%s%s%s%s%s%s\0Agen. counter: \09%i\0As_disk_reads: \09%i\0As_disk_writes: \09%i\0As_fix_nodes: \09%i\0As_do_balance: \09%i\0As_unneeded_left_neighbor: \09%i\0As_good_search_by_key_reada: \09%i\0As_bmaps: \09%i\0As_bmaps_without_search: \09%i\0As_direct2indirect: \09%i\0As_indirect2direct: \09%i\0A\0Amax_hash_collisions: \09%i\0Abreads: \09%lu\0Abread_misses: \09%lu\0Asearch_by_key: \09%lu\0Asearch_by_key_fs_changed: \09%lu\0Asearch_by_key_restarted: \09%lu\0Ainsert_item_restarted: \09%lu\0Apaste_into_item_restarted: \09%lu\0Acut_from_item_restarted: \09%lu\0Adelete_solid_item_restarted: \09%lu\0Adelete_item_restarted: \09%lu\0Aleaked_oid: \09%lu\0Aleaves_removable: \09%lu\0A\00", [147 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"REISERFS_VALID_FS\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"REISERFS_ERROR_FS\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FORCE_R5 \00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FORCE_RUPASOV \00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"FORCE_TEA \00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DETECT_HASH \00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"NO_BORDER \00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"BORDER \00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NO_UNHASHED_RELOCATION \00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"UNHASHED_RELOCATION \00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TEST4 \00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TAILS \00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SMALL_TAILS \00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"NO_TAILS \00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"REPLAY_ONLY \00", [19 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CONV \00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [203 x i8], [53 x i8] } { [203 x i8] c"level\09     balances [sbk:  reads   fs_changed   restarted]   free space        items   can_remove         lnum         rnum       lbytes       rbytes     get_neig get_neig_res  need_l_neig  need_r_neig\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"%i\09 %12lu %12lu %12lu %12lu %12lu %12lu %12lu %12li %12li %12li %12li %12lu %12lu %12lu %12lu\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [159 x i8], [33 x i8] } { [159 x i8] c"free_block: %lu\0A  scan_bitmap:          wait          bmap         retry        stolen  journal_hintjournal_nohint\0A %14lu %14lu %14lu %14lu %14lu %14lu %14lu\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [242 x i8], [46 x i8] } { [242 x i8] c"block_count: \09%i\0Afree_blocks: \09%i\0Aroot_block: \09%i\0Ablocksize: \09%i\0Aoid_maxsize: \09%i\0Aoid_cursize: \09%i\0Aumount_state: \09%i\0Amagic: \09%10.10s\0Afs_state: \09%i\0Ahash: \09%s\0Atree_height: \09%i\0Abmap_nr: \09%i\0Aversion: \09%i\0Aflags: \09%x[%s]\0Areserved_for_journal: \09%i\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tea\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rupasov\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"r5\00", [29 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"unset\00", [26 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"attrs_cleared\00", [18 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: [ %x .. %x )\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"free\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"used\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"total: \09%i [%i/%i] used: %lu [exact]\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [906 x i8], [246 x i8] } { [906 x i8] c"jp_journal_1st_block: \09%i\0Ajp_journal_dev: \09%pg[%x]\0Ajp_journal_size: \09%i\0Ajp_journal_trans_max: \09%i\0Ajp_journal_magic: \09%i\0Ajp_journal_max_batch: \09%i\0Ajp_journal_max_commit_age: \09%i\0Ajp_journal_max_trans_age: \09%i\0Aj_1st_reserved_block: \09%i\0Aj_state: \09%li\0Aj_trans_id: \09%u\0Aj_mount_id: \09%lu\0Aj_start: \09%lu\0Aj_len: \09%lu\0Aj_len_alloc: \09%lu\0Aj_wcount: \09%i\0Aj_bcount: \09%lu\0Aj_first_unflushed_offset: \09%lu\0Aj_last_flush_trans_id: \09%u\0Aj_trans_start_time: \09%lli\0Aj_list_bitmap_index: \09%i\0Aj_must_wait: \09%i\0Aj_next_full_flush: \09%i\0Aj_next_async_flush: \09%i\0Aj_cnode_used: \09%i\0Aj_cnode_free: \09%i\0A\0Ain_journal: \09%12lu\0Ain_journal_bitmap: \09%12lu\0Ain_journal_reusable: \09%12lu\0Alock_journal: \09%12lu\0Alock_journal_wait: \09%12lu\0Ajournal_begin: \09%12lu\0Ajournal_relock_writers: \09%12lu\0Ajournal_relock_wcount: \09%12lu\0Amark_dirty: \09%12lu\0Amark_dirty_already: \09%12lu\0Amark_dirty_notjournal: \09%12lu\0Arestore_prepared: \09%12lu\0Aprepare: \09%12lu\0Aprepare_retry: \09%12lu\0A\00", [246 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 16777216, i64 33554432, i64 50331648]
@___asan_gen_.47 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 419, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [15 x i8] c"proc_info_root\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 399, i32 31 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 422, i32 16 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 423, i32 16 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 424, i32 16 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 425, i32 16 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 426, i32 16 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 427, i32 16 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 428, i32 16 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 431, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [20 x i8] c"proc_info_root_name\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 400, i32 19 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 460, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 33, i32 12 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 35, i32 12 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 37, i32 12 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 40, i32 16 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 42, i32 6 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 75, i32 16 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 103, i32 6 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 103, i32 28 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 104, i32 29 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 104, i32 43 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 105, i32 34 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 106, i32 30 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 107, i32 33 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 108, i32 31 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 108, i32 46 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 110, i32 6 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 111, i32 39 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 112, i32 27 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 113, i32 29 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 114, i32 6 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 114, i32 23 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 115, i32 24 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 116, i32 29 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 139, i32 16 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 155, i32 17 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 197, i32 16 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 233, i32 16 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 257, i32 30 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 258, i32 33 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 259, i32 31 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 260, i32 34 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 264, i32 8 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 282, i32 17 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 283, i32 17 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 283, i32 26 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 294, i32 16 }
@___asan_gen_.194 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.195 = private constant [24 x i8] c"../fs/reiserfs/procfs.c\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 315, i32 6 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @reiserfs_proc_info_init.__key, ptr @.str, ptr @proc_info_root, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @proc_info_root_name, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reiserfs_proc_info_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_info_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_info_root_name to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 621, i32 768, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 203, i32 256, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 159, i32 192, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 242, i32 288, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 906, i32 1152, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_proc_info_init(ptr noundef %sb) local_unnamed_addr #0 align 64 {
entry:
  %b = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %b) #6
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %0 = call ptr @memset(ptr %b, i32 255, i32 32)
  %call = call i32 @strlcpy(ptr noundef nonnull %b, ptr noundef %s_id, i32 noundef 32) #6
  %call3 = call ptr @strchr(ptr noundef nonnull %b, i32 noundef 47)
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call3 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 33, ptr %call3, align 1
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_proc_info_data = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27
  call void @__raw_spin_lock_init(ptr noundef %s_proc_info_data, ptr noundef nonnull @.str, ptr noundef nonnull @reiserfs_proc_info_init.__key, i16 noundef signext 3) #6
  %4 = load ptr, ptr @proc_info_root, align 4
  %call7 = call ptr @proc_mkdir_data(ptr noundef nonnull %b, i16 noundef zeroext 0, ptr noundef %4, ptr noundef %sb) #6
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  %procdir = getelementptr inbounds %struct.reiserfs_sb_info, ptr %6, i32 0, i32 28
  %7 = ptrtoint ptr %procdir to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7, ptr %procdir, align 4
  %8 = load ptr, ptr %s_fs_info.i, align 16
  %procdir10 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %8, i32 0, i32 28
  %9 = ptrtoint ptr %procdir10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %procdir10, align 4
  %tobool11.not = icmp eq ptr %10, null
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i = call ptr @proc_create_single_data(ptr noundef nonnull @.str.1, i16 noundef zeroext 0, ptr noundef nonnull %10, ptr noundef nonnull @show_version, ptr noundef %sb) #6
  %11 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i, align 16
  %procdir.i32 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %12, i32 0, i32 28
  %13 = ptrtoint ptr %procdir.i32 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %procdir.i32, align 4
  %call1.i33 = call ptr @proc_create_single_data(ptr noundef nonnull @.str.2, i16 noundef zeroext 0, ptr noundef %14, ptr noundef nonnull @show_super, ptr noundef %sb) #6
  %15 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_fs_info.i, align 16
  %procdir.i35 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %16, i32 0, i32 28
  %17 = ptrtoint ptr %procdir.i35 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %procdir.i35, align 4
  %call1.i36 = call ptr @proc_create_single_data(ptr noundef nonnull @.str.3, i16 noundef zeroext 0, ptr noundef %18, ptr noundef nonnull @show_per_level, ptr noundef %sb) #6
  %19 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_fs_info.i, align 16
  %procdir.i38 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %20, i32 0, i32 28
  %21 = ptrtoint ptr %procdir.i38 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %procdir.i38, align 4
  %call1.i39 = call ptr @proc_create_single_data(ptr noundef nonnull @.str.4, i16 noundef zeroext 0, ptr noundef %22, ptr noundef nonnull @show_bitmap, ptr noundef %sb) #6
  %23 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_fs_info.i, align 16
  %procdir.i41 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %24, i32 0, i32 28
  %25 = ptrtoint ptr %procdir.i41 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %procdir.i41, align 4
  %call1.i42 = call ptr @proc_create_single_data(ptr noundef nonnull @.str.5, i16 noundef zeroext 0, ptr noundef %26, ptr noundef nonnull @show_on_disk_super, ptr noundef %sb) #6
  %27 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_fs_info.i, align 16
  %procdir.i44 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %28, i32 0, i32 28
  %29 = ptrtoint ptr %procdir.i44 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %procdir.i44, align 4
  %call1.i45 = call ptr @proc_create_single_data(ptr noundef nonnull @.str.6, i16 noundef zeroext 0, ptr noundef %30, ptr noundef nonnull @show_oidmap, ptr noundef %sb) #6
  %31 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_fs_info.i, align 16
  %procdir.i47 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %32, i32 0, i32 28
  %33 = ptrtoint ptr %procdir.i47 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %procdir.i47, align 4
  %call1.i48 = call ptr @proc_create_single_data(ptr noundef nonnull @.str.7, i16 noundef zeroext 0, ptr noundef %34, ptr noundef nonnull @show_journal, ptr noundef %sb) #6
  br label %cleanup

if.end13:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %sb, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.reiserfs_proc_info_init, ptr noundef nonnull @proc_info_root_name, ptr noundef nonnull %b) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then12
  %retval.0 = phi i32 [ 0, %if.then12 ], [ 1, %if.end13 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %b) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_version(ptr noundef %m, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_properties = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %s_properties to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_properties, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and3 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %.str.12..str.11 = select i1 %tobool4.not, ptr @.str.12, ptr @.str.11
  %format.0 = select i1 %tobool.not, ptr %.str.12..str.11, ptr @.str.10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.13, ptr noundef nonnull %format.0, ptr noundef nonnull @.str.14) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_super(ptr noundef %m, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_state = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %s_mount_state to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %s_mount_state, align 4
  %s_mount_opt = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_mount_opt, align 4
  %and41 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  %and45 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  %cond47 = select i1 %tobool46.not, ptr @.str.30, ptr @.str.29
  %cond48 = select i1 %tobool42.not, ptr %cond47, ptr @.str.28
  %and36 = and i32 %7, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  %cond38 = select i1 %tobool37.not, ptr @.str.19, ptr @.str.27
  %and31 = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  %cond33 = select i1 %tobool32.not, ptr @.str.19, ptr @.str.26
  %and26 = and i32 %7, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  %cond28 = select i1 %tobool27.not, ptr @.str.19, ptr @.str.25
  %and21 = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %cond23 = select i1 %tobool22.not, ptr @.str.24, ptr @.str.23
  %and16 = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %cond18 = select i1 %tobool17.not, ptr @.str.19, ptr @.str.22
  %and11 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %cond13 = select i1 %tobool12.not, ptr @.str.19, ptr @.str.21
  %and6 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %cond8 = select i1 %tobool7.not, ptr @.str.19, ptr @.str.20
  %and = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond3 = select i1 %tobool.not, ptr @.str.19, ptr @.str.18
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %cmp = icmp eq i16 %5, 1
  %cond = select i1 %cmp, ptr @.str.16, ptr @.str.17
  %and51 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  %cond53 = select i1 %tobool52.not, ptr @.str.19, ptr @.str.31
  %and56 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  %cond58 = select i1 %tobool57.not, ptr @.str.19, ptr @.str.32
  %s_generation_counter = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_generation_counter, i32 noundef 4) #6
  %8 = ptrtoint ptr %s_generation_counter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %s_generation_counter, align 4
  %s_disk_reads = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 16
  %10 = ptrtoint ptr %s_disk_reads to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_disk_reads, align 4
  %s_disk_writes = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 17
  %12 = ptrtoint ptr %s_disk_writes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_disk_writes, align 4
  %s_fix_nodes = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 18
  %14 = ptrtoint ptr %s_fix_nodes to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_fix_nodes, align 4
  %s_do_balance = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 19
  %16 = ptrtoint ptr %s_do_balance to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_do_balance, align 4
  %s_unneeded_left_neighbor = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 20
  %18 = ptrtoint ptr %s_unneeded_left_neighbor to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_unneeded_left_neighbor, align 4
  %s_good_search_by_key_reada = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 21
  %20 = ptrtoint ptr %s_good_search_by_key_reada to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_good_search_by_key_reada, align 4
  %s_bmaps = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 22
  %22 = ptrtoint ptr %s_bmaps to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_bmaps, align 4
  %s_bmaps_without_search = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 23
  %24 = ptrtoint ptr %s_bmaps_without_search to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %s_bmaps_without_search, align 4
  %s_direct2indirect = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 24
  %26 = ptrtoint ptr %s_direct2indirect to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %s_direct2indirect, align 4
  %s_indirect2direct = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 25
  %28 = ptrtoint ptr %s_indirect2direct to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %s_indirect2direct, align 4
  %max_hash_collisions = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 2
  %30 = ptrtoint ptr %max_hash_collisions to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_hash_collisions, align 4
  %breads = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 3
  %32 = ptrtoint ptr %breads to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %breads, align 4
  %bread_miss = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 4
  %34 = ptrtoint ptr %bread_miss to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bread_miss, align 4
  %search_by_key = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 5
  %36 = ptrtoint ptr %search_by_key to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %search_by_key, align 4
  %search_by_key_fs_changed = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 6
  %38 = ptrtoint ptr %search_by_key_fs_changed to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %search_by_key_fs_changed, align 4
  %search_by_key_restarted = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 7
  %40 = ptrtoint ptr %search_by_key_restarted to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %search_by_key_restarted, align 4
  %insert_item_restarted = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 8
  %42 = ptrtoint ptr %insert_item_restarted to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %insert_item_restarted, align 4
  %paste_into_item_restarted = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 9
  %44 = ptrtoint ptr %paste_into_item_restarted to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %paste_into_item_restarted, align 4
  %cut_from_item_restarted = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 10
  %46 = ptrtoint ptr %cut_from_item_restarted to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cut_from_item_restarted, align 4
  %delete_solid_item_restarted = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 11
  %48 = ptrtoint ptr %delete_solid_item_restarted to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %delete_solid_item_restarted, align 4
  %delete_item_restarted = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 12
  %50 = ptrtoint ptr %delete_item_restarted to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %delete_item_restarted, align 4
  %leaked_oid = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 13
  %52 = ptrtoint ptr %leaked_oid to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %leaked_oid, align 4
  %leaves_removable = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 14
  %54 = ptrtoint ptr %leaves_removable to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %leaves_removable, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.15, ptr noundef nonnull %cond, ptr noundef nonnull %cond3, ptr noundef nonnull %cond8, ptr noundef nonnull %cond13, ptr noundef nonnull %cond18, ptr noundef nonnull %cond23, ptr noundef nonnull %cond28, ptr noundef nonnull %cond33, ptr noundef nonnull %cond38, ptr noundef nonnull %cond48, ptr noundef nonnull %cond53, ptr noundef nonnull %cond58, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef %43, i32 noundef %45, i32 noundef %47, i32 noundef %49, i32 noundef %51, i32 noundef %53, i32 noundef %55) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_per_level(ptr noundef %m, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.33) #6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %level.062 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 15, i32 %level.062
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 16, i32 %level.062
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2, align 4
  %arrayidx4 = getelementptr %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 17, i32 %level.062
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4, align 4
  %arrayidx6 = getelementptr %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 18, i32 %level.062
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx6, align 4
  %arrayidx8 = getelementptr %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 20, i32 %level.062
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx8, align 4
  %arrayidx10 = getelementptr %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 19, i32 %level.062
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx10, align 4
  %arrayidx12 = getelementptr %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 21, i32 %level.062
  %16 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx12, align 4
  %arrayidx14 = getelementptr %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 22, i32 %level.062
  %18 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx14, align 4
  %arrayidx16 = getelementptr %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 23, i32 %level.062
  %20 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx16, align 4
  %arrayidx18 = getelementptr %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 24, i32 %level.062
  %22 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx18, align 4
  %arrayidx20 = getelementptr %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 25, i32 %level.062
  %24 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx20, align 4
  %arrayidx22 = getelementptr %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 26, i32 %level.062
  %26 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx22, align 4
  %arrayidx24 = getelementptr %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 27, i32 %level.062
  %28 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx24, align 4
  %arrayidx26 = getelementptr %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 28, i32 %level.062
  %30 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx26, align 4
  %arrayidx28 = getelementptr %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 29, i32 %level.062
  %32 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx28, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.34, i32 noundef %level.062, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33) #6
  %inc = add nuw nsw i32 %level.062, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_bitmap(ptr noundef %m, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %free_block = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 30
  %4 = ptrtoint ptr %free_block to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %free_block, align 4
  %scan_bitmap = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 31
  %6 = ptrtoint ptr %scan_bitmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %scan_bitmap, align 4
  %wait = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 31, i32 1
  %8 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wait, align 4
  %bmap = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 31, i32 2
  %10 = ptrtoint ptr %bmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bmap, align 4
  %retry = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 31, i32 3
  %12 = ptrtoint ptr %retry to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %retry, align 4
  %stolen = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 31, i32 6
  %14 = ptrtoint ptr %stolen to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stolen, align 4
  %in_journal_hint = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 31, i32 4
  %16 = ptrtoint ptr %in_journal_hint to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %in_journal_hint, align 4
  %in_journal_nohint = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 31, i32 5
  %18 = ptrtoint ptr %in_journal_nohint to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %in_journal_nohint, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.35, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_on_disk_super(ptr noundef %m, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %s_rs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_rs, align 4
  %s_hash_function_code = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %s_hash_function_code to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %s_hash_function_code, align 1
  %s_flags = getelementptr inbounds %struct.reiserfs_super_block, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %s_flags to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %s_flags, align 1
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %5, align 1
  %s_free_blocks = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %s_free_blocks to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %s_free_blocks, align 1
  %s_root_block = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %5, i32 0, i32 2
  %14 = ptrtoint ptr %s_root_block to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %s_root_block, align 1
  %s_blocksize = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %5, i32 0, i32 4
  %16 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %s_blocksize, align 1
  %s_oid_maxsize = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %5, i32 0, i32 5
  %18 = ptrtoint ptr %s_oid_maxsize to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %s_oid_maxsize, align 1
  %s_oid_cursize = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %5, i32 0, i32 6
  %20 = ptrtoint ptr %s_oid_cursize to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %s_oid_cursize, align 1
  %s_umount_state = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %5, i32 0, i32 7
  %22 = ptrtoint ptr %s_umount_state to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %s_umount_state, align 1
  %s_fs_state = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %5, i32 0, i32 9
  %24 = ptrtoint ptr %s_fs_state to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %s_fs_state, align 1
  %26 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %cond.false22 [
    i32 16777216, label %entry.cond.end28_crit_edge
    i32 33554432, label %cond.end28.fold.split
    i32 50331648, label %cond.end28.fold.split58
  ]

entry.cond.end28_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end28

cond.false22:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp23 = icmp eq i32 %7, 0
  %cond = select i1 %cmp23, ptr @.str.40, ptr @.str.12
  br label %cond.end28

cond.end28.fold.split:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end28

cond.end28.fold.split58:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end28

cond.end28:                                       ; preds = %cond.end28.fold.split58, %cond.end28.fold.split, %cond.false22, %entry.cond.end28_crit_edge
  %cond29 = phi ptr [ @.str.37, %entry.cond.end28_crit_edge ], [ %cond, %cond.false22 ], [ @.str.38, %cond.end28.fold.split ], [ @.str.39, %cond.end28.fold.split58 ]
  %27 = tail call i16 @llvm.bswap.i16(i16 %25)
  %conv13 = zext i16 %27 to i32
  %s_magic = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %5, i32 0, i32 8
  %28 = tail call i16 @llvm.bswap.i16(i16 %23)
  %conv10 = zext i16 %28 to i32
  %29 = tail call i16 @llvm.bswap.i16(i16 %21)
  %conv8 = zext i16 %29 to i32
  %30 = tail call i16 @llvm.bswap.i16(i16 %19)
  %conv6 = zext i16 %30 to i32
  %31 = tail call i16 @llvm.bswap.i16(i16 %17)
  %conv = zext i16 %31 to i32
  %32 = tail call i32 @llvm.bswap.i32(i32 %15)
  %33 = tail call i32 @llvm.bswap.i32(i32 %13)
  %34 = tail call i32 @llvm.bswap.i32(i32 %11)
  %35 = tail call i32 @llvm.bswap.i32(i32 %9)
  %s_tree_height = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %5, i32 0, i32 11
  %36 = ptrtoint ptr %s_tree_height to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %s_tree_height, align 1
  %38 = tail call i16 @llvm.bswap.i16(i16 %37)
  %conv31 = zext i16 %38 to i32
  %s_bmap_nr = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %5, i32 0, i32 12
  %39 = ptrtoint ptr %s_bmap_nr to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %s_bmap_nr, align 1
  %41 = tail call i16 @llvm.bswap.i16(i16 %40)
  %conv33 = zext i16 %41 to i32
  %s_version = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %5, i32 0, i32 13
  %42 = ptrtoint ptr %s_version to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %s_version, align 1
  %44 = tail call i16 @llvm.bswap.i16(i16 %43)
  %conv35 = zext i16 %44 to i32
  %and = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond36 = select i1 %tobool.not, ptr @.str.19, ptr @.str.41
  %s_reserved_for_journal = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %5, i32 0, i32 14
  %45 = ptrtoint ptr %s_reserved_for_journal to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %s_reserved_for_journal, align 1
  %47 = tail call i16 @llvm.bswap.i16(i16 %46)
  %conv38 = zext i16 %47 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.36, i32 noundef %34, i32 noundef %33, i32 noundef %32, i32 noundef %conv, i32 noundef %conv6, i32 noundef %conv8, i32 noundef %conv10, ptr noundef %s_magic, i32 noundef %conv13, ptr noundef nonnull %cond29, i32 noundef %conv31, i32 noundef %conv33, i32 noundef %conv35, i32 noundef %35, ptr noundef nonnull %cond36, i32 noundef %conv38) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_oidmap(ptr noundef %m, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %s_rs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_rs, align 4
  %s_oid_cursize = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %s_oid_cursize to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %s_oid_cursize, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %conv = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp68.not = icmp eq i16 %7, 0
  br i1 %cmp68.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sub = add nsw i32 %conv, -1
  %add.ptr = getelementptr %struct.reiserfs_super_block_v1, ptr %5, i32 1
  %add.ptr7 = getelementptr %struct.reiserfs_super_block, ptr %5, i32 1
  %umax = call i32 @llvm.umax.i32(i32 %conv, i32 1)
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.070 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %total_used.069 = phi i32 [ 0, %for.body.lr.ph ], [ %total_used.1, %if.end.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.070, i32 %sub)
  %cmp2 = icmp eq i32 %i.070, %sub
  br i1 %cmp2, label %for.body.cond.end8_crit_edge, label %cond.false

for.body.cond.end8_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end8

cond.false:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i, align 16
  %s_properties = getelementptr inbounds %struct.reiserfs_sb_info, ptr %10, i32 0, i32 15
  %11 = ptrtoint ptr %s_properties to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_properties, align 4
  %and = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr %add.ptr7, ptr %add.ptr
  %add = add nuw nsw i32 %i.070, 1
  %arrayidx = getelementptr i32, ptr %cond, i32 %add
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  br label %cond.end8

cond.end8:                                        ; preds = %cond.false, %for.body.cond.end8_crit_edge
  %cond9 = phi i32 [ %15, %cond.false ], [ -1, %for.body.cond.end8_crit_edge ]
  %and10 = and i32 %i.070, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %cond12 = select i1 %tobool11.not, ptr @.str.44, ptr @.str.43
  %16 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i, align 16
  %s_properties14 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %17, i32 0, i32 15
  %18 = ptrtoint ptr %s_properties14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_properties14, align 4
  %and15 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %cond22 = select i1 %tobool16.not, ptr %add.ptr7, ptr %add.ptr
  %arrayidx23 = getelementptr i32, ptr %cond22, i32 %i.070
  %20 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx23, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.42, ptr noundef nonnull %cond12, i32 noundef %22, i32 noundef %cond9) #6
  br i1 %tobool11.not, label %if.then, label %cond.end8.if.end_crit_edge

cond.end8.if.end_crit_edge:                       ; preds = %cond.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %cond.end8
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_fs_info.i, align 16
  %s_properties27 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %24, i32 0, i32 15
  %25 = ptrtoint ptr %s_properties27 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_properties27, align 4
  %and28 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  %cond35 = select i1 %tobool29.not, ptr %add.ptr7, ptr %add.ptr
  %arrayidx36 = getelementptr i32, ptr %cond35, i32 %i.070
  %27 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx36, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %sub37 = add i32 %cond9, %total_used.069
  %add38 = sub i32 %sub37, %29
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end8.if.end_crit_edge
  %total_used.1 = phi i32 [ %total_used.069, %cond.end8.if.end_crit_edge ], [ %add38, %if.then ]
  %inc = add nuw nsw i32 %i.070, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %total_used.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %total_used.1, %if.end.for.end_crit_edge ]
  %s_oid_maxsize = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %5, i32 0, i32 5
  %30 = ptrtoint ptr %s_oid_maxsize to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %s_oid_maxsize, align 1
  %32 = tail call i16 @llvm.bswap.i16(i16 %31)
  %conv40 = zext i16 %32 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.45, i32 noundef %conv, i32 noundef %conv, i32 noundef %conv40, i32 noundef %total_used.0.lcssa) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_journal(ptr noundef %m, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %s_rs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_rs, align 4
  %s_journal = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_journal, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %s_journal2 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %s_journal2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_journal2, align 4
  %j_dev_bd = getelementptr inbounds %struct.reiserfs_journal, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %j_dev_bd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %j_dev_bd, align 4
  %jp_journal_dev = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %5, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %jp_journal_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %jp_journal_dev, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %jp_journal_size = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %5, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %jp_journal_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %jp_journal_size, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %jp_journal_trans_max = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %5, i32 0, i32 3, i32 3
  %19 = ptrtoint ptr %jp_journal_trans_max to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %jp_journal_trans_max, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %jp_journal_magic = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %5, i32 0, i32 3, i32 4
  %22 = ptrtoint ptr %jp_journal_magic to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %jp_journal_magic, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %jp_journal_max_batch = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %5, i32 0, i32 3, i32 5
  %25 = ptrtoint ptr %jp_journal_max_batch to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %jp_journal_max_batch, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %j_max_commit_age = getelementptr inbounds %struct.reiserfs_journal, ptr %10, i32 0, i32 30
  %28 = ptrtoint ptr %j_max_commit_age to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %j_max_commit_age, align 8
  %jp_journal_max_trans_age = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %5, i32 0, i32 3, i32 7
  %30 = ptrtoint ptr %jp_journal_max_trans_age to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %jp_journal_max_trans_age, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %j_1st_reserved_block = getelementptr inbounds %struct.reiserfs_journal, ptr %10, i32 0, i32 5
  %33 = ptrtoint ptr %j_1st_reserved_block to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %j_1st_reserved_block, align 4
  %j_state = getelementptr inbounds %struct.reiserfs_journal, ptr %10, i32 0, i32 6
  %35 = ptrtoint ptr %j_state to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %j_state, align 8
  %j_trans_id = getelementptr inbounds %struct.reiserfs_journal, ptr %10, i32 0, i32 7
  %37 = ptrtoint ptr %j_trans_id to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %j_trans_id, align 4
  %j_mount_id = getelementptr inbounds %struct.reiserfs_journal, ptr %10, i32 0, i32 8
  %39 = ptrtoint ptr %j_mount_id to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %j_mount_id, align 8
  %j_start = getelementptr inbounds %struct.reiserfs_journal, ptr %10, i32 0, i32 9
  %41 = ptrtoint ptr %j_start to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %j_start, align 4
  %j_len = getelementptr inbounds %struct.reiserfs_journal, ptr %10, i32 0, i32 10
  %43 = ptrtoint ptr %j_len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %j_len, align 8
  %j_len_alloc = getelementptr inbounds %struct.reiserfs_journal, ptr %10, i32 0, i32 11
  %45 = ptrtoint ptr %j_len_alloc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %j_len_alloc, align 4
  %j_wcount = getelementptr inbounds %struct.reiserfs_journal, ptr %10, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %j_wcount, i32 noundef 4) #6
  %47 = ptrtoint ptr %j_wcount to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %j_wcount, align 4
  %49 = ptrtoint ptr %s_journal2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s_journal2, align 4
  %j_bcount = getelementptr inbounds %struct.reiserfs_journal, ptr %50, i32 0, i32 13
  %51 = ptrtoint ptr %j_bcount to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %j_bcount, align 4
  %j_first_unflushed_offset = getelementptr inbounds %struct.reiserfs_journal, ptr %50, i32 0, i32 14
  %53 = ptrtoint ptr %j_first_unflushed_offset to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %j_first_unflushed_offset, align 8
  %j_last_flush_trans_id = getelementptr inbounds %struct.reiserfs_journal, ptr %50, i32 0, i32 15
  %55 = ptrtoint ptr %j_last_flush_trans_id to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %j_last_flush_trans_id, align 4
  %j_trans_start_time = getelementptr inbounds %struct.reiserfs_journal, ptr %50, i32 0, i32 17
  %57 = ptrtoint ptr %j_trans_start_time to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %j_trans_start_time, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %58)
  %cmp.i.i = icmp sgt i64 %58, 9223372035
  %mul.i.i = mul i64 %58, 1000000000
  %add.i.i = add i64 %mul.i.i, 500000000
  %retval.0.i.i = select i1 %cmp.i.i, i64 9223372036854775807, i64 %add.i.i, !prof !110
  %call.i.i94 = tail call i64 @ktime_mono_to_any(i64 noundef %retval.0.i.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i.i94)
  %cmp8.i.i = icmp slt i64 %call.i.i94, 0
  %59 = tail call i64 @llvm.abs.i64(i64 %call.i.i94, i1 false) #6
  %60 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %59, i32 0) #9, !srcloc !111
  %asmresult.i.i.i = extractvalue { i64, i32 } %60, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %60, 1
  %61 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %59, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #9, !srcloc !112
  %asmresult10.i.i.i = extractvalue { i64, i32 } %61, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 29
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div1811.i.i
  %62 = ptrtoint ptr %s_journal2 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %s_journal2, align 4
  %j_list_bitmap_index = getelementptr inbounds %struct.reiserfs_journal, ptr %63, i32 0, i32 22
  %64 = ptrtoint ptr %j_list_bitmap_index to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %j_list_bitmap_index, align 8
  %j_must_wait = getelementptr inbounds %struct.reiserfs_journal, ptr %63, i32 0, i32 23
  %66 = ptrtoint ptr %j_must_wait to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %j_must_wait, align 4
  %j_next_full_flush = getelementptr inbounds %struct.reiserfs_journal, ptr %63, i32 0, i32 24
  %68 = ptrtoint ptr %j_next_full_flush to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %j_next_full_flush, align 8
  %j_next_async_flush = getelementptr inbounds %struct.reiserfs_journal, ptr %63, i32 0, i32 25
  %70 = ptrtoint ptr %j_next_async_flush to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %j_next_async_flush, align 4
  %j_cnode_used = getelementptr inbounds %struct.reiserfs_journal, ptr %63, i32 0, i32 26
  %72 = ptrtoint ptr %j_cnode_used to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %j_cnode_used, align 8
  %j_cnode_free = getelementptr inbounds %struct.reiserfs_journal, ptr %63, i32 0, i32 27
  %74 = ptrtoint ptr %j_cnode_free to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %j_cnode_free, align 4
  %journal = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 32
  %76 = ptrtoint ptr %journal to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %journal, align 4
  %in_journal_bitmap = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 32, i32 1
  %78 = ptrtoint ptr %in_journal_bitmap to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %in_journal_bitmap, align 4
  %in_journal_reusable = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 32, i32 2
  %80 = ptrtoint ptr %in_journal_reusable to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %in_journal_reusable, align 4
  %lock_journal = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 32, i32 3
  %82 = ptrtoint ptr %lock_journal to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %lock_journal, align 4
  %lock_journal_wait = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 32, i32 4
  %84 = ptrtoint ptr %lock_journal_wait to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %lock_journal_wait, align 4
  %journal_being = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 32, i32 5
  %86 = ptrtoint ptr %journal_being to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %journal_being, align 4
  %journal_relock_writers = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 32, i32 6
  %88 = ptrtoint ptr %journal_relock_writers to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %journal_relock_writers, align 4
  %journal_relock_wcount = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 32, i32 7
  %90 = ptrtoint ptr %journal_relock_wcount to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %journal_relock_wcount, align 4
  %mark_dirty = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 32, i32 8
  %92 = ptrtoint ptr %mark_dirty to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %mark_dirty, align 4
  %mark_dirty_already = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 32, i32 9
  %94 = ptrtoint ptr %mark_dirty_already to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %mark_dirty_already, align 4
  %mark_dirty_notjournal = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 32, i32 10
  %96 = ptrtoint ptr %mark_dirty_notjournal to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %mark_dirty_notjournal, align 4
  %restore_prepared = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 32, i32 11
  %98 = ptrtoint ptr %restore_prepared to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %restore_prepared, align 4
  %prepare = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 32, i32 12
  %100 = ptrtoint ptr %prepare to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %prepare, align 4
  %prepare_retry = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 32, i32 13
  %102 = ptrtoint ptr %prepare_retry to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %prepare_retry, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.46, i32 noundef %8, ptr noundef %12, i32 noundef %15, i32 noundef %18, i32 noundef %21, i32 noundef %24, i32 noundef %27, i32 noundef %29, i32 noundef %32, i32 noundef %34, i32 noundef %36, i32 noundef %38, i32 noundef %40, i32 noundef %42, i32 noundef %44, i32 noundef %46, i32 noundef %48, i32 noundef %52, i32 noundef %54, i32 noundef %56, i64 noundef %cond213.i.i, i32 noundef %65, i32 noundef %67, i32 noundef %69, i32 noundef %71, i32 noundef %73, i32 noundef %75, i32 noundef %77, i32 noundef %79, i32 noundef %81, i32 noundef %83, i32 noundef %85, i32 noundef %87, i32 noundef %89, i32 noundef %91, i32 noundef %93, i32 noundef %95, i32 noundef %97, i32 noundef %99, i32 noundef %101, i32 noundef %103) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__reiserfs_warning(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_proc_info_done(ptr noundef %sb) local_unnamed_addr #0 align 64 {
entry:
  %b = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %procdir = getelementptr inbounds %struct.reiserfs_sb_info, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %procdir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %procdir, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %b) #6
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %4 = call ptr @memset(ptr %b, i32 255, i32 32)
  %call2 = call i32 @strlcpy(ptr noundef nonnull %b, ptr noundef %s_id, i32 noundef 32) #6
  %call4 = call ptr @strchr(ptr noundef nonnull %b, i32 noundef 47)
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.then.if.end_crit_edge, label %if.then6

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 33, ptr %call4, align 1
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then.if.end_crit_edge
  %6 = load ptr, ptr @proc_info_root, align 4
  %call8 = call i32 @remove_proc_subtree(ptr noundef nonnull %b, ptr noundef %6) #6
  %7 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i, align 16
  %procdir10 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %8, i32 0, i32 28
  %9 = ptrtoint ptr %procdir10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %procdir10, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %b) #6
  br label %if.end11

if.end11:                                         ; preds = %if.end, %entry.if.end11_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remove_proc_subtree(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_proc_info_global_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @proc_info_root, align 4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then:                                          ; preds = %entry
  %call = tail call ptr @proc_mkdir(ptr noundef nonnull @proc_info_root_name, ptr noundef null) #6
  store ptr %call, ptr @proc_info_root, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then1, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.reiserfs_proc_info_global_init, ptr noundef nonnull @proc_info_root_name) #6
  br label %return

return:                                           ; preds = %if.then1, %if.then.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.then1 ], [ 0, %if.then.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_proc_info_global_done() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @proc_info_root, align 4
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  store ptr null, ptr @proc_info_root, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @proc_info_root_name, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_single_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_mono_to_any(i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !20, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107, !108}
!llvm.ident = !{!109}

!0 = !{ptr @reiserfs_proc_info_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../fs/reiserfs/procfs.c", i32 419, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/reiserfs/procfs.c", i32 422, i32 16}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/reiserfs/procfs.c", i32 423, i32 16}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/reiserfs/procfs.c", i32 424, i32 16}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/reiserfs/procfs.c", i32 425, i32 16}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/reiserfs/procfs.c", i32 426, i32 16}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/reiserfs/procfs.c", i32 427, i32 16}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/reiserfs/procfs.c", i32 428, i32 16}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/reiserfs/procfs.c", i32 431, i32 2}
!19 = !{ptr @__func__.reiserfs_proc_info_init, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/reiserfs/procfs.c", i32 460, i32 4}
!22 = !{ptr @__func__.reiserfs_proc_info_global_init, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @proc_info_root, !24, !"proc_info_root", i1 false, i1 false}
!24 = !{!"../fs/reiserfs/procfs.c", i32 399, i32 31}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/reiserfs/procfs.c", i32 33, i32 12}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/reiserfs/procfs.c", i32 35, i32 12}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/reiserfs/procfs.c", i32 37, i32 12}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/reiserfs/procfs.c", i32 40, i32 16}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/reiserfs/procfs.c", i32 42, i32 6}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/reiserfs/procfs.c", i32 75, i32 16}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/reiserfs/procfs.c", i32 103, i32 6}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/reiserfs/procfs.c", i32 103, i32 28}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/reiserfs/procfs.c", i32 104, i32 29}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/reiserfs/procfs.c", i32 104, i32 43}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/reiserfs/procfs.c", i32 105, i32 34}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/reiserfs/procfs.c", i32 106, i32 30}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/reiserfs/procfs.c", i32 107, i32 33}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/reiserfs/procfs.c", i32 108, i32 31}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/reiserfs/procfs.c", i32 108, i32 46}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/reiserfs/procfs.c", i32 110, i32 6}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/reiserfs/procfs.c", i32 111, i32 39}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/reiserfs/procfs.c", i32 112, i32 27}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/reiserfs/procfs.c", i32 113, i32 29}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/reiserfs/procfs.c", i32 114, i32 6}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/reiserfs/procfs.c", i32 114, i32 23}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/reiserfs/procfs.c", i32 115, i32 24}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/reiserfs/procfs.c", i32 116, i32 29}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/reiserfs/procfs.c", i32 139, i32 16}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/reiserfs/procfs.c", i32 155, i32 17}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/reiserfs/procfs.c", i32 197, i32 16}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/reiserfs/procfs.c", i32 233, i32 16}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/reiserfs/procfs.c", i32 257, i32 30}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/reiserfs/procfs.c", i32 258, i32 33}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/reiserfs/procfs.c", i32 259, i32 31}
!85 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/reiserfs/procfs.c", i32 260, i32 34}
!87 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/reiserfs/procfs.c", i32 264, i32 8}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/reiserfs/procfs.c", i32 282, i32 17}
!91 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/reiserfs/procfs.c", i32 283, i32 17}
!93 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/reiserfs/procfs.c", i32 283, i32 26}
!95 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/reiserfs/procfs.c", i32 294, i32 16}
!97 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/reiserfs/procfs.c", i32 315, i32 6}
!99 = !{ptr @proc_info_root_name, !100, !"proc_info_root_name", i1 false, i1 false}
!100 = !{!"../fs/reiserfs/procfs.c", i32 400, i32 19}
!101 = !{i32 1, !"wchar_size", i32 2}
!102 = !{i32 1, !"min_enum_size", i32 4}
!103 = !{i32 8, !"branch-target-enforcement", i32 0}
!104 = !{i32 8, !"sign-return-address", i32 0}
!105 = !{i32 8, !"sign-return-address-all", i32 0}
!106 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!107 = !{i32 7, !"uwtable", i32 1}
!108 = !{i32 7, !"frame-pointer", i32 2}
!109 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!110 = !{!"branch_weights", i32 1, i32 2000}
!111 = !{i64 712361, i64 712388, i64 712410, i64 712438}
!112 = !{i64 712769, i64 712796, i64 712829, i64 712850, i64 712877, i64 712903}
