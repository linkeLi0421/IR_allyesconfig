; ModuleID = '/llk/IR_all_yes/fs/nfsd/nfs2acl.c_pt.bc'
source_filename = "../fs/nfsd/nfs2acl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.svc_procedure = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.svc_version = type { i32, i32, ptr, ptr, i32, i8, i8, i8, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.35 }
%union.anon.35 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.37, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.path = type { ptr, ptr }
%struct.svc_rqst = type { %struct.list_head, %struct.callback_head, ptr, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, ptr, ptr, %struct.svc_cred, ptr, ptr, i32, %struct.xdr_buf, %struct.xdr_stream, %struct.xdr_stream, ptr, %struct.xdr_buf, [260 x ptr], ptr, ptr, ptr, %struct.pagevec, [259 x %struct.kvec], [259 x %struct.bio_vec], i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i64, %struct.cache_req, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.133 }
%union.anon.133 = type { ptr, [124 x i8] }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cache_req = type { ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.nfsd3_getaclres = type { i32, %struct.svc_fh, i32, ptr, ptr, %struct.kstat }
%struct.svc_fh = type { %struct.knfsd_fh, i32, ptr, ptr, i8, i8, i8, i8, i32, i8, i8, i64, %struct.timespec64, %struct.timespec64, i64, %struct.kstat, i64 }
%struct.knfsd_fh = type { i32, %union.anon.157 }
%union.anon.157 = type { %struct.anon.158, [124 x i8] }
%struct.anon.158 = type { i8, i8, i8, i8, [0 x i32] }
%struct.timespec64 = type { i64, i32 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.122, %struct.list_head, %struct.list_head, %union.anon.123 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.16, ptr }
%union.anon.16 = type { i64 }
%struct.lockref = type { %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.spinlock, i32 }
%union.anon.122 = type { %struct.list_head }
%union.anon.123 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nfsd3_getaclargs = type { %struct.svc_fh, i32 }
%struct.svc_export = type { %struct.cache_head, ptr, i32, %struct.path, %struct.kuid_t, %struct.kgid_t, i32, ptr, %struct.nfsd4_fs_locations, i32, [8 x %struct.exp_flavor_info], i32, ptr, ptr, %struct.callback_head, %struct.export_stats }
%struct.cache_head = type { %struct.hlist_node, i64, i64, %struct.kref, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.nfsd4_fs_locations = type { i32, ptr, i32 }
%struct.exp_flavor_info = type { i32, i32 }
%struct.export_stats = type { i64, [3 x %struct.percpu_counter] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.posix_acl = type { %struct.refcount_struct, %struct.callback_head, i32, [0 x %struct.posix_acl_entry] }
%struct.posix_acl_entry = type { i16, i16, %union.anon.137 }
%union.anon.137 = type { %struct.kuid_t }
%struct.nfsd_attrstat = type { i32, %struct.svc_fh, %struct.kstat }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.138, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.139, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.140, ptr, %struct.address_space, %struct.list_head, %union.anon.141, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.138 = type { i32 }
%union.anon.139 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.140 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.141 = type { ptr }
%struct.nfsd3_setaclargs = type { %struct.svc_fh, i32, ptr, ptr }
%struct.nfsd3_accessargs = type { %struct.svc_fh, i32 }
%struct.nfsd3_accessres = type { i32, %struct.svc_fh, i32, %struct.kstat }

@nfsd_acl_procedures2 = internal constant { [5 x %struct.svc_procedure], [44 x i8] } { [5 x %struct.svc_procedure] [%struct.svc_procedure { ptr @nfsacld_proc_null, ptr @nfssvc_decode_voidarg, ptr @nfssvc_encode_voidres, ptr null, i32 0, i32 0, i32 0, i32 1, ptr @.str }, %struct.svc_procedure { ptr @nfsacld_proc_getacl, ptr @nfsaclsvc_decode_getaclargs, ptr @nfsaclsvc_encode_getaclres, ptr @nfsaclsvc_release_getacl, i32 368, i32 528, i32 0, i32 6150, ptr @.str.1 }, %struct.svc_procedure { ptr @nfsacld_proc_setacl, ptr @nfsaclsvc_decode_setaclargs, ptr @nfssvc_encode_attrstatres, ptr @nfssvc_release_attrstat, i32 376, i32 512, i32 0, i32 22, ptr @.str.2 }, %struct.svc_procedure { ptr @nfsacld_proc_getattr, ptr @nfssvc_decode_fhandleargs, ptr @nfssvc_encode_attrstatres, ptr @nfssvc_release_attrstat, i32 360, i32 512, i32 0, i32 22, ptr @.str.3 }, %struct.svc_procedure { ptr @nfsacld_proc_access, ptr @nfsaclsvc_decode_accessargs, ptr @nfsaclsvc_encode_accessres, ptr @nfsaclsvc_release_access, i32 368, i32 520, i32 0, i32 23, ptr @.str.4 }], [44 x i8] zeroinitializer }, align 32
@nfsd_acl_count2 = internal global { [5 x i32], [44 x i8] } zeroinitializer, align 32
@nfsd_acl_version2 = dso_local constant { %struct.svc_version, [36 x i8] } { %struct.svc_version { i32 2, i32 5, ptr @nfsd_acl_procedures2, ptr @nfsd_acl_count2, i32 832, i8 0, i8 0, i8 0, ptr @nfsd_dispatch }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NULL\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GETACL\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SETACL\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GETATTR\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SETATTR\00", [24 x i8] zeroinitializer }, align 32
@nfsd_debug = external dso_local local_unnamed_addr global i32, align 4
@nfsacld_proc_getacl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 38, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nfsd: GETACL(2acl)   %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nfsacld_proc_getacl\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/nfsd/nfs2acl.c\00", [46 x i8] zeroinitializer }, align 32
@nfsacld_proc_getacl._entry_ptr = internal global ptr @nfsacld_proc_getacl._entry, section ".printk_index", align 4
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/nfsd/nfsfh.h\00", [16 x i8] zeroinitializer }, align 32
@nfsacld_proc_setacl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.7, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nfsd: SETACL(2acl)   %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nfsacld_proc_setacl\00", [44 x i8] zeroinitializer }, align 32
@nfsacld_proc_setacl._entry_ptr = internal global ptr @nfsacld_proc_setacl._entry, section ".printk_index", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@fh_lock_nested._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.8, i32 364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014fh_lock: %pd2 already locked!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fh_lock_nested\00", [17 x i8] zeroinitializer }, align 32
@fh_lock_nested._entry_ptr = internal global ptr @fh_lock_nested._entry, section ".printk_index", align 4
@nfsacld_proc_getattr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.7, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfsd: GETATTR  %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nfsacld_proc_getattr\00", [43 x i8] zeroinitializer }, align 32
@nfsacld_proc_getattr._entry_ptr = internal global ptr @nfsacld_proc_getattr._entry, section ".printk_index", align 4
@nfsacld_proc_access._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.7, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nfsd: ACCESS(2acl)   %s 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nfsacld_proc_access\00", [44 x i8] zeroinitializer }, align 32
@nfsacld_proc_access._entry_ptr = internal global ptr @nfsacld_proc_access._entry, section ".printk_index", align 4
@___asan_gen_.17 = private unnamed_addr constant [21 x i8] c"nfsd_acl_procedures2\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 328, i32 35 }
@___asan_gen_.20 = private unnamed_addr constant [16 x i8] c"nfsd_acl_count2\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 385, i32 21 }
@___asan_gen_.23 = private unnamed_addr constant [18 x i8] c"nfsd_acl_version2\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 386, i32 26 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 337, i32 14 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 348, i32 14 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 359, i32 14 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 370, i32 14 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 381, i32 14 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 38, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 228, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 101, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [19 x i8] c"../fs/nfsd/nfsfh.h\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 363, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 154, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private constant [21 x i8] c"../fs/nfsd/nfs2acl.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 173, i32 2 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @fh_lock_nested._entry, ptr @fh_lock_nested._entry_ptr, ptr @nfsacld_proc_access._entry, ptr @nfsacld_proc_access._entry_ptr, ptr @nfsacld_proc_getacl._entry, ptr @nfsacld_proc_getacl._entry_ptr, ptr @nfsacld_proc_getattr._entry, ptr @nfsacld_proc_getattr._entry_ptr, ptr @nfsacld_proc_setacl._entry, ptr @nfsacld_proc_setacl._entry_ptr, ptr @nfsd_acl_procedures2, ptr @nfsd_acl_count2, ptr @nfsd_acl_version2, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_acl_procedures2 to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_acl_count2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_acl_version2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsacld_proc_getacl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsacld_proc_setacl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fh_lock_nested._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsacld_proc_getattr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsacld_proc_access._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_dispatch(ptr noundef, ptr noundef) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfsacld_proc_null(ptr nocapture noundef readnone %rqstp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfssvc_decode_voidarg(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfssvc_encode_voidres(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsacld_proc_getacl(ptr noundef %rqstp) #2 align 64 {
entry:
  %p.i = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %2 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_resp, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %4 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call ptr @SVCFH_fmt(ptr noundef %1) #7
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %call) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %fh6 = getelementptr inbounds %struct.nfsd3_getaclres, ptr %3, i32 0, i32 1
  %fh_dentry.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %fh_dentry.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fh_dentry.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %lor.rhs.i, label %do.end5.do.end.i_crit_edge

do.end5.do.end.i_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.rhs.i:                                        ; preds = %do.end5
  %fh_locked.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fh_locked.i, align 8, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not.i = icmp eq i8 %8, 0
  br i1 %tobool1.not.i, label %lor.rhs.i.fh_copy.exit_crit_edge, label %lor.rhs.i.do.end.i_crit_edge, !prof !54

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.rhs.i.fh_copy.exit_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fh_copy.exit

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %do.end5.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 228, i32 noundef 9, ptr noundef null) #7
  br label %fh_copy.exit

fh_copy.exit:                                     ; preds = %do.end.i, %lor.rhs.i.fh_copy.exit_crit_edge
  %9 = call ptr @memcpy(ptr %fh6, ptr %1, i32 360)
  %call10 = tail call i32 @fh_verify(ptr noundef %rqstp, ptr noundef %fh6, i16 noundef zeroext 0, i32 noundef 0) #7
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call10, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp.not = icmp eq i32 %call10, 0
  br i1 %cmp.not, label %if.end13, label %fh_copy.exit.out_crit_edge

fh_copy.exit.out_crit_edge:                       ; preds = %fh_copy.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end13:                                         ; preds = %fh_copy.exit
  %fh_dentry = getelementptr inbounds %struct.nfsd3_getaclres, ptr %3, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fh_dentry, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %d_inode.i, align 8
  %mask = getelementptr inbounds %struct.nfsd3_getaclargs, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mask, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %16)
  %tobool16.not = icmp ult i32 %16, 16
  br i1 %tobool16.not, label %if.end19, label %if.then17

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 22, ptr %3, align 8
  br label %out

if.end19:                                         ; preds = %if.end13
  %mask21 = getelementptr inbounds %struct.nfsd3_getaclres, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %mask21 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %16, ptr %mask21, align 8
  %stat = getelementptr inbounds %struct.nfsd3_getaclres, ptr %3, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p.i) #7
  %19 = getelementptr inbounds %struct.path, ptr %p.i, i32 0, i32 1
  %fh_export.i = getelementptr inbounds %struct.nfsd3_getaclres, ptr %3, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %fh_export.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fh_export.i, align 4
  %ex_path.i = getelementptr inbounds %struct.svc_export, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %ex_path.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ex_path.i, align 8
  %24 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %p.i, align 4
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %12, ptr %19, align 4
  %call.i = call i32 @vfs_getattr(ptr noundef nonnull %p.i, ptr noundef %stat, i32 noundef 2047, i32 noundef 0) #7
  %call2.i = call i32 @nfserrno(i32 noundef %call.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p.i) #7
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call2.i, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp25.not = icmp eq i32 %call2.i, 0
  br i1 %cmp25.not, label %if.end27, label %if.end19.out_crit_edge

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end27:                                         ; preds = %if.end19
  %27 = ptrtoint ptr %mask21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mask21, align 8
  %and29 = and i32 %28, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end27.if.end43_crit_edge, label %if.then31

if.end27.if.end43_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then31:                                        ; preds = %if.end27
  %call32 = call ptr @get_acl(ptr noundef %14, i32 noundef 32768) #7
  %cmp33 = icmp eq ptr %call32, null
  br i1 %cmp33, label %if.then34, label %if.then31.if.end36_crit_edge

if.then31.if.end36_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then34:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %14, align 8
  %call35 = call ptr @posix_acl_from_mode(i16 noundef zeroext %30, i32 noundef 3264) #7
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.then31.if.end36_crit_edge
  %acl.0 = phi ptr [ %call35, %if.then34 ], [ %call32, %if.then31.if.end36_crit_edge ]
  %cmp.i = icmp ugt ptr %acl.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end36.fail_crit_edge, label %if.end42

if.end36.fail_crit_edge:                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end42:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %acl_access = getelementptr inbounds %struct.nfsd3_getaclres, ptr %3, i32 0, i32 3
  %31 = ptrtoint ptr %acl_access to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %acl.0, ptr %acl_access, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.end27.if.end43_crit_edge
  %32 = ptrtoint ptr %mask21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mask21, align 8
  %and45 = and i32 %33, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end43.out_crit_edge, label %if.then47

if.end43.out_crit_edge:                           ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then47:                                        ; preds = %if.end43
  %call48 = call ptr @get_acl(ptr noundef %14, i32 noundef 16384) #7
  %cmp.i89 = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i89, label %if.then47.fail_crit_edge, label %if.end54

if.then47.fail_crit_edge:                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end54:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  %acl_default = getelementptr inbounds %struct.nfsd3_getaclres, ptr %3, i32 0, i32 4
  %34 = ptrtoint ptr %acl_default to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call48, ptr %acl_default, align 8
  br label %out

out:                                              ; preds = %do.end.i101, %if.then10.i.i.i.i99, %if.end5.i.i.i.i98.out_crit_edge, %posix_acl_release.exit.out_crit_edge, %if.end54, %if.end43.out_crit_edge, %if.end19.out_crit_edge, %if.then17, %fh_copy.exit.out_crit_edge
  ret i32 0

fail:                                             ; preds = %if.then47.fail_crit_edge, %if.end36.fail_crit_edge
  %call48.sink = phi ptr [ %acl.0, %if.end36.fail_crit_edge ], [ %call48, %if.then47.fail_crit_edge ]
  %35 = ptrtoint ptr %call48.sink to i32
  %call52 = call i32 @nfserrno(i32 noundef %35) #7
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call52, ptr %3, align 8
  %acl_access56 = getelementptr inbounds %struct.nfsd3_getaclres, ptr %3, i32 0, i32 3
  %37 = ptrtoint ptr %acl_access56 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %acl_access56, align 4
  %tobool.not.i90 = icmp eq ptr %38, null
  br i1 %tobool.not.i90, label %fail.posix_acl_release.exit_crit_edge, label %land.lhs.true.i

fail.posix_acl_release.exit_crit_edge:            ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #9
  br label %posix_acl_release.exit

land.lhs.true.i:                                  ; preds = %fail
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %38, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !55
  call void @llvm.prefetch.p0(ptr nonnull %38, i32 1, i32 3, i32 1) #7
  %39 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %38, ptr nonnull %38, i32 1, ptr nonnull elementtype(i32) %38) #7, !srcloc !56
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i91, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.posix_acl_release.exit_crit_edge, label %if.then10.i.i.i.i, !prof !54

if.end5.i.i.i.i.posix_acl_release.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %posix_acl_release.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef nonnull %38, i32 noundef 3) #7
  br label %posix_acl_release.exit

do.end.i91:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !57
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %38, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #7
  br label %posix_acl_release.exit

posix_acl_release.exit:                           ; preds = %do.end.i91, %if.then10.i.i.i.i, %if.end5.i.i.i.i.posix_acl_release.exit_crit_edge, %fail.posix_acl_release.exit_crit_edge
  %acl_default57 = getelementptr inbounds %struct.nfsd3_getaclres, ptr %3, i32 0, i32 4
  %40 = ptrtoint ptr %acl_default57 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %acl_default57, align 8
  %tobool.not.i92 = icmp eq ptr %41, null
  br i1 %tobool.not.i92, label %posix_acl_release.exit.out_crit_edge, label %land.lhs.true.i96

posix_acl_release.exit.out_crit_edge:             ; preds = %posix_acl_release.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

land.lhs.true.i96:                                ; preds = %posix_acl_release.exit
  %call.i.i.i.i.i.i93 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %41, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !55
  call void @llvm.prefetch.p0(ptr nonnull %41, i32 1, i32 3, i32 1) #7
  %42 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %41, ptr nonnull %41, i32 1, ptr nonnull elementtype(i32) %41) #7, !srcloc !56
  %asmresult.i.i.i.i.i.i.i94 = extractvalue { i32, i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i94)
  %cmp.i.i.i.i95 = icmp eq i32 %asmresult.i.i.i.i.i.i.i94, 1
  br i1 %cmp.i.i.i.i95, label %do.end.i101, label %if.end5.i.i.i.i98

if.end5.i.i.i.i98:                                ; preds = %land.lhs.true.i96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i94)
  %.not.i.i.i.i97 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i94, 0
  br i1 %.not.i.i.i.i97, label %if.end5.i.i.i.i98.out_crit_edge, label %if.then10.i.i.i.i99, !prof !54

if.end5.i.i.i.i98.out_crit_edge:                  ; preds = %if.end5.i.i.i.i98
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then10.i.i.i.i99:                              ; preds = %if.end5.i.i.i.i98
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef nonnull %41, i32 noundef 3) #7
  br label %out

do.end.i101:                                      ; preds = %land.lhs.true.i96
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !57
  %a_rcu.i100 = getelementptr inbounds %struct.posix_acl, ptr %41, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %a_rcu.i100, ptr noundef nonnull inttoptr (i32 4 to ptr)) #7
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nfsaclsvc_decode_getaclargs(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %call = tail call zeroext i1 @svcxdr_decode_fhandle(ptr noundef %xdr, ptr noundef %1) #7
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %xdr_stream_decode_u32.exit, !prof !58

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

xdr_stream_decode_u32.exit:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %mask = getelementptr inbounds %struct.nfsd3_getaclargs, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call.i, align 4
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %mask, align 4
  br label %cleanup

cleanup:                                          ; preds = %xdr_stream_decode_u32.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ true, %xdr_stream_decode_u32.exit ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nfsaclsvc_encode_getaclres(ptr noundef %rqstp, ptr noundef %xdr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %0 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_resp, align 4
  %fh = getelementptr inbounds %struct.nfsd3_getaclres, ptr %1, i32 0, i32 1
  %fh_dentry = getelementptr inbounds %struct.nfsd3_getaclres, ptr %1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fh_dentry, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 8
  %call = tail call zeroext i1 @svcxdr_encode_stat(ptr noundef %xdr, i32 noundef %5) #7
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i, align 8
  %cmp.i = icmp eq ptr %7, null
  br i1 %cmp.i, label %lor.lhs.false.cleanup_crit_edge, label %if.end3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %lor.lhs.false
  %stat = getelementptr inbounds %struct.nfsd3_getaclres, ptr %1, i32 0, i32 5
  %call6 = tail call zeroext i1 @svcxdr_encode_fattr(ptr noundef %rqstp, ptr noundef %xdr, ptr noundef %fh, ptr noundef %stat) #7
  br i1 %call6, label %if.end8, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %mask = getelementptr inbounds %struct.nfsd3_getaclres, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask, align 8
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end8.cleanup_crit_edge, label %if.end12, !prof !58

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %call.i, align 4
  %11 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mask, align 8
  %and = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end12.cond.end_crit_edge, label %cond.true

if.end12.cond.end_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %acl_access = getelementptr inbounds %struct.nfsd3_getaclres, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %acl_access to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %acl_access, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end12.cond.end_crit_edge
  %cond = phi ptr [ %14, %cond.true ], [ null, %if.end12.cond.end_crit_edge ]
  %and15 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %cond.end.cond.end19_crit_edge, label %cond.true17

cond.end.cond.end19_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end19

cond.true17:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %acl_default = getelementptr inbounds %struct.nfsd3_getaclres, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %acl_default to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %acl_default, align 8
  br label %cond.end19

cond.end19:                                       ; preds = %cond.true17, %cond.end.cond.end19_crit_edge
  %cond20 = phi ptr [ %16, %cond.true17 ], [ null, %cond.end.cond.end19_crit_edge ]
  %tobool.not.i65 = icmp eq ptr %cond, null
  br i1 %tobool.not.i65, label %cond.end19.cond.end.thread.i_crit_edge, label %cond.end.i

cond.end19.cond.end.thread.i_crit_edge:           ; preds = %cond.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.thread.i

cond.end.i:                                       ; preds = %cond.end19
  call void @__sanitizer_cov_trace_pc() #9
  %a_count.i = getelementptr inbounds %struct.posix_acl, ptr %cond, i32 0, i32 2
  %17 = ptrtoint ptr %a_count.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %a_count.i, align 4
  %19 = tail call i32 @llvm.smax.i32(i32 %18, i32 4) #7
  %phi.bo25.i = mul i32 %19, 12
  %phi.bo26.i = add i32 %phi.bo25.i, 16
  br label %cond.end.thread.i

cond.end.thread.i:                                ; preds = %cond.end.i, %cond.end19.cond.end.thread.i_crit_edge
  %20 = phi i32 [ 64, %cond.end19.cond.end.thread.i_crit_edge ], [ %phi.bo26.i, %cond.end.i ]
  %tobool5.not.i = icmp eq ptr %cond20, null
  br i1 %tobool5.not.i, label %cond.end.thread.i.nfsacl_size.exit_crit_edge, label %if.then.i

cond.end.thread.i.nfsacl_size.exit_crit_edge:     ; preds = %cond.end.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfsacl_size.exit

if.then.i:                                        ; preds = %cond.end.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  %a_count6.i = getelementptr inbounds %struct.posix_acl, ptr %cond20, i32 0, i32 2
  %21 = ptrtoint ptr %a_count6.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %a_count6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %22)
  %cmp8.i = icmp sgt i32 %22, 4
  %phi.bo.i = mul i32 %22, 12
  %cond12.i = select i1 %cmp8.i, i32 %phi.bo.i, i32 48
  %add14.i = add i32 %cond12.i, %20
  br label %nfsacl_size.exit

nfsacl_size.exit:                                 ; preds = %if.then.i, %cond.end.thread.i.nfsacl_size.exit_crit_edge
  %w.0.i = phi i32 [ %add14.i, %if.then.i ], [ %20, %cond.end.thread.i.nfsacl_size.exit_crit_edge ]
  %page_len = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 5
  %23 = ptrtoint ptr %page_len to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %w.0.i, ptr %page_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %w.0.i)
  %cmp2269 = icmp sgt i32 %w.0.i, 0
  br i1 %cmp2269, label %while.body.lr.ph, label %nfsacl_size.exit.while.end_crit_edge

nfsacl_size.exit.while.end_crit_edge:             ; preds = %nfsacl_size.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %nfsacl_size.exit
  %rq_next_page = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 22
  br label %while.body

while.cond:                                       ; preds = %while.body
  %sub = add nsw i32 %w.070, -4096
  %cmp22 = icmp sgt i32 %w.070, 4096
  br i1 %cmp22, label %while.cond.while.body_crit_edge, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.body.lr.ph
  %w.070 = phi i32 [ %w.0.i, %while.body.lr.ph ], [ %sub, %while.cond.while.body_crit_edge ]
  %24 = ptrtoint ptr %rq_next_page to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rq_next_page, align 8
  %incdec.ptr = getelementptr ptr, ptr %25, i32 1
  store ptr %incdec.ptr, ptr %rq_next_page, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %tobool23.not = icmp eq ptr %27, null
  br i1 %tobool23.not, label %while.body.cleanup_crit_edge, label %while.cond

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %nfsacl_size.exit.while.end_crit_edge
  %acl_access26 = getelementptr inbounds %struct.nfsd3_getaclres, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %acl_access26 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %acl_access26, align 4
  %30 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mask, align 8
  %and28 = and i32 %31, 1
  %call29 = tail call zeroext i1 @nfs_stream_encode_acl(ptr noundef %xdr, ptr noundef nonnull %7, ptr noundef %29, i32 noundef %and28, i32 noundef 0) #7
  br i1 %call29, label %if.end31, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end31:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %acl_default32 = getelementptr inbounds %struct.nfsd3_getaclres, ptr %1, i32 0, i32 4
  %32 = ptrtoint ptr %acl_default32 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %acl_default32, align 8
  %34 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mask, align 8
  %and34 = and i32 %35, 4
  %call35 = tail call zeroext i1 @nfs_stream_encode_acl(ptr noundef %xdr, ptr noundef nonnull %7, ptr noundef %33, i32 noundef %and34, i32 noundef 4096) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %while.end.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ true, %lor.lhs.false.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ], [ false, %if.end3.cleanup_crit_edge ], [ false, %while.end.cleanup_crit_edge ], [ %call35, %if.end31 ], [ false, %if.end8.cleanup_crit_edge ], [ true, %while.body.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfsaclsvc_release_getacl(ptr nocapture noundef readonly %rqstp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %0 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_resp, align 4
  %fh = getelementptr inbounds %struct.nfsd3_getaclres, ptr %1, i32 0, i32 1
  tail call void @fh_put(ptr noundef %fh) #7
  %acl_access = getelementptr inbounds %struct.nfsd3_getaclres, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %acl_access to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %acl_access, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.posix_acl_release.exit_crit_edge, label %land.lhs.true.i

entry.posix_acl_release.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %posix_acl_release.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %3, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !55
  tail call void @llvm.prefetch.p0(ptr nonnull %3, i32 1, i32 3, i32 1) #7
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %3, ptr nonnull %3, i32 1, ptr nonnull elementtype(i32) %3) #7, !srcloc !56
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.posix_acl_release.exit_crit_edge, label %if.then10.i.i.i.i, !prof !54

if.end5.i.i.i.i.posix_acl_release.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %posix_acl_release.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef nonnull %3, i32 noundef 3) #7
  br label %posix_acl_release.exit

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !57
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %3, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #7
  br label %posix_acl_release.exit

posix_acl_release.exit:                           ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.posix_acl_release.exit_crit_edge, %entry.posix_acl_release.exit_crit_edge
  %acl_default = getelementptr inbounds %struct.nfsd3_getaclres, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %acl_default to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %acl_default, align 8
  %tobool.not.i3 = icmp eq ptr %6, null
  br i1 %tobool.not.i3, label %posix_acl_release.exit.posix_acl_release.exit13_crit_edge, label %land.lhs.true.i7

posix_acl_release.exit.posix_acl_release.exit13_crit_edge: ; preds = %posix_acl_release.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %posix_acl_release.exit13

land.lhs.true.i7:                                 ; preds = %posix_acl_release.exit
  %call.i.i.i.i.i.i4 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %6, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !55
  tail call void @llvm.prefetch.p0(ptr nonnull %6, i32 1, i32 3, i32 1) #7
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %6, ptr nonnull %6, i32 1, ptr nonnull elementtype(i32) %6) #7, !srcloc !56
  %asmresult.i.i.i.i.i.i.i5 = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i5)
  %cmp.i.i.i.i6 = icmp eq i32 %asmresult.i.i.i.i.i.i.i5, 1
  br i1 %cmp.i.i.i.i6, label %do.end.i12, label %if.end5.i.i.i.i9

if.end5.i.i.i.i9:                                 ; preds = %land.lhs.true.i7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i5)
  %.not.i.i.i.i8 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i5, 0
  br i1 %.not.i.i.i.i8, label %if.end5.i.i.i.i9.posix_acl_release.exit13_crit_edge, label %if.then10.i.i.i.i10, !prof !54

if.end5.i.i.i.i9.posix_acl_release.exit13_crit_edge: ; preds = %if.end5.i.i.i.i9
  call void @__sanitizer_cov_trace_pc() #9
  br label %posix_acl_release.exit13

if.then10.i.i.i.i10:                              ; preds = %if.end5.i.i.i.i9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef nonnull %6, i32 noundef 3) #7
  br label %posix_acl_release.exit13

do.end.i12:                                       ; preds = %land.lhs.true.i7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !57
  %a_rcu.i11 = getelementptr inbounds %struct.posix_acl, ptr %6, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu.i11, ptr noundef nonnull inttoptr (i32 4 to ptr)) #7
  br label %posix_acl_release.exit13

posix_acl_release.exit13:                         ; preds = %do.end.i12, %if.then10.i.i.i.i10, %if.end5.i.i.i.i9.posix_acl_release.exit13_crit_edge, %posix_acl_release.exit.posix_acl_release.exit13_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsacld_proc_setacl(ptr noundef %rqstp) #2 align 64 {
entry:
  %p.i = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %2 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_resp, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %4 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call ptr @SVCFH_fmt(ptr noundef %1) #7
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %call) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %fh6 = getelementptr inbounds %struct.nfsd_attrstat, ptr %3, i32 0, i32 1
  %fh_dentry.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %fh_dentry.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fh_dentry.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %lor.rhs.i, label %do.end5.do.end.i_crit_edge

do.end5.do.end.i_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.rhs.i:                                        ; preds = %do.end5
  %fh_locked.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fh_locked.i, align 8, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not.i = icmp eq i8 %8, 0
  br i1 %tobool1.not.i, label %lor.rhs.i.fh_copy.exit_crit_edge, label %lor.rhs.i.do.end.i_crit_edge, !prof !54

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.rhs.i.fh_copy.exit_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fh_copy.exit

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %do.end5.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 228, i32 noundef 9, ptr noundef null) #7
  br label %fh_copy.exit

fh_copy.exit:                                     ; preds = %do.end.i, %lor.rhs.i.fh_copy.exit_crit_edge
  %9 = call ptr @memcpy(ptr %fh6, ptr %1, i32 360)
  %call10 = tail call i32 @fh_verify(ptr noundef %rqstp, ptr noundef %fh6, i16 noundef zeroext 0, i32 noundef 8) #7
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call10, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp.not = icmp eq i32 %call10, 0
  br i1 %cmp.not, label %if.end13, label %fh_copy.exit.out_crit_edge

fh_copy.exit.out_crit_edge:                       ; preds = %fh_copy.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end13:                                         ; preds = %fh_copy.exit
  %fh_dentry = getelementptr inbounds %struct.nfsd_attrstat, ptr %3, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fh_dentry, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %d_inode.i, align 8
  %fh_want_write.i = getelementptr inbounds %struct.nfsd_attrstat, ptr %3, i32 0, i32 1, i32 5
  %15 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %fh_want_write.i, align 1, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i57 = icmp eq i8 %16, 0
  br i1 %tobool.not.i57, label %if.end.i, label %if.end13.if.end18_crit_edge

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.end.i:                                         ; preds = %if.end13
  %fh_export.i = getelementptr inbounds %struct.nfsd_attrstat, ptr %3, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %fh_export.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fh_export.i, align 4
  %ex_path.i = getelementptr inbounds %struct.svc_export, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %ex_path.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ex_path.i, align 8
  %call.i = tail call i32 @mnt_want_write(ptr noundef %20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i58 = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i58, label %if.then2.i, label %if.end.i.out_errno_crit_edge

if.end.i.out_errno_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_errno

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %fh_want_write.i, align 1
  br label %if.end18

if.end18:                                         ; preds = %if.then2.i, %if.end13.if.end18_crit_edge
  %22 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fh_dentry, align 8
  %tobool.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !58

do.body4.i.i:                                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfsd/nfsfh.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 360, 0\0A.popsection", ""() #7, !srcloc !59
  unreachable

do.end9.i.i:                                      ; preds = %if.end18
  %fh_locked.i.i = getelementptr inbounds %struct.nfsd_attrstat, ptr %3, i32 0, i32 1, i32 4
  %24 = ptrtoint ptr %fh_locked.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %fh_locked.i.i, align 8, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool10.not.i.i = icmp eq i8 %25, 0
  br i1 %tobool10.not.i.i, label %if.end15.i.i, label %do.end14.i.i

do.end14.i.i:                                     ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull %23) #10
  br label %fh_lock.exit

if.end15.i.i:                                     ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %23, i32 0, i32 5
  %26 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %d_inode.i.i.i, align 8
  %i_rwsem.i.i.i = getelementptr inbounds %struct.inode, ptr %27, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i.i.i, i32 noundef 0) #7
  tail call void @fh_fill_pre_attrs(ptr noundef %fh6) #7
  %28 = ptrtoint ptr %fh_locked.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %fh_locked.i.i, align 8
  br label %fh_lock.exit

fh_lock.exit:                                     ; preds = %if.end15.i.i, %do.end14.i.i
  %acl_access = getelementptr inbounds %struct.nfsd3_setaclargs, ptr %1, i32 0, i32 2
  %29 = ptrtoint ptr %acl_access to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %acl_access, align 4
  %call19 = tail call i32 @set_posix_acl(ptr noundef nonnull @init_user_ns, ptr noundef %14, i32 noundef 32768, ptr noundef %30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %fh_lock.exit.out_drop_lock_crit_edge

fh_lock.exit.out_drop_lock_crit_edge:             ; preds = %fh_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_drop_lock

if.end22:                                         ; preds = %fh_lock.exit
  %acl_default = getelementptr inbounds %struct.nfsd3_setaclargs, ptr %1, i32 0, i32 3
  %31 = ptrtoint ptr %acl_default to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %acl_default, align 8
  %call23 = tail call i32 @set_posix_acl(ptr noundef nonnull @init_user_ns, ptr noundef %14, i32 noundef 16384, ptr noundef %32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.out_drop_lock_crit_edge

if.end22.out_drop_lock_crit_edge:                 ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_drop_lock

if.end26:                                         ; preds = %if.end22
  %33 = ptrtoint ptr %fh_locked.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %fh_locked.i.i, align 8, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i60 = icmp eq i8 %34, 0
  br i1 %tobool.not.i60, label %if.end26.fh_unlock.exit_crit_edge, label %if.then.i

if.end26.fh_unlock.exit_crit_edge:                ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %fh_unlock.exit

if.then.i:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @fh_fill_post_attrs(ptr noundef %fh6) #7
  %35 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fh_dentry, align 8
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %38, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i.i) #7
  %39 = ptrtoint ptr %fh_locked.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %fh_locked.i.i, align 8
  br label %fh_unlock.exit

fh_unlock.exit:                                   ; preds = %if.then.i, %if.end26.fh_unlock.exit_crit_edge
  %40 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %fh_want_write.i, align 1, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i64 = icmp eq i8 %41, 0
  br i1 %tobool.not.i64, label %fh_unlock.exit.fh_drop_write.exit_crit_edge, label %if.then.i67

fh_unlock.exit.fh_drop_write.exit_crit_edge:      ; preds = %fh_unlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %fh_drop_write.exit

if.then.i67:                                      ; preds = %fh_unlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %fh_want_write.i, align 1
  %fh_export.i65 = getelementptr inbounds %struct.nfsd_attrstat, ptr %3, i32 0, i32 1, i32 3
  %43 = ptrtoint ptr %fh_export.i65 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fh_export.i65, align 4
  %ex_path.i66 = getelementptr inbounds %struct.svc_export, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %ex_path.i66 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ex_path.i66, align 8
  tail call void @mnt_drop_write(ptr noundef %46) #7
  br label %fh_drop_write.exit

fh_drop_write.exit:                               ; preds = %if.then.i67, %fh_unlock.exit.fh_drop_write.exit_crit_edge
  %stat = getelementptr inbounds %struct.nfsd_attrstat, ptr %3, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p.i) #7
  %47 = getelementptr inbounds %struct.path, ptr %p.i, i32 0, i32 1
  %fh_export.i69 = getelementptr inbounds %struct.nfsd_attrstat, ptr %3, i32 0, i32 1, i32 3
  %48 = ptrtoint ptr %fh_export.i69 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fh_export.i69, align 4
  %ex_path.i70 = getelementptr inbounds %struct.svc_export, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %ex_path.i70 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ex_path.i70, align 8
  %52 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %p.i, align 4
  %53 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fh_dentry, align 8
  %55 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %47, align 4
  %call.i72 = call i32 @vfs_getattr(ptr noundef nonnull %p.i, ptr noundef %stat, i32 noundef 2047, i32 noundef 0) #7
  %call2.i = call i32 @nfserrno(i32 noundef %call.i72) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p.i) #7
  br label %out.sink.split

out.sink.split:                                   ; preds = %out_errno, %fh_drop_write.exit
  %call31.sink = phi i32 [ %call31, %out_errno ], [ %call2.i, %fh_drop_write.exit ]
  %56 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call31.sink, ptr %3, align 8
  br label %out

out:                                              ; preds = %out.sink.split, %fh_copy.exit.out_crit_edge
  %acl_access29 = getelementptr inbounds %struct.nfsd3_setaclargs, ptr %1, i32 0, i32 2
  %57 = ptrtoint ptr %acl_access29 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %acl_access29, align 4
  %tobool.not.i73 = icmp eq ptr %58, null
  br i1 %tobool.not.i73, label %out.posix_acl_release.exit_crit_edge, label %land.lhs.true.i

out.posix_acl_release.exit_crit_edge:             ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %posix_acl_release.exit

land.lhs.true.i:                                  ; preds = %out
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %58, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !55
  call void @llvm.prefetch.p0(ptr nonnull %58, i32 1, i32 3, i32 1) #7
  %59 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %58, ptr nonnull %58, i32 1, ptr nonnull elementtype(i32) %58) #7, !srcloc !56
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %59, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i74, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.posix_acl_release.exit_crit_edge, label %if.then10.i.i.i.i, !prof !54

if.end5.i.i.i.i.posix_acl_release.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %posix_acl_release.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef nonnull %58, i32 noundef 3) #7
  br label %posix_acl_release.exit

do.end.i74:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !57
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %58, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #7
  br label %posix_acl_release.exit

posix_acl_release.exit:                           ; preds = %do.end.i74, %if.then10.i.i.i.i, %if.end5.i.i.i.i.posix_acl_release.exit_crit_edge, %out.posix_acl_release.exit_crit_edge
  %acl_default30 = getelementptr inbounds %struct.nfsd3_setaclargs, ptr %1, i32 0, i32 3
  %60 = ptrtoint ptr %acl_default30 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %acl_default30, align 8
  %tobool.not.i75 = icmp eq ptr %61, null
  br i1 %tobool.not.i75, label %posix_acl_release.exit.posix_acl_release.exit85_crit_edge, label %land.lhs.true.i79

posix_acl_release.exit.posix_acl_release.exit85_crit_edge: ; preds = %posix_acl_release.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %posix_acl_release.exit85

land.lhs.true.i79:                                ; preds = %posix_acl_release.exit
  %call.i.i.i.i.i.i76 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %61, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !55
  call void @llvm.prefetch.p0(ptr nonnull %61, i32 1, i32 3, i32 1) #7
  %62 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %61, ptr nonnull %61, i32 1, ptr nonnull elementtype(i32) %61) #7, !srcloc !56
  %asmresult.i.i.i.i.i.i.i77 = extractvalue { i32, i32, i32 } %62, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i77)
  %cmp.i.i.i.i78 = icmp eq i32 %asmresult.i.i.i.i.i.i.i77, 1
  br i1 %cmp.i.i.i.i78, label %do.end.i84, label %if.end5.i.i.i.i81

if.end5.i.i.i.i81:                                ; preds = %land.lhs.true.i79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i77)
  %.not.i.i.i.i80 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i77, 0
  br i1 %.not.i.i.i.i80, label %if.end5.i.i.i.i81.posix_acl_release.exit85_crit_edge, label %if.then10.i.i.i.i82, !prof !54

if.end5.i.i.i.i81.posix_acl_release.exit85_crit_edge: ; preds = %if.end5.i.i.i.i81
  call void @__sanitizer_cov_trace_pc() #9
  br label %posix_acl_release.exit85

if.then10.i.i.i.i82:                              ; preds = %if.end5.i.i.i.i81
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef nonnull %61, i32 noundef 3) #7
  br label %posix_acl_release.exit85

do.end.i84:                                       ; preds = %land.lhs.true.i79
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !57
  %a_rcu.i83 = getelementptr inbounds %struct.posix_acl, ptr %61, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %a_rcu.i83, ptr noundef nonnull inttoptr (i32 4 to ptr)) #7
  br label %posix_acl_release.exit85

posix_acl_release.exit85:                         ; preds = %do.end.i84, %if.then10.i.i.i.i82, %if.end5.i.i.i.i81.posix_acl_release.exit85_crit_edge, %posix_acl_release.exit.posix_acl_release.exit85_crit_edge
  ret i32 0

out_drop_lock:                                    ; preds = %if.end22.out_drop_lock_crit_edge, %fh_lock.exit.out_drop_lock_crit_edge
  %error.0 = phi i32 [ %call19, %fh_lock.exit.out_drop_lock_crit_edge ], [ %call23, %if.end22.out_drop_lock_crit_edge ]
  %63 = ptrtoint ptr %fh_locked.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %fh_locked.i.i, align 8, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i87 = icmp eq i8 %64, 0
  br i1 %tobool.not.i87, label %out_drop_lock.fh_unlock.exit93_crit_edge, label %if.then.i91

out_drop_lock.fh_unlock.exit93_crit_edge:         ; preds = %out_drop_lock
  call void @__sanitizer_cov_trace_pc() #9
  br label %fh_unlock.exit93

if.then.i91:                                      ; preds = %out_drop_lock
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @fh_fill_post_attrs(ptr noundef %fh6) #7
  %65 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fh_dentry, align 8
  %d_inode.i.i89 = getelementptr inbounds %struct.dentry, ptr %66, i32 0, i32 5
  %67 = ptrtoint ptr %d_inode.i.i89 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %d_inode.i.i89, align 8
  %i_rwsem.i.i90 = getelementptr inbounds %struct.inode, ptr %68, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i.i90) #7
  %69 = ptrtoint ptr %fh_locked.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %fh_locked.i.i, align 8
  br label %fh_unlock.exit93

fh_unlock.exit93:                                 ; preds = %if.then.i91, %out_drop_lock.fh_unlock.exit93_crit_edge
  %70 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %fh_want_write.i, align 1, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not.i95 = icmp eq i8 %71, 0
  br i1 %tobool.not.i95, label %fh_unlock.exit93.out_errno_crit_edge, label %if.then.i98

fh_unlock.exit93.out_errno_crit_edge:             ; preds = %fh_unlock.exit93
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_errno

if.then.i98:                                      ; preds = %fh_unlock.exit93
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %fh_want_write.i, align 1
  %fh_export.i96 = getelementptr inbounds %struct.nfsd_attrstat, ptr %3, i32 0, i32 1, i32 3
  %73 = ptrtoint ptr %fh_export.i96 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %fh_export.i96, align 4
  %ex_path.i97 = getelementptr inbounds %struct.svc_export, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %ex_path.i97 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ex_path.i97, align 8
  tail call void @mnt_drop_write(ptr noundef %76) #7
  br label %out_errno

out_errno:                                        ; preds = %if.then.i98, %fh_unlock.exit93.out_errno_crit_edge, %if.end.i.out_errno_crit_edge
  %error.1 = phi i32 [ %call.i, %if.end.i.out_errno_crit_edge ], [ %error.0, %fh_unlock.exit93.out_errno_crit_edge ], [ %error.0, %if.then.i98 ]
  %call31 = tail call i32 @nfserrno(i32 noundef %error.1) #7
  br label %out.sink.split
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nfsaclsvc_decode_setaclargs(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %call = tail call zeroext i1 @svcxdr_decode_fhandle(ptr noundef %xdr, ptr noundef %1) #7
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mask = getelementptr inbounds %struct.nfsd3_setaclargs, ptr %1, i32 0, i32 1
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end3, !prof !58

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call.i, align 4
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %tobool.not = icmp ult i32 %3, 16
  br i1 %tobool.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %and8 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %acl_access = getelementptr inbounds %struct.nfsd3_setaclargs, ptr %1, i32 0, i32 2
  %spec.select = select i1 %tobool9.not, ptr null, ptr %acl_access
  %call10 = tail call zeroext i1 @nfs_stream_decode_acl(ptr noundef %xdr, ptr noundef null, ptr noundef %spec.select) #7
  br i1 %call10, label %if.end12, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mask, align 8
  %and14 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %acl_default = getelementptr inbounds %struct.nfsd3_setaclargs, ptr %1, i32 0, i32 3
  %spec.select32 = select i1 %tobool15.not, ptr null, ptr %acl_default
  %call20 = tail call zeroext i1 @nfs_stream_decode_acl(ptr noundef %xdr, ptr noundef null, ptr noundef %spec.select32) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.end3.cleanup_crit_edge ], [ false, %if.end6.cleanup_crit_edge ], [ %call20, %if.end12 ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfssvc_encode_attrstatres(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfssvc_release_attrstat(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsacld_proc_getattr(ptr noundef %rqstp) #2 align 64 {
entry:
  %p.i = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %2 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_resp, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %4 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call ptr @SVCFH_fmt(ptr noundef %1) #7
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %call) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %fh5 = getelementptr inbounds %struct.nfsd_attrstat, ptr %3, i32 0, i32 1
  %fh_dentry.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %fh_dentry.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fh_dentry.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %lor.rhs.i, label %do.end4.do.end.i_crit_edge

do.end4.do.end.i_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.rhs.i:                                        ; preds = %do.end4
  %fh_locked.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fh_locked.i, align 8, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not.i = icmp eq i8 %8, 0
  br i1 %tobool1.not.i, label %lor.rhs.i.fh_copy.exit_crit_edge, label %lor.rhs.i.do.end.i_crit_edge, !prof !54

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.rhs.i.fh_copy.exit_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fh_copy.exit

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %do.end4.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 228, i32 noundef 9, ptr noundef null) #7
  br label %fh_copy.exit

fh_copy.exit:                                     ; preds = %do.end.i, %lor.rhs.i.fh_copy.exit_crit_edge
  %9 = call ptr @memcpy(ptr %fh5, ptr %1, i32 360)
  %call9 = tail call i32 @fh_verify(ptr noundef %rqstp, ptr noundef %fh5, i16 noundef zeroext 0, i32 noundef 0) #7
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call9, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp.not = icmp eq i32 %call9, 0
  br i1 %cmp.not, label %if.end12, label %fh_copy.exit.out_crit_edge

fh_copy.exit.out_crit_edge:                       ; preds = %fh_copy.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end12:                                         ; preds = %fh_copy.exit
  call void @__sanitizer_cov_trace_pc() #9
  %stat = getelementptr inbounds %struct.nfsd_attrstat, ptr %3, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p.i) #7
  %11 = getelementptr inbounds %struct.path, ptr %p.i, i32 0, i32 1
  %fh_export.i = getelementptr inbounds %struct.nfsd_attrstat, ptr %3, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %fh_export.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fh_export.i, align 4
  %ex_path.i = getelementptr inbounds %struct.svc_export, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %ex_path.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ex_path.i, align 8
  %16 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %p.i, align 4
  %fh_dentry.i25 = getelementptr inbounds %struct.nfsd_attrstat, ptr %3, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %fh_dentry.i25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fh_dentry.i25, align 8
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %11, align 4
  %call.i = call i32 @vfs_getattr(ptr noundef nonnull %p.i, ptr noundef %stat, i32 noundef 2047, i32 noundef 0) #7
  %call2.i = call i32 @nfserrno(i32 noundef %call.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p.i) #7
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call2.i, ptr %3, align 8
  br label %out

out:                                              ; preds = %if.end12, %fh_copy.exit.out_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfssvc_decode_fhandleargs(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsacld_proc_access(ptr noundef %rqstp) #2 align 64 {
entry:
  %p.i = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %2 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_resp, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %4 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call ptr @SVCFH_fmt(ptr noundef %1) #7
  %access = getelementptr inbounds %struct.nfsd3_accessargs, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %access, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %call, i32 noundef %6) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %fh5 = getelementptr inbounds %struct.nfsd3_accessres, ptr %3, i32 0, i32 1
  %fh_dentry.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %fh_dentry.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fh_dentry.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %lor.rhs.i, label %do.end4.do.end.i_crit_edge

do.end4.do.end.i_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.rhs.i:                                        ; preds = %do.end4
  %fh_locked.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %fh_locked.i, align 8, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool1.not.i = icmp eq i8 %10, 0
  br i1 %tobool1.not.i, label %lor.rhs.i.fh_copy.exit_crit_edge, label %lor.rhs.i.do.end.i_crit_edge, !prof !54

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.rhs.i.fh_copy.exit_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fh_copy.exit

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %do.end4.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 228, i32 noundef 9, ptr noundef null) #7
  br label %fh_copy.exit

fh_copy.exit:                                     ; preds = %do.end.i, %lor.rhs.i.fh_copy.exit_crit_edge
  %11 = call ptr @memcpy(ptr %fh5, ptr %1, i32 360)
  %access8 = getelementptr inbounds %struct.nfsd3_accessargs, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %access8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %access8, align 8
  %access9 = getelementptr inbounds %struct.nfsd3_accessres, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %access9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %access9, align 8
  %call12 = tail call i32 @nfsd_access(ptr noundef %rqstp, ptr noundef %fh5, ptr noundef %access9, ptr noundef null) #7
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call12, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp.not = icmp eq i32 %call12, 0
  br i1 %cmp.not, label %if.end15, label %fh_copy.exit.out_crit_edge

fh_copy.exit.out_crit_edge:                       ; preds = %fh_copy.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end15:                                         ; preds = %fh_copy.exit
  call void @__sanitizer_cov_trace_pc() #9
  %stat = getelementptr inbounds %struct.nfsd3_accessres, ptr %3, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p.i) #7
  %16 = getelementptr inbounds %struct.path, ptr %p.i, i32 0, i32 1
  %fh_export.i = getelementptr inbounds %struct.nfsd3_accessres, ptr %3, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %fh_export.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fh_export.i, align 4
  %ex_path.i = getelementptr inbounds %struct.svc_export, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %ex_path.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ex_path.i, align 8
  %21 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %p.i, align 4
  %fh_dentry.i32 = getelementptr inbounds %struct.nfsd3_accessres, ptr %3, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %fh_dentry.i32 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fh_dentry.i32, align 8
  %24 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %16, align 4
  %call.i = call i32 @vfs_getattr(ptr noundef nonnull %p.i, ptr noundef %stat, i32 noundef 2047, i32 noundef 0) #7
  %call2.i = call i32 @nfserrno(i32 noundef %call.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p.i) #7
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call2.i, ptr %3, align 8
  br label %out

out:                                              ; preds = %if.end15, %fh_copy.exit.out_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nfsaclsvc_decode_accessargs(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %call = tail call zeroext i1 @svcxdr_decode_fhandle(ptr noundef %xdr, ptr noundef %1) #7
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %xdr_stream_decode_u32.exit, !prof !58

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

xdr_stream_decode_u32.exit:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %access = getelementptr inbounds %struct.nfsd3_accessargs, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call.i, align 4
  %4 = ptrtoint ptr %access to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %access, align 4
  br label %cleanup

cleanup:                                          ; preds = %xdr_stream_decode_u32.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ true, %xdr_stream_decode_u32.exit ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nfsaclsvc_encode_accessres(ptr noundef %rqstp, ptr noundef %xdr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %0 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_resp, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %call = tail call zeroext i1 @svcxdr_encode_stat(ptr noundef %xdr, i32 noundef %3) #7
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cond = icmp eq i32 %5, 0
  br i1 %cond, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %fh = getelementptr inbounds %struct.nfsd3_accessres, ptr %1, i32 0, i32 1
  %stat = getelementptr inbounds %struct.nfsd3_accessres, ptr %1, i32 0, i32 3
  %call2 = tail call zeroext i1 @svcxdr_encode_fattr(ptr noundef %rqstp, ptr noundef %xdr, ptr noundef %fh, ptr noundef %stat) #7
  br i1 %call2, label %if.end4, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %sw.bb
  %access = getelementptr inbounds %struct.nfsd3_accessres, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %access, align 8
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end4.cleanup_crit_edge, label %xdr_stream_encode_u32.exit, !prof !58

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

xdr_stream_encode_u32.exit:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %call.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %xdr_stream_encode_u32.exit, %if.end4.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %sw.bb.cleanup_crit_edge ], [ true, %xdr_stream_encode_u32.exit ], [ true, %if.end.cleanup_crit_edge ], [ false, %if.end4.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfsaclsvc_release_access(ptr nocapture noundef readonly %rqstp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %0 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_resp, align 4
  %fh = getelementptr inbounds %struct.nfsd3_accessres, ptr %1, i32 0, i32 1
  tail call void @fh_put(ptr noundef %fh) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @SVCFH_fmt(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fh_verify(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_acl(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @posix_acl_from_mode(i16 noundef zeroext, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfserrno(i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_getattr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @svcxdr_decode_fhandle(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_inline_decode(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @svcxdr_encode_stat(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @svcxdr_encode_fattr(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs_stream_encode_acl(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_reserve_space(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @fh_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_posix_acl(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_want_write(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @fh_fill_pre_attrs(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @fh_fill_post_attrs(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_drop_write(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs_stream_decode_acl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_access(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @nfsd_acl_version2, !1, !"nfsd_acl_version2", i1 false, i1 false}
!1 = !{!"../fs/nfsd/nfs2acl.c", i32 386, i32 26}
!2 = !{ptr @nfsd_acl_count2, !3, !"nfsd_acl_count2", i1 false, i1 false}
!3 = !{!"../fs/nfsd/nfs2acl.c", i32 385, i32 21}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/nfsd/nfs2acl.c", i32 337, i32 14}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/nfsd/nfs2acl.c", i32 348, i32 14}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/nfsd/nfs2acl.c", i32 359, i32 14}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/nfsd/nfs2acl.c", i32 370, i32 14}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/nfsd/nfs2acl.c", i32 381, i32 14}
!14 = !{ptr @nfsd_acl_procedures2, !15, !"nfsd_acl_procedures2", i1 false, i1 false}
!15 = !{!"../fs/nfsd/nfs2acl.c", i32 328, i32 35}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/nfsd/nfs2acl.c", i32 38, i32 2}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @nfsacld_proc_getacl._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @nfsacld_proc_getacl._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/nfsd/nfsfh.h", i32 228, i32 2}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/nfsd/nfs2acl.c", i32 101, i32 2}
!26 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @nfsacld_proc_setacl._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @nfsacld_proc_setacl._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/nfsd/nfsfh.h", i32 363, i32 3}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @fh_lock_nested._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @fh_lock_nested._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/nfsd/nfs2acl.c", i32 154, i32 2}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @nfsacld_proc_getattr._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @nfsacld_proc_getattr._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/nfsd/nfs2acl.c", i32 173, i32 2}
!41 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @nfsacld_proc_access._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @nfsacld_proc_access._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{i8 0, i8 2}
!54 = !{!"branch_weights", i32 2000, i32 1}
!55 = !{i64 2148427554}
!56 = !{i64 2148341994, i64 2148342026, i64 2148342055, i64 2148342089, i64 2148342120, i64 2148342143}
!57 = !{i64 2149734257}
!58 = !{!"branch_weights", i32 1, i32 2000}
!59 = !{i64 2157402088, i64 2157402568, i64 2157402125, i64 2157402181, i64 2157402215, i64 2157402239, i64 2157402280, i64 2157402301, i64 2157402329, i64 2157402363}
