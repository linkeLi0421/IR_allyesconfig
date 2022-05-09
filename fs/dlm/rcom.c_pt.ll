; ModuleID = '/llk/IR_all_yes/fs/dlm/rcom.c_pt.bc'
source_filename = "../fs/dlm/rcom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dlm_config_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dlm_ls = type { %struct.list_head, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, %struct.kobject, %struct.idr, %struct.spinlock, ptr, i32, %struct.mutex, %struct.list_head, %struct.mutex, %struct.list_head, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, [65 x i8], [8 x ptr], i32, [8 x i32], %struct.list_head, %struct.list_head, i32, i32, i32, ptr, i32, i32, i32, ptr, %struct.dlm_rsb, %struct.dlm_lkb, %struct.dlm_message, ptr, ptr, ptr, ptr, ptr, %struct.wait_queue_head, i32, %struct.completion, i32, %struct.miscdevice, ptr, %struct.mutex, %struct.list_head, %struct.timer_list, ptr, %struct.mutex, %struct.spinlock, i32, i32, i64, ptr, %struct.rw_semaphore, %struct.rw_semaphore, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.mutex, ptr, i32, i32, i32, i32, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, i32, %struct.idr, %struct.spinlock, %struct.wait_queue_head, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.rw_semaphore, ptr, ptr, i32, [1 x i8] }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dlm_rsb = type { ptr, %struct.kref, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %union.anon.41, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, [65 x i8] }
%union.anon.41 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dlm_lkb = type { ptr, %struct.kref, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, i64, i32, %struct.mutex, %struct.work_struct, %struct.list_head, [6 x %struct.dlm_callback], %struct.dlm_callback, %struct.dlm_callback, i64, i64, i64, ptr, ptr, ptr, ptr, %union.anon.42 }
%struct.dlm_callback = type { i64, i32, i32, i8, i8 }
%union.anon.42 = type { ptr }
%struct.dlm_message = type { %struct.dlm_header, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.dlm_header = type { i32, %union.anon.43, i32, i16, i8, i8 }
%union.anon.43 = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dlm_rcom = type { %struct.dlm_header, i32, i32, i64, i64, i64, [0 x i8] }
%struct.rcom_lock = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, [64 x i8], [0 x i8] }

@dlm_config = external dso_local local_unnamed_addr global %struct.dlm_config_info, align 4
@dlm_rcom_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017dlm: %s: remote node %d not ready\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dlm_rcom_status\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fs/dlm/rcom.c\00", [18 x i8] zeroinitializer }, align 32
@dlm_rcom_status._entry_ptr = internal global ptr @dlm_rcom_status._entry, section ".printk_index", align 4
@dlm_receive_rcom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 658, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013dlm: %s: receive_rcom bad type %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dlm_receive_rcom\00", [47 x i8] zeroinitializer }, align 32
@dlm_receive_rcom._entry_ptr = internal global ptr @dlm_receive_rcom._entry, section ".printk_index", align 4
@dlm_receive_rcom._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@dlm_receive_rcom._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.2, i32 670, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\017dlm: %s: dlm_receive_rcom ignore msg %d from %d %llu %llu recover seq %llu sts %x gen %u\0A\00", [36 x i8] zeroinitializer }, align 32
@dlm_receive_rcom._entry_ptr.8 = internal global ptr @dlm_receive_rcom._entry.6, section ".printk_index", align 4
@dlm_receive_rcom._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.2, i32 674, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013dlm: %s: recovery message %d from %d is too short\0A\00", [43 x i8] zeroinitializer }, align 32
@dlm_receive_rcom._entry_ptr.11 = internal global ptr @dlm_receive_rcom._entry.9, section ".printk_index", align 4
@create_rcom_stateless._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 83, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013dlm: create_rcom to %d type %d len %d ENOBUFS\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"create_rcom_stateless\00", [42 x i8] zeroinitializer }, align 32
@create_rcom_stateless._entry_ptr = internal global ptr @create_rcom_stateless._entry, section ".printk_index", align 4
@check_rcom_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013dlm: %s: version mismatch: %x nodeid %d: %x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"check_rcom_config\00", [46 x i8] zeroinitializer }, align 32
@check_rcom_config._entry_ptr = internal global ptr @check_rcom_config._entry, section ".printk_index", align 4
@check_rcom_config._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013dlm: %s: config mismatch: %d,%x nodeid %d: %d,%x\0A\00", [44 x i8] zeroinitializer }, align 32
@check_rcom_config._entry_ptr.18 = internal global ptr @check_rcom_config._entry.16, section ".printk_index", align 4
@create_rcom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 62, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013dlm: %s to %d type %d len %d ENOBUFS\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"create_rcom\00", [20 x i8] zeroinitializer }, align 32
@create_rcom._entry_ptr = internal global ptr @create_rcom._entry, section ".printk_index", align 4
@receive_rcom_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017dlm: %s: receive_rcom_status num_slots %d to %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"receive_rcom_status\00", [44 x i8] zeroinitializer }, align 32
@receive_rcom_status._entry_ptr = internal global ptr @receive_rcom_status._entry, section ".printk_index", align 4
@receive_rcom_lookup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013dlm: %s: receive_rcom_lookup dump from %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"receive_rcom_lookup\00", [44 x i8] zeroinitializer }, align 32
@receive_rcom_lookup._entry_ptr = internal global ptr @receive_rcom_lookup._entry, section ".printk_index", align 4
@receive_sync_reply._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017dlm: %s: reject reply %d from %d seq %llx expect %llx\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"receive_sync_reply\00", [45 x i8] zeroinitializer }, align 32
@receive_sync_reply._entry_ptr = internal global ptr @receive_sync_reply._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967186]
@__sancov_gen_cov_switch_values.27 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 213, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 658, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 663, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 673, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 82, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 131, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 139, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 61, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 272, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 383, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.125 = private constant [17 x i8] c"../fs/dlm/rcom.c\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 291, i32 3 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @check_rcom_config._entry, ptr @check_rcom_config._entry.16, ptr @check_rcom_config._entry_ptr, ptr @check_rcom_config._entry_ptr.18, ptr @create_rcom._entry, ptr @create_rcom._entry_ptr, ptr @create_rcom_stateless._entry, ptr @create_rcom_stateless._entry_ptr, ptr @dlm_rcom_status._entry, ptr @dlm_rcom_status._entry_ptr, ptr @dlm_receive_rcom._entry, ptr @dlm_receive_rcom._entry.6, ptr @dlm_receive_rcom._entry.9, ptr @dlm_receive_rcom._entry_ptr, ptr @dlm_receive_rcom._entry_ptr.11, ptr @dlm_receive_rcom._entry_ptr.8, ptr @receive_rcom_lookup._entry, ptr @receive_rcom_lookup._entry_ptr, ptr @receive_rcom_status._entry, ptr @receive_rcom_status._entry_ptr, ptr @receive_sync_reply._entry, ptr @receive_sync_reply._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @dlm_receive_rcom._rs, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_rcom_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_receive_rcom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_receive_rcom._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_receive_rcom._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_receive_rcom._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_rcom_stateless._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_rcom_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_rcom_config._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_rcom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @receive_rcom_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @receive_rcom_lookup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @receive_sync_reply._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_rcom_status(ptr noundef %ls, i32 noundef %nodeid, i32 noundef %status_flags) local_unnamed_addr #0 align 64 {
entry:
  %mb.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_recover_nodeid = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 72
  %0 = ptrtoint ptr %ls_recover_nodeid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %nodeid, ptr %ls_recover_nodeid, align 4
  %call = tail call i32 @dlm_our_nodeid() #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %nodeid)
  %cmp = icmp eq i32 %call, %nodeid
  br i1 %cmp, label %if.then, label %retry.preheader

retry.preheader:                                  ; preds = %entry
  %ls_global_id.i.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 2
  %ls_recover_lock.i.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 60
  %ls_recover_seq.i.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 63
  %1 = call i32 @llvm.bswap.i32(i32 %status_flags) #6
  %ls_rcom_spin.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 77
  %ls_rcom_seq.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 76
  %ls_flags.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 9
  %ls_recover_buf5 = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 71
  br label %retry

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ls_recover_buf = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 71
  %2 = ptrtoint ptr %ls_recover_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ls_recover_buf, align 8
  %call1 = tail call i32 @dlm_recover_status(ptr noundef %ls) #6
  %rc_result = getelementptr inbounds %struct.dlm_rcom, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %rc_result to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call1, ptr %rc_result, align 4
  br label %out

retry:                                            ; preds = %if.end4.retry_crit_edge, %retry.preheader
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mb.i) #6
  %5 = ptrtoint ptr %mb.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %mb.i, align 4, !annotation !64
  %call.i = call ptr @dlm_lowcomms_new_msg(i32 noundef %nodeid, i32 noundef 64, i32 noundef 3136, ptr noundef nonnull %mb.i, ptr noundef null, ptr noundef null) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %create_rcom_stateless.exit, label %if.end4

create_rcom_stateless.exit:                       ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %nodeid, i32 noundef 1, i32 noundef 16) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mb.i) #6
  br label %out

if.end4:                                          ; preds = %retry
  %6 = ptrtoint ptr %mb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mb.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 196610, ptr %7, align 8
  %9 = ptrtoint ptr %ls_global_id.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ls_global_id.i.i, align 4
  %u.i.i = getelementptr inbounds %struct.dlm_header, ptr %7, i32 0, i32 1
  %11 = ptrtoint ptr %u.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %u.i.i, align 4
  %call.i.i = call i32 @dlm_our_nodeid() #6
  %h_nodeid.i.i = getelementptr inbounds %struct.dlm_header, ptr %7, i32 0, i32 2
  %12 = ptrtoint ptr %h_nodeid.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call.i.i, ptr %h_nodeid.i.i, align 8
  %h_length.i.i = getelementptr inbounds %struct.dlm_header, ptr %7, i32 0, i32 3
  %13 = ptrtoint ptr %h_length.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 64, ptr %h_length.i.i, align 4
  %h_cmd.i.i = getelementptr inbounds %struct.dlm_header, ptr %7, i32 0, i32 4
  %14 = ptrtoint ptr %h_cmd.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %h_cmd.i.i, align 2
  %rc_type.i.i = getelementptr inbounds %struct.dlm_rcom, ptr %7, i32 0, i32 1
  %15 = ptrtoint ptr %rc_type.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %rc_type.i.i, align 8
  call void @_raw_spin_lock(ptr noundef %ls_recover_lock.i.i) #6
  %16 = ptrtoint ptr %ls_recover_seq.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %ls_recover_seq.i.i, align 8
  %rc_seq.i.i = getelementptr inbounds %struct.dlm_rcom, ptr %7, i32 0, i32 4
  %18 = ptrtoint ptr %rc_seq.i.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %rc_seq.i.i, align 8
  call void @_raw_spin_unlock(ptr noundef %ls_recover_lock.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mb.i) #6
  %rc_buf = getelementptr inbounds %struct.dlm_rcom, ptr %7, i32 0, i32 6
  %19 = ptrtoint ptr %rc_buf to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %1, ptr %rc_buf, align 8
  %rc_id = getelementptr inbounds %struct.dlm_rcom, ptr %7, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %ls_rcom_spin.i) #6
  %20 = ptrtoint ptr %ls_rcom_seq.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %ls_rcom_seq.i, align 8
  %inc.i = add i64 %21, 1
  store i64 %inc.i, ptr %ls_rcom_seq.i, align 8
  %22 = ptrtoint ptr %rc_id to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %inc.i, ptr %rc_id, align 8
  call void @_set_bit(i32 noundef 6, ptr noundef %ls_flags.i) #6
  call void @_raw_spin_unlock(ptr noundef %ls_rcom_spin.i) #6
  %23 = ptrtoint ptr %ls_recover_buf5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ls_recover_buf5, align 8
  %25 = call ptr @memset(ptr %24, i32 0, i32 4096)
  call void @dlm_rcom_out(ptr noundef %7) #6
  call void @dlm_lowcomms_commit_msg(ptr noundef nonnull %call.i) #6
  call void @dlm_lowcomms_put_msg(ptr noundef nonnull %call.i) #6
  %call6 = call i32 @dlm_wait_function(ptr noundef %ls, ptr noundef nonnull @rcom_response) #6
  call void @_raw_spin_lock(ptr noundef %ls_rcom_spin.i) #6
  call void @_clear_bit(i32 noundef 6, ptr noundef %ls_flags.i) #6
  call void @_clear_bit(i32 noundef 5, ptr noundef %ls_flags.i) #6
  call void @_raw_spin_unlock(ptr noundef %ls_rcom_spin.i) #6
  %26 = zext i32 %call6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call6, label %if.end4.out_crit_edge [
    i32 -110, label %if.end4.retry_crit_edge
    i32 0, label %if.end12
  ]

if.end4.retry_crit_edge:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %retry

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end12:                                         ; preds = %if.end4
  %27 = ptrtoint ptr %ls_recover_buf5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ls_recover_buf5, align 8
  %rc_result14 = getelementptr inbounds %struct.dlm_rcom, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %rc_result14 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rc_result14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %30)
  %cmp15 = icmp eq i32 %30, -3
  br i1 %cmp15, label %do.body, label %if.else

do.body:                                          ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %31 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool17.not = icmp eq i32 %31, 0
  br i1 %tobool17.not, label %do.body.do.end24_crit_edge, label %do.end

do.body.do.end24_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %ls_name = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %ls_name, i32 noundef %nodeid) #9
  br label %do.end24

do.end24:                                         ; preds = %do.end, %do.body.do.end24_crit_edge
  %32 = ptrtoint ptr %rc_result14 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %rc_result14, align 4
  br label %out

if.else:                                          ; preds = %if.end12
  %33 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %28, align 8
  %and.i = and i32 %34, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 196608
  br i1 %cmp.not.i, label %if.end.i50, label %do.end.i49

do.end.i49:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %ls_name.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  %call.i48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %ls_name.i, i32 noundef 196610, i32 noundef %nodeid, i32 noundef %34) #9
  br label %out

if.end.i50:                                       ; preds = %if.else
  %rc_buf.i = getelementptr inbounds %struct.dlm_rcom, ptr %28, i32 0, i32 6
  %35 = ptrtoint ptr %rc_buf.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rc_buf.i, align 8
  %37 = call i32 @llvm.bswap.i32(i32 %36) #6
  %ls_lvblen.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 5
  %38 = ptrtoint ptr %ls_lvblen.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ls_lvblen.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp4.not.i = icmp eq i32 %37, %39
  br i1 %cmp4.not.i, label %lor.lhs.false.i, label %if.end.i50.do.end9.i_crit_edge

if.end.i50.do.end9.i_crit_edge:                   ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9.i

lor.lhs.false.i:                                  ; preds = %if.end.i50
  %rf_lsflags.i = getelementptr inbounds %struct.dlm_rcom, ptr %28, i32 1, i32 0, i32 1
  %40 = ptrtoint ptr %rf_lsflags.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rf_lsflags.i, align 4
  %42 = call i32 @llvm.bswap.i32(i32 %41) #6
  %ls_exflags.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 4
  %43 = ptrtoint ptr %ls_exflags.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ls_exflags.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp5.not.i = icmp eq i32 %42, %44
  br i1 %cmp5.not.i, label %lor.lhs.false.i.out_crit_edge, label %lor.lhs.false.i.do.end9.i_crit_edge

lor.lhs.false.i.do.end9.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9.i

lor.lhs.false.i.out_crit_edge:                    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end9.i:                                        ; preds = %lor.lhs.false.i.do.end9.i_crit_edge, %if.end.i50.do.end9.i_crit_edge
  %ls_name11.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  %ls_exflags14.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 4
  %45 = ptrtoint ptr %ls_exflags14.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ls_exflags14.i, align 4
  %rf_lsflags16.i = getelementptr inbounds %struct.dlm_rcom, ptr %28, i32 1, i32 0, i32 1
  %47 = ptrtoint ptr %rf_lsflags16.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rf_lsflags16.i, align 4
  %49 = call i32 @llvm.bswap.i32(i32 %48) #6
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %ls_name11.i, i32 noundef %39, i32 noundef %46, i32 noundef %nodeid, i32 noundef %37, i32 noundef %49) #9
  br label %out

out:                                              ; preds = %do.end9.i, %lor.lhs.false.i.out_crit_edge, %do.end.i49, %do.end24, %if.end4.out_crit_edge, %create_rcom_stateless.exit, %if.then
  %error.0 = phi i32 [ 0, %if.then ], [ -105, %create_rcom_stateless.exit ], [ 0, %do.end24 ], [ -71, %do.end.i49 ], [ -71, %do.end9.i ], [ 0, %lor.lhs.false.i.out_crit_edge ], [ %call6, %if.end4.out_crit_edge ]
  ret i32 %error.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_our_nodeid() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_recover_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @create_rcom_stateless(ptr noundef %ls, i32 noundef %to_nodeid, i32 noundef %type, i32 noundef %len, ptr nocapture noundef writeonly %rc_ret, ptr nocapture noundef writeonly %msg_ret) unnamed_addr #0 align 64 {
entry:
  %mb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %len, 48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mb) #6
  %0 = ptrtoint ptr %mb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %mb, align 4, !annotation !64
  %call = call ptr @dlm_lowcomms_new_msg(i32 noundef %to_nodeid, i32 noundef %add, i32 noundef 3136, ptr noundef nonnull %mb, ptr noundef null, ptr noundef null) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %to_nodeid, i32 noundef %type, i32 noundef %len) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %mb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mb, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 196610, ptr %2, align 8
  %ls_global_id.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 2
  %4 = ptrtoint ptr %ls_global_id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ls_global_id.i, align 4
  %u.i = getelementptr inbounds %struct.dlm_header, ptr %2, i32 0, i32 1
  %6 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %u.i, align 4
  %call.i = call i32 @dlm_our_nodeid() #6
  %h_nodeid.i = getelementptr inbounds %struct.dlm_header, ptr %2, i32 0, i32 2
  %7 = ptrtoint ptr %h_nodeid.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call.i, ptr %h_nodeid.i, align 8
  %conv.i = trunc i32 %add to i16
  %h_length.i = getelementptr inbounds %struct.dlm_header, ptr %2, i32 0, i32 3
  %8 = ptrtoint ptr %h_length.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.i, ptr %h_length.i, align 4
  %h_cmd.i = getelementptr inbounds %struct.dlm_header, ptr %2, i32 0, i32 4
  %9 = ptrtoint ptr %h_cmd.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %h_cmd.i, align 2
  %rc_type.i = getelementptr inbounds %struct.dlm_rcom, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %rc_type.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %type, ptr %rc_type.i, align 8
  %ls_recover_lock.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 60
  call void @_raw_spin_lock(ptr noundef %ls_recover_lock.i) #6
  %ls_recover_seq.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 63
  %11 = ptrtoint ptr %ls_recover_seq.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %ls_recover_seq.i, align 8
  %rc_seq.i = getelementptr inbounds %struct.dlm_rcom, ptr %2, i32 0, i32 4
  %13 = ptrtoint ptr %rc_seq.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %rc_seq.i, align 8
  call void @_raw_spin_unlock(ptr noundef %ls_recover_lock.i) #6
  %14 = ptrtoint ptr %rc_ret to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %2, ptr %rc_ret, align 4
  %15 = ptrtoint ptr %msg_ret to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call, ptr %msg_ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -105, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mb) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_wait_function(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rcom_response(ptr noundef %ls) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_flags = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 9
  %0 = ptrtoint ptr %ls_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ls_flags, align 4
  %shr.i = lshr i32 %1, 5
  %and1.i = and i32 %shr.i, 1
  ret i32 %and1.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_rcom_names(ptr noundef %ls, i32 noundef %nodeid, ptr nocapture noundef readonly %last_name, i32 noundef %last_len) local_unnamed_addr #0 align 64 {
entry:
  %rc = alloca ptr, align 4
  %msg = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rc) #6
  %0 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %rc, align 4, !annotation !64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msg) #6
  %1 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %msg, align 4, !annotation !64
  %ls_recover_nodeid = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 72
  %2 = ptrtoint ptr %ls_recover_nodeid to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %nodeid, ptr %ls_recover_nodeid, align 4
  %ls_rcom_spin.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 77
  %ls_rcom_seq.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 76
  %ls_flags.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 9
  %ls_recover_buf = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 71
  br label %retry

retry:                                            ; preds = %if.end.retry_crit_edge, %entry
  %call = call fastcc i32 @create_rcom_stateless(ptr noundef %ls, i32 noundef %nodeid, i32 noundef 2, i32 noundef %last_len, ptr noundef nonnull %rc, ptr noundef nonnull %msg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %retry.out_crit_edge

retry.out_crit_edge:                              ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %retry
  %3 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rc, align 4
  %rc_buf = getelementptr inbounds %struct.dlm_rcom, ptr %4, i32 0, i32 6
  %5 = call ptr @memcpy(ptr %rc_buf, ptr %last_name, i32 %last_len)
  %rc_id = getelementptr inbounds %struct.dlm_rcom, ptr %4, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %ls_rcom_spin.i) #6
  %6 = ptrtoint ptr %ls_rcom_seq.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ls_rcom_seq.i, align 8
  %inc.i = add i64 %7, 1
  store i64 %inc.i, ptr %ls_rcom_seq.i, align 8
  %8 = ptrtoint ptr %rc_id to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %inc.i, ptr %rc_id, align 8
  tail call void @_set_bit(i32 noundef 6, ptr noundef %ls_flags.i) #6
  tail call void @_raw_spin_unlock(ptr noundef %ls_rcom_spin.i) #6
  %9 = ptrtoint ptr %ls_recover_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ls_recover_buf, align 8
  %11 = call ptr @memset(ptr %10, i32 0, i32 4096)
  %12 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %msg, align 4
  tail call void @dlm_rcom_out(ptr noundef %4) #6
  tail call void @dlm_lowcomms_commit_msg(ptr noundef %13) #6
  tail call void @dlm_lowcomms_put_msg(ptr noundef %13) #6
  %call1 = tail call i32 @dlm_wait_function(ptr noundef %ls, ptr noundef nonnull @rcom_response) #6
  tail call void @_raw_spin_lock(ptr noundef %ls_rcom_spin.i) #6
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %ls_flags.i) #6
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %ls_flags.i) #6
  tail call void @_raw_spin_unlock(ptr noundef %ls_rcom_spin.i) #6
  %cmp = icmp eq i32 %call1, -110
  br i1 %cmp, label %if.end.retry_crit_edge, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end.retry_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %retry

out:                                              ; preds = %if.end.out_crit_edge, %retry.out_crit_edge
  %error.0 = phi i32 [ %call, %retry.out_crit_edge ], [ %call1, %if.end.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rc) #6
  ret i32 %error.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_send_rcom_lookup(ptr nocapture noundef readonly %r, i32 noundef %dir_nodeid) local_unnamed_addr #0 align 64 {
entry:
  %mb.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %r, align 4
  %res_length = getelementptr inbounds %struct.dlm_rsb, ptr %r, i32 0, i32 4
  %2 = ptrtoint ptr %res_length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %res_length, align 4
  %add.i = add i32 %3, 48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mb.i) #6
  %4 = ptrtoint ptr %mb.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %mb.i, align 4, !annotation !64
  %call.i = call ptr @dlm_midcomms_get_mhandle(i32 noundef %dir_nodeid, i32 noundef %add.i, i32 noundef 3136, ptr noundef nonnull %mb.i) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %create_rcom.exit, label %if.end

create_rcom.exit:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef %dir_nodeid, i32 noundef 3, i32 noundef %3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mb.i) #6
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %mb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mb.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 196610, ptr %6, align 8
  %ls_global_id.i.i = getelementptr inbounds %struct.dlm_ls, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %ls_global_id.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ls_global_id.i.i, align 4
  %u.i.i = getelementptr inbounds %struct.dlm_header, ptr %6, i32 0, i32 1
  %10 = ptrtoint ptr %u.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %u.i.i, align 4
  %call.i.i = call i32 @dlm_our_nodeid() #6
  %h_nodeid.i.i = getelementptr inbounds %struct.dlm_header, ptr %6, i32 0, i32 2
  %11 = ptrtoint ptr %h_nodeid.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call.i.i, ptr %h_nodeid.i.i, align 8
  %conv.i.i = trunc i32 %add.i to i16
  %h_length.i.i = getelementptr inbounds %struct.dlm_header, ptr %6, i32 0, i32 3
  %12 = ptrtoint ptr %h_length.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i.i, ptr %h_length.i.i, align 4
  %h_cmd.i.i = getelementptr inbounds %struct.dlm_header, ptr %6, i32 0, i32 4
  %13 = ptrtoint ptr %h_cmd.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 2, ptr %h_cmd.i.i, align 2
  %rc_type.i.i = getelementptr inbounds %struct.dlm_rcom, ptr %6, i32 0, i32 1
  %14 = ptrtoint ptr %rc_type.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %rc_type.i.i, align 8
  %ls_recover_lock.i.i = getelementptr inbounds %struct.dlm_ls, ptr %1, i32 0, i32 60
  call void @_raw_spin_lock(ptr noundef %ls_recover_lock.i.i) #6
  %ls_recover_seq.i.i = getelementptr inbounds %struct.dlm_ls, ptr %1, i32 0, i32 63
  %15 = ptrtoint ptr %ls_recover_seq.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %ls_recover_seq.i.i, align 8
  %rc_seq.i.i = getelementptr inbounds %struct.dlm_rcom, ptr %6, i32 0, i32 4
  %17 = ptrtoint ptr %rc_seq.i.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %rc_seq.i.i, align 8
  call void @_raw_spin_unlock(ptr noundef %ls_recover_lock.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mb.i) #6
  %rc_buf = getelementptr inbounds %struct.dlm_rcom, ptr %6, i32 0, i32 6
  %res_name = getelementptr inbounds %struct.dlm_rsb, ptr %r, i32 0, i32 23
  %18 = ptrtoint ptr %res_length to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %res_length, align 4
  %20 = call ptr @memcpy(ptr %rc_buf, ptr %res_name, i32 %19)
  %res_id = getelementptr inbounds %struct.dlm_rsb, ptr %r, i32 0, i32 8
  %21 = ptrtoint ptr %res_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %res_id, align 4
  %conv = zext i32 %22 to i64
  %rc_id = getelementptr inbounds %struct.dlm_rcom, ptr %6, i32 0, i32 3
  %23 = ptrtoint ptr %rc_id to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv, ptr %rc_id, align 8
  call void @dlm_rcom_out(ptr noundef %6) #6
  call void @dlm_midcomms_commit_mhandle(ptr noundef nonnull %call.i) #6
  br label %out

out:                                              ; preds = %if.end, %create_rcom.exit
  %retval.0.i15 = phi i32 [ -105, %create_rcom.exit ], [ 0, %if.end ]
  ret i32 %retval.0.i15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_send_rcom_lock(ptr noundef %r, ptr nocapture noundef readonly %lkb) local_unnamed_addr #0 align 64 {
entry:
  %mb.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %r, align 4
  %lkb_lvbptr = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 34
  %2 = ptrtoint ptr %lkb_lvbptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lkb_lvbptr, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ls_lvblen = getelementptr inbounds %struct.dlm_ls, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %ls_lvblen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ls_lvblen, align 8
  %add = add i32 %5, 108
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %len.0 = phi i32 [ %add, %if.then ], [ 108, %entry.if.end_crit_edge ]
  %res_nodeid = getelementptr inbounds %struct.dlm_rsb, ptr %r, i32 0, i32 5
  %6 = ptrtoint ptr %res_nodeid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %res_nodeid, align 4
  %add.i = add i32 %len.0, 48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mb.i) #6
  %8 = ptrtoint ptr %mb.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %mb.i, align 4, !annotation !64
  %call.i = call ptr @dlm_midcomms_get_mhandle(i32 noundef %7, i32 noundef %add.i, i32 noundef 3136, ptr noundef nonnull %mb.i) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %create_rcom.exit, label %if.end3

create_rcom.exit:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef %7, i32 noundef 4, i32 noundef %len.0) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mb.i) #6
  br label %out

if.end3:                                          ; preds = %if.end
  %9 = ptrtoint ptr %mb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mb.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 196610, ptr %10, align 8
  %ls_global_id.i.i = getelementptr inbounds %struct.dlm_ls, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %ls_global_id.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ls_global_id.i.i, align 4
  %u.i.i = getelementptr inbounds %struct.dlm_header, ptr %10, i32 0, i32 1
  %14 = ptrtoint ptr %u.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %u.i.i, align 4
  %call.i.i = call i32 @dlm_our_nodeid() #6
  %h_nodeid.i.i = getelementptr inbounds %struct.dlm_header, ptr %10, i32 0, i32 2
  %15 = ptrtoint ptr %h_nodeid.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call.i.i, ptr %h_nodeid.i.i, align 8
  %conv.i.i = trunc i32 %add.i to i16
  %h_length.i.i = getelementptr inbounds %struct.dlm_header, ptr %10, i32 0, i32 3
  %16 = ptrtoint ptr %h_length.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i.i, ptr %h_length.i.i, align 4
  %h_cmd.i.i = getelementptr inbounds %struct.dlm_header, ptr %10, i32 0, i32 4
  %17 = ptrtoint ptr %h_cmd.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %h_cmd.i.i, align 2
  %rc_type.i.i = getelementptr inbounds %struct.dlm_rcom, ptr %10, i32 0, i32 1
  %18 = ptrtoint ptr %rc_type.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %rc_type.i.i, align 8
  %ls_recover_lock.i.i = getelementptr inbounds %struct.dlm_ls, ptr %1, i32 0, i32 60
  call void @_raw_spin_lock(ptr noundef %ls_recover_lock.i.i) #6
  %ls_recover_seq.i.i = getelementptr inbounds %struct.dlm_ls, ptr %1, i32 0, i32 63
  %19 = ptrtoint ptr %ls_recover_seq.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %ls_recover_seq.i.i, align 8
  %rc_seq.i.i = getelementptr inbounds %struct.dlm_rcom, ptr %10, i32 0, i32 4
  %21 = ptrtoint ptr %rc_seq.i.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %rc_seq.i.i, align 8
  call void @_raw_spin_unlock(ptr noundef %ls_recover_lock.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mb.i) #6
  %rc_buf = getelementptr inbounds %struct.dlm_rcom, ptr %10, i32 0, i32 6
  %22 = call ptr @memset(ptr %rc_buf, i32 0, i32 108)
  %lkb_ownpid.i = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 3
  %23 = ptrtoint ptr %lkb_ownpid.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %lkb_ownpid.i, align 4
  %25 = call i32 @llvm.bswap.i32(i32 %24) #6
  %26 = ptrtoint ptr %rc_buf to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %rc_buf, align 4
  %lkb_id.i = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 4
  %27 = ptrtoint ptr %lkb_id.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %lkb_id.i, align 8
  %29 = call i32 @llvm.bswap.i32(i32 %28) #6
  %rl_lkid.i = getelementptr inbounds %struct.dlm_rcom, ptr %10, i32 1, i32 0, i32 1
  %30 = ptrtoint ptr %rl_lkid.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %rl_lkid.i, align 4
  %lkb_exflags.i = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 6
  %31 = ptrtoint ptr %lkb_exflags.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %lkb_exflags.i, align 8
  %33 = call i32 @llvm.bswap.i32(i32 %32) #6
  %rl_exflags.i = getelementptr inbounds %struct.dlm_rcom, ptr %10, i32 1, i32 2
  %34 = ptrtoint ptr %rl_exflags.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %rl_exflags.i, align 4
  %lkb_flags.i = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 8
  %35 = ptrtoint ptr %lkb_flags.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %lkb_flags.i, align 8
  %37 = call i32 @llvm.bswap.i32(i32 %36) #6
  %rl_flags.i = getelementptr inbounds %struct.dlm_rcom, ptr %10, i32 1, i32 3
  %38 = ptrtoint ptr %rl_flags.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %rl_flags.i, align 4
  %lkb_lvbseq.i = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 9
  %39 = ptrtoint ptr %lkb_lvbseq.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %lkb_lvbseq.i, align 4
  %41 = call i32 @llvm.bswap.i32(i32 %40) #6
  %rl_lvbseq.i = getelementptr inbounds %struct.rcom_lock, ptr %rc_buf, i32 0, i32 7
  %42 = ptrtoint ptr %rl_lvbseq.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %rl_lvbseq.i, align 4
  %lkb_rqmode.i = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 11
  %43 = ptrtoint ptr %lkb_rqmode.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %lkb_rqmode.i, align 1
  %rl_rqmode.i = getelementptr inbounds %struct.rcom_lock, ptr %rc_buf, i32 0, i32 9
  %45 = ptrtoint ptr %rl_rqmode.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %rl_rqmode.i, align 4
  %lkb_grmode.i = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 12
  %46 = ptrtoint ptr %lkb_grmode.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %lkb_grmode.i, align 2
  %rl_grmode.i = getelementptr inbounds %struct.rcom_lock, ptr %rc_buf, i32 0, i32 10
  %48 = ptrtoint ptr %rl_grmode.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %rl_grmode.i, align 1
  %lkb_status.i = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 10
  %49 = ptrtoint ptr %lkb_status.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %lkb_status.i, align 8
  %rl_status.i = getelementptr inbounds %struct.rcom_lock, ptr %rc_buf, i32 0, i32 11
  %51 = ptrtoint ptr %rl_status.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %rl_status.i, align 2
  %lkb_wait_type.i = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 14
  %52 = ptrtoint ptr %lkb_wait_type.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %lkb_wait_type.i, align 4
  %conv.i = sext i8 %53 to i16
  %54 = call i16 @llvm.bswap.i16(i16 %conv.i) #6
  %rl_wait_type.i = getelementptr inbounds %struct.dlm_rcom, ptr %10, i32 1, i32 5
  %55 = ptrtoint ptr %rl_wait_type.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %rl_wait_type.i, align 4
  %lkb_bastfn.i = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 37
  %56 = ptrtoint ptr %lkb_bastfn.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %lkb_bastfn.i, align 4
  %tobool.not.i11 = icmp eq ptr %57, null
  br i1 %tobool.not.i11, label %if.end3.if.end.i12_crit_edge, label %if.then.i

if.end3.if.end.i12_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i12

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %rl_asts.i = getelementptr inbounds %struct.rcom_lock, ptr %rc_buf, i32 0, i32 12
  %58 = ptrtoint ptr %rl_asts.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %rl_asts.i, align 1
  %60 = or i8 %59, 2
  store i8 %60, ptr %rl_asts.i, align 1
  br label %if.end.i12

if.end.i12:                                       ; preds = %if.then.i, %if.end3.if.end.i12_crit_edge
  %lkb_astfn.i = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 36
  %61 = ptrtoint ptr %lkb_astfn.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %lkb_astfn.i, align 8
  %tobool3.not.i = icmp eq ptr %62, null
  br i1 %tobool3.not.i, label %if.end.i12.if.end9.i_crit_edge, label %if.then4.i

if.end.i12.if.end9.i_crit_edge:                   ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

if.then4.i:                                       ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #8
  %rl_asts5.i = getelementptr inbounds %struct.rcom_lock, ptr %rc_buf, i32 0, i32 12
  %63 = ptrtoint ptr %rl_asts5.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %rl_asts5.i, align 1
  %65 = or i8 %64, 1
  store i8 %65, ptr %rl_asts5.i, align 1
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %if.end.i12.if.end9.i_crit_edge
  %res_length.i = getelementptr inbounds %struct.dlm_rsb, ptr %r, i32 0, i32 4
  %66 = ptrtoint ptr %res_length.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %res_length.i, align 4
  %conv10.i = trunc i32 %67 to i16
  %68 = call i16 @llvm.bswap.i16(i16 %conv10.i) #6
  %rl_namelen.i = getelementptr inbounds %struct.rcom_lock, ptr %rc_buf, i32 0, i32 14
  %69 = ptrtoint ptr %rl_namelen.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %rl_namelen.i, align 2
  %rl_name.i = getelementptr inbounds %struct.rcom_lock, ptr %rc_buf, i32 0, i32 15
  %res_name.i = getelementptr inbounds %struct.dlm_rsb, ptr %r, i32 0, i32 23
  %70 = ptrtoint ptr %res_length.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %res_length.i, align 4
  %72 = call ptr @memcpy(ptr %rl_name.i, ptr %res_name.i, i32 %71)
  %73 = ptrtoint ptr %lkb_lvbptr to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %lkb_lvbptr, align 8
  %tobool13.not.i = icmp eq ptr %74, null
  br i1 %tobool13.not.i, label %if.end9.i.pack_rcom_lock.exit_crit_edge, label %if.then14.i

if.end9.i.pack_rcom_lock.exit_crit_edge:          ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pack_rcom_lock.exit

if.then14.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %rl_lvb.i = getelementptr inbounds %struct.dlm_rcom, ptr %10, i32 3, i32 0, i32 3
  %75 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %r, align 4
  %ls_lvblen.i = getelementptr inbounds %struct.dlm_ls, ptr %76, i32 0, i32 5
  %77 = ptrtoint ptr %ls_lvblen.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %ls_lvblen.i, align 8
  %79 = call ptr @memcpy(ptr %rl_lvb.i, ptr %74, i32 %78)
  br label %pack_rcom_lock.exit

pack_rcom_lock.exit:                              ; preds = %if.then14.i, %if.end9.i.pack_rcom_lock.exit_crit_edge
  %80 = ptrtoint ptr %r to i32
  %conv = zext i32 %80 to i64
  %rc_id = getelementptr inbounds %struct.dlm_rcom, ptr %10, i32 0, i32 3
  %81 = ptrtoint ptr %rc_id to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %conv, ptr %rc_id, align 8
  call void @dlm_rcom_out(ptr noundef %10) #6
  call void @dlm_midcomms_commit_mhandle(ptr noundef nonnull %call.i) #6
  br label %out

out:                                              ; preds = %pack_rcom_lock.exit, %create_rcom.exit
  %retval.0.i20 = phi i32 [ -105, %create_rcom.exit ], [ 0, %pack_rcom_lock.exit ]
  ret i32 %retval.0.i20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_send_ls_not_ready(i32 noundef %nodeid, ptr nocapture noundef readonly %rc_in) local_unnamed_addr #0 align 64 {
entry:
  %mb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mb) #6
  %0 = ptrtoint ptr %mb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %mb, align 4, !annotation !64
  %call = call ptr @dlm_midcomms_get_mhandle(i32 noundef %nodeid, i32 noundef 80, i32 noundef 3136, ptr noundef nonnull %mb) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %mb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mb, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 196610, ptr %2, align 8
  %u = getelementptr inbounds %struct.dlm_header, ptr %rc_in, i32 0, i32 1
  %4 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %u, align 4
  %u3 = getelementptr inbounds %struct.dlm_header, ptr %2, i32 0, i32 1
  %6 = ptrtoint ptr %u3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %u3, align 4
  %call4 = call i32 @dlm_our_nodeid() #6
  %h_nodeid = getelementptr inbounds %struct.dlm_header, ptr %2, i32 0, i32 2
  %7 = ptrtoint ptr %h_nodeid to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call4, ptr %h_nodeid, align 8
  %h_length = getelementptr inbounds %struct.dlm_header, ptr %2, i32 0, i32 3
  %8 = ptrtoint ptr %h_length to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 80, ptr %h_length, align 4
  %h_cmd = getelementptr inbounds %struct.dlm_header, ptr %2, i32 0, i32 4
  %9 = ptrtoint ptr %h_cmd to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %h_cmd, align 2
  %rc_type = getelementptr inbounds %struct.dlm_rcom, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %rc_type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 5, ptr %rc_type, align 8
  %rc_id = getelementptr inbounds %struct.dlm_rcom, ptr %rc_in, i32 0, i32 3
  %11 = ptrtoint ptr %rc_id to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %rc_id, align 8
  %rc_id8 = getelementptr inbounds %struct.dlm_rcom, ptr %2, i32 0, i32 3
  %13 = ptrtoint ptr %rc_id8 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %rc_id8, align 8
  %rc_seq = getelementptr inbounds %struct.dlm_rcom, ptr %rc_in, i32 0, i32 4
  %14 = ptrtoint ptr %rc_seq to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %rc_seq, align 8
  %rc_seq_reply = getelementptr inbounds %struct.dlm_rcom, ptr %2, i32 0, i32 5
  %16 = ptrtoint ptr %rc_seq_reply to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %rc_seq_reply, align 8
  %rc_result = getelementptr inbounds %struct.dlm_rcom, ptr %2, i32 0, i32 2
  %17 = ptrtoint ptr %rc_result to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -3, ptr %rc_result, align 4
  %rc_buf = getelementptr inbounds %struct.dlm_rcom, ptr %2, i32 0, i32 6
  %18 = ptrtoint ptr %rc_buf to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %rc_buf, align 8
  call void @dlm_rcom_out(ptr noundef %2) #6
  call void @dlm_midcomms_commit_mhandle(ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -105, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mb) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dlm_midcomms_get_mhandle(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_rcom_out(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_midcomms_commit_mhandle(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_receive_rcom(ptr noundef %ls, ptr noundef %rc, i32 noundef %nodeid) local_unnamed_addr #0 align 64 {
entry:
  %mb.i.i167 = alloca ptr, align 4
  %mb.i.i139 = alloca ptr, align 4
  %ret_nodeid.i = alloca i32, align 4
  %mb.i.i = alloca ptr, align 4
  %rc.i = alloca ptr, align 4
  %msg.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rc_type = getelementptr inbounds %struct.dlm_rcom, ptr %rc, i32 0, i32 1
  %0 = ptrtoint ptr %rc_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rc_type, align 8
  %switch.tableidx = add i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 7
  br i1 %2, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.cast = trunc i32 %switch.tableidx to i7
  %switch.downshift = lshr i7 17, %switch.cast
  %3 = and i7 %switch.downshift, 1
  %4 = sext i7 %3 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %switch.masked = icmp ne i7 %3, 0
  %switch.cast191 = trunc i32 %switch.tableidx to i7
  %switch.downshift193 = lshr i7 34, %switch.cast191
  %5 = and i7 %switch.downshift193, 1
  %6 = sext i7 %5 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %switch.masked194 = icmp ne i7 %5, 0
  %switch.cast195 = trunc i32 %switch.tableidx to i7
  %switch.downshift197 = lshr i7 -60, %switch.cast195
  %7 = and i7 %switch.downshift197, 1
  %8 = sext i7 %7 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %switch.masked198 = icmp ne i7 %7, 0
  %switch.cast199 = trunc i32 %switch.tableidx to i7
  %switch.downshift201 = lshr i7 7, %switch.cast199
  %9 = and i7 %switch.downshift201, 1
  %10 = sext i7 %9 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %switch.masked202 = icmp ne i7 %9, 0
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %tobool16.not = phi i1 [ false, %entry.sw.epilog_crit_edge ], [ %switch.masked, %switch.lookup ]
  %tobool17.not = phi i1 [ false, %entry.sw.epilog_crit_edge ], [ %switch.masked194, %switch.lookup ]
  %tobool19.not = phi i1 [ false, %entry.sw.epilog_crit_edge ], [ %switch.masked198, %switch.lookup ]
  %tobool9.not = phi i1 [ true, %entry.sw.epilog_crit_edge ], [ %switch.masked202, %switch.lookup ]
  %ls_recover_lock = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 60
  tail call void @_raw_spin_lock(ptr noundef %ls_recover_lock) #6
  %ls_recover_status = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 62
  %11 = ptrtoint ptr %ls_recover_status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ls_recover_status, align 8
  %ls_flags.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 9
  %13 = ptrtoint ptr %ls_flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %ls_flags.i, align 4
  %and1.i.i = and i32 %14, 1
  %ls_recover_seq = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 63
  %15 = ptrtoint ptr %ls_recover_seq to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %ls_recover_seq, align 8
  tail call void @_raw_spin_unlock(ptr noundef %ls_recover_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %sw.epilog.if.end_crit_edge, label %land.lhs.true

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %sw.epilog
  %17 = ptrtoint ptr %rc_type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rc_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.not = icmp eq i32 %18, 1
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.do.body54_crit_edge

land.lhs.true.do.body54_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body54

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %sw.epilog.if.end_crit_edge
  br i1 %tobool9.not, label %if.end.if.end13_crit_edge, label %land.lhs.true10

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

land.lhs.true10:                                  ; preds = %if.end
  %rc_seq_reply = getelementptr inbounds %struct.dlm_rcom, ptr %rc, i32 0, i32 5
  %19 = ptrtoint ptr %rc_seq_reply to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %rc_seq_reply, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %16)
  %cmp11.not = icmp eq i64 %20, %16
  br i1 %cmp11.not, label %land.lhs.true10.if.end13_crit_edge, label %land.lhs.true10.do.body54_crit_edge

land.lhs.true10.do.body54_crit_edge:              ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body54

land.lhs.true10.if.end13_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true10.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %and = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  %brmerge = or i1 %tobool16.not, %tobool17.not
  %brmerge129 = or i1 %brmerge, %tobool19.not
  %or.cond = and i1 %brmerge129, %tobool14.not
  br i1 %or.cond, label %if.end13.do.body54_crit_edge, label %if.end21

if.end13.do.body54_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body54

if.end21:                                         ; preds = %if.end13
  %and22 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %brmerge132 = or i1 %tobool17.not, %tobool19.not
  %or.cond190 = and i1 %brmerge132, %tobool23.not
  br i1 %or.cond190, label %if.end21.do.body54_crit_edge, label %if.end29

if.end21.do.body54_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body54

if.end29:                                         ; preds = %if.end21
  %21 = ptrtoint ptr %rc_type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rc_type, align 8
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %22, label %do.end [
    i32 1, label %sw.bb31
    i32 2, label %sw.bb32
    i32 3, label %sw.bb33
    i32 4, label %sw.bb34
    i32 5, label %sw.bb39
    i32 6, label %sw.bb40
    i32 7, label %sw.bb41
    i32 8, label %sw.bb42
  ]

sw.bb31:                                          ; preds = %if.end29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rc.i) #6
  %24 = ptrtoint ptr %rc.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 -1 to ptr), ptr %rc.i, align 4, !annotation !64
  %h_nodeid.i = getelementptr inbounds %struct.dlm_header, ptr %rc, i32 0, i32 2
  %25 = ptrtoint ptr %h_nodeid.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %h_nodeid.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msg.i) #6
  %27 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 -1 to ptr), ptr %msg.i, align 4, !annotation !64
  %call.i = tail call i32 @dlm_slots_version(ptr noundef %rc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i = tail call i32 @dlm_recover_status(ptr noundef %ls) #6
  br label %do_create.i

if.end.i:                                         ; preds = %sw.bb31
  %rc_buf.i = getelementptr inbounds %struct.dlm_rcom, ptr %rc, i32 0, i32 6
  %28 = ptrtoint ptr %rc_buf.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rc_buf.i, align 8
  %30 = and i32 %29, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool3.not.i = icmp eq i32 %30, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i = tail call i32 @dlm_recover_status(ptr noundef %ls) #6
  br label %do_create.i

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_lock(ptr noundef %ls_recover_lock) #6
  %31 = ptrtoint ptr %ls_recover_status to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ls_recover_status, align 8
  %ls_num_slots.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 38
  %33 = ptrtoint ptr %ls_num_slots.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ls_num_slots.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %ls_recover_lock) #6
  %mul.i = shl i32 %34, 4
  %add.i = add i32 %mul.i, 32
  br label %do_create.i

do_create.i:                                      ; preds = %if.end6.i, %if.then4.i, %if.then.i
  %status.0.i = phi i32 [ %32, %if.end6.i ], [ %call5.i, %if.then4.i ], [ %call2.i, %if.then.i ]
  %len.0.i = phi i32 [ %add.i, %if.end6.i ], [ 32, %if.then4.i ], [ 32, %if.then.i ]
  %num_slots.0.i = phi i32 [ %34, %if.end6.i ], [ 0, %if.then4.i ], [ 0, %if.then.i ]
  %call8.i = call fastcc i32 @create_rcom_stateless(ptr noundef %ls, i32 noundef %26, i32 noundef 5, i32 noundef %len.0.i, ptr noundef nonnull %rc.i, ptr noundef nonnull %msg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %do_create.i.receive_rcom_status.exit_crit_edge

do_create.i.receive_rcom_status.exit_crit_edge:   ; preds = %do_create.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %receive_rcom_status.exit

if.end11.i:                                       ; preds = %do_create.i
  %rc_id.i = getelementptr inbounds %struct.dlm_rcom, ptr %rc, i32 0, i32 3
  %35 = ptrtoint ptr %rc_id.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %rc_id.i, align 8
  %37 = ptrtoint ptr %rc.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rc.i, align 4
  %rc_id12.i = getelementptr inbounds %struct.dlm_rcom, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %rc_id12.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %36, ptr %rc_id12.i, align 8
  %rc_seq.i = getelementptr inbounds %struct.dlm_rcom, ptr %rc, i32 0, i32 4
  %40 = ptrtoint ptr %rc_seq.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %rc_seq.i, align 8
  %rc_seq_reply.i = getelementptr inbounds %struct.dlm_rcom, ptr %38, i32 0, i32 5
  %42 = ptrtoint ptr %rc_seq_reply.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %rc_seq_reply.i, align 8
  %rc_result.i = getelementptr inbounds %struct.dlm_rcom, ptr %38, i32 0, i32 2
  %43 = ptrtoint ptr %rc_result.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %status.0.i, ptr %rc_result.i, align 4
  %rc_buf13.i = getelementptr inbounds %struct.dlm_rcom, ptr %38, i32 0, i32 6
  %ls_lvblen.i.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 5
  %44 = ptrtoint ptr %ls_lvblen.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ls_lvblen.i.i, align 8
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #6
  %47 = ptrtoint ptr %rc_buf13.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %rc_buf13.i, align 8
  %ls_exflags.i.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 4
  %48 = ptrtoint ptr %ls_exflags.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ls_exflags.i.i, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #6
  %rf_lsflags.i.i = getelementptr inbounds %struct.dlm_rcom, ptr %38, i32 1, i32 0, i32 1
  %51 = ptrtoint ptr %rf_lsflags.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %rf_lsflags.i.i, align 4
  %ls_slot.i.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 37
  %52 = ptrtoint ptr %ls_slot.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ls_slot.i.i, align 4
  %conv.i.i = trunc i32 %53 to i16
  %54 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #6
  %rf_our_slot.i.i = getelementptr inbounds %struct.dlm_rcom, ptr %38, i32 1, i32 0, i32 3
  %55 = ptrtoint ptr %rf_our_slot.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %rf_our_slot.i.i, align 4
  %conv1.i.i = trunc i32 %num_slots.0.i to i16
  %56 = tail call i16 @llvm.bswap.i16(i16 %conv1.i.i) #6
  %rf_num_slots.i.i = getelementptr inbounds %struct.dlm_rcom, ptr %38, i32 1, i32 0, i32 4
  %57 = ptrtoint ptr %rf_num_slots.i.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %rf_num_slots.i.i, align 2
  %ls_generation.i.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 3
  %58 = ptrtoint ptr %ls_generation.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ls_generation.i.i, align 8
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #6
  %rf_generation.i.i = getelementptr inbounds %struct.dlm_rcom, ptr %38, i32 1, i32 1
  %61 = ptrtoint ptr %rf_generation.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %rf_generation.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_slots.0.i)
  %tobool15.not.i = icmp eq i32 %num_slots.0.i, 0
  br i1 %tobool15.not.i, label %if.end11.i.do_send.i_crit_edge, label %if.end17.i

if.end11.i.do_send.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do_send.i

if.end17.i:                                       ; preds = %if.end11.i
  tail call void @_raw_spin_lock(ptr noundef %ls_recover_lock) #6
  %ls_num_slots19.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 38
  %62 = ptrtoint ptr %ls_num_slots19.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ls_num_slots19.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %num_slots.0.i)
  %cmp.not.i = icmp eq i32 %63, %num_slots.0.i
  br i1 %cmp.not.i, label %if.end34.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.end17.i
  tail call void @_raw_spin_unlock(ptr noundef %ls_recover_lock) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %64 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool22.not.i = icmp eq i32 %64, 0
  br i1 %tobool22.not.i, label %if.then20.i.do.end30.i_crit_edge, label %do.end.i

if.then20.i.do.end30.i_crit_edge:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end30.i

do.end.i:                                         ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #8
  %ls_name.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  %65 = ptrtoint ptr %ls_num_slots19.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ls_num_slots19.i, align 8
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %ls_name.i, i32 noundef %num_slots.0.i, i32 noundef %66) #9
  br label %do.end30.i

do.end30.i:                                       ; preds = %do.end.i, %if.then20.i.do.end30.i_crit_edge
  %67 = ptrtoint ptr %rc_result.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %rc_result.i, align 4
  %68 = ptrtoint ptr %ls_lvblen.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ls_lvblen.i.i, align 8
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #6
  %71 = ptrtoint ptr %rc_buf13.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %rc_buf13.i, align 8
  %72 = ptrtoint ptr %ls_exflags.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ls_exflags.i.i, align 4
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #6
  %75 = ptrtoint ptr %rf_lsflags.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %rf_lsflags.i.i, align 4
  %76 = ptrtoint ptr %ls_slot.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ls_slot.i.i, align 4
  %conv.i71.i = trunc i32 %77 to i16
  %78 = tail call i16 @llvm.bswap.i16(i16 %conv.i71.i) #6
  %79 = ptrtoint ptr %rf_our_slot.i.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %78, ptr %rf_our_slot.i.i, align 4
  %80 = ptrtoint ptr %rf_num_slots.i.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 0, ptr %rf_num_slots.i.i, align 2
  %81 = ptrtoint ptr %ls_generation.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %ls_generation.i.i, align 8
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #6
  %84 = ptrtoint ptr %rf_generation.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %rf_generation.i.i, align 8
  br label %do_send.i

if.end34.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dlm_slots_copy_out(ptr noundef %ls, ptr noundef %38) #6
  tail call void @_raw_spin_unlock(ptr noundef %ls_recover_lock) #6
  br label %do_send.i

do_send.i:                                        ; preds = %if.end34.i, %do.end30.i, %if.end11.i.do_send.i_crit_edge
  %85 = ptrtoint ptr %msg.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %msg.i, align 4
  tail call void @dlm_rcom_out(ptr noundef %38) #6
  tail call void @dlm_lowcomms_commit_msg(ptr noundef %86) #6
  tail call void @dlm_lowcomms_put_msg(ptr noundef %86) #6
  br label %receive_rcom_status.exit

receive_rcom_status.exit:                         ; preds = %do_send.i, %do_create.i.receive_rcom_status.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rc.i) #6
  br label %cleanup

sw.bb32:                                          ; preds = %if.end29
  %h_nodeid.i133 = getelementptr inbounds %struct.dlm_header, ptr %rc, i32 0, i32 2
  %87 = ptrtoint ptr %h_nodeid.i133 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %h_nodeid.i133, align 8
  %h_length.i = getelementptr inbounds %struct.dlm_header, ptr %rc, i32 0, i32 3
  %89 = ptrtoint ptr %h_length.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %h_length.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mb.i.i) #6
  %91 = ptrtoint ptr %mb.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr inttoptr (i32 -1 to ptr), ptr %mb.i.i, align 4, !annotation !64
  %call.i.i = call ptr @dlm_lowcomms_new_msg(i32 noundef %88, i32 noundef 4072, i32 noundef 3136, ptr noundef nonnull %mb.i.i, ptr noundef null, ptr noundef null) #6
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %create_rcom_stateless.exit.i, label %if.end.i138

create_rcom_stateless.exit.i:                     ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %88, i32 noundef 6, i32 noundef 4024) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mb.i.i) #6
  br label %cleanup

if.end.i138:                                      ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #8
  %92 = ptrtoint ptr %mb.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mb.i.i, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 196610, ptr %93, align 8
  %ls_global_id.i.i.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 2
  %95 = ptrtoint ptr %ls_global_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %ls_global_id.i.i.i, align 4
  %u.i.i.i = getelementptr inbounds %struct.dlm_header, ptr %93, i32 0, i32 1
  %97 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %u.i.i.i, align 4
  %call.i.i.i = call i32 @dlm_our_nodeid() #6
  %h_nodeid.i.i.i = getelementptr inbounds %struct.dlm_header, ptr %93, i32 0, i32 2
  %98 = ptrtoint ptr %h_nodeid.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %call.i.i.i, ptr %h_nodeid.i.i.i, align 8
  %h_length.i.i.i = getelementptr inbounds %struct.dlm_header, ptr %93, i32 0, i32 3
  %99 = ptrtoint ptr %h_length.i.i.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 4072, ptr %h_length.i.i.i, align 4
  %h_cmd.i.i.i = getelementptr inbounds %struct.dlm_header, ptr %93, i32 0, i32 4
  %100 = ptrtoint ptr %h_cmd.i.i.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 2, ptr %h_cmd.i.i.i, align 2
  %rc_type.i.i.i = getelementptr inbounds %struct.dlm_rcom, ptr %93, i32 0, i32 1
  %101 = ptrtoint ptr %rc_type.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 6, ptr %rc_type.i.i.i, align 8
  call void @_raw_spin_lock(ptr noundef %ls_recover_lock) #6
  %102 = ptrtoint ptr %ls_recover_seq to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %ls_recover_seq, align 8
  %rc_seq.i.i.i = getelementptr inbounds %struct.dlm_rcom, ptr %93, i32 0, i32 4
  %104 = ptrtoint ptr %rc_seq.i.i.i to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 %103, ptr %rc_seq.i.i.i, align 8
  call void @_raw_spin_unlock(ptr noundef %ls_recover_lock) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mb.i.i) #6
  %conv.i = zext i16 %90 to i32
  %sub.i = add nsw i32 %conv.i, -48
  %rc_id.i134 = getelementptr inbounds %struct.dlm_rcom, ptr %rc, i32 0, i32 3
  %105 = ptrtoint ptr %rc_id.i134 to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %rc_id.i134, align 8
  %rc_id2.i = getelementptr inbounds %struct.dlm_rcom, ptr %93, i32 0, i32 3
  %107 = ptrtoint ptr %rc_id2.i to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %106, ptr %rc_id2.i, align 8
  %rc_seq.i135 = getelementptr inbounds %struct.dlm_rcom, ptr %rc, i32 0, i32 4
  %108 = ptrtoint ptr %rc_seq.i135 to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %rc_seq.i135, align 8
  %rc_seq_reply.i136 = getelementptr inbounds %struct.dlm_rcom, ptr %93, i32 0, i32 5
  %110 = ptrtoint ptr %rc_seq_reply.i136 to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %109, ptr %rc_seq_reply.i136, align 8
  %rc_buf.i137 = getelementptr inbounds %struct.dlm_rcom, ptr %rc, i32 0, i32 6
  %rc_buf3.i = getelementptr inbounds %struct.dlm_rcom, ptr %93, i32 0, i32 6
  call void @dlm_copy_master_names(ptr noundef %ls, ptr noundef %rc_buf.i137, i32 noundef %sub.i, ptr noundef %rc_buf3.i, i32 noundef 4024, i32 noundef %88) #6
  call void @dlm_rcom_out(ptr noundef %93) #6
  call void @dlm_lowcomms_commit_msg(ptr noundef nonnull %call.i.i) #6
  call void @dlm_lowcomms_put_msg(ptr noundef nonnull %call.i.i) #6
  br label %cleanup

sw.bb33:                                          ; preds = %if.end29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret_nodeid.i) #6
  %111 = ptrtoint ptr %ret_nodeid.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 -1, ptr %ret_nodeid.i, align 4, !annotation !64
  %h_nodeid.i140 = getelementptr inbounds %struct.dlm_header, ptr %rc, i32 0, i32 2
  %112 = ptrtoint ptr %h_nodeid.i140 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %h_nodeid.i140, align 8
  %h_length.i141 = getelementptr inbounds %struct.dlm_header, ptr %rc, i32 0, i32 3
  %114 = ptrtoint ptr %h_length.i141 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %h_length.i141, align 4
  %conv.i142 = zext i16 %115 to i32
  %sub.i143 = add nsw i32 %conv.i142, -48
  %rc_id.i144 = getelementptr inbounds %struct.dlm_rcom, ptr %rc, i32 0, i32 3
  %116 = ptrtoint ptr %rc_id.i144 to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %rc_id.i144, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %117)
  %cmp.i = icmp eq i64 %117, 4294967295
  br i1 %cmp.i, label %do.end.i148, label %if.end.i151

do.end.i148:                                      ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #8
  %ls_name.i145 = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  %call.i146 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %ls_name.i145, i32 noundef %113) #9
  %rc_buf.i147 = getelementptr inbounds %struct.dlm_rcom, ptr %rc, i32 0, i32 6
  tail call void @dlm_dump_rsb_name(ptr noundef %ls, ptr noundef %rc_buf.i147, i32 noundef %sub.i143) #6
  br label %receive_rcom_lookup.exit

if.end.i151:                                      ; preds = %sw.bb33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mb.i.i139) #6
  %118 = ptrtoint ptr %mb.i.i139 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr inttoptr (i32 -1 to ptr), ptr %mb.i.i139, align 4, !annotation !64
  %call.i.i149 = call ptr @dlm_midcomms_get_mhandle(i32 noundef %113, i32 noundef 48, i32 noundef 3136, ptr noundef nonnull %mb.i.i139) #6
  %tobool.not.i.i150 = icmp eq ptr %call.i.i149, null
  br i1 %tobool.not.i.i150, label %create_rcom.exit.i, label %if.end6.i163

create_rcom.exit.i:                               ; preds = %if.end.i151
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i.i152 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef %113, i32 noundef 7, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mb.i.i139) #6
  br label %receive_rcom_lookup.exit

if.end6.i163:                                     ; preds = %if.end.i151
  %119 = ptrtoint ptr %mb.i.i139 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %mb.i.i139, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 196610, ptr %120, align 8
  %ls_global_id.i.i.i153 = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 2
  %122 = ptrtoint ptr %ls_global_id.i.i.i153 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %ls_global_id.i.i.i153, align 4
  %u.i.i.i154 = getelementptr inbounds %struct.dlm_header, ptr %120, i32 0, i32 1
  %124 = ptrtoint ptr %u.i.i.i154 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %u.i.i.i154, align 4
  %call.i.i.i155 = call i32 @dlm_our_nodeid() #6
  %h_nodeid.i.i.i156 = getelementptr inbounds %struct.dlm_header, ptr %120, i32 0, i32 2
  %125 = ptrtoint ptr %h_nodeid.i.i.i156 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %call.i.i.i155, ptr %h_nodeid.i.i.i156, align 8
  %h_length.i.i.i157 = getelementptr inbounds %struct.dlm_header, ptr %120, i32 0, i32 3
  %126 = ptrtoint ptr %h_length.i.i.i157 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 48, ptr %h_length.i.i.i157, align 4
  %h_cmd.i.i.i158 = getelementptr inbounds %struct.dlm_header, ptr %120, i32 0, i32 4
  %127 = ptrtoint ptr %h_cmd.i.i.i158 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 2, ptr %h_cmd.i.i.i158, align 2
  %rc_type.i.i.i159 = getelementptr inbounds %struct.dlm_rcom, ptr %120, i32 0, i32 1
  %128 = ptrtoint ptr %rc_type.i.i.i159 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 7, ptr %rc_type.i.i.i159, align 8
  call void @_raw_spin_lock(ptr noundef %ls_recover_lock) #6
  %129 = ptrtoint ptr %ls_recover_seq to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %ls_recover_seq, align 8
  %rc_seq.i.i.i162 = getelementptr inbounds %struct.dlm_rcom, ptr %120, i32 0, i32 4
  %131 = ptrtoint ptr %rc_seq.i.i.i162 to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 %130, ptr %rc_seq.i.i.i162, align 8
  call void @_raw_spin_unlock(ptr noundef %ls_recover_lock) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mb.i.i139) #6
  %rc_buf7.i = getelementptr inbounds %struct.dlm_rcom, ptr %rc, i32 0, i32 6
  %call9.i = call i32 @dlm_master_lookup(ptr noundef %ls, i32 noundef %113, ptr noundef %rc_buf7.i, i32 noundef %sub.i143, i32 noundef 2, ptr noundef nonnull %ret_nodeid.i, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end6.i163.if.end12.i_crit_edge, label %if.then11.i

if.end6.i163.if.end12.i_crit_edge:                ; preds = %if.end6.i163
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

if.then11.i:                                      ; preds = %if.end6.i163
  call void @__sanitizer_cov_trace_pc() #8
  %132 = ptrtoint ptr %ret_nodeid.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %call9.i, ptr %ret_nodeid.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.i, %if.end6.i163.if.end12.i_crit_edge
  %133 = ptrtoint ptr %ret_nodeid.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %ret_nodeid.i, align 4
  %rc_result.i164 = getelementptr inbounds %struct.dlm_rcom, ptr %120, i32 0, i32 2
  %135 = ptrtoint ptr %rc_result.i164 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %rc_result.i164, align 4
  %136 = ptrtoint ptr %rc_id.i144 to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %rc_id.i144, align 8
  %rc_id14.i = getelementptr inbounds %struct.dlm_rcom, ptr %120, i32 0, i32 3
  %138 = ptrtoint ptr %rc_id14.i to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 %137, ptr %rc_id14.i, align 8
  %rc_seq.i165 = getelementptr inbounds %struct.dlm_rcom, ptr %rc, i32 0, i32 4
  %139 = ptrtoint ptr %rc_seq.i165 to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %rc_seq.i165, align 8
  %rc_seq_reply.i166 = getelementptr inbounds %struct.dlm_rcom, ptr %120, i32 0, i32 5
  %141 = ptrtoint ptr %rc_seq_reply.i166 to i32
  call void @__asan_store8_noabort(i32 %141)
  store i64 %140, ptr %rc_seq_reply.i166, align 8
  call void @dlm_rcom_out(ptr noundef %120) #6
  call void @dlm_midcomms_commit_mhandle(ptr noundef nonnull %call.i.i149) #6
  br label %receive_rcom_lookup.exit

receive_rcom_lookup.exit:                         ; preds = %if.end12.i, %create_rcom.exit.i, %do.end.i148
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret_nodeid.i) #6
  br label %cleanup

sw.bb34:                                          ; preds = %if.end29
  %h_length = getelementptr inbounds %struct.dlm_header, ptr %rc, i32 0, i32 3
  %142 = ptrtoint ptr %h_length to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %h_length, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 156, i16 %143)
  %cmp35 = icmp ult i16 %143, 156
  br i1 %cmp35, label %sw.bb34.do.end75_crit_edge, label %if.end38

sw.bb34.do.end75_crit_edge:                       ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end75

if.end38:                                         ; preds = %sw.bb34
  %h_nodeid.i168 = getelementptr inbounds %struct.dlm_header, ptr %rc, i32 0, i32 2
  %144 = ptrtoint ptr %h_nodeid.i168 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %h_nodeid.i168, align 8
  %call.i169 = tail call i32 @dlm_recover_master_copy(ptr noundef %ls, ptr noundef %rc) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mb.i.i167) #6
  %146 = ptrtoint ptr %mb.i.i167 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr inttoptr (i32 -1 to ptr), ptr %mb.i.i167, align 4, !annotation !64
  %call.i.i170 = call ptr @dlm_midcomms_get_mhandle(i32 noundef %145, i32 noundef 156, i32 noundef 3136, ptr noundef nonnull %mb.i.i167) #6
  %tobool.not.i.i171 = icmp eq ptr %call.i.i170, null
  br i1 %tobool.not.i.i171, label %create_rcom.exit.i173, label %if.end.i188

create_rcom.exit.i173:                            ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i.i172 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef %145, i32 noundef 8, i32 noundef 108) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mb.i.i167) #6
  br label %cleanup

if.end.i188:                                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %147 = ptrtoint ptr %mb.i.i167 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %mb.i.i167, align 4
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 196610, ptr %148, align 8
  %ls_global_id.i.i.i174 = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 2
  %150 = ptrtoint ptr %ls_global_id.i.i.i174 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %ls_global_id.i.i.i174, align 4
  %u.i.i.i175 = getelementptr inbounds %struct.dlm_header, ptr %148, i32 0, i32 1
  %152 = ptrtoint ptr %u.i.i.i175 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %u.i.i.i175, align 4
  %call.i.i.i176 = call i32 @dlm_our_nodeid() #6
  %h_nodeid.i.i.i177 = getelementptr inbounds %struct.dlm_header, ptr %148, i32 0, i32 2
  %153 = ptrtoint ptr %h_nodeid.i.i.i177 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %call.i.i.i176, ptr %h_nodeid.i.i.i177, align 8
  %h_length.i.i.i178 = getelementptr inbounds %struct.dlm_header, ptr %148, i32 0, i32 3
  %154 = ptrtoint ptr %h_length.i.i.i178 to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 156, ptr %h_length.i.i.i178, align 4
  %h_cmd.i.i.i179 = getelementptr inbounds %struct.dlm_header, ptr %148, i32 0, i32 4
  %155 = ptrtoint ptr %h_cmd.i.i.i179 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 2, ptr %h_cmd.i.i.i179, align 2
  %rc_type.i.i.i180 = getelementptr inbounds %struct.dlm_rcom, ptr %148, i32 0, i32 1
  %156 = ptrtoint ptr %rc_type.i.i.i180 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 8, ptr %rc_type.i.i.i180, align 8
  call void @_raw_spin_lock(ptr noundef %ls_recover_lock) #6
  %157 = ptrtoint ptr %ls_recover_seq to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %ls_recover_seq, align 8
  %rc_seq.i.i.i183 = getelementptr inbounds %struct.dlm_rcom, ptr %148, i32 0, i32 4
  %159 = ptrtoint ptr %rc_seq.i.i.i183 to i32
  call void @__asan_store8_noabort(i32 %159)
  store i64 %158, ptr %rc_seq.i.i.i183, align 8
  call void @_raw_spin_unlock(ptr noundef %ls_recover_lock) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mb.i.i167) #6
  %rc_buf.i184 = getelementptr inbounds %struct.dlm_rcom, ptr %148, i32 0, i32 6
  %rc_buf2.i = getelementptr inbounds %struct.dlm_rcom, ptr %rc, i32 0, i32 6
  %160 = call ptr @memcpy(ptr %rc_buf.i184, ptr %rc_buf2.i, i32 108)
  %rc_id.i185 = getelementptr inbounds %struct.dlm_rcom, ptr %rc, i32 0, i32 3
  %161 = ptrtoint ptr %rc_id.i185 to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %rc_id.i185, align 8
  %rc_id4.i = getelementptr inbounds %struct.dlm_rcom, ptr %148, i32 0, i32 3
  %163 = ptrtoint ptr %rc_id4.i to i32
  call void @__asan_store8_noabort(i32 %163)
  store i64 %162, ptr %rc_id4.i, align 8
  %rc_seq.i186 = getelementptr inbounds %struct.dlm_rcom, ptr %rc, i32 0, i32 4
  %164 = ptrtoint ptr %rc_seq.i186 to i32
  call void @__asan_load8_noabort(i32 %164)
  %165 = load i64, ptr %rc_seq.i186, align 8
  %rc_seq_reply.i187 = getelementptr inbounds %struct.dlm_rcom, ptr %148, i32 0, i32 5
  %166 = ptrtoint ptr %rc_seq_reply.i187 to i32
  call void @__asan_store8_noabort(i32 %166)
  store i64 %165, ptr %rc_seq_reply.i187, align 8
  call void @dlm_rcom_out(ptr noundef %148) #6
  call void @dlm_midcomms_commit_mhandle(ptr noundef nonnull %call.i.i170) #6
  br label %cleanup

sw.bb39:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @receive_sync_reply(ptr noundef %ls, ptr noundef %rc)
  br label %cleanup

sw.bb40:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @receive_sync_reply(ptr noundef %ls, ptr noundef %rc)
  br label %cleanup

sw.bb41:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %call.i189 = tail call i32 @dlm_recover_master_reply(ptr noundef %ls, ptr noundef %rc) #6
  br label %cleanup

sw.bb42:                                          ; preds = %if.end29
  %h_length44 = getelementptr inbounds %struct.dlm_header, ptr %rc, i32 0, i32 3
  %167 = ptrtoint ptr %h_length44 to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %h_length44, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 156, i16 %168)
  %cmp46 = icmp ult i16 %168, 156
  br i1 %cmp46, label %sw.bb42.do.end75_crit_edge, label %if.end49

sw.bb42.do.end75_crit_edge:                       ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end75

if.end49:                                         ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #8
  %call50 = tail call i32 @dlm_recover_process_copy(ptr noundef %ls, ptr noundef %rc) #6
  br label %cleanup

do.end:                                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %ls_name = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %ls_name, i32 noundef %22) #9
  br label %cleanup

do.body54:                                        ; preds = %if.end21.do.body54_crit_edge, %if.end13.do.body54_crit_edge, %land.lhs.true10.do.body54_crit_edge, %land.lhs.true.do.body54_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %169 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %tobool55.not = icmp eq i32 %169, 0
  br i1 %tobool55.not, label %do.body54.cleanup_crit_edge, label %if.then56

do.body54.cleanup_crit_edge:                      ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then56:                                        ; preds = %do.body54
  %call57 = tail call i32 @___ratelimit(ptr noundef nonnull @dlm_receive_rcom._rs, ptr noundef nonnull @.str.4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.then56.cleanup_crit_edge, label %do.end62

if.then56.cleanup_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end62:                                         ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #8
  %ls_name64 = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  %170 = ptrtoint ptr %rc_type to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %rc_type, align 8
  %rc_seq = getelementptr inbounds %struct.dlm_rcom, ptr %rc, i32 0, i32 4
  %172 = ptrtoint ptr %rc_seq to i32
  call void @__asan_load8_noabort(i32 %172)
  %173 = load i64, ptr %rc_seq, align 8
  %rc_seq_reply67 = getelementptr inbounds %struct.dlm_rcom, ptr %rc, i32 0, i32 5
  %174 = ptrtoint ptr %rc_seq_reply67 to i32
  call void @__asan_load8_noabort(i32 %174)
  %175 = load i64, ptr %rc_seq_reply67, align 8
  %ls_generation = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 3
  %176 = ptrtoint ptr %ls_generation to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %ls_generation, align 8
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %ls_name64, i32 noundef %171, i32 noundef %nodeid, i64 noundef %173, i64 noundef %175, i64 noundef %16, i32 noundef %12, i32 noundef %177) #9
  br label %cleanup

do.end75:                                         ; preds = %sw.bb42.do.end75_crit_edge, %sw.bb34.do.end75_crit_edge
  %ls_name77 = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %ls_name77, i32 noundef %22, i32 noundef %nodeid) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end75, %do.end62, %if.then56.cleanup_crit_edge, %do.body54.cleanup_crit_edge, %do.end, %if.end49, %sw.bb41, %sw.bb40, %sw.bb39, %if.end.i188, %create_rcom.exit.i173, %receive_rcom_lookup.exit, %if.end.i138, %create_rcom_stateless.exit.i, %receive_rcom_status.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @receive_sync_reply(ptr noundef %ls, ptr nocapture noundef readonly %rc_in) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_rcom_spin = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 77
  tail call void @_raw_spin_lock(ptr noundef %ls_rcom_spin) #6
  %ls_flags = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 9
  %0 = ptrtoint ptr %ls_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ls_flags, align 4
  %2 = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %rc_id = getelementptr inbounds %struct.dlm_rcom, ptr %rc_in, i32 0, i32 3
  %3 = ptrtoint ptr %rc_id to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %rc_id, align 8
  %ls_rcom_seq = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 76
  %5 = ptrtoint ptr %ls_rcom_seq to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %ls_rcom_seq, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %6)
  %cmp.not = icmp eq i64 %4, %6
  br i1 %cmp.not, label %if.end8, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %7 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not = icmp eq i32 %7, 0
  br i1 %tobool1.not, label %do.body.out_crit_edge, label %do.end

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %ls_name = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  %rc_type = getelementptr inbounds %struct.dlm_rcom, ptr %rc_in, i32 0, i32 1
  %8 = ptrtoint ptr %rc_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rc_type, align 8
  %h_nodeid = getelementptr inbounds %struct.dlm_header, ptr %rc_in, i32 0, i32 2
  %10 = ptrtoint ptr %h_nodeid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %h_nodeid, align 8
  %rc_id4 = getelementptr inbounds %struct.dlm_rcom, ptr %rc_in, i32 0, i32 3
  %12 = ptrtoint ptr %rc_id4 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %rc_id4, align 8
  %ls_rcom_seq5 = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 76
  %14 = ptrtoint ptr %ls_rcom_seq5 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %ls_rcom_seq5, align 8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %ls_name, i32 noundef %9, i32 noundef %11, i64 noundef %13, i64 noundef %15) #9
  br label %out

if.end8:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %ls_recover_buf = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 71
  %16 = ptrtoint ptr %ls_recover_buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ls_recover_buf, align 8
  %h_length = getelementptr inbounds %struct.dlm_header, ptr %rc_in, i32 0, i32 3
  %18 = ptrtoint ptr %h_length to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %h_length, align 4
  %conv = zext i16 %19 to i32
  %20 = call ptr @memcpy(ptr %17, ptr %rc_in, i32 %conv)
  tail call void @_set_bit(i32 noundef 5, ptr noundef %ls_flags) #6
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %ls_flags) #6
  %ls_wait_general = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 83
  tail call void @__wake_up(ptr noundef %ls_wait_general, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %out

out:                                              ; preds = %if.end8, %do.end, %do.body.out_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ls_rcom_spin) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_recover_process_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dlm_lowcomms_new_msg(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_lowcomms_commit_msg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_lowcomms_put_msg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_slots_version(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_slots_copy_out(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_copy_master_names(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_dump_rsb_name(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_master_lookup(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_recover_master_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_recover_master_reply(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/dlm/rcom.c", i32 213, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @dlm_rcom_status._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @dlm_rcom_status._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/dlm/rcom.c", i32 658, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @dlm_receive_rcom._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @dlm_receive_rcom._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/dlm/rcom.c", i32 663, i32 2}
!13 = !{ptr @dlm_receive_rcom._rs, !12, !"_rs", i1 false, i1 false}
!14 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @dlm_receive_rcom._entry.6, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @dlm_receive_rcom._entry_ptr.8, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/dlm/rcom.c", i32 673, i32 2}
!19 = !{ptr @dlm_receive_rcom._entry.9, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @dlm_receive_rcom._entry_ptr.11, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/dlm/rcom.c", i32 82, i32 3}
!23 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @create_rcom_stateless._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @create_rcom_stateless._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/dlm/rcom.c", i32 131, i32 3}
!28 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @check_rcom_config._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @check_rcom_config._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/dlm/rcom.c", i32 139, i32 3}
!33 = !{ptr @check_rcom_config._entry.16, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @check_rcom_config._entry_ptr.18, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/dlm/rcom.c", i32 61, i32 3}
!37 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @create_rcom._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @create_rcom._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/dlm/rcom.c", i32 272, i32 3}
!42 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @receive_rcom_status._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @receive_rcom_status._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/dlm/rcom.c", i32 383, i32 3}
!47 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @receive_rcom_lookup._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @receive_rcom_lookup._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/dlm/rcom.c", i32 291, i32 3}
!52 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @receive_sync_reply._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @receive_sync_reply._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{!"auto-init"}
