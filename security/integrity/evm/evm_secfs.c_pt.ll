; ModuleID = '/llk/IR_all_yes/security/integrity/evm/evm_secfs.c_pt.bc'
source_filename = "../security/integrity/evm/evm_secfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.4 }
%union.anon.4 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.14, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.xattr_list = type { %struct.list_head, ptr, i8 }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.70, %struct.list_head, %struct.list_head, %union.anon.71 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.68 }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%union.anon.70 = type { %struct.list_head }
%union.anon.71 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.64 = type { i32 }
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.67 = type { ptr }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"evm\00", [28 x i8] zeroinitializer }, align 32
@integrity_dir = external dso_local local_unnamed_addr global ptr, align 4
@evm_dir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@evm_key_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @evm_read_key, ptr @evm_write_key, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@evm_init_tpm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"integrity/evm/evm\00", [46 x i8] zeroinitializer }, align 32
@evm_symlink = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@evm_initialized = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"evm_xattrs\00", [21 x i8] zeroinitializer }, align 32
@evm_xattr_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @evm_read_xattrs, ptr @evm_write_xattrs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@evm_xattrs = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@xattr_list_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @xattr_list_mutex, i64 52), ptr getelementptr (i8, ptr @xattr_list_mutex, i64 52) }, ptr @xattr_list_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@evm_config_xattrnames = external dso_local global %struct.list_head, align 4
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"xattr_list_mutex.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xattr_list_mutex\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@evm_xattrs_locked = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xattr=\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c".\00", [30 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"security.\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" res=0\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" res=%d\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 305, i32 34 }
@___asan_gen_.15 = private unnamed_addr constant [8 x i8] c"evm_dir\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 19, i32 23 }
@___asan_gen_.18 = private unnamed_addr constant [12 x i8] c"evm_key_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 111, i32 37 }
@___asan_gen_.21 = private unnamed_addr constant [13 x i8] c"evm_init_tpm\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 20, i32 23 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 317, i32 7 }
@___asan_gen_.27 = private unnamed_addr constant [12 x i8] c"evm_symlink\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 21, i32 23 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 48, i32 16 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 287, i32 38 }
@___asan_gen_.36 = private unnamed_addr constant [14 x i8] c"evm_xattr_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 280, i32 37 }
@___asan_gen_.39 = private unnamed_addr constant [11 x i8] c"evm_xattrs\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 24, i32 23 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"xattr_list_mutex\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 159, i32 26 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 25, i32 8 }
@___asan_gen_.54 = private unnamed_addr constant [18 x i8] c"evm_xattrs_locked\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 222, i32 23 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 225, i32 26 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 238, i32 27 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 267, i32 23 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private constant [38 x i8] c"../security/integrity/evm/evm_secfs.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 271, i32 23 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @.str, ptr @evm_dir, ptr @evm_key_ops, ptr @evm_init_tpm, ptr @.str.1, ptr @evm_symlink, ptr @.str.2, ptr @.str.3, ptr @evm_xattr_ops, ptr @evm_xattrs, ptr @xattr_list_mutex, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @evm_xattrs_locked, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evm_dir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evm_key_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evm_init_tpm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evm_symlink to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evm_xattr_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evm_xattrs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xattr_list_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evm_xattrs_locked to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @evm_init_secfs() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @integrity_dir to i32))
  %0 = load ptr, ptr @integrity_dir, align 4
  %call = tail call ptr @securityfs_create_dir(ptr noundef nonnull @.str, ptr noundef %0) #9
  store ptr %call, ptr @evm_dir, align 4
  %tobool.not = icmp eq ptr %call, null
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool.not, %cmp.i
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @securityfs_create_file(ptr noundef nonnull @.str, i16 noundef zeroext 432, ptr noundef nonnull %call, ptr noundef null, ptr noundef nonnull @evm_key_ops) #9
  store ptr %call2, ptr @evm_init_tpm, align 4
  %tobool3.not = icmp eq ptr %call2, null
  %cmp.i17 = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  %or.cond19 = or i1 %tobool3.not, %cmp.i17
  br i1 %or.cond19, label %if.end.out_crit_edge, label %if.end7

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @securityfs_create_symlink(ptr noundef nonnull @.str, ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef null) #9
  store ptr %call8, ptr @evm_symlink, align 4
  %tobool9.not = icmp eq ptr %call8, null
  %cmp.i18 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  %or.cond20 = or i1 %tobool9.not, %cmp.i18
  br i1 %or.cond20, label %if.end7.out_crit_edge, label %if.end13

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end13:                                         ; preds = %if.end7
  %1 = load ptr, ptr @evm_dir, align 4
  %call.i = tail call ptr @securityfs_create_file(ptr noundef nonnull @.str.3, i16 noundef zeroext 432, ptr noundef %1, ptr noundef null, ptr noundef nonnull @evm_xattr_ops) #9
  store ptr %call.i, ptr @evm_xattrs, align 4
  %tobool.not.i = icmp ne ptr %call.i, null
  %cmp.i.i = icmp ule ptr %call.i, inttoptr (i32 -4096 to ptr)
  %not. = and i1 %tobool.not.i, %cmp.i.i
  br i1 %not., label %if.end13.cleanup_crit_edge, label %if.end13.out_crit_edge

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

out:                                              ; preds = %if.end13.out_crit_edge, %if.end7.out_crit_edge, %if.end.out_crit_edge
  %2 = load ptr, ptr @evm_symlink, align 4
  tail call void @securityfs_remove(ptr noundef %2) #9
  %3 = load ptr, ptr @evm_init_tpm, align 4
  tail call void @securityfs_remove(ptr noundef %3) #9
  %4 = load ptr, ptr @evm_dir, align 4
  tail call void @securityfs_remove(ptr noundef %4) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %out ], [ -14, %entry.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @securityfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @securityfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @securityfs_create_symlink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @securityfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @evm_read_key(ptr nocapture noundef readnone %filp, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #3 align 64 {
entry:
  %temp = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %temp) #9
  %0 = call ptr @memset(ptr %temp, i32 255, i32 80)
  %1 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %cmp.not = icmp eq i64 %2, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @evm_initialized to i32))
  %3 = load i32, ptr @evm_initialized, align 4
  %and = and i32 %3, 2147483647
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %temp, ptr noundef nonnull @.str.2, i32 noundef %and)
  %call3 = call i32 @strlen(ptr noundef nonnull %temp) #12
  %call4 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %temp, i32 noundef %call3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %temp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @evm_write_key(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #3 align 64 {
entry:
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #9
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %i, align 4, !annotation !47
  %call = tail call zeroext i1 @capable(i32 noundef 21) #9
  br i1 %call, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @evm_initialized to i32))
  %1 = load i32, ptr @evm_initialized, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %tobool.not = icmp sgt i32 %1, -1
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call1 = call i32 @kstrtouint_from_user(ptr noundef %buf, i32 noundef %count, i32 noundef 0, ptr noundef nonnull %i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %2 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool5.not = icmp ne i32 %3, 0
  %and7 = and i32 %3, 2147483640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %cmp.not = icmp eq i32 %and7, 0
  %or.cond = and i1 %tobool5.not, %cmp.not
  br i1 %or.cond, label %if.end9, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %and10 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.if.end15_crit_edge, label %land.lhs.true

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @evm_initialized to i32))
  %4 = load i32, ptr @evm_initialized, align 4
  %and12 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %cmp13.not = icmp eq i32 %and12, 0
  br i1 %cmp13.not, label %land.lhs.true.if.end15_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.end15:                                         ; preds = %land.lhs.true.if.end15_crit_edge, %if.end9.if.end15_crit_edge
  %and16 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end23_crit_edge, label %if.then18

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then18:                                        ; preds = %if.end15
  %call19 = call i32 @evm_init_key() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20.not = icmp eq i32 %call19, 0
  br i1 %cmp20.not, label %if.end22, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i, align 4
  %or = or i32 %6, -2147483648
  store i32 %or, ptr %i, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.end15.if.end23_crit_edge
  %7 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @evm_initialized to i32))
  %9 = load i32, ptr @evm_initialized, align 4
  %or24 = or i32 %9, %8
  %and25 = and i32 %or24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %and28 = and i32 %or24, -5
  %spec.select = select i1 %tobool26.not, i32 %or24, i32 %and28
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @evm_initialized to i32))
  store i32 %spec.select, ptr @evm_initialized, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then18.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end23 ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ %call19, %if.then18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @evm_init_key() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @evm_read_xattrs(ptr nocapture noundef readnone %filp, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp.not = icmp eq i64 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef nonnull @xattr_list_mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @evm_config_xattrnames to i32))
  %xattr.066 = load ptr, ptr @evm_config_xattrnames, align 4
  %cmp3.not67 = icmp eq ptr %xattr.066, @evm_config_xattrnames
  br i1 %cmp3.not67, label %for.cond.preheader.if.end8.i_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end8.i_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %xattr.069 = phi ptr [ %xattr.0, %for.inc.for.body_crit_edge ], [ %xattr.066, %for.cond.preheader.for.body_crit_edge ]
  %size.068 = phi i32 [ %size.1, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %enabled = getelementptr inbounds %struct.xattr_list, ptr %xattr.069, i32 0, i32 2
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not = icmp eq i8 %3, 0
  br i1 %tobool4.not, label %for.body.for.inc_crit_edge, label %if.end6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end6:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.xattr_list, ptr %xattr.069, i32 0, i32 1
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %call7 = tail call i32 @strlen(ptr noundef %5) #12
  %add = add i32 %size.068, 1
  %add8 = add i32 %add, %call7
  br label %for.inc

for.inc:                                          ; preds = %if.end6, %for.body.for.inc_crit_edge
  %size.1 = phi i32 [ %add8, %if.end6 ], [ %size.068, %for.body.for.inc_crit_edge ]
  %6 = ptrtoint ptr %xattr.069 to i32
  call void @__asan_load4_noabort(i32 %6)
  %xattr.0 = load ptr, ptr %xattr.069, align 4
  %cmp3.not = icmp eq ptr %xattr.0, @evm_config_xattrnames
  br i1 %cmp3.not, label %for.inc.if.end8.i_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.if.end8.i_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.end8.i:                                        ; preds = %for.inc.if.end8.i_crit_edge, %for.cond.preheader.if.end8.i_crit_edge
  %size.0.lcssa = phi i32 [ 0, %for.cond.preheader.if.end8.i_crit_edge ], [ %size.1, %for.inc.if.end8.i_crit_edge ]
  %add13 = add i32 %size.0.lcssa, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add13, i32 noundef 3264) #13
  %tobool15.not = icmp eq ptr %call9.i, null
  br i1 %tobool15.not, label %if.then16, label %for.cond21.preheader

for.cond21.preheader:                             ; preds = %if.end8.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @evm_config_xattrnames to i32))
  %xattr.170 = load ptr, ptr @evm_config_xattrnames, align 4
  %cmp23.not71 = icmp eq ptr %xattr.170, @evm_config_xattrnames
  br i1 %cmp23.not71, label %for.cond21.preheader.for.end43_crit_edge, label %for.cond21.preheader.for.body25_crit_edge

for.cond21.preheader.for.body25_crit_edge:        ; preds = %for.cond21.preheader
  br label %for.body25

for.cond21.preheader.for.end43_crit_edge:         ; preds = %for.cond21.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end43

if.then16:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef nonnull @xattr_list_mutex) #9
  br label %cleanup

for.body25:                                       ; preds = %for.inc37.for.body25_crit_edge, %for.cond21.preheader.for.body25_crit_edge
  %xattr.173 = phi ptr [ %xattr.1, %for.inc37.for.body25_crit_edge ], [ %xattr.170, %for.cond21.preheader.for.body25_crit_edge ]
  %offset.072 = phi i32 [ %offset.1, %for.inc37.for.body25_crit_edge ], [ 0, %for.cond21.preheader.for.body25_crit_edge ]
  %enabled26 = getelementptr inbounds %struct.xattr_list, ptr %xattr.173, i32 0, i32 2
  %7 = ptrtoint ptr %enabled26 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %enabled26, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool27.not = icmp eq i8 %8, 0
  br i1 %tobool27.not, label %for.body25.for.inc37_crit_edge, label %if.end29

for.body25.for.inc37_crit_edge:                   ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc37

if.end29:                                         ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr30 = getelementptr i8, ptr %call9.i, i32 %offset.072
  %name31 = getelementptr inbounds %struct.xattr_list, ptr %xattr.173, i32 0, i32 1
  %9 = ptrtoint ptr %name31 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name31, align 4
  %call32 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr30, ptr noundef nonnull @.str.4, ptr noundef %10)
  %11 = ptrtoint ptr %name31 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name31, align 4
  %call34 = tail call i32 @strlen(ptr noundef %12) #12
  %add35 = add i32 %offset.072, 1
  %add36 = add i32 %add35, %call34
  br label %for.inc37

for.inc37:                                        ; preds = %if.end29, %for.body25.for.inc37_crit_edge
  %offset.1 = phi i32 [ %add36, %if.end29 ], [ %offset.072, %for.body25.for.inc37_crit_edge ]
  %13 = ptrtoint ptr %xattr.173 to i32
  call void @__asan_load4_noabort(i32 %13)
  %xattr.1 = load ptr, ptr %xattr.173, align 4
  %cmp23.not = icmp eq ptr %xattr.1, @evm_config_xattrnames
  br i1 %cmp23.not, label %for.inc37.for.end43_crit_edge, label %for.inc37.for.body25_crit_edge

for.inc37.for.body25_crit_edge:                   ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body25

for.inc37.for.end43_crit_edge:                    ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end43

for.end43:                                        ; preds = %for.inc37.for.end43_crit_edge, %for.cond21.preheader.for.end43_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @xattr_list_mutex) #9
  %call44 = tail call i32 @strlen(ptr noundef nonnull %call9.i) #12
  %call45 = tail call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call9.i, i32 noundef %call44) #9
  tail call void @kfree(ptr noundef nonnull %call9.i) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end43, %if.then16, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call45, %for.end43 ], [ -12, %if.then16 ], [ 0, %entry.cleanup_crit_edge ], [ -512, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @evm_write_xattrs(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readonly %ppos) #3 align 64 {
entry:
  %newattrs = alloca %struct.iattr, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %newattrs) #9
  %0 = call ptr @memset(ptr %newattrs, i32 255, i32 80)
  %call = tail call zeroext i1 @capable(i32 noundef 21) #9
  br i1 %call, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %.b = load i1, ptr @evm_xattrs_locked, align 4
  br i1 %.b, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %1 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %cmp.not = icmp eq i64 %2, 0
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %count)
  %cmp3 = icmp ugt i32 %count, 255
  br i1 %cmp3, label %if.end2.cleanup_crit_edge, label %if.end5

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  %call7 = tail call ptr @audit_log_start(ptr noundef null, i32 noundef 3264, i32 noundef 1806) #9
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 16) #14
  %tobool12.not = icmp eq ptr %call7.i, null
  br i1 %tobool12.not, label %if.end10.out.thread_crit_edge, label %if.end14

if.end10.out.thread_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread

if.end14:                                         ; preds = %if.end10
  %enabled = getelementptr inbounds %struct.xattr_list, ptr %call7.i, i32 0, i32 2
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %enabled, align 4
  %call15 = tail call ptr @memdup_user_nul(ptr noundef %buf, i32 noundef %count) #9
  %name = getelementptr inbounds %struct.xattr_list, ptr %call7.i, i32 0, i32 1
  %5 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call15, ptr %name, align 8
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.end22

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %call15 to i32
  %7 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %name, align 8
  br label %out

if.end22:                                         ; preds = %if.end14
  %call24 = tail call i32 @strlen(ptr noundef %call15) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end22.if.end33_crit_edge, label %land.lhs.true

if.end22.if.end33_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

land.lhs.true:                                    ; preds = %if.end22
  %sub = add i32 %call24, -1
  %arrayidx = getelementptr i8, ptr %call15, i32 %sub
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %9)
  %cmp27 = icmp eq i8 %9, 10
  br i1 %cmp27, label %if.then29, label %land.lhs.true.if.end33_crit_edge

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then29:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %land.lhs.true.if.end33_crit_edge, %if.end22.if.end33_crit_edge
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call7, ptr noundef nonnull @.str.7) #9
  %11 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name, align 8
  tail call void @audit_log_untrustedstring(ptr noundef nonnull %call7, ptr noundef %12) #9
  %call36 = tail call i32 @strcmp(ptr noundef %12, ptr noundef nonnull dereferenceable(2) @.str.8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %if.then39, label %if.end44

if.then39:                                        ; preds = %if.end33
  store i1 true, ptr @evm_xattrs_locked, align 4
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %newattrs, i32 0, i32 1
  %13 = ptrtoint ptr %ia_mode to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -32480, ptr %ia_mode, align 4
  %14 = ptrtoint ptr %newattrs to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %newattrs, align 8
  %15 = load ptr, ptr @evm_xattrs, align 4
  %d_inode = getelementptr inbounds %struct.dentry, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %d_inode, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #9
  %18 = load ptr, ptr @evm_xattrs, align 4
  %call40 = call i32 @simple_setattr(ptr noundef nonnull @init_user_ns, ptr noundef %18, ptr noundef nonnull %newattrs) #9
  call void @up_write(ptr noundef %i_rwsem.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then39.out.thread125_crit_edge, label %if.then39.out_crit_edge

if.then39.out_crit_edge:                          ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then39.out.thread125_crit_edge:                ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread125

if.end44:                                         ; preds = %if.end33
  %call46 = tail call i32 @strncmp(ptr noundef %12, ptr noundef nonnull dereferenceable(10) @.str.9, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47.not = icmp eq i32 %call46, 0
  br i1 %cmp47.not, label %if.end50, label %if.end44.out.thread_crit_edge

if.end44.out.thread_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread

if.end50:                                         ; preds = %if.end44
  tail call void @mutex_lock_nested(ptr noundef nonnull @xattr_list_mutex, i32 noundef 0) #9
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end50
  %tmp.0.in = phi ptr [ @evm_config_xattrnames, %if.end50 ], [ %tmp.0, %for.body.for.cond_crit_edge ]
  %19 = ptrtoint ptr %tmp.0.in to i32
  call void @__asan_load4_noabort(i32 %19)
  %tmp.0 = load ptr, ptr %tmp.0.in, align 4
  %cmp52.not = icmp eq ptr %tmp.0, @evm_config_xattrnames
  br i1 %cmp52.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %20 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name, align 8
  %name55 = getelementptr inbounds %struct.xattr_list, ptr %tmp.0, i32 0, i32 1
  %22 = ptrtoint ptr %name55 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name55, align 4
  %call56 = tail call i32 @strcmp(ptr noundef %21, ptr noundef %23) #12
  %cmp57 = icmp eq i32 %call56, 0
  br i1 %cmp57, label %if.then59, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.then59:                                        ; preds = %for.body
  %enabled60 = getelementptr inbounds %struct.xattr_list, ptr %tmp.0, i32 0, i32 2
  %24 = ptrtoint ptr %enabled60 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %enabled60, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool61.not = icmp eq i8 %25, 0
  br i1 %tobool61.not, label %if.then62, label %if.then59.if.end64_crit_edge

if.then59.if.end64_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

if.then62:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %enabled60 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %enabled60, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.then59.if.end64_crit_edge
  %err.0 = phi i32 [ -17, %if.then59.if.end64_crit_edge ], [ %count, %if.then62 ]
  tail call void @mutex_unlock(ptr noundef nonnull @xattr_list_mutex) #9
  br label %out

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @list_add_tail_rcu(ptr noundef nonnull %call7.i)
  tail call void @mutex_unlock(ptr noundef nonnull @xattr_list_mutex) #9
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call7, ptr noundef nonnull @.str.10) #9
  tail call void @audit_log_end(ptr noundef nonnull %call7) #9
  br label %cleanup

out:                                              ; preds = %if.end64, %if.then39.out_crit_edge, %if.then18
  %err.1 = phi i32 [ %6, %if.then18 ], [ %err.0, %if.end64 ], [ %call40, %if.then39.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %cmp71 = icmp slt i32 %err.1, 0
  br i1 %cmp71, label %out.out.thread_crit_edge, label %out.out.thread125_crit_edge

out.out.thread125_crit_edge:                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread125

out.out.thread_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread

out.thread:                                       ; preds = %out.out.thread_crit_edge, %if.end44.out.thread_crit_edge, %if.end10.out.thread_crit_edge
  %err.1124 = phi i32 [ %err.1, %out.out.thread_crit_edge ], [ -22, %if.end44.out.thread_crit_edge ], [ -12, %if.end10.out.thread_crit_edge ]
  br label %out.thread125

out.thread125:                                    ; preds = %out.thread, %out.out.thread125_crit_edge, %if.then39.out.thread125_crit_edge
  %err.1123 = phi i32 [ %err.1124, %out.thread ], [ %err.1, %out.out.thread125_crit_edge ], [ %count, %if.then39.out.thread125_crit_edge ]
  %27 = phi i32 [ %err.1124, %out.thread ], [ 0, %out.out.thread125_crit_edge ], [ 0, %if.then39.out.thread125_crit_edge ]
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call7, ptr noundef nonnull @.str.11, i32 noundef %27) #9
  call void @audit_log_end(ptr noundef nonnull %call7) #9
  br i1 %tobool12.not, label %out.thread125.cleanup_crit_edge, label %if.then74

out.thread125.cleanup_crit_edge:                  ; preds = %out.thread125
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then74:                                        ; preds = %out.thread125
  call void @__sanitizer_cov_trace_pc() #11
  %name75 = getelementptr inbounds %struct.xattr_list, ptr %call7.i, i32 0, i32 1
  %28 = ptrtoint ptr %name75 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name75, align 8
  call void @kfree(ptr noundef %29) #9
  call void @kfree(ptr noundef nonnull %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then74, %out.thread125.cleanup_crit_edge, %for.end, %if.end5.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %for.end ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -7, %if.end2.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ %err.1123, %if.then74 ], [ %err.1123, %out.thread125.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %newattrs) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @audit_log_start(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user_nul(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_format(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_untrustedstring(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_setattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @list_add_tail_rcu(ptr noundef %new) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.list_head, ptr @evm_config_xattrnames, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @evm_config_xattrnames, i32 0, i32 1), align 4
  %call.i = tail call zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %0, ptr noundef nonnull @evm_config_xattrnames) #9
  br i1 %call.i, label %if.end.i, label %entry.__list_add_rcu.exit_crit_edge

entry.__list_add_rcu.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_add_rcu.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @evm_config_xattrnames, ptr %new, align 4
  %prev2.i = getelementptr inbounds %struct.list_head, ptr %new, i32 0, i32 1
  %2 = ptrtoint ptr %prev2.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %0, ptr %prev2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !49
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %new, ptr %0, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.list_head, ptr @evm_config_xattrnames, i32 0, i32 1) to i32))
  store ptr %new, ptr getelementptr inbounds (%struct.list_head, ptr @evm_config_xattrnames, i32 0, i32 1), align 4
  br label %__list_add_rcu.exit

__list_add_rcu.exit:                              ; preds = %if.end.i, %entry.__list_add_rcu.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !26, !28, !30, !32, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/integrity/evm/evm_secfs.c", i32 305, i32 34}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../security/integrity/evm/evm_secfs.c", i32 317, i32 7}
!4 = !{ptr @evm_dir, !5, !"evm_dir", i1 false, i1 false}
!5 = !{!"../security/integrity/evm/evm_secfs.c", i32 19, i32 23}
!6 = !{ptr @evm_init_tpm, !7, !"evm_init_tpm", i1 false, i1 false}
!7 = !{!"../security/integrity/evm/evm_secfs.c", i32 20, i32 23}
!8 = !{ptr @evm_symlink, !9, !"evm_symlink", i1 false, i1 false}
!9 = !{!"../security/integrity/evm/evm_secfs.c", i32 21, i32 23}
!10 = !{ptr @evm_key_ops, !11, !"evm_key_ops", i1 false, i1 false}
!11 = !{!"../security/integrity/evm/evm_secfs.c", i32 111, i32 37}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../security/integrity/evm/evm_secfs.c", i32 48, i32 16}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../security/integrity/evm/evm_secfs.c", i32 287, i32 38}
!16 = !{ptr @evm_xattr_ops, !17, !"evm_xattr_ops", i1 false, i1 false}
!17 = !{!"../security/integrity/evm/evm_secfs.c", i32 280, i32 37}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../security/integrity/evm/evm_secfs.c", i32 159, i32 26}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../security/integrity/evm/evm_secfs.c", i32 25, i32 8}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @xattr_list_mutex, !21, !"xattr_list_mutex", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../security/integrity/evm/evm_secfs.c", i32 222, i32 23}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../security/integrity/evm/evm_secfs.c", i32 225, i32 26}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../security/integrity/evm/evm_secfs.c", i32 238, i32 27}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../security/integrity/evm/evm_secfs.c", i32 267, i32 23}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../security/integrity/evm/evm_secfs.c", i32 271, i32 23}
!34 = distinct !{null, !35, !"evm_xattrs_locked", i1 false, i1 false}
!35 = !{!"../security/integrity/evm/evm_secfs.c", i32 26, i32 12}
!36 = !{ptr @evm_xattrs, !37, !"evm_xattrs", i1 false, i1 false}
!37 = !{!"../security/integrity/evm/evm_secfs.c", i32 24, i32 23}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{!"auto-init"}
!48 = !{i8 0, i8 2}
!49 = !{i64 2149298299}
