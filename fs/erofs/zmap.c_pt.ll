; ModuleID = '/llk/IR_all_yes/fs/erofs/zmap.c_pt.bc'
source_filename = "../fs/erofs/zmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iomap_ops = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.67 }
%struct.atomic_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.74 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.erofs_sb_info = type { %struct.erofs_mount_opts, %struct.list_head, %struct.mutex, %struct.xarray, i32, i16, ptr, %struct.erofs_sb_lz4_info, ptr, ptr, i64, i64, i32, i32, i32, i16, i8, i32, i32, i64, i64, i64, [16 x i8], [16 x i8], i32, i32, %struct.kobject, %struct.completion }
%struct.erofs_mount_opts = type { i8, i32, i32, i32 }
%struct.erofs_sb_lz4_info = type { i16, i16 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.erofs_buf = type { ptr, ptr, i32 }
%struct.erofs_map_blocks = type { %struct.erofs_buf, i64, i64, i64, i64, i16, i8, i32 }
%struct.z_erofs_map_header = type { i16, i16, i16, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.z_erofs_maprecorder = type { ptr, ptr, ptr, i32, i8, i8, i16, [2 x i16], i32, i32, i64 }
%struct.iomap = type { i64, i64, i64, i16, i16, ptr, ptr, ptr, ptr, ptr }
%struct.z_erofs_vle_decompressed_index = type { i16, i16, %union.anon.81 }
%union.anon.81 = type { i32 }

@z_erofs_aops = external dso_local constant %struct.address_space_operations, align 4
@z_erofs_iomap_report_ops = dso_local constant { %struct.iomap_ops, [24 x i8] } { %struct.iomap_ops { ptr @z_erofs_iomap_begin_report, ptr null }, [24 x i8] zeroinitializer }, align 32
@__tracepoint_z_erofs_map_blocks_iter_enter = external dso_local global %struct.tracepoint, align 4
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/erofs.h\00", [35 x i8] zeroinitializer }, align 32
@trace_z_erofs_map_blocks_iter_enter.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__func__.z_erofs_fill_inode_lazy = private unnamed_addr constant [24 x i8] c"z_erofs_fill_inode_lazy\00", align 1
@.str.3 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"unknown HEAD%u format %u for nid %llu, please upgrade kernel\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"per-inode big pcluster without sb feature for nid %llu\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"big pcluster head1/2 of compact indexes should be consistent for nid %llu\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"invalid tail-packing pclustersize %llu\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/wait_bit.h\00", [39 x i8] zeroinitializer }, align 32
@__func__.z_erofs_do_map_blocks = private unnamed_addr constant [22 x i8] c"z_erofs_do_map_blocks\00", align 1
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"invalid logical cluster 0 at nid %llu\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"unknown type %u @ offset %llu of nid %llu\0A\00", [53 x i8] zeroinitializer }, align 32
@z_erofs_do_map_blocks.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @__func__.z_erofs_do_map_blocks, ptr @.str.11, ptr @.str.12, i8 0, i8 -80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"erofs\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/erofs/zmap.c\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s, m_la %llu m_pa %llu m_llen %llu m_plen %llu m_flags 0%o\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"erofs: %s, m_la %llu m_pa %llu m_llen %llu m_plen %llu m_flags 0%o\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.z_erofs_extent_lookback = private unnamed_addr constant [24 x i8] c"z_erofs_extent_lookback\00", align 1
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"bogus lookback distance @ nid %llu\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"invalid lookback distance 0 @ nid %llu\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"unknown type %u @ lcn %lu of nid %llu\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.z_erofs_get_extent_compressedlen = private unnamed_addr constant [33 x i8] c"z_erofs_get_extent_compressedlen\00", align 1
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"cannot found CBLKCNT @ lcn %lu of nid %llu\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"bogus CBLKCNT @ lcn %lu of nid %llu\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.z_erofs_get_extent_decompressedlen = private unnamed_addr constant [35 x i8] c"z_erofs_get_extent_decompressedlen\00", align 1
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"unknown type %u @ lcn %llu of nid %llu\0A\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_z_erofs_map_blocks_iter_exit = external dso_local global %struct.tracepoint, align 4
@trace_z_erofs_map_blocks_iter_exit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.20 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.23 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.25 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.28 = private unnamed_addr constant [25 x i8] c"z_erofs_iomap_report_ops\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 771, i32 24 }
@___asan_gen_.35 = private unnamed_addr constant [32 x i8] c"../include/trace/events/erofs.h\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 179, i32 1 }
@___asan_gen_.38 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 108, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 79, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 89, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 97, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 119, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant [28 x i8] c"../include/linux/wait_bit.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 181, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 644, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 661, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 702, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 440, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 455, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 469, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 536, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 546, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.89 = private constant [19 x i8] c"../fs/erofs/zmap.c\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 584, i32 4 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @z_erofs_iomap_report_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @z_erofs_iomap_report_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @z_erofs_fill_inode(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %feature_incompat.i = getelementptr inbounds %struct.erofs_sb_info, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %feature_incompat.i, align 4
  %6 = and i32 %5, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %land.lhs.true2, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true2:                                   ; preds = %entry
  %datalayout = getelementptr i8, ptr %inode, i32 -44
  %7 = ptrtoint ptr %datalayout to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %datalayout, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp = icmp eq i8 %8, 1
  br i1 %cmp, label %if.then, label %land.lhs.true2.if.end_crit_edge

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  %9 = getelementptr i8, ptr %inode, i32 -32
  %z_logical_clusterbits = getelementptr i8, ptr %inode, i32 -28
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %9, align 8
  %11 = ptrtoint ptr %z_logical_clusterbits to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 12, ptr %z_logical_clusterbits, align 4
  %flags = getelementptr i8, ptr %inode, i32 -48
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2.if.end_crit_edge, %entry.if.end_crit_edge
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %12 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @z_erofs_aops, ptr %a_ops, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @z_erofs_map_blocks_iter(ptr noundef %inode, ptr noundef %map, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %buf.i = alloca %struct.erofs_buf, align 4
  %map.i = alloca %struct.erofs_map_blocks, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_z_erofs_map_blocks_iter_enter(ptr noundef %inode, ptr noundef %map, i32 noundef %flags)
  %m_la = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 2
  %0 = ptrtoint ptr %m_la to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %m_la, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %2 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp.not = icmp ult i64 %1, %3
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add = add i64 %1, 1
  %sub = sub i64 %add, %3
  %m_llen = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 4
  %4 = ptrtoint ptr %m_llen to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %sub, ptr %m_llen, align 8
  %5 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %i_size, align 8
  %7 = ptrtoint ptr %m_la to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %m_la, align 8
  %m_flags = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 7
  %8 = ptrtoint ptr %m_flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %m_flags, align 4
  br label %out

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -56
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %9 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buf.i) #7
  %11 = call ptr @memset(ptr %buf.i, i32 0, i32 12)
  %flags.i = getelementptr i8, ptr %inode, i32 -48
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags.i, align 4
  %14 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.end.i, label %z_erofs_fill_inode_lazy.exit.thread

z_erofs_fill_inode_lazy.exit.thread:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !60
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf.i) #7
  br label %if.end6

if.end.i:                                         ; preds = %if.end
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 181) #7
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 30, ptr noundef %flags.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.if.end8.i_crit_edge, label %wait_on_bit_lock.exit.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

wait_on_bit_lock.exit.i:                          ; preds = %if.end.i
  %call3.i.i = tail call i32 @out_of_line_wait_on_bit_lock(ptr noundef %flags.i, i32 noundef 30, ptr noundef nonnull @bit_wait, i32 noundef 258) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool6.not.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool6.not.i, label %wait_on_bit_lock.exit.i.if.end8.i_crit_edge, label %z_erofs_fill_inode_lazy.exit.thread42

wait_on_bit_lock.exit.i.if.end8.i_crit_edge:      ; preds = %wait_on_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

z_erofs_fill_inode_lazy.exit.thread42:            ; preds = %wait_on_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf.i) #7
  br label %out

if.end8.i:                                        ; preds = %wait_on_bit_lock.exit.i.if.end8.i_crit_edge, %if.end.i.if.end8.i_crit_edge
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags.i, align 4
  %17 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool11.not.i = icmp eq i32 %17, 0
  br i1 %tobool11.not.i, label %do.body14.i, label %if.end8.i.z_erofs_fill_inode_lazy.exit_crit_edge

if.end8.i.z_erofs_fill_inode_lazy.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %z_erofs_fill_inode_lazy.exit

do.body14.i:                                      ; preds = %if.end8.i
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 33
  %18 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_fs_info.i, align 16
  %feature_incompat.i.i = getelementptr inbounds %struct.erofs_sb_info, ptr %19, i32 0, i32 25
  %20 = ptrtoint ptr %feature_incompat.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %feature_incompat.i.i, align 4
  %22 = and i32 %21, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %.not.i = icmp eq i32 %22, 0
  br i1 %.not.i, label %land.rhs.i, label %do.body14.i.do.end30.i_crit_edge

do.body14.i.do.end30.i_crit_edge:                 ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end30.i

land.rhs.i:                                       ; preds = %do.body14.i
  %datalayout.i = getelementptr i8, ptr %inode, i32 -44
  %23 = ptrtoint ptr %datalayout.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %datalayout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %24)
  %cmp.i = icmp eq i8 %24, 1
  br i1 %cmp.i, label %do.body22.i, label %land.rhs.i.do.end30.i_crit_edge, !prof !61

land.rhs.i.do.end30.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end30.i

do.body22.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #7, !srcloc !62
  unreachable

do.end30.i:                                       ; preds = %land.rhs.i.do.end30.i_crit_edge, %do.body14.i.do.end30.i_crit_edge
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %add.ptr.i, align 8
  %meta_blkaddr.i.i = getelementptr inbounds %struct.erofs_sb_info, ptr %19, i32 0, i32 13
  %27 = ptrtoint ptr %meta_blkaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %meta_blkaddr.i.i, align 4
  %conv.i.i = zext i32 %28 to i64
  %mul.i.i = shl nuw nsw i64 %conv.i.i, 12
  %islotbits.i.i = getelementptr inbounds %struct.erofs_sb_info, ptr %19, i32 0, i32 16
  %29 = ptrtoint ptr %islotbits.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %islotbits.i.i, align 2
  %sh_prom.i.i = zext i8 %30 to i64
  %shl.i.i = shl i64 %26, %sh_prom.i.i
  %inode_isize.i = getelementptr i8, ptr %inode, i32 -43
  %31 = ptrtoint ptr %inode_isize.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %inode_isize.i, align 1
  %conv33.i = zext i8 %32 to i64
  %xattr_isize.i = getelementptr i8, ptr %inode, i32 -42
  %33 = ptrtoint ptr %xattr_isize.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %xattr_isize.i, align 2
  %conv34.i = zext i16 %34 to i64
  %add.i.i = or i64 %mul.i.i, 7
  %add.i = add i64 %add.i.i, %shl.i.i
  %add35.i = add i64 %add.i, %conv33.i
  %add36.i = add i64 %add35.i, %conv34.i
  %div190.i = lshr i64 %add36.i, 12
  %conv37.i = trunc i64 %div190.i to i32
  %call38.i = call ptr @erofs_read_metabuf(ptr noundef nonnull %buf.i, ptr noundef %10, i32 noundef %conv37.i, i32 noundef 2) #7
  %cmp.i.i = icmp ugt ptr %call38.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then40.i, label %if.end42.i

if.then40.i:                                      ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %call38.i to i32
  br label %z_erofs_fill_inode_lazy.exit

if.end42.i:                                       ; preds = %do.end30.i
  %36 = trunc i64 %add36.i to i32
  %idx.ext.i = and i32 %36, 4088
  %add.ptr43.i = getelementptr i8, ptr %call38.i, i32 %idx.ext.i
  %h_advise.i = getelementptr inbounds %struct.z_erofs_map_header, ptr %add.ptr43.i, i32 0, i32 2
  %37 = ptrtoint ptr %h_advise.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %h_advise.i, align 2
  %39 = call i16 @llvm.bswap.i16(i16 %38) #7
  %40 = getelementptr i8, ptr %inode, i32 -32
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %39, ptr %40, align 8
  %h_algorithmtype.i = getelementptr inbounds %struct.z_erofs_map_header, ptr %add.ptr43.i, i32 0, i32 3
  %42 = ptrtoint ptr %h_algorithmtype.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %h_algorithmtype.i, align 2
  %44 = and i8 %43, 15
  %z_algorithmtype.i = getelementptr i8, ptr %inode, i32 -30
  %45 = ptrtoint ptr %z_algorithmtype.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %z_algorithmtype.i, align 2
  %46 = load i8, ptr %h_algorithmtype.i, align 2
  %47 = lshr i8 %46, 4
  %arrayidx51.i = getelementptr i8, ptr %inode, i32 -29
  %48 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %arrayidx51.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %44)
  %cmp55.i = icmp ugt i8 %44, 1
  br i1 %cmp55.i, label %if.end42.i.if.then62.i_crit_edge, label %lor.lhs.false.i

if.end42.i.if.then62.i_crit_edge:                 ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then62.i

lor.lhs.false.i:                                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %46)
  %cmp60.i = icmp ugt i8 %46, 31
  br i1 %cmp60.i, label %lor.lhs.false.i.if.then62.i_crit_edge, label %if.end68.i

lor.lhs.false.i.if.then62.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then62.i

if.then62.i:                                      ; preds = %lor.lhs.false.i.if.then62.i_crit_edge, %if.end42.i.if.then62.i_crit_edge
  %headnr.0.i = phi i32 [ 0, %if.end42.i.if.then62.i_crit_edge ], [ 1, %lor.lhs.false.i.if.then62.i_crit_edge ]
  %add63.i = add nuw nsw i32 %headnr.0.i, 1
  %arrayidx65.i = getelementptr [2 x i8], ptr %z_algorithmtype.i, i32 0, i32 %headnr.0.i
  %49 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx65.i, align 1
  %conv66.i = zext i8 %50 to i32
  %51 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %add.ptr.i, align 8
  call void (ptr, ptr, ptr, ...) @_erofs_err(ptr noundef %10, ptr noundef nonnull @__func__.z_erofs_fill_inode_lazy, ptr noundef nonnull @.str.3, i32 noundef %add63.i, i32 noundef %conv66.i, i64 noundef %52) #7
  br label %unmap_done.thread.i

if.end68.i:                                       ; preds = %lor.lhs.false.i
  %h_clusterbits.i = getelementptr inbounds %struct.z_erofs_map_header, ptr %add.ptr43.i, i32 0, i32 4
  %53 = ptrtoint ptr %h_clusterbits.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %h_clusterbits.i, align 1
  %55 = and i8 %54, 7
  %narrow.i = add nuw nsw i8 %55, 12
  %z_logical_clusterbits.i = getelementptr i8, ptr %inode, i32 -28
  %56 = ptrtoint ptr %z_logical_clusterbits.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %narrow.i, ptr %z_logical_clusterbits.i, align 4
  %57 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %s_fs_info.i, align 16
  %feature_incompat.i198.i = getelementptr inbounds %struct.erofs_sb_info, ptr %58, i32 0, i32 25
  %59 = ptrtoint ptr %feature_incompat.i198.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %feature_incompat.i198.i, align 4
  %and.i199.i = and i32 %60, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i199.i)
  %tobool.i200.i = icmp ne i32 %and.i199.i, 0
  %61 = and i16 %39, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool79.not.i = icmp eq i16 %61, 0
  %or.cond207.i = select i1 %tobool.i200.i, i1 true, i1 %tobool79.not.i
  br i1 %or.cond207.i, label %if.end82.i, label %if.then80.i

if.then80.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %add.ptr.i, align 8
  call void (ptr, ptr, ptr, ...) @_erofs_err(ptr noundef %10, ptr noundef nonnull @__func__.z_erofs_fill_inode_lazy, ptr noundef nonnull @.str.4, i64 noundef %63) #7
  br label %unmap_done.thread.i

if.end82.i:                                       ; preds = %if.end68.i
  %datalayout83.i = getelementptr i8, ptr %inode, i32 -44
  %64 = ptrtoint ptr %datalayout83.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %datalayout83.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %65)
  %cmp85.i = icmp eq i8 %65, 3
  br i1 %cmp85.i, label %land.lhs.true87.i, label %if.end82.i.if.end106.i_crit_edge

if.end82.i.if.end106.i_crit_edge:                 ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106.i

land.lhs.true87.i:                                ; preds = %if.end82.i
  %conv89.i = zext i16 %39 to i32
  %and90.i = lshr i32 %conv89.i, 1
  %and96.i = lshr i32 %conv89.i, 2
  %and90.lobit191.i = xor i32 %and90.i, %and96.i
  %xor.i = and i32 %and90.lobit191.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i)
  %tobool100.not.i = icmp eq i32 %xor.i, 0
  br i1 %tobool100.not.i, label %land.lhs.true87.i.if.end106.i_crit_edge, label %if.then101.i

land.lhs.true87.i.if.end106.i_crit_edge:          ; preds = %land.lhs.true87.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106.i

if.then101.i:                                     ; preds = %land.lhs.true87.i
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %add.ptr.i, align 8
  call void (ptr, ptr, ptr, ...) @_erofs_err(ptr noundef %10, ptr noundef nonnull @__func__.z_erofs_fill_inode_lazy, ptr noundef nonnull @.str.5, i64 noundef %67) #7
  br label %unmap_done.thread.i

unmap_done.thread.i:                              ; preds = %if.then101.i, %if.then80.i, %if.then62.i
  %err.0.ph.i = phi i32 [ -95, %if.then62.i ], [ -117, %if.then80.i ], [ -117, %if.then101.i ]
  call void @erofs_put_metabuf(ptr noundef nonnull %buf.i) #7
  br label %z_erofs_fill_inode_lazy.exit

if.end106.i:                                      ; preds = %land.lhs.true87.i.if.end106.i_crit_edge, %if.end82.i.if.end106.i_crit_edge
  call void @erofs_put_metabuf(ptr noundef nonnull %buf.i) #7
  %68 = ptrtoint ptr %40 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %40, align 8
  %70 = and i16 %69, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %tobool110.not.i = icmp eq i16 %70, 0
  br i1 %tobool110.not.i, label %if.end106.i.do.end132.i_crit_edge, label %if.then111.i

if.end106.i.do.end132.i_crit_edge:                ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end132.i

if.then111.i:                                     ; preds = %if.end106.i
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %map.i) #7
  %71 = call ptr @memset(ptr %map.i, i32 0, i32 56)
  %h_idata_size.i = getelementptr inbounds %struct.z_erofs_map_header, ptr %add.ptr43.i, i32 0, i32 1
  %72 = ptrtoint ptr %h_idata_size.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %h_idata_size.i, align 2
  %74 = call i16 @llvm.bswap.i16(i16 %73) #7
  %z_idata_size.i = getelementptr i8, ptr %inode, i32 -8
  %75 = ptrtoint ptr %z_idata_size.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %z_idata_size.i, align 8
  %call112.i = call fastcc i32 @z_erofs_do_map_blocks(ptr noundef %inode, ptr noundef nonnull %map.i, i32 noundef 8) #7
  call void @erofs_put_metabuf(ptr noundef nonnull %map.i) #7
  %m_plen.i = getelementptr inbounds %struct.erofs_map_blocks, ptr %map.i, i32 0, i32 3
  %76 = ptrtoint ptr %m_plen.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %m_plen.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %77)
  %tobool114.not.i = icmp eq i64 %77, 0
  br i1 %tobool114.not.i, label %if.then111.i.if.end123.thread.i_crit_edge, label %lor.lhs.false115.i

if.then111.i.if.end123.thread.i_crit_edge:        ; preds = %if.then111.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123.thread.i

lor.lhs.false115.i:                               ; preds = %if.then111.i
  %m_pa.i = getelementptr inbounds %struct.erofs_map_blocks, ptr %map.i, i32 0, i32 1
  %78 = ptrtoint ptr %m_pa.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %m_pa.i, align 8
  %rem116.i = and i64 %79, 4095
  %add118.i = add i64 %rem116.i, %77
  call void @__sanitizer_cov_trace_const_cmp8(i64 4096, i64 %add118.i)
  %cmp119.i = icmp ugt i64 %add118.i, 4096
  br i1 %cmp119.i, label %lor.lhs.false115.i.if.end123.thread.i_crit_edge, label %if.end123.i

lor.lhs.false115.i.if.end123.thread.i_crit_edge:  ; preds = %lor.lhs.false115.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123.thread.i

if.end123.thread.i:                               ; preds = %lor.lhs.false115.i.if.end123.thread.i_crit_edge, %if.then111.i.if.end123.thread.i_crit_edge
  call void (ptr, ptr, ptr, ...) @_erofs_err(ptr noundef %10, ptr noundef nonnull @__func__.z_erofs_fill_inode_lazy, ptr noundef nonnull @.str.6, i64 noundef %77) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %map.i) #7
  br label %z_erofs_fill_inode_lazy.exit

if.end123.i:                                      ; preds = %lor.lhs.false115.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112.i)
  %cmp124.i = icmp slt i32 %call112.i, 0
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %map.i) #7
  br i1 %cmp124.i, label %if.end123.i.z_erofs_fill_inode_lazy.exit_crit_edge, label %if.end123.i.do.end132.i_crit_edge

if.end123.i.do.end132.i_crit_edge:                ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end132.i

if.end123.i.z_erofs_fill_inode_lazy.exit_crit_edge: ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %z_erofs_fill_inode_lazy.exit

do.end132.i:                                      ; preds = %if.end123.i.do.end132.i_crit_edge, %if.end106.i.do.end132.i_crit_edge
  %err.2.i = phi i32 [ %call112.i, %if.end123.i.do.end132.i_crit_edge ], [ 0, %if.end106.i.do.end132.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  call void @_set_bit(i32 noundef 1, ptr noundef %flags.i) #7
  br label %z_erofs_fill_inode_lazy.exit

z_erofs_fill_inode_lazy.exit:                     ; preds = %do.end132.i, %if.end123.i.z_erofs_fill_inode_lazy.exit_crit_edge, %if.end123.thread.i, %unmap_done.thread.i, %if.then40.i, %if.end8.i.z_erofs_fill_inode_lazy.exit_crit_edge
  %err.3.i = phi i32 [ 0, %if.end8.i.z_erofs_fill_inode_lazy.exit_crit_edge ], [ %35, %if.then40.i ], [ %call112.i, %if.end123.i.z_erofs_fill_inode_lazy.exit_crit_edge ], [ %err.2.i, %do.end132.i ], [ %err.0.ph.i, %unmap_done.thread.i ], [ -117, %if.end123.thread.i ]
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %flags.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !64
  call void @llvm.prefetch.p0(ptr %flags.i, i32 1, i32 3, i32 1) #7
  %80 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags.i, ptr %flags.i, i32 1073741824, ptr elementtype(i32) %flags.i) #7, !srcloc !65
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !66
  call void @wake_up_bit(ptr noundef %flags.i, i32 noundef 30) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.3.i)
  %tobool.not = icmp eq i32 %err.3.i, 0
  br i1 %tobool.not, label %z_erofs_fill_inode_lazy.exit.if.end6_crit_edge, label %z_erofs_fill_inode_lazy.exit.out_crit_edge

z_erofs_fill_inode_lazy.exit.out_crit_edge:       ; preds = %z_erofs_fill_inode_lazy.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

z_erofs_fill_inode_lazy.exit.if.end6_crit_edge:   ; preds = %z_erofs_fill_inode_lazy.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end6:                                          ; preds = %z_erofs_fill_inode_lazy.exit.if.end6_crit_edge, %z_erofs_fill_inode_lazy.exit.thread
  %call7 = call fastcc i32 @z_erofs_do_map_blocks(ptr noundef %inode, ptr noundef %map, i32 noundef %flags)
  br label %out

out:                                              ; preds = %if.end6, %z_erofs_fill_inode_lazy.exit.out_crit_edge, %z_erofs_fill_inode_lazy.exit.thread42, %if.then
  %err.0 = phi i32 [ 0, %if.then ], [ %err.3.i, %z_erofs_fill_inode_lazy.exit.out_crit_edge ], [ %call7, %if.end6 ], [ -512, %z_erofs_fill_inode_lazy.exit.thread42 ]
  call fastcc void @trace_z_erofs_map_blocks_iter_exit(ptr noundef %inode, ptr noundef %map, i32 noundef %flags, i32 noundef %err.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp8 = icmp slt i32 %err.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %err.0)
  %cmp9 = icmp ne i32 %err.0, -12
  %spec.select = and i1 %cmp8, %cmp9
  br i1 %spec.select, label %do.body13, label %do.end19, !prof !61

do.body13:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 734, 0\0A.popsection", ""() #7, !srcloc !67
  unreachable

do.end19:                                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  ret i32 %err.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_z_erofs_map_blocks_iter_enter(ptr noundef %inode, ptr noundef %map, i32 noundef %flags) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_z_erofs_map_blocks_iter_enter, i32 0, i32 1), ptr blockaddress(@trace_z_erofs_map_blocks_iter_enter, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !68

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !69

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !70
  %call42 = tail call i32 @__traceiter_z_erofs_map_blocks_iter_enter(ptr noundef null, ptr noundef %inode, ptr noundef %map, i32 noundef %flags) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !71
  %13 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !69

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !72
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_z_erofs_map_blocks_iter_enter, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_z_erofs_map_blocks_iter_enter, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_z_erofs_map_blocks_iter_enter.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_z_erofs_map_blocks_iter_enter.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 184, ptr noundef nonnull @.str.1) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !73
  %31 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @z_erofs_do_map_blocks(ptr noundef %inode, ptr noundef %map, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %m = alloca %struct.z_erofs_maprecorder, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %inode, i32 -56
  %0 = getelementptr i8, ptr %inode, i32 -32
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %0, align 8
  %3 = and i16 %2, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %m) #7
  %4 = getelementptr inbounds i8, ptr %m, i32 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 32)
  %6 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %inode, ptr %m, align 8
  %map2 = getelementptr inbounds %struct.z_erofs_maprecorder, ptr %m, i32 0, i32 1
  %7 = ptrtoint ptr %map2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %map, ptr %map2, align 4
  %z_logical_clusterbits = getelementptr i8, ptr %inode, i32 -28
  %8 = ptrtoint ptr %z_logical_clusterbits to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %z_logical_clusterbits, align 4
  %conv3 = zext i8 %9 to i32
  %and4 = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %10 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size, align 8
  %sub = add i64 %11, -1
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %m_la = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 2
  %12 = ptrtoint ptr %m_la to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %m_la, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ %13, %cond.false ]
  %sh_prom = zext i8 %9 to i64
  %shr = lshr i64 %cond, %sh_prom
  %conv6 = trunc i64 %shr to i32
  %notmask = shl nsw i32 -1, %conv3
  %sub7 = xor i32 %notmask, -1
  %14 = trunc i64 %cond to i32
  %conv10 = and i32 %14, %sub7
  %call = call fastcc i32 @z_erofs_load_cluster_from_disk(ptr noundef nonnull %m, i32 noundef %conv6, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool11.not = icmp eq i32 %call, 0
  br i1 %tobool11.not, label %if.end, label %cond.end.unmap_out_crit_edge

cond.end.unmap_out_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %unmap_out

if.end:                                           ; preds = %cond.end
  %brmerge = or i1 %tobool5.not, %tobool.not
  br i1 %brmerge, label %if.end.if.end17_crit_edge, label %if.then16

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %nextpackoff = getelementptr inbounds %struct.z_erofs_maprecorder, ptr %m, i32 0, i32 10
  %15 = ptrtoint ptr %nextpackoff to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %nextpackoff, align 8
  %z_idataoff = getelementptr i8, ptr %inode, i32 -16
  %17 = ptrtoint ptr %z_idataoff to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %z_idataoff, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end.if.end17_crit_edge
  %m_flags = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 7
  %18 = ptrtoint ptr %m_flags to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 65552, ptr %m_flags, align 4
  %lcn = getelementptr inbounds %struct.z_erofs_maprecorder, ptr %m, i32 0, i32 3
  %19 = ptrtoint ptr %lcn to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lcn, align 4
  %conv18 = zext i32 %20 to i64
  %add = add nuw nsw i64 %conv18, 1
  %shl20 = shl i64 %add, %sh_prom
  %type = getelementptr inbounds %struct.z_erofs_maprecorder, ptr %m, i32 0, i32 4
  %21 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %type, align 8
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i8 %22, label %sw.default [
    i8 0, label %if.end17.sw.bb_crit_edge
    i8 1, label %if.end17.sw.bb_crit_edge515
    i8 3, label %if.end17.sw.bb_crit_edge516
    i8 2, label %if.end17.sw.bb54_crit_edge
  ]

if.end17.sw.bb54_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb54

if.end17.sw.bb_crit_edge516:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end17.sw.bb_crit_edge515:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end17.sw.bb_crit_edge:                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %if.end17.sw.bb_crit_edge, %if.end17.sw.bb_crit_edge515, %if.end17.sw.bb_crit_edge516
  %clusterofs = getelementptr inbounds %struct.z_erofs_maprecorder, ptr %m, i32 0, i32 6
  %24 = ptrtoint ptr %clusterofs to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %clusterofs, align 2
  %conv22 = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv10, i32 %conv22)
  %cmp.not = icmp ult i32 %conv10, %conv22
  br i1 %cmp.not, label %if.end41, label %if.then24

if.then24:                                        ; preds = %sw.bb
  %headtype = getelementptr inbounds %struct.z_erofs_maprecorder, ptr %m, i32 0, i32 5
  %26 = ptrtoint ptr %headtype to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %22, ptr %headtype, align 1
  %shl27 = shl i32 %20, %conv3
  %or = or i32 %shl27, %conv22
  %conv30 = zext i32 %or to i64
  %m_la31 = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 2
  %27 = ptrtoint ptr %m_la31 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv30, ptr %m_la31, align 8
  br i1 %tobool.not, label %if.then24.sw.epilog_crit_edge, label %land.lhs.true34

if.then24.sw.epilog_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true34:                                  ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  %i_size35 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %28 = ptrtoint ptr %i_size35 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %i_size35, align 8
  %30 = call i64 @llvm.umin.i64(i64 %shl20, i64 %29)
  br label %sw.epilog

if.end41:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool43.not = icmp eq i32 %20, 0
  br i1 %tobool43.not, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %31 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i_sb, align 4
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %add.ptr, align 8
  call void (ptr, ptr, ptr, ...) @_erofs_err(ptr noundef %32, ptr noundef nonnull @__func__.z_erofs_do_map_blocks, ptr noundef nonnull @.str.8, i64 noundef %34) #7
  br label %unmap_out

if.end45:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %shl47 = shl i32 %20, %conv3
  %or50 = or i32 %shl47, %conv22
  %conv51 = zext i32 %or50 to i64
  %35 = ptrtoint ptr %m_flags to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 196624, ptr %m_flags, align 4
  %delta = getelementptr inbounds %struct.z_erofs_maprecorder, ptr %m, i32 0, i32 7
  %36 = ptrtoint ptr %delta to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 1, ptr %delta, align 4
  br label %sw.bb54

sw.bb54:                                          ; preds = %if.end45, %if.end17.sw.bb54_crit_edge
  %end.0 = phi i64 [ %shl20, %if.end17.sw.bb54_crit_edge ], [ %conv51, %if.end45 ]
  %delta55 = getelementptr inbounds %struct.z_erofs_maprecorder, ptr %m, i32 0, i32 7
  %37 = ptrtoint ptr %delta55 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %delta55, align 4
  %conv57 = zext i16 %38 to i32
  %39 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %m, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %conv57)
  %cmp111.i = icmp ult i32 %20, %conv57
  br i1 %cmp111.i, label %sw.bb54.if.then.i_crit_edge, label %sw.bb54.if.end.i_crit_edge

sw.bb54.if.end.i_crit_edge:                       ; preds = %sw.bb54
  br label %if.end.i

sw.bb54.if.then.i_crit_edge:                      ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

tailrecurse.i:                                    ; preds = %sw.bb.i
  %conv31.i = zext i16 %59 to i32
  %41 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %m, align 8
  %43 = ptrtoint ptr %lcn to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %lcn, align 4
  %cmp.i = icmp ult i32 %44, %conv31.i
  br i1 %cmp.i, label %tailrecurse.i.if.then.i_crit_edge, label %tailrecurse.i.if.end.i_crit_edge

tailrecurse.i.if.end.i_crit_edge:                 ; preds = %tailrecurse.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

tailrecurse.i.if.then.i_crit_edge:                ; preds = %tailrecurse.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %tailrecurse.i.if.then.i_crit_edge, %sw.bb54.if.then.i_crit_edge
  %.lcssa109.i = phi ptr [ %40, %sw.bb54.if.then.i_crit_edge ], [ %42, %tailrecurse.i.if.then.i_crit_edge ]
  %add.ptr.le108.i = getelementptr i8, ptr %.lcssa109.i, i32 -56
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %.lcssa109.i, i32 0, i32 8
  %45 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i_sb.i, align 4
  %47 = ptrtoint ptr %add.ptr.le108.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %add.ptr.le108.i, align 8
  call void (ptr, ptr, ptr, ...) @_erofs_err(ptr noundef %46, ptr noundef nonnull @__func__.z_erofs_extent_lookback, ptr noundef nonnull @.str.14, i64 noundef %48) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 442, 0\0A.popsection", ""() #7, !srcloc !74
  unreachable

if.end.i:                                         ; preds = %tailrecurse.i.if.end.i_crit_edge, %sw.bb54.if.end.i_crit_edge
  %49 = phi i32 [ %44, %tailrecurse.i.if.end.i_crit_edge ], [ %20, %sw.bb54.if.end.i_crit_edge ]
  %50 = phi ptr [ %42, %tailrecurse.i.if.end.i_crit_edge ], [ %40, %sw.bb54.if.end.i_crit_edge ]
  %lookback_distance.tr112.i = phi i32 [ %conv31.i, %tailrecurse.i.if.end.i_crit_edge ], [ %conv57, %sw.bb54.if.end.i_crit_edge ]
  %51 = ptrtoint ptr %map2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %map2, align 4
  %.in.i = getelementptr i8, ptr %50, i32 -28
  %53 = ptrtoint ptr %.in.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %.in.i, align 4
  %sub.i = sub i32 %49, %lookback_distance.tr112.i
  %call.i = call fastcc i32 @z_erofs_load_cluster_from_disk(ptr noundef nonnull %m, i32 noundef %sub.i, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end12.i, label %if.end.i.unmap_out_crit_edge

if.end.i.unmap_out_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %unmap_out

if.end12.i:                                       ; preds = %if.end.i
  %55 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %type, align 8
  %57 = zext i8 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %56, label %sw.default.i [
    i8 2, label %sw.bb.i
    i8 0, label %if.end12.i.z_erofs_extent_lookback.exit.thread_crit_edge
    i8 1, label %if.end12.i.z_erofs_extent_lookback.exit.thread_crit_edge517
    i8 3, label %if.end12.i.z_erofs_extent_lookback.exit.thread_crit_edge518
  ]

if.end12.i.z_erofs_extent_lookback.exit.thread_crit_edge518: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %z_erofs_extent_lookback.exit.thread

if.end12.i.z_erofs_extent_lookback.exit.thread_crit_edge517: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %z_erofs_extent_lookback.exit.thread

if.end12.i.z_erofs_extent_lookback.exit.thread_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %z_erofs_extent_lookback.exit.thread

sw.bb.i:                                          ; preds = %if.end12.i
  %58 = ptrtoint ptr %delta55 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %delta55, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool14.not.i = icmp eq i16 %59, 0
  br i1 %tobool14.not.i, label %if.then15.i, label %tailrecurse.i

if.then15.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.le.i = getelementptr i8, ptr %50, i32 -56
  %60 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %m, align 8
  %i_sb17.i = getelementptr inbounds %struct.inode, ptr %61, i32 0, i32 8
  %62 = ptrtoint ptr %i_sb17.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %i_sb17.i, align 4
  %64 = ptrtoint ptr %add.ptr.le.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %add.ptr.le.i, align 8
  call void (ptr, ptr, ptr, ...) @_erofs_err(ptr noundef %63, ptr noundef nonnull @__func__.z_erofs_extent_lookback, ptr noundef nonnull @.str.15, i64 noundef %65) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 458, 0\0A.popsection", ""() #7, !srcloc !75
  unreachable

z_erofs_extent_lookback.exit.thread:              ; preds = %if.end12.i.z_erofs_extent_lookback.exit.thread_crit_edge, %if.end12.i.z_erofs_extent_lookback.exit.thread_crit_edge517, %if.end12.i.z_erofs_extent_lookback.exit.thread_crit_edge518
  %conv.le.i = zext i8 %54 to i32
  %headtype.i = getelementptr inbounds %struct.z_erofs_maprecorder, ptr %m, i32 0, i32 5
  %66 = ptrtoint ptr %headtype.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %56, ptr %headtype.i, align 1
  %shl.i = shl i32 %sub.i, %conv.le.i
  %clusterofs.i = getelementptr inbounds %struct.z_erofs_maprecorder, ptr %m, i32 0, i32 6
  %67 = ptrtoint ptr %clusterofs.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %clusterofs.i, align 2
  %conv35.i = zext i16 %68 to i32
  %or.i = or i32 %shl.i, %conv35.i
  %conv36.i = zext i32 %or.i to i64
  %m_la.i = getelementptr inbounds %struct.erofs_map_blocks, ptr %52, i32 0, i32 2
  %69 = ptrtoint ptr %m_la.i to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %conv36.i, ptr %m_la.i, align 8
  br label %sw.epilog

sw.default.i:                                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.le106.i = getelementptr i8, ptr %50, i32 -56
  %conv13.i = zext i8 %56 to i32
  %70 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %m, align 8
  %i_sb38.i = getelementptr inbounds %struct.inode, ptr %71, i32 0, i32 8
  %72 = ptrtoint ptr %i_sb38.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %i_sb38.i, align 4
  %74 = ptrtoint ptr %add.ptr.le106.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %add.ptr.le106.i, align 8
  call void (ptr, ptr, ptr, ...) @_erofs_err(ptr noundef %73, ptr noundef nonnull @__func__.z_erofs_extent_lookback, ptr noundef nonnull @.str.16, i32 noundef %conv13.i, i32 noundef %sub.i, i64 noundef %75) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 472, 0\0A.popsection", ""() #7, !srcloc !76
  unreachable

sw.default:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %conv21 = zext i8 %22 to i32
  %i_sb62 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %76 = ptrtoint ptr %i_sb62 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %i_sb62, align 4
  %78 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %add.ptr, align 8
  call void (ptr, ptr, ptr, ...) @_erofs_err(ptr noundef %77, ptr noundef nonnull @__func__.z_erofs_do_map_blocks, ptr noundef nonnull @.str.9, i32 noundef %conv21, i64 noundef %cond, i64 noundef %79) #7
  br label %unmap_out

sw.epilog:                                        ; preds = %z_erofs_extent_lookback.exit.thread, %land.lhs.true34, %if.then24.sw.epilog_crit_edge
  %end.1 = phi i64 [ %shl20, %if.then24.sw.epilog_crit_edge ], [ %30, %land.lhs.true34 ], [ %end.0, %z_erofs_extent_lookback.exit.thread ]
  %m_la66 = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 2
  %80 = ptrtoint ptr %m_la66 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %m_la66, align 8
  %sub67 = sub i64 %end.1, %81
  %m_llen = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 4
  %82 = ptrtoint ptr %m_llen to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %sub67, ptr %m_llen, align 8
  br i1 %tobool5.not, label %sw.epilog.if.end72_crit_edge, label %if.then70

sw.epilog.if.end72_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.then70:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %83 = ptrtoint ptr %lcn to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %lcn, align 4
  %z_tailextent_headlcn = getelementptr i8, ptr %inode, i32 -24
  %85 = ptrtoint ptr %z_tailextent_headlcn to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %z_tailextent_headlcn, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %sw.epilog.if.end72_crit_edge
  br i1 %tobool.not, label %if.end72.if.else_crit_edge, label %land.lhs.true75

if.end72.if.else_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true75:                                  ; preds = %if.end72
  %86 = ptrtoint ptr %lcn to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %lcn, align 4
  %z_tailextent_headlcn77 = getelementptr i8, ptr %inode, i32 -24
  %88 = ptrtoint ptr %z_tailextent_headlcn77 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %z_tailextent_headlcn77, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %89)
  %cmp78 = icmp eq i32 %87, %89
  br i1 %cmp78, label %if.then80, label %land.lhs.true75.if.else_crit_edge

land.lhs.true75.if.else_crit_edge:                ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then80:                                        ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #9
  %90 = ptrtoint ptr %m_flags to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %m_flags, align 4
  %or82 = or i32 %91, 8192
  store i32 %or82, ptr %m_flags, align 4
  %z_idataoff83 = getelementptr i8, ptr %inode, i32 -16
  %92 = ptrtoint ptr %z_idataoff83 to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %z_idataoff83, align 8
  %m_pa = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 1
  %94 = ptrtoint ptr %m_pa to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %93, ptr %m_pa, align 8
  %z_idata_size = getelementptr i8, ptr %inode, i32 -8
  %95 = ptrtoint ptr %z_idata_size to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %z_idata_size, align 8
  %conv84 = zext i16 %96 to i64
  br label %if.end91

if.else:                                          ; preds = %land.lhs.true75.if.else_crit_edge, %if.end72.if.else_crit_edge
  %pblk = getelementptr inbounds %struct.z_erofs_maprecorder, ptr %m, i32 0, i32 8
  %97 = ptrtoint ptr %pblk to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %pblk, align 8
  %conv85 = zext i32 %98 to i64
  %mul = shl nuw nsw i64 %conv85, 12
  %m_pa86 = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 1
  %99 = ptrtoint ptr %m_pa86 to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %mul, ptr %m_pa86, align 8
  %100 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %m, align 8
  %add.ptr.i = getelementptr i8, ptr %101, i32 -56
  %102 = ptrtoint ptr %map2 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %map2, align 4
  %104 = getelementptr i8, ptr %101, i32 -32
  %z_logical_clusterbits.i = getelementptr i8, ptr %101, i32 -28
  %105 = ptrtoint ptr %z_logical_clusterbits.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %z_logical_clusterbits.i, align 4
  %conv.i = zext i8 %106 to i32
  %107 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %type, align 8
  %109 = zext i8 %108 to i64
  call void @__sanitizer_cov_trace_switch(i64 %109, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %108, label %do.body13.critedge.i [
    i8 0, label %if.else.do.body19.i_crit_edge
    i8 1, label %if.else.do.body19.i_crit_edge519
    i8 3, label %if.else.do.body19.i_crit_edge520
  ]

if.else.do.body19.i_crit_edge520:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body19.i

if.else.do.body19.i_crit_edge519:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body19.i

if.else.do.body19.i_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body19.i

do.body13.critedge.i:                             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 489, 0\0A.popsection", ""() #7, !srcloc !77
  unreachable

do.body19.i:                                      ; preds = %if.else.do.body19.i_crit_edge, %if.else.do.body19.i_crit_edge519, %if.else.do.body19.i_crit_edge520
  %headtype.i205 = getelementptr inbounds %struct.z_erofs_maprecorder, ptr %m, i32 0, i32 5
  %110 = ptrtoint ptr %headtype.i205 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %headtype.i205, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %108, i8 %111)
  %cmp23.not.i = icmp eq i8 %108, %111
  br i1 %cmp23.not.i, label %do.end40.i, label %do.body32.i, !prof !69

do.body32.i:                                      ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 490, 0\0A.popsection", ""() #7, !srcloc !78
  unreachable

do.end40.i:                                       ; preds = %do.body19.i
  %112 = zext i8 %108 to i64
  call void @__sanitizer_cov_trace_switch(i64 %112, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %108, label %do.end40.i.if.end64.i_crit_edge [
    i8 0, label %do.end40.i.if.then62.i_crit_edge
    i8 1, label %land.lhs.true49.i
    i8 3, label %land.lhs.true57.i
  ]

do.end40.i.if.then62.i_crit_edge:                 ; preds = %do.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then62.i

do.end40.i.if.end64.i_crit_edge:                  ; preds = %do.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64.i

land.lhs.true49.i:                                ; preds = %do.end40.i
  %113 = ptrtoint ptr %104 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %104, align 8
  %115 = and i16 %114, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %115)
  %tobool51.not.i = icmp eq i16 %115, 0
  br i1 %tobool51.not.i, label %land.lhs.true49.i.if.then62.i_crit_edge, label %land.lhs.true49.i.if.end64.i_crit_edge

land.lhs.true49.i.if.end64.i_crit_edge:           ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64.i

land.lhs.true49.i.if.then62.i_crit_edge:          ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then62.i

land.lhs.true57.i:                                ; preds = %do.end40.i
  %116 = ptrtoint ptr %104 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %104, align 8
  %118 = and i16 %117, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %118)
  %tobool61.not.i = icmp eq i16 %118, 0
  br i1 %tobool61.not.i, label %land.lhs.true57.i.if.then62.i_crit_edge, label %land.lhs.true57.i.if.end64.i_crit_edge

land.lhs.true57.i.if.end64.i_crit_edge:           ; preds = %land.lhs.true57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64.i

land.lhs.true57.i.if.then62.i_crit_edge:          ; preds = %land.lhs.true57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then62.i

if.then62.i:                                      ; preds = %land.lhs.true57.i.if.then62.i_crit_edge, %land.lhs.true49.i.if.then62.i_crit_edge, %do.end40.i.if.then62.i_crit_edge
  %shl.i206 = shl nuw i32 1, %conv.i
  %conv63.i = sext i32 %shl.i206 to i64
  br label %if.end91

if.end64.i:                                       ; preds = %land.lhs.true57.i.if.end64.i_crit_edge, %land.lhs.true49.i.if.end64.i_crit_edge, %do.end40.i.if.end64.i_crit_edge
  %119 = ptrtoint ptr %lcn to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %lcn, align 4
  %add.i = add i32 %120, 1
  %compressedlcs.i = getelementptr inbounds %struct.z_erofs_maprecorder, ptr %m, i32 0, i32 9
  %121 = ptrtoint ptr %compressedlcs.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %compressedlcs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool66.not.i = icmp eq i32 %122, 0
  br i1 %tobool66.not.i, label %if.end68.i, label %if.end64.i.out.i_crit_edge

if.end64.i.out.i_crit_edge:                       ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.end68.i:                                       ; preds = %if.end64.i
  %call.i207 = call fastcc i32 @z_erofs_load_cluster_from_disk(ptr noundef nonnull %m, i32 noundef %add.i, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i207)
  %tobool69.not.i = icmp eq i32 %call.i207, 0
  br i1 %tobool69.not.i, label %do.body72.i, label %if.end68.i.do.body_crit_edge

if.end68.i.do.body_crit_edge:                     ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body72.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv6)
  %cmp73.i = icmp eq i32 %add.i, %conv6
  %123 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %124)
  %cmp78.i = icmp eq i8 %124, 2
  %or.cond.i = select i1 %cmp73.i, i1 %cmp78.i, i1 false
  br i1 %or.cond.i, label %do.body88.i, label %do.end96.i, !prof !79

do.body88.i:                                      ; preds = %do.body72.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 517, 0\0A.popsection", ""() #7, !srcloc !80
  unreachable

do.end96.i:                                       ; preds = %do.body72.i
  %125 = zext i8 %124 to i64
  call void @__sanitizer_cov_trace_switch(i64 %125, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %124, label %do.end96.i.sw.default.i211_crit_edge [
    i8 0, label %do.end96.i.sw.bb.i208_crit_edge
    i8 1, label %do.end96.i.sw.bb.i208_crit_edge521
    i8 3, label %do.end96.i.sw.bb.i208_crit_edge522
    i8 2, label %sw.bb100.i
  ]

do.end96.i.sw.bb.i208_crit_edge522:               ; preds = %do.end96.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i208

do.end96.i.sw.bb.i208_crit_edge521:               ; preds = %do.end96.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i208

do.end96.i.sw.bb.i208_crit_edge:                  ; preds = %do.end96.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i208

do.end96.i.sw.default.i211_crit_edge:             ; preds = %do.end96.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default.i211

sw.bb.i208:                                       ; preds = %do.end96.i.sw.bb.i208_crit_edge, %do.end96.i.sw.bb.i208_crit_edge521, %do.end96.i.sw.bb.i208_crit_edge522
  %126 = ptrtoint ptr %compressedlcs.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 1, ptr %compressedlcs.i, align 4
  br label %out.i

sw.bb100.i:                                       ; preds = %do.end96.i
  %delta.i209 = getelementptr inbounds %struct.z_erofs_maprecorder, ptr %m, i32 0, i32 7
  %127 = ptrtoint ptr %delta.i209 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %delta.i209, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %128)
  %cmp102.not.i = icmp eq i16 %128, 1
  br i1 %cmp102.not.i, label %if.end105.i, label %err_bonus_cblkcnt.i

if.end105.i:                                      ; preds = %sw.bb100.i
  %129 = ptrtoint ptr %compressedlcs.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %compressedlcs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool107.not.i = icmp eq i32 %130, 0
  br i1 %tobool107.not.i, label %if.end105.i.sw.default.i211_crit_edge, label %if.end105.i.out.i_crit_edge

if.end105.i.out.i_crit_edge:                      ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.end105.i.sw.default.i211_crit_edge:            ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default.i211

sw.default.i211:                                  ; preds = %if.end105.i.sw.default.i211_crit_edge, %do.end96.i.sw.default.i211_crit_edge
  %131 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %m, align 8
  %i_sb.i210 = getelementptr inbounds %struct.inode, ptr %132, i32 0, i32 8
  %133 = ptrtoint ptr %i_sb.i210 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %i_sb.i210, align 4
  %135 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %add.ptr.i, align 8
  call void (ptr, ptr, ptr, ...) @_erofs_err(ptr noundef %134, ptr noundef nonnull @__func__.z_erofs_get_extent_compressedlen, ptr noundef nonnull @.str.17, i32 noundef %add.i, i64 noundef %136) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 539, 0\0A.popsection", ""() #7, !srcloc !81
  unreachable

out.i:                                            ; preds = %if.end105.i.out.i_crit_edge, %sw.bb.i208, %if.end64.i.out.i_crit_edge
  %137 = ptrtoint ptr %compressedlcs.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %compressedlcs.i, align 4
  %shl121.i = shl i32 %138, %conv.i
  %conv122.i = zext i32 %shl121.i to i64
  br label %if.end91

err_bonus_cblkcnt.i:                              ; preds = %sw.bb100.i
  call void @__sanitizer_cov_trace_pc() #9
  %139 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %m, align 8
  %i_sb125.i = getelementptr inbounds %struct.inode, ptr %140, i32 0, i32 8
  %141 = ptrtoint ptr %i_sb125.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %i_sb125.i, align 4
  %143 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %add.ptr.i, align 8
  call void (ptr, ptr, ptr, ...) @_erofs_err(ptr noundef %142, ptr noundef nonnull @__func__.z_erofs_get_extent_compressedlen, ptr noundef nonnull @.str.18, i32 noundef %add.i, i64 noundef %144) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 549, 0\0A.popsection", ""() #7, !srcloc !82
  unreachable

if.end91:                                         ; preds = %out.i, %if.then62.i, %if.then80
  %.sink = phi ptr [ %map, %if.then80 ], [ %103, %if.then62.i ], [ %103, %out.i ]
  %conv122.sink.i.sink = phi i64 [ %conv84, %if.then80 ], [ %conv63.i, %if.then62.i ], [ %conv122.i, %out.i ]
  %m_plen123.i = getelementptr inbounds %struct.erofs_map_blocks, ptr %.sink, i32 0, i32 3
  %145 = ptrtoint ptr %m_plen123.i to i32
  call void @__asan_store8_noabort(i32 %145)
  store i64 %conv122.sink.i.sink, ptr %m_plen123.i, align 8
  %headtype92 = getelementptr inbounds %struct.z_erofs_maprecorder, ptr %m, i32 0, i32 5
  %146 = ptrtoint ptr %headtype92 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %headtype92, align 1
  %148 = zext i8 %147 to i64
  call void @__sanitizer_cov_trace_switch(i64 %148, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %147, label %if.else105 [
    i8 0, label %if.end91.if.end110_crit_edge
    i8 3, label %if.then102
  ]

if.end91.if.end110_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110

if.then102:                                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx103 = getelementptr i8, ptr %inode, i32 -29
  %149 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx103, align 1
  br label %if.end110

if.else105:                                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  %z_algorithmtype106 = getelementptr i8, ptr %inode, i32 -30
  %151 = ptrtoint ptr %z_algorithmtype106 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %z_algorithmtype106, align 2
  br label %if.end110

if.end110:                                        ; preds = %if.else105, %if.then102, %if.end91.if.end110_crit_edge
  %.sink380 = phi i8 [ %150, %if.then102 ], [ %152, %if.else105 ], [ 2, %if.end91.if.end110_crit_edge ]
  %m_algorithmformat104 = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 6
  %153 = ptrtoint ptr %m_algorithmformat104 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %.sink380, ptr %m_algorithmformat104, align 2
  %and111 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %lor.lhs.false, label %if.end110.if.then124_crit_edge

if.end110.if.then124_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then124

lor.lhs.false:                                    ; preds = %if.end110
  %and113 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %lor.lhs.false.unmap_out_crit_edge, label %land.lhs.true115

lor.lhs.false.unmap_out_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %unmap_out

land.lhs.true115:                                 ; preds = %lor.lhs.false
  %m_algorithmformat116 = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 6
  %154 = ptrtoint ptr %m_algorithmformat116 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %m_algorithmformat116, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %155)
  %cmp118 = icmp eq i8 %155, 1
  br i1 %cmp118, label %land.lhs.true120, label %land.lhs.true115.unmap_out_crit_edge

land.lhs.true115.unmap_out_crit_edge:             ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #9
  br label %unmap_out

land.lhs.true120:                                 ; preds = %land.lhs.true115
  %156 = ptrtoint ptr %m_llen to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %m_llen, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4095, i64 %157)
  %cmp122 = icmp ugt i64 %157, 4095
  br i1 %cmp122, label %land.lhs.true120.if.then124_crit_edge, label %land.lhs.true120.unmap_out_crit_edge

land.lhs.true120.unmap_out_crit_edge:             ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #9
  br label %unmap_out

land.lhs.true120.if.then124_crit_edge:            ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then124

if.then124:                                       ; preds = %land.lhs.true120.if.then124_crit_edge, %if.end110.if.then124_crit_edge
  %158 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %m, align 8
  %160 = ptrtoint ptr %map2 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %map2, align 4
  %z_logical_clusterbits.i213 = getelementptr i8, ptr %159, i32 -28
  %162 = ptrtoint ptr %z_logical_clusterbits.i213 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %z_logical_clusterbits.i213, align 4
  %conv.i214 = zext i8 %163 to i32
  %164 = ptrtoint ptr %lcn to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %lcn, align 4
  %conv4.i = zext i32 %165 to i64
  %m_la.i215 = getelementptr inbounds %struct.erofs_map_blocks, ptr %161, i32 0, i32 2
  %166 = ptrtoint ptr %m_la.i215 to i32
  call void @__asan_load8_noabort(i32 %166)
  %167 = load i64, ptr %m_la.i215, align 8
  %sh_prom.i = zext i8 %163 to i64
  %shr.i = lshr i64 %167, %sh_prom.i
  %i_size.i = getelementptr inbounds %struct.inode, ptr %159, i32 0, i32 14
  %arrayidx51.i = getelementptr inbounds %struct.z_erofs_maprecorder, ptr %m, i32 0, i32 7, i32 1
  %clusterofs.i217 = getelementptr inbounds %struct.z_erofs_maprecorder, ptr %m, i32 0, i32 6
  %shl19.i = shl nuw i32 1, %conv.i214
  %shl.i218284 = shl i64 %conv4.i, %sh_prom.i
  %168 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %168)
  %169 = load i64, ptr %i_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i218284, i64 %169)
  %cmp.not.i285 = icmp ult i64 %shl.i218284, %169
  br i1 %cmp.not.i285, label %if.then124.if.end.i221_crit_edge, label %if.then124.if.then127_crit_edge

if.then124.if.then127_crit_edge:                  ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then127

if.then124.if.end.i221_crit_edge:                 ; preds = %if.then124
  br label %if.end.i221

if.end.i221:                                      ; preds = %if.end65.i.if.end.i221_crit_edge, %if.then124.if.end.i221_crit_edge
  %shl.i218288 = phi i64 [ %shl.i218, %if.end65.i.if.end.i221_crit_edge ], [ %shl.i218284, %if.then124.if.end.i221_crit_edge ]
  %lcn.0.i286 = phi i64 [ %add.i224, %if.end65.i.if.end.i221_crit_edge ], [ %conv4.i, %if.then124.if.end.i221_crit_edge ]
  %conv9.i = trunc i64 %lcn.0.i286 to i32
  %call.i219 = call fastcc i32 @z_erofs_load_cluster_from_disk(ptr noundef nonnull %m, i32 noundef %conv9.i, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i219)
  %tobool.not.i220 = icmp eq i32 %call.i219, 0
  br i1 %tobool.not.i220, label %if.end11.i, label %if.end.i221.unmap_out_crit_edge

if.end.i221.unmap_out_crit_edge:                  ; preds = %if.end.i221
  call void @__sanitizer_cov_trace_pc() #9
  br label %unmap_out

if.end11.i:                                       ; preds = %if.end.i221
  %170 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %type, align 8
  %172 = zext i8 %171 to i64
  call void @__sanitizer_cov_trace_switch(i64 %172, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %171, label %if.else52.i [
    i8 2, label %do.body16.i
    i8 0, label %if.end11.i.if.then45.i_crit_edge
    i8 1, label %if.end11.i.if.then45.i_crit_edge523
    i8 3, label %if.end11.i.if.then45.i_crit_edge524
  ]

if.end11.i.if.then45.i_crit_edge524:              ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then45.i

if.end11.i.if.then45.i_crit_edge523:              ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then45.i

if.end11.i.if.then45.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then45.i

do.body16.i:                                      ; preds = %if.end11.i
  %173 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %arrayidx51.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %174)
  %tobool17.not.i = icmp eq i16 %174, 0
  br i1 %tobool17.not.i, label %land.rhs.i, label %do.body16.i.if.end65.i_crit_edge

do.body16.i.if.end65.i_crit_edge:                 ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65.i

land.rhs.i:                                       ; preds = %do.body16.i
  %175 = ptrtoint ptr %clusterofs.i217 to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %clusterofs.i217, align 2
  %conv18.i = zext i16 %176 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shl19.i, i32 %conv18.i)
  %cmp20.not.i = icmp eq i32 %shl19.i, %conv18.i
  br i1 %cmp20.not.i, label %if.end65.do.end73_crit_edge.i, label %do.body25.i, !prof !69

do.body25.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 575, 0\0A.popsection", ""() #7, !srcloc !83
  unreachable

if.then45.i:                                      ; preds = %if.end11.i.if.then45.i_crit_edge, %if.end11.i.if.then45.i_crit_edge523, %if.end11.i.if.then45.i_crit_edge524
  call void @__sanitizer_cov_trace_cmp8(i64 %lcn.0.i286, i64 %shr.i)
  %cmp46.not.i = icmp eq i64 %lcn.0.i286, %shr.i
  br i1 %cmp46.not.i, label %if.end49.i, label %if.then45.i.do.end73.i_crit_edge

if.then45.i.do.end73.i_crit_edge:                 ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end73.i

if.end49.i:                                       ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #9
  %177 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 1, ptr %arrayidx51.i, align 2
  br label %if.end65.i

if.else52.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv12.i = zext i8 %171 to i32
  %add.ptr.i222 = getelementptr i8, ptr %159, i32 -56
  %i_sb.i223 = getelementptr inbounds %struct.inode, ptr %159, i32 0, i32 8
  %178 = ptrtoint ptr %i_sb.i223 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %i_sb.i223, align 4
  %180 = ptrtoint ptr %add.ptr.i222 to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %add.ptr.i222, align 8
  call void (ptr, ptr, ptr, ...) @_erofs_err(ptr noundef %179, ptr noundef nonnull @__func__.z_erofs_get_extent_decompressedlen, ptr noundef nonnull @.str.19, i32 noundef %conv12.i, i64 noundef %lcn.0.i286, i64 noundef %181) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 586, 0\0A.popsection", ""() #7, !srcloc !84
  unreachable

if.end65.i:                                       ; preds = %if.end49.i, %do.body16.i.if.end65.i_crit_edge
  %182 = phi i16 [ %174, %do.body16.i.if.end65.i_crit_edge ], [ 1, %if.end49.i ]
  %conv68.i = zext i16 %182 to i64
  %add.i224 = add i64 %lcn.0.i286, %conv68.i
  %shl.i218 = shl i64 %add.i224, %sh_prom.i
  %183 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %183)
  %184 = load i64, ptr %i_size.i, align 8
  %cmp.not.i = icmp ult i64 %shl.i218, %184
  br i1 %cmp.not.i, label %if.end65.i.if.end.i221_crit_edge, label %if.end65.i.if.then127_crit_edge

if.end65.i.if.then127_crit_edge:                  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then127

if.end65.i.if.end.i221_crit_edge:                 ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i221

if.end65.do.end73_crit_edge.i:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  %.pre.i = shl i64 %lcn.0.i286, %sh_prom.i
  br label %do.end73.i

do.end73.i:                                       ; preds = %if.end65.do.end73_crit_edge.i, %if.then45.i.do.end73.i_crit_edge
  %shl75.pre-phi.i = phi i64 [ %.pre.i, %if.end65.do.end73_crit_edge.i ], [ %shl.i218288, %if.then45.i.do.end73.i_crit_edge ]
  %185 = ptrtoint ptr %clusterofs.i217 to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %clusterofs.i217, align 2
  %conv77.i = zext i16 %186 to i64
  %add78.i = add i64 %shl75.pre-phi.i, %conv77.i
  br label %if.then127

if.then127:                                       ; preds = %do.end73.i, %if.end65.i.if.then127_crit_edge, %if.then124.if.then127_crit_edge
  %add78.sink.i = phi i64 [ %add78.i, %do.end73.i ], [ %169, %if.then124.if.then127_crit_edge ], [ %184, %if.end65.i.if.then127_crit_edge ]
  %187 = ptrtoint ptr %m_la.i215 to i32
  call void @__asan_load8_noabort(i32 %187)
  %188 = load i64, ptr %m_la.i215, align 8
  %sub80.i = sub i64 %add78.sink.i, %188
  %m_llen81.i = getelementptr inbounds %struct.erofs_map_blocks, ptr %161, i32 0, i32 4
  %189 = ptrtoint ptr %m_llen81.i to i32
  call void @__asan_store8_noabort(i32 %189)
  store i64 %sub80.i, ptr %m_llen81.i, align 8
  %190 = ptrtoint ptr %m_flags to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %m_flags, align 4
  %or129 = or i32 %191, 131072
  store i32 %or129, ptr %m_flags, align 4
  br label %unmap_out

unmap_out:                                        ; preds = %if.then127, %if.end.i221.unmap_out_crit_edge, %land.lhs.true120.unmap_out_crit_edge, %land.lhs.true115.unmap_out_crit_edge, %lor.lhs.false.unmap_out_crit_edge, %sw.default, %if.end.i.unmap_out_crit_edge, %if.then44, %cond.end.unmap_out_crit_edge
  %err.2 = phi i32 [ %call, %cond.end.unmap_out_crit_edge ], [ -95, %sw.default ], [ 0, %if.then127 ], [ 0, %land.lhs.true120.unmap_out_crit_edge ], [ 0, %land.lhs.true115.unmap_out_crit_edge ], [ 0, %lor.lhs.false.unmap_out_crit_edge ], [ -117, %if.then44 ], [ %call.i219, %if.end.i221.unmap_out_crit_edge ], [ %call.i, %if.end.i.unmap_out_crit_edge ]
  %192 = ptrtoint ptr %map2 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %map2, align 4
  call void @erofs_unmap_metabuf(ptr noundef %193) #7
  br label %do.body

do.body:                                          ; preds = %unmap_out, %if.end68.i.do.body_crit_edge
  %err.3 = phi i32 [ %err.2, %unmap_out ], [ %call.i207, %if.end68.i.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @z_erofs_do_map_blocks.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@z_erofs_do_map_blocks, %if.then139)) #7
          to label %do.end [label %if.then139], !srcloc !68

if.then139:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %m_la140 = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 2
  %194 = ptrtoint ptr %m_la140 to i32
  call void @__asan_load8_noabort(i32 %194)
  %195 = load i64, ptr %m_la140, align 8
  %m_pa141 = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 1
  %196 = ptrtoint ptr %m_pa141 to i32
  call void @__asan_load8_noabort(i32 %196)
  %197 = load i64, ptr %m_pa141, align 8
  %m_llen142 = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 4
  %198 = ptrtoint ptr %m_llen142 to i32
  call void @__asan_load8_noabort(i32 %198)
  %199 = load i64, ptr %m_llen142, align 8
  %m_plen143 = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 3
  %200 = ptrtoint ptr %m_plen143 to i32
  call void @__asan_load8_noabort(i32 %200)
  %201 = load i64, ptr %m_plen143, align 8
  %m_flags144 = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 7
  %202 = ptrtoint ptr %m_flags144 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %m_flags144, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @z_erofs_do_map_blocks.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.z_erofs_do_map_blocks, i64 noundef %195, i64 noundef %197, i64 noundef %199, i64 noundef %201, i32 noundef %203) #7
  br label %do.end

do.end:                                           ; preds = %if.then139, %do.body
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %m) #7
  ret i32 %err.3
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_z_erofs_map_blocks_iter_exit(ptr noundef %inode, ptr noundef %map, i32 noundef %flags, i32 noundef %ret) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_z_erofs_map_blocks_iter_exit, i32 0, i32 1), ptr blockaddress(@trace_z_erofs_map_blocks_iter_exit, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !68

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !69

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !85
  %call42 = tail call i32 @__traceiter_z_erofs_map_blocks_iter_exit(ptr noundef null, ptr noundef %inode, ptr noundef %map, i32 noundef %flags, i32 noundef %ret) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !86
  %13 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !69

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !72
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_z_erofs_map_blocks_iter_exit, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_z_erofs_map_blocks_iter_exit, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_z_erofs_map_blocks_iter_exit.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_z_erofs_map_blocks_iter_exit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 236, ptr noundef nonnull @.str.1) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !73
  %31 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @z_erofs_iomap_begin_report(ptr noundef %inode, i64 noundef %offset, i64 noundef %length, i32 noundef %flags, ptr nocapture noundef %iomap, ptr nocapture noundef readnone %srcmap) #0 align 64 {
entry:
  %map = alloca %struct.erofs_map_blocks, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %map) #7
  %0 = call ptr @memset(ptr %map, i32 0, i32 56)
  %m_la = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 2
  %1 = ptrtoint ptr %m_la to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %offset, ptr %m_la, align 8
  %call = call i32 @z_erofs_map_blocks_iter(ptr noundef %inode, ptr noundef nonnull %map, i32 noundef 2)
  call void @erofs_put_metabuf(ptr noundef nonnull %map) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 26
  %4 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_bdev, align 4
  %bdev = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 5
  %6 = ptrtoint ptr %bdev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %bdev, align 4
  %7 = ptrtoint ptr %m_la to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %m_la, align 8
  %offset2 = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 1
  %9 = ptrtoint ptr %offset2 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %offset2, align 8
  %m_llen = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 4
  %10 = ptrtoint ptr %m_llen to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %m_llen, align 8
  %length3 = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 2
  %12 = ptrtoint ptr %length3 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %length3, align 8
  %m_flags = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 7
  %13 = ptrtoint ptr %m_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %m_flags, align 4
  %and = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %type5 = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 3
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %type5 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 2, ptr %type5, align 8
  %m_pa = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 1
  %16 = ptrtoint ptr %m_pa to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %m_pa, align 8
  %18 = ptrtoint ptr %iomap to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %iomap, align 8
  br label %if.end13

if.else:                                          ; preds = %if.end
  %19 = ptrtoint ptr %type5 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %type5, align 8
  %20 = ptrtoint ptr %iomap to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 -1, ptr %iomap, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %21 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %22)
  %cmp8.not = icmp slt i64 %8, %22
  br i1 %cmp8.not, label %if.else.if.end13_crit_edge, label %if.then9

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %add = sub i64 %length, %offset
  %sub = add i64 %add, %8
  %23 = ptrtoint ptr %length3 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %sub, ptr %length3, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.else.if.end13_crit_edge, %if.then4
  %flags14 = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 4
  %24 = ptrtoint ptr %flags14 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %flags14, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %map) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_z_erofs_map_blocks_iter_enter(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @erofs_read_metabuf(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_erofs_err(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @erofs_put_metabuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit_lock(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @z_erofs_load_cluster_from_disk(ptr noundef %m, i32 noundef %lcn, i1 noundef zeroext %lookahead) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m, align 8
  %datalayout = getelementptr i8, ptr %1, i32 -44
  %2 = ptrtoint ptr %datalayout to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %datalayout, align 4
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %3, label %entry.cleanup_crit_edge [
    i8 1, label %if.then
    i8 3, label %if.then4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 -56
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i, align 16
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %add.ptr.i, align 8
  %meta_blkaddr.i.i = getelementptr inbounds %struct.erofs_sb_info, ptr %8, i32 0, i32 13
  %11 = ptrtoint ptr %meta_blkaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %meta_blkaddr.i.i, align 4
  %conv.i.i = zext i32 %12 to i64
  %mul.i.i = shl nuw nsw i64 %conv.i.i, 12
  %islotbits.i.i = getelementptr inbounds %struct.erofs_sb_info, ptr %8, i32 0, i32 16
  %13 = ptrtoint ptr %islotbits.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %islotbits.i.i, align 2
  %sh_prom.i.i = zext i8 %14 to i64
  %shl.i.i = shl i64 %10, %sh_prom.i.i
  %inode_isize.i = getelementptr i8, ptr %1, i32 -43
  %15 = ptrtoint ptr %inode_isize.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %inode_isize.i, align 1
  %conv.i = zext i8 %16 to i64
  %xattr_isize.i = getelementptr i8, ptr %1, i32 -42
  %17 = ptrtoint ptr %xattr_isize.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %xattr_isize.i, align 2
  %conv2.i = zext i16 %18 to i64
  %add.i.i = add nsw i64 %mul.i.i, -1
  %add.i = add i64 %add.i.i, %shl.i.i
  %add3.i = add i64 %add.i, %conv.i
  %sub.i = add i64 %add3.i, %conv2.i
  %or.i = or i64 %sub.i, 7
  %mul.i = shl i32 %lcn, 3
  %conv7.i = zext i32 %mul.i to i64
  %add6.i = add nuw nsw i64 %conv7.i, 17
  %add8.i = add i64 %add6.i, %or.i
  %div95.i = lshr i64 %add8.i, 12
  %conv9.i = trunc i64 %div95.i to i32
  %map.i.i = getelementptr inbounds %struct.z_erofs_maprecorder, ptr %m, i32 0, i32 1
  %19 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %map.i.i, align 4
  %call.i.i = tail call ptr @erofs_read_metabuf(ptr noundef %20, ptr noundef %6, i32 noundef %conv9.i, i32 noundef 2) #7
  %kaddr.i.i = getelementptr inbounds %struct.z_erofs_maprecorder, ptr %m, i32 0, i32 2
  %21 = ptrtoint ptr %kaddr.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i.i, ptr %kaddr.i.i, align 8
  %cmp.i.i.not.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  %22 = ptrtoint ptr %call.i.i to i32
  br i1 %cmp.i.i.not.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %add11.i = add i64 %add8.i, 8
  %nextpackoff.i = getelementptr inbounds %struct.z_erofs_maprecorder, ptr %m, i32 0, i32 10
  %23 = ptrtoint ptr %nextpackoff.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %add11.i, ptr %nextpackoff.i, align 8
  %lcn12.i = getelementptr inbounds %struct.z_erofs_maprecorder, ptr %m, i32 0, i32 3
  %24 = ptrtoint ptr %lcn12.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %lcn, ptr %lcn12.i, align 4
  %25 = trunc i64 %add8.i to i32
  %idx.ext.i = and i32 %25, 4088
  %add.ptr13.i = getelementptr i8, ptr %call.i.i, i32 %idx.ext.i
  %26 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr13.i, align 4
  %28 = lshr i16 %27, 8
  %29 = and i16 %28, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %29)
  %switch.i = icmp eq i16 %29, 2
  br i1 %switch.i, label %sw.bb.i, label %sw.bb46.i

sw.bb.i:                                          ; preds = %if.end.i
  %z_logical_clusterbits.i = getelementptr i8, ptr %1, i32 -28
  %30 = ptrtoint ptr %z_logical_clusterbits.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %z_logical_clusterbits.i, align 4
  %conv15.i = zext i8 %31 to i32
  %shl.i = shl nuw i32 1, %conv15.i
  %conv16.i = trunc i32 %shl.i to i16
  %clusterofs.i = getelementptr inbounds %struct.z_erofs_maprecorder, ptr %m, i32 0, i32 6
  %32 = ptrtoint ptr %clusterofs.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv16.i, ptr %clusterofs.i, align 2
  %di_u.i = getelementptr inbounds %struct.z_erofs_vle_decompressed_index, ptr %add.ptr13.i, i32 0, i32 2
  %33 = ptrtoint ptr %di_u.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %di_u.i, align 4
  %35 = tail call i16 @llvm.bswap.i16(i16 %34) #7
  %delta.i = getelementptr inbounds %struct.z_erofs_maprecorder, ptr %m, i32 0, i32 7
  %36 = ptrtoint ptr %delta.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %delta.i, align 4
  %conv20.i = zext i16 %35 to i32
  %and21.i = and i32 %conv20.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %sw.bb.i.if.end41.i_crit_edge, label %if.then23.i

sw.bb.i.if.end41.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.i

if.then23.i:                                      ; preds = %sw.bb.i
  %37 = getelementptr i8, ptr %1, i32 -32
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %37, align 8
  %40 = and i16 %39, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool26.not.i = icmp eq i16 %40, 0
  br i1 %tobool26.not.i, label %do.body28.i, label %if.end34.i

do.body28.i:                                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 192, 0\0A.popsection", ""() #7, !srcloc !87
  unreachable

if.end34.i:                                       ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #9
  %and38.i = and i32 %conv20.i, 63487
  %compressedlcs.i = getelementptr inbounds %struct.z_erofs_maprecorder, ptr %m, i32 0, i32 9
  %41 = ptrtoint ptr %compressedlcs.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and38.i, ptr %compressedlcs.i, align 4
  %42 = ptrtoint ptr %delta.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %delta.i, align 4
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.end34.i, %sw.bb.i.if.end41.i_crit_edge
  %arrayidx43.i = getelementptr [2 x i16], ptr %di_u.i, i32 0, i32 1
  %43 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx43.i, align 2
  %45 = tail call i16 @llvm.bswap.i16(i16 %44) #7
  %arrayidx45.i = getelementptr %struct.z_erofs_maprecorder, ptr %m, i32 0, i32 7, i32 1
  %46 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %arrayidx45.i, align 2
  br label %sw.epilog.i

sw.bb46.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %di_clusterofs.i = getelementptr inbounds %struct.z_erofs_vle_decompressed_index, ptr %add.ptr13.i, i32 0, i32 1
  %47 = ptrtoint ptr %di_clusterofs.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %di_clusterofs.i, align 2
  %49 = tail call i16 @llvm.bswap.i16(i16 %48) #7
  %clusterofs47.i = getelementptr inbounds %struct.z_erofs_maprecorder, ptr %m, i32 0, i32 6
  %50 = ptrtoint ptr %clusterofs47.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %clusterofs47.i, align 2
  %di_u48.i = getelementptr inbounds %struct.z_erofs_vle_decompressed_index, ptr %add.ptr13.i, i32 0, i32 2
  %51 = ptrtoint ptr %di_u48.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %di_u48.i, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #7
  %pblk.i = getelementptr inbounds %struct.z_erofs_maprecorder, ptr %m, i32 0, i32 8
  %54 = ptrtoint ptr %pblk.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %pblk.i, align 8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb46.i, %if.end41.i
  %conv58.i = trunc i16 %29 to i8
  %type59.i = getelementptr inbounds %struct.z_erofs_maprecorder, ptr %m, i32 0, i32 4
  %55 = ptrtoint ptr %type59.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv58.i, ptr %type59.i, align 8
  br label %cleanup

if.then4:                                         ; preds = %entry
  %add.ptr.i11 = getelementptr i8, ptr %1, i32 -56
  %56 = getelementptr i8, ptr %1, i32 -32
  %z_logical_clusterbits.i12 = getelementptr i8, ptr %1, i32 -28
  %57 = ptrtoint ptr %z_logical_clusterbits.i12 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %z_logical_clusterbits.i12, align 4
  %i_sb.i13 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %59 = ptrtoint ptr %i_sb.i13 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %i_sb.i13, align 4
  %s_fs_info.i14 = getelementptr inbounds %struct.super_block, ptr %60, i32 0, i32 33
  %61 = ptrtoint ptr %s_fs_info.i14 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %s_fs_info.i14, align 16
  %63 = ptrtoint ptr %add.ptr.i11 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %add.ptr.i11, align 8
  %meta_blkaddr.i.i15 = getelementptr inbounds %struct.erofs_sb_info, ptr %62, i32 0, i32 13
  %65 = ptrtoint ptr %meta_blkaddr.i.i15 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %meta_blkaddr.i.i15, align 4
  %conv.i.i16 = zext i32 %66 to i64
  %mul.i.i17 = shl nuw nsw i64 %conv.i.i16, 12
  %islotbits.i.i18 = getelementptr inbounds %struct.erofs_sb_info, ptr %62, i32 0, i32 16
  %67 = ptrtoint ptr %islotbits.i.i18 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %islotbits.i.i18, align 2
  %sh_prom.i.i19 = zext i8 %68 to i64
  %shl.i.i20 = shl i64 %64, %sh_prom.i.i19
  %inode_isize.i21 = getelementptr i8, ptr %1, i32 -43
  %69 = ptrtoint ptr %inode_isize.i21 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %inode_isize.i21, align 1
  %conv2.i22 = zext i8 %70 to i64
  %xattr_isize.i23 = getelementptr i8, ptr %1, i32 -42
  %71 = ptrtoint ptr %xattr_isize.i23 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %xattr_isize.i23, align 2
  %conv3.i = zext i16 %72 to i64
  %add.i.i24 = or i64 %mul.i.i17, 15
  %add.i25 = add i64 %add.i.i24, %shl.i.i20
  %add4.i = add i64 %add.i25, %conv2.i22
  %73 = add i64 %add4.i, %conv3.i
  %add6.i26 = and i64 %73, -8
  %i_size.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %74 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %i_size.i, align 8
  %sub.i27 = add i64 %75, 4095
  %div.i = sdiv i64 %sub.i27, 4096
  %conv8.i = trunc i64 %div.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %58)
  %cmp.not.i = icmp eq i8 %58, 12
  br i1 %cmp.not.i, label %if.end.i28, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i28:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv8.i, i32 %lcn)
  %cmp10.not.i = icmp ugt i32 %conv8.i, %lcn
  br i1 %cmp10.not.i, label %if.end13.i, label %if.end.i28.cleanup_crit_edge

if.end.i28.cleanup_crit_edge:                     ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13.i:                                       ; preds = %if.end.i28
  %lcn14.i = getelementptr inbounds %struct.z_erofs_maprecorder, ptr %m, i32 0, i32 3
  %76 = ptrtoint ptr %lcn14.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %lcn, ptr %lcn14.i, align 4
  %rem.i = and i64 %73, 24
  %sub15.i = sub nuw nsw i64 32, %rem.i
  %div1699.i = lshr exact i64 %sub15.i, 2
  %conv17.i = trunc i64 %div1699.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %conv17.i)
  %cmp18.i = icmp eq i32 %conv17.i, 8
  %spec.store.select.i = select i1 %cmp18.i, i32 0, i32 %conv17.i
  %77 = ptrtoint ptr %56 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %56, align 8
  %79 = and i16 %78, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %79)
  %tobool.not.i = icmp ne i16 %79, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select.i, i32 %conv8.i)
  %cmp24.i = icmp ult i32 %spec.store.select.i, %conv8.i
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp24.i, i1 false
  %sub27.i = sub i32 %conv8.i, %spec.store.select.i
  %sub30.i = and i32 %sub27.i, -16
  %compacted_2b.0.i = select i1 %or.cond.i, i32 %sub30.i, i32 0
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select.i, i32 %lcn)
  %cmp32.i = icmp ugt i32 %spec.store.select.i, %lcn
  br i1 %cmp32.i, label %if.end13.i.out.i_crit_edge, label %if.end35.i

if.end13.i.out.i_crit_edge:                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.end35.i:                                       ; preds = %if.end13.i
  %mul.i29 = shl nuw nsw i32 %spec.store.select.i, 2
  %conv36.i = zext i32 %mul.i29 to i64
  %add37.i = add i64 %add6.i26, %conv36.i
  %sub38.i = sub i32 %lcn, %spec.store.select.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub38.i, i32 %compacted_2b.0.i)
  %cmp39.i = icmp ult i32 %sub38.i, %compacted_2b.0.i
  br i1 %cmp39.i, label %if.end35.i.out.i_crit_edge, label %if.end42.i

if.end35.i.out.i_crit_edge:                       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.end42.i:                                       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul43.i = shl i32 %compacted_2b.0.i, 1
  %conv44.i = zext i32 %mul43.i to i64
  %add45.i = add i64 %add37.i, %conv44.i
  %sub46.i = sub i32 %sub38.i, %compacted_2b.0.i
  br label %out.i

out.i:                                            ; preds = %if.end42.i, %if.end35.i.out.i_crit_edge, %if.end13.i.out.i_crit_edge
  %amortizedshift.0.i = phi i32 [ 2, %if.end42.i ], [ 2, %if.end13.i.out.i_crit_edge ], [ 1, %if.end35.i.out.i_crit_edge ]
  %pos.0.i = phi i64 [ %add45.i, %if.end42.i ], [ %add6.i26, %if.end13.i.out.i_crit_edge ], [ %add37.i, %if.end35.i.out.i_crit_edge ]
  %lcn.addr.0.i = phi i32 [ %sub46.i, %if.end42.i ], [ %lcn, %if.end13.i.out.i_crit_edge ], [ %sub38.i, %if.end35.i.out.i_crit_edge ]
  %mul47.i = shl i32 %lcn.addr.0.i, %amortizedshift.0.i
  %conv48.i = zext i32 %mul47.i to i64
  %add49.i = add i64 %pos.0.i, %conv48.i
  %div50100.i = lshr i64 %add49.i, 12
  %conv51.i = trunc i64 %div50100.i to i32
  %80 = ptrtoint ptr %i_sb.i13 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %i_sb.i13, align 4
  %map.i.i30 = getelementptr inbounds %struct.z_erofs_maprecorder, ptr %m, i32 0, i32 1
  %82 = ptrtoint ptr %map.i.i30 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %map.i.i30, align 4
  %call.i.i31 = tail call ptr @erofs_read_metabuf(ptr noundef %83, ptr noundef %81, i32 noundef %conv51.i, i32 noundef 2) #7
  %kaddr.i.i32 = getelementptr inbounds %struct.z_erofs_maprecorder, ptr %m, i32 0, i32 2
  %84 = ptrtoint ptr %kaddr.i.i32 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call.i.i31, ptr %kaddr.i.i32, align 8
  %cmp.i.i.not.i33 = icmp ugt ptr %call.i.i31, inttoptr (i32 -4096 to ptr)
  %85 = ptrtoint ptr %call.i.i31 to i32
  br i1 %cmp.i.i.not.i33, label %out.i.cleanup_crit_edge, label %if.end55.i

out.i.cleanup_crit_edge:                          ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end55.i:                                       ; preds = %out.i
  %86 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %m, align 8
  %88 = getelementptr i8, ptr %87, i32 -32
  %z_logical_clusterbits.i.i = getelementptr i8, ptr %87, i32 -28
  %89 = ptrtoint ptr %z_logical_clusterbits.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %z_logical_clusterbits.i.i, align 4
  %conv.i101.i = zext i8 %90 to i32
  %shl.i102.i = shl nuw i32 1, %conv.i101.i
  %sub.i.i = add i32 %shl.i102.i, -1
  %91 = zext i32 %amortizedshift.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %amortizedshift.0.i, label %if.end55.i.cleanup_crit_edge [
    i32 2, label %if.end55.i.if.end10.i.i_crit_edge
    i32 1, label %land.lhs.true.i.i
  ]

if.end55.i.if.end10.i.i_crit_edge:                ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i.i

if.end55.i.cleanup_crit_edge:                     ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i.i:                                ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %90)
  %cmp6.i.i = icmp eq i8 %90, 12
  br i1 %cmp6.i.i, label %land.lhs.true.i.i.if.end10.i.i_crit_edge, label %land.lhs.true.i.i.cleanup_crit_edge

land.lhs.true.i.i.cleanup_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i.i.if.end10.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %land.lhs.true.i.i.if.end10.i.i_crit_edge, %if.end55.i.if.end10.i.i_crit_edge
  %vcnt.0.i.i = phi i32 [ %amortizedshift.0.i, %if.end55.i.if.end10.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.if.end10.i.i_crit_edge ]
  %shl11.i.i = shl nuw nsw i32 %vcnt.0.i.i, %amortizedshift.0.i
  %sub12.i.i = add nsw i32 %shl11.i.i, -1
  %conv13.i.i = zext i32 %sub12.i.i to i64
  %neg.i.i = xor i64 %conv13.i.i, -1
  %and.i.i = and i64 %add49.i, %neg.i.i
  %conv15.i.i = zext i32 %shl11.i.i to i64
  %add.i103.i = add i64 %and.i.i, %conv15.i.i
  %nextpackoff.i.i = getelementptr inbounds %struct.z_erofs_maprecorder, ptr %m, i32 0, i32 10
  %92 = ptrtoint ptr %nextpackoff.i.i to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %add.i103.i, ptr %nextpackoff.i.i, align 8
  %93 = ptrtoint ptr %88 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %88, align 8
  %95 = and i16 %94, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %95)
  %tobool.not.i.i = icmp eq i16 %95, 0
  %sub20.i.i = add nsw i32 %shl11.i.i, -4
  %sub20.tr.i.i = trunc i32 %sub20.i.i to i16
  %div.lhs.trunc.i.i = shl nuw nsw i16 %sub20.tr.i.i, 3
  %div.rhs.trunc.i.i = trunc i32 %vcnt.0.i.i to i16
  %div260.i.i = udiv i16 %div.lhs.trunc.i.i, %div.rhs.trunc.i.i
  %div.zext.i.i = zext i16 %div260.i.i to i32
  %96 = trunc i64 %add49.i to i32
  %conv21.i.i = and i32 %96, 4095
  %neg24.i.i = sub nsw i32 0, %shl11.i.i
  %and25.i.i = and i32 %conv21.i.i, %neg24.i.i
  %add.ptr26.i.i = getelementptr i8, ptr %call.i.i31, i32 %and25.i.i
  %sub27.i.i = sub nsw i32 %conv21.i.i, %and25.i.i
  %shr.i.i = lshr i32 %sub27.i.i, %amortizedshift.0.i
  %mul28.i.i = mul i32 %shr.i.i, %div.zext.i.i
  %div6.i.i.i = lshr i32 %mul28.i.i, 3
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr26.i.i, i32 %div6.i.i.i
  %97 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %97, i32 4)
  %98 = load i32, ptr %add.ptr.i.i.i, align 1
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #7
  %and.i.i.i = and i32 %mul28.i.i, 7
  %shr.i.i.i = lshr i32 %99, %and.i.i.i
  %and1.i.i.i = and i32 %shr.i.i.i, %sub.i.i
  %shr2.i.i.i = lshr i32 %shr.i.i.i, %conv.i101.i
  %100 = trunc i32 %shr2.i.i.i to i8
  %conv.i.i.i = and i8 %100, 3
  %type29.i.i = getelementptr inbounds %struct.z_erofs_maprecorder, ptr %m, i32 0, i32 4
  %101 = ptrtoint ptr %type29.i.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %conv.i.i.i, ptr %type29.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %conv.i.i.i)
  %cmp31.i.i = icmp eq i8 %conv.i.i.i, 2
  br i1 %cmp31.i.i, label %if.then33.i.i, label %if.end83.i.i

if.then33.i.i:                                    ; preds = %if.end10.i.i
  %conv35.i.i = trunc i32 %shl.i102.i to i16
  %clusterofs.i.i = getelementptr inbounds %struct.z_erofs_maprecorder, ptr %m, i32 0, i32 6
  %102 = ptrtoint ptr %clusterofs.i.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %conv35.i.i, ptr %clusterofs.i.i, align 2
  br i1 %lookahead, label %if.then37.i.i, label %if.then33.i.i.if.end40.i.i_crit_edge

if.then33.i.i.if.end40.i.i_crit_edge:             ; preds = %if.then33.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40.i.i

if.then37.i.i:                                    ; preds = %if.then33.i.i
  %notmask.i.i.i = shl nsw i32 -1, %conv.i101.i
  %sub.i.i.i = xor i32 %notmask.i.i.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %vcnt.0.i.i, i32 %shr.i.i)
  %cmp.not.i.i.i = icmp ugt i32 %vcnt.0.i.i, %shr.i.i
  br i1 %cmp.not.i.i.i, label %do.body8.preheader.i.i.i, label %do.body2.i.i.i, !prof !69

do.body8.preheader.i.i.i:                         ; preds = %if.then37.i.i
  %103 = sub nsw i32 %vcnt.0.i.i, %shr.i.i
  %104 = xor i32 %shr.i.i, -1
  %105 = add nsw i32 %vcnt.0.i.i, %104
  br label %do.body8.i.i.i

do.body2.i.i.i:                                   ; preds = %if.then37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 234, 0\0A.popsection", ""() #7, !srcloc !88
  unreachable

do.body8.i.i.i:                                   ; preds = %if.end12.i.i.i.do.body8.i.i.i_crit_edge, %do.body8.preheader.i.i.i
  %i.addr.0.i.i.i = phi i32 [ %inc14.i.i.i, %if.end12.i.i.i.do.body8.i.i.i_crit_edge ], [ %shr.i.i, %do.body8.preheader.i.i.i ]
  %d1.0.i.i.i = phi i32 [ %inc.i.i.i, %if.end12.i.i.i.do.body8.i.i.i_crit_edge ], [ 0, %do.body8.preheader.i.i.i ]
  %mul.i.i.i = mul i32 %i.addr.0.i.i.i, %div.zext.i.i
  %div6.i.i.i.i = lshr i32 %mul.i.i.i, 3
  %add.ptr.i.i.i.i = getelementptr i8, ptr %add.ptr26.i.i, i32 %div6.i.i.i.i
  %106 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %106, i32 4)
  %107 = load i32, ptr %add.ptr.i.i.i.i, align 1
  %108 = tail call i32 @llvm.bswap.i32(i32 %107) #7
  %and.i.i.i.i = and i32 %mul.i.i.i, 7
  %shr.i.i.i.i = lshr i32 %108, %and.i.i.i.i
  %shr2.i.i.i.i = lshr i32 %shr.i.i.i.i, %conv.i101.i
  %conv.i33.i.i.i = and i32 %shr2.i.i.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv.i33.i.i.i)
  %cmp9.not.i.i.i = icmp eq i32 %conv.i33.i.i.i, 2
  br i1 %cmp9.not.i.i.i, label %if.end12.i.i.i, label %do.body8.i.i.i.get_compacted_la_distance.exit.i.i_crit_edge

do.body8.i.i.i.get_compacted_la_distance.exit.i.i_crit_edge: ; preds = %do.body8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_compacted_la_distance.exit.i.i

if.end12.i.i.i:                                   ; preds = %do.body8.i.i.i
  %inc.i.i.i = add nuw i32 %d1.0.i.i.i, 1
  %inc14.i.i.i = add nuw i32 %i.addr.0.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %103
  br i1 %exitcond.not.i.i.i, label %do.end17.i.i.i, label %if.end12.i.i.i.do.body8.i.i.i_crit_edge

if.end12.i.i.i.do.body8.i.i.i_crit_edge:          ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body8.i.i.i

do.end17.i.i.i:                                   ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %and1.i.le.i.i.i = and i32 %shr.i.i.i.i, %sub.i.i.i
  %and.i235.i.i = and i32 %and1.i.le.i.i.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i235.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and.i235.i.i, 0
  %add.i.i.i = add i32 %105, %and1.i.le.i.i.i
  %spec.select.i.i.i = select i1 %tobool18.not.i.i.i, i32 %add.i.i.i, i32 %103
  br label %get_compacted_la_distance.exit.i.i

get_compacted_la_distance.exit.i.i:               ; preds = %do.end17.i.i.i, %do.body8.i.i.i.get_compacted_la_distance.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %spec.select.i.i.i, %do.end17.i.i.i ], [ %d1.0.i.i.i, %do.body8.i.i.i.get_compacted_la_distance.exit.i.i_crit_edge ]
  %conv39.i.i = trunc i32 %retval.0.i.i.i to i16
  %arrayidx.i.i = getelementptr %struct.z_erofs_maprecorder, ptr %m, i32 0, i32 7, i32 1
  %109 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %conv39.i.i, ptr %arrayidx.i.i, align 2
  br label %if.end40.i.i

if.end40.i.i:                                     ; preds = %get_compacted_la_distance.exit.i.i, %if.then33.i.i.if.end40.i.i_crit_edge
  %and41.i.i = and i32 %and1.i.i.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i.i)
  %tobool42.not.i.i = icmp eq i32 %and41.i.i, 0
  br i1 %tobool42.not.i.i, label %if.else56.i.i, label %if.then43.i.i

if.then43.i.i:                                    ; preds = %if.end40.i.i
  br i1 %tobool.not.i.i, label %do.body46.i.i, label %if.end52.i.i

do.body46.i.i:                                    ; preds = %if.then43.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 293, 0\0A.popsection", ""() #7, !srcloc !89
  unreachable

if.end52.i.i:                                     ; preds = %if.then43.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %and53.i.i = and i32 %and1.i.i.i, -2049
  %compressedlcs.i.i = getelementptr inbounds %struct.z_erofs_maprecorder, ptr %m, i32 0, i32 9
  %110 = ptrtoint ptr %compressedlcs.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %and53.i.i, ptr %compressedlcs.i.i, align 4
  %delta54.i.i = getelementptr inbounds %struct.z_erofs_maprecorder, ptr %m, i32 0, i32 7
  %111 = ptrtoint ptr %delta54.i.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 1, ptr %delta54.i.i, align 4
  br label %cleanup

if.else56.i.i:                                    ; preds = %if.end40.i.i
  %add57.i.i = add nuw i32 %shr.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add57.i.i, i32 %vcnt.0.i.i)
  %cmp58.not.i.i = icmp eq i32 %add57.i.i, %vcnt.0.i.i
  br i1 %cmp58.not.i.i, label %if.end65.i.i, label %if.then60.i.i

if.then60.i.i:                                    ; preds = %if.else56.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv61.i.i = trunc i32 %and1.i.i.i to i16
  %delta62.i.i = getelementptr inbounds %struct.z_erofs_maprecorder, ptr %m, i32 0, i32 7
  %112 = ptrtoint ptr %delta62.i.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %conv61.i.i, ptr %delta62.i.i, align 4
  br label %cleanup

if.end65.i.i:                                     ; preds = %if.else56.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub66.i.i = add nsw i32 %shr.i.i, -1
  %mul67.i.i = mul i32 %sub66.i.i, %div.zext.i.i
  %div6.i236.i.i = lshr i32 %mul67.i.i, 3
  %add.ptr.i237.i.i = getelementptr i8, ptr %add.ptr26.i.i, i32 %div6.i236.i.i
  %113 = ptrtoint ptr %add.ptr.i237.i.i to i32
  call void @__asan_loadN_noabort(i32 %113, i32 4)
  %114 = load i32, ptr %add.ptr.i237.i.i, align 1
  %115 = tail call i32 @llvm.bswap.i32(i32 %114) #7
  %and.i238.i.i = and i32 %mul67.i.i, 7
  %shr.i239.i.i = lshr i32 %115, %and.i238.i.i
  %and1.i240.i.i = and i32 %shr.i239.i.i, %sub.i.i
  %shr2.i241.i.i = lshr i32 %shr.i239.i.i, %conv.i101.i
  %conv.i242264.i.i = and i32 %shr2.i241.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv.i242264.i.i)
  %cmp70.not.i.i = icmp eq i32 %conv.i242264.i.i, 2
  %and74.i.i = and i32 %and1.i240.i.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.i.i)
  %tobool75.not.i.i = icmp eq i32 %and74.i.i, 0
  %116 = trunc i32 %and1.i240.i.i to i16
  %117 = add i16 %116, 1
  %phi.cast.i.i = select i1 %tobool75.not.i.i, i16 %117, i16 2
  %lo.0.i.i = select i1 %cmp70.not.i.i, i16 %phi.cast.i.i, i16 1
  %delta81.i.i = getelementptr inbounds %struct.z_erofs_maprecorder, ptr %m, i32 0, i32 7
  %118 = ptrtoint ptr %delta81.i.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %lo.0.i.i, ptr %delta81.i.i, align 4
  br label %cleanup

if.end83.i.i:                                     ; preds = %if.end10.i.i
  %conv84.i.i = trunc i32 %and1.i.i.i to i16
  %clusterofs85.i.i = getelementptr inbounds %struct.z_erofs_maprecorder, ptr %m, i32 0, i32 6
  %119 = ptrtoint ptr %clusterofs85.i.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %conv84.i.i, ptr %clusterofs85.i.i, align 2
  %delta86.i.i = getelementptr inbounds %struct.z_erofs_maprecorder, ptr %m, i32 0, i32 7
  %120 = ptrtoint ptr %delta86.i.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 0, ptr %delta86.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i.i)
  %cmp90283.not.i.i = icmp eq i32 %shr.i.i, 0
  br i1 %tobool.not.i.i, label %while.cond.preheader.i.i, label %while.cond105.preheader.i.i

while.cond105.preheader.i.i:                      ; preds = %if.end83.i.i
  br i1 %cmp90283.not.i.i, label %while.cond105.preheader.i.i.if.end141.i.i_crit_edge, label %while.cond105.preheader.i.i.while.body108.lr.ph.i.i_crit_edge

while.cond105.preheader.i.i.while.body108.lr.ph.i.i_crit_edge: ; preds = %while.cond105.preheader.i.i
  br label %while.body108.lr.ph.i.i

while.cond105.preheader.i.i.if.end141.i.i_crit_edge: ; preds = %while.cond105.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141.i.i

while.cond.preheader.i.i:                         ; preds = %if.end83.i.i
  br i1 %cmp90283.not.i.i, label %while.cond.preheader.i.i.if.end141.i.i_crit_edge, label %while.cond.preheader.i.i.while.body.i.i_crit_edge

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.cond.preheader.i.i.if.end141.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %i.0285.i.i = phi i32 [ %spec.select.i105.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %shr.i.i, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %nblk.0284.i.i = phi i32 [ %nblk.1.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 1, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %dec.i.i = add nsw i32 %i.0285.i.i, -1
  %mul92.i.i = mul i32 %dec.i.i, %div.zext.i.i
  %div6.i243.i.i = lshr i32 %mul92.i.i, 3
  %add.ptr.i244.i.i = getelementptr i8, ptr %add.ptr26.i.i, i32 %div6.i243.i.i
  %121 = ptrtoint ptr %add.ptr.i244.i.i to i32
  call void @__asan_loadN_noabort(i32 %121, i32 4)
  %122 = load i32, ptr %add.ptr.i244.i.i, align 1
  %123 = tail call i32 @llvm.bswap.i32(i32 %122) #7
  %and.i245.i.i = and i32 %mul92.i.i, 7
  %shr.i246.i.i = lshr i32 %123, %and.i245.i.i
  %and1.i247.i.i = and i32 %shr.i246.i.i, %sub.i.i
  %shr2.i248.i.i = lshr i32 %shr.i246.i.i, %conv.i101.i
  %conv.i249262.i.i = and i32 %shr2.i248.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv.i249262.i.i)
  %cmp95.i.i = icmp eq i32 %conv.i249262.i.i, 2
  %sub98.i.i = select i1 %cmp95.i.i, i32 %and1.i247.i.i, i32 0
  %spec.select.i105.i = sub i32 %dec.i.i, %sub98.i.i
  %124 = xor i32 %spec.select.i105.i, -1
  %spec.select.lobit.not.i.i = lshr i32 %124, 31
  %nblk.1.i.i = add i32 %spec.select.lobit.not.i.i, %nblk.0284.i.i
  %cmp90.i.i = icmp sgt i32 %spec.select.i105.i, 0
  br i1 %cmp90.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.if.end141.i.i_crit_edge

while.body.i.i.if.end141.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141.i.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

while.body108.i.i:                                ; preds = %if.end135.i.i.while.body108.i.i_crit_edge, %while.body108.lr.ph.i.i
  %i.2277.i.i = phi i32 [ %i.2.ph281.i.i, %while.body108.lr.ph.i.i ], [ %sub137.i.i, %if.end135.i.i.while.body108.i.i_crit_edge ]
  %dec109.i.i = add nsw i32 %i.2277.i.i, -1
  %mul110.i.i = mul i32 %dec109.i.i, %div.zext.i.i
  %div6.i250.i.i = lshr i32 %mul110.i.i, 3
  %add.ptr.i251.i.i = getelementptr i8, ptr %add.ptr26.i.i, i32 %div6.i250.i.i
  %125 = ptrtoint ptr %add.ptr.i251.i.i to i32
  call void @__asan_loadN_noabort(i32 %125, i32 4)
  %126 = load i32, ptr %add.ptr.i251.i.i, align 1
  %127 = tail call i32 @llvm.bswap.i32(i32 %126) #7
  %and.i252.i.i = and i32 %mul110.i.i, 7
  %shr.i253.i.i = lshr i32 %127, %and.i252.i.i
  %and1.i254.i.i = and i32 %shr.i253.i.i, %sub.i.i
  %shr2.i255.i.i = lshr i32 %shr.i253.i.i, %conv.i101.i
  %conv.i256261.i.i = and i32 %shr2.i255.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv.i256261.i.i)
  %cmp113.i.i = icmp eq i32 %conv.i256261.i.i, 2
  br i1 %cmp113.i.i, label %if.then115.i.i, label %if.end138.i.i

if.then115.i.i:                                   ; preds = %while.body108.i.i
  %and116.i.i = and i32 %and1.i254.i.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116.i.i)
  %tobool117.not.i.i = icmp eq i32 %and116.i.i, 0
  br i1 %tobool117.not.i.i, label %if.end122.i.i, label %if.then118.i.i

if.then118.i.i:                                   ; preds = %if.then115.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dec119.i.i = add nsw i32 %i.2277.i.i, -2
  %and120.i.i = and i32 %and1.i254.i.i, -2049
  %add121.i.i = add i32 %and120.i.i, %nblk.2.ph280.i.i
  br label %while.cond105.outer.backedge.i.i

while.cond105.outer.backedge.i.i:                 ; preds = %if.end138.i.i, %if.then118.i.i
  %nblk.2.ph.be.i.i = phi i32 [ %inc139.i.i, %if.end138.i.i ], [ %add121.i.i, %if.then118.i.i ]
  %i.2.ph.be.i.i = phi i32 [ %dec109.i.i, %if.end138.i.i ], [ %dec119.i.i, %if.then118.i.i ]
  %cmp106276.i.i = icmp sgt i32 %i.2.ph.be.i.i, 0
  br i1 %cmp106276.i.i, label %while.cond105.outer.backedge.i.i.while.body108.lr.ph.i.i_crit_edge, label %while.cond105.outer.backedge.i.i.if.end141.i.i_crit_edge

while.cond105.outer.backedge.i.i.if.end141.i.i_crit_edge: ; preds = %while.cond105.outer.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141.i.i

while.cond105.outer.backedge.i.i.while.body108.lr.ph.i.i_crit_edge: ; preds = %while.cond105.outer.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body108.lr.ph.i.i

while.body108.lr.ph.i.i:                          ; preds = %while.cond105.outer.backedge.i.i.while.body108.lr.ph.i.i_crit_edge, %while.cond105.preheader.i.i.while.body108.lr.ph.i.i_crit_edge
  %i.2.ph281.i.i = phi i32 [ %i.2.ph.be.i.i, %while.cond105.outer.backedge.i.i.while.body108.lr.ph.i.i_crit_edge ], [ %shr.i.i, %while.cond105.preheader.i.i.while.body108.lr.ph.i.i_crit_edge ]
  %nblk.2.ph280.i.i = phi i32 [ %nblk.2.ph.be.i.i, %while.cond105.outer.backedge.i.i.while.body108.lr.ph.i.i_crit_edge ], [ 0, %while.cond105.preheader.i.i.while.body108.lr.ph.i.i_crit_edge ]
  br label %while.body108.i.i

if.end122.i.i:                                    ; preds = %if.then115.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and1.i254.i.i)
  %cmp123.i.i = icmp ult i32 %and1.i254.i.i, 2
  br i1 %cmp123.i.i, label %do.body127.i.i, label %if.end135.i.i

do.body127.i.i:                                   ; preds = %if.end122.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 346, 0\0A.popsection", ""() #7, !srcloc !90
  unreachable

if.end135.i.i:                                    ; preds = %if.end122.i.i
  %sub136.neg.i.i = add i32 %i.2277.i.i, 1
  %sub137.i.i = sub i32 %sub136.neg.i.i, %and1.i254.i.i
  %cmp106.i.i = icmp sgt i32 %sub137.i.i, 0
  br i1 %cmp106.i.i, label %if.end135.i.i.while.body108.i.i_crit_edge, label %if.end135.i.i.if.end141.i.i_crit_edge

if.end135.i.i.if.end141.i.i_crit_edge:            ; preds = %if.end135.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141.i.i

if.end135.i.i.while.body108.i.i_crit_edge:        ; preds = %if.end135.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body108.i.i

if.end138.i.i:                                    ; preds = %while.body108.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc139.i.i = add i32 %nblk.2.ph280.i.i, 1
  br label %while.cond105.outer.backedge.i.i

if.end141.i.i:                                    ; preds = %if.end135.i.i.if.end141.i.i_crit_edge, %while.cond105.outer.backedge.i.i.if.end141.i.i_crit_edge, %while.body.i.i.if.end141.i.i_crit_edge, %while.cond.preheader.i.i.if.end141.i.i_crit_edge, %while.cond105.preheader.i.i.if.end141.i.i_crit_edge
  %nblk.3.i.i = phi i32 [ 1, %while.cond.preheader.i.i.if.end141.i.i_crit_edge ], [ 0, %while.cond105.preheader.i.i.if.end141.i.i_crit_edge ], [ %nblk.1.i.i, %while.body.i.i.if.end141.i.i_crit_edge ], [ %nblk.2.ph280.i.i, %if.end135.i.i.if.end141.i.i_crit_edge ], [ %nblk.2.ph.be.i.i, %while.cond105.outer.backedge.i.i.if.end141.i.i_crit_edge ]
  %add.ptr144.i.i = getelementptr i8, ptr %add.ptr26.i.i, i32 %sub20.i.i
  %128 = ptrtoint ptr %add.ptr144.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %add.ptr144.i.i, align 4
  %130 = tail call i32 @llvm.bswap.i32(i32 %129) #7
  %add145.i.i = add i32 %130, %nblk.3.i.i
  %pblk.i.i = getelementptr inbounds %struct.z_erofs_maprecorder, ptr %m, i32 0, i32 8
  %131 = ptrtoint ptr %pblk.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %add145.i.i, ptr %pblk.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end141.i.i, %if.end65.i.i, %if.then60.i.i, %if.end52.i.i, %land.lhs.true.i.i.cleanup_crit_edge, %if.end55.i.cleanup_crit_edge, %out.i.cleanup_crit_edge, %if.end.i28.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %sw.epilog.i, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.epilog.i ], [ %22, %if.then.cleanup_crit_edge ], [ -95, %if.then4.cleanup_crit_edge ], [ -22, %if.end.i28.cleanup_crit_edge ], [ %85, %out.i.cleanup_crit_edge ], [ 0, %if.end52.i.i ], [ 0, %if.then60.i.i ], [ 0, %if.end65.i.i ], [ 0, %if.end141.i.i ], [ -95, %if.end55.i.cleanup_crit_edge ], [ -95, %land.lhs.true.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @erofs_unmap_metabuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_z_erofs_map_blocks_iter_exit(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !10, !12, !13, !15, !17, !19, !21, !23, !24, !26, !28, !29, !30, !31, !32, !34, !35, !37, !39, !41, !42, !44, !46, !47, !49}
!llvm.named.register.sp = !{!50}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @z_erofs_iomap_report_ops, !1, !"z_erofs_iomap_report_ops", i1 false, i1 false}
!1 = !{!"../fs/erofs/zmap.c", i32 771, i32 24}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../include/trace/events/erofs.h", i32 179, i32 1}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!6 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!9 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__func__.z_erofs_fill_inode_lazy, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/erofs/zmap.c", i32 79, i32 3}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/erofs/zmap.c", i32 89, i32 3}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/erofs/zmap.c", i32 97, i32 3}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/erofs/zmap.c", i32 119, i32 4}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../include/linux/wait_bit.h", i32 181, i32 2}
!21 = !{ptr @__func__.z_erofs_do_map_blocks, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/erofs/zmap.c", i32 644, i32 4}
!23 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/erofs/zmap.c", i32 661, i32 3}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/erofs/zmap.c", i32 702, i32 2}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @z_erofs_do_map_blocks.__UNIQUE_ID_ddebug306, !27, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!31 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @__func__.z_erofs_extent_lookback, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/erofs/zmap.c", i32 440, i32 3}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/erofs/zmap.c", i32 455, i32 4}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/erofs/zmap.c", i32 469, i32 3}
!39 = !{ptr @__func__.z_erofs_get_extent_compressedlen, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/erofs/zmap.c", i32 536, i32 3}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/erofs/zmap.c", i32 546, i32 2}
!44 = !{ptr @__func__.z_erofs_get_extent_decompressedlen, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/erofs/zmap.c", i32 584, i32 4}
!46 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../include/trace/events/erofs.h", i32 231, i32 1}
!49 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!50 = !{!"sp"}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{i64 2154727036}
!61 = !{!"branch_weights", i32 1, i32 2000}
!62 = !{i64 2154727961, i64 2154728440, i64 2154727998, i64 2154728054, i64 2154728088, i64 2154728112, i64 2154728153, i64 2154728174, i64 2154728202, i64 2154728236}
!63 = !{i64 2154731421}
!64 = !{i64 2148786079}
!65 = !{i64 2148696474, i64 2148696506, i64 2148696535, i64 2148696569, i64 2148696600, i64 2148696623}
!66 = !{i64 2149410486}
!67 = !{i64 2154777800, i64 2154778280, i64 2154777837, i64 2154777893, i64 2154777927, i64 2154777951, i64 2154777992, i64 2154778013, i64 2154778041, i64 2154778075}
!68 = !{i64 2148513827, i64 2148513832, i64 2148513845, i64 2148513889, i64 2148513923, i64 2148513944}
!69 = !{!"branch_weights", i32 2000, i32 1}
!70 = !{i64 2154648411}
!71 = !{i64 2154648666}
!72 = !{i64 2149510234}
!73 = !{i64 2149511270}
!74 = !{i64 2154749463, i64 2154749943, i64 2154749500, i64 2154749556, i64 2154749590, i64 2154749614, i64 2154749655, i64 2154749676, i64 2154749704, i64 2154749738}
!75 = !{i64 2154751142, i64 2154751622, i64 2154751179, i64 2154751235, i64 2154751269, i64 2154751293, i64 2154751334, i64 2154751355, i64 2154751383, i64 2154751417}
!76 = !{i64 2154752834, i64 2154753314, i64 2154752871, i64 2154752927, i64 2154752961, i64 2154752985, i64 2154753026, i64 2154753047, i64 2154753075, i64 2154753109}
!77 = !{i64 2154755974, i64 2154756454, i64 2154756011, i64 2154756067, i64 2154756101, i64 2154756125, i64 2154756166, i64 2154756187, i64 2154756215, i64 2154756249}
!78 = !{i64 2154757569, i64 2154758049, i64 2154757606, i64 2154757662, i64 2154757696, i64 2154757720, i64 2154757761, i64 2154757782, i64 2154757810, i64 2154757844}
!79 = !{!"branch_weights", i32 1, i32 4001}
!80 = !{i64 2154759272, i64 2154759752, i64 2154759309, i64 2154759365, i64 2154759399, i64 2154759423, i64 2154759464, i64 2154759485, i64 2154759513, i64 2154759547}
!81 = !{i64 2154760981, i64 2154761461, i64 2154761018, i64 2154761074, i64 2154761108, i64 2154761132, i64 2154761173, i64 2154761194, i64 2154761222, i64 2154761256}
!82 = !{i64 2154762662, i64 2154763142, i64 2154762699, i64 2154762755, i64 2154762789, i64 2154762813, i64 2154762854, i64 2154762875, i64 2154762903, i64 2154762937}
!83 = !{i64 2154765609, i64 2154766089, i64 2154765646, i64 2154765702, i64 2154765736, i64 2154765760, i64 2154765801, i64 2154765822, i64 2154765850, i64 2154765884}
!84 = !{i64 2154767287, i64 2154767767, i64 2154767324, i64 2154767380, i64 2154767414, i64 2154767438, i64 2154767479, i64 2154767500, i64 2154767528, i64 2154767562}
!85 = !{i64 2154688756}
!86 = !{i64 2154689019}
!87 = !{i64 2154734132, i64 2154734612, i64 2154734169, i64 2154734225, i64 2154734259, i64 2154734283, i64 2154734324, i64 2154734345, i64 2154734373, i64 2154734407}
!88 = !{i64 2154737730, i64 2154738210, i64 2154737767, i64 2154737823, i64 2154737857, i64 2154737881, i64 2154737922, i64 2154737943, i64 2154737971, i64 2154738005}
!89 = !{i64 2154740910, i64 2154741390, i64 2154740947, i64 2154741003, i64 2154741037, i64 2154741061, i64 2154741102, i64 2154741123, i64 2154741151, i64 2154741185}
!90 = !{i64 2154742515, i64 2154742995, i64 2154742552, i64 2154742608, i64 2154742642, i64 2154742666, i64 2154742707, i64 2154742728, i64 2154742756, i64 2154742790}
