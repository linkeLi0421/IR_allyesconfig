; ModuleID = '/llk/IR_all_yes/fs/nfsd/nfs3proc.c_pt.bc'
source_filename = "../fs/nfsd/nfs3proc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.svc_procedure = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.svc_version = type { i32, i32, ptr, ptr, i32, i8, i8, i8, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.svc_rqst = type { %struct.list_head, %struct.callback_head, ptr, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, ptr, ptr, %struct.svc_cred, ptr, ptr, i32, %struct.xdr_buf, %struct.xdr_stream, %struct.xdr_stream, ptr, %struct.xdr_buf, [260 x ptr], ptr, ptr, ptr, %struct.pagevec, [259 x %struct.kvec], [259 x %struct.bio_vec], i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i64, %struct.cache_req, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.133 }
%union.anon.133 = type { ptr, [124 x i8] }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cache_req = type { ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nfsd3_attrstat = type { i32, %struct.svc_fh, %struct.kstat }
%struct.svc_fh = type { %struct.knfsd_fh, i32, ptr, ptr, i8, i8, i8, i8, i32, i8, i8, i64, %struct.timespec64, %struct.timespec64, i64, %struct.kstat, i64 }
%struct.knfsd_fh = type { i32, %union.anon.156 }
%union.anon.156 = type { %struct.anon.157, [124 x i8] }
%struct.anon.157 = type { i8, i8, i8, i8, [0 x i32] }
%struct.timespec64 = type { i64, i32 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.svc_export = type { %struct.cache_head, ptr, i32, %struct.path, %struct.kuid_t, %struct.kgid_t, i32, ptr, %struct.nfsd4_fs_locations, i32, [8 x %struct.exp_flavor_info], i32, ptr, ptr, %struct.callback_head, %struct.export_stats }
%struct.cache_head = type { %struct.hlist_node, i64, i64, %struct.kref, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nfsd4_fs_locations = type { i32, ptr, i32 }
%struct.exp_flavor_info = type { i32, i32 }
%struct.export_stats = type { i64, [3 x %struct.percpu_counter] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.nfsd3_sattrargs = type { %struct.svc_fh, %struct.iattr, i32, i64 }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.nfsd3_diropargs = type { %struct.svc_fh, ptr, i32 }
%struct.nfsd3_diropres = type { i32, %struct.svc_fh, %struct.svc_fh }
%struct.nfsd3_accessargs = type { %struct.svc_fh, i32 }
%struct.nfsd3_accessres = type { i32, %struct.svc_fh, i32, %struct.kstat }
%struct.nfsd3_readlinkres = type { i32, %struct.svc_fh, i32, ptr }
%struct.nfsd3_readargs = type { %struct.svc_fh, i64, i32 }
%struct.nfsd3_readres = type { i32, %struct.svc_fh, i32, i32, ptr }
%struct.nfsd3_writeargs = type { %struct.svc_fh, i64, i32, i32, i32, %struct.xdr_buf }
%struct.nfsd3_writeres = type { i32, %struct.svc_fh, i32, i32, [2 x i32] }
%struct.nfsd3_createargs = type { %struct.svc_fh, ptr, i32, i32, %struct.iattr, ptr }
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.137, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.138, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.139, ptr, %struct.address_space, %struct.list_head, %union.anon.140, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.137 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.138 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.139 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.140 = type { ptr }
%struct.nfsd3_symlinkargs = type { %struct.svc_fh, ptr, i32, ptr, i32, %struct.iattr, %struct.kvec }
%struct.nfsd3_mknodargs = type { %struct.svc_fh, ptr, i32, i32, i32, i32, %struct.iattr }
%struct.nfsd3_renameargs = type { %struct.svc_fh, ptr, i32, %struct.svc_fh, ptr, i32 }
%struct.nfsd3_renameres = type { i32, %struct.svc_fh, %struct.svc_fh }
%struct.nfsd3_linkargs = type { %struct.svc_fh, %struct.svc_fh, ptr, i32 }
%struct.nfsd3_linkres = type { i32, %struct.svc_fh, %struct.svc_fh }
%struct.nfsd3_readdirargs = type { %struct.svc_fh, i64, i32, ptr }
%struct.nfsd3_readdirres = type { i32, %struct.svc_fh, [2 x i32], %struct.xdr_stream, %struct.xdr_buf, %struct.svc_fh, %struct.readdir_cd, i32, ptr }
%struct.readdir_cd = type { i32 }
%struct.nfsd3_fsstatres = type { i32, %struct.kstatfs, i32 }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }
%struct.nfsd3_fsinfores = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }
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
%struct.nfsd3_pathconfres = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.nfsd3_commitargs = type { %struct.svc_fh, i64, i32 }
%struct.nfsd3_commitres = type { i32, %struct.svc_fh, [2 x i32] }

@nfsd_procedures3 = internal constant { [22 x %struct.svc_procedure], [200 x i8] } { [22 x %struct.svc_procedure] [%struct.svc_procedure { ptr @nfsd3_proc_null, ptr @nfssvc_decode_voidarg, ptr @nfssvc_encode_voidres, ptr null, i32 0, i32 0, i32 0, i32 1, ptr @.str }, %struct.svc_procedure { ptr @nfsd3_proc_getattr, ptr @nfs3svc_decode_fhandleargs, ptr @nfs3svc_encode_getattrres, ptr @nfs3svc_release_fhandle, i32 360, i32 512, i32 0, i32 22, ptr @.str.1 }, %struct.svc_procedure { ptr @nfsd3_proc_setattr, ptr @nfs3svc_decode_sattrargs, ptr @nfs3svc_encode_wccstat, ptr @nfs3svc_release_fhandle, i32 456, i32 512, i32 2, i32 30, ptr @.str.2 }, %struct.svc_procedure { ptr @nfsd3_proc_lookup, ptr @nfs3svc_decode_diropargs, ptr @nfs3svc_encode_lookupres, ptr @nfs3svc_release_fhandle2, i32 368, i32 728, i32 0, i32 62, ptr @.str.3 }, %struct.svc_procedure { ptr @nfsd3_proc_access, ptr @nfs3svc_decode_accessargs, ptr @nfs3svc_encode_accessres, ptr @nfs3svc_release_fhandle, i32 368, i32 520, i32 0, i32 24, ptr @.str.4 }, %struct.svc_procedure { ptr @nfsd3_proc_readlink, ptr @nfs3svc_decode_fhandleargs, ptr @nfs3svc_encode_readlinkres, ptr @nfs3svc_release_fhandle, i32 360, i32 376, i32 0, i32 1048, ptr @.str.5 }, %struct.svc_procedure { ptr @nfsd3_proc_read, ptr @nfs3svc_decode_readargs, ptr @nfs3svc_encode_readres, ptr @nfs3svc_release_fhandle, i32 376, i32 384, i32 0, i32 262171, ptr @.str.6 }, %struct.svc_procedure { ptr @nfsd3_proc_write, ptr @nfs3svc_decode_writeargs, ptr @nfs3svc_encode_writeres, ptr @nfs3svc_release_fhandle, i32 424, i32 384, i32 2, i32 34, ptr @.str.7 }, %struct.svc_procedure { ptr @nfsd3_proc_create, ptr @nfs3svc_decode_createargs, ptr @nfs3svc_encode_createres, ptr @nfs3svc_release_fhandle2, i32 464, i32 728, i32 2, i32 70, ptr @.str.8 }, %struct.svc_procedure { ptr @nfsd3_proc_mkdir, ptr @nfs3svc_decode_mkdirargs, ptr @nfs3svc_encode_createres, ptr @nfs3svc_release_fhandle2, i32 464, i32 728, i32 2, i32 70, ptr @.str.9 }, %struct.svc_procedure { ptr @nfsd3_proc_symlink, ptr @nfs3svc_decode_symlinkargs, ptr @nfs3svc_encode_createres, ptr @nfs3svc_release_fhandle2, i32 464, i32 728, i32 2, i32 70, ptr @.str.10 }, %struct.svc_procedure { ptr @nfsd3_proc_mknod, ptr @nfs3svc_decode_mknodargs, ptr @nfs3svc_encode_createres, ptr @nfs3svc_release_fhandle2, i32 464, i32 728, i32 2, i32 70, ptr @.str.11 }, %struct.svc_procedure { ptr @nfsd3_proc_remove, ptr @nfs3svc_decode_diropargs, ptr @nfs3svc_encode_wccstat, ptr @nfs3svc_release_fhandle, i32 368, i32 512, i32 2, i32 30, ptr @.str.12 }, %struct.svc_procedure { ptr @nfsd3_proc_rmdir, ptr @nfs3svc_decode_diropargs, ptr @nfs3svc_encode_wccstat, ptr @nfs3svc_release_fhandle, i32 368, i32 512, i32 2, i32 30, ptr @.str.13 }, %struct.svc_procedure { ptr @nfsd3_proc_rename, ptr @nfs3svc_decode_renameargs, ptr @nfs3svc_encode_renameres, ptr @nfs3svc_release_fhandle2, i32 736, i32 728, i32 2, i32 59, ptr @.str.14 }, %struct.svc_procedure { ptr @nfsd3_proc_link, ptr @nfs3svc_decode_linkargs, ptr @nfs3svc_encode_linkres, ptr @nfs3svc_release_fhandle2, i32 728, i32 728, i32 2, i32 52, ptr @.str.15 }, %struct.svc_procedure { ptr @nfsd3_proc_readdir, ptr @nfs3svc_decode_readdirargs, ptr @nfs3svc_encode_readdirres, ptr @nfs3svc_release_fhandle, i32 376, i32 832, i32 0, i32 0, ptr @.str.16 }, %struct.svc_procedure { ptr @nfsd3_proc_readdirplus, ptr @nfs3svc_decode_readdirplusargs, ptr @nfs3svc_encode_readdirres, ptr @nfs3svc_release_fhandle, i32 376, i32 832, i32 0, i32 0, ptr @.str.17 }, %struct.svc_procedure { ptr @nfsd3_proc_fsstat, ptr @nfs3svc_decode_fhandleargs, ptr @nfs3svc_encode_fsstatres, ptr null, i32 360, i32 104, i32 0, i32 36, ptr @.str.18 }, %struct.svc_procedure { ptr @nfsd3_proc_fsinfo, ptr @nfs3svc_decode_fhandleargs, ptr @nfs3svc_encode_fsinfores, ptr null, i32 360, i32 48, i32 0, i32 35, ptr @.str.19 }, %struct.svc_procedure { ptr @nfsd3_proc_pathconf, ptr @nfs3svc_decode_fhandleargs, ptr @nfs3svc_encode_pathconfres, ptr null, i32 360, i32 28, i32 0, i32 29, ptr @.str.20 }, %struct.svc_procedure { ptr @nfsd3_proc_commit, ptr @nfs3svc_decode_commitargs, ptr @nfs3svc_encode_commitres, ptr @nfs3svc_release_fhandle, i32 376, i32 376, i32 0, i32 32, ptr @.str.21 }], [200 x i8] zeroinitializer }, align 32
@nfsd_count3 = internal global { [22 x i32], [40 x i8] } zeroinitializer, align 32
@nfsd_version3 = dso_local constant { %struct.svc_version, [36 x i8] } { %struct.svc_version { i32 3, i32 22, ptr @nfsd_procedures3, ptr @nfsd_count3, i32 832, i8 0, i8 0, i8 0, ptr @nfsd_dispatch }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NULL\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GETATTR\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SETATTR\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LOOKUP\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ACCESS\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"READLINK\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"READ\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WRITE\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CREATE\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MKDIR\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SYMLINK\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MKNOD\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"REMOVE\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RMDIR\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RENAME\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LINK\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"READDIR\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"READDIRPLUS\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"FSSTAT\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"FSINFO\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PATHCONF\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"COMMIT\00", [25 x i8] zeroinitializer }, align 32
@nfsd_debug = external dso_local local_unnamed_addr global i32, align 4
@nfsd3_proc_getattr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.24, i32 48, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nfsd: GETATTR(3)  %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfsd3_proc_getattr\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/nfsd/nfs3proc.c\00", [45 x i8] zeroinitializer }, align 32
@nfsd3_proc_getattr._entry_ptr = internal global ptr @nfsd3_proc_getattr._entry, section ".printk_index", align 4
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/nfsd/nfsfh.h\00", [16 x i8] zeroinitializer }, align 32
@nfsd3_proc_setattr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.24, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nfsd: SETATTR(3)  %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfsd3_proc_setattr\00", [45 x i8] zeroinitializer }, align 32
@nfsd3_proc_setattr._entry_ptr = internal global ptr @nfsd3_proc_setattr._entry, section ".printk_index", align 4
@nfsd3_proc_lookup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.24, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nfsd: LOOKUP(3)   %s %.*s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nfsd3_proc_lookup\00", [46 x i8] zeroinitializer }, align 32
@nfsd3_proc_lookup._entry_ptr = internal global ptr @nfsd3_proc_lookup._entry, section ".printk_index", align 4
@nfsd3_proc_access._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.24, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nfsd: ACCESS(3)   %s 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nfsd3_proc_access\00", [46 x i8] zeroinitializer }, align 32
@nfsd3_proc_access._entry_ptr = internal global ptr @nfsd3_proc_access._entry, section ".printk_index", align 4
@nfsd3_proc_readlink._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.24, i32 130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nfsd: READLINK(3) %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nfsd3_proc_readlink\00", [44 x i8] zeroinitializer }, align 32
@nfsd3_proc_readlink._entry_ptr = internal global ptr @nfsd3_proc_readlink._entry, section ".printk_index", align 4
@nfsd3_proc_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.24, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"nfsd: READ(3) %s %lu bytes at %Lu\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nfsd3_proc_read\00", [16 x i8] zeroinitializer }, align 32
@nfsd3_proc_read._entry_ptr = internal global ptr @nfsd3_proc_read._entry, section ".printk_index", align 4
@nfsd3_proc_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.24, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"nfsd: WRITE(3)    %s %d bytes at %Lu%s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nfsd3_proc_write\00", [47 x i8] zeroinitializer }, align 32
@nfsd3_proc_write._entry_ptr = internal global ptr @nfsd3_proc_write._entry, section ".printk_index", align 4
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" stable\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@nfsd3_proc_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.24, i32 238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nfsd: CREATE(3)   %s %.*s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nfsd3_proc_create\00", [46 x i8] zeroinitializer }, align 32
@nfsd3_proc_create._entry_ptr = internal global ptr @nfsd3_proc_create._entry, section ".printk_index", align 4
@nfsd3_proc_mkdir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.24, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nfsd: MKDIR(3)    %s %.*s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nfsd3_proc_mkdir\00", [47 x i8] zeroinitializer }, align 32
@nfsd3_proc_mkdir._entry_ptr = internal global ptr @nfsd3_proc_mkdir._entry, section ".printk_index", align 4
@nfsd3_proc_symlink._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.24, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"nfsd: SYMLINK(3)  %s %.*s -> %.*s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfsd3_proc_symlink\00", [45 x i8] zeroinitializer }, align 32
@nfsd3_proc_symlink._entry_ptr = internal global ptr @nfsd3_proc_symlink._entry, section ".printk_index", align 4
@nfsd3_proc_mknod._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.24, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nfsd: MKNOD(3)    %s %.*s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nfsd3_proc_mknod\00", [47 x i8] zeroinitializer }, align 32
@nfsd3_proc_mknod._entry_ptr = internal global ptr @nfsd3_proc_mknod._entry, section ".printk_index", align 4
@nfs3_ftypes = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 32768, i32 16384, i32 24576, i32 8192, i32 40960, i32 49152, i32 4096], [32 x i8] zeroinitializer }, align 32
@nfsd3_proc_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.24, i32 371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nfsd: REMOVE(3)   %s %.*s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nfsd3_proc_remove\00", [46 x i8] zeroinitializer }, align 32
@nfsd3_proc_remove._entry_ptr = internal global ptr @nfsd3_proc_remove._entry, section ".printk_index", align 4
@nfsd3_proc_rmdir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.24, i32 393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nfsd: RMDIR(3)    %s %.*s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nfsd3_proc_rmdir\00", [47 x i8] zeroinitializer }, align 32
@nfsd3_proc_rmdir._entry_ptr = internal global ptr @nfsd3_proc_rmdir._entry, section ".printk_index", align 4
@nfsd3_proc_rename._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.24, i32 411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nfsd: RENAME(3)   %s %.*s ->\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nfsd3_proc_rename\00", [46 x i8] zeroinitializer }, align 32
@nfsd3_proc_rename._entry_ptr = internal global ptr @nfsd3_proc_rename._entry, section ".printk_index", align 4
@nfsd3_proc_rename._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.24, i32 415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nfsd: -> %s %.*s\0A\00", [46 x i8] zeroinitializer }, align 32
@nfsd3_proc_rename._entry_ptr.56 = internal global ptr @nfsd3_proc_rename._entry.54, section ".printk_index", align 4
@nfsd3_proc_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.24, i32 431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nfsd: LINK(3)     %s ->\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nfsd3_proc_link\00", [16 x i8] zeroinitializer }, align 32
@nfsd3_proc_link._entry_ptr = internal global ptr @nfsd3_proc_link._entry, section ".printk_index", align 4
@nfsd3_proc_link._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.24, i32 435, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nfsd:   -> %s %.*s\0A\00", [44 x i8] zeroinitializer }, align 32
@nfsd3_proc_link._entry_ptr.61 = internal global ptr @nfsd3_proc_link._entry.59, section ".printk_index", align 4
@nfsd3_proc_readdir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.24, i32 483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"nfsd: READDIR(3)  %s %d bytes at %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfsd3_proc_readdir\00", [45 x i8] zeroinitializer }, align 32
@nfsd3_proc_readdir._entry_ptr = internal global ptr @nfsd3_proc_readdir._entry, section ".printk_index", align 4
@nfsd3_proc_readdirplus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.24, i32 516, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"nfsd: READDIR+(3) %s %d bytes at %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nfsd3_proc_readdirplus\00", [41 x i8] zeroinitializer }, align 32
@nfsd3_proc_readdirplus._entry_ptr = internal global ptr @nfsd3_proc_readdirplus._entry, section ".printk_index", align 4
@nfsd3_proc_fsstat._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.24, i32 557, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nfsd: FSSTAT(3)   %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nfsd3_proc_fsstat\00", [46 x i8] zeroinitializer }, align 32
@nfsd3_proc_fsstat._entry_ptr = internal global ptr @nfsd3_proc_fsstat._entry, section ".printk_index", align 4
@nfsd3_proc_fsinfo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.24, i32 575, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nfsd: FSINFO(3)   %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nfsd3_proc_fsinfo\00", [46 x i8] zeroinitializer }, align 32
@nfsd3_proc_fsinfo._entry_ptr = internal global ptr @nfsd3_proc_fsinfo._entry, section ".printk_index", align 4
@nfsd3_proc_pathconf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.24, i32 617, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nfsd: PATHCONF(3) %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nfsd3_proc_pathconf\00", [44 x i8] zeroinitializer }, align 32
@nfsd3_proc_pathconf._entry_ptr = internal global ptr @nfsd3_proc_pathconf._entry, section ".printk_index", align 4
@nfsd3_proc_commit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.24, i32 661, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nfsd: COMMIT(3)   %s %u@%Lu\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nfsd3_proc_commit\00", [46 x i8] zeroinitializer }, align 32
@nfsd3_proc_commit._entry_ptr = internal global ptr @nfsd3_proc_commit._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 4, i64 6, i64 7]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 19780, i64 61267]
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"nfsd_procedures3\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 689, i32 35 }
@___asan_gen_.78 = private unnamed_addr constant [12 x i8] c"nfsd_count3\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 928, i32 21 }
@___asan_gen_.81 = private unnamed_addr constant [14 x i8] c"nfsd_version3\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 929, i32 26 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 698, i32 14 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 709, i32 14 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 720, i32 14 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 731, i32 14 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 742, i32 14 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 753, i32 14 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 764, i32 14 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 775, i32 14 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 786, i32 14 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 797, i32 14 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 808, i32 14 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 819, i32 14 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 830, i32 14 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 841, i32 14 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 852, i32 14 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 863, i32 14 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 873, i32 14 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 883, i32 14 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 893, i32 14 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 903, i32 14 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 913, i32 14 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 924, i32 14 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 47, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant [19 x i8] c"../fs/nfsd/nfsfh.h\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 228, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 70, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 88, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 111, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 130, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 153, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 200, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 235, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 269, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 306, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 331, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant [12 x i8] c"nfs3_ftypes\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 18, i32 12 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 368, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 390, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 408, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 412, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 430, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 432, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 481, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 514, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 556, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 574, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 616, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.363 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.364 = private constant [22 x i8] c"../fs/nfsd/nfs3proc.c\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 658, i32 2 }
@llvm.compiler.used = appending global [120 x ptr] [ptr @nfsd3_proc_access._entry, ptr @nfsd3_proc_access._entry_ptr, ptr @nfsd3_proc_commit._entry, ptr @nfsd3_proc_commit._entry_ptr, ptr @nfsd3_proc_create._entry, ptr @nfsd3_proc_create._entry_ptr, ptr @nfsd3_proc_fsinfo._entry, ptr @nfsd3_proc_fsinfo._entry_ptr, ptr @nfsd3_proc_fsstat._entry, ptr @nfsd3_proc_fsstat._entry_ptr, ptr @nfsd3_proc_getattr._entry, ptr @nfsd3_proc_getattr._entry_ptr, ptr @nfsd3_proc_link._entry, ptr @nfsd3_proc_link._entry.59, ptr @nfsd3_proc_link._entry_ptr, ptr @nfsd3_proc_link._entry_ptr.61, ptr @nfsd3_proc_lookup._entry, ptr @nfsd3_proc_lookup._entry_ptr, ptr @nfsd3_proc_mkdir._entry, ptr @nfsd3_proc_mkdir._entry_ptr, ptr @nfsd3_proc_mknod._entry, ptr @nfsd3_proc_mknod._entry_ptr, ptr @nfsd3_proc_pathconf._entry, ptr @nfsd3_proc_pathconf._entry_ptr, ptr @nfsd3_proc_read._entry, ptr @nfsd3_proc_read._entry_ptr, ptr @nfsd3_proc_readdir._entry, ptr @nfsd3_proc_readdir._entry_ptr, ptr @nfsd3_proc_readdirplus._entry, ptr @nfsd3_proc_readdirplus._entry_ptr, ptr @nfsd3_proc_readlink._entry, ptr @nfsd3_proc_readlink._entry_ptr, ptr @nfsd3_proc_remove._entry, ptr @nfsd3_proc_remove._entry_ptr, ptr @nfsd3_proc_rename._entry, ptr @nfsd3_proc_rename._entry.54, ptr @nfsd3_proc_rename._entry_ptr, ptr @nfsd3_proc_rename._entry_ptr.56, ptr @nfsd3_proc_rmdir._entry, ptr @nfsd3_proc_rmdir._entry_ptr, ptr @nfsd3_proc_setattr._entry, ptr @nfsd3_proc_setattr._entry_ptr, ptr @nfsd3_proc_symlink._entry, ptr @nfsd3_proc_symlink._entry_ptr, ptr @nfsd3_proc_write._entry, ptr @nfsd3_proc_write._entry_ptr, ptr @nfsd_procedures3, ptr @nfsd_count3, ptr @nfsd_version3, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @nfs3_ftypes, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73], section "llvm.metadata"
@0 = internal global [97 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_procedures3 to i32), i32 792, i32 992, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_count3 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_version3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd3_proc_getattr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd3_proc_setattr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd3_proc_lookup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd3_proc_access._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd3_proc_readlink._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd3_proc_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd3_proc_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd3_proc_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd3_proc_mkdir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd3_proc_symlink._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd3_proc_mknod._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs3_ftypes to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd3_proc_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd3_proc_rmdir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd3_proc_rename._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd3_proc_rename._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd3_proc_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd3_proc_link._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd3_proc_readdir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd3_proc_readdirplus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd3_proc_fsstat._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd3_proc_fsinfo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd3_proc_pathconf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd3_proc_commit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_dispatch(ptr noundef, ptr noundef) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfsd3_proc_null(ptr nocapture noundef readnone %rqstp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfssvc_decode_voidarg(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfssvc_encode_voidres(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd3_proc_getattr(ptr noundef %rqstp) #2 align 64 {
entry:
  %p.i = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call ptr @SVCFH_fmt(ptr noundef %1) #6
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %call) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %fh5 = getelementptr inbounds %struct.nfsd3_attrstat, ptr %3, i32 0, i32 1
  %fh_dentry.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %fh_dentry.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fh_dentry.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %lor.rhs.i, label %do.end4.do.end.i_crit_edge

do.end4.do.end.i_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i:                                        ; preds = %do.end4
  %fh_locked.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fh_locked.i, align 8, !range !179
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not.i = icmp eq i8 %8, 0
  br i1 %tobool1.not.i, label %lor.rhs.i.fh_copy.exit_crit_edge, label %lor.rhs.i.do.end.i_crit_edge, !prof !180

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i.fh_copy.exit_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fh_copy.exit

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %do.end4.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 228, i32 noundef 9, ptr noundef null) #6
  br label %fh_copy.exit

fh_copy.exit:                                     ; preds = %do.end.i, %lor.rhs.i.fh_copy.exit_crit_edge
  %9 = call ptr @memcpy(ptr %fh5, ptr %1, i32 360)
  %call9 = tail call i32 @fh_verify(ptr noundef %rqstp, ptr noundef %fh5, i16 noundef zeroext 0, i32 noundef 256) #6
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call9, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp.not = icmp eq i32 %call9, 0
  br i1 %cmp.not, label %if.end12, label %fh_copy.exit.out_crit_edge

fh_copy.exit.out_crit_edge:                       ; preds = %fh_copy.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end12:                                         ; preds = %fh_copy.exit
  call void @__sanitizer_cov_trace_pc() #8
  %stat = getelementptr inbounds %struct.nfsd3_attrstat, ptr %3, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p.i) #6
  %11 = getelementptr inbounds %struct.path, ptr %p.i, i32 0, i32 1
  %fh_export.i = getelementptr inbounds %struct.nfsd3_attrstat, ptr %3, i32 0, i32 1, i32 3
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
  %fh_dentry.i25 = getelementptr inbounds %struct.nfsd3_attrstat, ptr %3, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %fh_dentry.i25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fh_dentry.i25, align 8
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %11, align 4
  %call.i = call i32 @vfs_getattr(ptr noundef nonnull %p.i, ptr noundef %stat, i32 noundef 2047, i32 noundef 0) #6
  %call2.i = call i32 @nfserrno(i32 noundef %call.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p.i) #6
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call2.i, ptr %3, align 8
  br label %out

out:                                              ; preds = %if.end12, %fh_copy.exit.out_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs3svc_decode_fhandleargs(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs3svc_encode_getattrres(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs3svc_release_fhandle(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd3_proc_setattr(ptr noundef %rqstp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call ptr @SVCFH_fmt(ptr noundef %1) #6
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %call) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %fh_dentry.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %fh_dentry.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fh_dentry.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %lor.rhs.i, label %do.end4.do.end.i_crit_edge

do.end4.do.end.i_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i:                                        ; preds = %do.end4
  %fh_locked.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fh_locked.i, align 8, !range !179
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not.i = icmp eq i8 %8, 0
  br i1 %tobool1.not.i, label %lor.rhs.i.fh_copy.exit_crit_edge, label %lor.rhs.i.do.end.i_crit_edge, !prof !180

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i.fh_copy.exit_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fh_copy.exit

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %do.end4.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 228, i32 noundef 9, ptr noundef null) #6
  br label %fh_copy.exit

fh_copy.exit:                                     ; preds = %do.end.i, %lor.rhs.i.fh_copy.exit_crit_edge
  %fh5 = getelementptr inbounds %struct.nfsd3_attrstat, ptr %3, i32 0, i32 1
  %9 = call ptr @memcpy(ptr %fh5, ptr %1, i32 360)
  %attrs = getelementptr inbounds %struct.nfsd3_sattrargs, ptr %1, i32 0, i32 1
  %check_guard = getelementptr inbounds %struct.nfsd3_sattrargs, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %check_guard to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %check_guard, align 8
  %guardtime = getelementptr inbounds %struct.nfsd3_sattrargs, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %guardtime to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %guardtime, align 8
  %call9 = tail call i32 @nfsd_setattr(ptr noundef %rqstp, ptr noundef %fh5, ptr noundef %attrs, i32 noundef %11, i64 noundef %13) #6
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call9, ptr %3, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs3svc_decode_sattrargs(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs3svc_encode_wccstat(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd3_proc_lookup(ptr noundef %rqstp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call ptr @SVCFH_fmt(ptr noundef %1) #6
  %len = getelementptr inbounds %struct.nfsd3_diropargs, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %name = getelementptr inbounds %struct.nfsd3_diropargs, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %call, i32 noundef %6, ptr noundef %8) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %fh_dentry.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %fh_dentry.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fh_dentry.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %lor.rhs.i, label %do.end4.do.end.i_crit_edge

do.end4.do.end.i_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i:                                        ; preds = %do.end4
  %fh_locked.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fh_locked.i, align 8, !range !179
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool1.not.i = icmp eq i8 %12, 0
  br i1 %tobool1.not.i, label %lor.rhs.i.fh_copy.exit_crit_edge, label %lor.rhs.i.do.end.i_crit_edge, !prof !180

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i.fh_copy.exit_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fh_copy.exit

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %do.end4.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 228, i32 noundef 9, ptr noundef null) #6
  br label %fh_copy.exit

fh_copy.exit:                                     ; preds = %do.end.i, %lor.rhs.i.fh_copy.exit_crit_edge
  %dirfh = getelementptr inbounds %struct.nfsd3_diropres, ptr %3, i32 0, i32 1
  %13 = call ptr @memcpy(ptr %dirfh, ptr %1, i32 360)
  %fh7 = getelementptr inbounds %struct.nfsd3_diropres, ptr %3, i32 0, i32 2
  %14 = call ptr @memset(ptr %fh7, i32 0, i32 360)
  %fh_maxsize.i = getelementptr inbounds %struct.nfsd3_diropres, ptr %3, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %fh_maxsize.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 64, ptr %fh_maxsize.i, align 4
  %name10 = getelementptr inbounds %struct.nfsd3_diropargs, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %name10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name10, align 8
  %len11 = getelementptr inbounds %struct.nfsd3_diropargs, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %len11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len11, align 4
  %call13 = tail call i32 @nfsd_lookup(ptr noundef %rqstp, ptr noundef %dirfh, ptr noundef %17, i32 noundef %19, ptr noundef %fh7) #6
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call13, ptr %3, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs3svc_decode_diropargs(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs3svc_encode_lookupres(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs3svc_release_fhandle2(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd3_proc_access(ptr noundef %rqstp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call ptr @SVCFH_fmt(ptr noundef %1) #6
  %access = getelementptr inbounds %struct.nfsd3_accessargs, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %access, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %call, i32 noundef %6) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %fh_dentry.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %fh_dentry.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fh_dentry.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %lor.rhs.i, label %do.end4.do.end.i_crit_edge

do.end4.do.end.i_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i:                                        ; preds = %do.end4
  %fh_locked.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %fh_locked.i, align 8, !range !179
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool1.not.i = icmp eq i8 %10, 0
  br i1 %tobool1.not.i, label %lor.rhs.i.fh_copy.exit_crit_edge, label %lor.rhs.i.do.end.i_crit_edge, !prof !180

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i.fh_copy.exit_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fh_copy.exit

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %do.end4.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 228, i32 noundef 9, ptr noundef null) #6
  br label %fh_copy.exit

fh_copy.exit:                                     ; preds = %do.end.i, %lor.rhs.i.fh_copy.exit_crit_edge
  %fh5 = getelementptr inbounds %struct.nfsd3_accessres, ptr %3, i32 0, i32 1
  %11 = call ptr @memcpy(ptr %fh5, ptr %1, i32 360)
  %access8 = getelementptr inbounds %struct.nfsd3_accessargs, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %access8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %access8, align 8
  %access9 = getelementptr inbounds %struct.nfsd3_accessres, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %access9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %access9, align 8
  %call12 = tail call i32 @nfsd_access(ptr noundef %rqstp, ptr noundef %fh5, ptr noundef %access9, ptr noundef null) #6
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call12, ptr %3, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs3svc_decode_accessargs(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs3svc_encode_accessres(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd3_proc_readlink(ptr noundef %rqstp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call ptr @SVCFH_fmt(ptr noundef %1) #6
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %call) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %fh_dentry.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %fh_dentry.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fh_dentry.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %lor.rhs.i, label %do.end4.do.end.i_crit_edge

do.end4.do.end.i_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i:                                        ; preds = %do.end4
  %fh_locked.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fh_locked.i, align 8, !range !179
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not.i = icmp eq i8 %8, 0
  br i1 %tobool1.not.i, label %lor.rhs.i.fh_copy.exit_crit_edge, label %lor.rhs.i.do.end.i_crit_edge, !prof !180

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i.fh_copy.exit_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fh_copy.exit

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %do.end4.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 228, i32 noundef 9, ptr noundef null) #6
  br label %fh_copy.exit

fh_copy.exit:                                     ; preds = %do.end.i, %lor.rhs.i.fh_copy.exit_crit_edge
  %fh5 = getelementptr inbounds %struct.nfsd3_readlinkres, ptr %3, i32 0, i32 1
  %9 = call ptr @memcpy(ptr %fh5, ptr %1, i32 360)
  %len = getelementptr inbounds %struct.nfsd3_readlinkres, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4096, ptr %len, align 8
  %rq_next_page = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 22
  %11 = ptrtoint ptr %rq_next_page to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rq_next_page, align 8
  %incdec.ptr = getelementptr ptr, ptr %12, i32 1
  store ptr %incdec.ptr, ptr %rq_next_page, align 8
  %pages = getelementptr inbounds %struct.nfsd3_readlinkres, ptr %3, i32 0, i32 3
  %13 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %pages, align 4
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %12, align 4
  %call10 = tail call ptr @page_address(ptr noundef %15) #6
  %call12 = tail call i32 @nfsd_readlink(ptr noundef %rqstp, ptr noundef %fh5, ptr noundef %call10, ptr noundef %len) #6
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call12, ptr %3, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs3svc_encode_readlinkres(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd3_proc_read(ptr noundef %rqstp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %2 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_resp, align 4
  %call = tail call i32 @svc_max_payload(ptr noundef %rqstp) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %4 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call ptr @SVCFH_fmt(ptr noundef %1) #6
  %count = getelementptr inbounds %struct.nfsd3_readargs, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count, align 8
  %offset = getelementptr inbounds %struct.nfsd3_readargs, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %offset, align 8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %call2, i32 noundef %6, i64 noundef %8) #9
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %count6 = getelementptr inbounds %struct.nfsd3_readargs, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %count6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count6, align 8
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 %call)
  %12 = ptrtoint ptr %count6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %count6, align 8
  %offset9 = getelementptr inbounds %struct.nfsd3_readargs, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %offset9 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %offset9, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %cmp10 = icmp slt i64 %14, 0
  br i1 %cmp10, label %if.then11, label %do.end5.if.end13_crit_edge

do.end5.if.end13_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then11:                                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %offset9 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 9223372036854775807, ptr %offset9, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %do.end5.if.end13_crit_edge
  %16 = ptrtoint ptr %offset9 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %offset9, align 8
  %18 = ptrtoint ptr %count6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count6, align 8
  %conv = zext i32 %19 to i64
  %add = add i64 %17, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add)
  %cmp16 = icmp slt i64 %add, 0
  br i1 %cmp16, label %if.then18, label %if.end13.if.end22_crit_edge

if.end13.if.end22_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %20 = trunc i64 %17 to i32
  %conv20 = xor i32 %20, -1
  %21 = ptrtoint ptr %count6 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv20, ptr %count6, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.end13.if.end22_crit_edge
  %22 = phi i32 [ %conv20, %if.then18 ], [ %19, %if.end13.if.end22_crit_edge ]
  %rq_next_page = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 22
  %23 = ptrtoint ptr %rq_next_page to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rq_next_page, align 8
  %pages = getelementptr inbounds %struct.nfsd3_readres, ptr %3, i32 0, i32 4
  %25 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %pages, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp24.not95 = icmp eq i32 %22, 0
  br i1 %cmp24.not95, label %if.end22.while.end_crit_edge, label %if.end22.while.body_crit_edge

if.end22.while.body_crit_edge:                    ; preds = %if.end22
  br label %while.body

if.end22.while.end_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end22.while.body_crit_edge
  %len.097 = phi i32 [ %sub40, %while.body.while.body_crit_edge ], [ %22, %if.end22.while.body_crit_edge ]
  %v.096 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %if.end22.while.body_crit_edge ]
  %26 = ptrtoint ptr %rq_next_page to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rq_next_page, align 8
  %incdec.ptr = getelementptr ptr, ptr %27, i32 1
  store ptr %incdec.ptr, ptr %rq_next_page, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %call27 = tail call ptr @page_address(ptr noundef %29) #6
  %arrayidx = getelementptr %struct.svc_rqst, ptr %rqstp, i32 0, i32 25, i32 %v.096
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call27, ptr %arrayidx, align 8
  %31 = tail call i32 @llvm.umin.i32(i32 %len.097, i32 4096)
  %iov_len = getelementptr %struct.svc_rqst, ptr %rqstp, i32 0, i32 25, i32 %v.096, i32 1
  %32 = ptrtoint ptr %iov_len to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %iov_len, align 4
  %sub40 = sub i32 %len.097, %31
  %inc = add i32 %v.096, 1
  %cmp24.not = icmp eq i32 %sub40, 0
  br i1 %cmp24.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end22.while.end_crit_edge
  %v.0.lcssa = phi i32 [ 0, %if.end22.while.end_crit_edge ], [ %inc, %while.body.while.end_crit_edge ]
  %33 = ptrtoint ptr %count6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %count6, align 8
  %count42 = getelementptr inbounds %struct.nfsd3_readres, ptr %3, i32 0, i32 2
  %35 = ptrtoint ptr %count42 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %count42, align 8
  %add45 = add i32 %34, 108
  %rq_auth_slack.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 39
  %36 = ptrtoint ptr %rq_auth_slack.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rq_auth_slack.i, align 8
  %add.i = add i32 %add45, %37
  tail call void @svc_reserve(ptr noundef %rqstp, i32 noundef %add.i) #6
  %fh_dentry.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 2
  %38 = ptrtoint ptr %fh_dentry.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fh_dentry.i, align 8
  %tobool.not.i = icmp eq ptr %39, null
  br i1 %tobool.not.i, label %lor.rhs.i, label %while.end.do.end.i_crit_edge

while.end.do.end.i_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i:                                        ; preds = %while.end
  %fh_locked.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 4
  %40 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %fh_locked.i, align 8, !range !179
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool1.not.i = icmp eq i8 %41, 0
  br i1 %tobool1.not.i, label %lor.rhs.i.fh_copy.exit_crit_edge, label %lor.rhs.i.do.end.i_crit_edge, !prof !180

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i.fh_copy.exit_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fh_copy.exit

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %while.end.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 228, i32 noundef 9, ptr noundef null) #6
  br label %fh_copy.exit

fh_copy.exit:                                     ; preds = %do.end.i, %lor.rhs.i.fh_copy.exit_crit_edge
  %fh46 = getelementptr inbounds %struct.nfsd3_readres, ptr %3, i32 0, i32 1
  %42 = call ptr @memcpy(ptr %fh46, ptr %1, i32 360)
  %43 = ptrtoint ptr %offset9 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %offset9, align 8
  %rq_vec51 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 25
  %eof = getelementptr inbounds %struct.nfsd3_readres, ptr %3, i32 0, i32 3
  %call53 = tail call i32 @nfsd_read(ptr noundef %rqstp, ptr noundef %fh46, i64 noundef %44, ptr noundef %rq_vec51, i32 noundef %v.0.lcssa, ptr noundef %count42, ptr noundef %eof) #6
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call53, ptr %3, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs3svc_decode_readargs(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs3svc_encode_readres(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd3_proc_write(ptr noundef %rqstp) #2 align 64 {
entry:
  %cnt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %2 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_resp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cnt) #6
  %len = getelementptr inbounds %struct.nfsd3_writeargs, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 8
  %6 = ptrtoint ptr %cnt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %cnt, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %7 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call ptr @SVCFH_fmt(ptr noundef %1) #6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 8
  %offset = getelementptr inbounds %struct.nfsd3_writeargs, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %offset, align 8
  %stable = getelementptr inbounds %struct.nfsd3_writeargs, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %stable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool3.not = icmp eq i32 %13, 0
  %cond = select i1 %tobool3.not, ptr @.str.39, ptr @.str.38
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %call, i32 noundef %9, i64 noundef %11, ptr noundef nonnull %cond) #9
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 27, ptr %3, align 8
  %offset7 = getelementptr inbounds %struct.nfsd3_writeargs, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %offset7 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %offset7, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %cmp = icmp slt i64 %16, 0
  br i1 %cmp, label %do.end6.cleanup_crit_edge, label %lor.lhs.false

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end6
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 8
  %conv = zext i32 %18 to i64
  %add = add nuw i64 %16, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add)
  %cmp10 = icmp slt i64 %add, 0
  br i1 %cmp10, label %lor.lhs.false.cleanup_crit_edge, label %if.end13

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false
  %fh14 = getelementptr inbounds %struct.nfsd3_writeres, ptr %3, i32 0, i32 1
  %fh_dentry.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %fh_dentry.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fh_dentry.i, align 8
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %lor.rhs.i, label %if.end13.do.end.i_crit_edge

if.end13.do.end.i_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i:                                        ; preds = %if.end13
  %fh_locked.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %fh_locked.i, align 8, !range !179
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool1.not.i = icmp eq i8 %22, 0
  br i1 %tobool1.not.i, label %lor.rhs.i.fh_copy.exit_crit_edge, label %lor.rhs.i.do.end.i_crit_edge, !prof !180

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i.fh_copy.exit_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fh_copy.exit

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %if.end13.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 228, i32 noundef 9, ptr noundef null) #6
  br label %fh_copy.exit

fh_copy.exit:                                     ; preds = %do.end.i, %lor.rhs.i.fh_copy.exit_crit_edge
  %23 = call ptr @memcpy(ptr %fh14, ptr %1, i32 360)
  %stable17 = getelementptr inbounds %struct.nfsd3_writeargs, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %stable17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %stable17, align 4
  %committed = getelementptr inbounds %struct.nfsd3_writeres, ptr %3, i32 0, i32 3
  %26 = ptrtoint ptr %committed to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %committed, align 4
  %payload = getelementptr inbounds %struct.nfsd3_writeargs, ptr %1, i32 0, i32 5
  %call18 = tail call i32 @svc_fill_write_vector(ptr noundef %rqstp, ptr noundef %payload) #6
  %27 = ptrtoint ptr %offset7 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %offset7, align 8
  %rq_vec = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 25
  %29 = ptrtoint ptr %committed to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %committed, align 4
  %verf = getelementptr inbounds %struct.nfsd3_writeres, ptr %3, i32 0, i32 4
  %call23 = call i32 @nfsd_write(ptr noundef %rqstp, ptr noundef %fh14, i64 noundef %28, ptr noundef %rq_vec, i32 noundef %call18, ptr noundef nonnull %cnt, i32 noundef %30, ptr noundef %verf) #6
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call23, ptr %3, align 8
  %32 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cnt, align 4
  %count = getelementptr inbounds %struct.nfsd3_writeres, ptr %3, i32 0, i32 2
  %34 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %count, align 8
  br label %cleanup

cleanup:                                          ; preds = %fh_copy.exit, %lor.lhs.false.cleanup_crit_edge, %do.end6.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cnt) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs3svc_decode_writeargs(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs3svc_encode_writeres(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd3_proc_create(ptr noundef %rqstp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call ptr @SVCFH_fmt(ptr noundef %1) #6
  %len = getelementptr inbounds %struct.nfsd3_createargs, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %name = getelementptr inbounds %struct.nfsd3_createargs, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %call, i32 noundef %6, ptr noundef %8) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %dirfh = getelementptr inbounds %struct.nfsd3_diropres, ptr %3, i32 0, i32 1
  %fh_dentry.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %fh_dentry.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fh_dentry.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %lor.rhs.i, label %do.end4.do.end.i_crit_edge

do.end4.do.end.i_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i:                                        ; preds = %do.end4
  %fh_locked.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fh_locked.i, align 8, !range !179
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool1.not.i = icmp eq i8 %12, 0
  br i1 %tobool1.not.i, label %lor.rhs.i.fh_copy.exit_crit_edge, label %lor.rhs.i.do.end.i_crit_edge, !prof !180

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i.fh_copy.exit_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fh_copy.exit

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %do.end4.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 228, i32 noundef 9, ptr noundef null) #6
  br label %fh_copy.exit

fh_copy.exit:                                     ; preds = %do.end.i, %lor.rhs.i.fh_copy.exit_crit_edge
  %13 = call ptr @memcpy(ptr %dirfh, ptr %1, i32 360)
  %fh7 = getelementptr inbounds %struct.nfsd3_diropres, ptr %3, i32 0, i32 2
  %14 = call ptr @memset(ptr %fh7, i32 0, i32 360)
  %fh_maxsize.i = getelementptr inbounds %struct.nfsd3_diropres, ptr %3, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %fh_maxsize.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 64, ptr %fh_maxsize.i, align 4
  %attrs = getelementptr inbounds %struct.nfsd3_createargs, ptr %1, i32 0, i32 4
  %ia_mode = getelementptr inbounds %struct.nfsd3_createargs, ptr %1, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %attrs, align 8
  %and11 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.then13, label %if.else

if.then13:                                        ; preds = %fh_copy.exit
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %17, 1
  %18 = ptrtoint ptr %attrs to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or, ptr %attrs, align 8
  br label %if.end22

if.else:                                          ; preds = %fh_copy.exit
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %ia_mode to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %ia_mode, align 4
  %21 = and i16 %20, 4095
  %22 = or i16 %21, -32768
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then13
  %storemerge = phi i16 [ -32768, %if.then13 ], [ %22, %if.else ]
  %23 = ptrtoint ptr %ia_mode to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %storemerge, ptr %ia_mode, align 4
  %name23 = getelementptr inbounds %struct.nfsd3_createargs, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %name23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name23, align 8
  %len24 = getelementptr inbounds %struct.nfsd3_createargs, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %len24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len24, align 4
  %createmode = getelementptr inbounds %struct.nfsd3_createargs, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %createmode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %createmode, align 8
  %verf = getelementptr inbounds %struct.nfsd3_createargs, ptr %1, i32 0, i32 5
  %30 = ptrtoint ptr %verf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %verf, align 8
  %call25 = tail call i32 @do_nfsd_create(ptr noundef %rqstp, ptr noundef %dirfh, ptr noundef %25, i32 noundef %27, ptr noundef %attrs, ptr noundef %fh7, i32 noundef %29, ptr noundef %31, ptr noundef null, ptr noundef null) #6
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call25, ptr %3, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs3svc_decode_createargs(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs3svc_encode_createres(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd3_proc_mkdir(ptr noundef %rqstp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call ptr @SVCFH_fmt(ptr noundef %1) #6
  %len = getelementptr inbounds %struct.nfsd3_createargs, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %name = getelementptr inbounds %struct.nfsd3_createargs, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %call, i32 noundef %6, ptr noundef %8) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %attrs = getelementptr inbounds %struct.nfsd3_createargs, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %attrs, align 8
  %and5 = and i32 %10, -9
  store i32 %and5, ptr %attrs, align 8
  %dirfh = getelementptr inbounds %struct.nfsd3_diropres, ptr %3, i32 0, i32 1
  %fh_dentry.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %fh_dentry.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fh_dentry.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %lor.rhs.i, label %do.end4.do.end.i_crit_edge

do.end4.do.end.i_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i:                                        ; preds = %do.end4
  %fh_locked.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %fh_locked.i, align 8, !range !179
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool1.not.i = icmp eq i8 %14, 0
  br i1 %tobool1.not.i, label %lor.rhs.i.fh_copy.exit_crit_edge, label %lor.rhs.i.do.end.i_crit_edge, !prof !180

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i.fh_copy.exit_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fh_copy.exit

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %do.end4.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 228, i32 noundef 9, ptr noundef null) #6
  br label %fh_copy.exit

fh_copy.exit:                                     ; preds = %do.end.i, %lor.rhs.i.fh_copy.exit_crit_edge
  %15 = call ptr @memcpy(ptr %dirfh, ptr %1, i32 360)
  %fh8 = getelementptr inbounds %struct.nfsd3_diropres, ptr %3, i32 0, i32 2
  %16 = call ptr @memset(ptr %fh8, i32 0, i32 360)
  %fh_maxsize.i = getelementptr inbounds %struct.nfsd3_diropres, ptr %3, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %fh_maxsize.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 64, ptr %fh_maxsize.i, align 4
  %name11 = getelementptr inbounds %struct.nfsd3_createargs, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %name11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name11, align 8
  %len12 = getelementptr inbounds %struct.nfsd3_createargs, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %len12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len12, align 4
  %call15 = tail call i32 @nfsd_create(ptr noundef %rqstp, ptr noundef %dirfh, ptr noundef %19, i32 noundef %21, ptr noundef %attrs, i32 noundef 16384, i32 noundef 0, ptr noundef %fh8) #6
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call15, ptr %3, align 8
  %fh_locked.i31 = getelementptr inbounds %struct.nfsd3_diropres, ptr %3, i32 0, i32 1, i32 4
  %23 = ptrtoint ptr %fh_locked.i31 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %fh_locked.i31, align 8, !range !179
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i32 = icmp eq i8 %24, 0
  br i1 %tobool.not.i32, label %fh_copy.exit.fh_unlock.exit_crit_edge, label %if.then.i

fh_copy.exit.fh_unlock.exit_crit_edge:            ; preds = %fh_copy.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %fh_unlock.exit

if.then.i:                                        ; preds = %fh_copy.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @fh_fill_post_attrs(ptr noundef %dirfh) #6
  %fh_dentry.i33 = getelementptr inbounds %struct.nfsd3_diropres, ptr %3, i32 0, i32 1, i32 2
  %25 = ptrtoint ptr %fh_dentry.i33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fh_dentry.i33, align 8
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %28, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i.i) #6
  %29 = ptrtoint ptr %fh_locked.i31 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %fh_locked.i31, align 8
  br label %fh_unlock.exit

fh_unlock.exit:                                   ; preds = %if.then.i, %fh_copy.exit.fh_unlock.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs3svc_decode_mkdirargs(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd3_proc_symlink(ptr noundef %rqstp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %2 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_resp, align 4
  %tlen = getelementptr inbounds %struct.nfsd3_symlinkargs, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %tlen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 22, ptr %3, align 8
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %5)
  %cmp2 = icmp ugt i32 %5, 4096
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 63, ptr %3, align 8
  br label %out

if.end5:                                          ; preds = %if.end
  %first = getelementptr inbounds %struct.nfsd3_symlinkargs, ptr %1, i32 0, i32 6
  %pages = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 3
  %8 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pages, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call = tail call ptr @page_address(ptr noundef %11) #6
  %12 = ptrtoint ptr %tlen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tlen, align 4
  %call7 = tail call ptr @svc_fill_symlink_pathname(ptr noundef %rqstp, ptr noundef %first, ptr noundef %call, i32 noundef %13) #6
  %tname = getelementptr inbounds %struct.nfsd3_symlinkargs, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %tname to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7, ptr %tname, align 8
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %do.body

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %call7 to i32
  %call13 = tail call i32 @nfserrno(i32 noundef %15) #6
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call13, ptr %3, align 8
  br label %out

do.body:                                          ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %17 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end24_crit_edge, label %do.end

do.body.do.end24_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call18 = tail call ptr @SVCFH_fmt(ptr noundef %1) #6
  %flen = getelementptr inbounds %struct.nfsd3_symlinkargs, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %flen to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flen, align 4
  %fname = getelementptr inbounds %struct.nfsd3_symlinkargs, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %fname to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fname, align 8
  %22 = ptrtoint ptr %tlen to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tlen, align 4
  %24 = ptrtoint ptr %tname to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tname, align 8
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %call18, i32 noundef %19, ptr noundef %21, i32 noundef %23, ptr noundef %25) #9
  br label %do.end24

do.end24:                                         ; preds = %do.end, %do.body.do.end24_crit_edge
  %dirfh = getelementptr inbounds %struct.nfsd3_diropres, ptr %3, i32 0, i32 1
  %fh_dentry.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %fh_dentry.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fh_dentry.i, align 8
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %lor.rhs.i, label %do.end24.do.end.i_crit_edge

do.end24.do.end.i_crit_edge:                      ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i:                                        ; preds = %do.end24
  %fh_locked.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 4
  %28 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %fh_locked.i, align 8, !range !179
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool1.not.i = icmp eq i8 %29, 0
  br i1 %tobool1.not.i, label %lor.rhs.i.fh_copy.exit_crit_edge, label %lor.rhs.i.do.end.i_crit_edge, !prof !180

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i.fh_copy.exit_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fh_copy.exit

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %do.end24.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 228, i32 noundef 9, ptr noundef null) #6
  br label %fh_copy.exit

fh_copy.exit:                                     ; preds = %do.end.i, %lor.rhs.i.fh_copy.exit_crit_edge
  %30 = call ptr @memcpy(ptr %dirfh, ptr %1, i32 360)
  %fh = getelementptr inbounds %struct.nfsd3_diropres, ptr %3, i32 0, i32 2
  %31 = call ptr @memset(ptr %fh, i32 0, i32 360)
  %fh_maxsize.i = getelementptr inbounds %struct.nfsd3_diropres, ptr %3, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %fh_maxsize.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 64, ptr %fh_maxsize.i, align 4
  %fname29 = getelementptr inbounds %struct.nfsd3_symlinkargs, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %fname29 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fname29, align 8
  %flen30 = getelementptr inbounds %struct.nfsd3_symlinkargs, ptr %1, i32 0, i32 2
  %35 = ptrtoint ptr %flen30 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flen30, align 4
  %37 = ptrtoint ptr %tname to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tname, align 8
  %call33 = tail call i32 @nfsd_symlink(ptr noundef %rqstp, ptr noundef %dirfh, ptr noundef %34, i32 noundef %36, ptr noundef %38, ptr noundef %fh) #6
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call33, ptr %3, align 8
  %40 = ptrtoint ptr %tname to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tname, align 8
  tail call void @kfree(ptr noundef %41) #6
  br label %out

out:                                              ; preds = %fh_copy.exit, %if.then10, %if.then3, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs3svc_decode_symlinkargs(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd3_proc_mknod(ptr noundef %rqstp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call ptr @SVCFH_fmt(ptr noundef %1) #6
  %len = getelementptr inbounds %struct.nfsd3_mknodargs, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %name = getelementptr inbounds %struct.nfsd3_mknodargs, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %call, i32 noundef %6, ptr noundef %8) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %dirfh = getelementptr inbounds %struct.nfsd3_diropres, ptr %3, i32 0, i32 1
  %fh_dentry.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %fh_dentry.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fh_dentry.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %lor.rhs.i, label %do.end4.do.end.i_crit_edge

do.end4.do.end.i_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i:                                        ; preds = %do.end4
  %fh_locked.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fh_locked.i, align 8, !range !179
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool1.not.i = icmp eq i8 %12, 0
  br i1 %tobool1.not.i, label %lor.rhs.i.fh_copy.exit_crit_edge, label %lor.rhs.i.do.end.i_crit_edge, !prof !180

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i.fh_copy.exit_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fh_copy.exit

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %do.end4.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 228, i32 noundef 9, ptr noundef null) #6
  br label %fh_copy.exit

fh_copy.exit:                                     ; preds = %do.end.i, %lor.rhs.i.fh_copy.exit_crit_edge
  %13 = call ptr @memcpy(ptr %dirfh, ptr %1, i32 360)
  %fh7 = getelementptr inbounds %struct.nfsd3_diropres, ptr %3, i32 0, i32 2
  %14 = call ptr @memset(ptr %fh7, i32 0, i32 360)
  %fh_maxsize.i = getelementptr inbounds %struct.nfsd3_diropres, ptr %3, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %fh_maxsize.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 64, ptr %fh_maxsize.i, align 4
  %ftype = getelementptr inbounds %struct.nfsd3_mknodargs, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %ftype to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ftype, align 8
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %17, label %if.then24 [
    i32 4, label %fh_copy.exit.if.then11_crit_edge
    i32 3, label %fh_copy.exit.if.then11_crit_edge65
    i32 6, label %fh_copy.exit.if.end27_crit_edge
    i32 7, label %fh_copy.exit.if.end27_crit_edge66
  ]

fh_copy.exit.if.end27_crit_edge66:                ; preds = %fh_copy.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

fh_copy.exit.if.end27_crit_edge:                  ; preds = %fh_copy.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

fh_copy.exit.if.then11_crit_edge65:               ; preds = %fh_copy.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

fh_copy.exit.if.then11_crit_edge:                 ; preds = %fh_copy.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

if.then11:                                        ; preds = %fh_copy.exit.if.then11_crit_edge, %fh_copy.exit.if.then11_crit_edge65
  %major = getelementptr inbounds %struct.nfsd3_mknodargs, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %major to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %major, align 4
  %shl = shl i32 %20, 20
  %minor = getelementptr inbounds %struct.nfsd3_mknodargs, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %minor, align 8
  %or = or i32 %shl, %22
  %shr = lshr i32 %or, 20
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %20)
  %cmp13.not = icmp eq i32 %shr, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %22)
  %23 = icmp ult i32 %22, 1048576
  %or.cond = select i1 %cmp13.not, i1 %23, i1 false
  br i1 %or.cond, label %if.then11.if.end27_crit_edge, label %if.then18

if.then11.if.end27_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then18:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 22, ptr %3, align 8
  br label %out

if.then24:                                        ; preds = %fh_copy.exit
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 10007, ptr %3, align 8
  br label %out

if.end27:                                         ; preds = %if.then11.if.end27_crit_edge, %fh_copy.exit.if.end27_crit_edge, %fh_copy.exit.if.end27_crit_edge66
  %rdev.0 = phi i32 [ %or, %if.then11.if.end27_crit_edge ], [ 0, %fh_copy.exit.if.end27_crit_edge ], [ 0, %fh_copy.exit.if.end27_crit_edge66 ]
  %arrayidx = getelementptr [8 x i32], ptr @nfs3_ftypes, i32 0, i32 %17
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx, align 4
  %name30 = getelementptr inbounds %struct.nfsd3_mknodargs, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %name30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name30, align 8
  %len31 = getelementptr inbounds %struct.nfsd3_mknodargs, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %len31 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len31, align 4
  %attrs = getelementptr inbounds %struct.nfsd3_mknodargs, ptr %1, i32 0, i32 6
  %call33 = tail call i32 @nfsd_create(ptr noundef %rqstp, ptr noundef %dirfh, ptr noundef %29, i32 noundef %31, ptr noundef %attrs, i32 noundef %27, i32 noundef %rdev.0, ptr noundef %fh7) #6
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call33, ptr %3, align 8
  %fh_locked.i62 = getelementptr inbounds %struct.nfsd3_diropres, ptr %3, i32 0, i32 1, i32 4
  %33 = ptrtoint ptr %fh_locked.i62 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %fh_locked.i62, align 8, !range !179
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i63 = icmp eq i8 %34, 0
  br i1 %tobool.not.i63, label %if.end27.out_crit_edge, label %if.then.i

if.end27.out_crit_edge:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then.i:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @fh_fill_post_attrs(ptr noundef %dirfh) #6
  %fh_dentry.i64 = getelementptr inbounds %struct.nfsd3_diropres, ptr %3, i32 0, i32 1, i32 2
  %35 = ptrtoint ptr %fh_dentry.i64 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fh_dentry.i64, align 8
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %38, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i.i) #6
  %39 = ptrtoint ptr %fh_locked.i62 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %fh_locked.i62, align 8
  br label %out

out:                                              ; preds = %if.then.i, %if.end27.out_crit_edge, %if.then24, %if.then18
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs3svc_decode_mknodargs(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd3_proc_remove(ptr noundef %rqstp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call ptr @SVCFH_fmt(ptr noundef %1) #6
  %len = getelementptr inbounds %struct.nfsd3_diropargs, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %name = getelementptr inbounds %struct.nfsd3_diropargs, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %call, i32 noundef %6, ptr noundef %8) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %fh5 = getelementptr inbounds %struct.nfsd3_attrstat, ptr %3, i32 0, i32 1
  %fh_dentry.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %fh_dentry.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fh_dentry.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %lor.rhs.i, label %do.end4.do.end.i_crit_edge

do.end4.do.end.i_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i:                                        ; preds = %do.end4
  %fh_locked.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fh_locked.i, align 8, !range !179
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool1.not.i = icmp eq i8 %12, 0
  br i1 %tobool1.not.i, label %lor.rhs.i.fh_copy.exit_crit_edge, label %lor.rhs.i.do.end.i_crit_edge, !prof !180

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i.fh_copy.exit_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fh_copy.exit

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %do.end4.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 228, i32 noundef 9, ptr noundef null) #6
  br label %fh_copy.exit

fh_copy.exit:                                     ; preds = %do.end.i, %lor.rhs.i.fh_copy.exit_crit_edge
  %13 = call ptr @memcpy(ptr %fh5, ptr %1, i32 360)
  %name9 = getelementptr inbounds %struct.nfsd3_diropargs, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %name9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name9, align 8
  %len10 = getelementptr inbounds %struct.nfsd3_diropargs, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %len10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len10, align 4
  %call11 = tail call i32 @nfsd_unlink(ptr noundef %rqstp, ptr noundef %fh5, i32 noundef -16384, ptr noundef %15, i32 noundef %17) #6
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call11, ptr %3, align 8
  %fh_locked.i23 = getelementptr inbounds %struct.nfsd3_attrstat, ptr %3, i32 0, i32 1, i32 4
  %19 = ptrtoint ptr %fh_locked.i23 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %fh_locked.i23, align 8, !range !179
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i24 = icmp eq i8 %20, 0
  br i1 %tobool.not.i24, label %fh_copy.exit.fh_unlock.exit_crit_edge, label %if.then.i

fh_copy.exit.fh_unlock.exit_crit_edge:            ; preds = %fh_copy.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %fh_unlock.exit

if.then.i:                                        ; preds = %fh_copy.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @fh_fill_post_attrs(ptr noundef %fh5) #6
  %fh_dentry.i25 = getelementptr inbounds %struct.nfsd3_attrstat, ptr %3, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %fh_dentry.i25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fh_dentry.i25, align 8
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i.i) #6
  %25 = ptrtoint ptr %fh_locked.i23 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %fh_locked.i23, align 8
  br label %fh_unlock.exit

fh_unlock.exit:                                   ; preds = %if.then.i, %fh_copy.exit.fh_unlock.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd3_proc_rmdir(ptr noundef %rqstp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call ptr @SVCFH_fmt(ptr noundef %1) #6
  %len = getelementptr inbounds %struct.nfsd3_diropargs, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %name = getelementptr inbounds %struct.nfsd3_diropargs, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %call, i32 noundef %6, ptr noundef %8) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %fh5 = getelementptr inbounds %struct.nfsd3_attrstat, ptr %3, i32 0, i32 1
  %fh_dentry.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %fh_dentry.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fh_dentry.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %lor.rhs.i, label %do.end4.do.end.i_crit_edge

do.end4.do.end.i_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i:                                        ; preds = %do.end4
  %fh_locked.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fh_locked.i, align 8, !range !179
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool1.not.i = icmp eq i8 %12, 0
  br i1 %tobool1.not.i, label %lor.rhs.i.fh_copy.exit_crit_edge, label %lor.rhs.i.do.end.i_crit_edge, !prof !180

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i.fh_copy.exit_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fh_copy.exit

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %do.end4.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 228, i32 noundef 9, ptr noundef null) #6
  br label %fh_copy.exit

fh_copy.exit:                                     ; preds = %do.end.i, %lor.rhs.i.fh_copy.exit_crit_edge
  %13 = call ptr @memcpy(ptr %fh5, ptr %1, i32 360)
  %name9 = getelementptr inbounds %struct.nfsd3_diropargs, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %name9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name9, align 8
  %len10 = getelementptr inbounds %struct.nfsd3_diropargs, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %len10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len10, align 4
  %call11 = tail call i32 @nfsd_unlink(ptr noundef %rqstp, ptr noundef %fh5, i32 noundef 16384, ptr noundef %15, i32 noundef %17) #6
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call11, ptr %3, align 8
  %fh_locked.i23 = getelementptr inbounds %struct.nfsd3_attrstat, ptr %3, i32 0, i32 1, i32 4
  %19 = ptrtoint ptr %fh_locked.i23 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %fh_locked.i23, align 8, !range !179
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i24 = icmp eq i8 %20, 0
  br i1 %tobool.not.i24, label %fh_copy.exit.fh_unlock.exit_crit_edge, label %if.then.i

fh_copy.exit.fh_unlock.exit_crit_edge:            ; preds = %fh_copy.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %fh_unlock.exit

if.then.i:                                        ; preds = %fh_copy.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @fh_fill_post_attrs(ptr noundef %fh5) #6
  %fh_dentry.i25 = getelementptr inbounds %struct.nfsd3_attrstat, ptr %3, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %fh_dentry.i25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fh_dentry.i25, align 8
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i.i) #6
  %25 = ptrtoint ptr %fh_locked.i23 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %fh_locked.i23, align 8
  br label %fh_unlock.exit

fh_unlock.exit:                                   ; preds = %if.then.i, %fh_copy.exit.fh_unlock.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd3_proc_rename(ptr noundef %rqstp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  br i1 %tobool.not, label %entry.do.body5_crit_edge, label %do.end

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call ptr @SVCFH_fmt(ptr noundef %1) #6
  %flen = getelementptr inbounds %struct.nfsd3_renameargs, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %flen to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flen, align 4
  %fname = getelementptr inbounds %struct.nfsd3_renameargs, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %fname to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fname, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %call, i32 noundef %6, ptr noundef %8) #9
  br label %do.body5

do.body5:                                         ; preds = %do.end, %entry.do.body5_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %9 = load i32, ptr @nfsd_debug, align 4
  %and6 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %do.body5.do.end17_crit_edge, label %do.end11

do.body5.do.end17_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

do.end11:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  %tfh = getelementptr inbounds %struct.nfsd3_renameargs, ptr %1, i32 0, i32 3
  %call13 = tail call ptr @SVCFH_fmt(ptr noundef %tfh) #6
  %tlen = getelementptr inbounds %struct.nfsd3_renameargs, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %tlen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tlen, align 4
  %tname = getelementptr inbounds %struct.nfsd3_renameargs, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %tname to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tname, align 8
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %call13, i32 noundef %11, ptr noundef %13) #9
  br label %do.end17

do.end17:                                         ; preds = %do.end11, %do.body5.do.end17_crit_edge
  %ffh18 = getelementptr inbounds %struct.nfsd3_renameres, ptr %3, i32 0, i32 1
  %fh_dentry.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %fh_dentry.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fh_dentry.i, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %lor.rhs.i, label %do.end17.do.end.i_crit_edge

do.end17.do.end.i_crit_edge:                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i:                                        ; preds = %do.end17
  %fh_locked.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %fh_locked.i, align 8, !range !179
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool1.not.i = icmp eq i8 %17, 0
  br i1 %tobool1.not.i, label %lor.rhs.i.fh_copy.exit_crit_edge, label %lor.rhs.i.do.end.i_crit_edge, !prof !180

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i.fh_copy.exit_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fh_copy.exit

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %do.end17.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 228, i32 noundef 9, ptr noundef null) #6
  br label %fh_copy.exit

fh_copy.exit:                                     ; preds = %do.end.i, %lor.rhs.i.fh_copy.exit_crit_edge
  %18 = call ptr @memcpy(ptr %ffh18, ptr %1, i32 360)
  %fh_dentry.i48 = getelementptr inbounds %struct.nfsd3_renameargs, ptr %1, i32 0, i32 3, i32 2
  %19 = ptrtoint ptr %fh_dentry.i48 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fh_dentry.i48, align 8
  %tobool.not.i49 = icmp eq ptr %20, null
  br i1 %tobool.not.i49, label %lor.rhs.i52, label %fh_copy.exit.do.end.i53_crit_edge

fh_copy.exit.do.end.i53_crit_edge:                ; preds = %fh_copy.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i53

lor.rhs.i52:                                      ; preds = %fh_copy.exit
  %fh_locked.i50 = getelementptr inbounds %struct.nfsd3_renameargs, ptr %1, i32 0, i32 3, i32 4
  %21 = ptrtoint ptr %fh_locked.i50 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %fh_locked.i50, align 8, !range !179
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool1.not.i51 = icmp eq i8 %22, 0
  br i1 %tobool1.not.i51, label %lor.rhs.i52.fh_copy.exit54_crit_edge, label %lor.rhs.i52.do.end.i53_crit_edge, !prof !180

lor.rhs.i52.do.end.i53_crit_edge:                 ; preds = %lor.rhs.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i53

lor.rhs.i52.fh_copy.exit54_crit_edge:             ; preds = %lor.rhs.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %fh_copy.exit54

do.end.i53:                                       ; preds = %lor.rhs.i52.do.end.i53_crit_edge, %fh_copy.exit.do.end.i53_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 228, i32 noundef 9, ptr noundef null) #6
  br label %fh_copy.exit54

fh_copy.exit54:                                   ; preds = %do.end.i53, %lor.rhs.i52.fh_copy.exit54_crit_edge
  %tfh22 = getelementptr inbounds %struct.nfsd3_renameargs, ptr %1, i32 0, i32 3
  %tfh21 = getelementptr inbounds %struct.nfsd3_renameres, ptr %3, i32 0, i32 2
  %23 = call ptr @memcpy(ptr %tfh21, ptr %tfh22, i32 360)
  %fname25 = getelementptr inbounds %struct.nfsd3_renameargs, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %fname25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fname25, align 8
  %flen26 = getelementptr inbounds %struct.nfsd3_renameargs, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %flen26 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flen26, align 4
  %tname28 = getelementptr inbounds %struct.nfsd3_renameargs, ptr %1, i32 0, i32 4
  %28 = ptrtoint ptr %tname28 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tname28, align 8
  %tlen29 = getelementptr inbounds %struct.nfsd3_renameargs, ptr %1, i32 0, i32 5
  %30 = ptrtoint ptr %tlen29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tlen29, align 4
  %call30 = tail call i32 @nfsd_rename(ptr noundef %rqstp, ptr noundef %ffh18, ptr noundef %25, i32 noundef %27, ptr noundef %tfh21, ptr noundef %29, i32 noundef %31) #6
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call30, ptr %3, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs3svc_decode_renameargs(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs3svc_encode_renameres(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd3_proc_link(ptr noundef %rqstp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  br i1 %tobool.not, label %entry.do.body5_crit_edge, label %do.end

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call ptr @SVCFH_fmt(ptr noundef %1) #6
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %call) #9
  br label %do.body5

do.body5:                                         ; preds = %do.end, %entry.do.body5_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %5 = load i32, ptr @nfsd_debug, align 4
  %and6 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %do.body5.do.end17_crit_edge, label %do.end11

do.body5.do.end17_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

do.end11:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  %tfh = getelementptr inbounds %struct.nfsd3_linkargs, ptr %1, i32 0, i32 1
  %call13 = tail call ptr @SVCFH_fmt(ptr noundef %tfh) #6
  %tlen = getelementptr inbounds %struct.nfsd3_linkargs, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %tlen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tlen, align 4
  %tname = getelementptr inbounds %struct.nfsd3_linkargs, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %tname to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tname, align 8
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %call13, i32 noundef %7, ptr noundef %9) #9
  br label %do.end17

do.end17:                                         ; preds = %do.end11, %do.body5.do.end17_crit_edge
  %fh = getelementptr inbounds %struct.nfsd3_linkres, ptr %3, i32 0, i32 2
  %fh_dentry.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %fh_dentry.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fh_dentry.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %lor.rhs.i, label %do.end17.do.end.i_crit_edge

do.end17.do.end.i_crit_edge:                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i:                                        ; preds = %do.end17
  %fh_locked.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %fh_locked.i, align 8, !range !179
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool1.not.i = icmp eq i8 %13, 0
  br i1 %tobool1.not.i, label %lor.rhs.i.fh_copy.exit_crit_edge, label %lor.rhs.i.do.end.i_crit_edge, !prof !180

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i.fh_copy.exit_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fh_copy.exit

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %do.end17.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 228, i32 noundef 9, ptr noundef null) #6
  br label %fh_copy.exit

fh_copy.exit:                                     ; preds = %do.end.i, %lor.rhs.i.fh_copy.exit_crit_edge
  %14 = call ptr @memcpy(ptr %fh, ptr %1, i32 360)
  %fh_dentry.i41 = getelementptr inbounds %struct.nfsd3_linkargs, ptr %1, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %fh_dentry.i41 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fh_dentry.i41, align 8
  %tobool.not.i42 = icmp eq ptr %16, null
  br i1 %tobool.not.i42, label %lor.rhs.i45, label %fh_copy.exit.do.end.i46_crit_edge

fh_copy.exit.do.end.i46_crit_edge:                ; preds = %fh_copy.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i46

lor.rhs.i45:                                      ; preds = %fh_copy.exit
  %fh_locked.i43 = getelementptr inbounds %struct.nfsd3_linkargs, ptr %1, i32 0, i32 1, i32 4
  %17 = ptrtoint ptr %fh_locked.i43 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %fh_locked.i43, align 8, !range !179
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool1.not.i44 = icmp eq i8 %18, 0
  br i1 %tobool1.not.i44, label %lor.rhs.i45.fh_copy.exit47_crit_edge, label %lor.rhs.i45.do.end.i46_crit_edge, !prof !180

lor.rhs.i45.do.end.i46_crit_edge:                 ; preds = %lor.rhs.i45
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i46

lor.rhs.i45.fh_copy.exit47_crit_edge:             ; preds = %lor.rhs.i45
  call void @__sanitizer_cov_trace_pc() #8
  br label %fh_copy.exit47

do.end.i46:                                       ; preds = %lor.rhs.i45.do.end.i46_crit_edge, %fh_copy.exit.do.end.i46_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 228, i32 noundef 9, ptr noundef null) #6
  br label %fh_copy.exit47

fh_copy.exit47:                                   ; preds = %do.end.i46, %lor.rhs.i45.fh_copy.exit47_crit_edge
  %tfh21 = getelementptr inbounds %struct.nfsd3_linkargs, ptr %1, i32 0, i32 1
  %tfh20 = getelementptr inbounds %struct.nfsd3_linkres, ptr %3, i32 0, i32 1
  %19 = call ptr @memcpy(ptr %tfh20, ptr %tfh21, i32 360)
  %tname24 = getelementptr inbounds %struct.nfsd3_linkargs, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %tname24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tname24, align 8
  %tlen25 = getelementptr inbounds %struct.nfsd3_linkargs, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %tlen25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tlen25, align 4
  %call27 = tail call i32 @nfsd_link(ptr noundef %rqstp, ptr noundef %tfh20, ptr noundef %21, i32 noundef %23, ptr noundef %fh) #6
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call27, ptr %3, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs3svc_decode_linkargs(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs3svc_encode_linkres(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd3_proc_readdir(ptr noundef %rqstp) #2 align 64 {
entry:
  %offset = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %2 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_resp, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %offset) #6
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %offset, align 8, !annotation !181
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %5 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call ptr @SVCFH_fmt(ptr noundef %1) #6
  %count = getelementptr inbounds %struct.nfsd3_readdirargs, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 8
  %cookie = getelementptr inbounds %struct.nfsd3_readdirargs, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %cookie to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %cookie, align 8
  %conv = trunc i64 %9 to i32
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %call, i32 noundef %7, i32 noundef %conv) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %count5 = getelementptr inbounds %struct.nfsd3_readdirargs, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %count5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count5, align 8
  %dirlist.i = getelementptr inbounds %struct.nfsd3_readdirres, ptr %3, i32 0, i32 4
  %xdr1.i = getelementptr inbounds %struct.nfsd3_readdirres, ptr %3, i32 0, i32 3
  %12 = tail call i32 @llvm.umax.i32(i32 %11, i32 8) #6
  %call.i = tail call i32 @svc_max_payload(ptr noundef %rqstp) #6
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 %call.i) #6
  %14 = call ptr @memset(ptr %dirlist.i, i32 0, i32 44)
  %sub.i = add i32 %13, -8
  %buflen.i = getelementptr inbounds %struct.nfsd3_readdirres, ptr %3, i32 0, i32 4, i32 7
  %15 = ptrtoint ptr %buflen.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub.i, ptr %buflen.i, align 4
  %rq_next_page.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 22
  %16 = ptrtoint ptr %rq_next_page.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rq_next_page.i, align 8
  %pages.i = getelementptr inbounds %struct.nfsd3_readdirres, ptr %3, i32 0, i32 4, i32 3
  %18 = ptrtoint ptr %pages.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %pages.i, align 4
  %sub9.i = add i32 %13, 4087
  %shr.i = lshr i32 %sub9.i, 12
  %19 = load ptr, ptr %rq_next_page.i, align 8
  %add.ptr.i = getelementptr ptr, ptr %19, i32 %shr.i
  store ptr %add.ptr.i, ptr %rq_next_page.i, align 8
  %scratch.i.i = getelementptr inbounds %struct.nfsd3_readdirres, ptr %3, i32 0, i32 3, i32 4
  %20 = ptrtoint ptr %scratch.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %scratch.i.i, align 4
  %iov_len.i.i = getelementptr inbounds %struct.nfsd3_readdirres, ptr %3, i32 0, i32 3, i32 4, i32 1
  %21 = ptrtoint ptr %iov_len.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %iov_len.i.i, align 4
  %buf11.i = getelementptr inbounds %struct.nfsd3_readdirres, ptr %3, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %buf11.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dirlist.i, ptr %buf11.i, align 4
  %23 = load ptr, ptr %pages.i, align 4
  %page_ptr.i = getelementptr inbounds %struct.nfsd3_readdirres, ptr %3, i32 0, i32 3, i32 5
  %24 = ptrtoint ptr %page_ptr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %page_ptr.i, align 4
  %iov.i = getelementptr inbounds %struct.nfsd3_readdirres, ptr %3, i32 0, i32 3, i32 3
  %25 = ptrtoint ptr %iov.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %iov.i, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 4
  %call14.i = tail call ptr @page_address(ptr noundef %27) #6
  %28 = ptrtoint ptr %xdr1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call14.i, ptr %xdr1.i, align 4
  %29 = ptrtoint ptr %buflen.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %buflen.i, align 4
  %31 = tail call i32 @llvm.umin.i32(i32 %30, i32 4096) #6
  %add.ptr23.i = getelementptr i8, ptr %call14.i, i32 %31
  %end.i = getelementptr inbounds %struct.nfsd3_readdirres, ptr %3, i32 0, i32 3, i32 2
  %32 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr23.i, ptr %end.i, align 4
  %rqst.i = getelementptr inbounds %struct.nfsd3_readdirres, ptr %3, i32 0, i32 3, i32 7
  %33 = ptrtoint ptr %rqst.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %rqst.i, align 4
  %fh_dentry.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %fh_dentry.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fh_dentry.i, align 8
  %tobool.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i, label %lor.rhs.i, label %do.end4.do.end.i_crit_edge

do.end4.do.end.i_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i:                                        ; preds = %do.end4
  %fh_locked.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 4
  %36 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %fh_locked.i, align 8, !range !179
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool1.not.i = icmp eq i8 %37, 0
  br i1 %tobool1.not.i, label %lor.rhs.i.fh_copy.exit_crit_edge, label %lor.rhs.i.do.end.i_crit_edge, !prof !180

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i.fh_copy.exit_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fh_copy.exit

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %do.end4.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 228, i32 noundef 9, ptr noundef null) #6
  br label %fh_copy.exit

fh_copy.exit:                                     ; preds = %do.end.i, %lor.rhs.i.fh_copy.exit_crit_edge
  %fh6 = getelementptr inbounds %struct.nfsd3_readdirres, ptr %3, i32 0, i32 1
  %38 = call ptr @memcpy(ptr %fh6, ptr %1, i32 360)
  %common = getelementptr inbounds %struct.nfsd3_readdirres, ptr %3, i32 0, i32 6
  %39 = ptrtoint ptr %common to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %common, align 8
  %cookie_offset = getelementptr inbounds %struct.nfsd3_readdirres, ptr %3, i32 0, i32 7
  %40 = ptrtoint ptr %cookie_offset to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %cookie_offset, align 4
  %rqstp9 = getelementptr inbounds %struct.nfsd3_readdirres, ptr %3, i32 0, i32 8
  %41 = ptrtoint ptr %rqstp9 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %rqstp, ptr %rqstp9, align 8
  %cookie10 = getelementptr inbounds %struct.nfsd3_readdirargs, ptr %1, i32 0, i32 1
  %42 = ptrtoint ptr %cookie10 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %cookie10, align 8
  %44 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %offset, align 8
  %call13 = call i32 @nfsd_readdir(ptr noundef %rqstp, ptr noundef %fh6, ptr noundef nonnull %offset, ptr noundef %common, ptr noundef nonnull @nfs3svc_encode_entry3) #6
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call13, ptr %3, align 8
  %verf = getelementptr inbounds %struct.nfsd3_readdirres, ptr %3, i32 0, i32 2
  %verf14 = getelementptr inbounds %struct.nfsd3_readdirargs, ptr %1, i32 0, i32 3
  %46 = ptrtoint ptr %verf14 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %verf14, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 8)
  %49 = load i64, ptr %47, align 4
  %50 = ptrtoint ptr %verf to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %verf, align 8
  %51 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %offset, align 8
  call void @nfs3svc_encode_cookie3(ptr noundef %3, i64 noundef %52) #6
  %53 = ptrtoint ptr %page_ptr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %page_ptr.i, align 8
  %add.ptr = getelementptr ptr, ptr %54, i32 1
  %55 = ptrtoint ptr %rq_next_page.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %add.ptr, ptr %rq_next_page.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %offset) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs3svc_decode_readdirargs(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs3svc_encode_readdirres(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd3_proc_readdirplus(ptr noundef %rqstp) #2 align 64 {
entry:
  %offset = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %2 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_resp, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %offset) #6
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %offset, align 8, !annotation !181
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %5 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call ptr @SVCFH_fmt(ptr noundef %1) #6
  %count = getelementptr inbounds %struct.nfsd3_readdirargs, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 8
  %cookie = getelementptr inbounds %struct.nfsd3_readdirargs, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %cookie to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %cookie, align 8
  %conv = trunc i64 %9 to i32
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %call, i32 noundef %7, i32 noundef %conv) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %count5 = getelementptr inbounds %struct.nfsd3_readdirargs, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %count5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count5, align 8
  %dirlist.i = getelementptr inbounds %struct.nfsd3_readdirres, ptr %3, i32 0, i32 4
  %xdr1.i = getelementptr inbounds %struct.nfsd3_readdirres, ptr %3, i32 0, i32 3
  %12 = tail call i32 @llvm.umax.i32(i32 %11, i32 8) #6
  %call.i = tail call i32 @svc_max_payload(ptr noundef %rqstp) #6
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 %call.i) #6
  %14 = call ptr @memset(ptr %dirlist.i, i32 0, i32 44)
  %sub.i = add i32 %13, -8
  %buflen.i = getelementptr inbounds %struct.nfsd3_readdirres, ptr %3, i32 0, i32 4, i32 7
  %15 = ptrtoint ptr %buflen.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub.i, ptr %buflen.i, align 4
  %rq_next_page.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 22
  %16 = ptrtoint ptr %rq_next_page.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rq_next_page.i, align 8
  %pages.i = getelementptr inbounds %struct.nfsd3_readdirres, ptr %3, i32 0, i32 4, i32 3
  %18 = ptrtoint ptr %pages.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %pages.i, align 4
  %sub9.i = add i32 %13, 4087
  %shr.i = lshr i32 %sub9.i, 12
  %19 = load ptr, ptr %rq_next_page.i, align 8
  %add.ptr.i = getelementptr ptr, ptr %19, i32 %shr.i
  store ptr %add.ptr.i, ptr %rq_next_page.i, align 8
  %scratch.i.i = getelementptr inbounds %struct.nfsd3_readdirres, ptr %3, i32 0, i32 3, i32 4
  %20 = ptrtoint ptr %scratch.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %scratch.i.i, align 4
  %iov_len.i.i = getelementptr inbounds %struct.nfsd3_readdirres, ptr %3, i32 0, i32 3, i32 4, i32 1
  %21 = ptrtoint ptr %iov_len.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %iov_len.i.i, align 4
  %buf11.i = getelementptr inbounds %struct.nfsd3_readdirres, ptr %3, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %buf11.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dirlist.i, ptr %buf11.i, align 4
  %23 = load ptr, ptr %pages.i, align 4
  %page_ptr.i = getelementptr inbounds %struct.nfsd3_readdirres, ptr %3, i32 0, i32 3, i32 5
  %24 = ptrtoint ptr %page_ptr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %page_ptr.i, align 4
  %iov.i = getelementptr inbounds %struct.nfsd3_readdirres, ptr %3, i32 0, i32 3, i32 3
  %25 = ptrtoint ptr %iov.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %iov.i, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 4
  %call14.i = tail call ptr @page_address(ptr noundef %27) #6
  %28 = ptrtoint ptr %xdr1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call14.i, ptr %xdr1.i, align 4
  %29 = ptrtoint ptr %buflen.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %buflen.i, align 4
  %31 = tail call i32 @llvm.umin.i32(i32 %30, i32 4096) #6
  %add.ptr23.i = getelementptr i8, ptr %call14.i, i32 %31
  %end.i = getelementptr inbounds %struct.nfsd3_readdirres, ptr %3, i32 0, i32 3, i32 2
  %32 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr23.i, ptr %end.i, align 4
  %rqst.i = getelementptr inbounds %struct.nfsd3_readdirres, ptr %3, i32 0, i32 3, i32 7
  %33 = ptrtoint ptr %rqst.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %rqst.i, align 4
  %fh6 = getelementptr inbounds %struct.nfsd3_readdirres, ptr %3, i32 0, i32 1
  %fh_dentry.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %fh_dentry.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fh_dentry.i, align 8
  %tobool.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i, label %lor.rhs.i, label %do.end4.do.end.i_crit_edge

do.end4.do.end.i_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i:                                        ; preds = %do.end4
  %fh_locked.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 4
  %36 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %fh_locked.i, align 8, !range !179
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool1.not.i = icmp eq i8 %37, 0
  br i1 %tobool1.not.i, label %lor.rhs.i.fh_copy.exit_crit_edge, label %lor.rhs.i.do.end.i_crit_edge, !prof !180

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i.fh_copy.exit_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fh_copy.exit

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %do.end4.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 228, i32 noundef 9, ptr noundef null) #6
  br label %fh_copy.exit

fh_copy.exit:                                     ; preds = %do.end.i, %lor.rhs.i.fh_copy.exit_crit_edge
  %38 = call ptr @memcpy(ptr %fh6, ptr %1, i32 360)
  %common = getelementptr inbounds %struct.nfsd3_readdirres, ptr %3, i32 0, i32 6
  %39 = ptrtoint ptr %common to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %common, align 8
  %cookie_offset = getelementptr inbounds %struct.nfsd3_readdirres, ptr %3, i32 0, i32 7
  %40 = ptrtoint ptr %cookie_offset to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %cookie_offset, align 4
  %rqstp9 = getelementptr inbounds %struct.nfsd3_readdirres, ptr %3, i32 0, i32 8
  %41 = ptrtoint ptr %rqstp9 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %rqstp, ptr %rqstp9, align 8
  %cookie10 = getelementptr inbounds %struct.nfsd3_readdirargs, ptr %1, i32 0, i32 1
  %42 = ptrtoint ptr %cookie10 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %cookie10, align 8
  %44 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %offset, align 8
  %call12 = tail call i32 @fh_verify(ptr noundef %rqstp, ptr noundef %fh6, i16 noundef zeroext 16384, i32 noundef 0) #6
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call12, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp.not = icmp eq i32 %call12, 0
  br i1 %cmp.not, label %if.end16, label %fh_copy.exit.out_crit_edge

fh_copy.exit.out_crit_edge:                       ; preds = %fh_copy.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end16:                                         ; preds = %fh_copy.exit
  %fh_export = getelementptr inbounds %struct.nfsd3_readdirres, ptr %3, i32 0, i32 1, i32 3
  %46 = ptrtoint ptr %fh_export to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fh_export, align 4
  %ex_flags = getelementptr inbounds %struct.svc_export, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %ex_flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ex_flags, align 4
  %and18 = and i32 %49, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end22, label %if.then20

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 10004, ptr %3, align 8
  br label %out

if.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %call25 = call i32 @nfsd_readdir(ptr noundef %rqstp, ptr noundef %fh6, ptr noundef nonnull %offset, ptr noundef %common, ptr noundef nonnull @nfs3svc_encode_entryplus3) #6
  %51 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call25, ptr %3, align 8
  %verf = getelementptr inbounds %struct.nfsd3_readdirres, ptr %3, i32 0, i32 2
  %verf27 = getelementptr inbounds %struct.nfsd3_readdirargs, ptr %1, i32 0, i32 3
  %52 = ptrtoint ptr %verf27 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %verf27, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 8)
  %55 = load i64, ptr %53, align 4
  %56 = ptrtoint ptr %verf to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %verf, align 8
  %57 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %offset, align 8
  call void @nfs3svc_encode_cookie3(ptr noundef %3, i64 noundef %58) #6
  %59 = ptrtoint ptr %page_ptr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %page_ptr.i, align 8
  %add.ptr = getelementptr ptr, ptr %60, i32 1
  %61 = ptrtoint ptr %rq_next_page.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %add.ptr, ptr %rq_next_page.i, align 8
  br label %out

out:                                              ; preds = %if.end22, %if.then20, %fh_copy.exit.out_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %offset) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs3svc_decode_readdirplusargs(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd3_proc_fsstat(ptr noundef %rqstp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call ptr @SVCFH_fmt(ptr noundef %1) #6
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %call) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %stats = getelementptr inbounds %struct.nfsd3_fsstatres, ptr %3, i32 0, i32 1
  %call6 = tail call i32 @nfsd_statfs(ptr noundef %rqstp, ptr noundef %1, ptr noundef %stats, i32 noundef 0) #6
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call6, ptr %3, align 8
  tail call void @fh_put(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs3svc_encode_fsstatres(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd3_proc_fsinfo(ptr noundef %rqstp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %2 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_resp, align 4
  %call = tail call i32 @svc_max_payload(ptr noundef %rqstp) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %4 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call ptr @SVCFH_fmt(ptr noundef %1) #6
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %call2) #9
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %f_rtmax = getelementptr inbounds %struct.nfsd3_fsinfores, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %f_rtmax to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call, ptr %f_rtmax, align 4
  %f_rtpref = getelementptr inbounds %struct.nfsd3_fsinfores, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %f_rtpref to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call, ptr %f_rtpref, align 8
  %f_rtmult = getelementptr inbounds %struct.nfsd3_fsinfores, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %f_rtmult to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4096, ptr %f_rtmult, align 4
  %f_wtmax = getelementptr inbounds %struct.nfsd3_fsinfores, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %f_wtmax to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call, ptr %f_wtmax, align 8
  %f_wtpref = getelementptr inbounds %struct.nfsd3_fsinfores, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %f_wtpref to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call, ptr %f_wtpref, align 4
  %f_wtmult = getelementptr inbounds %struct.nfsd3_fsinfores, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %f_wtmult to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4096, ptr %f_wtmult, align 8
  %f_dtpref = getelementptr inbounds %struct.nfsd3_fsinfores, ptr %3, i32 0, i32 7
  %11 = ptrtoint ptr %f_dtpref to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call, ptr %f_dtpref, align 4
  %f_maxfilesize = getelementptr inbounds %struct.nfsd3_fsinfores, ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %f_maxfilesize to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 4294967295, ptr %f_maxfilesize, align 8
  %f_properties = getelementptr inbounds %struct.nfsd3_fsinfores, ptr %3, i32 0, i32 9
  %13 = ptrtoint ptr %f_properties to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 27, ptr %f_properties, align 8
  %call7 = tail call i32 @fh_verify(ptr noundef %rqstp, ptr noundef %1, i16 noundef zeroext 0, i32 noundef 256) #6
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call7, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp eq i32 %call7, 0
  br i1 %cmp, label %if.then9, label %do.end5.if.end16_crit_edge

do.end5.if.end16_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then9:                                         ; preds = %do.end5
  %fh_dentry = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fh_dentry, align 8
  %d_sb = getelementptr inbounds %struct.dentry, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_sb, align 4
  %s_magic = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %s_magic to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_magic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19780, i32 %20)
  %cmp11 = icmp eq i32 %20, 19780
  br i1 %cmp11, label %if.then12, label %if.then9.if.end14_crit_edge

if.then9.if.end14_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %f_properties to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 24, ptr %f_properties, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.then9.if.end14_crit_edge
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 4
  %22 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %s_maxbytes, align 8
  %24 = ptrtoint ptr %f_maxfilesize to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %f_maxfilesize, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.end14, %do.end5.if.end16_crit_edge
  tail call void @fh_put(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs3svc_encode_fsinfores(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd3_proc_pathconf(ptr noundef %rqstp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call ptr @SVCFH_fmt(ptr noundef %1) #6
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %call) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %p_link_max = getelementptr inbounds %struct.nfsd3_pathconfres, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %p_link_max to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 255, ptr %p_link_max, align 4
  %p_name_max = getelementptr inbounds %struct.nfsd3_pathconfres, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %p_name_max to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 255, ptr %p_name_max, align 4
  %p_no_trunc = getelementptr inbounds %struct.nfsd3_pathconfres, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %p_no_trunc to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %p_no_trunc, align 4
  %p_chown_restricted = getelementptr inbounds %struct.nfsd3_pathconfres, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %p_chown_restricted to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %p_chown_restricted, align 4
  %p_case_insensitive = getelementptr inbounds %struct.nfsd3_pathconfres, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %p_case_insensitive to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %p_case_insensitive, align 4
  %p_case_preserving = getelementptr inbounds %struct.nfsd3_pathconfres, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %p_case_preserving to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %p_case_preserving, align 4
  %call6 = tail call i32 @fh_verify(ptr noundef %rqstp, ptr noundef %1, i16 noundef zeroext 0, i32 noundef 0) #6
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call6, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp eq i32 %call6, 0
  br i1 %cmp, label %if.then8, label %do.end4.if.end15_crit_edge

do.end4.if.end15_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then8:                                         ; preds = %do.end4
  %fh_dentry = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fh_dentry, align 8
  %d_sb = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %d_sb, align 4
  %s_magic = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %s_magic to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_magic, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %17, label %if.then8.if.end15_crit_edge [
    i32 61267, label %sw.bb
    i32 19780, label %sw.bb12
  ]

if.then8.if.end15_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

sw.bb:                                            ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %p_link_max to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 32000, ptr %p_link_max, align 4
  %20 = ptrtoint ptr %p_name_max to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 255, ptr %p_name_max, align 4
  br label %if.end15

sw.bb12:                                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %p_case_insensitive to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %p_case_insensitive, align 4
  %22 = ptrtoint ptr %p_case_preserving to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %p_case_preserving, align 4
  br label %if.end15

if.end15:                                         ; preds = %sw.bb12, %sw.bb, %if.then8.if.end15_crit_edge, %do.end4.if.end15_crit_edge
  tail call void @fh_put(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs3svc_encode_pathconfres(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd3_proc_commit(ptr noundef %rqstp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call ptr @SVCFH_fmt(ptr noundef %1) #6
  %count = getelementptr inbounds %struct.nfsd3_commitargs, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count, align 8
  %offset = getelementptr inbounds %struct.nfsd3_commitargs, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %offset, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %call, i32 noundef %6, i64 noundef %8) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %fh_dentry.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %fh_dentry.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fh_dentry.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %lor.rhs.i, label %do.end4.do.end.i_crit_edge

do.end4.do.end.i_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i:                                        ; preds = %do.end4
  %fh_locked.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fh_locked.i, align 8, !range !179
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool1.not.i = icmp eq i8 %12, 0
  br i1 %tobool1.not.i, label %lor.rhs.i.fh_copy.exit_crit_edge, label %lor.rhs.i.do.end.i_crit_edge, !prof !180

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i.fh_copy.exit_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fh_copy.exit

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %do.end4.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 228, i32 noundef 9, ptr noundef null) #6
  br label %fh_copy.exit

fh_copy.exit:                                     ; preds = %do.end.i, %lor.rhs.i.fh_copy.exit_crit_edge
  %fh5 = getelementptr inbounds %struct.nfsd3_commitres, ptr %3, i32 0, i32 1
  %13 = call ptr @memcpy(ptr %fh5, ptr %1, i32 360)
  %offset9 = getelementptr inbounds %struct.nfsd3_commitargs, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %offset9 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %offset9, align 8
  %count10 = getelementptr inbounds %struct.nfsd3_commitargs, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %count10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count10, align 8
  %verf = getelementptr inbounds %struct.nfsd3_commitres, ptr %3, i32 0, i32 2
  %call11 = tail call i32 @nfsd_commit(ptr noundef %rqstp, ptr noundef %fh5, i64 noundef %15, i32 noundef %17, ptr noundef %verf) #6
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call11, ptr %3, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs3svc_decode_commitargs(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs3svc_encode_commitres(ptr noundef, ptr noundef) #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @SVCFH_fmt(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fh_verify(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfserrno(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_getattr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_setattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_lookup(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_access(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_readlink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_max_payload(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_read(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_reserve(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_fill_write_vector(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_write(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_nfsd_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @fh_fill_post_attrs(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @svc_fill_symlink_pathname(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_symlink(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_unlink(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_rename(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_link(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_readdir(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs3svc_encode_entry3(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs3svc_encode_cookie3(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs3svc_encode_entryplus3(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_statfs(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @fh_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_commit(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !53, !54, !55, !56, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !110, !112, !114, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !133, !134, !135, !136, !138, !139, !140, !142, !143, !144, !145, !147, !148, !149, !150, !152, !153, !154, !155, !157, !158, !159, !160, !162, !163, !164, !165, !167, !168, !169}
!llvm.module.flags = !{!170, !171, !172, !173, !174, !175, !176, !177}
!llvm.ident = !{!178}

!0 = !{ptr @nfsd_version3, !1, !"nfsd_version3", i1 false, i1 false}
!1 = !{!"../fs/nfsd/nfs3proc.c", i32 929, i32 26}
!2 = !{ptr @nfsd_count3, !3, !"nfsd_count3", i1 false, i1 false}
!3 = !{!"../fs/nfsd/nfs3proc.c", i32 928, i32 21}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/nfsd/nfs3proc.c", i32 698, i32 14}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/nfsd/nfs3proc.c", i32 709, i32 14}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/nfsd/nfs3proc.c", i32 720, i32 14}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/nfsd/nfs3proc.c", i32 731, i32 14}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/nfsd/nfs3proc.c", i32 742, i32 14}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/nfsd/nfs3proc.c", i32 753, i32 14}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/nfsd/nfs3proc.c", i32 764, i32 14}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/nfsd/nfs3proc.c", i32 775, i32 14}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/nfsd/nfs3proc.c", i32 786, i32 14}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/nfsd/nfs3proc.c", i32 797, i32 14}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/nfsd/nfs3proc.c", i32 808, i32 14}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/nfsd/nfs3proc.c", i32 819, i32 14}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/nfsd/nfs3proc.c", i32 830, i32 14}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/nfsd/nfs3proc.c", i32 841, i32 14}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/nfsd/nfs3proc.c", i32 852, i32 14}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/nfsd/nfs3proc.c", i32 863, i32 14}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/nfsd/nfs3proc.c", i32 873, i32 14}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/nfsd/nfs3proc.c", i32 883, i32 14}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/nfsd/nfs3proc.c", i32 893, i32 14}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/nfsd/nfs3proc.c", i32 903, i32 14}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/nfsd/nfs3proc.c", i32 913, i32 14}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/nfsd/nfs3proc.c", i32 924, i32 14}
!48 = !{ptr @nfsd_procedures3, !49, !"nfsd_procedures3", i1 false, i1 false}
!49 = !{!"../fs/nfsd/nfs3proc.c", i32 689, i32 35}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/nfsd/nfs3proc.c", i32 47, i32 2}
!52 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @nfsd3_proc_getattr._entry, !51, !"_entry", i1 false, i1 false}
!55 = !{ptr @nfsd3_proc_getattr._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/nfsd/nfsfh.h", i32 228, i32 2}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/nfsd/nfs3proc.c", i32 70, i32 2}
!60 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @nfsd3_proc_setattr._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @nfsd3_proc_setattr._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/nfsd/nfs3proc.c", i32 88, i32 2}
!65 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @nfsd3_proc_lookup._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @nfsd3_proc_lookup._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/nfsd/nfs3proc.c", i32 111, i32 2}
!70 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @nfsd3_proc_access._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @nfsd3_proc_access._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/nfsd/nfs3proc.c", i32 130, i32 2}
!75 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @nfsd3_proc_readlink._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @nfsd3_proc_readlink._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/nfsd/nfs3proc.c", i32 153, i32 2}
!80 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @nfsd3_proc_read._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @nfsd3_proc_read._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/nfsd/nfs3proc.c", i32 200, i32 2}
!85 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @nfsd3_proc_write._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @nfsd3_proc_write._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/nfsd/nfs3proc.c", i32 235, i32 2}
!92 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @nfsd3_proc_create._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @nfsd3_proc_create._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/nfsd/nfs3proc.c", i32 269, i32 2}
!97 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @nfsd3_proc_mkdir._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @nfsd3_proc_mkdir._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/nfsd/nfs3proc.c", i32 306, i32 2}
!102 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @nfsd3_proc_symlink._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @nfsd3_proc_symlink._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/nfsd/nfs3proc.c", i32 331, i32 2}
!107 = !{ptr @.str.47, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @nfsd3_proc_mknod._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @nfsd3_proc_mknod._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @nfs3_ftypes, !111, !"nfs3_ftypes", i1 false, i1 false}
!111 = !{!"../fs/nfsd/nfs3proc.c", i32 18, i32 12}
!112 = !{ptr @.str.48, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/nfsd/nfs3proc.c", i32 368, i32 2}
!114 = !{ptr @.str.49, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @nfsd3_proc_remove._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @nfsd3_proc_remove._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.50, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/nfsd/nfs3proc.c", i32 390, i32 2}
!119 = !{ptr @.str.51, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @nfsd3_proc_rmdir._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @nfsd3_proc_rmdir._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.52, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/nfsd/nfs3proc.c", i32 408, i32 2}
!124 = !{ptr @.str.53, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @nfsd3_proc_rename._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @nfsd3_proc_rename._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.55, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/nfsd/nfs3proc.c", i32 412, i32 2}
!129 = !{ptr @nfsd3_proc_rename._entry.54, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @nfsd3_proc_rename._entry_ptr.56, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.57, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../fs/nfsd/nfs3proc.c", i32 430, i32 2}
!133 = !{ptr @.str.58, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @nfsd3_proc_link._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @nfsd3_proc_link._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.60, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/nfsd/nfs3proc.c", i32 432, i32 2}
!138 = !{ptr @nfsd3_proc_link._entry.59, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @nfsd3_proc_link._entry_ptr.61, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.62, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/nfsd/nfs3proc.c", i32 481, i32 2}
!142 = !{ptr @.str.63, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @nfsd3_proc_readdir._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @nfsd3_proc_readdir._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.64, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../fs/nfsd/nfs3proc.c", i32 514, i32 2}
!147 = !{ptr @.str.65, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @nfsd3_proc_readdirplus._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @nfsd3_proc_readdirplus._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.66, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../fs/nfsd/nfs3proc.c", i32 556, i32 2}
!152 = !{ptr @.str.67, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @nfsd3_proc_fsstat._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @nfsd3_proc_fsstat._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.68, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../fs/nfsd/nfs3proc.c", i32 574, i32 2}
!157 = !{ptr @.str.69, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @nfsd3_proc_fsinfo._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @nfsd3_proc_fsinfo._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.70, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../fs/nfsd/nfs3proc.c", i32 616, i32 2}
!162 = !{ptr @.str.71, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @nfsd3_proc_pathconf._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @nfsd3_proc_pathconf._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.72, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../fs/nfsd/nfs3proc.c", i32 658, i32 2}
!167 = !{ptr @.str.73, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @nfsd3_proc_commit._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @nfsd3_proc_commit._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{i32 1, !"wchar_size", i32 2}
!171 = !{i32 1, !"min_enum_size", i32 4}
!172 = !{i32 8, !"branch-target-enforcement", i32 0}
!173 = !{i32 8, !"sign-return-address", i32 0}
!174 = !{i32 8, !"sign-return-address-all", i32 0}
!175 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!176 = !{i32 7, !"uwtable", i32 1}
!177 = !{i32 7, !"frame-pointer", i32 2}
!178 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!179 = !{i8 0, i8 2}
!180 = !{!"branch_weights", i32 2000, i32 1}
!181 = !{!"auto-init"}
