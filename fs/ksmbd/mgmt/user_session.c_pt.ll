; ModuleID = '/llk/IR_all_yes/fs/ksmbd/mgmt/user_session.c_pt.bc'
source_filename = "../fs/ksmbd/mgmt/user_session.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ksmbd_session_rpc = type { i32, i32, %struct.list_head }
%struct.ksmbd_session = type { i64, ptr, ptr, i32, i32, i8, i8, i8, i32, ptr, [40 x i8], %struct.hlist_node, %struct.list_head, %struct.xarray, %struct.ida, %struct.list_head, [32 x i8], [32 x i8], [16 x i8], %struct.list_head, %struct.ksmbd_file_table, %struct.atomic_t }
%struct.ksmbd_file_table = type { %struct.rwlock_t, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.ksmbd_conn = type { ptr, ptr, ptr, i32, %struct.mutex, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.spinlock, %struct.wait_queue_head, %struct.spinlock, %struct.list_head, %struct.list_head, i32, %struct.ksmbd_stats, [16 x i8], %struct.ntlmssp_auth, %struct.spinlock, %struct.list_head, ptr, i8, i32, i32, i8, i8, i16, i16, i16, ptr, ptr, %struct.list_head, %struct.__kernel_sockaddr_storage, %struct.ida, i16, i16, i8, i8, i16, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ksmbd_stats = type { %struct.atomic_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.ntlmssp_auth = type { i8, i32, i32, [16 x i8], [8 x i8] }
%struct.__kernel_sockaddr_storage = type { %union.anon.166 }
%union.anon.166 = type { ptr, [124 x i8] }
%struct.preauth_session = type { [64 x i8], i64, %struct.list_head }
%struct.preauth_integrity_info = type { i16, [64 x i8] }

@sessions_table_lock = internal global { %struct.rw_semaphore, [32 x i8] } { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @sessions_table_lock, i64 56), ptr getelementptr (i8, ptr @sessions_table_lock, i64 56) }, ptr @sessions_table_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [32 x i8] zeroinitializer }, align 32
@session_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.12 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@put_session._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013ksmbd: get/%s seems to be mismatched.\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"put_session\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"fs/ksmbd/mgmt/user_session.c\00", [35 x i8] zeroinitializer }, align 32
@put_session._entry_ptr = internal global ptr @put_session._entry, section ".printk_index", align 4
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\\srvsvc\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"srvsvc\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\\wkssvc\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wkssvc\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LANMAN\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lanman\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\\samr\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"samr\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\\lsarpc\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lsarpc\00", [25 x i8] zeroinitializer }, align 32
@__rpc_method._entry = internal constant %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 87, ptr null, ptr null }, align 1
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013ksmbd: Unsupported RPC: %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"__rpc_method\00", [19 x i8] zeroinitializer }, align 32
@__rpc_method._entry_ptr = internal global ptr @__rpc_method._entry, section ".printk_index", align 4
@__session_rpc_close._entry = internal constant %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 49, ptr null, ptr null }, align 1
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013ksmbd: Unable to close RPC pipe %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__session_rpc_close\00", [44 x i8] zeroinitializer }, align 32
@__session_rpc_close._entry_ptr = internal global ptr @__session_rpc_close._entry, section ".printk_index", align 4
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sessions_table_lock.wait_lock\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sessions_table_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"session_ida.xa_lock\00", [44 x i8] zeroinitializer }, align 32
@sessions_table = internal global { [8 x %struct.hlist_head], [32 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.21 = private unnamed_addr constant [20 x i8] c"sessions_table_lock\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [12 x i8] c"session_ida\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 230, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 72, i32 24 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 72, i32 57 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 75, i32 24 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 75, i32 57 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 78, i32 24 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 78, i32 55 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 81, i32 24 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 81, i32 55 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 84, i32 24 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 84, i32 57 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 87, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 49, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 23, i32 8 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 19, i32 8 }
@___asan_gen_.90 = private unnamed_addr constant [15 x i8] c"sessions_table\00", align 1
@___asan_gen_.91 = private constant [32 x i8] c"../fs/ksmbd/mgmt/user_session.c\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 22, i32 8 }
@___asan_gen_.93 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 378, i32 2 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__rpc_method._entry, ptr @__rpc_method._entry_ptr, ptr @__session_rpc_close._entry, ptr @__session_rpc_close._entry_ptr, ptr @put_session._entry, ptr @put_session._entry_ptr, ptr @sessions_table_lock, ptr @session_ida, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @sessions_table, ptr @xa_init_flags.__key, ptr @.str.20], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sessions_table_lock to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @session_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @put_session._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sessions_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_session_rpc_open(ptr noundef %sess, ptr noundef %rpc_name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @strcmp(ptr noundef %rpc_name, ptr noundef nonnull dereferenceable(8) @.str.3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %lor.lhs.false.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false.i:                                  ; preds = %entry
  %call1.i = tail call i32 @strcmp(ptr noundef %rpc_name, ptr noundef nonnull dereferenceable(7) @.str.4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.end_crit_edge, label %if.end.i

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @strcmp(ptr noundef %rpc_name, ptr noundef nonnull dereferenceable(8) @.str.5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end_crit_edge, label %lor.lhs.false5.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false5.i:                                 ; preds = %if.end.i
  %call6.i = tail call i32 @strcmp(ptr noundef %rpc_name, ptr noundef nonnull dereferenceable(7) @.str.6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %lor.lhs.false5.i.if.end_crit_edge, label %if.end9.i

lor.lhs.false5.i.if.end_crit_edge:                ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end9.i:                                        ; preds = %lor.lhs.false5.i
  %call10.i = tail call i32 @strcmp(ptr noundef %rpc_name, ptr noundef nonnull dereferenceable(7) @.str.7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end9.i.if.end_crit_edge, label %lor.lhs.false12.i

if.end9.i.if.end_crit_edge:                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false12.i:                                ; preds = %if.end9.i
  %call13.i = tail call i32 @strcmp(ptr noundef %rpc_name, ptr noundef nonnull dereferenceable(7) @.str.8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %lor.lhs.false12.i.if.end_crit_edge, label %if.end16.i

lor.lhs.false12.i.if.end_crit_edge:               ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end16.i:                                       ; preds = %lor.lhs.false12.i
  %call17.i = tail call i32 @strcmp(ptr noundef %rpc_name, ptr noundef nonnull dereferenceable(6) @.str.9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end16.i.if.end_crit_edge, label %lor.lhs.false19.i

if.end16.i.if.end_crit_edge:                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false19.i:                                ; preds = %if.end16.i
  %call20.i = tail call i32 @strcmp(ptr noundef %rpc_name, ptr noundef nonnull dereferenceable(5) @.str.10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %lor.lhs.false19.i.if.end_crit_edge, label %if.end23.i

lor.lhs.false19.i.if.end_crit_edge:               ; preds = %lor.lhs.false19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end23.i:                                       ; preds = %lor.lhs.false19.i
  %call24.i = tail call i32 @strcmp(ptr noundef %rpc_name, ptr noundef nonnull dereferenceable(8) @.str.11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end23.i.if.end_crit_edge, label %lor.lhs.false26.i

if.end23.i.if.end_crit_edge:                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false26.i:                                ; preds = %if.end23.i
  %call27.i = tail call i32 @strcmp(ptr noundef %rpc_name, ptr noundef nonnull dereferenceable(7) @.str.12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %lor.lhs.false26.i.if.end_crit_edge, label %__rpc_method.exit

lor.lhs.false26.i.if.end_crit_edge:               ; preds = %lor.lhs.false26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

__rpc_method.exit:                                ; preds = %lor.lhs.false26.i
  call void @__sanitizer_cov_trace_pc() #9
  %call31.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %rpc_name) #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false26.i.if.end_crit_edge, %if.end23.i.if.end_crit_edge, %lor.lhs.false19.i.if.end_crit_edge, %if.end16.i.if.end_crit_edge, %lor.lhs.false12.i.if.end_crit_edge, %if.end9.i.if.end_crit_edge, %lor.lhs.false5.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i.ph = phi i32 [ 2048, %if.end23.i.if.end_crit_edge ], [ 2048, %lor.lhs.false26.i.if.end_crit_edge ], [ 1024, %if.end16.i.if.end_crit_edge ], [ 1024, %lor.lhs.false19.i.if.end_crit_edge ], [ 257, %if.end9.i.if.end_crit_edge ], [ 257, %lor.lhs.false12.i.if.end_crit_edge ], [ 4, %if.end.i.if.end_crit_edge ], [ 4, %lor.lhs.false5.i.if.end_crit_edge ], [ 2, %entry.if.end_crit_edge ], [ 2, %lor.lhs.false.i.if.end_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #12
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %list = getelementptr inbounds %struct.ksmbd_session_rpc, ptr %call7.i.i, i32 0, i32 2
  %rpc_handle_list = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 15
  %1 = ptrtoint ptr %rpc_handle_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rpc_handle_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %rpc_handle_list, ptr noundef %2) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end5.list_add.exit_crit_edge

if.end5.list_add.exit_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %prev1.i.i, align 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %2, ptr %list, align 8
  %prev3.i.i = getelementptr inbounds %struct.ksmbd_session_rpc, ptr %call7.i.i, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %rpc_handle_list, ptr %prev3.i.i, align 4
  %6 = ptrtoint ptr %rpc_handle_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %list, ptr %rpc_handle_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end5.list_add.exit_crit_edge
  %method6 = getelementptr inbounds %struct.ksmbd_session_rpc, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %method6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %retval.0.i.ph, ptr %method6, align 4
  %call7 = tail call i32 @ksmbd_ipc_id_alloc() #7
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call7, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %list_add.exit.error_crit_edge, label %if.end10

list_add.exit.error_crit_edge:                    ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end10:                                         ; preds = %list_add.exit
  %call12 = tail call ptr @ksmbd_rpc_open(ptr noundef %sess, i32 noundef %call7) #7
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end10.error_crit_edge, label %if.end15

if.end10.error_crit_edge:                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kvfree(ptr noundef nonnull %call12) #7
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call7.i.i, align 8
  br label %cleanup

error:                                            ; preds = %if.end10.error_crit_edge, %list_add.exit.error_crit_edge
  %call.i.i31 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #7
  br i1 %call.i.i31, label %if.end.i.i32, label %error.list_del.exit_crit_edge

error.list_del.exit_crit_edge:                    ; preds = %error
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i32:                                     ; preds = %error
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.ksmbd_session_rpc, ptr %call7.i.i, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %list, align 8
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i32, %error.list_del.exit_crit_edge
  %17 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.ksmbd_session_rpc, ptr %call7.i.i, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %if.end15, %if.end.cleanup_crit_edge, %__rpc_method.exit
  %retval.0 = phi i32 [ -22, %list_del.exit ], [ %10, %if.end15 ], [ -22, %__rpc_method.exit ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksmbd_ipc_id_alloc() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ksmbd_rpc_open(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ksmbd_session_rpc_close(ptr noundef %sess, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rpc_handle_list = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 15
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %rpc_handle_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %rpc_handle_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.cond
  %entry1.0 = getelementptr i8, ptr %.pn, i32 -8
  %1 = ptrtoint ptr %entry1.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %entry1.0, align 4
  %cmp4 = icmp eq i32 %2, %id
  br i1 %cmp4, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

if.then:                                          ; preds = %for.body
  %entry1.0.le = getelementptr i8, ptr %.pn, i32 -8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %11 = ptrtoint ptr %entry1.0.le to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %entry1.0.le, align 4
  %call.i = tail call ptr @ksmbd_rpc_close(ptr noundef %sess, i32 noundef %12) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %list_del.exit.__session_rpc_close.exit_crit_edge

list_del.exit.__session_rpc_close.exit_crit_edge: ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %__session_rpc_close.exit

do.end.i:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %entry1.0.le to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %entry1.0.le, align 4
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %14) #11
  br label %__session_rpc_close.exit

__session_rpc_close.exit:                         ; preds = %do.end.i, %list_del.exit.__session_rpc_close.exit_crit_edge
  tail call void @kvfree(ptr noundef %call.i) #7
  %15 = ptrtoint ptr %entry1.0.le to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %entry1.0.le, align 4
  tail call void @ksmbd_rpc_id_free(i32 noundef %16) #7
  tail call void @kfree(ptr noundef %entry1.0.le) #7
  br label %for.end

for.end:                                          ; preds = %__session_rpc_close.exit, %for.cond.for.end_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_session_rpc_method(ptr noundef readonly %sess, i32 noundef %id) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rpc_handle_list = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 15
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %rpc_handle_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %rpc_handle_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %entry1.0 = getelementptr i8, ptr %.pn, i32 -8
  %1 = ptrtoint ptr %entry1.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %entry1.0, align 4
  %cmp4 = icmp eq i32 %2, %id
  br i1 %cmp4, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %method = getelementptr i8, ptr %.pn, i32 -4
  %3 = ptrtoint ptr %method to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %method, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ksmbd_session_destroy(ptr noundef %sess) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sess, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %refcnt = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 21
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #7, !srcloc !58
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.end2, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end2:                                          ; preds = %if.end
  %sessions_entry = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 19
  %call.i.i20 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %sessions_entry) #7
  br i1 %call.i.i20, label %if.end.i.i, label %if.end2.list_del.exit_crit_edge

if.end2.list_del.exit_crit_edge:                  ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 19, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %sessions_entry to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sessions_entry, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end2.list_del.exit_crit_edge
  %7 = ptrtoint ptr %sessions_entry to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 256 to ptr), ptr %sessions_entry, align 4
  %prev.i = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 19, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @down_write(ptr noundef nonnull @sessions_table_lock) #7
  %hlist = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 11
  %pprev.i.i.i = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 11, i32 1
  %9 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.not.i.i, label %list_del.exit.hash_del.exit_crit_edge, label %if.then.i.i

list_del.exit.hash_del.exit_crit_edge:            ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %hash_del.exit

if.then.i.i:                                      ; preds = %list_del.exit
  %11 = ptrtoint ptr %hlist to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hlist, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %12, ptr %10, align 4
  %tobool.not.i3.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %12, i32 0, i32 1
  %14 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %10, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %15 = ptrtoint ptr %hlist to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %hlist, align 4
  %16 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %pprev.i.i.i, align 4
  br label %hash_del.exit

hash_del.exit:                                    ; preds = %__hlist_del.exit.i.i, %list_del.exit.hash_del.exit_crit_edge
  tail call void @up_write(ptr noundef nonnull @sessions_table_lock) #7
  %user = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 1
  %17 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %user, align 8
  %tobool3.not = icmp eq ptr %18, null
  br i1 %tobool3.not, label %hash_del.exit.if.end6_crit_edge, label %if.then4

hash_del.exit.if.end6_crit_edge:                  ; preds = %hash_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then4:                                         ; preds = %hash_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ksmbd_free_user(ptr noundef nonnull %18) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %hash_del.exit.if.end6_crit_edge
  %call7 = tail call i32 @ksmbd_tree_conn_session_logoff(ptr noundef nonnull %sess) #7
  %file_table = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 20
  tail call void @ksmbd_destroy_file_table(ptr noundef %file_table) #7
  %rpc_handle_list.i = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 15
  %19 = ptrtoint ptr %rpc_handle_list.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %rpc_handle_list.i, align 4
  %cmp.i.not6.i = icmp eq ptr %20, %rpc_handle_list.i
  br i1 %cmp.i.not6.i, label %if.end6.ksmbd_session_rpc_clear_list.exit_crit_edge, label %if.end6.while.body.i_crit_edge

if.end6.while.body.i_crit_edge:                   ; preds = %if.end6
  br label %while.body.i

if.end6.ksmbd_session_rpc_clear_list.exit_crit_edge: ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %ksmbd_session_rpc_clear_list.exit

while.body.i:                                     ; preds = %__session_rpc_close.exit.i.while.body.i_crit_edge, %if.end6.while.body.i_crit_edge
  %21 = phi ptr [ %37, %__session_rpc_close.exit.i.while.body.i_crit_edge ], [ %20, %if.end6.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %21, i32 -8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %21) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i.i, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %28 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %21, align 4
  %prev.i.i21 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i21 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i21, align 4
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr.i, align 4
  %call.i.i22 = tail call ptr @ksmbd_rpc_close(ptr noundef nonnull %sess, i32 noundef %31) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i22, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %list_del.exit.i.__session_rpc_close.exit.i_crit_edge

list_del.exit.i.__session_rpc_close.exit.i_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__session_rpc_close.exit.i

do.end.i.i:                                       ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i, align 4
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %33) #11
  br label %__session_rpc_close.exit.i

__session_rpc_close.exit.i:                       ; preds = %do.end.i.i, %list_del.exit.i.__session_rpc_close.exit.i_crit_edge
  tail call void @kvfree(ptr noundef %call.i.i22) #7
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr.i, align 4
  tail call void @ksmbd_rpc_id_free(i32 noundef %35) #7
  tail call void @kfree(ptr noundef %add.ptr.i) #7
  %36 = ptrtoint ptr %rpc_handle_list.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %rpc_handle_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %37, %rpc_handle_list.i
  br i1 %cmp.i.not.i, label %__session_rpc_close.exit.i.ksmbd_session_rpc_clear_list.exit_crit_edge, label %__session_rpc_close.exit.i.while.body.i_crit_edge

__session_rpc_close.exit.i.while.body.i_crit_edge: ; preds = %__session_rpc_close.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

__session_rpc_close.exit.i.ksmbd_session_rpc_clear_list.exit_crit_edge: ; preds = %__session_rpc_close.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ksmbd_session_rpc_clear_list.exit

ksmbd_session_rpc_clear_list.exit:                ; preds = %__session_rpc_close.exit.i.ksmbd_session_rpc_clear_list.exit_crit_edge, %if.end6.ksmbd_session_rpc_clear_list.exit_crit_edge
  %ksmbd_chann_list.i = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 12
  %38 = ptrtoint ptr %ksmbd_chann_list.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ksmbd_chann_list.i, align 4
  %cmp.not20.i = icmp eq ptr %39, %ksmbd_chann_list.i
  br i1 %cmp.not20.i, label %ksmbd_session_rpc_clear_list.exit.free_channel_list.exit_crit_edge, label %ksmbd_session_rpc_clear_list.exit.for.body.i_crit_edge

ksmbd_session_rpc_clear_list.exit.for.body.i_crit_edge: ; preds = %ksmbd_session_rpc_clear_list.exit
  br label %for.body.i

ksmbd_session_rpc_clear_list.exit.free_channel_list.exit_crit_edge: ; preds = %ksmbd_session_rpc_clear_list.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_channel_list.exit

for.body.i:                                       ; preds = %list_del.exit.i28.for.body.i_crit_edge, %ksmbd_session_rpc_clear_list.exit.for.body.i_crit_edge
  %.pn.in21.i = phi ptr [ %.pn.i, %list_del.exit.i28.for.body.i_crit_edge ], [ %39, %ksmbd_session_rpc_clear_list.exit.for.body.i_crit_edge ]
  %chann.0.i = getelementptr i8, ptr %.pn.in21.i, i32 -20
  %40 = ptrtoint ptr %.pn.in21.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pn.i = load ptr, ptr %.pn.in21.i, align 4
  %call.i.i.i23 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in21.i) #7
  br i1 %call.i.i.i23, label %if.end.i.i.i26, label %for.body.i.list_del.exit.i28_crit_edge

for.body.i.list_del.exit.i28_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i28

if.end.i.i.i26:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i24 = getelementptr inbounds %struct.list_head, ptr %.pn.in21.i, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i.i24, align 4
  %43 = ptrtoint ptr %.pn.in21.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %.pn.in21.i, align 4
  %prev1.i.i.i.i25 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev1.i.i.i.i25 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev1.i.i.i.i25, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %44, ptr %42, align 4
  br label %list_del.exit.i28

list_del.exit.i28:                                ; preds = %if.end.i.i.i26, %for.body.i.list_del.exit.i28_crit_edge
  %47 = ptrtoint ptr %.pn.in21.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in21.i, align 4
  %prev.i.i27 = getelementptr inbounds %struct.list_head, ptr %.pn.in21.i, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i.i27 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i27, align 4
  tail call void @kfree(ptr noundef %chann.0.i) #7
  %cmp.not.i = icmp eq ptr %.pn.i, %ksmbd_chann_list.i
  br i1 %cmp.not.i, label %list_del.exit.i28.free_channel_list.exit_crit_edge, label %list_del.exit.i28.for.body.i_crit_edge

list_del.exit.i28.for.body.i_crit_edge:           ; preds = %list_del.exit.i28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

list_del.exit.i28.free_channel_list.exit_crit_edge: ; preds = %list_del.exit.i28
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_channel_list.exit

free_channel_list.exit:                           ; preds = %list_del.exit.i28.free_channel_list.exit_crit_edge, %ksmbd_session_rpc_clear_list.exit.free_channel_list.exit_crit_edge
  %Preauth_HashValue = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 9
  %49 = ptrtoint ptr %Preauth_HashValue to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %Preauth_HashValue, align 8
  tail call void @kfree(ptr noundef %50) #7
  %51 = ptrtoint ptr %sess to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %sess, align 8
  %conv = trunc i64 %52 to i32
  tail call void @ksmbd_release_id(ptr noundef nonnull @session_ida, i32 noundef %conv) #7
  tail call void @kfree(ptr noundef nonnull %sess) #7
  br label %return

return:                                           ; preds = %free_channel_list.exit, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksmbd_free_user(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksmbd_tree_conn_session_logoff(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksmbd_destroy_file_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksmbd_release_id(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ksmbd_session_register(ptr noundef %conn, ptr noundef %sess) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conn1 = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 2
  %0 = ptrtoint ptr %conn1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %conn, ptr %conn1, align 4
  %sessions_entry = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 19
  %sessions = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 11
  %1 = ptrtoint ptr %sessions to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sessions, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %sessions_entry, ptr noundef %sessions, ptr noundef %2) #7
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sessions_entry, ptr %prev1.i.i, align 4
  %4 = ptrtoint ptr %sessions_entry to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %2, ptr %sessions_entry, align 4
  %prev3.i.i = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 19, i32 1
  %5 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %sessions, ptr %prev3.i.i, align 4
  %6 = ptrtoint ptr %sessions to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %sessions_entry, ptr %sessions, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ksmbd_sessions_deregister(ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sessions = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 11
  %0 = ptrtoint ptr %sessions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sessions, align 4
  %cmp.i.not3 = icmp eq ptr %1, %sessions
  br i1 %cmp.i.not3, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %4, %while.body.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %2, i32 -284
  tail call void @ksmbd_session_destroy(ptr noundef %add.ptr)
  %3 = ptrtoint ptr %sessions to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %sessions, align 4
  %cmp.i.not = icmp eq ptr %4, %sessions
  br i1 %cmp.i.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ksmbd_session_lookup(ptr noundef readonly %conn, i64 noundef %id) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sessions = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 11
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %sessions, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %sessions
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %sess.0 = getelementptr i8, ptr %.pn, i32 -284
  %1 = ptrtoint ptr %sess.0 to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %sess.0, align 8
  %cmp.i = icmp eq i64 %2, %id
  br i1 %cmp.i, label %cleanup.split.loop.exit14, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

cleanup.split.loop.exit14:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %sess.0.le = getelementptr i8, ptr %.pn, i32 -284
  br label %cleanup

cleanup:                                          ; preds = %cleanup.split.loop.exit14, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %sess.0.le, %cleanup.split.loop.exit14 ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_session(ptr noundef %sess) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 21
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 0, i32 1, ptr elementtype(i32) %refcnt) #7, !srcloc !61
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %entry.atomic_inc_not_zero.exit_crit_edge, label %do.end11.i.i.i.i

entry.atomic_inc_not_zero.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %atomic_inc_not_zero.exit

do.end11.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !62
  br label %atomic_inc_not_zero.exit

atomic_inc_not_zero.exit:                         ; preds = %do.end11.i.i.i.i, %entry.atomic_inc_not_zero.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i.i.i = icmp ne i32 %asmresult.i.i.i.i, 0
  %conv = zext i1 %cmp.i.i.i to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @put_session(ptr noundef %sess) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 21
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #7, !srcloc !58
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ksmbd_session_lookup_slowpath(i64 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_read(ptr noundef nonnull @sessions_table_lock) #7
  %conv.i = trunc i64 %id to i32
  %mul.i.i.i = mul i32 %conv.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 29
  %arrayidx.i = getelementptr [8 x %struct.hlist_head], ptr @sessions_table, i32 0, i32 %shr.i.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %add.ptr.i = getelementptr i8, ptr %1, i32 -76
  %tobool2.not2528.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not25.i = or i1 %tobool.not.i, %tobool2.not2528.i
  br i1 %tobool2.not25.i, label %entry.if.end4_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %sess.026.i = phi ptr [ %add.ptr11.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %entry.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %sess.026.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %sess.026.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %id)
  %cmp.i = icmp eq i64 %3, %id
  br i1 %cmp.i, label %if.then, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %hlist.i = getelementptr inbounds %struct.ksmbd_session, ptr %sess.026.i, i32 0, i32 11
  %4 = ptrtoint ptr %hlist.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hlist.i, align 4
  %tobool7.not.i = icmp eq ptr %5, null
  %add.ptr11.i = getelementptr i8, ptr %5, i32 -76
  %tobool2.not29.i = icmp eq ptr %add.ptr11.i, null
  %tobool2.not.i = or i1 %tobool7.not.i, %tobool2.not29.i
  br i1 %tobool2.not.i, label %for.inc.i.if.end4_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.end4_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then:                                          ; preds = %for.body.i
  %refcnt.i = getelementptr inbounds %struct.ksmbd_session, ptr %sess.026.i, i32 0, i32 21
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #7
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 0, i32 1, ptr elementtype(i32) %refcnt.i) #7, !srcloc !61
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.if.end4_crit_edge, label %do.end11.i.i.i.i.i

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

do.end11.i.i.i.i.i:                               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !62
  br label %if.end4

if.end4:                                          ; preds = %do.end11.i.i.i.i.i, %if.then.if.end4_crit_edge, %for.inc.i.if.end4_crit_edge, %entry.if.end4_crit_edge
  %sess.0 = phi ptr [ null, %entry.if.end4_crit_edge ], [ null, %if.then.if.end4_crit_edge ], [ %sess.026.i, %do.end11.i.i.i.i.i ], [ null, %for.inc.i.if.end4_crit_edge ]
  tail call void @up_read(ptr noundef nonnull @sessions_table_lock) #7
  ret ptr %sess.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ksmbd_session_lookup_all(ptr noundef readonly %conn, i64 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sessions.i = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 11
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %sessions.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %sessions.i
  br i1 %cmp.not.i, label %for.cond.i.land.lhs.true_crit_edge, label %for.body.i

for.cond.i.land.lhs.true_crit_edge:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

for.body.i:                                       ; preds = %for.cond.i
  %sess.0.i = getelementptr i8, ptr %.pn.i, i32 -284
  %1 = ptrtoint ptr %sess.0.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %sess.0.i, align 8
  %cmp.i.i = icmp eq i64 %2, %id
  br i1 %cmp.i.i, label %ksmbd_session_lookup.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

ksmbd_session_lookup.exit:                        ; preds = %for.body.i
  %sess.0.i.le = getelementptr i8, ptr %.pn.i, i32 -284
  %tobool.not = icmp eq ptr %sess.0.i.le, null
  br i1 %tobool.not, label %ksmbd_session_lookup.exit.land.lhs.true_crit_edge, label %ksmbd_session_lookup.exit.if.end_crit_edge

ksmbd_session_lookup.exit.if.end_crit_edge:       ; preds = %ksmbd_session_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

ksmbd_session_lookup.exit.land.lhs.true_crit_edge: ; preds = %ksmbd_session_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %ksmbd_session_lookup.exit.land.lhs.true_crit_edge, %for.cond.i.land.lhs.true_crit_edge
  %binding = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 47
  %3 = ptrtoint ptr %binding to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %binding, align 4, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call void @down_read(ptr noundef nonnull @sessions_table_lock) #7
  %conv.i.i = trunc i64 %id to i32
  %mul.i.i.i.i = mul i32 %conv.i.i, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 29
  %arrayidx.i.i = getelementptr [8 x %struct.hlist_head], ptr @sessions_table, i32 0, i32 %shr.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 -76
  %tobool2.not2528.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool2.not25.i.i = or i1 %tobool.not.i.i, %tobool2.not2528.i.i
  br i1 %tobool2.not25.i.i, label %if.then.ksmbd_session_lookup_slowpath.exit_crit_edge, label %if.then.for.body.i.i_crit_edge

if.then.for.body.i.i_crit_edge:                   ; preds = %if.then
  br label %for.body.i.i

if.then.ksmbd_session_lookup_slowpath.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %ksmbd_session_lookup_slowpath.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then.for.body.i.i_crit_edge
  %sess.026.i.i = phi ptr [ %add.ptr11.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %if.then.for.body.i.i_crit_edge ]
  %7 = ptrtoint ptr %sess.026.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %sess.026.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %id)
  %cmp.i.i6 = icmp eq i64 %8, %id
  br i1 %cmp.i.i6, label %if.then.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %hlist.i.i = getelementptr inbounds %struct.ksmbd_session, ptr %sess.026.i.i, i32 0, i32 11
  %9 = ptrtoint ptr %hlist.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hlist.i.i, align 4
  %tobool7.not.i.i = icmp eq ptr %10, null
  %add.ptr11.i.i = getelementptr i8, ptr %10, i32 -76
  %tobool2.not29.i.i = icmp eq ptr %add.ptr11.i.i, null
  %tobool2.not.i.i = or i1 %tobool7.not.i.i, %tobool2.not29.i.i
  br i1 %tobool2.not.i.i, label %for.inc.i.i.ksmbd_session_lookup_slowpath.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.ksmbd_session_lookup_slowpath.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ksmbd_session_lookup_slowpath.exit

if.then.i:                                        ; preds = %for.body.i.i
  %refcnt.i.i = getelementptr inbounds %struct.ksmbd_session, ptr %sess.026.i.i, i32 0, i32 21
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #7
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 0, i32 1, ptr elementtype(i32) %refcnt.i.i) #7, !srcloc !61
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.ksmbd_session_lookup_slowpath.exit_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.ksmbd_session_lookup_slowpath.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ksmbd_session_lookup_slowpath.exit

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !62
  br label %ksmbd_session_lookup_slowpath.exit

ksmbd_session_lookup_slowpath.exit:               ; preds = %do.end11.i.i.i.i.i.i, %if.then.i.ksmbd_session_lookup_slowpath.exit_crit_edge, %for.inc.i.i.ksmbd_session_lookup_slowpath.exit_crit_edge, %if.then.ksmbd_session_lookup_slowpath.exit_crit_edge
  %sess.0.i7 = phi ptr [ null, %if.then.ksmbd_session_lookup_slowpath.exit_crit_edge ], [ null, %if.then.i.ksmbd_session_lookup_slowpath.exit_crit_edge ], [ %sess.026.i.i, %do.end11.i.i.i.i.i.i ], [ null, %for.inc.i.i.ksmbd_session_lookup_slowpath.exit_crit_edge ]
  tail call void @up_read(ptr noundef nonnull @sessions_table_lock) #7
  br label %if.end

if.end:                                           ; preds = %ksmbd_session_lookup_slowpath.exit, %land.lhs.true.if.end_crit_edge, %ksmbd_session_lookup.exit.if.end_crit_edge
  %sess.0 = phi ptr [ %sess.0.i.le, %ksmbd_session_lookup.exit.if.end_crit_edge ], [ %sess.0.i7, %ksmbd_session_lookup_slowpath.exit ], [ null, %land.lhs.true.if.end_crit_edge ]
  ret ptr %sess.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ksmbd_preauth_session_alloc(ptr noundef %conn, i64 noundef %sess_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 80) #12
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.preauth_session, ptr %call7.i, i32 0, i32 1
  %1 = ptrtoint ptr %id to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %sess_id, ptr %id, align 8
  %preauth_info = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 28
  %2 = ptrtoint ptr %preauth_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %preauth_info, align 8
  %Preauth_HashValue1 = getelementptr inbounds %struct.preauth_integrity_info, ptr %3, i32 0, i32 1
  %4 = call ptr @memcpy(ptr %call7.i, ptr %Preauth_HashValue1, i32 64)
  %preauth_entry = getelementptr inbounds %struct.preauth_session, ptr %call7.i, i32 0, i32 2
  %preauth_sess_table = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 39
  %5 = ptrtoint ptr %preauth_sess_table to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %preauth_sess_table, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %preauth_entry, ptr noundef %preauth_sess_table, ptr noundef %6) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %preauth_entry, ptr %prev1.i.i, align 4
  %8 = ptrtoint ptr %preauth_entry to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %preauth_entry, align 8
  %prev3.i.i = getelementptr inbounds %struct.preauth_session, ptr %call7.i, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %preauth_sess_table, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %preauth_sess_table to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %preauth_entry, ptr %preauth_sess_table, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call7.i
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ksmbd_preauth_session_lookup(ptr noundef readonly %conn, i64 noundef %id) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %preauth_sess_table = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 39
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %preauth_sess_table, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 8
  %cmp.not = icmp eq ptr %.pn, %preauth_sess_table
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %id1.i = getelementptr i8, ptr %.pn, i32 -8
  %1 = ptrtoint ptr %id1.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %id1.i, align 8
  %cmp.i = icmp eq i64 %2, %id
  br i1 %cmp.i, label %cleanup.split.loop.exit11, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

cleanup.split.loop.exit11:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %sess.0.le = getelementptr i8, ptr %.pn, i32 -72
  br label %cleanup

cleanup:                                          ; preds = %cleanup.split.loop.exit11, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %sess.0.le, %cleanup.split.loop.exit11 ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ksmbd_smb2_session_create() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 344) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.__session_create.exit_crit_edge, label %if.end.i

entry.__session_create.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__session_create.exit

if.end.i:                                         ; preds = %entry
  %file_table.i = getelementptr inbounds %struct.ksmbd_session, ptr %call7.i.i.i, i32 0, i32 20
  %call1.i = tail call i32 @ksmbd_init_file_table(ptr noundef %file_table.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.error.i_crit_edge

if.end.i.error.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error.i

if.end4.i:                                        ; preds = %if.end.i
  %flags.i.i = getelementptr inbounds %struct.ksmbd_session, ptr %call7.i.i.i, i32 0, i32 4
  %1 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i.i, align 4
  %or.i.i = or i32 %2, 2
  store i32 %or.i.i, ptr %flags.i.i, align 4
  %sessions_entry.i = getelementptr inbounds %struct.ksmbd_session, ptr %call7.i.i.i, i32 0, i32 19
  %3 = ptrtoint ptr %sessions_entry.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %sessions_entry.i, ptr %sessions_entry.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ksmbd_session, ptr %call7.i.i.i, i32 0, i32 19, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %sessions_entry.i, ptr %prev.i.i, align 8
  %tree_conns.i = getelementptr inbounds %struct.ksmbd_session, ptr %call7.i.i.i, i32 0, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %tree_conns.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #7
  %xa_flags.i.i.i = getelementptr inbounds %struct.ksmbd_session, ptr %call7.i.i.i, i32 0, i32 13, i32 1
  %5 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %xa_flags.i.i.i, align 8
  %xa_head.i.i.i = getelementptr inbounds %struct.ksmbd_session, ptr %call7.i.i.i, i32 0, i32 13, i32 2
  %6 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %xa_head.i.i.i, align 4
  %ksmbd_chann_list.i = getelementptr inbounds %struct.ksmbd_session, ptr %call7.i.i.i, i32 0, i32 12
  %7 = ptrtoint ptr %ksmbd_chann_list.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %ksmbd_chann_list.i, ptr %ksmbd_chann_list.i, align 4
  %prev.i1.i = getelementptr inbounds %struct.ksmbd_session, ptr %call7.i.i.i, i32 0, i32 12, i32 1
  %8 = ptrtoint ptr %prev.i1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ksmbd_chann_list.i, ptr %prev.i1.i, align 8
  %rpc_handle_list.i = getelementptr inbounds %struct.ksmbd_session, ptr %call7.i.i.i, i32 0, i32 15
  %9 = ptrtoint ptr %rpc_handle_list.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %rpc_handle_list.i, ptr %rpc_handle_list.i, align 4
  %prev.i2.i = getelementptr inbounds %struct.ksmbd_session, ptr %call7.i.i.i, i32 0, i32 15, i32 1
  %10 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %rpc_handle_list.i, ptr %prev.i2.i, align 8
  %sequence_number.i = getelementptr inbounds %struct.ksmbd_session, ptr %call7.i.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %sequence_number.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %sequence_number.i, align 8
  %refcnt.i = getelementptr inbounds %struct.ksmbd_session, ptr %call7.i.i.i, i32 0, i32 21
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #7
  %12 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 1, ptr %refcnt.i, align 4
  %call.i.i = tail call i32 @ksmbd_acquire_smb2_uid(ptr noundef nonnull @session_ida) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end4.i.error.i_crit_edge, label %if.end8.i

if.end4.i.error.i_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error.i

if.end8.i:                                        ; preds = %if.end4.i
  %conv3.i.i = zext i32 %call.i.i to i64
  %13 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv3.i.i, ptr %call7.i.i.i, align 8
  %tree_conn_ida.i = getelementptr inbounds %struct.ksmbd_session, ptr %call7.i.i.i, i32 0, i32 14
  tail call void @__raw_spin_lock_init(ptr noundef %tree_conn_ida.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #7
  %xa_flags.i.i3.i = getelementptr inbounds %struct.ksmbd_session, ptr %call7.i.i.i, i32 0, i32 14, i32 0, i32 1
  %14 = ptrtoint ptr %xa_flags.i.i3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 67108869, ptr %xa_flags.i.i3.i, align 4
  %xa_head.i.i4.i = getelementptr inbounds %struct.ksmbd_session, ptr %call7.i.i.i, i32 0, i32 14, i32 0, i32 2
  %15 = ptrtoint ptr %xa_head.i.i4.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %xa_head.i.i4.i, align 8
  tail call void @down_write(ptr noundef nonnull @sessions_table_lock) #7
  %hlist.i = getelementptr inbounds %struct.ksmbd_session, ptr %call7.i.i.i, i32 0, i32 11
  %16 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %call7.i.i.i, align 8
  %conv.i = trunc i64 %17 to i32
  %mul.i.i.i = mul i32 %conv.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 29
  %arrayidx.i = getelementptr [8 x %struct.hlist_head], ptr @sessions_table, i32 0, i32 %shr.i.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %20 = ptrtoint ptr %hlist.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %19, ptr %hlist.i, align 4
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %if.end8.i.hlist_add_head.exit.i_crit_edge, label %do.body12.i.i

if.end8.i.hlist_add_head.exit.i_crit_edge:        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hlist_add_head.exit.i

do.body12.i.i:                                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %19, i32 0, i32 1
  %21 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %hlist.i, ptr %pprev.i.i, align 4
  br label %hlist_add_head.exit.i

hlist_add_head.exit.i:                            ; preds = %do.body12.i.i, %if.end8.i.hlist_add_head.exit.i_crit_edge
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %hlist.i, ptr %arrayidx.i, align 4
  %pprev34.i.i = getelementptr inbounds %struct.ksmbd_session, ptr %call7.i.i.i, i32 0, i32 11, i32 1
  %23 = ptrtoint ptr %pprev34.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %arrayidx.i, ptr %pprev34.i.i, align 8
  tail call void @up_write(ptr noundef nonnull @sessions_table_lock) #7
  br label %__session_create.exit

error.i:                                          ; preds = %if.end4.i.error.i_crit_edge, %if.end.i.error.i_crit_edge
  tail call void @ksmbd_session_destroy(ptr noundef nonnull %call7.i.i.i) #7
  br label %__session_create.exit

__session_create.exit:                            ; preds = %error.i, %hlist_add_head.exit.i, %entry.__session_create.exit_crit_edge
  %retval.0.i = phi ptr [ null, %error.i ], [ %call7.i.i.i, %hlist_add_head.exit.i ], [ null, %entry.__session_create.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_acquire_tree_conn_id(ptr noundef %sess) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 4
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %tree_conn_ida = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 14
  %call1 = tail call i32 @ksmbd_acquire_smb2_tid(ptr noundef %tree_conn_ida) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %id.0 = phi i32 [ %call1, %if.then ], [ -22, %entry.if.end_crit_edge ]
  ret i32 %id.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksmbd_acquire_smb2_tid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ksmbd_release_tree_conn_id(ptr noundef %sess, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %id)
  %cmp = icmp sgt i32 %id, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %tree_conn_ida = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 14
  tail call void @ksmbd_release_id(ptr noundef %tree_conn_ida, i32 noundef %id) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ksmbd_rpc_close(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksmbd_rpc_id_free(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksmbd_init_file_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksmbd_acquire_smb2_uid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !45, !47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ksmbd/mgmt/user_session.c", i32 230, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @put_session._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @put_session._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ksmbd/mgmt/user_session.c", i32 72, i32 24}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ksmbd/mgmt/user_session.c", i32 72, i32 57}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ksmbd/mgmt/user_session.c", i32 75, i32 24}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ksmbd/mgmt/user_session.c", i32 75, i32 57}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ksmbd/mgmt/user_session.c", i32 78, i32 24}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ksmbd/mgmt/user_session.c", i32 78, i32 55}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/ksmbd/mgmt/user_session.c", i32 81, i32 24}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/ksmbd/mgmt/user_session.c", i32 81, i32 55}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/ksmbd/mgmt/user_session.c", i32 84, i32 24}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/ksmbd/mgmt/user_session.c", i32 84, i32 57}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/ksmbd/mgmt/user_session.c", i32 87, i32 2}
!28 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @__rpc_method._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @__rpc_method._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ksmbd/mgmt/user_session.c", i32 49, i32 3}
!33 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @__session_rpc_close._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @__session_rpc_close._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/ksmbd/mgmt/user_session.c", i32 23, i32 8}
!38 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @sessions_table_lock, !37, !"sessions_table_lock", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/ksmbd/mgmt/user_session.c", i32 19, i32 8}
!42 = !{ptr @session_ida, !41, !"session_ida", i1 false, i1 false}
!43 = !{ptr @sessions_table, !44, !"sessions_table", i1 false, i1 false}
!44 = !{!"../fs/ksmbd/mgmt/user_session.c", i32 22, i32 8}
!45 = !{ptr @xa_init_flags.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!47 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i64 2148675078}
!58 = !{i64 2148589787, i64 2148589819, i64 2148589848, i64 2148589882, i64 2148589913, i64 2148589936}
!59 = !{i64 2148675307}
!60 = !{i64 2148586021}
!61 = !{i64 1072621, i64 1072646, i64 1072668, i64 1072684, i64 1072696, i64 1072716, i64 1072740, i64 1072756, i64 1072768}
!62 = !{i64 2148586209}
!63 = !{i8 0, i8 2}
