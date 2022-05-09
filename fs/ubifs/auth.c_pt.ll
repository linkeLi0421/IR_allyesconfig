; ModuleID = '/llk/IR_all_yes/fs/ubifs/auth.c_pt.bc'
source_filename = "../fs/ubifs/auth.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.key_type = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ubifs_info = type { ptr, ptr, i32, i64, i64, %struct.spinlock, i32, i32, [16 x i8], i32, i32, i32, %struct.mutex, i32, i64, %struct.rb_root, i64, %struct.spinlock, i32, ptr, i64, i64, %struct.list_head, i32, %struct.rw_semaphore, i32, %struct.spinlock, %struct.wait_queue_head, %struct.kobject, %struct.completion, i16, %struct.mutex, %struct.ubifs_zbranch, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.rb_root, ptr, ptr, i32, i32, %struct.mutex, %struct.bu_info, %struct.mutex, ptr, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, [14 x %struct.ubifs_node_range], ptr, %struct.ubi_device_info, %struct.ubi_volume_info, %struct.rb_root, %struct.list_head, %struct.list_head, ptr, ptr, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, [24 x i8], i32, i32, i32, ptr, %struct.list_head, i32, i32, i32, %struct.list_head, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [3 x %struct.ubifs_lpt_heap], %struct.ubifs_lpt_heap, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, i32, i64, i64, %struct.kuid_t, %struct.kgid_t, ptr, ptr, i32, ptr, ptr, i32, ptr, i8, %struct.list_head, %struct.list_head, i64, %struct.list_head, ptr, %struct.rb_root, %struct.ubifs_mount_opts, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ubifs_zbranch = type { %union.ubifs_key, %union.anon.84, i32, i32, i32, [64 x i8] }
%union.ubifs_key = type { [1 x i64] }
%union.anon.84 = type { ptr }
%struct.bu_info = type { %union.ubifs_key, [32 x %struct.ubifs_zbranch], ptr, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.ubifs_lp_stats = type { i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.ubifs_budg_info = type { i64, i64, i64, i64, i64, i32, i8, i32, i32, i32 }
%struct.ubifs_node_range = type { %union.anon.85, i32 }
%union.anon.85 = type { i32 }
%struct.ubi_device_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ubi_volume_info = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ubifs_lpt_heap = type { ptr, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.rb_root = type { ptr }
%struct.ubifs_mount_opts = type { i16, [2 x i8] }
%struct.ubifs_ch = type { i32, i32, i64, i32, i8, i8, [2 x i8] }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.ubifs_auth_node = type { %struct.ubifs_ch, [0 x i8] }
%struct.ubifs_scan_leb = type { i32, i32, %struct.list_head, i32, ptr }
%struct.ubifs_scan_node = type { %struct.list_head, %union.ubifs_key, i64, i32, i32, i32, ptr }
%struct.ubifs_sig_node = type { %struct.ubifs_ch, i32, i32, [32 x i8], [0 x i8] }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.6, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.7, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.8, %union.anon.69, ptr }
%union.anon.6 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.7 = type { i64 }
%union.anon.8 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.9, ptr, ptr, ptr }
%union.anon.9 = type { i32 }
%union.anon.69 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.user_key_payload = type { %struct.callback_head, i16, [6 x i8], [0 x i8] }
%struct.callback_head = type { ptr, ptr }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"...\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"hash mismatch on node at LEB %d:%d\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hash expected:   %*ph%s\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hash calculated: %*ph%s\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to find signature node\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Signature node is of wrong type\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid signature len %d\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Signature type %d is not supported\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to verify signature\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Successfully verified super block signature\00", [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"authentication hash name needed with authentication\00", [44 x i8] zeroinitializer }, align 32
@hash_algo_name = external dso_local constant [20 x ptr], align 4
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unknown hash algo %s specified\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hmac(%s)\00", [23 x i8] zeroinitializer }, align 32
@key_type_logon = external dso_local global %struct.key_type, align 4
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to request key: %ld\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"key type must be logon\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Can not allocate %s: %d\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"hash %s is bigger than maximum allowed hash size (%d > %d)\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"hmac %s is bigger than maximum allowed hmac size (%d > %d)\00", [37 x i8] zeroinitializer }, align 32
@__const.ubifs_hmac_wkm.well_known_message = private unnamed_addr constant [6 x i8] c"UBIFS\00", align 1
@user_key_payload_locked.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/keys/user-type.h\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ofs_hmac > 8\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/ubifs/auth.c\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ofs_hmac + hmac_len < len\00", [38 x i8] zeroinitializer }, align 32
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 142, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 142, i32 39 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 148, i32 15 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 149, i32 15 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 150, i32 15 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 206, i32 16 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 214, i32 16 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 222, i32 16 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 228, i32 16 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 240, i32 16 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 242, i32 16 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 264, i32 16 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 271, i32 16 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 276, i32 43 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 282, i32 16 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 290, i32 16 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 305, i32 16 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 312, i32 16 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 327, i32 16 }
@___asan_gen_.85 = private unnamed_addr constant [28 x i8] c"../include/keys/user-type.h\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 53, i32 36 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 395, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.94 = private constant [19 x i8] c"../fs/ubifs/auth.c\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 396, i32 2 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__ubifs_node_calc_hash(ptr nocapture noundef readonly %c, ptr noundef %node, ptr noundef %hash) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hash_tfm = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 179
  %0 = ptrtoint ptr %hash_tfm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hash_tfm, align 8
  %len = getelementptr inbounds %struct.ubifs_ch, ptr %node, i32 0, i32 3
  %2 = ptrtoint ptr %len to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %len, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %call = tail call i32 @crypto_shash_tfm_digest(ptr noundef %1, ptr noundef %node, i32 noundef %4, ptr noundef %hash) #7
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_tfm_digest(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_prepare_auth_node(ptr noundef %c, ptr noundef %node, ptr noundef %inhash) local_unnamed_addr #0 align 64 {
entry:
  %hash = alloca [64 x i8], align 1
  %__hash_desc_desc = alloca [376 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hash) #7
  %0 = call ptr @memset(ptr %hash, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %__hash_desc_desc) #7
  %1 = call ptr @memset(ptr %__hash_desc_desc, i32 255, i32 376)
  %hash_tfm = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 179
  %2 = ptrtoint ptr %hash_tfm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hash_tfm, align 8
  %4 = ptrtoint ptr %__hash_desc_desc to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %__hash_desc_desc, align 8
  %authenticated.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %5 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load.i.i = load i16, ptr %authenticated.i.i, align 8
  %6 = and i16 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not.i = icmp eq i16 %6, 0
  br i1 %tobool.not.i, label %entry.ubifs_shash_copy_state.exit_crit_edge, label %if.end8.i.i.i

entry.ubifs_shash_copy_state.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ubifs_shash_copy_state.exit

if.end8.i.i.i:                                    ; preds = %entry
  %7 = ptrtoint ptr %inhash to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %inhash, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 128
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3136) #10
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end8.i.i.i.ubifs_shash_copy_state.exit_crit_edge, label %if.end.i.i

if.end8.i.i.i.ubifs_shash_copy_state.exit_crit_edge: ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ubifs_shash_copy_state.exit

if.end.i.i:                                       ; preds = %if.end8.i.i.i
  %11 = ptrtoint ptr %inhash to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %inhash, align 8
  %__crt_alg.i.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %12, i32 0, i32 2, i32 3
  %13 = ptrtoint ptr %__crt_alg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %__crt_alg.i.i.i.i, align 4
  %export.i.i.i = getelementptr i8, ptr %14, i32 -236
  %15 = ptrtoint ptr %export.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %export.i.i.i, align 4
  %call1.i.i.i = tail call i32 %16(ptr noundef %inhash, ptr noundef nonnull %call9.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool3.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end5.i.i, label %if.end.i.i.out.i.i_crit_edge

if.end.i.i.out.i.i_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  %17 = ptrtoint ptr %__hash_desc_desc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %__hash_desc_desc, align 8
  %base.i.i.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %base.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %base.i.i.i.i.i, align 128
  %and.i.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i14.i.i, label %if.end5.i.i.out.i.i_crit_edge

if.end5.i.i.out.i.i_crit_edge:                    ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i.i

if.end.i14.i.i:                                   ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %__crt_alg.i.i13.i.i = getelementptr inbounds %struct.crypto_shash, ptr %18, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %__crt_alg.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %__crt_alg.i.i13.i.i, align 4
  %import.i.i.i = getelementptr i8, ptr %22, i32 -232
  %23 = ptrtoint ptr %import.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %import.i.i.i, align 8
  %call3.i.i.i = call i32 %24(ptr noundef nonnull %__hash_desc_desc, ptr noundef nonnull %call9.i.i.i) #7
  br label %out.i.i

out.i.i:                                          ; preds = %if.end.i14.i.i, %if.end5.i.i.out.i.i_crit_edge, %if.end.i.i.out.i.i_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #7
  br label %ubifs_shash_copy_state.exit

ubifs_shash_copy_state.exit:                      ; preds = %out.i.i, %if.end8.i.i.i.ubifs_shash_copy_state.exit_crit_edge, %entry.ubifs_shash_copy_state.exit_crit_edge
  %call2 = call i32 @crypto_shash_final(ptr noundef nonnull %__hash_desc_desc, ptr noundef nonnull %hash) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %__hash_desc_desc) #7
  br i1 %tobool.not, label %cleanup.cont, label %ubifs_shash_copy_state.exit.cleanup11_crit_edge

ubifs_shash_copy_state.exit.cleanup11_crit_edge:  ; preds = %ubifs_shash_copy_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup11

cleanup.cont:                                     ; preds = %ubifs_shash_copy_state.exit
  %hmac = getelementptr inbounds %struct.ubifs_auth_node, ptr %node, i32 0, i32 1
  %hmac_tfm.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 180
  %25 = ptrtoint ptr %hmac_tfm.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hmac_tfm.i, align 4
  %hash_len.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 69
  %27 = ptrtoint ptr %hash_len.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hash_len.i, align 8
  %call.i = call i32 @crypto_shash_tfm_digest(ptr noundef %26, ptr noundef nonnull %hash, i32 noundef %28, ptr noundef %hmac) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %if.end9, label %cleanup.cont.cleanup11_crit_edge

cleanup.cont.cleanup11_crit_edge:                 ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup11

if.end9:                                          ; preds = %cleanup.cont
  %node_type = getelementptr inbounds %struct.ubifs_ch, ptr %node, i32 0, i32 4
  %29 = ptrtoint ptr %node_type to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 12, ptr %node_type, align 1
  %30 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load.i.i26 = load i16, ptr %authenticated.i.i, align 8
  %31 = and i16 %bf.load.i.i26, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool.not.i27 = icmp eq i16 %31, 0
  br i1 %tobool.not.i27, label %if.end9.ubifs_auth_node_sz.exit_crit_edge, label %if.then.i28

if.end9.ubifs_auth_node_sz.exit_crit_edge:        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %ubifs_auth_node_sz.exit

if.then.i28:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %hmac_desc_len.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 181
  %32 = ptrtoint ptr %hmac_desc_len.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hmac_desc_len.i, align 8
  %add.i = add i32 %33, 24
  br label %ubifs_auth_node_sz.exit

ubifs_auth_node_sz.exit:                          ; preds = %if.then.i28, %if.end9.ubifs_auth_node_sz.exit_crit_edge
  %retval.0.i = phi i32 [ %add.i, %if.then.i28 ], [ 0, %if.end9.ubifs_auth_node_sz.exit_crit_edge ]
  call void @ubifs_prepare_node(ptr noundef %c, ptr noundef %node, i32 noundef %retval.0.i, i32 noundef 0) #7
  br label %cleanup11

cleanup11:                                        ; preds = %ubifs_auth_node_sz.exit, %cleanup.cont.cleanup11_crit_edge, %ubifs_shash_copy_state.exit.cleanup11_crit_edge
  %retval.1 = phi i32 [ 0, %ubifs_auth_node_sz.exit ], [ %call2, %ubifs_shash_copy_state.exit.cleanup11_crit_edge ], [ %call.i, %cleanup.cont.cleanup11_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hash) #7
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_final(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_prepare_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__ubifs_hash_get_desc(ptr nocapture noundef readonly %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hash_tfm = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 179
  %0 = ptrtoint ptr %hash_tfm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hash_tfm, align 8
  %authenticated.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %2 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i.i = load i16, ptr %authenticated.i.i, align 8
  %3 = and i16 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i = icmp eq i16 %3, 0
  br i1 %tobool.not.i, label %entry.ubifs_get_desc.exit_crit_edge, label %if.end8.i.i

entry.ubifs_get_desc.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ubifs_get_desc.exit

if.end8.i.i:                                      ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 128
  %add.i = add i32 %5, 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #10
  %tobool3.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool3.not.i, label %if.end8.i.i.ubifs_get_desc.exit_crit_edge, label %if.end6.i

if.end8.i.i.ubifs_get_desc.exit_crit_edge:        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ubifs_get_desc.exit

if.end6.i:                                        ; preds = %if.end8.i.i
  %6 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %call9.i.i, align 128
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base.i.i.i.i, align 128
  %and.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %crypto_shash_init.exit.i, label %if.end6.i.if.then10.i_crit_edge

if.end6.i.if.then10.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10.i

crypto_shash_init.exit.i:                         ; preds = %if.end6.i
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 0, i32 2, i32 3
  %9 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %10, i32 -256
  %11 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i.i.i.i, align 128
  %call3.i.i = tail call i32 %12(ptr noundef nonnull %call9.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool9.not.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool9.not.i, label %crypto_shash_init.exit.i.ubifs_get_desc.exit_crit_edge, label %crypto_shash_init.exit.i.if.then10.i_crit_edge

crypto_shash_init.exit.i.if.then10.i_crit_edge:   ; preds = %crypto_shash_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10.i

crypto_shash_init.exit.i.ubifs_get_desc.exit_crit_edge: ; preds = %crypto_shash_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ubifs_get_desc.exit

if.then10.i:                                      ; preds = %crypto_shash_init.exit.i.if.then10.i_crit_edge, %if.end6.i.if.then10.i_crit_edge
  %retval.0.i26.i = phi i32 [ %call3.i.i, %crypto_shash_init.exit.i.if.then10.i_crit_edge ], [ -126, %if.end6.i.if.then10.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #7
  %13 = inttoptr i32 %retval.0.i26.i to ptr
  br label %ubifs_get_desc.exit

ubifs_get_desc.exit:                              ; preds = %if.then10.i, %crypto_shash_init.exit.i.ubifs_get_desc.exit_crit_edge, %if.end8.i.i.ubifs_get_desc.exit_crit_edge, %entry.ubifs_get_desc.exit_crit_edge
  %retval.0.i = phi ptr [ %13, %if.then10.i ], [ null, %entry.ubifs_get_desc.exit_crit_edge ], [ %call9.i.i, %crypto_shash_init.exit.i.ubifs_get_desc.exit_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i.ubifs_get_desc.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_bad_hash(ptr noundef %c, ptr noundef %node, ptr noundef %hash, i32 noundef %lnum, i32 noundef %offs) local_unnamed_addr #0 align 64 {
entry:
  %calc = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hash_len = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 69
  %0 = ptrtoint ptr %hash_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hash_len, align 8
  %2 = tail call i32 @llvm.smin.i32(i32 %1, i32 20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %1)
  %cmp2.not = icmp slt i32 %1, 21
  %cond3 = select i1 %cmp2.not, ptr @.str.1, ptr @.str
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %calc) #7
  %3 = call ptr @memset(ptr %calc, i32 255, i32 64)
  %hash_tfm.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 179
  %4 = ptrtoint ptr %hash_tfm.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hash_tfm.i, align 8
  %len.i = getelementptr inbounds %struct.ubifs_ch, ptr %node, i32 0, i32 3
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %len.i, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #7
  %call.i = call i32 @crypto_shash_tfm_digest(ptr noundef %5, ptr noundef %node, i32 noundef %8, ptr noundef nonnull %calc) #7
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.2, i32 noundef %lnum, i32 noundef %offs) #7
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.3, i32 noundef %2, ptr noundef %hash, ptr noundef nonnull %cond3) #7
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.4, i32 noundef %2, ptr noundef nonnull %calc, ptr noundef nonnull %cond3) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %calc) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__ubifs_node_check_hash(ptr nocapture noundef readonly %c, ptr noundef %node, ptr noundef %expected) local_unnamed_addr #0 align 64 {
entry:
  %calc = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %calc) #7
  %0 = call ptr @memset(ptr %calc, i32 255, i32 64)
  %hash_tfm.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 179
  %1 = ptrtoint ptr %hash_tfm.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hash_tfm.i, align 8
  %len.i = getelementptr inbounds %struct.ubifs_ch, ptr %node, i32 0, i32 3
  %3 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %len.i, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  %call.i = call i32 @crypto_shash_tfm_digest(ptr noundef %2, ptr noundef %node, i32 noundef %5, ptr noundef nonnull %calc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %hash_len.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 69
  %6 = ptrtoint ptr %hash_len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hash_len.i, align 8
  %call.i.i = call i32 @__crypto_memneq(ptr noundef %expected, ptr noundef nonnull %calc, i32 noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i.i.not = icmp ne i32 %call.i.i, 0
  %. = sext i1 %cmp.not.i.i.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %calc) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_sb_verify_signature(ptr noundef %c, ptr noundef %sup) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sbuf = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 122
  %0 = ptrtoint ptr %sbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sbuf, align 8
  %call = tail call ptr @ubifs_scan(ptr noundef %c, i32 noundef 0, i32 noundef 4096, ptr noundef %1, i32 noundef 0) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %nodes_cnt = getelementptr inbounds %struct.ubifs_scan_leb, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %nodes_cnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nodes_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.5) #7
  br label %out_destroy

if.end4:                                          ; preds = %if.end
  %nodes = getelementptr inbounds %struct.ubifs_scan_leb, ptr %call, i32 0, i32 2
  %5 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nodes, align 4
  %type = getelementptr inbounds %struct.ubifs_scan_node, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %8)
  %cmp5.not = icmp eq i32 %8, 13
  br i1 %cmp5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.6) #7
  br label %out_destroy

if.end7:                                          ; preds = %if.end4
  %node = getelementptr inbounds %struct.ubifs_scan_node, ptr %6, i32 0, i32 6
  %9 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %node, align 4
  %len = getelementptr inbounds %struct.ubifs_sig_node, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %len, align 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %len8 = getelementptr inbounds %struct.ubifs_scan_node, ptr %6, i32 0, i32 5
  %14 = ptrtoint ptr %len8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len8, align 8
  %add = add i32 %15, 64
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %add)
  %cmp9 = icmp ugt i32 %13, %add
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.7, i32 noundef %13) #7
  br label %out_destroy

if.end12:                                         ; preds = %if.end7
  %type13 = getelementptr inbounds %struct.ubifs_sig_node, ptr %10, i32 0, i32 1
  %16 = ptrtoint ptr %type13 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %type13, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %17)
  %cmp14.not = icmp eq i32 %17, 16777216
  br i1 %cmp14.not, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.8, i32 noundef %18) #7
  br label %out_destroy

if.end17:                                         ; preds = %if.end12
  %sig = getelementptr inbounds %struct.ubifs_sig_node, ptr %10, i32 0, i32 4
  %call19 = tail call i32 @verify_pkcs7_signature(ptr noundef %sup, i32 noundef 4096, ptr noundef %sig, i32 noundef %13, ptr noundef null, i32 noundef 5, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool.not = icmp eq i32 %call19, 0
  br i1 %tobool.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.9) #7
  br label %out_destroy

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %c, ptr noundef nonnull @.str.10) #7
  br label %out_destroy

out_destroy:                                      ; preds = %if.else, %if.then20, %if.then15, %if.then10, %if.then6, %if.then3
  %err.0 = phi i32 [ -22, %if.then3 ], [ -22, %if.then6 ], [ -22, %if.then10 ], [ -22, %if.then15 ], [ %call19, %if.then20 ], [ 0, %if.else ]
  tail call void @ubifs_scan_destroy(ptr noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %out_destroy, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %err.0, %out_destroy ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_scan(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @verify_pkcs7_signature(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_msg(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_scan_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_init_authentication(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  %hmac_name = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %hmac_name) #7
  %0 = call ptr @memset(ptr %hmac_name, i32 255, i32 128)
  %auth_hash_name = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 183
  %1 = ptrtoint ptr %auth_hash_name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %auth_hash_name, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.11) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @match_string(ptr noundef nonnull @hash_algo_name, i32 noundef 20, ptr noundef nonnull %2) #7
  %auth_hash_algo = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 184
  %3 = ptrtoint ptr %auth_hash_algo to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call, ptr %auth_hash_algo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  %4 = ptrtoint ptr %auth_hash_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %auth_hash_name, align 8
  br i1 %cmp, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.12, ptr noundef %5) #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call7 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %hmac_name, i32 noundef 128, ptr noundef nonnull @.str.13, ptr noundef %5)
  %auth_key_name = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 182
  %6 = ptrtoint ptr %auth_key_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %auth_key_name, align 4
  %call.i = tail call ptr @request_key_tag(ptr noundef nonnull @key_type_logon, ptr noundef %7, ptr noundef null, ptr noundef null) #7
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %call.i to i32
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.14, i32 noundef %8) #7
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %sem = getelementptr inbounds %struct.key, ptr %call.i, i32 0, i32 4
  tail call void @down_read(ptr noundef %sem) #7
  %type = getelementptr inbounds %struct.key, ptr %call.i, i32 0, i32 16, i32 0, i32 2
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %type, align 8
  %cmp14.not = icmp eq ptr %10, @key_type_logon
  br i1 %cmp14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.15) #7
  br label %out

if.end16:                                         ; preds = %if.end13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sem, i32 noundef 4) #7
  %11 = ptrtoint ptr %sem to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %sem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i.not.i = icmp eq i32 %12, 0
  br i1 %cmp.i.not.i, label %land.lhs.true.i, label %if.end16.user_key_payload_locked.exit_crit_edge

if.end16.user_key_payload_locked.exit_crit_edge:  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %user_key_payload_locked.exit

land.lhs.true.i:                                  ; preds = %if.end16
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.user_key_payload_locked.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.user_key_payload_locked.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %user_key_payload_locked.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b6.i = load i1, ptr @user_key_payload_locked.__warned, align 1
  br i1 %.b6.i, label %land.lhs.true3.i.user_key_payload_locked.exit_crit_edge, label %if.then.i

land.lhs.true3.i.user_key_payload_locked.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %user_key_payload_locked.exit

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @user_key_payload_locked.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 53, ptr noundef nonnull @.str.20) #7
  br label %user_key_payload_locked.exit

user_key_payload_locked.exit:                     ; preds = %if.then.i, %land.lhs.true3.i.user_key_payload_locked.exit_crit_edge, %land.lhs.true.i.user_key_payload_locked.exit_crit_edge, %if.end16.user_key_payload_locked.exit_crit_edge
  %13 = getelementptr inbounds %struct.key, ptr %call.i, i32 0, i32 17
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %tobool18.not = icmp eq ptr %15, null
  br i1 %tobool18.not, label %user_key_payload_locked.exit.out_crit_edge, label %if.end20

user_key_payload_locked.exit.out_crit_edge:       ; preds = %user_key_payload_locked.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end20:                                         ; preds = %user_key_payload_locked.exit
  %16 = ptrtoint ptr %auth_hash_name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %auth_hash_name, align 8
  %call22 = tail call ptr @crypto_alloc_shash(ptr noundef %17, i32 noundef 0, i32 noundef 0) #7
  %hash_tfm = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 179
  %18 = ptrtoint ptr %hash_tfm to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call22, ptr %hash_tfm, align 8
  %cmp.i133 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i133, label %if.then25, label %if.end29

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %call22 to i32
  %20 = ptrtoint ptr %auth_hash_name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %auth_hash_name, align 8
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.16, ptr noundef %21, i32 noundef %19) #7
  br label %out

if.end29:                                         ; preds = %if.end20
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call22, i32 0, i32 2, i32 3
  %22 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %__crt_alg.i.i, align 4
  %digestsize.i = getelementptr i8, ptr %23, i32 -128
  %24 = ptrtoint ptr %digestsize.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %digestsize.i, align 128
  %hash_len = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 69
  %26 = ptrtoint ptr %hash_len to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %hash_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %25)
  %cmp33 = icmp sgt i32 %25, 64
  br i1 %cmp33, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %auth_hash_name to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %auth_hash_name, align 8
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.17, ptr noundef %28, i32 noundef %25, i32 noundef 64) #7
  br label %if.then73

if.end37:                                         ; preds = %if.end29
  %call39 = call ptr @crypto_alloc_shash(ptr noundef nonnull %hmac_name, i32 noundef 0, i32 noundef 0) #7
  %hmac_tfm = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 180
  %29 = ptrtoint ptr %hmac_tfm to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call39, ptr %hmac_tfm, align 4
  %cmp.i134 = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i134, label %out_free_hash, label %if.end46

if.end46:                                         ; preds = %if.end37
  %__crt_alg.i.i135 = getelementptr inbounds %struct.crypto_shash, ptr %call39, i32 0, i32 2, i32 3
  %30 = ptrtoint ptr %__crt_alg.i.i135 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__crt_alg.i.i135, align 4
  %digestsize.i136 = getelementptr i8, ptr %31, i32 -128
  %32 = ptrtoint ptr %digestsize.i136 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %digestsize.i136, align 128
  %hmac_desc_len = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 181
  %34 = ptrtoint ptr %hmac_desc_len to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %hmac_desc_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %33)
  %cmp50 = icmp sgt i32 %33, 64
  br i1 %cmp50, label %if.then51, label %if.end54

if.then51:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.18, ptr noundef nonnull %hmac_name, i32 noundef %33, i32 noundef 64) #7
  br label %if.then69

if.end54:                                         ; preds = %if.end46
  %data = getelementptr inbounds %struct.user_key_payload, ptr %15, i32 0, i32 3
  %datalen = getelementptr inbounds %struct.user_key_payload, ptr %15, i32 0, i32 1
  %35 = ptrtoint ptr %datalen to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %datalen, align 8
  %conv = zext i16 %36 to i32
  %call57 = call i32 @crypto_shash_setkey(ptr noundef %call39, ptr noundef %data, i32 noundef %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %if.end54.if.then69_crit_edge

if.end54.if.then69_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then69

if.end60:                                         ; preds = %if.end54
  %authenticated = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %37 = ptrtoint ptr %authenticated to i32
  call void @__asan_load2_noabort(i32 %37)
  %bf.load = load i16, ptr %authenticated, align 8
  %bf.set = or i16 %bf.load, 16
  store i16 %bf.set, ptr %authenticated, align 8
  %call61 = call fastcc ptr @ubifs_hash_get_desc(ptr noundef %c)
  %log_hash = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 185
  %38 = ptrtoint ptr %log_hash to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call61, ptr %log_hash, align 8
  %cmp.i137.not = icmp ugt ptr %call61, inttoptr (i32 -4096 to ptr)
  %39 = ptrtoint ptr %call61 to i32
  br i1 %cmp.i137.not, label %if.end60.if.then69_crit_edge, label %if.end60.out_crit_edge

if.end60.out_crit_edge:                           ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end60.if.then69_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then69

if.then69:                                        ; preds = %if.end60.if.then69_crit_edge, %if.end54.if.then69_crit_edge, %if.then51
  %err.0141 = phi i32 [ %call57, %if.end54.if.then69_crit_edge ], [ -22, %if.then51 ], [ %39, %if.end60.if.then69_crit_edge ]
  %40 = ptrtoint ptr %hmac_tfm to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hmac_tfm, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %41, i32 0, i32 2
  call void @crypto_destroy_tfm(ptr noundef %41, ptr noundef %base.i.i) #7
  br label %if.then73

out_free_hash:                                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %call39 to i32
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.16, ptr noundef nonnull %hmac_name, i32 noundef %42) #7
  br label %if.then73

if.then73:                                        ; preds = %out_free_hash, %if.then69, %if.then34
  %err.1151 = phi i32 [ %42, %out_free_hash ], [ %err.0141, %if.then69 ], [ -22, %if.then34 ]
  %43 = ptrtoint ptr %hash_tfm to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hash_tfm, align 8
  %base.i.i138 = getelementptr inbounds %struct.crypto_shash, ptr %44, i32 0, i32 2
  call void @crypto_destroy_tfm(ptr noundef %44, ptr noundef %base.i.i138) #7
  br label %out

out:                                              ; preds = %if.then73, %if.end60.out_crit_edge, %if.then25, %user_key_payload_locked.exit.out_crit_edge, %if.then15
  %err.2 = phi i32 [ -126, %if.then15 ], [ %19, %if.then25 ], [ %err.1151, %if.then73 ], [ -128, %user_key_payload_locked.exit.out_crit_edge ], [ 0, %if.end60.out_crit_edge ]
  call void @up_read(ptr noundef %sem) #7
  call void @key_put(ptr noundef %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then10, %if.then3, %if.then
  %retval.0 = phi i32 [ -22, %if.then3 ], [ %8, %if.then10 ], [ %err.2, %out ], [ -22, %if.then ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %hmac_name) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ubifs_hash_get_desc(ptr nocapture noundef readonly %c) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %authenticated.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %0 = ptrtoint ptr %authenticated.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %authenticated.i, align 8
  %1 = and i16 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %if.end.i.i

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

if.end.i.i:                                       ; preds = %entry
  %hash_tfm.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 179
  %2 = ptrtoint ptr %hash_tfm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hash_tfm.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 128
  %add.i.i = add i32 %5, 8
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3264) #10
  %tobool3.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.cond.end_crit_edge, label %if.end6.i.i

if.end.i.i.cond.end_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

if.end6.i.i:                                      ; preds = %if.end.i.i
  %6 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %call9.i.i.i, align 128
  %base.i.i.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %base.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base.i.i.i.i.i, align 128
  %and.i.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %crypto_shash_init.exit.i.i, label %if.end6.i.i.if.then10.i.i_crit_edge

if.end6.i.i.if.then10.i.i_crit_edge:              ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10.i.i

crypto_shash_init.exit.i.i:                       ; preds = %if.end6.i.i
  %__crt_alg.i.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %3, i32 0, i32 2, i32 3
  %9 = ptrtoint ptr %__crt_alg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %__crt_alg.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %10, i32 -256
  %11 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i.i.i.i.i, align 128
  %call3.i.i.i = tail call i32 %12(ptr noundef nonnull %call9.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %tobool9.not.i.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %tobool9.not.i.i, label %crypto_shash_init.exit.i.i.cond.end_crit_edge, label %crypto_shash_init.exit.i.i.if.then10.i.i_crit_edge

crypto_shash_init.exit.i.i.if.then10.i.i_crit_edge: ; preds = %crypto_shash_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10.i.i

crypto_shash_init.exit.i.i.cond.end_crit_edge:    ; preds = %crypto_shash_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

if.then10.i.i:                                    ; preds = %crypto_shash_init.exit.i.i.if.then10.i.i_crit_edge, %if.end6.i.i.if.then10.i.i_crit_edge
  %retval.0.i26.i.i = phi i32 [ %call3.i.i.i, %crypto_shash_init.exit.i.i.if.then10.i.i_crit_edge ], [ -126, %if.end6.i.i.if.then10.i.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #7
  %13 = inttoptr i32 %retval.0.i26.i.i to ptr
  br label %cond.end

cond.end:                                         ; preds = %if.then10.i.i, %crypto_shash_init.exit.i.i.cond.end_crit_edge, %if.end.i.i.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond = phi ptr [ null, %entry.cond.end_crit_edge ], [ %13, %if.then10.i.i ], [ %call9.i.i.i, %crypto_shash_init.exit.i.i.cond.end_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.i.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__ubifs_exit_authentication(ptr nocapture noundef readonly %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %authenticated.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %0 = ptrtoint ptr %authenticated.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %authenticated.i, align 8
  %1 = and i16 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %hmac_tfm = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 180
  %2 = ptrtoint ptr %hmac_tfm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hmac_tfm, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %3, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %base.i.i) #7
  %hash_tfm = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 179
  %4 = ptrtoint ptr %hash_tfm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hash_tfm, align 8
  %base.i.i4 = getelementptr inbounds %struct.crypto_shash, ptr %5, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %5, ptr noundef %base.i.i4) #7
  %log_hash = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 185
  %6 = ptrtoint ptr %log_hash to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %log_hash, align 8
  tail call void @kfree(ptr noundef %7) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__ubifs_node_insert_hmac(ptr noundef %c, ptr noundef %node, i32 noundef %len, i32 noundef %ofs_hmac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %node, i32 %ofs_hmac
  %call = tail call fastcc i32 @ubifs_node_calc_hmac(ptr noundef %c, ptr noundef %node, i32 noundef %len, i32 noundef %ofs_hmac, ptr noundef %add.ptr)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ubifs_node_calc_hmac(ptr noundef %c, ptr noundef %node, i32 noundef %len, i32 noundef %ofs_hmac, ptr noundef %hmac) unnamed_addr #0 align 64 {
entry:
  %__shash_desc = alloca [376 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %__shash_desc) #7
  %0 = call ptr @memset(ptr %__shash_desc, i32 255, i32 376)
  %hmac_desc_len = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 181
  %1 = ptrtoint ptr %hmac_desc_len to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hmac_desc_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %ofs_hmac)
  %cmp = icmp slt i32 %ofs_hmac, 9
  br i1 %cmp, label %if.then, label %entry.do.body3_crit_edge, !prof !56

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef 395) #7
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry.do.body3_crit_edge
  %add = add i32 %2, %ofs_hmac
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %len)
  %cmp4.not = icmp slt i32 %add, %len
  br i1 %cmp4.not, label %do.body3.do.end16_crit_edge, label %if.then13, !prof !57

do.body3.do.end16_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16

if.then13:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i32 noundef 396) #7
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %do.body3.do.end16_crit_edge
  %hmac_tfm = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 180
  %3 = ptrtoint ptr %hmac_tfm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hmac_tfm, align 4
  %5 = ptrtoint ptr %__shash_desc to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %__shash_desc, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %4, i32 0, i32 2
  %6 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %crypto_shash_init.exit, label %do.end16.cleanup_crit_edge

do.end16.cleanup_crit_edge:                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

crypto_shash_init.exit:                           ; preds = %do.end16
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %4, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 -256
  %10 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = call i32 %11(ptr noundef nonnull %__shash_desc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool17.not = icmp eq i32 %call3.i, 0
  br i1 %tobool17.not, label %if.end19, label %crypto_shash_init.exit.cleanup_crit_edge

crypto_shash_init.exit.cleanup_crit_edge:         ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %crypto_shash_init.exit
  %add.ptr = getelementptr i8, ptr %node, i32 8
  %sub = add i32 %ofs_hmac, -8
  %call20 = call i32 @crypto_shash_update(ptr noundef nonnull %__shash_desc, ptr noundef %add.ptr, i32 noundef %sub) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.end19.cleanup_crit_edge, label %if.end23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %sub25 = sub i32 %len, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub25)
  %cmp26 = icmp sgt i32 %sub25, 0
  br i1 %cmp26, label %if.then27, label %if.end23.if.end36_crit_edge

if.end23.if.end36_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then27:                                        ; preds = %if.end23
  %add.ptr28 = getelementptr i8, ptr %node, i32 %ofs_hmac
  %add.ptr29 = getelementptr i8, ptr %add.ptr28, i32 %2
  %call32 = call i32 @crypto_shash_update(ptr noundef nonnull %__shash_desc, ptr noundef %add.ptr29, i32 noundef %sub25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.then27.cleanup_crit_edge, label %if.then27.if.end36_crit_edge

if.then27.if.end36_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end36:                                         ; preds = %if.then27.if.end36_crit_edge, %if.end23.if.end36_crit_edge
  %call37 = call i32 @crypto_shash_final(ptr noundef nonnull %__shash_desc, ptr noundef %hmac) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then27.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %crypto_shash_init.exit.cleanup_crit_edge, %do.end16.cleanup_crit_edge
  %retval.0 = phi i32 [ %call37, %if.end36 ], [ %call3.i, %crypto_shash_init.exit.cleanup_crit_edge ], [ %call20, %if.end19.cleanup_crit_edge ], [ %call32, %if.then27.cleanup_crit_edge ], [ -126, %do.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %__shash_desc) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__ubifs_node_verify_hmac(ptr noundef %c, ptr noundef %node, i32 noundef %len, i32 noundef %ofs_hmac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hmac_desc_len = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 181
  %0 = ptrtoint ptr %hmac_desc_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hmac_desc_len, align 8
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %1, i32 noundef 3136) #10
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @ubifs_node_calc_hmac(ptr noundef %c, ptr noundef %node, i32 noundef %len, i32 noundef %ofs_hmac, ptr noundef nonnull %call9.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call9.i) #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %node, i32 %ofs_hmac
  %call.i = tail call i32 @__crypto_memneq(ptr noundef nonnull %call9.i, ptr noundef %add.ptr, i32 noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i.not = icmp ne i32 %call.i, 0
  tail call void @kfree(ptr noundef nonnull %call9.i) #7
  %. = sext i1 %cmp.not.i.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ -12, %entry.cleanup_crit_edge ], [ %., %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__ubifs_shash_copy_state(ptr nocapture readnone %c, ptr noundef %src, ptr noundef %target) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 128
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3136) #10
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %src, align 8
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %5, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %__crt_alg.i.i, align 4
  %export.i = getelementptr i8, ptr %7, i32 -236
  %8 = ptrtoint ptr %export.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %export.i, align 4
  %call1.i = tail call i32 %9(ptr noundef %src, ptr noundef nonnull %call9.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool3.not = icmp eq i32 %call1.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end5:                                          ; preds = %if.end
  %10 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %target, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i14, label %if.end5.out_crit_edge

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end.i14:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %__crt_alg.i.i13 = getelementptr inbounds %struct.crypto_shash, ptr %11, i32 0, i32 2, i32 3
  %14 = ptrtoint ptr %__crt_alg.i.i13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %__crt_alg.i.i13, align 4
  %import.i = getelementptr i8, ptr %15, i32 -232
  %16 = ptrtoint ptr %import.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %import.i, align 8
  %call3.i = tail call i32 %17(ptr noundef %target, ptr noundef nonnull %call9.i) #7
  br label %out

out:                                              ; preds = %if.end.i14, %if.end5.out_crit_edge, %if.end.out_crit_edge
  %err.0 = phi i32 [ %call1.i, %if.end.out_crit_edge ], [ %call3.i, %if.end.i14 ], [ -126, %if.end5.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_hmac_wkm(ptr nocapture noundef readonly %c, ptr noundef %hmac) local_unnamed_addr #0 align 64 {
entry:
  %__shash_desc = alloca [376 x i8], align 8
  %well_known_message = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %__shash_desc) #7
  %0 = call ptr @memset(ptr %__shash_desc, i32 255, i32 376)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %well_known_message) #7
  %1 = call ptr @memcpy(ptr %well_known_message, ptr @__const.ubifs_hmac_wkm.well_known_message, i32 6)
  %authenticated.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %2 = ptrtoint ptr %authenticated.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %authenticated.i, align 8
  %3 = and i16 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %hmac_tfm = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 180
  %4 = ptrtoint ptr %hmac_tfm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hmac_tfm, align 4
  %6 = ptrtoint ptr %__shash_desc to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %__shash_desc, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %5, i32 0, i32 2
  %7 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %crypto_shash_init.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

crypto_shash_init.exit:                           ; preds = %if.end
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %5, i32 0, i32 2, i32 3
  %9 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 -256
  %11 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = call i32 %12(ptr noundef nonnull %__shash_desc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool2.not = icmp eq i32 %call3.i, 0
  br i1 %tobool2.not, label %if.end4, label %crypto_shash_init.exit.cleanup_crit_edge

crypto_shash_init.exit.cleanup_crit_edge:         ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %crypto_shash_init.exit
  %call6 = call i32 @crypto_shash_update(ptr noundef nonnull %__shash_desc, ptr noundef nonnull %well_known_message, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = call i32 @crypto_shash_final(ptr noundef nonnull %__shash_desc, ptr noundef %hmac) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4.cleanup_crit_edge, %crypto_shash_init.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call3.i, %crypto_shash_init.exit.cleanup_crit_edge ], [ %call6, %if.end4.cleanup_crit_edge ], [ %call9, %if.end8 ], [ -126, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %well_known_message) #7
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %__shash_desc) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ubifs_hmac_zero(ptr nocapture noundef readonly %c, ptr noundef %hmac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hmac_desc_len = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 181
  %0 = ptrtoint ptr %hmac_desc_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hmac_desc_len, align 8
  %call = tail call ptr @memchr_inv(ptr noundef %hmac, i32 noundef 0, i32 noundef %1) #7
  %tobool.not = icmp eq ptr %call, null
  ret i1 %tobool.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @request_key_tag(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_assert_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !41, !42, !44, !45}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ubifs/auth.c", i32 142, i32 31}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/ubifs/auth.c", i32 142, i32 39}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/ubifs/auth.c", i32 148, i32 15}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ubifs/auth.c", i32 149, i32 15}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ubifs/auth.c", i32 150, i32 15}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ubifs/auth.c", i32 206, i32 16}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ubifs/auth.c", i32 214, i32 16}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ubifs/auth.c", i32 222, i32 16}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ubifs/auth.c", i32 228, i32 16}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/ubifs/auth.c", i32 240, i32 16}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/ubifs/auth.c", i32 242, i32 16}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/ubifs/auth.c", i32 264, i32 16}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/ubifs/auth.c", i32 271, i32 16}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/ubifs/auth.c", i32 276, i32 43}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/ubifs/auth.c", i32 282, i32 16}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/ubifs/auth.c", i32 290, i32 16}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/ubifs/auth.c", i32 305, i32 16}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/ubifs/auth.c", i32 312, i32 16}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/ubifs/auth.c", i32 327, i32 16}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../include/keys/user-type.h", i32 53, i32 36}
!40 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/ubifs/auth.c", i32 395, i32 2}
!44 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/ubifs/auth.c", i32 396, i32 2}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{!"branch_weights", i32 1, i32 2000}
!57 = !{!"branch_weights", i32 2000, i32 1}
