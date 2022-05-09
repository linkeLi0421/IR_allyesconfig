; ModuleID = '/llk/IR_all_yes/sound/pci/ctxfi/ctdaio.c_pt.bc'
source_filename = "../sound/pci/ctxfi/ctdaio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dao_rsc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.daio_rsc_idx = type { i16, i16 }
%struct.rsc_ops = type { ptr, ptr, ptr, ptr }
%struct.dai_rsc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.daio_mgr = type { %struct.rsc_mgr, ptr, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rsc_mgr = type { i32, i32, i32, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.imapper = type { i16, i16, i16, i16, %struct.list_head }
%struct.hw = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dai = type { %struct.daio, ptr, ptr, ptr }
%struct.daio = type { %struct.rsc, %struct.rsc, i32 }
%struct.rsc = type { i32, ptr, ptr, ptr }
%struct.dao = type { %struct.daio, ptr, ptr, ptr, ptr, ptr }
%struct.daio_desc = type { i16, [2 x i8] }

@daio_mgr_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&daio_mgr->mgr_lock\00", [44 x i8] zeroinitializer }, align 32
@daio_mgr_create.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&daio_mgr->imap_lock\00", [43 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@get_daio_rsc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 538, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Can't meet DAIO resource request!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"get_daio_rsc\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sound/pci/ctxfi/ctdaio.c\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@get_daio_rsc._entry_ptr = internal global ptr @get_daio_rsc._entry, section ".printk_index", align 4
@dao_ops = internal constant { %struct.dao_rsc_ops, [32 x i8] } { %struct.dao_rsc_ops { ptr @dao_spdif_set_spos, ptr @dao_commit_write, ptr @dao_spdif_get_spos, ptr @dao_rsc_reinit, ptr @dao_set_left_input, ptr @dao_set_right_input, ptr @dao_clear_left_input, ptr @dao_clear_right_input }, [32 x i8] zeroinitializer }, align 32
@idx_20k1 = internal constant { [9 x %struct.daio_rsc_idx], [60 x i8] } { [9 x %struct.daio_rsc_idx] [%struct.daio_rsc_idx { i16 0, i16 1 }, %struct.daio_rsc_idx { i16 24, i16 25 }, %struct.daio_rsc_idx { i16 8, i16 9 }, %struct.daio_rsc_idx { i16 16, i16 17 }, %struct.daio_rsc_idx { i16 32, i16 33 }, %struct.daio_rsc_idx { i16 437, i16 445 }, %struct.daio_rsc_idx { i16 21, i16 29 }, %struct.daio_rsc_idx zeroinitializer, %struct.daio_rsc_idx { i16 149, i16 157 }], [60 x i8] zeroinitializer }, align 32
@idx_20k2 = internal constant { [9 x %struct.daio_rsc_idx], [60 x i8] } { [9 x %struct.daio_rsc_idx] [%struct.daio_rsc_idx { i16 64, i16 65 }, %struct.daio_rsc_idx { i16 96, i16 97 }, %struct.daio_rsc_idx { i16 80, i16 81 }, %struct.daio_rsc_idx { i16 112, i16 113 }, %struct.daio_rsc_idx { i16 0, i16 1 }, %struct.daio_rsc_idx { i16 69, i16 197 }, %struct.daio_rsc_idx { i16 5, i16 133 }, %struct.daio_rsc_idx { i16 85, i16 213 }, %struct.daio_rsc_idx zeroinitializer], [60 x i8] zeroinitializer }, align 32
@daio_out_rsc_ops = internal constant { %struct.rsc_ops, [16 x i8] } { %struct.rsc_ops { ptr @daio_master, ptr @daio_out_next_conj, ptr @daio_index, ptr null }, [16 x i8] zeroinitializer }, align 32
@daio_in_rsc_ops_20k1 = internal constant { %struct.rsc_ops, [16 x i8] } { %struct.rsc_ops { ptr @daio_master, ptr @daio_in_next_conj_20k1, ptr null, ptr @daio_index }, [16 x i8] zeroinitializer }, align 32
@daio_in_rsc_ops_20k2 = internal constant { %struct.rsc_ops, [16 x i8] } { %struct.rsc_ops { ptr @daio_master, ptr @daio_in_next_conj_20k2, ptr null, ptr @daio_index }, [16 x i8] zeroinitializer }, align 32
@dai_ops = internal constant { %struct.dai_rsc_ops, [40 x i8] } { %struct.dai_rsc_ops { ptr @dai_set_srt_srcl, ptr @dai_set_srt_srcr, ptr @dai_set_srt_msr, ptr @dai_set_enb_src, ptr @dai_set_enb_srt, ptr @dai_commit_write }, [40 x i8] zeroinitializer }, align 32
@switch.table.get_daio_rsc = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 4, i32 7, i32 5, i32 6, i32 0, i32 7, i32 0, i32 -22, i32 1], [60 x i8] zeroinitializer }, align 32
@switch.table.get_daio_rsc.8 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 4, i32 7, i32 5, i32 6, i32 0, i32 4, i32 0, i32 5], [32 x i8] zeroinitializer }, align 32
@switch.table.daio_mgr_enb_daio = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 4, i32 7, i32 5, i32 6, i32 0], [44 x i8] zeroinitializer }, align 32
@switch.table.daio_mgr_enb_daio.9 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 4, i32 7, i32 5, i32 6, i32 0], [44 x i8] zeroinitializer }, align 32
@switch.table.daio_mgr_enb_daio.10 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 7, i32 0, i32 -22, i32 1], [16 x i8] zeroinitializer }, align 32
@switch.table.daio_mgr_enb_daio.11 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 4, i32 0, i32 5], [20 x i8] zeroinitializer }, align 32
@switch.table.daio_mgr_dsb_daio = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 4, i32 7, i32 5, i32 6, i32 0], [44 x i8] zeroinitializer }, align 32
@switch.table.daio_mgr_dsb_daio.12 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 4, i32 7, i32 5, i32 6, i32 0], [44 x i8] zeroinitializer }, align 32
@switch.table.daio_mgr_dsb_daio.13 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 7, i32 0, i32 -22, i32 1], [16 x i8] zeroinitializer }, align 32
@switch.table.daio_mgr_dsb_daio.14 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 4, i32 0, i32 5], [20 x i8] zeroinitializer }, align 32
@switch.table.dao_rsc_init = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 4, i32 7, i32 5, i32 6, i32 0, i32 7, i32 0, i32 -22, i32 1], [60 x i8] zeroinitializer }, align 32
@switch.table.dao_rsc_init.15 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 4, i32 7, i32 5, i32 6, i32 0, i32 4, i32 0, i32 5], [32 x i8] zeroinitializer }, align 32
@switch.table.dao_rsc_init.16 = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 4, i32 7, i32 5, i32 6, i32 0, i32 7, i32 0, i32 -22, i32 1], [60 x i8] zeroinitializer }, align 32
@switch.table.dao_rsc_init.17 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 4, i32 7, i32 5, i32 6, i32 0, i32 4, i32 0, i32 5], [32 x i8] zeroinitializer }, align 32
@switch.table.dao_rsc_init.18 = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 4, i32 7, i32 5, i32 6, i32 0, i32 7, i32 0, i32 -22, i32 1], [60 x i8] zeroinitializer }, align 32
@switch.table.dao_rsc_init.19 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 4, i32 7, i32 5, i32 6, i32 0, i32 4, i32 0, i32 5], [32 x i8] zeroinitializer }, align 32
@switch.table.dao_commit_write = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 4, i32 7, i32 5, i32 6, i32 0, i32 7, i32 0, i32 -22, i32 1], [60 x i8] zeroinitializer }, align 32
@switch.table.dao_commit_write.20 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 4, i32 7, i32 5, i32 6, i32 0, i32 4, i32 0, i32 5], [32 x i8] zeroinitializer }, align 32
@switch.table.dai_commit_write = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 4, i32 7, i32 5, i32 6, i32 0, i32 7, i32 0, i32 -22, i32 1], [60 x i8] zeroinitializer }, align 32
@switch.table.dai_commit_write.21 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 4, i32 7, i32 5, i32 6, i32 0, i32 4, i32 0, i32 5], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 702, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 703, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 537, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [8 x i8] c"dao_ops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 262, i32 33 }
@___asan_gen_.66 = private unnamed_addr constant [9 x i8] c"idx_20k1\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 32, i32 34 }
@___asan_gen_.69 = private unnamed_addr constant [9 x i8] c"idx_20k2\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 43, i32 34 }
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"daio_out_rsc_ops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 82, i32 29 }
@___asan_gen_.75 = private unnamed_addr constant [21 x i8] c"daio_in_rsc_ops_20k1\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 89, i32 29 }
@___asan_gen_.78 = private unnamed_addr constant [21 x i8] c"daio_in_rsc_ops_20k2\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 96, i32 29 }
@___asan_gen_.81 = private unnamed_addr constant [8 x i8] c"dai_ops\00", align 1
@___asan_gen_.82 = private constant [28 x i8] c"../sound/pci/ctxfi/ctdaio.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 317, i32 33 }
@___asan_gen_.84 = private unnamed_addr constant [26 x i8] c"switch.table.get_daio_rsc\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [28 x i8] c"switch.table.get_daio_rsc.8\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [31 x i8] c"switch.table.daio_mgr_enb_daio\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [33 x i8] c"switch.table.daio_mgr_enb_daio.9\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [34 x i8] c"switch.table.daio_mgr_enb_daio.10\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [34 x i8] c"switch.table.daio_mgr_enb_daio.11\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [31 x i8] c"switch.table.daio_mgr_dsb_daio\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [34 x i8] c"switch.table.daio_mgr_dsb_daio.12\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [34 x i8] c"switch.table.daio_mgr_dsb_daio.13\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [34 x i8] c"switch.table.daio_mgr_dsb_daio.14\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [26 x i8] c"switch.table.dao_rsc_init\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [29 x i8] c"switch.table.dao_rsc_init.15\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [29 x i8] c"switch.table.dao_rsc_init.16\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [29 x i8] c"switch.table.dao_rsc_init.17\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [29 x i8] c"switch.table.dao_rsc_init.18\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [29 x i8] c"switch.table.dao_rsc_init.19\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [30 x i8] c"switch.table.dao_commit_write\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [33 x i8] c"switch.table.dao_commit_write.20\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [30 x i8] c"switch.table.dai_commit_write\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [33 x i8] c"switch.table.dai_commit_write.21\00", align 1
@llvm.compiler.used = appending global [38 x ptr] [ptr @get_daio_rsc._entry, ptr @get_daio_rsc._entry_ptr, ptr @daio_mgr_create.__key, ptr @.str, ptr @daio_mgr_create.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @dao_ops, ptr @idx_20k1, ptr @idx_20k2, ptr @daio_out_rsc_ops, ptr @daio_in_rsc_ops_20k1, ptr @daio_in_rsc_ops_20k2, ptr @dai_ops, ptr @switch.table.get_daio_rsc, ptr @switch.table.get_daio_rsc.8, ptr @switch.table.daio_mgr_enb_daio, ptr @switch.table.daio_mgr_enb_daio.9, ptr @switch.table.daio_mgr_enb_daio.10, ptr @switch.table.daio_mgr_enb_daio.11, ptr @switch.table.daio_mgr_dsb_daio, ptr @switch.table.daio_mgr_dsb_daio.12, ptr @switch.table.daio_mgr_dsb_daio.13, ptr @switch.table.daio_mgr_dsb_daio.14, ptr @switch.table.dao_rsc_init, ptr @switch.table.dao_rsc_init.15, ptr @switch.table.dao_rsc_init.16, ptr @switch.table.dao_rsc_init.17, ptr @switch.table.dao_rsc_init.18, ptr @switch.table.dao_rsc_init.19, ptr @switch.table.dao_commit_write, ptr @switch.table.dao_commit_write.20, ptr @switch.table.dai_commit_write, ptr @switch.table.dai_commit_write.21], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @daio_mgr_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @daio_mgr_create.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_daio_rsc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dao_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idx_20k1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idx_20k2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @daio_out_rsc_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @daio_in_rsc_ops_20k1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @daio_in_rsc_ops_20k2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dai_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.get_daio_rsc to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.get_daio_rsc.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.daio_mgr_enb_daio to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.daio_mgr_enb_daio.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.daio_mgr_enb_daio.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.daio_mgr_enb_daio.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.daio_mgr_dsb_daio to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.daio_mgr_dsb_daio.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.daio_mgr_dsb_daio.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.daio_mgr_dsb_daio.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dao_rsc_init to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dao_rsc_init.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dao_rsc_init.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dao_rsc_init.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dao_rsc_init.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dao_rsc_init.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dao_commit_write to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dao_commit_write.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dai_commit_write to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dai_commit_write.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @daio_mgr_create(ptr noundef %hw, ptr nocapture noundef writeonly %rdaio_mgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rdaio_mgr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %rdaio_mgr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 160) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @rsc_mgr_init(ptr noundef nonnull %call7.i.i, i32 noundef 4, i32 noundef 9, ptr noundef %hw) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.body, label %if.end.error1_crit_edge

if.end.error1_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %error1

do.body:                                          ; preds = %if.end
  %mgr_lock = getelementptr inbounds %struct.daio_mgr, ptr %call7.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %mgr_lock, ptr noundef nonnull @.str, ptr noundef nonnull @daio_mgr_create.__key, i16 noundef signext 3) #8
  %imap_lock = getelementptr inbounds %struct.daio_mgr, ptr %call7.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %imap_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @daio_mgr_create.__key.1, i16 noundef signext 3) #8
  %imappers = getelementptr inbounds %struct.daio_mgr, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %imappers to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %imappers, ptr %imappers, align 4
  %prev.i = getelementptr inbounds %struct.daio_mgr, ptr %call7.i.i, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %imappers, ptr %prev.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i67 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 16) #11
  %tobool12.not = icmp eq ptr %call7.i.i67, null
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call26 = tail call i32 @rsc_mgr_uninit(ptr noundef nonnull %call7.i.i) #8
  br label %error1

if.end14:                                         ; preds = %do.body
  %list = getelementptr inbounds %struct.imapper, ptr %call7.i.i67, i32 0, i32 4
  %5 = ptrtoint ptr %call7.i.i67 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %call7.i.i67, align 8
  %6 = ptrtoint ptr %imappers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %imappers, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %imappers, ptr noundef %7) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end14.list_add.exit_crit_edge

if.end14.list_add.exit_crit_edge:                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev1.i.i, align 4
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %list, align 8
  %prev3.i.i = getelementptr inbounds %struct.imapper, ptr %call7.i.i67, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %imappers, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %imappers to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %list, ptr %imappers, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end14.list_add.exit_crit_edge
  %init_imap = getelementptr inbounds %struct.daio_mgr, ptr %call7.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %init_imap to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i67, ptr %init_imap, align 4
  %init_imap_added = getelementptr inbounds %struct.daio_mgr, ptr %call7.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %init_imap_added to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %init_imap_added, align 8
  %get_daio = getelementptr inbounds %struct.daio_mgr, ptr %call7.i.i, i32 0, i32 7
  %14 = ptrtoint ptr %get_daio to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @get_daio_rsc, ptr %get_daio, align 4
  %put_daio = getelementptr inbounds %struct.daio_mgr, ptr %call7.i.i, i32 0, i32 8
  %15 = ptrtoint ptr %put_daio to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @put_daio_rsc, ptr %put_daio, align 8
  %daio_enable = getelementptr inbounds %struct.daio_mgr, ptr %call7.i.i, i32 0, i32 9
  %16 = ptrtoint ptr %daio_enable to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @daio_mgr_enb_daio, ptr %daio_enable, align 4
  %daio_disable = getelementptr inbounds %struct.daio_mgr, ptr %call7.i.i, i32 0, i32 10
  %17 = ptrtoint ptr %daio_disable to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @daio_mgr_dsb_daio, ptr %daio_disable, align 8
  %imap_add = getelementptr inbounds %struct.daio_mgr, ptr %call7.i.i, i32 0, i32 11
  %18 = ptrtoint ptr %imap_add to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @daio_imap_add, ptr %imap_add, align 4
  %imap_delete = getelementptr inbounds %struct.daio_mgr, ptr %call7.i.i, i32 0, i32 12
  %19 = ptrtoint ptr %imap_delete to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @daio_imap_delete, ptr %imap_delete, align 8
  %commit_write = getelementptr inbounds %struct.daio_mgr, ptr %call7.i.i, i32 0, i32 13
  %20 = ptrtoint ptr %commit_write to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @daio_mgr_commit_write, ptr %commit_write, align 4
  %card = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 97
  %21 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %card, align 4
  %card16 = getelementptr inbounds %struct.daio_mgr, ptr %call7.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %card16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %card16, align 8
  %daio_mgr_dsb_dao = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 85
  %ctrl_blk = getelementptr inbounds %struct.rsc_mgr, ptr %call7.i.i, i32 0, i32 4
  %daio_mgr_dsb_dai = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 83
  %24 = ptrtoint ptr %daio_mgr_dsb_dao to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %daio_mgr_dsb_dao, align 4
  %26 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctrl_blk, align 8
  %call18 = tail call i32 %25(ptr noundef %27, i32 noundef 0) #8
  %28 = ptrtoint ptr %daio_mgr_dsb_dai to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %daio_mgr_dsb_dai, align 4
  %30 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctrl_blk, align 8
  %call21 = tail call i32 %29(ptr noundef %31, i32 noundef 0) #8
  %32 = ptrtoint ptr %daio_mgr_dsb_dao to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %daio_mgr_dsb_dao, align 4
  %34 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ctrl_blk, align 8
  %call18.1 = tail call i32 %33(ptr noundef %35, i32 noundef 1) #8
  %36 = ptrtoint ptr %daio_mgr_dsb_dai to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %daio_mgr_dsb_dai, align 4
  %38 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ctrl_blk, align 8
  %call21.1 = tail call i32 %37(ptr noundef %39, i32 noundef 1) #8
  %40 = ptrtoint ptr %daio_mgr_dsb_dao to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %daio_mgr_dsb_dao, align 4
  %42 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ctrl_blk, align 8
  %call18.2 = tail call i32 %41(ptr noundef %43, i32 noundef 2) #8
  %44 = ptrtoint ptr %daio_mgr_dsb_dai to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %daio_mgr_dsb_dai, align 4
  %46 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ctrl_blk, align 8
  %call21.2 = tail call i32 %45(ptr noundef %47, i32 noundef 2) #8
  %48 = ptrtoint ptr %daio_mgr_dsb_dao to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %daio_mgr_dsb_dao, align 4
  %50 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ctrl_blk, align 8
  %call18.3 = tail call i32 %49(ptr noundef %51, i32 noundef 3) #8
  %52 = ptrtoint ptr %daio_mgr_dsb_dai to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %daio_mgr_dsb_dai, align 4
  %54 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ctrl_blk, align 8
  %call21.3 = tail call i32 %53(ptr noundef %55, i32 noundef 3) #8
  %56 = ptrtoint ptr %daio_mgr_dsb_dao to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %daio_mgr_dsb_dao, align 4
  %58 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ctrl_blk, align 8
  %call18.4 = tail call i32 %57(ptr noundef %59, i32 noundef 4) #8
  %60 = ptrtoint ptr %daio_mgr_dsb_dai to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %daio_mgr_dsb_dai, align 4
  %62 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ctrl_blk, align 8
  %call21.4 = tail call i32 %61(ptr noundef %63, i32 noundef 4) #8
  %64 = ptrtoint ptr %daio_mgr_dsb_dao to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %daio_mgr_dsb_dao, align 4
  %66 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ctrl_blk, align 8
  %call18.5 = tail call i32 %65(ptr noundef %67, i32 noundef 5) #8
  %68 = ptrtoint ptr %daio_mgr_dsb_dai to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %daio_mgr_dsb_dai, align 4
  %70 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ctrl_blk, align 8
  %call21.5 = tail call i32 %69(ptr noundef %71, i32 noundef 5) #8
  %72 = ptrtoint ptr %daio_mgr_dsb_dao to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %daio_mgr_dsb_dao, align 4
  %74 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ctrl_blk, align 8
  %call18.6 = tail call i32 %73(ptr noundef %75, i32 noundef 6) #8
  %76 = ptrtoint ptr %daio_mgr_dsb_dai to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %daio_mgr_dsb_dai, align 4
  %78 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ctrl_blk, align 8
  %call21.6 = tail call i32 %77(ptr noundef %79, i32 noundef 6) #8
  %80 = ptrtoint ptr %daio_mgr_dsb_dao to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %daio_mgr_dsb_dao, align 4
  %82 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ctrl_blk, align 8
  %call18.7 = tail call i32 %81(ptr noundef %83, i32 noundef 7) #8
  %84 = ptrtoint ptr %daio_mgr_dsb_dai to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %daio_mgr_dsb_dai, align 4
  %86 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ctrl_blk, align 8
  %call21.7 = tail call i32 %85(ptr noundef %87, i32 noundef 7) #8
  %daio_mgr_commit_write = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 90
  %88 = ptrtoint ptr %daio_mgr_commit_write to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %daio_mgr_commit_write, align 4
  %90 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ctrl_blk, align 8
  %call24 = tail call i32 %89(ptr noundef %hw, ptr noundef %91) #8
  %92 = ptrtoint ptr %rdaio_mgr to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call7.i.i, ptr %rdaio_mgr, align 4
  br label %cleanup

error1:                                           ; preds = %if.then13, %if.end.error1_crit_edge
  %err.0 = phi i32 [ %call2, %if.end.error1_crit_edge ], [ -12, %if.then13 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %error1, %list_add.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %error1 ], [ 0, %list_add.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsc_mgr_init(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_daio_rsc(ptr noundef %mgr, ptr nocapture noundef readonly %desc, ptr nocapture noundef %rdaio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rdaio to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %rdaio, align 4
  %mgr_lock = getelementptr inbounds %struct.daio_mgr, ptr %mgr, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mgr_lock) #8
  %1 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load = load i16, ptr %desc, align 4
  %bf.lshr = lshr i16 %bf.load, 12
  %bf.cast = zext i16 %bf.lshr to i32
  %rscs.i = getelementptr inbounds %struct.rsc_mgr, ptr %mgr, i32 0, i32 3
  %2 = ptrtoint ptr %rscs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rscs.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 2
  %conv.i = zext i16 %5 to i32
  %shl.i = shl nuw nsw i32 1, %bf.cast
  %and.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end, label %do.end10

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mgr_lock, i32 noundef %call2) #8
  %card = getelementptr inbounds %struct.daio_mgr, ptr %mgr, i32 0, i32 1
  %6 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.3) #12
  br label %cleanup60

if.end:                                           ; preds = %entry
  %10 = trunc i32 %shl.i to i16
  %conv5.i = or i16 %5, %10
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv5.i, ptr %3, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mgr_lock, i32 noundef %call2) #8
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load11 = load i16, ptr %desc, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 20480, i16 %bf.load11)
  %cmp14 = icmp ult i16 %bf.load11, 20480
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 56) #11
  %tobool18.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool18.not, label %if.then16.do.body41_crit_edge, label %if.end20

if.then16.do.body41_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body41

if.end20:                                         ; preds = %if.then16
  %call21 = tail call fastcc i32 @dao_rsc_init(ptr noundef nonnull %call7.i.i, ptr noundef %desc, ptr noundef %mgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end20.if.end37_crit_edge, label %if.end20.do.body41.sink.split_crit_edge

if.end20.do.body41.sink.split_crit_edge:          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body41.sink.split

if.end20.if.end37_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.else:                                          ; preds = %if.end
  %call7.i.i96 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 48) #11
  %tobool26.not = icmp eq ptr %call7.i.i96, null
  br i1 %tobool26.not, label %if.else.do.body41_crit_edge, label %if.end28

if.else.do.body41_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body41

if.end28:                                         ; preds = %if.else
  %hw2.i = getelementptr inbounds %struct.rsc_mgr, ptr %mgr, i32 0, i32 5
  %14 = ptrtoint ptr %hw2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw2.i, align 4
  %call.i = tail call fastcc i32 @daio_rsc_init(ptr noundef nonnull %call7.i.i96, ptr noundef %desc, ptr noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i97 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i97, label %if.end.i98, label %if.end28.do.body41.sink.split_crit_edge

if.end28.do.body41.sink.split_crit_edge:          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body41.sink.split

if.end.i98:                                       ; preds = %if.end28
  %ops.i = getelementptr inbounds %struct.dai, ptr %call7.i.i96, i32 0, i32 1
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @dai_ops, ptr %ops.i, align 4
  %17 = ptrtoint ptr %hw2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw2.i, align 4
  %hw7.i = getelementptr inbounds %struct.dai, ptr %call7.i.i96, i32 0, i32 2
  %19 = ptrtoint ptr %hw7.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %hw7.i, align 8
  %dai_get_ctrl_blk.i = getelementptr inbounds %struct.hw, ptr %15, i32 0, i32 66
  %20 = ptrtoint ptr %dai_get_ctrl_blk.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dai_get_ctrl_blk.i, align 4
  %ctrl_blk.i = getelementptr inbounds %struct.dai, ptr %call7.i.i96, i32 0, i32 3
  %call8.i = tail call i32 %21(ptr noundef %ctrl_blk.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %error1.i

if.end11.i:                                       ; preds = %if.end.i98
  %22 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load.i = load i16, ptr %desc, align 4
  %bf.lshr.i = lshr i16 %bf.load.i, 8
  %bf.clear.i = and i16 %bf.lshr.i, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %bf.clear.i)
  %cmp55.i = icmp ugt i16 %bf.clear.i, 1
  br i1 %cmp55.i, label %for.body.preheader.i, label %if.end11.i.for.end.i_crit_edge

if.end11.i.for.end.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.preheader.i:                             ; preds = %if.end11.i
  %bf.cast.i = zext i16 %bf.clear.i to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %msr.057.i = phi i32 [ %shr.i, %for.body.i.for.body.i_crit_edge ], [ %bf.cast.i, %for.body.preheader.i ]
  %rsr.056.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %inc.i = add nuw nsw i32 %rsr.056.i, 1
  %shr.i = lshr i32 %msr.057.i, 1
  %cmp.i = icmp ugt i32 %msr.057.i, 3
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end11.i.for.end.i_crit_edge
  %rsr.0.lcssa.i = phi i32 [ 0, %if.end11.i.for.end.i_crit_edge ], [ %inc.i, %for.body.i.for.end.i_crit_edge ]
  %dai_srt_set_rsr.i = getelementptr inbounds %struct.hw, ptr %15, i32 0, i32 70
  %23 = ptrtoint ptr %dai_srt_set_rsr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dai_srt_set_rsr.i, align 4
  %25 = ptrtoint ptr %ctrl_blk.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctrl_blk.i, align 4
  %call13.i = tail call i32 %24(ptr noundef %26, i32 noundef %rsr.0.lcssa.i) #8
  %dai_srt_set_drat.i = getelementptr inbounds %struct.hw, ptr %15, i32 0, i32 71
  %27 = ptrtoint ptr %dai_srt_set_drat.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dai_srt_set_drat.i, align 4
  %29 = ptrtoint ptr %ctrl_blk.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctrl_blk.i, align 4
  %call15.i = tail call i32 %28(ptr noundef %30, i32 noundef 0) #8
  %dai_srt_set_ec.i = getelementptr inbounds %struct.hw, ptr %15, i32 0, i32 72
  %31 = ptrtoint ptr %dai_srt_set_ec.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dai_srt_set_ec.i, align 4
  %33 = ptrtoint ptr %ctrl_blk.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctrl_blk.i, align 4
  %call17.i = tail call i32 %32(ptr noundef %34, i32 noundef 0) #8
  %dai_srt_set_et.i = getelementptr inbounds %struct.hw, ptr %15, i32 0, i32 73
  %35 = ptrtoint ptr %dai_srt_set_et.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dai_srt_set_et.i, align 4
  %37 = ptrtoint ptr %ctrl_blk.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ctrl_blk.i, align 4
  %call19.i = tail call i32 %36(ptr noundef %38, i32 noundef 0) #8
  %dai_commit_write.i = getelementptr inbounds %struct.hw, ptr %15, i32 0, i32 74
  %39 = ptrtoint ptr %dai_commit_write.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dai_commit_write.i, align 4
  %type.i = getelementptr inbounds %struct.daio, ptr %call7.i.i96, i32 0, i32 2
  %41 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %type.i, align 8
  %43 = ptrtoint ptr %hw7.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw7.i, align 8
  %chip_type.i.i = getelementptr inbounds %struct.hw, ptr %44, i32 0, i32 101
  %45 = ptrtoint ptr %chip_type.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %chip_type.i.i, align 4
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values)
  switch i32 %46, label %for.end.i.cleanup34_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb9.i.i
  ]

for.end.i.cleanup34_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup34

sw.bb.i.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %42)
  %48 = icmp ult i32 %42, 9
  br i1 %48, label %switch.lookup, label %sw.bb.i.i.cleanup34_crit_edge

sw.bb.i.i.cleanup34_crit_edge:                    ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup34

sw.bb9.i.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %42)
  %49 = icmp ult i32 %42, 8
  br i1 %49, label %switch.lookup113, label %sw.bb9.i.i.cleanup34_crit_edge

sw.bb9.i.i.cleanup34_crit_edge:                   ; preds = %sw.bb9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup34

error1.i:                                         ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @rsc_uninit(ptr noundef nonnull %call7.i.i96) #8
  %rscr.i.i = getelementptr inbounds %struct.daio, ptr %call7.i.i96, i32 0, i32 1
  %call1.i.i = tail call i32 @rsc_uninit(ptr noundef %rscr.i.i) #8
  br label %do.body41.sink.split

switch.lookup:                                    ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.get_daio_rsc, i32 0, i32 %42
  br label %cleanup34.sink.split

switch.lookup113:                                 ; preds = %sw.bb9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep114 = getelementptr inbounds [8 x i32], ptr @switch.table.get_daio_rsc.8, i32 0, i32 %42
  br label %cleanup34.sink.split

cleanup34.sink.split:                             ; preds = %switch.lookup113, %switch.lookup
  %switch.gep114.sink = phi ptr [ %switch.gep114, %switch.lookup113 ], [ %switch.gep, %switch.lookup ]
  %50 = ptrtoint ptr %switch.gep114.sink to i32
  call void @__asan_load4_noabort(i32 %50)
  %switch.load115 = load i32, ptr %switch.gep114.sink, align 4
  br label %cleanup34

cleanup34:                                        ; preds = %cleanup34.sink.split, %sw.bb9.i.i.cleanup34_crit_edge, %sw.bb.i.i.cleanup34_crit_edge, %for.end.i.cleanup34_crit_edge
  %retval.0.i.i = phi i32 [ -22, %for.end.i.cleanup34_crit_edge ], [ -22, %sw.bb.i.i.cleanup34_crit_edge ], [ -22, %sw.bb9.i.i.cleanup34_crit_edge ], [ %switch.load115, %cleanup34.sink.split ]
  %51 = ptrtoint ptr %ctrl_blk.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ctrl_blk.i, align 4
  %call24.i = tail call i32 %40(ptr noundef %15, i32 noundef %retval.0.i.i, ptr noundef %52) #8
  br label %if.end37

if.end37:                                         ; preds = %cleanup34, %if.end20.if.end37_crit_edge
  %storemerge = phi ptr [ %call7.i.i96, %cleanup34 ], [ %call7.i.i, %if.end20.if.end37_crit_edge ]
  %53 = ptrtoint ptr %rdaio to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %storemerge, ptr %rdaio, align 4
  %daio_enable = getelementptr inbounds %struct.daio_mgr, ptr %mgr, i32 0, i32 9
  %54 = ptrtoint ptr %daio_enable to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %daio_enable, align 4
  %call38 = tail call i32 %55(ptr noundef %mgr, ptr noundef nonnull %storemerge) #8
  %commit_write = getelementptr inbounds %struct.daio_mgr, ptr %mgr, i32 0, i32 13
  %56 = ptrtoint ptr %commit_write to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %commit_write, align 4
  %call39 = tail call i32 %57(ptr noundef %mgr) #8
  br label %cleanup60

do.body41.sink.split:                             ; preds = %error1.i, %if.end28.do.body41.sink.split_crit_edge, %if.end20.do.body41.sink.split_crit_edge
  %call7.i.i96.sink = phi ptr [ %call7.i.i, %if.end20.do.body41.sink.split_crit_edge ], [ %call7.i.i96, %error1.i ], [ %call7.i.i96, %if.end28.do.body41.sink.split_crit_edge ]
  %err.2.ph = phi i32 [ %call21, %if.end20.do.body41.sink.split_crit_edge ], [ %call8.i, %error1.i ], [ %call.i, %if.end28.do.body41.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i96.sink) #8
  br label %do.body41

do.body41:                                        ; preds = %do.body41.sink.split, %if.else.do.body41_crit_edge, %if.then16.do.body41_crit_edge
  %err.2 = phi i32 [ -12, %if.then16.do.body41_crit_edge ], [ -12, %if.else.do.body41_crit_edge ], [ %err.2.ph, %do.body41.sink.split ]
  %call49 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mgr_lock) #8
  %58 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %58)
  %bf.load55 = load i16, ptr %desc, align 4
  %bf.lshr56 = lshr i16 %bf.load55, 12
  %shl.i100 = shl nuw i16 1, %bf.lshr56
  %59 = ptrtoint ptr %rscs.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rscs.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %60, align 2
  %63 = xor i16 %shl.i100, -1
  %conv1.i = and i16 %62, %63
  store i16 %conv1.i, ptr %60, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mgr_lock, i32 noundef %call49) #8
  br label %cleanup60

cleanup60:                                        ; preds = %do.body41, %if.end37, %do.end10
  %retval.0 = phi i32 [ -2, %do.end10 ], [ %err.2, %do.body41 ], [ 0, %if.end37 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @put_daio_rsc(ptr noundef %mgr, ptr noundef %daio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %daio_disable = getelementptr inbounds %struct.daio_mgr, ptr %mgr, i32 0, i32 10
  %0 = ptrtoint ptr %daio_disable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %daio_disable, align 4
  %call = tail call i32 %1(ptr noundef %mgr, ptr noundef %daio) #8
  %commit_write = getelementptr inbounds %struct.daio_mgr, ptr %mgr, i32 0, i32 13
  %2 = ptrtoint ptr %commit_write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %commit_write, align 4
  %call1 = tail call i32 %3(ptr noundef %mgr) #8
  %mgr_lock = getelementptr inbounds %struct.daio_mgr, ptr %mgr, i32 0, i32 2
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mgr_lock) #8
  %type = getelementptr inbounds %struct.daio, ptr %daio, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %shl.i = shl nuw i32 1, %5
  %rscs.i = getelementptr inbounds %struct.rsc_mgr, ptr %mgr, i32 0, i32 3
  %6 = ptrtoint ptr %rscs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rscs.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %7, align 2
  %10 = trunc i32 %shl.i to i16
  %11 = xor i16 %10, -1
  %conv1.i = and i16 %9, %11
  store i16 %conv1.i, ptr %7, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mgr_lock, i32 noundef %call4) #8
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %13)
  %cmp11 = icmp ult i32 %13, 5
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @dao_rsc_uninit(ptr noundef %daio)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %hw.i = getelementptr inbounds %struct.dai, ptr %daio, i32 0, i32 2
  %14 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw.i, align 4
  %dai_put_ctrl_blk.i = getelementptr inbounds %struct.hw, ptr %15, i32 0, i32 67
  %16 = ptrtoint ptr %dai_put_ctrl_blk.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dai_put_ctrl_blk.i, align 4
  %ctrl_blk.i = getelementptr inbounds %struct.dai, ptr %daio, i32 0, i32 3
  %18 = ptrtoint ptr %ctrl_blk.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctrl_blk.i, align 4
  %call.i = tail call i32 %17(ptr noundef %19) #8
  %20 = ptrtoint ptr %ctrl_blk.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %ctrl_blk.i, align 4
  %21 = ptrtoint ptr %hw.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %hw.i, align 4
  %call.i.i = tail call i32 @rsc_uninit(ptr noundef %daio) #8
  %rscr.i.i = getelementptr inbounds %struct.daio, ptr %daio, i32 0, i32 1
  %call1.i.i = tail call i32 @rsc_uninit(ptr noundef %rscr.i.i) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @kfree(ptr noundef %daio) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @daio_mgr_enb_daio(ptr nocapture noundef readonly %mgr, ptr nocapture noundef readonly %daio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw2 = getelementptr inbounds %struct.rsc_mgr, ptr %mgr, i32 0, i32 5
  %0 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw2, align 4
  %type = getelementptr inbounds %struct.daio, ptr %daio, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp = icmp ult i32 %3, 5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %daio_mgr_enb_dao = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 84
  %4 = ptrtoint ptr %daio_mgr_enb_dao to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %daio_mgr_enb_dao, align 4
  %ctrl_blk = getelementptr inbounds %struct.rsc_mgr, ptr %mgr, i32 0, i32 4
  %6 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctrl_blk, align 4
  %chip_type.i = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 101
  %8 = ptrtoint ptr %chip_type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chip_type.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %9, label %if.then.daio_device_index.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb9.i
  ]

if.then.daio_device_index.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %daio_device_index.exit

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %11 = icmp ult i32 %3, 5
  br i1 %11, label %sw.bb.i.daio_device_index.exit.sink.split_crit_edge, label %sw.bb.i.daio_device_index.exit_crit_edge

sw.bb.i.daio_device_index.exit_crit_edge:         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %daio_device_index.exit

sw.bb.i.daio_device_index.exit.sink.split_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %daio_device_index.exit.sink.split

sw.bb9.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %12 = icmp ult i32 %3, 5
  br i1 %12, label %sw.bb9.i.daio_device_index.exit.sink.split_crit_edge, label %sw.bb9.i.daio_device_index.exit_crit_edge

sw.bb9.i.daio_device_index.exit_crit_edge:        ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %daio_device_index.exit

sw.bb9.i.daio_device_index.exit.sink.split_crit_edge: ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %daio_device_index.exit.sink.split

daio_device_index.exit.sink.split:                ; preds = %sw.bb9.i.daio_device_index.exit.sink.split_crit_edge, %sw.bb.i.daio_device_index.exit.sink.split_crit_edge
  %switch.table.daio_mgr_enb_daio.9.sink = phi ptr [ @switch.table.daio_mgr_enb_daio, %sw.bb.i.daio_device_index.exit.sink.split_crit_edge ], [ @switch.table.daio_mgr_enb_daio.9, %sw.bb9.i.daio_device_index.exit.sink.split_crit_edge ]
  %switch.gep38 = getelementptr inbounds [5 x i32], ptr %switch.table.daio_mgr_enb_daio.9.sink, i32 0, i32 %3
  %13 = ptrtoint ptr %switch.gep38 to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load39 = load i32, ptr %switch.gep38, align 4
  br label %daio_device_index.exit

daio_device_index.exit:                           ; preds = %daio_device_index.exit.sink.split, %sw.bb9.i.daio_device_index.exit_crit_edge, %sw.bb.i.daio_device_index.exit_crit_edge, %if.then.daio_device_index.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %if.then.daio_device_index.exit_crit_edge ], [ -22, %sw.bb.i.daio_device_index.exit_crit_edge ], [ -22, %sw.bb9.i.daio_device_index.exit_crit_edge ], [ %switch.load39, %daio_device_index.exit.sink.split ]
  %call5 = tail call i32 %5(ptr noundef %7, i32 noundef %retval.0.i) #8
  br label %if.end

if.else:                                          ; preds = %entry
  %daio_mgr_enb_dai = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 82
  %14 = ptrtoint ptr %daio_mgr_enb_dai to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %daio_mgr_enb_dai, align 4
  %ctrl_blk7 = getelementptr inbounds %struct.rsc_mgr, ptr %mgr, i32 0, i32 4
  %16 = ptrtoint ptr %ctrl_blk7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctrl_blk7, align 4
  %chip_type.i18 = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 101
  %18 = ptrtoint ptr %chip_type.i18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %chip_type.i18, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %19, label %if.else.daio_device_index.exit36_crit_edge [
    i32 0, label %sw.bb.i19
    i32 1, label %sw.bb9.i27
  ]

if.else.daio_device_index.exit36_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %daio_device_index.exit36

sw.bb.i19:                                        ; preds = %if.else
  %switch.tableidx = add i32 %3, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %21 = icmp ult i32 %switch.tableidx, 4
  br i1 %21, label %switch.lookup40, label %sw.bb.i19.daio_device_index.exit36_crit_edge

sw.bb.i19.daio_device_index.exit36_crit_edge:     ; preds = %sw.bb.i19
  call void @__sanitizer_cov_trace_pc() #10
  br label %daio_device_index.exit36

sw.bb9.i27:                                       ; preds = %if.else
  %switch.tableidx42 = add i32 %3, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx42)
  %22 = icmp ult i32 %switch.tableidx42, 3
  br i1 %22, label %switch.lookup41, label %sw.bb9.i27.daio_device_index.exit36_crit_edge

sw.bb9.i27.daio_device_index.exit36_crit_edge:    ; preds = %sw.bb9.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %daio_device_index.exit36

switch.lookup40:                                  ; preds = %sw.bb.i19
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.daio_mgr_enb_daio.10, i32 0, i32 %switch.tableidx
  br label %daio_device_index.exit36.sink.split

switch.lookup41:                                  ; preds = %sw.bb9.i27
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep43 = getelementptr inbounds [3 x i32], ptr @switch.table.daio_mgr_enb_daio.11, i32 0, i32 %switch.tableidx42
  br label %daio_device_index.exit36.sink.split

daio_device_index.exit36.sink.split:              ; preds = %switch.lookup41, %switch.lookup40
  %switch.gep43.sink = phi ptr [ %switch.gep43, %switch.lookup41 ], [ %switch.gep, %switch.lookup40 ]
  %23 = ptrtoint ptr %switch.gep43.sink to i32
  call void @__asan_load4_noabort(i32 %23)
  %switch.load44 = load i32, ptr %switch.gep43.sink, align 4
  br label %daio_device_index.exit36

daio_device_index.exit36:                         ; preds = %daio_device_index.exit36.sink.split, %sw.bb9.i27.daio_device_index.exit36_crit_edge, %sw.bb.i19.daio_device_index.exit36_crit_edge, %if.else.daio_device_index.exit36_crit_edge
  %retval.0.i35 = phi i32 [ -22, %if.else.daio_device_index.exit36_crit_edge ], [ -22, %sw.bb.i19.daio_device_index.exit36_crit_edge ], [ -22, %sw.bb9.i27.daio_device_index.exit36_crit_edge ], [ %switch.load44, %daio_device_index.exit36.sink.split ]
  %call10 = tail call i32 %15(ptr noundef %17, i32 noundef %retval.0.i35) #8
  br label %if.end

if.end:                                           ; preds = %daio_device_index.exit36, %daio_device_index.exit
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @daio_mgr_dsb_daio(ptr nocapture noundef readonly %mgr, ptr nocapture noundef readonly %daio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw2 = getelementptr inbounds %struct.rsc_mgr, ptr %mgr, i32 0, i32 5
  %0 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw2, align 4
  %type = getelementptr inbounds %struct.daio, ptr %daio, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp = icmp ult i32 %3, 5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %daio_mgr_dsb_dao = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 85
  %4 = ptrtoint ptr %daio_mgr_dsb_dao to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %daio_mgr_dsb_dao, align 4
  %ctrl_blk = getelementptr inbounds %struct.rsc_mgr, ptr %mgr, i32 0, i32 4
  %6 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctrl_blk, align 4
  %chip_type.i = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 101
  %8 = ptrtoint ptr %chip_type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chip_type.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %9, label %if.then.daio_device_index.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb9.i
  ]

if.then.daio_device_index.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %daio_device_index.exit

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %11 = icmp ult i32 %3, 5
  br i1 %11, label %sw.bb.i.daio_device_index.exit.sink.split_crit_edge, label %sw.bb.i.daio_device_index.exit_crit_edge

sw.bb.i.daio_device_index.exit_crit_edge:         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %daio_device_index.exit

sw.bb.i.daio_device_index.exit.sink.split_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %daio_device_index.exit.sink.split

sw.bb9.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %12 = icmp ult i32 %3, 5
  br i1 %12, label %sw.bb9.i.daio_device_index.exit.sink.split_crit_edge, label %sw.bb9.i.daio_device_index.exit_crit_edge

sw.bb9.i.daio_device_index.exit_crit_edge:        ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %daio_device_index.exit

sw.bb9.i.daio_device_index.exit.sink.split_crit_edge: ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %daio_device_index.exit.sink.split

daio_device_index.exit.sink.split:                ; preds = %sw.bb9.i.daio_device_index.exit.sink.split_crit_edge, %sw.bb.i.daio_device_index.exit.sink.split_crit_edge
  %switch.table.daio_mgr_dsb_daio.12.sink = phi ptr [ @switch.table.daio_mgr_dsb_daio, %sw.bb.i.daio_device_index.exit.sink.split_crit_edge ], [ @switch.table.daio_mgr_dsb_daio.12, %sw.bb9.i.daio_device_index.exit.sink.split_crit_edge ]
  %switch.gep38 = getelementptr inbounds [5 x i32], ptr %switch.table.daio_mgr_dsb_daio.12.sink, i32 0, i32 %3
  %13 = ptrtoint ptr %switch.gep38 to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load39 = load i32, ptr %switch.gep38, align 4
  br label %daio_device_index.exit

daio_device_index.exit:                           ; preds = %daio_device_index.exit.sink.split, %sw.bb9.i.daio_device_index.exit_crit_edge, %sw.bb.i.daio_device_index.exit_crit_edge, %if.then.daio_device_index.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %if.then.daio_device_index.exit_crit_edge ], [ -22, %sw.bb.i.daio_device_index.exit_crit_edge ], [ -22, %sw.bb9.i.daio_device_index.exit_crit_edge ], [ %switch.load39, %daio_device_index.exit.sink.split ]
  %call5 = tail call i32 %5(ptr noundef %7, i32 noundef %retval.0.i) #8
  br label %if.end

if.else:                                          ; preds = %entry
  %daio_mgr_dsb_dai = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 83
  %14 = ptrtoint ptr %daio_mgr_dsb_dai to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %daio_mgr_dsb_dai, align 4
  %ctrl_blk7 = getelementptr inbounds %struct.rsc_mgr, ptr %mgr, i32 0, i32 4
  %16 = ptrtoint ptr %ctrl_blk7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctrl_blk7, align 4
  %chip_type.i18 = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 101
  %18 = ptrtoint ptr %chip_type.i18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %chip_type.i18, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %19, label %if.else.daio_device_index.exit36_crit_edge [
    i32 0, label %sw.bb.i19
    i32 1, label %sw.bb9.i27
  ]

if.else.daio_device_index.exit36_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %daio_device_index.exit36

sw.bb.i19:                                        ; preds = %if.else
  %switch.tableidx = add i32 %3, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %21 = icmp ult i32 %switch.tableidx, 4
  br i1 %21, label %switch.lookup40, label %sw.bb.i19.daio_device_index.exit36_crit_edge

sw.bb.i19.daio_device_index.exit36_crit_edge:     ; preds = %sw.bb.i19
  call void @__sanitizer_cov_trace_pc() #10
  br label %daio_device_index.exit36

sw.bb9.i27:                                       ; preds = %if.else
  %switch.tableidx42 = add i32 %3, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx42)
  %22 = icmp ult i32 %switch.tableidx42, 3
  br i1 %22, label %switch.lookup41, label %sw.bb9.i27.daio_device_index.exit36_crit_edge

sw.bb9.i27.daio_device_index.exit36_crit_edge:    ; preds = %sw.bb9.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %daio_device_index.exit36

switch.lookup40:                                  ; preds = %sw.bb.i19
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.daio_mgr_dsb_daio.13, i32 0, i32 %switch.tableidx
  br label %daio_device_index.exit36.sink.split

switch.lookup41:                                  ; preds = %sw.bb9.i27
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep43 = getelementptr inbounds [3 x i32], ptr @switch.table.daio_mgr_dsb_daio.14, i32 0, i32 %switch.tableidx42
  br label %daio_device_index.exit36.sink.split

daio_device_index.exit36.sink.split:              ; preds = %switch.lookup41, %switch.lookup40
  %switch.gep43.sink = phi ptr [ %switch.gep43, %switch.lookup41 ], [ %switch.gep, %switch.lookup40 ]
  %23 = ptrtoint ptr %switch.gep43.sink to i32
  call void @__asan_load4_noabort(i32 %23)
  %switch.load44 = load i32, ptr %switch.gep43.sink, align 4
  br label %daio_device_index.exit36

daio_device_index.exit36:                         ; preds = %daio_device_index.exit36.sink.split, %sw.bb9.i27.daio_device_index.exit36_crit_edge, %sw.bb.i19.daio_device_index.exit36_crit_edge, %if.else.daio_device_index.exit36_crit_edge
  %retval.0.i35 = phi i32 [ -22, %if.else.daio_device_index.exit36_crit_edge ], [ -22, %sw.bb.i19.daio_device_index.exit36_crit_edge ], [ -22, %sw.bb9.i27.daio_device_index.exit36_crit_edge ], [ %switch.load44, %daio_device_index.exit36.sink.split ]
  %call10 = tail call i32 %15(ptr noundef %17, i32 noundef %retval.0.i35) #8
  br label %if.end

if.end:                                           ; preds = %daio_device_index.exit36, %daio_device_index.exit
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @daio_imap_add(ptr noundef %mgr, ptr noundef %entry1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %imap_lock = getelementptr inbounds %struct.daio_mgr, ptr %mgr, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %imap_lock) #8
  %addr = getelementptr inbounds %struct.imapper, ptr %entry1, i32 0, i32 2
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %init_imap_added = getelementptr inbounds %struct.daio_mgr, ptr %mgr, i32 0, i32 6
  %2 = ptrtoint ptr %init_imap_added to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %init_imap_added, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool6.not = icmp eq i32 %3, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %imappers = getelementptr inbounds %struct.daio_mgr, ptr %mgr, i32 0, i32 4
  %init_imap = getelementptr inbounds %struct.daio_mgr, ptr %mgr, i32 0, i32 5
  %4 = ptrtoint ptr %init_imap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_imap, align 4
  %call7 = tail call i32 @input_mapper_delete(ptr noundef %imappers, ptr noundef %5, ptr noundef nonnull @daio_map_op, ptr noundef %mgr) #8
  %6 = ptrtoint ptr %init_imap_added to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %init_imap_added, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %imappers9 = getelementptr inbounds %struct.daio_mgr, ptr %mgr, i32 0, i32 4
  %call10 = tail call i32 @input_mapper_add(ptr noundef %imappers9, ptr noundef %entry1, ptr noundef nonnull @daio_map_op, ptr noundef %mgr) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %imap_lock, i32 noundef %call3) #8
  ret i32 %call10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @daio_imap_delete(ptr noundef %mgr, ptr noundef %entry1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %imap_lock = getelementptr inbounds %struct.daio_mgr, ptr %mgr, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %imap_lock) #8
  %imappers = getelementptr inbounds %struct.daio_mgr, ptr %mgr, i32 0, i32 4
  %call6 = tail call i32 @input_mapper_delete(ptr noundef %imappers, ptr noundef %entry1, ptr noundef nonnull @daio_map_op, ptr noundef %mgr) #8
  %0 = ptrtoint ptr %imappers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %imappers, align 4
  %cmp.i.not = icmp eq ptr %1, %imappers
  br i1 %cmp.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %init_imap = getelementptr inbounds %struct.daio_mgr, ptr %mgr, i32 0, i32 5
  %2 = ptrtoint ptr %init_imap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_imap, align 4
  %call10 = tail call i32 @input_mapper_add(ptr noundef %imappers, ptr noundef %3, ptr noundef nonnull @daio_map_op, ptr noundef %mgr) #8
  %init_imap_added = getelementptr inbounds %struct.daio_mgr, ptr %mgr, i32 0, i32 6
  %4 = ptrtoint ptr %init_imap_added to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %init_imap_added, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %imap_lock, i32 noundef %call3) #8
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @daio_mgr_commit_write(ptr nocapture noundef readonly %mgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw2 = getelementptr inbounds %struct.rsc_mgr, ptr %mgr, i32 0, i32 5
  %0 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw2, align 4
  %daio_mgr_commit_write = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 90
  %2 = ptrtoint ptr %daio_mgr_commit_write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %daio_mgr_commit_write, align 4
  %ctrl_blk = getelementptr inbounds %struct.rsc_mgr, ptr %mgr, i32 0, i32 4
  %4 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_blk, align 4
  %call = tail call i32 %3(ptr noundef %1, ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsc_mgr_uninit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @daio_mgr_destroy(ptr noundef %daio_mgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %imap_lock = getelementptr inbounds %struct.daio_mgr, ptr %daio_mgr, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %imap_lock) #8
  %imappers = getelementptr inbounds %struct.daio_mgr, ptr %daio_mgr, i32 0, i32 4
  tail call void @free_input_mapper_list(ptr noundef %imappers) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %imap_lock, i32 noundef %call2) #8
  %call6 = tail call i32 @rsc_mgr_uninit(ptr noundef %daio_mgr) #8
  tail call void @kfree(ptr noundef %daio_mgr) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_input_mapper_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dao_rsc_init(ptr noundef %dao, ptr nocapture noundef readonly %desc, ptr noundef %mgr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw2 = getelementptr inbounds %struct.rsc_mgr, ptr %mgr, i32 0, i32 5
  %0 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw2, align 4
  %call = tail call fastcc i32 @daio_rsc_init(ptr noundef %dao, ptr noundef %desc, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end8.i.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %desc, align 4
  %3 = lshr i16 %bf.load, 5
  %4 = and i16 %3, 120
  %5 = zext i16 %4 to i32
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #13
  %imappers = getelementptr inbounds %struct.dao, ptr %dao, i32 0, i32 2
  %6 = ptrtoint ptr %imappers to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9.i.i, ptr %imappers, align 4
  %tobool8.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool8.not, label %if.end8.i.i.error1_crit_edge, label %if.end10

if.end8.i.i.error1_crit_edge:                     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error1

if.end10:                                         ; preds = %if.end8.i.i
  %ops = getelementptr inbounds %struct.dao, ptr %dao, i32 0, i32 1
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @dao_ops, ptr %ops, align 4
  %mgr11 = getelementptr inbounds %struct.dao, ptr %dao, i32 0, i32 3
  %8 = ptrtoint ptr %mgr11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %mgr, ptr %mgr11, align 4
  %hw12 = getelementptr inbounds %struct.dao, ptr %dao, i32 0, i32 4
  %9 = ptrtoint ptr %hw12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %hw12, align 4
  %dao_get_ctrl_blk = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 75
  %10 = ptrtoint ptr %dao_get_ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dao_get_ctrl_blk, align 4
  %ctrl_blk = getelementptr inbounds %struct.dao, ptr %dao, i32 0, i32 5
  %call13 = tail call i32 %11(ptr noundef %ctrl_blk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %error2

if.end16:                                         ; preds = %if.end10
  %daio_mgr_dsb_dao = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 85
  %12 = ptrtoint ptr %daio_mgr_dsb_dao to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %daio_mgr_dsb_dao, align 4
  %ctrl_blk18 = getelementptr inbounds %struct.rsc_mgr, ptr %mgr, i32 0, i32 4
  %14 = ptrtoint ptr %ctrl_blk18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctrl_blk18, align 4
  %type = getelementptr inbounds %struct.daio, ptr %dao, i32 0, i32 2
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type, align 4
  %chip_type.i = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 101
  %18 = ptrtoint ptr %chip_type.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %chip_type.i, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %19, label %if.end16.daio_device_index.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb9.i
  ]

if.end16.daio_device_index.exit_crit_edge:        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %daio_device_index.exit

sw.bb.i:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %17)
  %21 = icmp ult i32 %17, 9
  br i1 %21, label %switch.lookup, label %sw.bb.i.daio_device_index.exit_crit_edge

sw.bb.i.daio_device_index.exit_crit_edge:         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %daio_device_index.exit

sw.bb9.i:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %17)
  %22 = icmp ult i32 %17, 8
  br i1 %22, label %switch.lookup135, label %sw.bb9.i.daio_device_index.exit_crit_edge

sw.bb9.i.daio_device_index.exit_crit_edge:        ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %daio_device_index.exit

switch.lookup:                                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.dao_rsc_init, i32 0, i32 %17
  br label %daio_device_index.exit.sink.split

switch.lookup135:                                 ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep136 = getelementptr inbounds [8 x i32], ptr @switch.table.dao_rsc_init.15, i32 0, i32 %17
  br label %daio_device_index.exit.sink.split

daio_device_index.exit.sink.split:                ; preds = %switch.lookup135, %switch.lookup
  %switch.gep136.sink = phi ptr [ %switch.gep136, %switch.lookup135 ], [ %switch.gep, %switch.lookup ]
  %23 = ptrtoint ptr %switch.gep136.sink to i32
  call void @__asan_load4_noabort(i32 %23)
  %switch.load137 = load i32, ptr %switch.gep136.sink, align 4
  br label %daio_device_index.exit

daio_device_index.exit:                           ; preds = %daio_device_index.exit.sink.split, %sw.bb9.i.daio_device_index.exit_crit_edge, %sw.bb.i.daio_device_index.exit_crit_edge, %if.end16.daio_device_index.exit_crit_edge
  %retval.0.i92 = phi i32 [ -22, %if.end16.daio_device_index.exit_crit_edge ], [ -22, %sw.bb.i.daio_device_index.exit_crit_edge ], [ -22, %sw.bb9.i.daio_device_index.exit_crit_edge ], [ %switch.load137, %daio_device_index.exit.sink.split ]
  %call21 = tail call i32 %13(ptr noundef %15, i32 noundef %retval.0.i92) #8
  %daio_mgr_commit_write = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 90
  %24 = ptrtoint ptr %daio_mgr_commit_write to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %daio_mgr_commit_write, align 4
  %26 = ptrtoint ptr %ctrl_blk18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctrl_blk18, align 4
  %call24 = tail call i32 %25(ptr noundef %1, ptr noundef %27) #8
  %28 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load25 = load i16, ptr %desc, align 4
  %bf.lshr26 = lshr i16 %bf.load25, 8
  %29 = and i16 %bf.lshr26, 7
  %30 = lshr i16 %bf.load25, 4
  %31 = and i16 %30, 8
  %or91 = or i16 %29, %31
  %or = zext i16 %or91 to i32
  %daio_mgr_dao_init = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 86
  %32 = ptrtoint ptr %daio_mgr_dao_init to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %daio_mgr_dao_init, align 4
  %34 = ptrtoint ptr %ctrl_blk18 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ctrl_blk18, align 4
  %36 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %type, align 4
  %38 = ptrtoint ptr %chip_type.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %chip_type.i, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %39, label %daio_device_index.exit.daio_device_index.exit111_crit_edge [
    i32 0, label %sw.bb.i94
    i32 1, label %sw.bb9.i102
  ]

daio_device_index.exit.daio_device_index.exit111_crit_edge: ; preds = %daio_device_index.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %daio_device_index.exit111

sw.bb.i94:                                        ; preds = %daio_device_index.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %37)
  %41 = icmp ult i32 %37, 9
  br i1 %41, label %switch.lookup138, label %sw.bb.i94.daio_device_index.exit111_crit_edge

sw.bb.i94.daio_device_index.exit111_crit_edge:    ; preds = %sw.bb.i94
  call void @__sanitizer_cov_trace_pc() #10
  br label %daio_device_index.exit111

sw.bb9.i102:                                      ; preds = %daio_device_index.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %37)
  %42 = icmp ult i32 %37, 8
  br i1 %42, label %switch.lookup140, label %sw.bb9.i102.daio_device_index.exit111_crit_edge

sw.bb9.i102.daio_device_index.exit111_crit_edge:  ; preds = %sw.bb9.i102
  call void @__sanitizer_cov_trace_pc() #10
  br label %daio_device_index.exit111

switch.lookup138:                                 ; preds = %sw.bb.i94
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep139 = getelementptr inbounds [9 x i32], ptr @switch.table.dao_rsc_init.16, i32 0, i32 %37
  br label %daio_device_index.exit111.sink.split

switch.lookup140:                                 ; preds = %sw.bb9.i102
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep141 = getelementptr inbounds [8 x i32], ptr @switch.table.dao_rsc_init.17, i32 0, i32 %37
  br label %daio_device_index.exit111.sink.split

daio_device_index.exit111.sink.split:             ; preds = %switch.lookup140, %switch.lookup138
  %switch.gep141.sink = phi ptr [ %switch.gep141, %switch.lookup140 ], [ %switch.gep139, %switch.lookup138 ]
  %43 = ptrtoint ptr %switch.gep141.sink to i32
  call void @__asan_load4_noabort(i32 %43)
  %switch.load142 = load i32, ptr %switch.gep141.sink, align 4
  br label %daio_device_index.exit111

daio_device_index.exit111:                        ; preds = %daio_device_index.exit111.sink.split, %sw.bb9.i102.daio_device_index.exit111_crit_edge, %sw.bb.i94.daio_device_index.exit111_crit_edge, %daio_device_index.exit.daio_device_index.exit111_crit_edge
  %retval.0.i110 = phi i32 [ -22, %daio_device_index.exit.daio_device_index.exit111_crit_edge ], [ -22, %sw.bb.i94.daio_device_index.exit111_crit_edge ], [ -22, %sw.bb9.i102.daio_device_index.exit111_crit_edge ], [ %switch.load142, %daio_device_index.exit111.sink.split ]
  %call38 = tail call i32 %33(ptr noundef %35, i32 noundef %retval.0.i110, i32 noundef %or) #8
  %daio_mgr_enb_dao = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 84
  %44 = ptrtoint ptr %daio_mgr_enb_dao to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %daio_mgr_enb_dao, align 4
  %46 = ptrtoint ptr %ctrl_blk18 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ctrl_blk18, align 4
  %48 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %type, align 4
  %50 = ptrtoint ptr %chip_type.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %chip_type.i, align 4
  %52 = zext i32 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %51, label %daio_device_index.exit111.daio_device_index.exit130_crit_edge [
    i32 0, label %sw.bb.i113
    i32 1, label %sw.bb9.i121
  ]

daio_device_index.exit111.daio_device_index.exit130_crit_edge: ; preds = %daio_device_index.exit111
  call void @__sanitizer_cov_trace_pc() #10
  br label %daio_device_index.exit130

sw.bb.i113:                                       ; preds = %daio_device_index.exit111
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %49)
  %53 = icmp ult i32 %49, 9
  br i1 %53, label %switch.lookup143, label %sw.bb.i113.daio_device_index.exit130_crit_edge

sw.bb.i113.daio_device_index.exit130_crit_edge:   ; preds = %sw.bb.i113
  call void @__sanitizer_cov_trace_pc() #10
  br label %daio_device_index.exit130

sw.bb9.i121:                                      ; preds = %daio_device_index.exit111
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %49)
  %54 = icmp ult i32 %49, 8
  br i1 %54, label %switch.lookup145, label %sw.bb9.i121.daio_device_index.exit130_crit_edge

sw.bb9.i121.daio_device_index.exit130_crit_edge:  ; preds = %sw.bb9.i121
  call void @__sanitizer_cov_trace_pc() #10
  br label %daio_device_index.exit130

switch.lookup143:                                 ; preds = %sw.bb.i113
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep144 = getelementptr inbounds [9 x i32], ptr @switch.table.dao_rsc_init.18, i32 0, i32 %49
  br label %daio_device_index.exit130.sink.split

switch.lookup145:                                 ; preds = %sw.bb9.i121
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep146 = getelementptr inbounds [8 x i32], ptr @switch.table.dao_rsc_init.19, i32 0, i32 %49
  br label %daio_device_index.exit130.sink.split

daio_device_index.exit130.sink.split:             ; preds = %switch.lookup145, %switch.lookup143
  %switch.gep146.sink = phi ptr [ %switch.gep146, %switch.lookup145 ], [ %switch.gep144, %switch.lookup143 ]
  %55 = ptrtoint ptr %switch.gep146.sink to i32
  call void @__asan_load4_noabort(i32 %55)
  %switch.load147 = load i32, ptr %switch.gep146.sink, align 4
  br label %daio_device_index.exit130

daio_device_index.exit130:                        ; preds = %daio_device_index.exit130.sink.split, %sw.bb9.i121.daio_device_index.exit130_crit_edge, %sw.bb.i113.daio_device_index.exit130_crit_edge, %daio_device_index.exit111.daio_device_index.exit130_crit_edge
  %retval.0.i129 = phi i32 [ -22, %daio_device_index.exit111.daio_device_index.exit130_crit_edge ], [ -22, %sw.bb.i113.daio_device_index.exit130_crit_edge ], [ -22, %sw.bb9.i121.daio_device_index.exit130_crit_edge ], [ %switch.load147, %daio_device_index.exit130.sink.split ]
  %call44 = tail call i32 %45(ptr noundef %47, i32 noundef %retval.0.i129) #8
  %56 = ptrtoint ptr %daio_mgr_commit_write to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %daio_mgr_commit_write, align 4
  %58 = ptrtoint ptr %ctrl_blk18 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ctrl_blk18, align 4
  %call48 = tail call i32 %57(ptr noundef %1, ptr noundef %59) #8
  br label %cleanup

error2:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %imappers to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %imappers, align 4
  tail call void @kfree(ptr noundef %61) #8
  %62 = ptrtoint ptr %imappers to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %imappers, align 4
  br label %error1

error1:                                           ; preds = %error2, %if.end8.i.i.error1_crit_edge
  %err.0 = phi i32 [ %call13, %error2 ], [ -12, %if.end8.i.i.error1_crit_edge ]
  %call.i = tail call i32 @rsc_uninit(ptr noundef %dao) #8
  %rscr.i = getelementptr inbounds %struct.daio, ptr %dao, i32 0, i32 1
  %call1.i = tail call i32 @rsc_uninit(ptr noundef %rscr.i) #8
  br label %cleanup

cleanup:                                          ; preds = %error1, %daio_device_index.exit130, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %error1 ], [ 0, %daio_device_index.exit130 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @daio_rsc_init(ptr noundef %daio, ptr nocapture noundef readonly %desc, ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_type = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 101
  %0 = ptrtoint ptr %chip_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip_type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load = load i16, ptr %desc, align 4
  %bf.lshr = lshr i16 %bf.load, 12
  %bf.cast = zext i16 %bf.lshr to i32
  %arrayidx = getelementptr [9 x %struct.daio_rsc_idx], ptr @idx_20k1, i32 0, i32 %bf.cast
  %right = getelementptr [9 x %struct.daio_rsc_idx], ptr @idx_20k1, i32 0, i32 %bf.cast, i32 1
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load7 = load i16, ptr %desc, align 4
  %bf.lshr8 = lshr i16 %bf.load7, 12
  %bf.cast9 = zext i16 %bf.lshr8 to i32
  %arrayidx10 = getelementptr [9 x %struct.daio_rsc_idx], ptr @idx_20k2, i32 0, i32 %bf.cast9
  %right17 = getelementptr [9 x %struct.daio_rsc_idx], ptr @idx_20k2, i32 0, i32 %bf.cast9, i32 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb
  %idx_l.0.in.in = phi ptr [ %arrayidx10, %sw.bb6 ], [ %arrayidx, %sw.bb ]
  %idx_r.0.in.in = phi ptr [ %right17, %sw.bb6 ], [ %right, %sw.bb ]
  %5 = ptrtoint ptr %idx_r.0.in.in to i32
  call void @__asan_load2_noabort(i32 %5)
  %idx_r.0.in = load i16, ptr %idx_r.0.in.in, align 2
  %6 = ptrtoint ptr %idx_l.0.in.in to i32
  call void @__asan_load2_noabort(i32 %6)
  %idx_l.0.in = load i16, ptr %idx_l.0.in.in, align 2
  %idx_l.0 = zext i16 %idx_l.0.in to i32
  %7 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load19 = load i16, ptr %desc, align 4
  %bf.lshr20 = lshr i16 %bf.load19, 8
  %bf.clear = and i16 %bf.lshr20, 15
  %bf.cast21 = zext i16 %bf.clear to i32
  %call = tail call i32 @rsc_init(ptr noundef %daio, i32 noundef %idx_l.0, i32 noundef 4, i32 noundef %bf.cast21, ptr noundef %hw) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %idx_r.0 = zext i16 %idx_r.0.in to i32
  %rscr = getelementptr inbounds %struct.daio, ptr %daio, i32 0, i32 1
  %8 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load22 = load i16, ptr %desc, align 4
  %bf.lshr23 = lshr i16 %bf.load22, 8
  %bf.clear24 = and i16 %bf.lshr23, 15
  %bf.cast25 = zext i16 %bf.clear24 to i32
  %call26 = tail call i32 @rsc_init(ptr noundef %rscr, i32 noundef %idx_r.0, i32 noundef 4, i32 noundef %bf.cast25, ptr noundef %hw) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %error1

if.end29:                                         ; preds = %if.end
  %9 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load30 = load i16, ptr %desc, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 20480, i16 %bf.load30)
  %cmp = icmp ult i16 %bf.load30, 20480
  br i1 %cmp, label %if.end29.if.end51.sink.split_crit_edge, label %if.else

if.end29.if.end51.sink.split_crit_edge:           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51.sink.split

if.else:                                          ; preds = %if.end29
  %10 = ptrtoint ptr %chip_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chip_type, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %11, label %if.else.if.end51_crit_edge [
    i32 0, label %if.else.if.end51.sink.split_crit_edge
    i32 1, label %sw.bb44
  ]

if.else.if.end51.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51.sink.split

if.else.if.end51_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

sw.bb44:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51.sink.split

if.end51.sink.split:                              ; preds = %sw.bb44, %if.else.if.end51.sink.split_crit_edge, %if.end29.if.end51.sink.split_crit_edge
  %daio_in_rsc_ops_20k1.sink81 = phi ptr [ @daio_in_rsc_ops_20k2, %sw.bb44 ], [ @daio_out_rsc_ops, %if.end29.if.end51.sink.split_crit_edge ], [ @daio_in_rsc_ops_20k1, %if.else.if.end51.sink.split_crit_edge ]
  %ops41 = getelementptr inbounds %struct.daio, ptr %daio, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %ops41 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %daio_in_rsc_ops_20k1.sink81, ptr %ops41, align 4
  %ops43 = getelementptr inbounds %struct.rsc, ptr %daio, i32 0, i32 3
  %14 = ptrtoint ptr %ops43 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %daio_in_rsc_ops_20k1.sink81, ptr %ops43, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.end51.sink.split, %if.else.if.end51_crit_edge
  %15 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load52 = load i16, ptr %desc, align 4
  %bf.lshr53 = lshr i16 %bf.load52, 12
  %bf.cast54 = zext i16 %bf.lshr53 to i32
  %type = getelementptr inbounds %struct.daio, ptr %daio, i32 0, i32 2
  %16 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %bf.cast54, ptr %type, align 4
  br label %cleanup

error1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call56 = tail call i32 @rsc_uninit(ptr noundef %daio) #8
  br label %cleanup

cleanup:                                          ; preds = %error1, %if.end51, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call26, %error1 ], [ 0, %if.end51 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsc_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsc_uninit(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @daio_master(ptr nocapture noundef %rsc) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rsc to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %rsc, align 4
  %1 = lshr i32 %bf.load, 16
  %bf.shl = and i32 %1, 65520
  %bf.clear = and i32 %bf.load, -65521
  %bf.set = or i32 %bf.shl, %bf.clear
  store i32 %bf.set, ptr %rsc, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @daio_out_next_conj(ptr nocapture noundef %rsc) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rsc to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %rsc, align 4
  %1 = add i32 %bf.load, 32
  %bf.shl = and i32 %1, 65520
  %bf.clear2 = and i32 %bf.load, -65521
  %bf.set = or i32 %bf.shl, %bf.clear2
  store i32 %bf.set, ptr %rsc, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @daio_index(ptr nocapture noundef readonly %rsc) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rsc to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %rsc, align 4
  %bf.lshr = lshr i32 %bf.load, 4
  %bf.clear = and i32 %bf.lshr, 4095
  ret i32 %bf.clear
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @daio_in_next_conj_20k1(ptr nocapture noundef %rsc) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rsc to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %rsc, align 4
  %1 = add i32 %bf.load, 8192
  %bf.shl = and i32 %1, 65520
  %bf.clear2 = and i32 %bf.load, -65521
  %bf.set = or i32 %bf.shl, %bf.clear2
  store i32 %bf.set, ptr %rsc, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @daio_in_next_conj_20k2(ptr nocapture noundef %rsc) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rsc to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %rsc, align 4
  %1 = add i32 %bf.load, 4096
  %bf.shl = and i32 %1, 65520
  %bf.clear2 = and i32 %bf.load, -65521
  %bf.set = or i32 %bf.shl, %bf.clear2
  store i32 %bf.set, ptr %rsc, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dao_spdif_set_spos(ptr nocapture noundef readonly %dao, i32 noundef %spos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.dao, ptr %dao, i32 0, i32 4
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %dao_set_spos = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 77
  %2 = ptrtoint ptr %dao_set_spos to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dao_set_spos, align 4
  %ctrl_blk = getelementptr inbounds %struct.dao, ptr %dao, i32 0, i32 5
  %4 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_blk, align 4
  %call = tail call i32 %3(ptr noundef %5, i32 noundef %spos) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dao_commit_write(ptr nocapture noundef readonly %dao) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.dao, ptr %dao, i32 0, i32 4
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %dao_commit_write = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 78
  %2 = ptrtoint ptr %dao_commit_write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dao_commit_write, align 4
  %type = getelementptr inbounds %struct.daio, ptr %dao, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %chip_type.i = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 101
  %6 = ptrtoint ptr %chip_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chip_type.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %7, label %entry.daio_device_index.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb9.i
  ]

entry.daio_device_index.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %daio_device_index.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %5)
  %9 = icmp ult i32 %5, 9
  br i1 %9, label %switch.lookup, label %sw.bb.i.daio_device_index.exit_crit_edge

sw.bb.i.daio_device_index.exit_crit_edge:         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %daio_device_index.exit

sw.bb9.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %10 = icmp ult i32 %5, 8
  br i1 %10, label %switch.lookup8, label %sw.bb9.i.daio_device_index.exit_crit_edge

sw.bb9.i.daio_device_index.exit_crit_edge:        ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %daio_device_index.exit

switch.lookup:                                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.dao_commit_write, i32 0, i32 %5
  br label %daio_device_index.exit.sink.split

switch.lookup8:                                   ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep9 = getelementptr inbounds [8 x i32], ptr @switch.table.dao_commit_write.20, i32 0, i32 %5
  br label %daio_device_index.exit.sink.split

daio_device_index.exit.sink.split:                ; preds = %switch.lookup8, %switch.lookup
  %switch.gep9.sink = phi ptr [ %switch.gep9, %switch.lookup8 ], [ %switch.gep, %switch.lookup ]
  %11 = ptrtoint ptr %switch.gep9.sink to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load10 = load i32, ptr %switch.gep9.sink, align 4
  br label %daio_device_index.exit

daio_device_index.exit:                           ; preds = %daio_device_index.exit.sink.split, %sw.bb9.i.daio_device_index.exit_crit_edge, %sw.bb.i.daio_device_index.exit_crit_edge, %entry.daio_device_index.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.daio_device_index.exit_crit_edge ], [ -22, %sw.bb.i.daio_device_index.exit_crit_edge ], [ -22, %sw.bb9.i.daio_device_index.exit_crit_edge ], [ %switch.load10, %daio_device_index.exit.sink.split ]
  %ctrl_blk = getelementptr inbounds %struct.dao, ptr %dao, i32 0, i32 5
  %12 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctrl_blk, align 4
  %call3 = tail call i32 %3(ptr noundef %1, i32 noundef %retval.0.i, ptr noundef %13) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dao_spdif_get_spos(ptr nocapture noundef readonly %dao, ptr noundef %spos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.dao, ptr %dao, i32 0, i32 4
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %dao_get_spos = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 79
  %2 = ptrtoint ptr %dao_get_spos to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dao_get_spos, align 4
  %ctrl_blk = getelementptr inbounds %struct.dao, ptr %dao, i32 0, i32 5
  %4 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_blk, align 4
  %call = tail call i32 %3(ptr noundef %5, ptr noundef %spos) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dao_rsc_reinit(ptr noundef %dao, ptr nocapture noundef readonly %desc) #0 align 64 {
entry:
  %dsc = alloca %struct.daio_desc, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mgr1 = getelementptr inbounds %struct.dao, ptr %dao, i32 0, i32 3
  %0 = ptrtoint ptr %mgr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mgr1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dsc) #8
  %2 = ptrtoint ptr %dsc to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 65535, ptr %dsc, align 4
  %type = getelementptr inbounds %struct.daio, ptr %dao, i32 0, i32 2
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  %5 = trunc i32 %4 to i16
  %bf.shl = shl i16 %5, 12
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load2 = load i8, ptr %desc, align 4
  %bf.lshr = lshr i8 %bf.load2, 4
  %7 = zext i8 %bf.lshr to i16
  %bf.shl5 = shl nuw nsw i16 %7, 8
  %bf.set7 = or i16 %bf.shl5, %bf.shl
  %8 = shl i8 %bf.load2, 4
  %9 = and i8 %8, -128
  %bf.shl15 = zext i8 %9 to i16
  %bf.set17 = or i16 %bf.set7, %bf.shl15
  store i16 %bf.set17, ptr %dsc, align 4
  tail call fastcc void @dao_rsc_uninit(ptr noundef %dao)
  %call19 = call fastcc i32 @dao_rsc_init(ptr noundef %dao, ptr noundef nonnull %dsc, ptr noundef %1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dsc) #8
  ret i32 %call19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dao_set_left_input(ptr noundef %dao, ptr noundef %input) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dao to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %dao, align 4
  %bf.clear = shl i32 %bf.load, 4
  %mul = and i32 %bf.clear, 240
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #13
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.dao, ptr %dao, i32 0, i32 1
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 4
  %clear_left_input = getelementptr inbounds %struct.dao_rsc_ops, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %clear_left_input to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clear_left_input, align 4
  %call3 = tail call i32 %4(ptr noundef %dao) #8
  %ops4 = getelementptr inbounds %struct.rsc, ptr %input, i32 0, i32 3
  %5 = ptrtoint ptr %ops4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops4, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  tail call void %8(ptr noundef %input) #8
  %ops6 = getelementptr inbounds %struct.rsc, ptr %dao, i32 0, i32 3
  %9 = ptrtoint ptr %ops6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops6, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  tail call void %12(ptr noundef %dao) #8
  %13 = ptrtoint ptr %dao to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load1066 = load i32, ptr %dao, align 4
  %bf.clear1167 = and i32 %bf.load1066, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear1167)
  %cmp68.not = icmp eq i32 %bf.clear1167, 0
  br i1 %cmp68.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %mgr = getelementptr inbounds %struct.dao, ptr %dao, i32 0, i32 3
  %imappers = getelementptr inbounds %struct.dao, ptr %dao, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.070 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %entry1.069 = phi ptr [ %call9.i.i, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %14 = ptrtoint ptr %ops4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops4, align 4
  %output_slot = getelementptr inbounds %struct.rsc_ops, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %output_slot to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %output_slot, align 4
  %call13 = tail call i32 %17(ptr noundef %input) #8
  %conv = trunc i32 %call13 to i16
  %18 = ptrtoint ptr %entry1.069 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv, ptr %entry1.069, align 4
  %19 = ptrtoint ptr %ops6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops6, align 4
  %index = getelementptr inbounds %struct.rsc_ops, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %index, align 4
  %call17 = tail call i32 %22(ptr noundef %dao) #8
  %conv18 = trunc i32 %call17 to i16
  %addr = getelementptr inbounds %struct.imapper, ptr %entry1.069, i32 0, i32 2
  %23 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv18, ptr %addr, align 4
  %user = getelementptr inbounds %struct.imapper, ptr %entry1.069, i32 0, i32 1
  %24 = ptrtoint ptr %user to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv18, ptr %user, align 2
  %25 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mgr, align 4
  %imap_add = getelementptr inbounds %struct.daio_mgr, ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %imap_add to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %imap_add, align 4
  %call20 = tail call i32 %28(ptr noundef %26, ptr noundef %entry1.069) #8
  %29 = ptrtoint ptr %imappers to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %imappers, align 4
  %arrayidx = getelementptr ptr, ptr %30, i32 %i.070
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %entry1.069, ptr %arrayidx, align 4
  %32 = ptrtoint ptr %ops4 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops4, align 4
  %next_conj = getelementptr inbounds %struct.rsc_ops, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %next_conj to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %next_conj, align 4
  tail call void %35(ptr noundef %input) #8
  %36 = ptrtoint ptr %ops6 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops6, align 4
  %next_conj24 = getelementptr inbounds %struct.rsc_ops, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %next_conj24 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %next_conj24, align 4
  tail call void %39(ptr noundef %dao) #8
  %inc = add nuw nsw i32 %i.070, 1
  %incdec.ptr = getelementptr %struct.imapper, ptr %entry1.069, i32 1
  %40 = ptrtoint ptr %dao to i32
  call void @__asan_load4_noabort(i32 %40)
  %bf.load10 = load i32, ptr %dao, align 4
  %bf.clear11 = and i32 %bf.load10, 15
  %cmp = icmp ult i32 %inc, %bf.clear11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %41 = ptrtoint ptr %ops4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops4, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  tail call void %44(ptr noundef %input) #8
  %45 = ptrtoint ptr %ops6 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops6, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  tail call void %48(ptr noundef %dao) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dao_set_right_input(ptr noundef %dao, ptr noundef %input) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rscr = getelementptr inbounds %struct.daio, ptr %dao, i32 0, i32 1
  %0 = ptrtoint ptr %rscr to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %rscr, align 4
  %bf.clear = shl i32 %bf.load, 4
  %mul = and i32 %bf.clear, 240
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #13
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.dao, ptr %dao, i32 0, i32 1
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 4
  %clear_right_input = getelementptr inbounds %struct.dao_rsc_ops, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %clear_right_input to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clear_right_input, align 4
  %call3 = tail call i32 %4(ptr noundef %dao) #8
  %ops4 = getelementptr inbounds %struct.rsc, ptr %input, i32 0, i32 3
  %5 = ptrtoint ptr %ops4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops4, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  tail call void %8(ptr noundef %input) #8
  %ops6 = getelementptr inbounds %struct.daio, ptr %dao, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %ops6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops6, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  tail call void %12(ptr noundef %rscr) #8
  %13 = ptrtoint ptr %rscr to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load1069 = load i32, ptr %rscr, align 4
  %bf.clear1170 = and i32 %bf.load1069, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear1170)
  %cmp71.not = icmp eq i32 %bf.clear1170, 0
  br i1 %cmp71.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %mgr = getelementptr inbounds %struct.dao, ptr %dao, i32 0, i32 3
  %imappers = getelementptr inbounds %struct.dao, ptr %dao, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.073 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %entry1.072 = phi ptr [ %call9.i.i, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %14 = ptrtoint ptr %ops4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops4, align 4
  %output_slot = getelementptr inbounds %struct.rsc_ops, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %output_slot to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %output_slot, align 4
  %call13 = tail call i32 %17(ptr noundef %input) #8
  %conv = trunc i32 %call13 to i16
  %18 = ptrtoint ptr %entry1.072 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv, ptr %entry1.072, align 4
  %19 = ptrtoint ptr %ops6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops6, align 4
  %index = getelementptr inbounds %struct.rsc_ops, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %index, align 4
  %call17 = tail call i32 %22(ptr noundef %rscr) #8
  %conv18 = trunc i32 %call17 to i16
  %addr = getelementptr inbounds %struct.imapper, ptr %entry1.072, i32 0, i32 2
  %23 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv18, ptr %addr, align 4
  %user = getelementptr inbounds %struct.imapper, ptr %entry1.072, i32 0, i32 1
  %24 = ptrtoint ptr %user to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv18, ptr %user, align 2
  %25 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mgr, align 4
  %imap_add = getelementptr inbounds %struct.daio_mgr, ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %imap_add to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %imap_add, align 4
  %call20 = tail call i32 %28(ptr noundef %26, ptr noundef %entry1.072) #8
  %29 = ptrtoint ptr %imappers to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %imappers, align 4
  %31 = ptrtoint ptr %dao to i32
  call void @__asan_load4_noabort(i32 %31)
  %bf.load21 = load i32, ptr %dao, align 4
  %bf.clear22 = and i32 %bf.load21, 15
  %add = add nuw nsw i32 %bf.clear22, %i.073
  %arrayidx = getelementptr ptr, ptr %30, i32 %add
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %entry1.072, ptr %arrayidx, align 4
  %33 = ptrtoint ptr %ops4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops4, align 4
  %next_conj = getelementptr inbounds %struct.rsc_ops, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %next_conj to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %next_conj, align 4
  tail call void %36(ptr noundef %input) #8
  %37 = ptrtoint ptr %ops6 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops6, align 4
  %next_conj26 = getelementptr inbounds %struct.rsc_ops, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %next_conj26 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %next_conj26, align 4
  tail call void %40(ptr noundef %rscr) #8
  %inc = add nuw nsw i32 %i.073, 1
  %incdec.ptr = getelementptr %struct.imapper, ptr %entry1.072, i32 1
  %41 = ptrtoint ptr %rscr to i32
  call void @__asan_load4_noabort(i32 %41)
  %bf.load10 = load i32, ptr %rscr, align 4
  %bf.clear11 = and i32 %bf.load10, 15
  %cmp = icmp ult i32 %inc, %bf.clear11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %42 = ptrtoint ptr %ops4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops4, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  tail call void %45(ptr noundef %input) #8
  %46 = ptrtoint ptr %ops6 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops6, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  tail call void %49(ptr noundef %rscr) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dao_clear_left_input(ptr nocapture noundef readonly %dao) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %imappers = getelementptr inbounds %struct.dao, ptr %dao, i32 0, i32 2
  %0 = ptrtoint ptr %imappers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %imappers, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mgr = getelementptr inbounds %struct.dao, ptr %dao, i32 0, i32 3
  %4 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mgr, align 4
  %imap_delete = getelementptr inbounds %struct.daio_mgr, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %imap_delete to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %imap_delete, align 4
  %call = tail call i32 %7(ptr noundef %5, ptr noundef nonnull %3) #8
  %8 = ptrtoint ptr %dao to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load34 = load i32, ptr %dao, align 4
  %bf.clear35 = and i32 %bf.load34, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear35)
  %cmp36.not = icmp eq i32 %bf.clear35, 0
  br i1 %cmp36.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.037 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %if.end.for.body_crit_edge ]
  %9 = ptrtoint ptr %imappers to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %imappers, align 4
  %arrayidx7 = getelementptr ptr, ptr %10, i32 %i.037
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx7, align 4
  %13 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mgr, align 4
  %imap_delete9 = getelementptr inbounds %struct.daio_mgr, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %imap_delete9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %imap_delete9, align 4
  %call11 = tail call i32 %16(ptr noundef %14, ptr noundef %12) #8
  %17 = ptrtoint ptr %imappers to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %imappers, align 4
  %arrayidx13 = getelementptr ptr, ptr %18, i32 %i.037
  %19 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %arrayidx13, align 4
  %inc = add nuw nsw i32 %i.037, 1
  %20 = ptrtoint ptr %dao to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load = load i32, ptr %dao, align 4
  %bf.clear = and i32 %bf.load, 15
  %cmp = icmp ult i32 %inc, %bf.clear
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %21 = ptrtoint ptr %imappers to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %imappers, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  tail call void @kfree(ptr noundef %24) #8
  %25 = ptrtoint ptr %imappers to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %imappers, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %26, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dao_clear_right_input(ptr nocapture noundef readonly %dao) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %imappers = getelementptr inbounds %struct.dao, ptr %dao, i32 0, i32 2
  %0 = ptrtoint ptr %imappers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %imappers, align 4
  %2 = ptrtoint ptr %dao to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %dao, align 4
  %bf.clear = and i32 %bf.load, 15
  %arrayidx = getelementptr ptr, ptr %1, i32 %bf.clear
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mgr = getelementptr inbounds %struct.dao, ptr %dao, i32 0, i32 3
  %5 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mgr, align 4
  %imap_delete = getelementptr inbounds %struct.daio_mgr, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %imap_delete to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %imap_delete, align 4
  %call = tail call i32 %8(ptr noundef %6, ptr noundef nonnull %4) #8
  %rscr = getelementptr inbounds %struct.daio, ptr %dao, i32 0, i32 1
  %9 = ptrtoint ptr %rscr to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load958 = load i32, ptr %rscr, align 4
  %bf.clear1059 = and i32 %bf.load958, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear1059)
  %cmp60.not = icmp eq i32 %bf.clear1059, 0
  br i1 %cmp60.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.061 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %if.end.for.body_crit_edge ]
  %10 = ptrtoint ptr %imappers to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %imappers, align 4
  %12 = ptrtoint ptr %dao to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load13 = load i32, ptr %dao, align 4
  %bf.clear14 = and i32 %bf.load13, 15
  %add = add nuw nsw i32 %bf.clear14, %i.061
  %arrayidx15 = getelementptr ptr, ptr %11, i32 %add
  %13 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx15, align 4
  %15 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mgr, align 4
  %imap_delete17 = getelementptr inbounds %struct.daio_mgr, ptr %16, i32 0, i32 12
  %17 = ptrtoint ptr %imap_delete17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %imap_delete17, align 4
  %call19 = tail call i32 %18(ptr noundef %16, ptr noundef %14) #8
  %19 = ptrtoint ptr %imappers to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %imappers, align 4
  %21 = ptrtoint ptr %dao to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load22 = load i32, ptr %dao, align 4
  %bf.clear23 = and i32 %bf.load22, 15
  %add24 = add nuw nsw i32 %bf.clear23, %i.061
  %arrayidx25 = getelementptr ptr, ptr %20, i32 %add24
  %22 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %arrayidx25, align 4
  %inc = add nuw nsw i32 %i.061, 1
  %23 = ptrtoint ptr %rscr to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load9 = load i32, ptr %rscr, align 4
  %bf.clear10 = and i32 %bf.load9, 15
  %cmp = icmp ult i32 %inc, %bf.clear10
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %24 = ptrtoint ptr %imappers to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %imappers, align 4
  %26 = ptrtoint ptr %dao to i32
  call void @__asan_load4_noabort(i32 %26)
  %bf.load28 = load i32, ptr %dao, align 4
  %bf.clear29 = and i32 %bf.load28, 15
  %arrayidx30 = getelementptr ptr, ptr %25, i32 %bf.clear29
  %27 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx30, align 4
  tail call void @kfree(ptr noundef %28) #8
  %29 = ptrtoint ptr %imappers to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %imappers, align 4
  %31 = ptrtoint ptr %dao to i32
  call void @__asan_load4_noabort(i32 %31)
  %bf.load33 = load i32, ptr %dao, align 4
  %bf.clear34 = and i32 %bf.load33, 15
  %arrayidx35 = getelementptr ptr, ptr %30, i32 %bf.clear34
  %32 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %arrayidx35, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dao_rsc_uninit(ptr noundef %dao) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %imappers = getelementptr inbounds %struct.dao, ptr %dao, i32 0, i32 2
  %0 = ptrtoint ptr %imappers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %imappers, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %mgr.i = getelementptr inbounds %struct.dao, ptr %dao, i32 0, i32 3
  %4 = ptrtoint ptr %mgr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mgr.i, align 4
  %imap_delete.i = getelementptr inbounds %struct.daio_mgr, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %imap_delete.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %imap_delete.i, align 4
  %call.i = tail call i32 %7(ptr noundef %5, ptr noundef nonnull %3) #8
  %8 = ptrtoint ptr %dao to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load34.i = load i32, ptr %dao, align 4
  %bf.clear35.i = and i32 %bf.load34.i, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear35.i)
  %cmp36.not.i = icmp eq i32 %bf.clear35.i, 0
  br i1 %cmp36.not.i, label %if.end.i.dao_clear_left_input.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.dao_clear_left_input.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dao_clear_left_input.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.037.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 1, %if.end.i.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %imappers to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %imappers, align 4
  %arrayidx7.i = getelementptr ptr, ptr %10, i32 %i.037.i
  %11 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx7.i, align 4
  %13 = ptrtoint ptr %mgr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mgr.i, align 4
  %imap_delete9.i = getelementptr inbounds %struct.daio_mgr, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %imap_delete9.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %imap_delete9.i, align 4
  %call11.i = tail call i32 %16(ptr noundef %14, ptr noundef %12) #8
  %17 = ptrtoint ptr %imappers to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %imappers, align 4
  %arrayidx13.i = getelementptr ptr, ptr %18, i32 %i.037.i
  %19 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %arrayidx13.i, align 4
  %inc.i = add nuw nsw i32 %i.037.i, 1
  %20 = ptrtoint ptr %dao to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load.i = load i32, ptr %dao, align 4
  %bf.clear.i = and i32 %bf.load.i, 15
  %cmp.i = icmp ult i32 %inc.i, %bf.clear.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.dao_clear_left_input.exit_crit_edge

for.body.i.dao_clear_left_input.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dao_clear_left_input.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

dao_clear_left_input.exit:                        ; preds = %for.body.i.dao_clear_left_input.exit_crit_edge, %if.end.i.dao_clear_left_input.exit_crit_edge
  %21 = ptrtoint ptr %imappers to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %imappers, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  tail call void @kfree(ptr noundef %24) #8
  %25 = ptrtoint ptr %imappers to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %imappers, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %26, align 4
  br label %if.end

if.end:                                           ; preds = %dao_clear_left_input.exit, %if.then.if.end_crit_edge
  %28 = ptrtoint ptr %imappers to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %imappers, align 4
  %30 = ptrtoint ptr %dao to i32
  call void @__asan_load4_noabort(i32 %30)
  %bf.load = load i32, ptr %dao, align 4
  %bf.clear = and i32 %bf.load, 15
  %arrayidx5 = getelementptr ptr, ptr %29, i32 %bf.clear
  %31 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx5, align 4
  %tobool6.not = icmp eq ptr %32, null
  br i1 %tobool6.not, label %if.end.if.end9_crit_edge, label %if.end.i8

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end.i8:                                        ; preds = %if.end
  %mgr.i5 = getelementptr inbounds %struct.dao, ptr %dao, i32 0, i32 3
  %33 = ptrtoint ptr %mgr.i5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mgr.i5, align 4
  %imap_delete.i6 = getelementptr inbounds %struct.daio_mgr, ptr %34, i32 0, i32 12
  %35 = ptrtoint ptr %imap_delete.i6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %imap_delete.i6, align 4
  %call.i7 = tail call i32 %36(ptr noundef %34, ptr noundef nonnull %32) #8
  %rscr.i = getelementptr inbounds %struct.daio, ptr %dao, i32 0, i32 1
  %37 = ptrtoint ptr %rscr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %bf.load958.i = load i32, ptr %rscr.i, align 4
  %bf.clear1059.i = and i32 %bf.load958.i, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear1059.i)
  %cmp60.not.i = icmp eq i32 %bf.clear1059.i, 0
  br i1 %cmp60.not.i, label %if.end.i8.dao_clear_right_input.exit_crit_edge, label %if.end.i8.for.body.i11_crit_edge

if.end.i8.for.body.i11_crit_edge:                 ; preds = %if.end.i8
  br label %for.body.i11

if.end.i8.dao_clear_right_input.exit_crit_edge:   ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #10
  br label %dao_clear_right_input.exit

for.body.i11:                                     ; preds = %for.body.i11.for.body.i11_crit_edge, %if.end.i8.for.body.i11_crit_edge
  %i.061.i = phi i32 [ %inc.i9, %for.body.i11.for.body.i11_crit_edge ], [ 1, %if.end.i8.for.body.i11_crit_edge ]
  %38 = ptrtoint ptr %imappers to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %imappers, align 4
  %40 = ptrtoint ptr %dao to i32
  call void @__asan_load4_noabort(i32 %40)
  %bf.load13.i = load i32, ptr %dao, align 4
  %bf.clear14.i = and i32 %bf.load13.i, 15
  %add.i = add nuw nsw i32 %bf.clear14.i, %i.061.i
  %arrayidx15.i = getelementptr ptr, ptr %39, i32 %add.i
  %41 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx15.i, align 4
  %43 = ptrtoint ptr %mgr.i5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mgr.i5, align 4
  %imap_delete17.i = getelementptr inbounds %struct.daio_mgr, ptr %44, i32 0, i32 12
  %45 = ptrtoint ptr %imap_delete17.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %imap_delete17.i, align 4
  %call19.i = tail call i32 %46(ptr noundef %44, ptr noundef %42) #8
  %47 = ptrtoint ptr %imappers to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %imappers, align 4
  %49 = ptrtoint ptr %dao to i32
  call void @__asan_load4_noabort(i32 %49)
  %bf.load22.i = load i32, ptr %dao, align 4
  %bf.clear23.i = and i32 %bf.load22.i, 15
  %add24.i = add nuw nsw i32 %bf.clear23.i, %i.061.i
  %arrayidx25.i = getelementptr ptr, ptr %48, i32 %add24.i
  %50 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %arrayidx25.i, align 4
  %inc.i9 = add nuw nsw i32 %i.061.i, 1
  %51 = ptrtoint ptr %rscr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %bf.load9.i = load i32, ptr %rscr.i, align 4
  %bf.clear10.i = and i32 %bf.load9.i, 15
  %cmp.i10 = icmp ult i32 %inc.i9, %bf.clear10.i
  br i1 %cmp.i10, label %for.body.i11.for.body.i11_crit_edge, label %for.body.i11.dao_clear_right_input.exit_crit_edge

for.body.i11.dao_clear_right_input.exit_crit_edge: ; preds = %for.body.i11
  call void @__sanitizer_cov_trace_pc() #10
  br label %dao_clear_right_input.exit

for.body.i11.for.body.i11_crit_edge:              ; preds = %for.body.i11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i11

dao_clear_right_input.exit:                       ; preds = %for.body.i11.dao_clear_right_input.exit_crit_edge, %if.end.i8.dao_clear_right_input.exit_crit_edge
  %52 = ptrtoint ptr %imappers to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %imappers, align 4
  %54 = ptrtoint ptr %dao to i32
  call void @__asan_load4_noabort(i32 %54)
  %bf.load28.i = load i32, ptr %dao, align 4
  %bf.clear29.i = and i32 %bf.load28.i, 15
  %arrayidx30.i = getelementptr ptr, ptr %53, i32 %bf.clear29.i
  %55 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx30.i, align 4
  tail call void @kfree(ptr noundef %56) #8
  %57 = ptrtoint ptr %imappers to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %imappers, align 4
  %59 = ptrtoint ptr %dao to i32
  call void @__asan_load4_noabort(i32 %59)
  %bf.load33.i = load i32, ptr %dao, align 4
  %bf.clear34.i = and i32 %bf.load33.i, 15
  %arrayidx35.i = getelementptr ptr, ptr %58, i32 %bf.clear34.i
  %60 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %arrayidx35.i, align 4
  br label %if.end9

if.end9:                                          ; preds = %dao_clear_right_input.exit, %if.end.if.end9_crit_edge
  %61 = ptrtoint ptr %imappers to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %imappers, align 4
  tail call void @kfree(ptr noundef %62) #8
  %63 = ptrtoint ptr %imappers to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %imappers, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end9, %entry.if.end12_crit_edge
  %hw = getelementptr inbounds %struct.dao, ptr %dao, i32 0, i32 4
  %64 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hw, align 4
  %dao_put_ctrl_blk = getelementptr inbounds %struct.hw, ptr %65, i32 0, i32 76
  %66 = ptrtoint ptr %dao_put_ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dao_put_ctrl_blk, align 4
  %ctrl_blk = getelementptr inbounds %struct.dao, ptr %dao, i32 0, i32 5
  %68 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ctrl_blk, align 4
  %call13 = tail call i32 %67(ptr noundef %69) #8
  %70 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %ctrl_blk, align 4
  %71 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %hw, align 4
  %call.i13 = tail call i32 @rsc_uninit(ptr noundef %dao) #8
  %rscr.i14 = getelementptr inbounds %struct.daio, ptr %dao, i32 0, i32 1
  %call1.i = tail call i32 @rsc_uninit(ptr noundef %rscr.i14) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dai_set_srt_srcl(ptr nocapture noundef readonly %dai, ptr noundef %src) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 3
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void %3(ptr noundef %src) #8
  %hw = getelementptr inbounds %struct.dai, ptr %dai, i32 0, i32 2
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %dai_srt_set_srcm = getelementptr inbounds %struct.hw, ptr %5, i32 0, i32 69
  %6 = ptrtoint ptr %dai_srt_set_srcm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dai_srt_set_srcm, align 4
  %ctrl_blk = getelementptr inbounds %struct.dai, ptr %dai, i32 0, i32 3
  %8 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctrl_blk, align 4
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %index = getelementptr inbounds %struct.rsc_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %index, align 4
  %call = tail call i32 %13(ptr noundef %src) #8
  %call2 = tail call i32 %7(ptr noundef %9, i32 noundef %call) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dai_set_srt_srcr(ptr nocapture noundef readonly %dai, ptr noundef %src) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.rsc, ptr %src, i32 0, i32 3
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void %3(ptr noundef %src) #8
  %hw = getelementptr inbounds %struct.dai, ptr %dai, i32 0, i32 2
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %dai_srt_set_srco = getelementptr inbounds %struct.hw, ptr %5, i32 0, i32 68
  %6 = ptrtoint ptr %dai_srt_set_srco to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dai_srt_set_srco, align 4
  %ctrl_blk = getelementptr inbounds %struct.dai, ptr %dai, i32 0, i32 3
  %8 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctrl_blk, align 4
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %index = getelementptr inbounds %struct.rsc_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %index, align 4
  %call = tail call i32 %13(ptr noundef %src) #8
  %call2 = tail call i32 %7(ptr noundef %9, i32 noundef %call) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dai_set_srt_msr(ptr nocapture noundef readonly %dai, i32 noundef %msr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %msr)
  %cmp4 = icmp ugt i32 %msr, 1
  br i1 %cmp4, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %rsr.06 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %msr.addr.05 = phi i32 [ %shr, %for.body.for.body_crit_edge ], [ %msr, %entry.for.body_crit_edge ]
  %inc = add nuw nsw i32 %rsr.06, 1
  %shr = lshr i32 %msr.addr.05, 1
  %cmp = icmp ugt i32 %msr.addr.05, 3
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %rsr.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %hw = getelementptr inbounds %struct.dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %dai_srt_set_rsr = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 70
  %2 = ptrtoint ptr %dai_srt_set_rsr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dai_srt_set_rsr, align 4
  %ctrl_blk = getelementptr inbounds %struct.dai, ptr %dai, i32 0, i32 3
  %4 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_blk, align 4
  %call = tail call i32 %3(ptr noundef %5, i32 noundef %rsr.0.lcssa) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dai_set_enb_src(ptr nocapture noundef readonly %dai, i32 noundef %enb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %dai_srt_set_ec = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 72
  %2 = ptrtoint ptr %dai_srt_set_ec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dai_srt_set_ec, align 4
  %ctrl_blk = getelementptr inbounds %struct.dai, ptr %dai, i32 0, i32 3
  %4 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_blk, align 4
  %call = tail call i32 %3(ptr noundef %5, i32 noundef %enb) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dai_set_enb_srt(ptr nocapture noundef readonly %dai, i32 noundef %enb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %dai_srt_set_et = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 73
  %2 = ptrtoint ptr %dai_srt_set_et to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dai_srt_set_et, align 4
  %ctrl_blk = getelementptr inbounds %struct.dai, ptr %dai, i32 0, i32 3
  %4 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_blk, align 4
  %call = tail call i32 %3(ptr noundef %5, i32 noundef %enb) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dai_commit_write(ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %dai_commit_write = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 74
  %2 = ptrtoint ptr %dai_commit_write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dai_commit_write, align 4
  %type = getelementptr inbounds %struct.daio, ptr %dai, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %chip_type.i = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 101
  %6 = ptrtoint ptr %chip_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chip_type.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %7, label %entry.daio_device_index.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb9.i
  ]

entry.daio_device_index.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %daio_device_index.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %5)
  %9 = icmp ult i32 %5, 9
  br i1 %9, label %switch.lookup, label %sw.bb.i.daio_device_index.exit_crit_edge

sw.bb.i.daio_device_index.exit_crit_edge:         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %daio_device_index.exit

sw.bb9.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %10 = icmp ult i32 %5, 8
  br i1 %10, label %switch.lookup8, label %sw.bb9.i.daio_device_index.exit_crit_edge

sw.bb9.i.daio_device_index.exit_crit_edge:        ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %daio_device_index.exit

switch.lookup:                                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.dai_commit_write, i32 0, i32 %5
  br label %daio_device_index.exit.sink.split

switch.lookup8:                                   ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep9 = getelementptr inbounds [8 x i32], ptr @switch.table.dai_commit_write.21, i32 0, i32 %5
  br label %daio_device_index.exit.sink.split

daio_device_index.exit.sink.split:                ; preds = %switch.lookup8, %switch.lookup
  %switch.gep9.sink = phi ptr [ %switch.gep9, %switch.lookup8 ], [ %switch.gep, %switch.lookup ]
  %11 = ptrtoint ptr %switch.gep9.sink to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load10 = load i32, ptr %switch.gep9.sink, align 4
  br label %daio_device_index.exit

daio_device_index.exit:                           ; preds = %daio_device_index.exit.sink.split, %sw.bb9.i.daio_device_index.exit_crit_edge, %sw.bb.i.daio_device_index.exit_crit_edge, %entry.daio_device_index.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.daio_device_index.exit_crit_edge ], [ -22, %sw.bb.i.daio_device_index.exit_crit_edge ], [ -22, %sw.bb9.i.daio_device_index.exit_crit_edge ], [ %switch.load10, %daio_device_index.exit.sink.split ]
  %ctrl_blk = getelementptr inbounds %struct.dai, ptr %dai, i32 0, i32 3
  %12 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctrl_blk, align 4
  %call3 = tail call i32 %3(ptr noundef %1, i32 noundef %retval.0.i, ptr noundef %13) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mapper_delete(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @daio_map_op(ptr nocapture noundef readonly %data, ptr nocapture noundef readonly %entry1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw3 = getelementptr inbounds %struct.rsc_mgr, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %hw3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw3, align 4
  %daio_mgr_set_imaparc = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %daio_mgr_set_imaparc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %daio_mgr_set_imaparc, align 4
  %ctrl_blk = getelementptr inbounds %struct.rsc_mgr, ptr %data, i32 0, i32 4
  %4 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_blk, align 4
  %6 = ptrtoint ptr %entry1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %entry1, align 4
  %conv = zext i16 %7 to i32
  %call = tail call i32 %3(ptr noundef %5, i32 noundef %conv) #8
  %daio_mgr_set_imapnxt = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 88
  %8 = ptrtoint ptr %daio_mgr_set_imapnxt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %daio_mgr_set_imapnxt, align 4
  %10 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctrl_blk, align 4
  %next = getelementptr inbounds %struct.imapper, ptr %entry1, i32 0, i32 3
  %12 = ptrtoint ptr %next to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %next, align 2
  %conv5 = zext i16 %13 to i32
  %call6 = tail call i32 %9(ptr noundef %11, i32 noundef %conv5) #8
  %daio_mgr_set_imapaddr = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 89
  %14 = ptrtoint ptr %daio_mgr_set_imapaddr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %daio_mgr_set_imapaddr, align 4
  %16 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctrl_blk, align 4
  %addr = getelementptr inbounds %struct.imapper, ptr %entry1, i32 0, i32 2
  %18 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %addr, align 4
  %conv8 = zext i16 %19 to i32
  %call9 = tail call i32 %15(ptr noundef %17, i32 noundef %conv8) #8
  %daio_mgr_commit_write = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 90
  %20 = ptrtoint ptr %daio_mgr_commit_write to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %daio_mgr_commit_write, align 4
  %22 = ptrtoint ptr %hw3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw3, align 4
  %24 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctrl_blk, align 4
  %call12 = tail call i32 %21(ptr noundef %23, ptr noundef %25) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mapper_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !10, !11, !12, !13, !14, !16, !18, !20, !22, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @daio_mgr_create.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../sound/pci/ctxfi/ctdaio.c", i32 702, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @daio_mgr_create.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../sound/pci/ctxfi/ctdaio.c", i32 703, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/pci/ctxfi/ctdaio.c", i32 537, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @get_daio_rsc._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @get_daio_rsc._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @idx_20k1, !15, !"idx_20k1", i1 false, i1 false}
!15 = !{!"../sound/pci/ctxfi/ctdaio.c", i32 32, i32 34}
!16 = !{ptr @idx_20k2, !17, !"idx_20k2", i1 false, i1 false}
!17 = !{!"../sound/pci/ctxfi/ctdaio.c", i32 43, i32 34}
!18 = !{ptr @daio_out_rsc_ops, !19, !"daio_out_rsc_ops", i1 false, i1 false}
!19 = !{!"../sound/pci/ctxfi/ctdaio.c", i32 82, i32 29}
!20 = !{ptr @daio_in_rsc_ops_20k1, !21, !"daio_in_rsc_ops_20k1", i1 false, i1 false}
!21 = !{!"../sound/pci/ctxfi/ctdaio.c", i32 89, i32 29}
!22 = !{ptr @daio_in_rsc_ops_20k2, !23, !"daio_in_rsc_ops_20k2", i1 false, i1 false}
!23 = !{!"../sound/pci/ctxfi/ctdaio.c", i32 96, i32 29}
!24 = !{ptr @dao_ops, !25, !"dao_ops", i1 false, i1 false}
!25 = !{!"../sound/pci/ctxfi/ctdaio.c", i32 262, i32 33}
!26 = !{ptr @dai_ops, !27, !"dai_ops", i1 false, i1 false}
!27 = !{!"../sound/pci/ctxfi/ctdaio.c", i32 317, i32 33}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
