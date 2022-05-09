; ModuleID = '/llk/IR_all_yes/drivers/md/dm-log-userspace-transfer.c_pt.bc'
source_filename = "../drivers/md/dm-log-userspace-transfer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.cb_id = type { i32, i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.receiving_pkg = type { %struct.list_head, %struct.completion, i32, i32, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dm_ulog_request = type { i64, [129 x i8], [3 x i8], i32, i32, i32, i32, i32, [0 x i8] }
%struct.cn_msg = type { %struct.cb_id, i32, i32, i16, i16, [0 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@prealloced_ulog_tfr = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@dm_consult_userspace._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\016device-mapper: dm-log-userspace: Size of tfr exceeds preallocated size\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dm_consult_userspace\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/md/dm-log-userspace-transfer.c\00", [57 x i8] zeroinitializer }, align 32
@dm_consult_userspace._entry_ptr = internal global ptr @dm_consult_userspace._entry, section ".printk_index", align 4
@dm_ulog_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @dm_ulog_lock, i64 52), ptr getelementptr (i8, ptr @dm_ulog_lock, i64 52) }, ptr @dm_ulog_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@dm_ulog_seq = internal global { i32, [28 x i8] } zeroinitializer, align 32
@receiving_list_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@receiving_list = internal global { %struct.list_head, [24 x i8] } zeroinitializer, align 32
@dm_consult_userspace._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\013device-mapper: dm-log-userspace: Unable to send log request [%u] to userspace: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@dm_consult_userspace._entry_ptr.5 = internal global ptr @dm_consult_userspace._entry.3, section ".printk_index", align 4
@dm_consult_userspace._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\014device-mapper: dm-log-userspace: [%s] Request timed out: [%u/%u] - retrying\0A\00", [49 x i8] zeroinitializer }, align 32
@dm_consult_userspace._entry_ptr.8 = internal global ptr @dm_consult_userspace._entry.6, section ".printk_index", align 4
@prealloced_cn_msg = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ulog_cn_id = internal global { %struct.cb_id, [24 x i8] } { %struct.cb_id { i32 7, i32 1 }, [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dmlogusr\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dm_ulog_lock.wait_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dm_ulog_lock\00", [19 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"receiving_list_lock\00", [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cn_ulog_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\013device-mapper: dm-log-userspace: Incomplete message received (expected %u, got %u): [%u]\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cn_ulog_callback\00", [47 x i8] zeroinitializer }, align 32
@cn_ulog_callback._entry_ptr = internal global ptr @cn_ulog_callback._entry, section ".printk_index", align 4
@fill_pkg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"\013device-mapper: dm-log-userspace: Insufficient space to receive package [%u] (%u vs %zu)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fill_pkg\00", [23 x i8] zeroinitializer }, align 32
@fill_pkg._entry_ptr = internal global ptr @fill_pkg._entry, section ".printk_index", align 4
@___asan_gen_.18 = private unnamed_addr constant [20 x i8] c"prealloced_ulog_tfr\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 33, i32 32 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 187, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant [13 x i8] c"dm_ulog_lock\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [12 x i8] c"dm_ulog_seq\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 18, i32 17 }
@___asan_gen_.39 = private unnamed_addr constant [20 x i8] c"receiving_list_lock\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [15 x i8] c"receiving_list\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 54, i32 25 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 231, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 245, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [18 x i8] c"prealloced_cn_msg\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 32, i32 23 }
@___asan_gen_.60 = private unnamed_addr constant [11 x i8] c"ulog_cn_id\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 35, i32 21 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 274, i32 35 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 40, i32 8 }
@___asan_gen_.72 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 87, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 53, i32 8 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 144, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private constant [42 x i8] c"../drivers/md/dm-log-userspace-transfer.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 111, i32 4 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @cn_ulog_callback._entry, ptr @cn_ulog_callback._entry_ptr, ptr @dm_consult_userspace._entry, ptr @dm_consult_userspace._entry.3, ptr @dm_consult_userspace._entry.6, ptr @dm_consult_userspace._entry_ptr, ptr @dm_consult_userspace._entry_ptr.5, ptr @dm_consult_userspace._entry_ptr.8, ptr @fill_pkg._entry, ptr @fill_pkg._entry_ptr, ptr @prealloced_ulog_tfr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @dm_ulog_lock, ptr @dm_ulog_seq, ptr @receiving_list_lock, ptr @receiving_list, ptr @.str.4, ptr @.str.7, ptr @prealloced_cn_msg, ptr @ulog_cn_id, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @init_completion.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prealloced_ulog_tfr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_consult_userspace._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_ulog_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_ulog_seq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @receiving_list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @receiving_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_consult_userspace._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_consult_userspace._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prealloced_cn_msg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ulog_cn_id to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cn_ulog_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fill_pkg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_consult_userspace(ptr noundef %uuid, i64 noundef %luid, i32 noundef %request_type, ptr noundef readonly %data, i32 noundef %data_size, ptr noundef %rdata, ptr noundef %rdata_size) local_unnamed_addr #0 align 64 {
entry:
  %dummy = alloca i32, align 4
  %pkg = alloca %struct.receiving_pkg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy) #8
  %0 = ptrtoint ptr %dummy to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %dummy, align 4
  %1 = load ptr, ptr @prealloced_ulog_tfr, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %pkg) #8
  %2 = call ptr @memset(ptr %pkg, i32 255, i32 80)
  call void @__sanitizer_cov_trace_const_cmp4(i32 332, i32 %data_size)
  %cmp = icmp ugt i32 %data_size, 332
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %rdata_size, null
  %spec.store.select = select i1 %tobool.not, ptr %dummy, ptr %rdata_size
  %uuid3 = getelementptr inbounds %struct.dm_ulog_request, ptr %1, i32 0, i32 1
  %version = getelementptr inbounds %struct.dm_ulog_request, ptr %1, i32 0, i32 3
  %seq = getelementptr inbounds %struct.dm_ulog_request, ptr %1, i32 0, i32 5
  %and = and i32 %request_type, 255
  %request_type5 = getelementptr inbounds %struct.dm_ulog_request, ptr %1, i32 0, i32 6
  %data_size6 = getelementptr inbounds %struct.dm_ulog_request, ptr %1, i32 0, i32 7
  %tobool7.not = icmp eq ptr %data, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_size)
  %tobool8.not = icmp eq i32 %data_size, 0
  %or.cond = or i1 %tobool7.not, %tobool8.not
  %data10 = getelementptr inbounds %struct.dm_ulog_request, ptr %1, i32 0, i32 8
  %complete = getelementptr inbounds %struct.receiving_pkg, ptr %pkg, i32 0, i32 1
  %wait.i = getelementptr inbounds %struct.receiving_pkg, ptr %pkg, i32 0, i32 1, i32 1
  %seq14 = getelementptr inbounds %struct.receiving_pkg, ptr %pkg, i32 0, i32 2
  %data_size15 = getelementptr inbounds %struct.receiving_pkg, ptr %pkg, i32 0, i32 4
  %data16 = getelementptr inbounds %struct.receiving_pkg, ptr %pkg, i32 0, i32 5
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %pkg, i32 0, i32 1
  %error = getelementptr inbounds %struct.receiving_pkg, ptr %pkg, i32 0, i32 3
  br label %resend

resend:                                           ; preds = %resend.backedge, %if.end
  call void @mutex_lock_nested(ptr noundef nonnull @dm_ulog_lock, i32 noundef 0) #8
  %3 = call ptr @memset(ptr %1, i32 0, i32 492)
  %4 = call ptr @memcpy(ptr %uuid3, ptr %uuid, i32 129)
  %5 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %version, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %luid, ptr %1, align 8
  %7 = load i32, ptr @dm_ulog_seq, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr @dm_ulog_seq, align 4
  %8 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %seq, align 4
  %9 = ptrtoint ptr %request_type5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and, ptr %request_type5, align 8
  %10 = ptrtoint ptr %data_size6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %data_size, ptr %data_size6, align 4
  br i1 %or.cond, label %resend.if.end12_crit_edge, label %if.then9

resend.if.end12_crit_edge:                        ; preds = %resend
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then9:                                         ; preds = %resend
  call void @__sanitizer_cov_trace_pc() #10
  %11 = call ptr @memcpy(ptr %data10, ptr %data, i32 %data_size)
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %resend.if.end12_crit_edge
  %12 = call ptr @memset(ptr %pkg, i32 0, i32 80)
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @init_completion.__key) #8
  %13 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %seq, align 4
  %15 = ptrtoint ptr %seq14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %seq14, align 4
  %16 = ptrtoint ptr %data_size15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %spec.store.select, ptr %data_size15, align 4
  %17 = ptrtoint ptr %data16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %rdata, ptr %data16, align 4
  call void @_raw_spin_lock(ptr noundef nonnull @receiving_list_lock) #8
  %18 = load ptr, ptr @receiving_list, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %pkg, ptr noundef nonnull @receiving_list, ptr noundef %18) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end12.list_add.exit_crit_edge

if.end12.list_add.exit_crit_edge:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %pkg, ptr %prev1.i.i, align 4
  %20 = ptrtoint ptr %pkg to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %18, ptr %pkg, align 4
  %21 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @receiving_list, ptr %prev3.i.i, align 4
  store volatile ptr %pkg, ptr @receiving_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end12.list_add.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @receiving_list_lock) #8
  %22 = load ptr, ptr @prealloced_cn_msg, align 4
  %23 = getelementptr inbounds i8, ptr %22, i32 8
  %24 = call ptr @memset(ptr %23, i32 0, i32 12)
  %25 = load i32, ptr @ulog_cn_id, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %22, align 4
  %27 = load i32, ptr getelementptr inbounds (%struct.cb_id, ptr @ulog_cn_id, i32 0, i32 1), align 4
  %val.i = getelementptr inbounds %struct.cb_id, ptr %22, i32 0, i32 1
  %28 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %val.i, align 4
  %29 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %seq, align 4
  %31 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %23, align 4
  %32 = ptrtoint ptr %data_size6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data_size6, align 4
  %34 = trunc i32 %33 to i16
  %conv.i = add i16 %34, 160
  %len.i = getelementptr inbounds %struct.cn_msg, ptr %22, i32 0, i32 3
  %35 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i, ptr %len.i, align 4
  %36 = call i32 @llvm.read_register.i32(metadata !46) #8
  %and.i.i.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %and.i.i = and i32 %39, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 3264, i32 2592
  %call3.i = call i32 @cn_netlink_send(ptr noundef %22, i32 noundef 0, i32 noundef 0, i32 noundef %cond.i.i) #8
  call void @mutex_unlock(ptr noundef nonnull @dm_ulog_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool18.not = icmp eq i32 %call3.i, 0
  br i1 %tobool18.not, label %if.end26, label %do.end22

do.end22:                                         ; preds = %list_add.exit
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %request_type, i32 noundef %call3.i) #11
  call void @_raw_spin_lock(ptr noundef nonnull @receiving_list_lock) #8
  %call.i.i74 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %pkg) #8
  br i1 %call.i.i74, label %if.end.i.i75, label %do.end22.list_del_init.exit_crit_edge

do.end22.list_del_init.exit_crit_edge:            ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i75:                                     ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev3.i.i, align 4
  %42 = ptrtoint ptr %pkg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pkg, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev1.i.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %43, ptr %41, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i75, %do.end22.list_del_init.exit_crit_edge
  %46 = ptrtoint ptr %pkg to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %pkg, ptr %pkg, align 4
  %47 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %pkg, ptr %prev3.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @receiving_list_lock) #8
  br label %cleanup

if.end26:                                         ; preds = %list_add.exit
  %call28 = call i32 @wait_for_completion_timeout(ptr noundef %complete, i32 noundef 1500) #8
  call void @_raw_spin_lock(ptr noundef nonnull @receiving_list_lock) #8
  %call.i.i76 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %pkg) #8
  br i1 %call.i.i76, label %if.end.i.i79, label %if.end26.list_del_init.exit81_crit_edge

if.end26.list_del_init.exit81_crit_edge:          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit81

if.end.i.i79:                                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev3.i.i, align 4
  %50 = ptrtoint ptr %pkg to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pkg, align 4
  %prev1.i.i.i78 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i.i78 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev1.i.i.i78, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %51, ptr %49, align 4
  br label %list_del_init.exit81

list_del_init.exit81:                             ; preds = %if.end.i.i79, %if.end26.list_del_init.exit81_crit_edge
  %54 = ptrtoint ptr %pkg to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %pkg, ptr %pkg, align 4
  %55 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %pkg, ptr %prev3.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @receiving_list_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool30.not = icmp eq i32 %call28, 0
  br i1 %tobool30.not, label %do.end34, label %if.end42

do.end34:                                         ; preds = %list_del_init.exit81
  call void @__sanitizer_cov_trace_pc() #10
  %call36 = call i32 @strlen(ptr noundef %uuid) #12
  %56 = call i32 @llvm.usub.sat.i32(i32 %call36, i32 8)
  %cond = getelementptr i8, ptr %uuid, i32 %56
  %57 = ptrtoint ptr %seq14 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %seq14, align 4
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %cond, i32 noundef %request_type, i32 noundef %58) #11
  br label %resend.backedge

resend.backedge:                                  ; preds = %if.end42.resend.backedge_crit_edge, %do.end34
  br label %resend

if.end42:                                         ; preds = %list_del_init.exit81
  %59 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %60)
  %cmp43 = icmp eq i32 %60, -11
  br i1 %cmp43, label %if.end42.resend.backedge_crit_edge, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end42.resend.backedge_crit_edge:               ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %resend.backedge

cleanup:                                          ; preds = %if.end42.cleanup_crit_edge, %list_del_init.exit, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call3.i, %list_del_init.exit ], [ %60, %if.end42.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %pkg) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_ulog_tfr_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  store volatile ptr @receiving_list, ptr @receiving_list, align 4
  store ptr @receiving_list, ptr getelementptr inbounds (%struct.list_head, ptr @receiving_list, i32 0, i32 1), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 512) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  store ptr %call7.i, ptr @prealloced_cn_msg, align 4
  %add.ptr = getelementptr i8, ptr %call7.i, i32 20
  store ptr %add.ptr, ptr @prealloced_ulog_tfr, align 4
  %call1 = tail call i32 @cn_add_callback(ptr noundef nonnull @ulog_cn_id, ptr noundef nonnull @.str.9, ptr noundef nonnull @cn_ulog_callback) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %1 = load ptr, ptr @prealloced_cn_msg, align 4
  tail call void @kfree(ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cn_add_callback(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cn_ulog_callback(ptr noundef readonly %msg, ptr nocapture noundef readnone %nsp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.cn_msg, ptr %msg, i32 1
  %call = tail call zeroext i1 @capable(i32 noundef 21) #8
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull @receiving_list_lock) #8
  %len = getelementptr inbounds %struct.cn_msg, ptr %msg, i32 0, i32 3
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %len, align 4
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %tobool.not.i = icmp eq ptr %msg, null
  br i1 %tobool.not.i, label %if.then2.cond.end5.i_crit_edge, label %cond.true.i

if.then2.cond.end5.i_crit_edge:                   ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end5.i

cond.true.i:                                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %seq.i = getelementptr inbounds %struct.cn_msg, ptr %msg, i32 0, i32 1
  %2 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %seq.i, align 4
  br label %cond.end5.i

cond.end5.i:                                      ; preds = %cond.true.i, %if.then2.cond.end5.i_crit_edge
  %cond6.i = phi i32 [ %3, %cond.true.i ], [ 0, %if.then2.cond.end5.i_crit_edge ]
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %cond.end5.i
  %pkg.0.in.i = phi ptr [ @receiving_list, %cond.end5.i ], [ %pkg.0.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %pkg.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %pkg.0.i = load ptr, ptr %pkg.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %pkg.0.i, @receiving_list
  br i1 %cmp.not.i, label %for.cond.i.if.end15_crit_edge, label %for.body.i

for.cond.i.if.end15_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

for.body.i:                                       ; preds = %for.cond.i
  %seq7.i = getelementptr inbounds %struct.receiving_pkg, ptr %pkg.0.i, i32 0, i32 2
  %5 = ptrtoint ptr %seq7.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %seq7.i, align 4
  %cmp8.not.i = icmp eq i32 %cond6.i, %6
  br i1 %cmp8.not.i, label %if.end.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

if.end.i:                                         ; preds = %for.body.i
  br i1 %tobool.not.i, label %if.else.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end.i
  %ack.i = getelementptr inbounds %struct.cn_msg, ptr %msg, i32 0, i32 2
  %7 = ptrtoint ptr %ack.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ack.i, align 4
  %sub.i = sub i32 0, %8
  %error.i = getelementptr inbounds %struct.receiving_pkg, ptr %pkg.0.i, i32 0, i32 3
  %9 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub.i, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %8)
  %cmp12.not.i = icmp eq i32 %8, 11
  br i1 %cmp12.not.i, label %if.then10.i.if.end32.i_crit_edge, label %if.then13.i

if.then10.i.if.end32.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i

if.then13.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  %data_size.i = getelementptr inbounds %struct.receiving_pkg, ptr %pkg.0.i, i32 0, i32 4
  %10 = ptrtoint ptr %data_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data_size.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %11, align 4
  br label %if.end32.i

if.else.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 156)
  %13 = load i32, ptr inttoptr (i32 156 to ptr), align 4
  %data_size16.i = getelementptr inbounds %struct.receiving_pkg, ptr %pkg.0.i, i32 0, i32 4
  %14 = ptrtoint ptr %data_size16.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data_size16.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %17)
  %cmp17.i = icmp ugt i32 %13, %17
  br i1 %cmp17.i, label %do.end.i, label %if.else24.i

do.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 152)
  %18 = load i32, ptr inttoptr (i32 152 to ptr), align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %18, i32 noundef %13, i32 noundef %17) #11
  %19 = ptrtoint ptr %data_size16.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data_size16.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %20, align 4
  %error23.i = getelementptr inbounds %struct.receiving_pkg, ptr %pkg.0.i, i32 0, i32 3
  %22 = ptrtoint ptr %error23.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -28, ptr %error23.i, align 4
  br label %if.end32.i

if.else24.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 144)
  %23 = load i32, ptr inttoptr (i32 144 to ptr), align 16
  %error26.i = getelementptr inbounds %struct.receiving_pkg, ptr %pkg.0.i, i32 0, i32 3
  %24 = ptrtoint ptr %error26.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %error26.i, align 4
  %data.i = getelementptr inbounds %struct.receiving_pkg, ptr %pkg.0.i, i32 0, i32 5
  %25 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i, align 4
  call void @__asan_load4_noabort(i32 156)
  %27 = load i32, ptr inttoptr (i32 156 to ptr), align 4
  %28 = call ptr @memcpy(ptr %26, ptr inttoptr (i32 160 to ptr), i32 %27)
  %29 = load i32, ptr inttoptr (i32 156 to ptr), align 4
  %30 = ptrtoint ptr %data_size16.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data_size16.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %29, ptr %31, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.else24.i, %do.end.i, %if.then13.i, %if.then10.i.if.end32.i_crit_edge
  %complete.i = getelementptr inbounds %struct.receiving_pkg, ptr %pkg.0.i, i32 0, i32 1
  tail call void @complete(ptr noundef %complete.i) #8
  br label %if.end15

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 160, i16 %1)
  %cmp6 = icmp ult i16 %1, 160
  br i1 %cmp6, label %do.end, label %if.else12

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %seq = getelementptr inbounds %struct.cn_msg, ptr %msg, i32 0, i32 1
  %33 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %seq, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef 160, i32 noundef %conv, i32 noundef %34) #11
  br label %if.end15

if.else12:                                        ; preds = %if.else
  %tobool1.not.i = icmp eq ptr %add.ptr, null
  br i1 %tobool1.not.i, label %if.else12.cond.end5.i23_crit_edge, label %cond.true2.i

if.else12.cond.end5.i23_crit_edge:                ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end5.i23

cond.true2.i:                                     ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #10
  %seq3.i = getelementptr %struct.cn_msg, ptr %msg, i32 8, i32 1
  %35 = ptrtoint ptr %seq3.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %seq3.i, align 4
  br label %cond.end5.i23

cond.end5.i23:                                    ; preds = %cond.true2.i, %if.else12.cond.end5.i23_crit_edge
  %cond6.i22 = phi i32 [ 0, %if.else12.cond.end5.i23_crit_edge ], [ %36, %cond.true2.i ]
  br label %for.cond.i27

for.cond.i27:                                     ; preds = %for.body.i30.for.cond.i27_crit_edge, %cond.end5.i23
  %pkg.0.in.i24 = phi ptr [ @receiving_list, %cond.end5.i23 ], [ %pkg.0.i25, %for.body.i30.for.cond.i27_crit_edge ]
  %37 = ptrtoint ptr %pkg.0.in.i24 to i32
  call void @__asan_load4_noabort(i32 %37)
  %pkg.0.i25 = load ptr, ptr %pkg.0.in.i24, align 4
  %cmp.not.i26 = icmp eq ptr %pkg.0.i25, @receiving_list
  br i1 %cmp.not.i26, label %for.cond.i27.if.end15_crit_edge, label %for.body.i30

for.cond.i27.if.end15_crit_edge:                  ; preds = %for.cond.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

for.body.i30:                                     ; preds = %for.cond.i27
  %seq7.i28 = getelementptr inbounds %struct.receiving_pkg, ptr %pkg.0.i25, i32 0, i32 2
  %38 = ptrtoint ptr %seq7.i28 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %seq7.i28, align 4
  %cmp8.not.i29 = icmp eq i32 %cond6.i22, %39
  br i1 %cmp8.not.i29, label %if.end.i31, label %for.body.i30.for.cond.i27_crit_edge

for.body.i30.for.cond.i27_crit_edge:              ; preds = %for.body.i30
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i27

if.end.i31:                                       ; preds = %for.body.i30
  %data_size15.i = getelementptr %struct.cn_msg, ptr %msg, i32 8, i32 3
  %40 = ptrtoint ptr %data_size15.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %data_size15.i, align 4
  %data_size16.i32 = getelementptr inbounds %struct.receiving_pkg, ptr %pkg.0.i25, i32 0, i32 4
  %42 = ptrtoint ptr %data_size16.i32 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data_size16.i32, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %45)
  %cmp17.i33 = icmp ugt i32 %41, %45
  br i1 %cmp17.i33, label %do.end.i37, label %if.else24.i40

do.end.i37:                                       ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #10
  %request_type.i = getelementptr %struct.cn_msg, ptr %msg, i32 8, i32 2
  %46 = ptrtoint ptr %request_type.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %request_type.i, align 8
  %call.i35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %47, i32 noundef %41, i32 noundef %45) #11
  %48 = ptrtoint ptr %data_size16.i32 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data_size16.i32, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %49, align 4
  %error23.i36 = getelementptr inbounds %struct.receiving_pkg, ptr %pkg.0.i25, i32 0, i32 3
  %51 = ptrtoint ptr %error23.i36 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -28, ptr %error23.i36, align 4
  br label %if.end32.i42

if.else24.i40:                                    ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #10
  %error25.i = getelementptr %struct.cn_msg, ptr %msg, i32 8, i32 0, i32 1
  %52 = ptrtoint ptr %error25.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %error25.i, align 8
  %error26.i38 = getelementptr inbounds %struct.receiving_pkg, ptr %pkg.0.i25, i32 0, i32 3
  %54 = ptrtoint ptr %error26.i38 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %error26.i38, align 4
  %data.i39 = getelementptr inbounds %struct.receiving_pkg, ptr %pkg.0.i25, i32 0, i32 5
  %55 = ptrtoint ptr %data.i39 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data.i39, align 4
  %data27.i = getelementptr %struct.cn_msg, ptr %msg, i32 9
  %57 = ptrtoint ptr %data_size15.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %data_size15.i, align 4
  %59 = call ptr @memcpy(ptr %56, ptr %data27.i, i32 %58)
  %60 = load i32, ptr %data_size15.i, align 4
  %61 = ptrtoint ptr %data_size16.i32 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data_size16.i32, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %60, ptr %62, align 4
  br label %if.end32.i42

if.end32.i42:                                     ; preds = %if.else24.i40, %do.end.i37
  %complete.i41 = getelementptr inbounds %struct.receiving_pkg, ptr %pkg.0.i25, i32 0, i32 1
  tail call void @complete(ptr noundef %complete.i41) #8
  br label %if.end15

if.end15:                                         ; preds = %if.end32.i42, %for.cond.i27.if.end15_crit_edge, %do.end, %if.end32.i, %for.cond.i.if.end15_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @receiving_list_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_ulog_tfr_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @cn_del_callback(ptr noundef nonnull @ulog_cn_id) #8
  %0 = load ptr, ptr @prealloced_cn_msg, align 4
  tail call void @kfree(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cn_del_callback(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cn_netlink_send(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !18, !20, !22, !24, !26, !27, !28, !30, !31, !33, !34, !36, !38, !39, !40, !41, !43, !44, !45}
!llvm.named.register.sp = !{!46}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/md/dm-log-userspace-transfer.c", i32 187, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @dm_consult_userspace._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @dm_consult_userspace._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/md/dm-log-userspace-transfer.c", i32 231, i32 3}
!8 = !{ptr @dm_consult_userspace._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @dm_consult_userspace._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/md/dm-log-userspace-transfer.c", i32 245, i32 3}
!12 = !{ptr @dm_consult_userspace._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @dm_consult_userspace._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/md/dm-log-userspace-transfer.c", i32 274, i32 35}
!16 = !{ptr @dm_ulog_seq, !17, !"dm_ulog_seq", i1 false, i1 false}
!17 = !{!"../drivers/md/dm-log-userspace-transfer.c", i32 18, i32 17}
!18 = !{ptr @prealloced_cn_msg, !19, !"prealloced_cn_msg", i1 false, i1 false}
!19 = !{!"../drivers/md/dm-log-userspace-transfer.c", i32 32, i32 23}
!20 = !{ptr @prealloced_ulog_tfr, !21, !"prealloced_ulog_tfr", i1 false, i1 false}
!21 = !{!"../drivers/md/dm-log-userspace-transfer.c", i32 33, i32 32}
!22 = !{ptr @receiving_list, !23, !"receiving_list", i1 false, i1 false}
!23 = !{!"../drivers/md/dm-log-userspace-transfer.c", i32 54, i32 25}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/md/dm-log-userspace-transfer.c", i32 40, i32 8}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @dm_ulog_lock, !25, !"dm_ulog_lock", i1 false, i1 false}
!28 = !{ptr @init_completion.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../include/linux/completion.h", i32 87, i32 2}
!30 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/md/dm-log-userspace-transfer.c", i32 53, i32 8}
!33 = !{ptr @receiving_list_lock, !32, !"receiving_list_lock", i1 false, i1 false}
!34 = !{ptr @ulog_cn_id, !35, !"ulog_cn_id", i1 false, i1 false}
!35 = !{!"../drivers/md/dm-log-userspace-transfer.c", i32 35, i32 21}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/md/dm-log-userspace-transfer.c", i32 144, i32 3}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @cn_ulog_callback._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @cn_ulog_callback._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/md/dm-log-userspace-transfer.c", i32 111, i32 4}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @fill_pkg._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @fill_pkg._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{!"sp"}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
