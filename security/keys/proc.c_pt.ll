; ModuleID = '/llk/IR_all_yes/security/keys/proc.c_pt.bc'
source_filename = "../security/keys/proc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rb_root = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.file = type { %union.anon.1, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.32 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.32 = type { %struct.callback_head }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.6, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.56, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.57, %union.anon.62, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.6 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.56 = type { i64 }
%union.anon.57 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.58, ptr, ptr, ptr }
%union.anon.58 = type { i32 }
%union.anon.62 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.key_user = type { %struct.rb_node, %struct.mutex, %struct.spinlock, %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.kuid_t, i32, i32 }
%struct.keyring_search_context = type { %struct.keyring_index_key, ptr, %struct.key_match_data, i32, ptr, i32, i8, ptr, i64 }
%struct.key_match_data = type { ptr, ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.key_type = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }

@__initcall__kmod_proc__219_58_key_proc_init6 = internal global ptr @key_proc_init, section ".initcall6.init", align 4
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"keys\00", [27 x i8] zeroinitializer }, align 32
@proc_keys_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @proc_keys_start, ptr @proc_keys_stop, ptr @proc_keys_next, ptr @proc_keys_show }, [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cannot create /proc/keys\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"key-users\00", [22 x i8] zeroinitializer }, align 32
@proc_key_users_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @proc_key_users_start, ptr @proc_key_users_stop, ptr @proc_key_users_next, ptr @proc_key_users_show }, [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Cannot create /proc/key-users\0A\00", [33 x i8] zeroinitializer }, align 32
@key_serial_lock = external dso_local global %struct.spinlock, align 4
@key_serial_tree = external dso_local local_unnamed_addr global %struct.rb_root, align 4
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"perm\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"expd\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llus\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llum\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%lluh\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llud\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%lluw\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%08x %c%c%c%c%c%c%c %5d %4s %08x %5d %5d %-9.9s \00", [47 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@key_user_lock = external dso_local global %struct.spinlock, align 4
@key_user_tree = external dso_local global %struct.rb_root, align 4
@key_quota_root_maxkeys = external dso_local local_unnamed_addr global i32, align 4
@key_quota_maxkeys = external dso_local local_unnamed_addr global i32, align 4
@key_quota_root_maxbytes = external dso_local local_unnamed_addr global i32, align 4
@key_quota_maxbytes = external dso_local local_unnamed_addr global i32, align 4
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%5u: %5d %d/%d %d/%d %d/%d\0A\00", [36 x i8] zeroinitializer }, align 32
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 47, i32 6 }
@___asan_gen_.19 = private unnamed_addr constant [14 x i8] c"proc_keys_ops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 21, i32 36 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 49, i32 9 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 51, i32 6 }
@___asan_gen_.28 = private unnamed_addr constant [19 x i8] c"proc_key_users_ops\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 33, i32 36 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 53, i32 9 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 202, i32 16 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 204, i32 16 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 209, i32 18 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 211, i32 18 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 213, i32 18 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 215, i32 18 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 217, i32 18 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 226, i32 16 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 695, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 723, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private constant [24 x i8] c"../security/keys/proc.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 312, i32 16 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__initcall__kmod_proc__219_58_key_proc_init6, ptr @.str, ptr @proc_keys_ops, ptr @.str.1, ptr @.str.2, ptr @proc_key_users_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_keys_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_key_users_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @key_proc_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @proc_keys_ops, i32 noundef 0, ptr noundef null) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.1) #11
  unreachable

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.2, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @proc_key_users_ops, i32 noundef 0, ptr noundef null) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.3) #11
  unreachable

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @proc_keys_start(ptr nocapture noundef readonly %p, ptr nocapture noundef %_pos) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %_pos, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @key_serial_lock) #8
  %2 = ptrtoint ptr %_pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %_pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %3)
  %cmp = icmp sgt i64 %3, 2147483647
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i64 %1 to i32
  %file.i.i = getelementptr inbounds %struct.seq_file, ptr %p, i32 0, i32 10
  %4 = ptrtoint ptr %file.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %file.i.i, align 4
  %f_cred.i.i = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %f_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_cred.i.i, align 8
  %user_ns.i.i = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 25
  %8 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %user_ns.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @key_serial_tree to i32))
  %n.047.i = load ptr, ptr @key_serial_tree, align 4
  %tobool.not48.i = icmp eq ptr %n.047.i, null
  br i1 %tobool.not48.i, label %if.end.cleanup_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %n.050.i = phi ptr [ %n.0.i, %cleanup.i.while.body.i_crit_edge ], [ %n.047.i, %if.end.while.body.i_crit_edge ]
  %minkey.049.i = phi ptr [ %minkey.2.i, %cleanup.i.while.body.i_crit_edge ], [ null, %if.end.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %n.050.i, i32 -8
  %serial.i = getelementptr i8, ptr %n.050.i, i32 -4
  %10 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %serial.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv)
  %cmp.i = icmp sgt i32 %11, %conv
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  %tobool1.not.i = icmp eq ptr %minkey.049.i, null
  br i1 %tobool1.not.i, label %if.then.i.if.then5.i_crit_edge, label %lor.lhs.false.i

if.then.i.if.then5.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5.i

lor.lhs.false.i:                                  ; preds = %if.then.i
  %serial2.i = getelementptr inbounds %struct.key, ptr %minkey.049.i, i32 0, i32 1
  %12 = ptrtoint ptr %serial2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %serial2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp4.i = icmp sgt i32 %13, %11
  br i1 %cmp4.i, label %lor.lhs.false.i.if.then5.i_crit_edge, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

lor.lhs.false.i.if.then5.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5.i

if.then5.i:                                       ; preds = %lor.lhs.false.i.if.then5.i_crit_edge, %if.then.i.if.then5.i_crit_edge
  br label %if.end.i

if.end.i:                                         ; preds = %if.then5.i, %lor.lhs.false.i.if.end.i_crit_edge
  %minkey.1.i = phi ptr [ %add.ptr.i, %if.then5.i ], [ %minkey.049.i, %lor.lhs.false.i.if.end.i_crit_edge ]
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.050.i, i32 0, i32 2
  br label %cleanup.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv)
  %cmp7.i = icmp slt i32 %11, %conv
  br i1 %cmp7.i, label %if.then8.i, label %if.else.i.while.end.i_crit_edge

if.else.i.while.end.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

if.then8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.050.i, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then8.i, %if.end.i
  %minkey.2.i = phi ptr [ %minkey.1.i, %if.end.i ], [ %minkey.049.i, %if.then8.i ]
  %n.1.in.i = phi ptr [ %rb_left.i, %if.end.i ], [ %rb_right.i, %if.then8.i ]
  %14 = ptrtoint ptr %n.1.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %n.0.i = load ptr, ptr %n.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %n.0.i, null
  br i1 %tobool.not.i, label %cleanup.i.while.end.i_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.end.i:                                      ; preds = %cleanup.i.while.end.i_crit_edge, %if.else.i.while.end.i_crit_edge
  %minkey.4.i = phi ptr [ %minkey.2.i, %cleanup.i.while.end.i_crit_edge ], [ %add.ptr.i, %if.else.i.while.end.i_crit_edge ]
  %tobool12.not.i = icmp eq ptr %minkey.4.i, null
  br i1 %tobool12.not.i, label %while.end.i.cleanup_crit_edge, label %for.cond.preheader.i

while.end.i.cleanup_crit_edge:                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader.i:                             ; preds = %while.end.i
  %user52.i = getelementptr inbounds %struct.key, ptr %minkey.4.i, i32 0, i32 5
  %15 = ptrtoint ptr %user52.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %user52.i, align 8
  %uid53.i = getelementptr inbounds %struct.key_user, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %uid53.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack54.i = load i32, ptr %uid53.i, align 4
  %18 = insertvalue [1 x i32] undef, i32 %.unpack54.i, 0
  %call.i55.i = tail call i32 @from_kuid(ptr noundef %9, [1 x i32] %18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i55.i)
  %cmp.i.not56.i = icmp eq i32 %call.i55.i, -1
  br i1 %cmp.i.not56.i, label %for.cond.preheader.i.if.end17.i_crit_edge, label %for.cond.preheader.i.if.end3_crit_edge

for.cond.preheader.i.if.end3_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

for.cond.preheader.i.if.end17.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %if.end17.i

for.cond.i:                                       ; preds = %if.end17.i
  %add.ptr24.i = getelementptr i8, ptr %call18.i, i32 -8
  %user.i = getelementptr i8, ptr %call18.i, i32 112
  %19 = ptrtoint ptr %user.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %user.i, align 8
  %uid.i = getelementptr inbounds %struct.key_user, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack.i = load i32, ptr %uid.i, align 4
  %22 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call.i.i = tail call i32 @from_kuid(ptr noundef %9, [1 x i32] %22) #8
  %cmp.i.not.i = icmp eq i32 %call.i.i, -1
  br i1 %cmp.i.not.i, label %for.cond.i.if.end17.i_crit_edge, label %find_ge_key.exit

for.cond.i.if.end17.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

if.end17.i:                                       ; preds = %for.cond.i.if.end17.i_crit_edge, %for.cond.preheader.i.if.end17.i_crit_edge
  %minkey.557.i = phi ptr [ %add.ptr24.i, %for.cond.i.if.end17.i_crit_edge ], [ %minkey.4.i, %for.cond.preheader.i.if.end17.i_crit_edge ]
  %23 = getelementptr inbounds %struct.key, ptr %minkey.557.i, i32 0, i32 2
  %call18.i = tail call ptr @rb_next(ptr noundef %23) #8
  %tobool19.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool19.not.i, label %if.end17.i.cleanup_crit_edge, label %for.cond.i

if.end17.i.cleanup_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

find_ge_key.exit:                                 ; preds = %for.cond.i
  %tobool.not = icmp eq ptr %add.ptr24.i, null
  br i1 %tobool.not, label %find_ge_key.exit.cleanup_crit_edge, label %find_ge_key.exit.if.end3_crit_edge

find_ge_key.exit.if.end3_crit_edge:               ; preds = %find_ge_key.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

find_ge_key.exit.cleanup_crit_edge:               ; preds = %find_ge_key.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %find_ge_key.exit.if.end3_crit_edge, %for.cond.preheader.i.if.end3_crit_edge
  %retval.0.i15 = phi ptr [ %add.ptr24.i, %find_ge_key.exit.if.end3_crit_edge ], [ %minkey.4.i, %for.cond.preheader.i.if.end3_crit_edge ]
  %serial = getelementptr inbounds %struct.key, ptr %retval.0.i15, i32 0, i32 1
  %24 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %serial, align 4
  %conv4 = sext i32 %25 to i64
  %26 = ptrtoint ptr %_pos to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %conv4, ptr %_pos, align 8
  %27 = getelementptr inbounds %struct.key, ptr %retval.0.i15, i32 0, i32 2
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %find_ge_key.exit.cleanup_crit_edge, %if.end17.i.cleanup_crit_edge, %while.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %27, %if.end3 ], [ null, %entry.cleanup_crit_edge ], [ null, %find_ge_key.exit.cleanup_crit_edge ], [ null, %while.end.i.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.end17.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @proc_keys_stop(ptr nocapture noundef readnone %p, ptr nocapture noundef readnone %v) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_unlock(ptr noundef nonnull @key_serial_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @proc_keys_next(ptr nocapture noundef readonly %p, ptr noundef %v, ptr nocapture noundef %_pos) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %file.i.i = getelementptr inbounds %struct.seq_file, ptr %p, i32 0, i32 10
  %0 = ptrtoint ptr %file.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file.i.i, align 4
  %f_cred.i.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %f_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_cred.i.i, align 8
  %user_ns.i.i = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %user_ns.i.i, align 4
  %call1.i = tail call ptr @rb_next(ptr noundef %v) #8
  %tobool.not12.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not12.i, label %entry.if.else_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %n.addr.013.i = phi ptr [ %call3.i, %cleanup.i.while.body.i_crit_edge ], [ %call1.i, %entry.while.body.i_crit_edge ]
  %user.i = getelementptr i8, ptr %n.addr.013.i, i32 112
  %6 = ptrtoint ptr %user.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user.i, align 8
  %uid.i = getelementptr inbounds %struct.key_user, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack.i = load i32, ptr %uid.i, align 4
  %9 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call.i.i = tail call i32 @from_kuid(ptr noundef %5, [1 x i32] %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp.i.not.i = icmp eq i32 %call.i.i, -1
  br i1 %cmp.i.not.i, label %cleanup.i, label %if.then

cleanup.i:                                        ; preds = %while.body.i
  %call3.i = tail call ptr @rb_next(ptr noundef nonnull %n.addr.013.i) #8
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %cleanup.i.if.else_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

cleanup.i.if.else_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then:                                          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %serial.i = getelementptr i8, ptr %n.addr.013.i, i32 -4
  %10 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %serial.i, align 4
  %conv = sext i32 %11 to i64
  br label %if.end

if.else:                                          ; preds = %cleanup.i.if.else_crit_edge, %entry.if.else_crit_edge
  %12 = ptrtoint ptr %_pos to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %_pos, align 8
  %inc = add i64 %13, 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %n.addr.0.lcssa.i7 = phi ptr [ null, %if.else ], [ %n.addr.013.i, %if.then ]
  %storemerge = phi i64 [ %inc, %if.else ], [ %conv, %if.then ]
  %14 = ptrtoint ptr %_pos to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %storemerge, ptr %_pos, align 8
  ret ptr %n.addr.0.lcssa.i7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_keys_show(ptr noundef %m, ptr noundef %v) #4 align 64 {
entry:
  %xbuf = alloca [16 x i8], align 1
  %ctx = alloca %struct.keyring_search_context, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %v, i32 -8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %xbuf) #8
  %0 = call ptr @memset(ptr %xbuf, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %ctx) #8
  %1 = getelementptr i8, ptr %v, i32 160
  %2 = getelementptr inbounds i8, ptr %ctx, i32 52
  %3 = call ptr @memset(ptr %2, i32 255, i32 12)
  %4 = call ptr @memcpy(ptr %ctx, ptr %1, i32 20)
  %cred = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 1
  %file = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 10
  %5 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %file, align 4
  %f_cred = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %f_cred to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %f_cred, align 8
  %9 = ptrtoint ptr %cred to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %cred, align 4
  %match_data = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 2
  %10 = ptrtoint ptr %match_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @lookup_user_key_possessed, ptr %match_data, align 8
  %raw_data = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %raw_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr, ptr %raw_data, align 4
  %preparsed = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %preparsed to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %preparsed, align 8
  %lookup_type = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 2, i32 3
  %13 = ptrtoint ptr %lookup_type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %lookup_type, align 4
  %flags1 = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 3
  %14 = ptrtoint ptr %flags1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 65, ptr %flags1, align 8
  %iterator = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 4
  %15 = ptrtoint ptr %iterator to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %iterator, align 4
  %skipped_ret = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 5
  %16 = ptrtoint ptr %skipped_ret to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %skipped_ret, align 8
  %possessed = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 6
  %17 = ptrtoint ptr %possessed to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %possessed, align 4
  %result = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 7
  %18 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %result, align 8
  %now2 = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 8
  %19 = ptrtoint ptr %now2 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %now2, align 8
  %perm = getelementptr i8, ptr %v, i32 144
  %20 = ptrtoint ptr %perm to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %perm, align 8
  %and = and i32 %21, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then:                                          ; preds = %entry
  %22 = tail call i32 @llvm.read_register.i32(metadata !39) #8
  %and.i.i.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %25, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !49
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.then.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then.rcu_read_lock.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then.rcu_read_lock.exit_crit_edge
  %call3 = call ptr @search_cred_keyrings_rcu(ptr noundef nonnull %ctx) #8
  %call.i156 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i156, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i159

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i159:                               ; preds = %rcu_read_lock.exit
  %call1.i157 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i157)
  %tobool.not.i158 = icmp eq i32 %call1.i157, 0
  br i1 %tobool.not.i158, label %land.lhs.true.i159.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i161

land.lhs.true.i159.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i159
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i161:                              ; preds = %land.lhs.true.i159
  %.b4.i160 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i160, label %land.lhs.true2.i161.rcu_read_unlock.exit_crit_edge, label %if.then.i162

land.lhs.true2.i161.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i161
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i162:                                     ; preds = %land.lhs.true2.i161
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i162, %land.lhs.true2.i161.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i159.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !50
  %26 = call i32 @llvm.read_register.i32(metadata !39) #8
  %and.i.i.i.i.i163 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i163 to ptr
  %preempt_count.i.i.i.i164 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i164 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i164, align 4
  %sub.i.i.i = add i32 %29, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i164, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %rcu_read_unlock.exit.if.end7_crit_edge, label %if.then5

rcu_read_unlock.exit.if.end7_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then5:                                         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %call3 to i32
  %and.i.i = and i32 %30, -2
  %31 = inttoptr i32 %and.i.i to ptr
  call void @key_put(ptr noundef %31) #8
  %32 = ptrtoint ptr %add.ptr to i32
  %or.i = or i32 %32, 1
  %33 = inttoptr i32 %or.i to ptr
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %rcu_read_unlock.exit.if.end7_crit_edge, %entry.if.end7_crit_edge
  %key_ref.0 = phi ptr [ %add.ptr, %rcu_read_unlock.exit.if.end7_crit_edge ], [ %33, %if.then5 ], [ %add.ptr, %entry.if.end7_crit_edge ]
  %34 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cred, align 4
  %call9 = call i32 @key_task_permission(ptr noundef %key_ref.0, ptr noundef %35, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %call13 = call i64 @ktime_get_real_seconds() #8
  %36 = call i32 @llvm.read_register.i32(metadata !39) #8
  %and.i.i.i.i.i145 = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i.i145 to ptr
  %preempt_count.i.i.i.i146 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i.i.i146 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i.i.i146, align 4
  %add.i.i.i147 = add i32 %39, 1
  store volatile i32 %add.i.i.i147, ptr %preempt_count.i.i.i.i146, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !49
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i148 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i148, label %if.end12.rcu_read_lock.exit155_crit_edge, label %land.lhs.true.i151

if.end12.rcu_read_lock.exit155_crit_edge:         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit155

land.lhs.true.i151:                               ; preds = %if.end12
  %call1.i149 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i149)
  %tobool.not.i150 = icmp eq i32 %call1.i149, 0
  br i1 %tobool.not.i150, label %land.lhs.true.i151.rcu_read_lock.exit155_crit_edge, label %land.lhs.true2.i153

land.lhs.true.i151.rcu_read_lock.exit155_crit_edge: ; preds = %land.lhs.true.i151
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit155

land.lhs.true2.i153:                              ; preds = %land.lhs.true.i151
  %.b4.i152 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i152, label %land.lhs.true2.i153.rcu_read_lock.exit155_crit_edge, label %if.then.i154

land.lhs.true2.i153.rcu_read_lock.exit155_crit_edge: ; preds = %land.lhs.true2.i153
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit155

if.then.i154:                                     ; preds = %land.lhs.true2.i153
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #8
  br label %rcu_read_lock.exit155

rcu_read_lock.exit155:                            ; preds = %if.then.i154, %land.lhs.true2.i153.rcu_read_lock.exit155_crit_edge, %land.lhs.true.i151.rcu_read_lock.exit155_crit_edge, %if.end12.rcu_read_lock.exit155_crit_edge
  %40 = getelementptr i8, ptr %v, i32 120
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load volatile i64, ptr %40, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %42)
  %cmp15 = icmp eq i64 %42, 0
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %rcu_read_lock.exit155
  call void @__sanitizer_cov_trace_pc() #10
  %43 = call ptr @memcpy(ptr %xbuf, ptr @.str.4, i32 5)
  br label %if.end52

if.else:                                          ; preds = %rcu_read_lock.exit155
  call void @__sanitizer_cov_trace_cmp8(i64 %42, i64 %call13)
  %cmp17.not = icmp sgt i64 %42, %call13
  br i1 %cmp17.not, label %if.else20, label %if.then18

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %44 = call ptr @memcpy(ptr %xbuf, ptr @.str.5, i32 5)
  br label %if.end52

if.else20:                                        ; preds = %if.else
  %sub = sub i64 %42, %call13
  call void @__sanitizer_cov_trace_const_cmp8(i64 60, i64 %sub)
  %cmp21 = icmp ult i64 %sub, 60
  br i1 %cmp21, label %if.then22, label %if.else25

if.then22:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #10
  %call24 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %xbuf, ptr noundef nonnull @.str.6, i64 noundef %sub)
  br label %if.end52

if.else25:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_const_cmp8(i64 3600, i64 %sub)
  %cmp26 = icmp ult i64 %sub, 3600
  br i1 %cmp26, label %if.then27, label %if.else31

if.then27:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #10
  %div79.i.i.lhs.trunc = trunc i64 %sub to i16
  %div79.i.i183187 = lshr i16 %div79.i.i.lhs.trunc, 2
  %div79.i.i.zext = zext i16 %div79.i.i183187 to i64
  %45 = call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 1229782938247303441, i64 %div79.i.i.zext, i64 1229782938247303441) #12, !srcloc !51
  %46 = call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 1229782938247303441, i64 %div79.i.i.zext, i64 %45) #12, !srcloc !52
  %call30 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %xbuf, ptr noundef nonnull @.str.7, i64 noundef %46)
  br label %if.end52

if.else31:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_const_cmp8(i64 86400, i64 %sub)
  %cmp32 = icmp ult i64 %sub, 86400
  br i1 %cmp32, label %if.then33, label %if.else37

if.then33:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #10
  %47 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -7952596333999228919, i64 %sub, i32 0) #12, !srcloc !53
  %asmresult.i.i.i = extractvalue { i64, i32 } %47, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %47, 1
  %48 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -7952596333999228919, i64 %sub, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #12, !srcloc !54
  %asmresult10.i.i.i = extractvalue { i64, i32 } %48, 0
  %div158.i.i186 = lshr i64 %asmresult10.i.i.i, 11
  %call36 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %xbuf, ptr noundef nonnull @.str.8, i64 noundef %div158.i.i186)
  br label %if.end52

if.else37:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_const_cmp8(i64 604800, i64 %sub)
  %cmp38 = icmp ult i64 %sub, 604800
  br i1 %cmp38, label %if.then39, label %if.else43

if.then39:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #10
  %49 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -4454547087429121353, i64 %sub) #12, !srcloc !55
  %50 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -4454547087429121353, i64 %sub, i64 %49, i32 0) #12, !srcloc !54
  %asmresult10.i.i.i165 = extractvalue { i64, i32 } %50, 0
  %div158.i.i166185 = lshr i64 %asmresult10.i.i.i165, 16
  %call42 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %xbuf, ptr noundef nonnull @.str.9, i64 noundef %div158.i.i166185)
  br label %if.end52

if.else43:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #10
  %51 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 3997770567508694361, i64 %sub) #12, !srcloc !55
  %52 = call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3997770567508694361, i64 %sub, i64 %51) #12, !srcloc !52
  %div158.i.i168184 = lshr i64 %52, 17
  %call46 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %xbuf, ptr noundef nonnull @.str.10, i64 noundef %div158.i.i168184)
  br label %if.end52

if.end52:                                         ; preds = %if.else43, %if.then39, %if.then33, %if.then27, %if.then22, %if.then18, %if.then16
  %state.i = getelementptr i8, ptr %v, i32 152
  %53 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load volatile i16, ptr %state.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !56
  %flags58 = getelementptr i8, ptr %v, i32 156
  %55 = ptrtoint ptr %flags58 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %flags58, align 4
  %serial = getelementptr i8, ptr %v, i32 -4
  %57 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %serial, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %cmp59.not = icmp eq i16 %54, 0
  %cond = select i1 %cmp59.not, i32 45, i32 73
  %and61 = and i32 %56, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  %cond63 = select i1 %tobool62.not, i32 45, i32 82
  %and64 = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  %cond66 = select i1 %tobool65.not, i32 45, i32 68
  %and67 = and i32 %56, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  %cond69 = select i1 %tobool68.not, i32 45, i32 81
  %and70 = and i32 %56, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  %cond72 = select i1 %tobool71.not, i32 45, i32 85
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %cmp74 = icmp slt i16 %54, 0
  %cond76 = select i1 %cmp74, i32 78, i32 45
  %and77 = and i32 %56, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  %cond79 = select i1 %tobool78.not, i32 45, i32 105
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef 4) #8
  %59 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %add.ptr, align 4
  %61 = ptrtoint ptr %perm to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %perm, align 8
  %63 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %file, align 4
  %f_cred.i = getelementptr inbounds %struct.file, ptr %64, i32 0, i32 12
  %65 = ptrtoint ptr %f_cred.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %f_cred.i, align 8
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %66, i32 0, i32 25
  %67 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %user_ns.i, align 4
  %uid = getelementptr i8, ptr %v, i32 136
  %69 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %69)
  %.unpack = load i32, ptr %uid, align 8
  %70 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call84 = call i32 @from_kuid_munged(ptr noundef %68, [1 x i32] %70) #8
  %71 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %file, align 4
  %f_cred.i170 = getelementptr inbounds %struct.file, ptr %72, i32 0, i32 12
  %73 = ptrtoint ptr %f_cred.i170 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %f_cred.i170, align 8
  %user_ns.i171 = getelementptr inbounds %struct.cred, ptr %74, i32 0, i32 25
  %75 = ptrtoint ptr %user_ns.i171 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %user_ns.i171, align 4
  %gid = getelementptr i8, ptr %v, i32 140
  %77 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %77)
  %.unpack144 = load i32, ptr %gid, align 4
  %78 = insertvalue [1 x i32] undef, i32 %.unpack144, 0
  %call87 = call i32 @from_kgid_munged(ptr noundef %76, [1 x i32] %78) #8
  %type = getelementptr i8, ptr %v, i32 168
  %79 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %type, align 8
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.11, i32 noundef %58, i32 noundef %cond, i32 noundef %cond63, i32 noundef %cond66, i32 noundef %cond69, i32 noundef %cond72, i32 noundef %cond76, i32 noundef %cond79, i32 noundef %60, ptr noundef nonnull %xbuf, i32 noundef %62, i32 noundef %call84, i32 noundef %call87, ptr noundef %82) #8
  %83 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %type, align 8
  %describe = getelementptr inbounds %struct.key_type, ptr %84, i32 0, i32 12
  %85 = ptrtoint ptr %describe to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %describe, align 4
  %tobool89.not = icmp eq ptr %86, null
  br i1 %tobool89.not, label %if.end52.if.end93_crit_edge, label %if.then90

if.end52.if.end93_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

if.then90:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  call void %86(ptr noundef %add.ptr, ptr noundef %m) #8
  br label %if.end93

if.end93:                                         ; preds = %if.then90, %if.end52.if.end93_crit_edge
  call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #8
  %call.i172 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i172, label %if.end93.rcu_read_unlock.exit182_crit_edge, label %land.lhs.true.i175

if.end93.rcu_read_unlock.exit182_crit_edge:       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit182

land.lhs.true.i175:                               ; preds = %if.end93
  %call1.i173 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i173)
  %tobool.not.i174 = icmp eq i32 %call1.i173, 0
  br i1 %tobool.not.i174, label %land.lhs.true.i175.rcu_read_unlock.exit182_crit_edge, label %land.lhs.true2.i177

land.lhs.true.i175.rcu_read_unlock.exit182_crit_edge: ; preds = %land.lhs.true.i175
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit182

land.lhs.true2.i177:                              ; preds = %land.lhs.true.i175
  %.b4.i176 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i176, label %land.lhs.true2.i177.rcu_read_unlock.exit182_crit_edge, label %if.then.i178

land.lhs.true2.i177.rcu_read_unlock.exit182_crit_edge: ; preds = %land.lhs.true2.i177
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit182

if.then.i178:                                     ; preds = %land.lhs.true2.i177
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #8
  br label %rcu_read_unlock.exit182

rcu_read_unlock.exit182:                          ; preds = %if.then.i178, %land.lhs.true2.i177.rcu_read_unlock.exit182_crit_edge, %land.lhs.true.i175.rcu_read_unlock.exit182_crit_edge, %if.end93.rcu_read_unlock.exit182_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !50
  %87 = call i32 @llvm.read_register.i32(metadata !39) #8
  %and.i.i.i.i.i179 = and i32 %87, -16384
  %88 = inttoptr i32 %and.i.i.i.i.i179 to ptr
  %preempt_count.i.i.i.i180 = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %preempt_count.i.i.i.i180 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %preempt_count.i.i.i.i180, align 4
  %sub.i.i.i181 = add i32 %90, -1
  store volatile i32 %sub.i.i.i181, ptr %preempt_count.i.i.i.i180, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit182, %if.end7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %ctx) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %xbuf) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lookup_user_key_possessed(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @search_cred_keyrings_rcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_task_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @proc_key_users_start(ptr nocapture noundef readonly %p, ptr nocapture noundef readonly %_pos) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %_pos, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @key_user_lock) #8
  %file.i = getelementptr inbounds %struct.seq_file, ptr %p, i32 0, i32 10
  %2 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %file.i, align 4
  %f_cred.i = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %f_cred.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_cred.i, align 8
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns.i, align 4
  %call.i = tail call ptr @rb_first(ptr noundef nonnull @key_user_tree) #8
  %tobool.not8.i.i = icmp eq ptr %call.i, null
  br i1 %tobool.not8.i.i, label %entry.while.end_crit_edge, label %entry.while.body.i.i_crit_edge

entry.while.body.i.i_crit_edge:                   ; preds = %entry
  br label %while.body.i.i

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %entry.while.body.i.i_crit_edge
  %n.addr.09.i.i = phi ptr [ %call1.i.i, %cleanup.i.i.while.body.i.i_crit_edge ], [ %call.i, %entry.while.body.i.i_crit_edge ]
  %uid.i.i = getelementptr inbounds %struct.key_user, ptr %n.addr.09.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %uid.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack.i.i = load i32, ptr %uid.i.i, align 4
  %9 = insertvalue [1 x i32] undef, i32 %.unpack.i.i, 0
  %call.i.i.i = tail call i32 @from_kuid(ptr noundef %7, [1 x i32] %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %call.i.i.i, -1
  br i1 %cmp.i.not.i.i, label %cleanup.i.i, label %key_user_first.exit

cleanup.i.i:                                      ; preds = %while.body.i.i
  %call1.i.i = tail call ptr @rb_next(ptr noundef nonnull %n.addr.09.i.i) #8
  %tobool.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i.i, label %cleanup.i.i.while.end_crit_edge, label %cleanup.i.i.while.body.i.i_crit_edge

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

cleanup.i.i.while.end_crit_edge:                  ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

key_user_first.exit:                              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %1)
  %cmp23 = icmp slt i64 %1, 1
  br i1 %cmp23, label %key_user_first.exit.while.end_crit_edge, label %key_user_first.exit.while.body_crit_edge

key_user_first.exit.while.body_crit_edge:         ; preds = %key_user_first.exit
  br label %while.body

key_user_first.exit.while.end_crit_edge:          ; preds = %key_user_first.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %key_user_next.exit.while.body_crit_edge, %key_user_first.exit.while.body_crit_edge
  %pos.027 = phi i64 [ %dec, %key_user_next.exit.while.body_crit_edge ], [ %1, %key_user_first.exit.while.body_crit_edge ]
  %_p.026 = phi ptr [ %n.addr.09.i.i13, %key_user_next.exit.while.body_crit_edge ], [ %n.addr.09.i.i, %key_user_first.exit.while.body_crit_edge ]
  %dec = add nsw i64 %pos.027, -1
  %10 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %file.i, align 4
  %f_cred.i9 = getelementptr inbounds %struct.file, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %f_cred.i9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %f_cred.i9, align 8
  %user_ns.i10 = getelementptr inbounds %struct.cred, ptr %13, i32 0, i32 25
  %14 = ptrtoint ptr %user_ns.i10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %user_ns.i10, align 4
  %call.i11 = tail call ptr @rb_next(ptr noundef nonnull %_p.026) #8
  %tobool.not8.i.i12 = icmp eq ptr %call.i11, null
  br i1 %tobool.not8.i.i12, label %while.body.while.end_crit_edge, label %while.body.while.body.i.i18_crit_edge

while.body.while.body.i.i18_crit_edge:            ; preds = %while.body
  br label %while.body.i.i18

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.i.i18:                                 ; preds = %cleanup.i.i21.while.body.i.i18_crit_edge, %while.body.while.body.i.i18_crit_edge
  %n.addr.09.i.i13 = phi ptr [ %call1.i.i19, %cleanup.i.i21.while.body.i.i18_crit_edge ], [ %call.i11, %while.body.while.body.i.i18_crit_edge ]
  %uid.i.i14 = getelementptr inbounds %struct.key_user, ptr %n.addr.09.i.i13, i32 0, i32 6
  %16 = ptrtoint ptr %uid.i.i14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack.i.i15 = load i32, ptr %uid.i.i14, align 4
  %17 = insertvalue [1 x i32] undef, i32 %.unpack.i.i15, 0
  %call.i.i.i16 = tail call i32 @from_kuid(ptr noundef %15, [1 x i32] %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i16)
  %cmp.i.not.i.i17 = icmp eq i32 %call.i.i.i16, -1
  br i1 %cmp.i.not.i.i17, label %cleanup.i.i21, label %key_user_next.exit

cleanup.i.i21:                                    ; preds = %while.body.i.i18
  %call1.i.i19 = tail call ptr @rb_next(ptr noundef nonnull %n.addr.09.i.i13) #8
  %tobool.not.i.i20 = icmp eq ptr %call1.i.i19, null
  br i1 %tobool.not.i.i20, label %cleanup.i.i21.while.end_crit_edge, label %cleanup.i.i21.while.body.i.i18_crit_edge

cleanup.i.i21.while.body.i.i18_crit_edge:         ; preds = %cleanup.i.i21
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i18

cleanup.i.i21.while.end_crit_edge:                ; preds = %cleanup.i.i21
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

key_user_next.exit:                               ; preds = %while.body.i.i18
  %cmp = icmp slt i64 %pos.027, 2
  br i1 %cmp, label %key_user_next.exit.while.end_crit_edge, label %key_user_next.exit.while.body_crit_edge

key_user_next.exit.while.body_crit_edge:          ; preds = %key_user_next.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

key_user_next.exit.while.end_crit_edge:           ; preds = %key_user_next.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %key_user_next.exit.while.end_crit_edge, %cleanup.i.i21.while.end_crit_edge, %while.body.while.end_crit_edge, %key_user_first.exit.while.end_crit_edge, %cleanup.i.i.while.end_crit_edge, %entry.while.end_crit_edge
  %_p.0.lcssa = phi ptr [ %n.addr.09.i.i, %key_user_first.exit.while.end_crit_edge ], [ null, %entry.while.end_crit_edge ], [ null, %cleanup.i.i21.while.end_crit_edge ], [ null, %while.body.while.end_crit_edge ], [ %n.addr.09.i.i13, %key_user_next.exit.while.end_crit_edge ], [ null, %cleanup.i.i.while.end_crit_edge ]
  ret ptr %_p.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @proc_key_users_stop(ptr nocapture noundef readnone %p, ptr nocapture noundef readnone %v) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_unlock(ptr noundef nonnull @key_user_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @proc_key_users_next(ptr nocapture noundef readonly %p, ptr noundef %v, ptr nocapture noundef %_pos) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %_pos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %_pos, align 8
  %file.i = getelementptr inbounds %struct.seq_file, ptr %p, i32 0, i32 10
  %2 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %file.i, align 4
  %f_cred.i = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %f_cred.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_cred.i, align 8
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns.i, align 4
  %call.i = tail call ptr @rb_next(ptr noundef %v) #8
  %tobool.not8.i.i = icmp eq ptr %call.i, null
  br i1 %tobool.not8.i.i, label %entry.key_user_next.exit_crit_edge, label %entry.while.body.i.i_crit_edge

entry.while.body.i.i_crit_edge:                   ; preds = %entry
  br label %while.body.i.i

entry.key_user_next.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %key_user_next.exit

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %entry.while.body.i.i_crit_edge
  %n.addr.09.i.i = phi ptr [ %call1.i.i, %cleanup.i.i.while.body.i.i_crit_edge ], [ %call.i, %entry.while.body.i.i_crit_edge ]
  %uid.i.i = getelementptr inbounds %struct.key_user, ptr %n.addr.09.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %uid.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack.i.i = load i32, ptr %uid.i.i, align 4
  %9 = insertvalue [1 x i32] undef, i32 %.unpack.i.i, 0
  %call.i.i.i = tail call i32 @from_kuid(ptr noundef %7, [1 x i32] %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %call.i.i.i, -1
  br i1 %cmp.i.not.i.i, label %cleanup.i.i, label %while.body.i.i.key_user_next.exit_crit_edge

while.body.i.i.key_user_next.exit_crit_edge:      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %key_user_next.exit

cleanup.i.i:                                      ; preds = %while.body.i.i
  %call1.i.i = tail call ptr @rb_next(ptr noundef nonnull %n.addr.09.i.i) #8
  %tobool.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i.i, label %cleanup.i.i.key_user_next.exit_crit_edge, label %cleanup.i.i.while.body.i.i_crit_edge

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

cleanup.i.i.key_user_next.exit_crit_edge:         ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %key_user_next.exit

key_user_next.exit:                               ; preds = %cleanup.i.i.key_user_next.exit_crit_edge, %while.body.i.i.key_user_next.exit_crit_edge, %entry.key_user_next.exit_crit_edge
  %n.addr.0.lcssa.i.i = phi ptr [ null, %entry.key_user_next.exit_crit_edge ], [ %n.addr.09.i.i, %while.body.i.i.key_user_next.exit_crit_edge ], [ null, %cleanup.i.i.key_user_next.exit_crit_edge ]
  ret ptr %n.addr.0.lcssa.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_key_users_show(ptr noundef %m, ptr noundef %v) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %uid = getelementptr inbounds %struct.key_user, ptr %v, i32 0, i32 6
  %0 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %0)
  %.unpack = load i32, ptr %uid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack)
  %cmp.i = icmp eq i32 %.unpack, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @key_quota_root_maxkeys to i32))
  %key_quota_root_maxkeys.val = load i32, ptr @key_quota_root_maxkeys, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @key_quota_maxkeys to i32))
  %key_quota_maxkeys.val = load i32, ptr @key_quota_maxkeys, align 4
  %cond = select i1 %cmp.i, i32 %key_quota_root_maxkeys.val, i32 %key_quota_maxkeys.val
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @key_quota_root_maxbytes to i32))
  %key_quota_root_maxbytes.val = load i32, ptr @key_quota_root_maxbytes, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @key_quota_maxbytes to i32))
  %key_quota_maxbytes.val = load i32, ptr @key_quota_maxbytes, align 4
  %cond11 = select i1 %cmp.i, i32 %key_quota_root_maxbytes.val, i32 %key_quota_maxbytes.val
  %file.i = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 10
  %1 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %file.i, align 4
  %f_cred.i = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 12
  %3 = ptrtoint ptr %f_cred.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %f_cred.i, align 8
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 25
  %5 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %user_ns.i, align 4
  %7 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call15 = tail call i32 @from_kuid_munged(ptr noundef %6, [1 x i32] %7) #8
  %usage = getelementptr inbounds %struct.key_user, ptr %v, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usage, i32 noundef 4) #8
  %8 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %usage, align 4
  %nkeys = getelementptr inbounds %struct.key_user, ptr %v, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nkeys, i32 noundef 4) #8
  %10 = ptrtoint ptr %nkeys to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %nkeys, align 4
  %nikeys = getelementptr inbounds %struct.key_user, ptr %v, i32 0, i32 5
  %call.i.i30 = tail call zeroext i1 @__kasan_check_read(ptr noundef %nikeys, i32 noundef 4) #8
  %12 = ptrtoint ptr %nikeys to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %nikeys, align 4
  %qnkeys = getelementptr inbounds %struct.key_user, ptr %v, i32 0, i32 7
  %14 = ptrtoint ptr %qnkeys to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qnkeys, align 4
  %qnbytes = getelementptr inbounds %struct.key_user, ptr %v, i32 0, i32 8
  %16 = ptrtoint ptr %qnbytes to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %qnbytes, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.15, i32 noundef %call15, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %cond, i32 noundef %17, i32 noundef %cond11) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold noreturn nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !34, !35, !37}
!llvm.named.register.sp = !{!39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__initcall__kmod_proc__219_58_key_proc_init6, !1, !"__initcall__kmod_proc__219_58_key_proc_init6", i1 false, i1 false}
!1 = !{!"../security/keys/proc.c", i32 58, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../security/keys/proc.c", i32 47, i32 6}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../security/keys/proc.c", i32 49, i32 9}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../security/keys/proc.c", i32 51, i32 6}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../security/keys/proc.c", i32 53, i32 9}
!10 = !{ptr @proc_keys_ops, !11, !"proc_keys_ops", i1 false, i1 false}
!11 = !{!"../security/keys/proc.c", i32 21, i32 36}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../security/keys/proc.c", i32 202, i32 16}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../security/keys/proc.c", i32 204, i32 16}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../security/keys/proc.c", i32 209, i32 18}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../security/keys/proc.c", i32 211, i32 18}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../security/keys/proc.c", i32 213, i32 18}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../security/keys/proc.c", i32 215, i32 18}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../security/keys/proc.c", i32 217, i32 18}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../security/keys/proc.c", i32 226, i32 16}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!30 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @proc_key_users_ops, !36, !"proc_key_users_ops", i1 false, i1 false}
!36 = !{!"../security/keys/proc.c", i32 33, i32 36}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../security/keys/proc.c", i32 312, i32 16}
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
!49 = !{i64 2149252745}
!50 = !{i64 2149253011}
!51 = !{i64 778150, i64 778177}
!52 = !{i64 778490, i64 778517, i64 778551, i64 778572}
!53 = !{i64 778267, i64 778294, i64 778316, i64 778344}
!54 = !{i64 778675, i64 778702, i64 778735, i64 778756, i64 778783, i64 778809}
!55 = !{i64 777980, i64 778007}
!56 = !{i64 2152253694}
