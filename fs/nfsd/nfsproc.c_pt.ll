; ModuleID = '/llk/IR_all_yes/fs/nfsd/nfsproc.c_pt.bc'
source_filename = "../fs/nfsd/nfsproc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.svc_procedure = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.svc_version = type { i32, i32, ptr, ptr, i32, i8, i8, i8, ptr }
%struct.anon.156 = type { i32, i32 }
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
%struct.nfsd_attrstat = type { i32, %struct.svc_fh, %struct.kstat }
%struct.svc_fh = type { %struct.knfsd_fh, i32, ptr, ptr, i8, i8, i8, i8, i32, i8, i8, i64, %struct.timespec64, %struct.timespec64, i64, %struct.kstat, i64 }
%struct.knfsd_fh = type { i32, %union.anon.157 }
%union.anon.157 = type { %struct.anon.158, [124 x i8] }
%struct.anon.158 = type { i8, i8, i8, i8, [0 x i32] }
%struct.timespec64 = type { i64, i32 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.svc_export = type { %struct.cache_head, ptr, i32, %struct.path, %struct.kuid_t, %struct.kgid_t, i32, ptr, %struct.nfsd4_fs_locations, i32, [8 x %struct.exp_flavor_info], i32, ptr, ptr, %struct.callback_head, %struct.export_stats }
%struct.cache_head = type { %struct.hlist_node, i64, i64, %struct.kref, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.nfsd4_fs_locations = type { i32, ptr, i32 }
%struct.exp_flavor_info = type { i32, i32 }
%struct.export_stats = type { i64, [3 x %struct.percpu_counter] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.nfsd_sattrargs = type { %struct.svc_fh, %struct.iattr }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.nfsd_diropargs = type { %struct.svc_fh, ptr, i32 }
%struct.nfsd_diropres = type { i32, %struct.svc_fh, %struct.kstat }
%struct.nfsd_readlinkres = type { i32, i32, ptr }
%struct.nfsd_readargs = type { %struct.svc_fh, i32, i32 }
%struct.nfsd_readres = type { i32, %struct.svc_fh, i32, %struct.kstat, ptr }
%struct.nfsd_writeargs = type { %struct.svc_fh, i32, i32, %struct.xdr_buf }
%struct.nfsd_createargs = type { %struct.svc_fh, ptr, i32, %struct.iattr }
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
%union.anon.138 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.139 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.140 = type { ptr }
%struct.nfsd_renameargs = type { %struct.svc_fh, ptr, i32, %struct.svc_fh, ptr, i32 }
%struct.nfsd_linkargs = type { %struct.svc_fh, %struct.svc_fh, ptr, i32 }
%struct.nfsd_symlinkargs = type { %struct.svc_fh, ptr, i32, ptr, i32, %struct.iattr, %struct.kvec }
%struct.nfsd_readdirargs = type { %struct.svc_fh, i32, i32 }
%struct.nfsd_readdirres = type { i32, i32, %struct.xdr_stream, %struct.xdr_buf, %struct.readdir_cd, i32 }
%struct.readdir_cd = type { i32 }
%struct.nfsd_statfsres = type { i32, %struct.kstatfs }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }

@nfsd_procedures2 = internal constant { [18 x %struct.svc_procedure], [184 x i8] } { [18 x %struct.svc_procedure] [%struct.svc_procedure { ptr @nfsd_proc_null, ptr @nfssvc_decode_voidarg, ptr @nfssvc_encode_voidres, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @.str.2 }, %struct.svc_procedure { ptr @nfsd_proc_getattr, ptr @nfssvc_decode_fhandleargs, ptr @nfssvc_encode_attrstatres, ptr @nfssvc_release_attrstat, i32 360, i32 512, i32 0, i32 19, ptr @.str.3 }, %struct.svc_procedure { ptr @nfsd_proc_setattr, ptr @nfssvc_decode_sattrargs, ptr @nfssvc_encode_attrstatres, ptr @nfssvc_release_attrstat, i32 440, i32 512, i32 2, i32 19, ptr @.str.4 }, %struct.svc_procedure { ptr @nfsd_proc_root, ptr @nfssvc_decode_voidarg, ptr @nfssvc_encode_voidres, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @.str.5 }, %struct.svc_procedure { ptr @nfsd_proc_lookup, ptr @nfssvc_decode_diropargs, ptr @nfssvc_encode_diropres, ptr @nfssvc_release_diropres, i32 368, i32 512, i32 0, i32 27, ptr @.str.6 }, %struct.svc_procedure { ptr @nfsd_proc_readlink, ptr @nfssvc_decode_fhandleargs, ptr @nfssvc_encode_readlinkres, ptr null, i32 360, i32 12, i32 0, i32 258, ptr @.str.7 }, %struct.svc_procedure { ptr @nfsd_proc_read, ptr @nfssvc_decode_readargs, ptr @nfssvc_encode_readres, ptr @nfssvc_release_readres, i32 368, i32 528, i32 0, i32 2068, ptr @.str.8 }, %struct.svc_procedure { ptr @nfsd_proc_writecache, ptr @nfssvc_decode_voidarg, ptr @nfssvc_encode_voidres, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @.str.9 }, %struct.svc_procedure { ptr @nfsd_proc_write, ptr @nfssvc_decode_writeargs, ptr @nfssvc_encode_attrstatres, ptr @nfssvc_release_attrstat, i32 416, i32 512, i32 2, i32 19, ptr @.str.10 }, %struct.svc_procedure { ptr @nfsd_proc_create, ptr @nfssvc_decode_createargs, ptr @nfssvc_encode_diropres, ptr @nfssvc_release_diropres, i32 448, i32 512, i32 2, i32 27, ptr @.str.11 }, %struct.svc_procedure { ptr @nfsd_proc_remove, ptr @nfssvc_decode_diropargs, ptr @nfssvc_encode_statres, ptr null, i32 368, i32 4, i32 1, i32 1, ptr @.str.12 }, %struct.svc_procedure { ptr @nfsd_proc_rename, ptr @nfssvc_decode_renameargs, ptr @nfssvc_encode_statres, ptr null, i32 736, i32 4, i32 1, i32 1, ptr @.str.13 }, %struct.svc_procedure { ptr @nfsd_proc_link, ptr @nfssvc_decode_linkargs, ptr @nfssvc_encode_statres, ptr null, i32 728, i32 4, i32 1, i32 1, ptr @.str.14 }, %struct.svc_procedure { ptr @nfsd_proc_symlink, ptr @nfssvc_decode_symlinkargs, ptr @nfssvc_encode_statres, ptr null, i32 464, i32 4, i32 1, i32 1, ptr @.str.15 }, %struct.svc_procedure { ptr @nfsd_proc_mkdir, ptr @nfssvc_decode_createargs, ptr @nfssvc_encode_diropres, ptr @nfssvc_release_diropres, i32 448, i32 512, i32 2, i32 27, ptr @.str.16 }, %struct.svc_procedure { ptr @nfsd_proc_rmdir, ptr @nfssvc_decode_diropargs, ptr @nfssvc_encode_statres, ptr null, i32 368, i32 4, i32 1, i32 1, ptr @.str.17 }, %struct.svc_procedure { ptr @nfsd_proc_readdir, ptr @nfssvc_decode_readdirargs, ptr @nfssvc_encode_readdirres, ptr null, i32 368, i32 96, i32 0, i32 0, ptr @.str.18 }, %struct.svc_procedure { ptr @nfsd_proc_statfs, ptr @nfssvc_decode_fhandleargs, ptr @nfssvc_encode_statfsres, ptr null, i32 360, i32 96, i32 0, i32 6, ptr @.str.19 }], [184 x i8] zeroinitializer }, align 32
@nfsd_count2 = internal global { [18 x i32], [56 x i8] } zeroinitializer, align 32
@nfsd_version2 = dso_local constant { %struct.svc_version, [36 x i8] } { %struct.svc_version { i32 2, i32 18, ptr @nfsd_procedures2, ptr @nfsd_count2, i32 736, i8 0, i8 0, i8 0, ptr @nfsd_dispatch }, [36 x i8] zeroinitializer }, align 32
@nfserrno.nfs_errtbl = internal constant { [38 x %struct.anon.156], [80 x i8] } { [38 x %struct.anon.156] [%struct.anon.156 zeroinitializer, %struct.anon.156 { i32 1, i32 -1 }, %struct.anon.156 { i32 2, i32 -2 }, %struct.anon.156 { i32 5, i32 -5 }, %struct.anon.156 { i32 6, i32 -6 }, %struct.anon.156 { i32 27, i32 -7 }, %struct.anon.156 { i32 70, i32 -9 }, %struct.anon.156 { i32 13, i32 -13 }, %struct.anon.156 { i32 17, i32 -17 }, %struct.anon.156 { i32 18, i32 -18 }, %struct.anon.156 { i32 31, i32 -31 }, %struct.anon.156 { i32 19, i32 -19 }, %struct.anon.156 { i32 20, i32 -20 }, %struct.anon.156 { i32 21, i32 -21 }, %struct.anon.156 { i32 22, i32 -22 }, %struct.anon.156 { i32 27, i32 -27 }, %struct.anon.156 { i32 28, i32 -28 }, %struct.anon.156 { i32 30, i32 -30 }, %struct.anon.156 { i32 31, i32 -31 }, %struct.anon.156 { i32 63, i32 -36 }, %struct.anon.156 { i32 66, i32 -39 }, %struct.anon.156 { i32 69, i32 -122 }, %struct.anon.156 { i32 70, i32 -116 }, %struct.anon.156 { i32 10008, i32 -110 }, %struct.anon.156 { i32 10008, i32 -512 }, %struct.anon.156 { i32 10008, i32 -11 }, %struct.anon.156 { i32 10008, i32 -11 }, %struct.anon.156 { i32 10008, i32 -12 }, %struct.anon.156 { i32 5, i32 -26 }, %struct.anon.156 { i32 10004, i32 -95 }, %struct.anon.156 { i32 10005, i32 -525 }, %struct.anon.156 { i32 10006, i32 -526 }, %struct.anon.156 { i32 10006, i32 -23 }, %struct.anon.156 { i32 5, i32 -121 }, %struct.anon.156 { i32 70, i32 -518 }, %struct.anon.156 { i32 5, i32 -117 }, %struct.anon.156 { i32 1, i32 -126 }, %struct.anon.156 { i32 10033, i32 -531 }], [80 x i8] zeroinitializer }, align 32
@nfserrno.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/nfsd/nfsproc.c\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nfsd: non-standard errno: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NULL\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GETATTR\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SETATTR\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ROOT\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LOOKUP\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"READLINK\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"READ\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"WRITECACHE\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WRITE\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CREATE\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"REMOVE\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RENAME\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LINK\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SYMLINK\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MKDIR\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RMDIR\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"READDIR\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"STATFS\00", [25 x i8] zeroinitializer }, align 32
@nfsd_debug = external dso_local local_unnamed_addr global i32, align 4
@nfsd_proc_getattr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str, i32 32, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfsd: GETATTR  %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nfsd_proc_getattr\00", [46 x i8] zeroinitializer }, align 32
@nfsd_proc_getattr._entry_ptr = internal global ptr @nfsd_proc_getattr._entry, section ".printk_index", align 4
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/nfsd/nfsfh.h\00", [16 x i8] zeroinitializer }, align 32
@nfsd_proc_setattr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"nfsd: SETATTR  %s, valid=%x, size=%ld\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nfsd_proc_setattr\00", [46 x i8] zeroinitializer }, align 32
@nfsd_proc_setattr._entry_ptr = internal global ptr @nfsd_proc_setattr._entry, section ".printk_index", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@nfsd_proc_lookup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str, i32 132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nfsd: LOOKUP   %s %.*s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nfsd_proc_lookup\00", [47 x i8] zeroinitializer }, align 32
@nfsd_proc_lookup._entry_ptr = internal global ptr @nfsd_proc_lookup._entry, section ".printk_index", align 4
@nfsd_proc_readlink._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str, i32 155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfsd: READLINK %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfsd_proc_readlink\00", [45 x i8] zeroinitializer }, align 32
@nfsd_proc_readlink._entry_ptr = internal global ptr @nfsd_proc_readlink._entry, section ".printk_index", align 4
@nfsd_proc_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"nfsd: READ    %s %d bytes at %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nfsd_proc_read\00", [17 x i8] zeroinitializer }, align 32
@nfsd_proc_read._entry_ptr = internal global ptr @nfsd_proc_read._entry, section ".printk_index", align 4
@nfsd_proc_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"nfsd: WRITE    %s %d bytes at %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nfsd_proc_write\00", [16 x i8] zeroinitializer }, align 32
@nfsd_proc_write._entry_ptr = internal global ptr @nfsd_proc_write._entry, section ".printk_index", align 4
@nfsd_proc_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nfsd: CREATE   %s %.*s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nfsd_proc_create\00", [47 x i8] zeroinitializer }, align 32
@nfsd_proc_create._entry_ptr = internal global ptr @nfsd_proc_create._entry, section ".printk_index", align 4
@nfsd_proc_create._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014nfsd_proc_create: file handle not verified\0A\00", [50 x i8] zeroinitializer }, align 32
@nfsd_proc_create._entry_ptr.37 = internal global ptr @nfsd_proc_create._entry.35, section ".printk_index", align 4
@nfsd_proc_create._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.34, ptr @.str, i32 392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"nfsd:   existing %s, valid=%x, size=%ld\0A\00", [55 x i8] zeroinitializer }, align 32
@nfsd_proc_create._entry_ptr.40 = internal global ptr @nfsd_proc_create._entry.38, section ".printk_index", align 4
@fh_lock_nested._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.22, i32 364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014fh_lock: %pd2 already locked!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fh_lock_nested\00", [17 x i8] zeroinitializer }, align 32
@fh_lock_nested._entry_ptr = internal global ptr @fh_lock_nested._entry, section ".printk_index", align 4
@nfsd_proc_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str, i32 423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nfsd: REMOVE   %s %.*s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nfsd_proc_remove\00", [47 x i8] zeroinitializer }, align 32
@nfsd_proc_remove._entry_ptr = internal global ptr @nfsd_proc_remove._entry, section ".printk_index", align 4
@nfsd_proc_rename._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str, i32 439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nfsd: RENAME   %s %.*s -> \0A\00", [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nfsd_proc_rename\00", [47 x i8] zeroinitializer }, align 32
@nfsd_proc_rename._entry_ptr = internal global ptr @nfsd_proc_rename._entry, section ".printk_index", align 4
@nfsd_proc_rename._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str, i32 441, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nfsd:        ->  %s %.*s\0A\00", [38 x i8] zeroinitializer }, align 32
@nfsd_proc_rename._entry_ptr.49 = internal global ptr @nfsd_proc_rename._entry.47, section ".printk_index", align 4
@nfsd_proc_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str, i32 457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nfsd: LINK     %s ->\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nfsd_proc_link\00", [17 x i8] zeroinitializer }, align 32
@nfsd_proc_link._entry_ptr = internal global ptr @nfsd_proc_link._entry, section ".printk_index", align 4
@nfsd_proc_link._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nfsd:    %s %.*s\0A\00", [46 x i8] zeroinitializer }, align 32
@nfsd_proc_link._entry_ptr.54 = internal global ptr @nfsd_proc_link._entry.52, section ".printk_index", align 4
@nfsd_proc_symlink._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str, i32 492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"nfsd: SYMLINK  %s %.*s -> %.*s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nfsd_proc_symlink\00", [46 x i8] zeroinitializer }, align 32
@nfsd_proc_symlink._entry_ptr = internal global ptr @nfsd_proc_symlink._entry, section ".printk_index", align 4
@nfsd_proc_mkdir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str, i32 515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nfsd: MKDIR    %s %.*s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nfsd_proc_mkdir\00", [16 x i8] zeroinitializer }, align 32
@nfsd_proc_mkdir._entry_ptr = internal global ptr @nfsd_proc_mkdir._entry, section ".printk_index", align 4
@nfsd_proc_mkdir._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str, i32 519, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014nfsd_proc_mkdir: response already verified??\0A\00", [48 x i8] zeroinitializer }, align 32
@nfsd_proc_mkdir._entry_ptr.61 = internal global ptr @nfsd_proc_mkdir._entry.59, section ".printk_index", align 4
@nfsd_proc_rmdir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str, i32 544, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nfsd: RMDIR    %s %.*s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nfsd_proc_rmdir\00", [16 x i8] zeroinitializer }, align 32
@nfsd_proc_rmdir._entry_ptr = internal global ptr @nfsd_proc_rmdir._entry, section ".printk_index", align 4
@nfsd_proc_readdir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str, i32 591, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"nfsd: READDIR  %s %d bytes at %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nfsd_proc_readdir\00", [46 x i8] zeroinitializer }, align 32
@nfsd_proc_readdir._entry_ptr = internal global ptr @nfsd_proc_readdir._entry, section ".printk_index", align 4
@nfsd_proc_statfs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str, i32 615, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfsd: STATFS   %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nfsd_proc_statfs\00", [47 x i8] zeroinitializer }, align 32
@nfsd_proc_statfs._entry_ptr = internal global ptr @nfsd_proc_statfs._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 10008]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 10008]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.70 = internal global [5 x i64] [i64 3, i64 16, i64 4096, i64 8192, i64 24576]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 30]
@__sancov_gen_cov_switch_values.72 = internal global [5 x i64] [i64 3, i64 16, i64 8192, i64 24576, i64 32768]
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"nfsd_procedures2\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 632, i32 35 }
@___asan_gen_.76 = private unnamed_addr constant [12 x i8] c"nfsd_count2\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 822, i32 21 }
@___asan_gen_.79 = private unnamed_addr constant [14 x i8] c"nfsd_version2\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 823, i32 26 }
@___asan_gen_.82 = private unnamed_addr constant [11 x i8] c"nfs_errtbl\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 841, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 889, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 641, i32 14 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 652, i32 14 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 663, i32 14 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 673, i32 14 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 684, i32 14 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 694, i32 14 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 705, i32 14 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 715, i32 14 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 726, i32 14 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 737, i32 14 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 747, i32 14 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 757, i32 14 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 767, i32 14 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 777, i32 14 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 788, i32 14 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 798, i32 14 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 807, i32 14 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 817, i32 14 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 32, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 228, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 56, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 131, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 155, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 180, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 233, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 269, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 308, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 391, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant [19 x i8] c"../fs/nfsd/nfsfh.h\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 363, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 422, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 438, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 440, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 456, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 458, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 490, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 515, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 518, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 544, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 589, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.319 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.320 = private constant [21 x i8] c"../fs/nfsd/nfsproc.c\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 615, i32 2 }
@llvm.compiler.used = appending global [104 x ptr] [ptr @fh_lock_nested._entry, ptr @fh_lock_nested._entry_ptr, ptr @nfsd_proc_create._entry, ptr @nfsd_proc_create._entry.35, ptr @nfsd_proc_create._entry.38, ptr @nfsd_proc_create._entry_ptr, ptr @nfsd_proc_create._entry_ptr.37, ptr @nfsd_proc_create._entry_ptr.40, ptr @nfsd_proc_getattr._entry, ptr @nfsd_proc_getattr._entry_ptr, ptr @nfsd_proc_link._entry, ptr @nfsd_proc_link._entry.52, ptr @nfsd_proc_link._entry_ptr, ptr @nfsd_proc_link._entry_ptr.54, ptr @nfsd_proc_lookup._entry, ptr @nfsd_proc_lookup._entry_ptr, ptr @nfsd_proc_mkdir._entry, ptr @nfsd_proc_mkdir._entry.59, ptr @nfsd_proc_mkdir._entry_ptr, ptr @nfsd_proc_mkdir._entry_ptr.61, ptr @nfsd_proc_read._entry, ptr @nfsd_proc_read._entry_ptr, ptr @nfsd_proc_readdir._entry, ptr @nfsd_proc_readdir._entry_ptr, ptr @nfsd_proc_readlink._entry, ptr @nfsd_proc_readlink._entry_ptr, ptr @nfsd_proc_remove._entry, ptr @nfsd_proc_remove._entry_ptr, ptr @nfsd_proc_rename._entry, ptr @nfsd_proc_rename._entry.47, ptr @nfsd_proc_rename._entry_ptr, ptr @nfsd_proc_rename._entry_ptr.49, ptr @nfsd_proc_rmdir._entry, ptr @nfsd_proc_rmdir._entry_ptr, ptr @nfsd_proc_setattr._entry, ptr @nfsd_proc_setattr._entry_ptr, ptr @nfsd_proc_statfs._entry, ptr @nfsd_proc_statfs._entry_ptr, ptr @nfsd_proc_symlink._entry, ptr @nfsd_proc_symlink._entry_ptr, ptr @nfsd_proc_write._entry, ptr @nfsd_proc_write._entry_ptr, ptr @nfsd_procedures2, ptr @nfsd_count2, ptr @nfsd_version2, ptr @nfserrno.nfs_errtbl, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67], section "llvm.metadata"
@0 = internal global [83 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_procedures2 to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_count2 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_version2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfserrno.nfs_errtbl to i32), i32 304, i32 384, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_proc_getattr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_proc_setattr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_proc_lookup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_proc_readlink._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_proc_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_proc_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_proc_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_proc_create._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_proc_create._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fh_lock_nested._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_proc_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_proc_rename._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_proc_rename._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_proc_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_proc_link._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_proc_symlink._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_proc_mkdir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_proc_mkdir._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_proc_rmdir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_proc_readdir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_proc_statfs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_dispatch(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfserrno(i32 noundef %errno) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.045 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %syserr = getelementptr [38 x %struct.anon.156], ptr @nfserrno.nfs_errtbl, i32 0, i32 %i.045, i32 1
  %0 = ptrtoint ptr %syserr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %syserr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %errno)
  %cmp1 = icmp eq i32 %1, %errno
  br i1 %cmp1, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr [38 x %struct.anon.156], ptr @nfserrno.nfs_errtbl, i32 0, i32 %i.045
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.045, 1
  %exitcond.not = icmp eq i32 %inc, 38
  br i1 %exitcond.not, label %land.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

land.end:                                         ; preds = %for.inc
  %.b43 = load i1, ptr @nfserrno.__already_done, align 1
  br i1 %.b43, label %land.end.cleanup_crit_edge, label %if.then7, !prof !159

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then7:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @nfserrno.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 889, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %errno) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %land.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ 5, %if.then7 ], [ 5, %land.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfsd_proc_null(ptr nocapture noundef readnone %rqstp) #3 align 64 {
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
define internal i32 @nfsd_proc_getattr(ptr noundef %rqstp) #1 align 64 {
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
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %call) #9
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i:                                        ; preds = %do.end4
  %fh_locked.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fh_locked.i, align 8, !range !160
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not.i = icmp eq i8 %8, 0
  br i1 %tobool1.not.i, label %lor.rhs.i.fh_copy.exit_crit_edge, label %lor.rhs.i.do.end.i_crit_edge, !prof !159

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i.fh_copy.exit_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fh_copy.exit

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %do.end4.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 228, i32 noundef 9, ptr noundef null) #6
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
  %stat = getelementptr inbounds %struct.nfsd_attrstat, ptr %3, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p.i) #6
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
  %call.i = call i32 @vfs_getattr(ptr noundef nonnull %p.i, ptr noundef %stat, i32 noundef 2047, i32 noundef 0) #6
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end12
  %i.045.i.i = phi i32 [ 0, %if.end12 ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %syserr.i.i = getelementptr [38 x %struct.anon.156], ptr @nfserrno.nfs_errtbl, i32 0, i32 %i.045.i.i, i32 1
  %20 = ptrtoint ptr %syserr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %syserr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %call.i)
  %cmp1.i.i = icmp eq i32 %21, %call.i
  br i1 %cmp1.i.i, label %if.then.i.i, label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i = getelementptr [38 x %struct.anon.156], ptr @nfserrno.nfs_errtbl, i32 0, i32 %i.045.i.i
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i, align 4
  br label %fh_getattr.exit

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.045.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 38
  br i1 %exitcond.not.i.i, label %land.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

land.end.i.i:                                     ; preds = %for.inc.i.i
  %.b43.i.i = load i1, ptr @nfserrno.__already_done, align 1
  br i1 %.b43.i.i, label %land.end.i.i.fh_getattr.exit_crit_edge, label %if.then7.i.i, !prof !159

land.end.i.i.fh_getattr.exit_crit_edge:           ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fh_getattr.exit

if.then7.i.i:                                     ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @nfserrno.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 889, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %call.i) #6
  br label %fh_getattr.exit

fh_getattr.exit:                                  ; preds = %if.then7.i.i, %land.end.i.i.fh_getattr.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %23, %if.then.i.i ], [ 5, %if.then7.i.i ], [ 5, %land.end.i.i.fh_getattr.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p.i) #6
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %retval.0.i.i, ptr %3, align 8
  br label %out

out:                                              ; preds = %fh_getattr.exit, %fh_copy.exit.out_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfssvc_decode_fhandleargs(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfssvc_encode_attrstatres(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfssvc_release_attrstat(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd_proc_setattr(ptr noundef %rqstp) #1 align 64 {
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
  %attrs = getelementptr inbounds %struct.nfsd_sattrargs, ptr %1, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %4 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call ptr @SVCFH_fmt(ptr noundef %1) #6
  %5 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %attrs, align 8
  %ia_size = getelementptr inbounds %struct.nfsd_sattrargs, ptr %1, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %ia_size, align 8
  %conv = trunc i64 %8 to i32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %call, i32 noundef %6, i32 noundef %conv) #9
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %fh7 = getelementptr inbounds %struct.nfsd_attrstat, ptr %3, i32 0, i32 1
  %fh_dentry.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %fh_dentry.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fh_dentry.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %lor.rhs.i, label %do.end6.do.end.i_crit_edge

do.end6.do.end.i_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i:                                        ; preds = %do.end6
  %fh_locked.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fh_locked.i, align 8, !range !160
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool1.not.i = icmp eq i8 %12, 0
  br i1 %tobool1.not.i, label %lor.rhs.i.fh_copy.exit_crit_edge, label %lor.rhs.i.do.end.i_crit_edge, !prof !159

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i.fh_copy.exit_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fh_copy.exit

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %do.end6.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 228, i32 noundef 9, ptr noundef null) #6
  br label %fh_copy.exit

fh_copy.exit:                                     ; preds = %do.end.i, %lor.rhs.i.fh_copy.exit_crit_edge
  %13 = call ptr @memcpy(ptr %fh7, ptr %1, i32 360)
  %14 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %attrs, align 8
  %and11 = and i32 %15, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %and11)
  %cmp = icmp eq i32 %and11, 384
  br i1 %cmp, label %land.lhs.true, label %fh_copy.exit.if.end41_crit_edge

fh_copy.exit.if.end41_crit_edge:                  ; preds = %fh_copy.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

land.lhs.true:                                    ; preds = %fh_copy.exit
  %ia_mtime = getelementptr inbounds %struct.nfsd_sattrargs, ptr %1, i32 0, i32 1, i32 6
  %16 = ptrtoint ptr %ia_mtime to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %ia_mtime, align 8
  %ia_atime = getelementptr inbounds %struct.nfsd_sattrargs, ptr %1, i32 0, i32 1, i32 5
  %18 = ptrtoint ptr %ia_atime to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %ia_atime, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %19)
  %cmp14 = icmp eq i64 %17, %19
  br i1 %cmp14, label %if.then16, label %land.lhs.true.if.end41_crit_edge

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then16:                                        ; preds = %land.lhs.true
  %call19 = tail call i64 @ktime_get_real_seconds() #6
  %call20 = tail call i32 @fh_verify(ptr noundef %rqstp, ptr noundef %fh7, i16 noundef zeroext 0, i32 noundef 0) #6
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call20, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp22.not = icmp eq i32 %call20, 0
  br i1 %cmp22.not, label %if.end25, label %if.then16.cleanup52_crit_edge

if.then16.cleanup52_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup52

if.end25:                                         ; preds = %if.then16
  %sub = sub i64 %17, %call19
  %21 = tail call i64 @llvm.abs.i64(i64 %sub, i1 false)
  call void @__sanitizer_cov_trace_const_cmp8(i64 1800, i64 %21)
  %cmp31 = icmp slt i64 %21, 1800
  br i1 %cmp31, label %land.lhs.true33, label %if.end25.if.end41_crit_edge

if.end25.if.end41_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

land.lhs.true33:                                  ; preds = %if.end25
  %fh_dentry = getelementptr inbounds %struct.nfsd_attrstat, ptr %3, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fh_dentry, align 8
  %call34 = tail call i32 @setattr_prepare(ptr noundef nonnull @init_user_ns, ptr noundef %23, ptr noundef %attrs) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35.not = icmp eq i32 %call34, 0
  br i1 %cmp35.not, label %land.lhs.true33.if.end41_crit_edge, label %if.then37

land.lhs.true33.if.end41_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then37:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %attrs, align 8
  %and39 = and i32 %25, -385
  store i32 %and39, ptr %attrs, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %land.lhs.true33.if.end41_crit_edge, %if.end25.if.end41_crit_edge, %land.lhs.true.if.end41_crit_edge, %fh_copy.exit.if.end41_crit_edge
  %call42 = tail call i32 @nfsd_setattr(ptr noundef %rqstp, ptr noundef %fh7, ptr noundef %attrs, i32 noundef 0, i64 noundef 0) #6
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call42, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp45.not = icmp eq i32 %call42, 0
  br i1 %cmp45.not, label %if.end48, label %if.end41.cleanup52_crit_edge

if.end41.cleanup52_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup52

if.end48:                                         ; preds = %if.end41
  %stat = getelementptr inbounds %struct.nfsd_attrstat, ptr %3, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p.i) #6
  %27 = getelementptr inbounds %struct.path, ptr %p.i, i32 0, i32 1
  %fh_export.i = getelementptr inbounds %struct.nfsd_attrstat, ptr %3, i32 0, i32 1, i32 3
  %28 = ptrtoint ptr %fh_export.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fh_export.i, align 4
  %ex_path.i = getelementptr inbounds %struct.svc_export, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %ex_path.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ex_path.i, align 8
  %32 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %p.i, align 4
  %fh_dentry.i80 = getelementptr inbounds %struct.nfsd_attrstat, ptr %3, i32 0, i32 1, i32 2
  %33 = ptrtoint ptr %fh_dentry.i80 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fh_dentry.i80, align 8
  %35 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %27, align 4
  %call.i = call i32 @vfs_getattr(ptr noundef nonnull %p.i, ptr noundef %stat, i32 noundef 2047, i32 noundef 0) #6
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end48
  %i.045.i.i = phi i32 [ 0, %if.end48 ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %syserr.i.i = getelementptr [38 x %struct.anon.156], ptr @nfserrno.nfs_errtbl, i32 0, i32 %i.045.i.i, i32 1
  %36 = ptrtoint ptr %syserr.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %syserr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %call.i)
  %cmp1.i.i = icmp eq i32 %37, %call.i
  br i1 %cmp1.i.i, label %if.then.i.i, label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i = getelementptr [38 x %struct.anon.156], ptr @nfserrno.nfs_errtbl, i32 0, i32 %i.045.i.i
  %38 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i.i, align 4
  br label %fh_getattr.exit

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.045.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 38
  br i1 %exitcond.not.i.i, label %land.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

land.end.i.i:                                     ; preds = %for.inc.i.i
  %.b43.i.i = load i1, ptr @nfserrno.__already_done, align 1
  br i1 %.b43.i.i, label %land.end.i.i.fh_getattr.exit_crit_edge, label %if.then7.i.i, !prof !159

land.end.i.i.fh_getattr.exit_crit_edge:           ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fh_getattr.exit

if.then7.i.i:                                     ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @nfserrno.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 889, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %call.i) #6
  br label %fh_getattr.exit

fh_getattr.exit:                                  ; preds = %if.then7.i.i, %land.end.i.i.fh_getattr.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %39, %if.then.i.i ], [ 5, %if.then7.i.i ], [ 5, %land.end.i.i.fh_getattr.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p.i) #6
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %retval.0.i.i, ptr %3, align 8
  br label %cleanup52

cleanup52:                                        ; preds = %fh_getattr.exit, %if.end41.cleanup52_crit_edge, %if.then16.cleanup52_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfssvc_decode_sattrargs(ptr noundef, ptr noundef) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfsd_proc_root(ptr nocapture noundef readnone %rqstp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd_proc_lookup(ptr noundef %rqstp) #1 align 64 {
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
  %len = getelementptr inbounds %struct.nfsd_diropargs, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %name = getelementptr inbounds %struct.nfsd_diropargs, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %call, i32 noundef %6, ptr noundef %8) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %fh5 = getelementptr inbounds %struct.nfsd_diropres, ptr %3, i32 0, i32 1
  %9 = call ptr @memset(ptr %fh5, i32 0, i32 360)
  %fh_maxsize.i = getelementptr inbounds %struct.nfsd_diropres, ptr %3, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %fh_maxsize.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 32, ptr %fh_maxsize.i, align 4
  %name8 = getelementptr inbounds %struct.nfsd_diropargs, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %name8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name8, align 8
  %len9 = getelementptr inbounds %struct.nfsd_diropargs, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %len9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len9, align 4
  %call11 = tail call i32 @nfsd_lookup(ptr noundef %rqstp, ptr noundef %1, ptr noundef %12, i32 noundef %14, ptr noundef %fh5) #6
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call11, ptr %3, align 8
  tail call void @fh_put(ptr noundef %1) #6
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not = icmp eq i32 %17, 0
  br i1 %cmp.not, label %if.end15, label %do.end4.out_crit_edge

do.end4.out_crit_edge:                            ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end15:                                         ; preds = %do.end4
  %stat = getelementptr inbounds %struct.nfsd_diropres, ptr %3, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p.i) #6
  %18 = getelementptr inbounds %struct.path, ptr %p.i, i32 0, i32 1
  %fh_export.i = getelementptr inbounds %struct.nfsd_diropres, ptr %3, i32 0, i32 1, i32 3
  %19 = ptrtoint ptr %fh_export.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fh_export.i, align 4
  %ex_path.i = getelementptr inbounds %struct.svc_export, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %ex_path.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ex_path.i, align 8
  %23 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %p.i, align 4
  %fh_dentry.i = getelementptr inbounds %struct.nfsd_diropres, ptr %3, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %fh_dentry.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fh_dentry.i, align 8
  %26 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %18, align 4
  %call.i = call i32 @vfs_getattr(ptr noundef nonnull %p.i, ptr noundef %stat, i32 noundef 2047, i32 noundef 0) #6
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end15
  %i.045.i.i = phi i32 [ 0, %if.end15 ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %syserr.i.i = getelementptr [38 x %struct.anon.156], ptr @nfserrno.nfs_errtbl, i32 0, i32 %i.045.i.i, i32 1
  %27 = ptrtoint ptr %syserr.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %syserr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %call.i)
  %cmp1.i.i = icmp eq i32 %28, %call.i
  br i1 %cmp1.i.i, label %if.then.i.i, label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i = getelementptr [38 x %struct.anon.156], ptr @nfserrno.nfs_errtbl, i32 0, i32 %i.045.i.i
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i.i, align 4
  br label %fh_getattr.exit

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.045.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 38
  br i1 %exitcond.not.i.i, label %land.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

land.end.i.i:                                     ; preds = %for.inc.i.i
  %.b43.i.i = load i1, ptr @nfserrno.__already_done, align 1
  br i1 %.b43.i.i, label %land.end.i.i.fh_getattr.exit_crit_edge, label %if.then7.i.i, !prof !159

land.end.i.i.fh_getattr.exit_crit_edge:           ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fh_getattr.exit

if.then7.i.i:                                     ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @nfserrno.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 889, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %call.i) #6
  br label %fh_getattr.exit

fh_getattr.exit:                                  ; preds = %if.then7.i.i, %land.end.i.i.fh_getattr.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %30, %if.then.i.i ], [ 5, %if.then7.i.i ], [ 5, %land.end.i.i.fh_getattr.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p.i) #6
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %retval.0.i.i, ptr %3, align 8
  br label %out

out:                                              ; preds = %fh_getattr.exit, %do.end4.out_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfssvc_decode_diropargs(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfssvc_encode_diropres(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfssvc_release_diropres(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd_proc_readlink(ptr noundef %rqstp) #1 align 64 {
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
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %call) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %len = getelementptr inbounds %struct.nfsd_readlinkres, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1024, ptr %len, align 4
  %rq_next_page = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 22
  %6 = ptrtoint ptr %rq_next_page to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rq_next_page, align 8
  %incdec.ptr = getelementptr ptr, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %rq_next_page, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %page = getelementptr inbounds %struct.nfsd_readlinkres, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %page, align 4
  %call7 = tail call ptr @page_address(ptr noundef %9) #6
  %call9 = tail call i32 @nfsd_readlink(ptr noundef %rqstp, ptr noundef %1, ptr noundef %call7, ptr noundef %len) #6
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call9, ptr %3, align 4
  tail call void @fh_put(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfssvc_encode_readlinkres(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd_proc_read(ptr noundef %rqstp) #1 align 64 {
entry:
  %p.i = alloca %struct.path, align 4
  %eof = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %eof) #6
  %4 = ptrtoint ptr %eof to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %eof, align 4, !annotation !161
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
  %count = getelementptr inbounds %struct.nfsd_readargs, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 4
  %offset = getelementptr inbounds %struct.nfsd_readargs, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %call, i32 noundef %7, i32 noundef %9) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %count5 = getelementptr inbounds %struct.nfsd_readargs, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %count5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count5, align 4
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 8192)
  %13 = ptrtoint ptr %count5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %count5, align 4
  %rq_next_page = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 22
  %14 = ptrtoint ptr %rq_next_page to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rq_next_page, align 8
  %pages = getelementptr inbounds %struct.nfsd_readres, ptr %3, i32 0, i32 4
  %16 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %pages, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp9.not92 = icmp eq i32 %12, 0
  br i1 %cmp9.not92, label %do.end4.while.end_crit_edge, label %do.end4.while.body_crit_edge

do.end4.while.body_crit_edge:                     ; preds = %do.end4
  br label %while.body

do.end4.while.end_crit_edge:                      ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.end4.while.body_crit_edge
  %len.094 = phi i32 [ %sub, %while.body.while.body_crit_edge ], [ %12, %do.end4.while.body_crit_edge ]
  %v.093 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %do.end4.while.body_crit_edge ]
  %17 = ptrtoint ptr %rq_next_page to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rq_next_page, align 8
  %incdec.ptr = getelementptr ptr, ptr %18, i32 1
  store ptr %incdec.ptr, ptr %rq_next_page, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %call11 = tail call ptr @page_address(ptr noundef %20) #6
  %arrayidx = getelementptr %struct.svc_rqst, ptr %rqstp, i32 0, i32 25, i32 %v.093
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call11, ptr %arrayidx, align 8
  %22 = tail call i32 @llvm.umin.i32(i32 %len.094, i32 4096)
  %iov_len = getelementptr %struct.svc_rqst, ptr %rqstp, i32 0, i32 25, i32 %v.093, i32 1
  %23 = ptrtoint ptr %iov_len to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %iov_len, align 4
  %sub = sub i32 %len.094, %22
  %inc = add i32 %v.093, 1
  %cmp9.not = icmp eq i32 %sub, 0
  br i1 %cmp9.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %do.end4.while.end_crit_edge
  %v.0.lcssa = phi i32 [ 0, %do.end4.while.end_crit_edge ], [ %inc, %while.body.while.end_crit_edge ]
  %24 = ptrtoint ptr %count5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %count5, align 4
  %add24 = add i32 %25, 80
  %rq_auth_slack.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 39
  %26 = ptrtoint ptr %rq_auth_slack.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rq_auth_slack.i, align 8
  %add.i = add i32 %add24, %27
  tail call void @svc_reserve(ptr noundef %rqstp, i32 noundef %add.i) #6
  %28 = ptrtoint ptr %count5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %count5, align 4
  %count26 = getelementptr inbounds %struct.nfsd_readres, ptr %3, i32 0, i32 2
  %30 = ptrtoint ptr %count26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %count26, align 8
  %fh27 = getelementptr inbounds %struct.nfsd_readres, ptr %3, i32 0, i32 1
  %fh_dentry.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 2
  %31 = ptrtoint ptr %fh_dentry.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fh_dentry.i, align 8
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %lor.rhs.i, label %while.end.do.end.i_crit_edge

while.end.do.end.i_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i:                                        ; preds = %while.end
  %fh_locked.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 4
  %33 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %fh_locked.i, align 8, !range !160
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool1.not.i = icmp eq i8 %34, 0
  br i1 %tobool1.not.i, label %lor.rhs.i.fh_copy.exit_crit_edge, label %lor.rhs.i.do.end.i_crit_edge, !prof !159

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i.fh_copy.exit_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fh_copy.exit

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %while.end.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 228, i32 noundef 9, ptr noundef null) #6
  br label %fh_copy.exit

fh_copy.exit:                                     ; preds = %do.end.i, %lor.rhs.i.fh_copy.exit_crit_edge
  %35 = call ptr @memcpy(ptr %fh27, ptr %1, i32 360)
  %offset31 = getelementptr inbounds %struct.nfsd_readargs, ptr %1, i32 0, i32 1
  %36 = ptrtoint ptr %offset31 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %offset31, align 8
  %conv = zext i32 %37 to i64
  %rq_vec32 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 25
  %call34 = call i32 @nfsd_read(ptr noundef %rqstp, ptr noundef %fh27, i64 noundef %conv, ptr noundef %rq_vec32, i32 noundef %v.0.lcssa, ptr noundef %count26, ptr noundef nonnull %eof) #6
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call34, ptr %3, align 8
  %39 = zext i32 %call34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call34, label %fh_copy.exit.if.end47_crit_edge [
    i32 0, label %if.then38
    i32 10008, label %fh_copy.exit.cleanup_crit_edge
  ]

fh_copy.exit.cleanup_crit_edge:                   ; preds = %fh_copy.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

fh_copy.exit.if.end47_crit_edge:                  ; preds = %fh_copy.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then38:                                        ; preds = %fh_copy.exit
  %stat = getelementptr inbounds %struct.nfsd_readres, ptr %3, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p.i) #6
  %40 = getelementptr inbounds %struct.path, ptr %p.i, i32 0, i32 1
  %fh_export.i = getelementptr inbounds %struct.nfsd_readres, ptr %3, i32 0, i32 1, i32 3
  %41 = ptrtoint ptr %fh_export.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fh_export.i, align 4
  %ex_path.i = getelementptr inbounds %struct.svc_export, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %ex_path.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ex_path.i, align 8
  %45 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %p.i, align 4
  %fh_dentry.i90 = getelementptr inbounds %struct.nfsd_readres, ptr %3, i32 0, i32 1, i32 2
  %46 = ptrtoint ptr %fh_dentry.i90 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fh_dentry.i90, align 8
  %48 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %40, align 4
  %call.i = call i32 @vfs_getattr(ptr noundef nonnull %p.i, ptr noundef %stat, i32 noundef 2047, i32 noundef 0) #6
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then38
  %i.045.i.i = phi i32 [ 0, %if.then38 ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %syserr.i.i = getelementptr [38 x %struct.anon.156], ptr @nfserrno.nfs_errtbl, i32 0, i32 %i.045.i.i, i32 1
  %49 = ptrtoint ptr %syserr.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %syserr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %call.i)
  %cmp1.i.i = icmp eq i32 %50, %call.i
  br i1 %cmp1.i.i, label %if.then.i.i, label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i = getelementptr [38 x %struct.anon.156], ptr @nfserrno.nfs_errtbl, i32 0, i32 %i.045.i.i
  %51 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i.i, align 4
  br label %fh_getattr.exit

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.045.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 38
  br i1 %exitcond.not.i.i, label %land.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

land.end.i.i:                                     ; preds = %for.inc.i.i
  %.b43.i.i = load i1, ptr @nfserrno.__already_done, align 1
  br i1 %.b43.i.i, label %land.end.i.i.fh_getattr.exit_crit_edge, label %if.then7.i.i, !prof !159

land.end.i.i.fh_getattr.exit_crit_edge:           ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fh_getattr.exit

if.then7.i.i:                                     ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @nfserrno.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 889, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %call.i) #6
  br label %fh_getattr.exit

fh_getattr.exit:                                  ; preds = %if.then7.i.i, %land.end.i.i.fh_getattr.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %52, %if.then.i.i ], [ 5, %if.then7.i.i ], [ 5, %land.end.i.i.fh_getattr.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p.i) #6
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %retval.0.i.i, ptr %3, align 8
  br label %if.end47

if.end47:                                         ; preds = %fh_getattr.exit, %fh_copy.exit.if.end47_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %fh_copy.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end47 ], [ 60000, %fh_copy.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eof) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfssvc_decode_readargs(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfssvc_encode_readres(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfssvc_release_readres(ptr noundef) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfsd_proc_writecache(ptr nocapture noundef readnone %rqstp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd_proc_write(ptr noundef %rqstp) #1 align 64 {
entry:
  %p.i = alloca %struct.path, align 4
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
  %len = getelementptr inbounds %struct.nfsd_writeargs, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %6 = ptrtoint ptr %cnt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %cnt, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %7 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call ptr @SVCFH_fmt(ptr noundef %1) #6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %offset = getelementptr inbounds %struct.nfsd_writeargs, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %call, i32 noundef %9, i32 noundef %11) #9
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %payload = getelementptr inbounds %struct.nfsd_writeargs, ptr %1, i32 0, i32 3
  %call6 = tail call i32 @svc_fill_write_vector(ptr noundef %rqstp, ptr noundef %payload) #6
  %fh7 = getelementptr inbounds %struct.nfsd_attrstat, ptr %3, i32 0, i32 1
  %fh_dentry.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %fh_dentry.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fh_dentry.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %lor.rhs.i, label %do.end5.do.end.i_crit_edge

do.end5.do.end.i_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i:                                        ; preds = %do.end5
  %fh_locked.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %fh_locked.i, align 8, !range !160
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool1.not.i = icmp eq i8 %15, 0
  br i1 %tobool1.not.i, label %lor.rhs.i.fh_copy.exit_crit_edge, label %lor.rhs.i.do.end.i_crit_edge, !prof !159

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i.fh_copy.exit_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fh_copy.exit

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %do.end5.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 228, i32 noundef 9, ptr noundef null) #6
  br label %fh_copy.exit

fh_copy.exit:                                     ; preds = %do.end.i, %lor.rhs.i.fh_copy.exit_crit_edge
  %16 = call ptr @memcpy(ptr %fh7, ptr %1, i32 360)
  %offset10 = getelementptr inbounds %struct.nfsd_writeargs, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %offset10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset10, align 8
  %conv = zext i32 %18 to i64
  %rq_vec = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 25
  %call11 = call i32 @nfsd_write(ptr noundef %rqstp, ptr noundef %fh7, i64 noundef %conv, ptr noundef %rq_vec, i32 noundef %call6, ptr noundef nonnull %cnt, i32 noundef 1, ptr noundef null) #6
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call11, ptr %3, align 8
  %20 = zext i32 %call11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %call11, label %fh_copy.exit.if.end23_crit_edge [
    i32 0, label %if.then14
    i32 10008, label %fh_copy.exit.cleanup_crit_edge
  ]

fh_copy.exit.cleanup_crit_edge:                   ; preds = %fh_copy.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

fh_copy.exit.if.end23_crit_edge:                  ; preds = %fh_copy.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then14:                                        ; preds = %fh_copy.exit
  %stat = getelementptr inbounds %struct.nfsd_attrstat, ptr %3, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p.i) #6
  %21 = getelementptr inbounds %struct.path, ptr %p.i, i32 0, i32 1
  %fh_export.i = getelementptr inbounds %struct.nfsd_attrstat, ptr %3, i32 0, i32 1, i32 3
  %22 = ptrtoint ptr %fh_export.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fh_export.i, align 4
  %ex_path.i = getelementptr inbounds %struct.svc_export, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %ex_path.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ex_path.i, align 8
  %26 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %p.i, align 4
  %fh_dentry.i43 = getelementptr inbounds %struct.nfsd_attrstat, ptr %3, i32 0, i32 1, i32 2
  %27 = ptrtoint ptr %fh_dentry.i43 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fh_dentry.i43, align 8
  %29 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %21, align 4
  %call.i = call i32 @vfs_getattr(ptr noundef nonnull %p.i, ptr noundef %stat, i32 noundef 2047, i32 noundef 0) #6
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then14
  %i.045.i.i = phi i32 [ 0, %if.then14 ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %syserr.i.i = getelementptr [38 x %struct.anon.156], ptr @nfserrno.nfs_errtbl, i32 0, i32 %i.045.i.i, i32 1
  %30 = ptrtoint ptr %syserr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %syserr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %call.i)
  %cmp1.i.i = icmp eq i32 %31, %call.i
  br i1 %cmp1.i.i, label %if.then.i.i, label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i = getelementptr [38 x %struct.anon.156], ptr @nfserrno.nfs_errtbl, i32 0, i32 %i.045.i.i
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i, align 4
  br label %fh_getattr.exit

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.045.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 38
  br i1 %exitcond.not.i.i, label %land.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

land.end.i.i:                                     ; preds = %for.inc.i.i
  %.b43.i.i = load i1, ptr @nfserrno.__already_done, align 1
  br i1 %.b43.i.i, label %land.end.i.i.fh_getattr.exit_crit_edge, label %if.then7.i.i, !prof !159

land.end.i.i.fh_getattr.exit_crit_edge:           ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fh_getattr.exit

if.then7.i.i:                                     ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @nfserrno.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 889, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %call.i) #6
  br label %fh_getattr.exit

fh_getattr.exit:                                  ; preds = %if.then7.i.i, %land.end.i.i.fh_getattr.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %33, %if.then.i.i ], [ 5, %if.then7.i.i ], [ 5, %land.end.i.i.fh_getattr.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p.i) #6
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %retval.0.i.i, ptr %3, align 8
  br label %if.end23

if.end23:                                         ; preds = %fh_getattr.exit, %fh_copy.exit.if.end23_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %fh_copy.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23 ], [ 60000, %fh_copy.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cnt) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfssvc_decode_writeargs(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd_proc_create(ptr noundef %rqstp) #1 align 64 {
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
  %fh1 = getelementptr inbounds %struct.nfsd_diropres, ptr %3, i32 0, i32 1
  %attrs = getelementptr inbounds %struct.nfsd_createargs, ptr %1, i32 0, i32 3
  %ia_size = getelementptr inbounds %struct.nfsd_createargs, ptr %1, i32 0, i32 3, i32 4
  %4 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ia_size, align 8
  %conv = trunc i64 %5 to i32
  %and1.i = and i32 %conv, 255
  %shr2.i = lshr i32 %conv, 12
  %and3.i = and i32 %shr2.i, 1048320
  %or.i = or i32 %and3.i, %and1.i
  %6 = shl i32 %conv, 12
  %shl.i = and i32 %6, -1048576
  %or4.i = or i32 %or.i, %shl.i
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
  %call3 = tail call ptr @SVCFH_fmt(ptr noundef %1) #6
  %len = getelementptr inbounds %struct.nfsd_createargs, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %name = getelementptr inbounds %struct.nfsd_createargs, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %call3, i32 noundef %9, ptr noundef %11) #9
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %call7 = tail call i32 @fh_verify(ptr noundef %rqstp, ptr noundef %1, i16 noundef zeroext 16384, i32 noundef 1) #6
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call7, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp.not = icmp eq i32 %call7, 0
  br i1 %cmp.not, label %if.end11, label %do.end6.done_crit_edge

do.end6.done_crit_edge:                           ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end11:                                         ; preds = %do.end6
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 17, ptr %3, align 8
  %len13 = getelementptr inbounds %struct.nfsd_createargs, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %len13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp14 = icmp ult i32 %15, 3
  br i1 %cmp14, label %land.lhs.true, label %if.end11.if.end30_crit_edge

if.end11.if.end30_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

land.lhs.true:                                    ; preds = %if.end11
  %name16 = getelementptr inbounds %struct.nfsd_createargs, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %name16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name16, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %19)
  %cmp18 = icmp eq i8 %19, 46
  br i1 %cmp18, label %land.lhs.true20, label %land.lhs.true.if.end30_crit_edge

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

land.lhs.true20:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp22 = icmp eq i32 %15, 1
  br i1 %cmp22, label %land.lhs.true20.done_crit_edge, label %lor.lhs.false

land.lhs.true20.done_crit_edge:                   ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

lor.lhs.false:                                    ; preds = %land.lhs.true20
  %arrayidx25 = getelementptr i8, ptr %17, i32 1
  %20 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %21)
  %cmp27 = icmp eq i8 %21, 46
  br i1 %cmp27, label %lor.lhs.false.done_crit_edge, label %lor.lhs.false.if.end30_crit_edge

lor.lhs.false.if.end30_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

lor.lhs.false.done_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end30:                                         ; preds = %lor.lhs.false.if.end30_crit_edge, %land.lhs.true.if.end30_crit_edge, %if.end11.if.end30_crit_edge
  %fh_want_write.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %fh_want_write.i, align 1, !range !160
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end30.if.end36_crit_edge

if.end30.if.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.end.i:                                         ; preds = %if.end30
  %fh_export.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %fh_export.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fh_export.i, align 4
  %ex_path.i = getelementptr inbounds %struct.svc_export, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %ex_path.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ex_path.i, align 8
  %call.i = tail call i32 @mnt_want_write(ptr noundef %27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %fh_want_write.i, align 1
  br label %if.end36

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.045.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %syserr.i = getelementptr [38 x %struct.anon.156], ptr @nfserrno.nfs_errtbl, i32 0, i32 %i.045.i, i32 1
  %29 = ptrtoint ptr %syserr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %syserr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %call.i)
  %cmp1.i = icmp eq i32 %30, %call.i
  br i1 %cmp1.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr [38 x %struct.anon.156], ptr @nfserrno.nfs_errtbl, i32 0, i32 %i.045.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i, align 4
  br label %nfserrno.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.045.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 38
  br i1 %exitcond.not.i, label %land.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

land.end.i:                                       ; preds = %for.inc.i
  %.b43.i = load i1, ptr @nfserrno.__already_done, align 1
  br i1 %.b43.i, label %land.end.i.nfserrno.exit_crit_edge, label %if.then7.i, !prof !159

land.end.i.nfserrno.exit_crit_edge:               ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfserrno.exit

if.then7.i:                                       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @nfserrno.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 889, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %call.i) #6
  br label %nfserrno.exit

nfserrno.exit:                                    ; preds = %if.then7.i, %land.end.i.nfserrno.exit_crit_edge, %if.then.i
  %retval.0.i296 = phi i32 [ %32, %if.then.i ], [ 5, %if.then7.i ], [ 5, %land.end.i.nfserrno.exit_crit_edge ]
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %retval.0.i296, ptr %3, align 8
  br label %done

if.end36:                                         ; preds = %if.then2.i, %if.end30.if.end36_crit_edge
  %fh_dentry.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %fh_dentry.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fh_dentry.i, align 8
  %tobool.not.i297 = icmp eq ptr %35, null
  br i1 %tobool.not.i297, label %do.body4.i, label %do.end9.i, !prof !162

do.body4.i:                                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfsd/nfsfh.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 360, 0\0A.popsection", ""() #6, !srcloc !163
  unreachable

do.end9.i:                                        ; preds = %if.end36
  %fh_locked.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 4
  %36 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %fh_locked.i, align 8, !range !160
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool10.not.i = icmp eq i8 %37, 0
  br i1 %tobool10.not.i, label %if.end15.i, label %do.end14.i

do.end14.i:                                       ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i298 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull %35) #9
  br label %fh_lock_nested.exit

if.end15.i:                                       ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %35, i32 0, i32 5
  %38 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %39, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i.i, i32 noundef 1) #6
  tail call void @fh_fill_pre_attrs(ptr noundef %1) #6
  %40 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %fh_locked.i, align 8
  br label %fh_lock_nested.exit

fh_lock_nested.exit:                              ; preds = %if.end15.i, %do.end14.i
  %name37 = getelementptr inbounds %struct.nfsd_createargs, ptr %1, i32 0, i32 1
  %41 = ptrtoint ptr %name37 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %name37, align 8
  %43 = ptrtoint ptr %fh_dentry.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fh_dentry.i, align 8
  %45 = ptrtoint ptr %len13 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len13, align 4
  %call39 = tail call ptr @lookup_one_len(ptr noundef %42, ptr noundef %44, i32 noundef %46) #6
  %cmp.i = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then41, label %if.end45

if.then41:                                        ; preds = %fh_lock_nested.exit
  %47 = ptrtoint ptr %call39 to i32
  br label %for.body.i302

for.body.i302:                                    ; preds = %for.inc.i307.for.body.i302_crit_edge, %if.then41
  %i.045.i299 = phi i32 [ 0, %if.then41 ], [ %inc.i305, %for.inc.i307.for.body.i302_crit_edge ]
  %syserr.i300 = getelementptr [38 x %struct.anon.156], ptr @nfserrno.nfs_errtbl, i32 0, i32 %i.045.i299, i32 1
  %48 = ptrtoint ptr %syserr.i300 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %syserr.i300, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %47)
  %cmp1.i301 = icmp eq i32 %49, %47
  br i1 %cmp1.i301, label %if.then.i304, label %for.inc.i307

if.then.i304:                                     ; preds = %for.body.i302
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i303 = getelementptr [38 x %struct.anon.156], ptr @nfserrno.nfs_errtbl, i32 0, i32 %i.045.i299
  %50 = ptrtoint ptr %arrayidx.i303 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i303, align 4
  br label %nfserrno.exit312

for.inc.i307:                                     ; preds = %for.body.i302
  %inc.i305 = add nuw nsw i32 %i.045.i299, 1
  %exitcond.not.i306 = icmp eq i32 %inc.i305, 38
  br i1 %exitcond.not.i306, label %land.end.i309, label %for.inc.i307.for.body.i302_crit_edge

for.inc.i307.for.body.i302_crit_edge:             ; preds = %for.inc.i307
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i302

land.end.i309:                                    ; preds = %for.inc.i307
  %.b43.i308 = load i1, ptr @nfserrno.__already_done, align 1
  br i1 %.b43.i308, label %land.end.i309.nfserrno.exit312_crit_edge, label %if.then7.i310, !prof !159

land.end.i309.nfserrno.exit312_crit_edge:         ; preds = %land.end.i309
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfserrno.exit312

if.then7.i310:                                    ; preds = %land.end.i309
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @nfserrno.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 889, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %47) #6
  br label %nfserrno.exit312

nfserrno.exit312:                                 ; preds = %if.then7.i310, %land.end.i309.nfserrno.exit312_crit_edge, %if.then.i304
  %retval.0.i311 = phi i32 [ %51, %if.then.i304 ], [ 5, %if.then7.i310 ], [ 5, %land.end.i309.nfserrno.exit312_crit_edge ]
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %retval.0.i311, ptr %3, align 8
  br label %out_unlock

if.end45:                                         ; preds = %fh_lock_nested.exit
  %53 = call ptr @memset(ptr %fh1, i32 0, i32 360)
  %fh_maxsize.i = getelementptr inbounds %struct.nfsd_diropres, ptr %3, i32 0, i32 1, i32 1
  %54 = ptrtoint ptr %fh_maxsize.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 32, ptr %fh_maxsize.i, align 4
  %fh_export = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 3
  %55 = ptrtoint ptr %fh_export to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %fh_export, align 4
  %call47 = tail call i32 @fh_compose(ptr noundef %fh1, ptr noundef %56, ptr noundef %call39, ptr noundef %1) #6
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %call47, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool50.not = icmp eq i32 %call47, 0
  br i1 %tobool50.not, label %land.lhs.true51, label %if.end45.if.end56_crit_edge

if.end45.if.end56_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

land.lhs.true51:                                  ; preds = %if.end45
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %call39, i32 0, i32 5
  %58 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %d_inode.i, align 8
  %cmp.i313 = icmp eq ptr %59, null
  br i1 %cmp.i313, label %if.then54, label %land.lhs.true51.if.end56_crit_edge

land.lhs.true51.if.end56_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.then54:                                        ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 2, ptr %3, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %land.lhs.true51.if.end56_crit_edge, %if.end45.if.end56_crit_edge
  tail call void @dput(ptr noundef %call39) #6
  %61 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %3, align 8
  %63 = zext i32 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %62, label %if.end56.out_unlock_crit_edge [
    i32 0, label %if.end56.if.end75_crit_edge
    i32 2, label %if.end64
  ]

if.end56.if.end75_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75

if.end56.out_unlock_crit_edge:                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.end64:                                         ; preds = %if.end56
  %64 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 13, ptr %3, align 8
  %fh_dentry66 = getelementptr inbounds %struct.nfsd_diropres, ptr %3, i32 0, i32 1, i32 2
  %65 = ptrtoint ptr %fh_dentry66 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fh_dentry66, align 8
  %tobool67.not = icmp eq ptr %66, null
  br i1 %tobool67.not, label %do.end71, label %if.end64.if.end75_crit_edge

if.end64.if.end75_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75

do.end71:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #9
  br label %out_unlock

if.end75:                                         ; preds = %if.end64.if.end75_crit_edge, %if.end56.if.end75_crit_edge
  %fh_dentry76 = getelementptr inbounds %struct.nfsd_diropres, ptr %3, i32 0, i32 1, i32 2
  %67 = ptrtoint ptr %fh_dentry76 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %fh_dentry76, align 8
  %d_inode.i314 = getelementptr inbounds %struct.dentry, ptr %68, i32 0, i32 5
  %69 = ptrtoint ptr %d_inode.i314 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %d_inode.i314, align 8
  %71 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %attrs, align 8
  %and78 = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.else108, label %if.then80

if.then80:                                        ; preds = %if.end75
  %ia_mode = getelementptr inbounds %struct.nfsd_createargs, ptr %1, i32 0, i32 3, i32 1
  %73 = ptrtoint ptr %ia_mode to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %ia_mode, align 4
  %conv81 = zext i16 %74 to i32
  %and82 = and i32 %conv81, 61440
  %and85 = and i32 %conv81, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool86.not = icmp eq i32 %and82, 0
  br i1 %tobool86.not, label %if.then87, label %if.then80.if.end119_crit_edge

if.then80.if.end119_crit_edge:                    ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end119

if.then87:                                        ; preds = %if.then80
  %tobool88.not = icmp eq ptr %70, null
  br i1 %tobool88.not, label %if.then87.if.end119.thread_crit_edge, label %if.then89

if.then87.if.end119.thread_crit_edge:             ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end119.thread

if.then89:                                        ; preds = %if.then87
  %75 = ptrtoint ptr %70 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %70, align 8
  %77 = and i16 %76, -4096
  %and91 = zext i16 %77 to i32
  %78 = zext i16 %77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.70)
  switch i16 %77, label %if.then89.if.end119_crit_edge [
    i16 8192, label %if.then89.sw.bb_crit_edge
    i16 24576, label %if.then89.sw.bb_crit_edge370
    i16 4096, label %if.then89.sw.bb93_crit_edge
  ]

if.then89.sw.bb93_crit_edge:                      ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb93

if.then89.sw.bb_crit_edge370:                     ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.then89.sw.bb_crit_edge:                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.then89.if.end119_crit_edge:                    ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end119

sw.bb:                                            ; preds = %if.then89.sw.bb_crit_edge, %if.then89.sw.bb_crit_edge370
  %i_rdev = getelementptr inbounds %struct.inode, ptr %70, i32 0, i32 13
  %79 = ptrtoint ptr %i_rdev to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %i_rdev, align 8
  %or = or i32 %72, 8
  %81 = ptrtoint ptr %attrs to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %or, ptr %attrs, align 8
  br label %sw.bb93

sw.bb93:                                          ; preds = %sw.bb, %if.then89.sw.bb93_crit_edge
  %rdev.0 = phi i32 [ 0, %if.then89.sw.bb93_crit_edge ], [ %80, %sw.bb ]
  %fh_export94 = getelementptr inbounds %struct.nfsd_diropres, ptr %3, i32 0, i32 1, i32 3
  %82 = ptrtoint ptr %fh_export94 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %fh_export94, align 4
  %84 = ptrtoint ptr %fh_dentry76 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %fh_dentry76, align 8
  %call96 = tail call i32 @nfsd_permission(ptr noundef %rqstp, ptr noundef %83, ptr noundef %85, i32 noundef 130) #6
  %86 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %call96, ptr %3, align 8
  %87 = zext i32 %call96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %call96, label %sw.bb93.out_unlock_crit_edge [
    i32 0, label %sw.bb93.if.end119_crit_edge
    i32 30, label %sw.bb93.if.end119_crit_edge371
  ]

sw.bb93.if.end119_crit_edge371:                   ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end119

sw.bb93.if.end119_crit_edge:                      ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end119

sw.bb93.out_unlock_crit_edge:                     ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.else108:                                       ; preds = %if.end75
  %tobool109.not = icmp eq ptr %70, null
  br i1 %tobool109.not, label %if.else108.if.end119.thread_crit_edge, label %if.then110

if.else108.if.end119.thread_crit_edge:            ; preds = %if.else108
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end119.thread

if.then110:                                       ; preds = %if.else108
  call void @__sanitizer_cov_trace_pc() #8
  %88 = ptrtoint ptr %70 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %70, align 8
  %conv112 = zext i16 %89 to i32
  %and113 = and i32 %conv112, 61440
  %and116 = and i32 %conv112, 4095
  br label %if.end119

if.end119.thread:                                 ; preds = %if.else108.if.end119.thread_crit_edge, %if.then87.if.end119.thread_crit_edge
  %mode.0.ph = phi i32 [ 0, %if.else108.if.end119.thread_crit_edge ], [ %and85, %if.then87.if.end119.thread_crit_edge ]
  %90 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %attrs, align 8
  %or121337 = or i32 %91, 1
  store i32 %or121337, ptr %attrs, align 8
  %conv122338 = trunc i32 %mode.0.ph to i16
  %ia_mode123339 = getelementptr inbounds %struct.nfsd_createargs, ptr %1, i32 0, i32 3, i32 1
  %92 = ptrtoint ptr %ia_mode123339 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %conv122338, ptr %ia_mode123339, align 4
  br label %if.end157.thread

if.end119:                                        ; preds = %if.then110, %sw.bb93.if.end119_crit_edge, %sw.bb93.if.end119_crit_edge371, %if.then89.if.end119_crit_edge, %if.then80.if.end119_crit_edge
  %type.0 = phi i32 [ %and82, %if.then80.if.end119_crit_edge ], [ %and91, %if.then89.if.end119_crit_edge ], [ %and91, %sw.bb93.if.end119_crit_edge ], [ %and113, %if.then110 ], [ %and91, %sw.bb93.if.end119_crit_edge371 ]
  %mode.0 = phi i32 [ %and85, %if.then80.if.end119_crit_edge ], [ %and85, %if.then89.if.end119_crit_edge ], [ %and85, %sw.bb93.if.end119_crit_edge ], [ %and116, %if.then110 ], [ %and85, %sw.bb93.if.end119_crit_edge371 ]
  %rdev.1 = phi i32 [ 0, %if.then80.if.end119_crit_edge ], [ 0, %if.then89.if.end119_crit_edge ], [ %rdev.0, %sw.bb93.if.end119_crit_edge ], [ 0, %if.then110 ], [ %rdev.0, %sw.bb93.if.end119_crit_edge371 ]
  %93 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %attrs, align 8
  %or121 = or i32 %94, 1
  store i32 %or121, ptr %attrs, align 8
  %conv122 = trunc i32 %mode.0 to i16
  %ia_mode123 = getelementptr inbounds %struct.nfsd_createargs, ptr %1, i32 0, i32 3, i32 1
  %95 = ptrtoint ptr %ia_mode123 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %conv122, ptr %ia_mode123, align 4
  %trunc = trunc i32 %type.0 to i16
  %96 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.72)
  switch i16 %trunc, label %if.end119.if.end146_crit_edge [
    i16 -32768, label %if.end157
    i16 8192, label %land.lhs.true136
    i16 24576, label %if.end119.if.else141_crit_edge
  ]

if.end119.if.else141_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else141

if.end119.if.end146_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end146

land.lhs.true136:                                 ; preds = %if.end119
  %and138 = and i32 %94, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138)
  %tobool139.not = icmp eq i32 %and138, 0
  br i1 %tobool139.not, label %land.lhs.true136.if.end146_crit_edge, label %land.lhs.true136.if.else141_crit_edge

land.lhs.true136.if.else141_crit_edge:            ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else141

land.lhs.true136.if.end146_crit_edge:             ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end146

if.else141:                                       ; preds = %land.lhs.true136.if.else141_crit_edge, %if.end119.if.else141_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rdev.1)
  %tobool142.not = icmp eq i32 %rdev.1, 0
  %spec.select = select i1 %tobool142.not, i32 %or4.i, i32 %rdev.1
  br label %if.end146

if.end146:                                        ; preds = %if.else141, %land.lhs.true136.if.end146_crit_edge, %if.end119.if.end146_crit_edge
  %type.1 = phi i32 [ %type.0, %if.end119.if.end146_crit_edge ], [ 4096, %land.lhs.true136.if.end146_crit_edge ], [ %type.0, %if.else141 ]
  %rdev.2 = phi i32 [ 0, %if.end119.if.end146_crit_edge ], [ %rdev.1, %land.lhs.true136.if.end146_crit_edge ], [ %spec.select, %if.else141 ]
  %and148 = and i32 %or121, -9
  %97 = ptrtoint ptr %attrs to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %and148, ptr %attrs, align 8
  %98 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 17, ptr %3, align 8
  %tobool150.not = icmp eq ptr %70, null
  br i1 %tobool150.not, label %if.end146.if.end157.thread_crit_edge, label %land.lhs.true151

if.end146.if.end157.thread_crit_edge:             ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end157.thread

land.lhs.true151:                                 ; preds = %if.end146
  %conv152 = trunc i32 %type.1 to i16
  %99 = ptrtoint ptr %70 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %70, align 8
  %xor2.i = xor i16 %100, %conv152
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %xor2.i)
  %tobool.i = icmp ugt i16 %xor2.i, 4095
  br i1 %tobool.i, label %land.lhs.true151.out_unlock_crit_edge, label %if.else165

land.lhs.true151.out_unlock_crit_edge:            ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.end157.thread:                                 ; preds = %if.end146.if.end157.thread_crit_edge, %if.end119.thread
  %type.2.ph = phi i32 [ 32768, %if.end119.thread ], [ %type.1, %if.end146.if.end157.thread_crit_edge ]
  %rdev.3.ph = phi i32 [ 0, %if.end119.thread ], [ %rdev.2, %if.end146.if.end157.thread_crit_edge ]
  %101 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %3, align 8
  br label %if.then160

if.end157:                                        ; preds = %if.end119
  %102 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %3, align 8
  %tobool159.not = icmp eq ptr %70, null
  br i1 %tobool159.not, label %if.end157.if.then160_crit_edge, label %if.end157.do.body169_crit_edge

if.end157.do.body169_crit_edge:                   ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body169

if.end157.if.then160_crit_edge:                   ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then160

if.then160:                                       ; preds = %if.end157.if.then160_crit_edge, %if.end157.thread
  %rdev.3344 = phi i32 [ %rdev.3.ph, %if.end157.thread ], [ %rdev.1, %if.end157.if.then160_crit_edge ]
  %type.2343 = phi i32 [ %type.2.ph, %if.end157.thread ], [ 32768, %if.end157.if.then160_crit_edge ]
  %103 = ptrtoint ptr %name37 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %name37, align 8
  %105 = ptrtoint ptr %len13 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %len13, align 4
  %call163 = tail call i32 @nfsd_create_locked(ptr noundef %rqstp, ptr noundef %1, ptr noundef %104, i32 noundef %106, ptr noundef %attrs, i32 noundef %type.2343, i32 noundef %rdev.3344, ptr noundef %fh1) #6
  %107 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %call163, ptr %3, align 8
  br label %out_unlock

if.else165:                                       ; preds = %land.lhs.true151
  %108 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %type.1)
  %cmp166 = icmp eq i32 %type.1, 32768
  br i1 %cmp166, label %if.else165.do.body169_crit_edge, label %if.else165.out_unlock_crit_edge

if.else165.out_unlock_crit_edge:                  ; preds = %if.else165
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.else165.do.body169_crit_edge:                  ; preds = %if.else165
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body169

do.body169:                                       ; preds = %if.else165.do.body169_crit_edge, %if.end157.do.body169_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %109 = load i32, ptr @nfsd_debug, align 4
  %and170 = and i32 %109, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170)
  %tobool171.not = icmp eq i32 %and170, 0
  br i1 %tobool171.not, label %do.body169.do.end184_crit_edge, label %do.end175

do.body169.do.end184_crit_edge:                   ; preds = %do.body169
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end184

do.end175:                                        ; preds = %do.body169
  call void @__sanitizer_cov_trace_pc() #8
  %110 = ptrtoint ptr %name37 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %name37, align 8
  %112 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %attrs, align 8
  %114 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %ia_size, align 8
  %conv180 = trunc i64 %115 to i32
  %call181 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %111, i32 noundef %113, i32 noundef %conv180) #9
  br label %do.end184

do.end184:                                        ; preds = %do.end175, %do.body169.do.end184_crit_edge
  %116 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %attrs, align 8
  %and186 = and i32 %117, 8
  store i32 %and186, ptr %attrs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and186)
  %tobool188.not = icmp eq i32 %and186, 0
  br i1 %tobool188.not, label %do.end184.out_unlock_crit_edge, label %if.then189

do.end184.out_unlock_crit_edge:                   ; preds = %do.end184
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.then189:                                       ; preds = %do.end184
  call void @__sanitizer_cov_trace_pc() #8
  %call190 = tail call i32 @nfsd_setattr(ptr noundef %rqstp, ptr noundef %fh1, ptr noundef %attrs, i32 noundef 0, i64 noundef 0) #6
  %118 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %call190, ptr %3, align 8
  br label %out_unlock

out_unlock:                                       ; preds = %if.then189, %do.end184.out_unlock_crit_edge, %if.else165.out_unlock_crit_edge, %if.then160, %land.lhs.true151.out_unlock_crit_edge, %sw.bb93.out_unlock_crit_edge, %do.end71, %if.end56.out_unlock_crit_edge, %nfserrno.exit312
  %119 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %fh_locked.i, align 8, !range !160
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool.not.i316 = icmp eq i8 %120, 0
  br i1 %tobool.not.i316, label %out_unlock.fh_unlock.exit_crit_edge, label %if.then.i320

out_unlock.fh_unlock.exit_crit_edge:              ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #8
  br label %fh_unlock.exit

if.then.i320:                                     ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @fh_fill_post_attrs(ptr noundef %1) #6
  %121 = ptrtoint ptr %fh_dentry.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %fh_dentry.i, align 8
  %d_inode.i.i318 = getelementptr inbounds %struct.dentry, ptr %122, i32 0, i32 5
  %123 = ptrtoint ptr %d_inode.i.i318 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %d_inode.i.i318, align 8
  %i_rwsem.i.i319 = getelementptr inbounds %struct.inode, ptr %124, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i.i319) #6
  %125 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 0, ptr %fh_locked.i, align 8
  br label %fh_unlock.exit

fh_unlock.exit:                                   ; preds = %if.then.i320, %out_unlock.fh_unlock.exit_crit_edge
  %126 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %fh_want_write.i, align 1, !range !160
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool.not.i323 = icmp eq i8 %127, 0
  br i1 %tobool.not.i323, label %fh_unlock.exit.done_crit_edge, label %if.then.i326

fh_unlock.exit.done_crit_edge:                    ; preds = %fh_unlock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.then.i326:                                     ; preds = %fh_unlock.exit
  call void @__sanitizer_cov_trace_pc() #8
  %128 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 0, ptr %fh_want_write.i, align 1
  %fh_export.i324 = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 3
  %129 = ptrtoint ptr %fh_export.i324 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %fh_export.i324, align 4
  %ex_path.i325 = getelementptr inbounds %struct.svc_export, ptr %130, i32 0, i32 3
  %131 = ptrtoint ptr %ex_path.i325 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %ex_path.i325, align 8
  tail call void @mnt_drop_write(ptr noundef %132) #6
  br label %done

done:                                             ; preds = %if.then.i326, %fh_unlock.exit.done_crit_edge, %nfserrno.exit, %lor.lhs.false.done_crit_edge, %land.lhs.true20.done_crit_edge, %do.end6.done_crit_edge
  tail call void @fh_put(ptr noundef %1) #6
  %133 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %cmp196.not = icmp eq i32 %134, 0
  br i1 %cmp196.not, label %if.end199, label %done.out_crit_edge

done.out_crit_edge:                               ; preds = %done
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end199:                                        ; preds = %done
  %stat = getelementptr inbounds %struct.nfsd_diropres, ptr %3, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p.i) #6
  %135 = getelementptr inbounds %struct.path, ptr %p.i, i32 0, i32 1
  %fh_export.i328 = getelementptr inbounds %struct.nfsd_diropres, ptr %3, i32 0, i32 1, i32 3
  %136 = ptrtoint ptr %fh_export.i328 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %fh_export.i328, align 4
  %ex_path.i329 = getelementptr inbounds %struct.svc_export, ptr %137, i32 0, i32 3
  %138 = ptrtoint ptr %ex_path.i329 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ex_path.i329, align 8
  %140 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %139, ptr %p.i, align 4
  %fh_dentry.i330 = getelementptr inbounds %struct.nfsd_diropres, ptr %3, i32 0, i32 1, i32 2
  %141 = ptrtoint ptr %fh_dentry.i330 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %fh_dentry.i330, align 8
  %143 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %142, ptr %135, align 4
  %call.i331 = call i32 @vfs_getattr(ptr noundef nonnull %p.i, ptr noundef %stat, i32 noundef 2047, i32 noundef 0) #6
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end199
  %i.045.i.i = phi i32 [ 0, %if.end199 ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %syserr.i.i = getelementptr [38 x %struct.anon.156], ptr @nfserrno.nfs_errtbl, i32 0, i32 %i.045.i.i, i32 1
  %144 = ptrtoint ptr %syserr.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %syserr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %145, i32 %call.i331)
  %cmp1.i.i = icmp eq i32 %145, %call.i331
  br i1 %cmp1.i.i, label %if.then.i.i, label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i = getelementptr [38 x %struct.anon.156], ptr @nfserrno.nfs_errtbl, i32 0, i32 %i.045.i.i
  %146 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx.i.i, align 4
  br label %fh_getattr.exit

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.045.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 38
  br i1 %exitcond.not.i.i, label %land.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

land.end.i.i:                                     ; preds = %for.inc.i.i
  %.b43.i.i = load i1, ptr @nfserrno.__already_done, align 1
  br i1 %.b43.i.i, label %land.end.i.i.fh_getattr.exit_crit_edge, label %if.then7.i.i, !prof !159

land.end.i.i.fh_getattr.exit_crit_edge:           ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fh_getattr.exit

if.then7.i.i:                                     ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @nfserrno.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 889, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %call.i331) #6
  br label %fh_getattr.exit

fh_getattr.exit:                                  ; preds = %if.then7.i.i, %land.end.i.i.fh_getattr.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %147, %if.then.i.i ], [ 5, %if.then7.i.i ], [ 5, %land.end.i.i.fh_getattr.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p.i) #6
  %148 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %retval.0.i.i, ptr %3, align 8
  br label %out

out:                                              ; preds = %fh_getattr.exit, %done.out_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfssvc_decode_createargs(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd_proc_remove(ptr noundef %rqstp) #1 align 64 {
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
  %len = getelementptr inbounds %struct.nfsd_diropargs, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %name = getelementptr inbounds %struct.nfsd_diropargs, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %call, i32 noundef %6, ptr noundef %8) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %name6 = getelementptr inbounds %struct.nfsd_diropargs, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %name6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name6, align 8
  %len7 = getelementptr inbounds %struct.nfsd_diropargs, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %len7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len7, align 4
  %call8 = tail call i32 @nfsd_unlink(ptr noundef %rqstp, ptr noundef %1, i32 noundef -16384, ptr noundef %10, i32 noundef %12) #6
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call8, ptr %3, align 4
  tail call void @fh_put(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfssvc_encode_statres(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd_proc_rename(ptr noundef %rqstp) #1 align 64 {
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
  %flen = getelementptr inbounds %struct.nfsd_renameargs, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %flen to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flen, align 4
  %fname = getelementptr inbounds %struct.nfsd_renameargs, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %fname to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fname, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %call, i32 noundef %6, ptr noundef %8) #9
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
  %tfh = getelementptr inbounds %struct.nfsd_renameargs, ptr %1, i32 0, i32 3
  %call13 = tail call ptr @SVCFH_fmt(ptr noundef %tfh) #6
  %tlen = getelementptr inbounds %struct.nfsd_renameargs, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %tlen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tlen, align 4
  %tname = getelementptr inbounds %struct.nfsd_renameargs, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %tname to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tname, align 8
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %call13, i32 noundef %11, ptr noundef %13) #9
  br label %do.end17

do.end17:                                         ; preds = %do.end11, %do.body5.do.end17_crit_edge
  %fname19 = getelementptr inbounds %struct.nfsd_renameargs, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %fname19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fname19, align 8
  %flen20 = getelementptr inbounds %struct.nfsd_renameargs, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %flen20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flen20, align 4
  %tfh21 = getelementptr inbounds %struct.nfsd_renameargs, ptr %1, i32 0, i32 3
  %tname22 = getelementptr inbounds %struct.nfsd_renameargs, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %tname22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tname22, align 8
  %tlen23 = getelementptr inbounds %struct.nfsd_renameargs, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %tlen23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tlen23, align 4
  %call24 = tail call i32 @nfsd_rename(ptr noundef %rqstp, ptr noundef %1, ptr noundef %15, i32 noundef %17, ptr noundef %tfh21, ptr noundef %19, i32 noundef %21) #6
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call24, ptr %3, align 4
  tail call void @fh_put(ptr noundef %1) #6
  tail call void @fh_put(ptr noundef %tfh21) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfssvc_decode_renameargs(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd_proc_link(ptr noundef %rqstp) #1 align 64 {
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
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %call) #9
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
  %tfh = getelementptr inbounds %struct.nfsd_linkargs, ptr %1, i32 0, i32 1
  %call13 = tail call ptr @SVCFH_fmt(ptr noundef %tfh) #6
  %tlen = getelementptr inbounds %struct.nfsd_linkargs, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %tlen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tlen, align 4
  %tname = getelementptr inbounds %struct.nfsd_linkargs, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %tname to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tname, align 8
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %call13, i32 noundef %7, ptr noundef %9) #9
  br label %do.end17

do.end17:                                         ; preds = %do.end11, %do.body5.do.end17_crit_edge
  %tfh18 = getelementptr inbounds %struct.nfsd_linkargs, ptr %1, i32 0, i32 1
  %tname19 = getelementptr inbounds %struct.nfsd_linkargs, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %tname19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tname19, align 8
  %tlen20 = getelementptr inbounds %struct.nfsd_linkargs, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %tlen20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tlen20, align 4
  %call22 = tail call i32 @nfsd_link(ptr noundef %rqstp, ptr noundef %tfh18, ptr noundef %11, i32 noundef %13, ptr noundef %1) #6
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call22, ptr %3, align 4
  tail call void @fh_put(ptr noundef %1) #6
  tail call void @fh_put(ptr noundef %tfh18) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfssvc_decode_linkargs(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd_proc_symlink(ptr noundef %rqstp) #1 align 64 {
entry:
  %newfh = alloca %struct.svc_fh, align 8
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
  call void @llvm.lifetime.start.p0(i64 360, ptr nonnull %newfh) #6
  %tlen = getelementptr inbounds %struct.nfsd_symlinkargs, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %tlen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %5)
  %cmp = icmp ugt i32 %5, 1024
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 63, ptr %3, align 4
  br label %out

if.end:                                           ; preds = %entry
  %first = getelementptr inbounds %struct.nfsd_symlinkargs, ptr %1, i32 0, i32 6
  %pages = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 3
  %7 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pages, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %call = tail call ptr @page_address(ptr noundef %10) #6
  %11 = ptrtoint ptr %tlen to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tlen, align 4
  %call2 = tail call ptr @svc_fill_symlink_pathname(ptr noundef %rqstp, ptr noundef %first, ptr noundef %call, i32 noundef %12) #6
  %tname = getelementptr inbounds %struct.nfsd_symlinkargs, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %tname to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call2, ptr %tname, align 8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %do.body

if.then5:                                         ; preds = %if.end
  %14 = ptrtoint ptr %call2 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then5
  %i.045.i = phi i32 [ 0, %if.then5 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %syserr.i = getelementptr [38 x %struct.anon.156], ptr @nfserrno.nfs_errtbl, i32 0, i32 %i.045.i, i32 1
  %15 = ptrtoint ptr %syserr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %syserr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %14)
  %cmp1.i = icmp eq i32 %16, %14
  br i1 %cmp1.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr [38 x %struct.anon.156], ptr @nfserrno.nfs_errtbl, i32 0, i32 %i.045.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  br label %nfserrno.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.045.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 38
  br i1 %exitcond.not.i, label %land.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

land.end.i:                                       ; preds = %for.inc.i
  %.b43.i = load i1, ptr @nfserrno.__already_done, align 1
  br i1 %.b43.i, label %land.end.i.nfserrno.exit_crit_edge, label %if.then7.i, !prof !159

land.end.i.nfserrno.exit_crit_edge:               ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfserrno.exit

if.then7.i:                                       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @nfserrno.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 889, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %14) #6
  br label %nfserrno.exit

nfserrno.exit:                                    ; preds = %if.then7.i, %land.end.i.nfserrno.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %18, %if.then.i ], [ 5, %if.then7.i ], [ 5, %land.end.i.nfserrno.exit_crit_edge ]
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %retval.0.i, ptr %3, align 4
  br label %out

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %20 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end19_crit_edge, label %do.end

do.body.do.end19_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call ptr @SVCFH_fmt(ptr noundef %1) #6
  %flen = getelementptr inbounds %struct.nfsd_symlinkargs, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %flen to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flen, align 4
  %fname = getelementptr inbounds %struct.nfsd_symlinkargs, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %fname to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fname, align 8
  %25 = ptrtoint ptr %tlen to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tlen, align 4
  %27 = ptrtoint ptr %tname to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tname, align 8
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %call13, i32 noundef %22, ptr noundef %24, i32 noundef %26, ptr noundef %28) #9
  br label %do.end19

do.end19:                                         ; preds = %do.end, %do.body.do.end19_crit_edge
  %29 = call ptr @memset(ptr %newfh, i32 0, i32 360)
  %fh_maxsize.i = getelementptr inbounds %struct.svc_fh, ptr %newfh, i32 0, i32 1
  %30 = ptrtoint ptr %fh_maxsize.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 32, ptr %fh_maxsize.i, align 4
  %fname22 = getelementptr inbounds %struct.nfsd_symlinkargs, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %fname22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fname22, align 8
  %flen23 = getelementptr inbounds %struct.nfsd_symlinkargs, ptr %1, i32 0, i32 2
  %33 = ptrtoint ptr %flen23 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flen23, align 4
  %35 = ptrtoint ptr %tname to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tname, align 8
  %call25 = call i32 @nfsd_symlink(ptr noundef %rqstp, ptr noundef %1, ptr noundef %32, i32 noundef %34, ptr noundef %36, ptr noundef nonnull %newfh) #6
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call25, ptr %3, align 4
  %38 = ptrtoint ptr %tname to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tname, align 8
  call void @kfree(ptr noundef %39) #6
  call void @fh_put(ptr noundef %1) #6
  call void @fh_put(ptr noundef nonnull %newfh) #6
  br label %out

out:                                              ; preds = %do.end19, %nfserrno.exit, %if.then
  call void @llvm.lifetime.end.p0(i64 360, ptr nonnull %newfh) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfssvc_decode_symlinkargs(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd_proc_mkdir(ptr noundef %rqstp) #1 align 64 {
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
  %len = getelementptr inbounds %struct.nfsd_createargs, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %name = getelementptr inbounds %struct.nfsd_createargs, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %call, i32 noundef %6, ptr noundef %8) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %fh5 = getelementptr inbounds %struct.nfsd_diropres, ptr %3, i32 0, i32 1
  %fh_dentry = getelementptr inbounds %struct.nfsd_diropres, ptr %3, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fh_dentry, align 8
  %tobool6.not = icmp eq ptr %10, null
  br i1 %tobool6.not, label %do.end4.if.end13_crit_edge, label %do.end10

do.end4.if.end13_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

do.end10:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #9
  br label %if.end13

if.end13:                                         ; preds = %do.end10, %do.end4.if.end13_crit_edge
  %attrs = getelementptr inbounds %struct.nfsd_createargs, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %attrs, align 8
  %and14 = and i32 %12, -9
  store i32 %and14, ptr %attrs, align 8
  %13 = call ptr @memset(ptr %fh5, i32 0, i32 360)
  %fh_maxsize.i = getelementptr inbounds %struct.nfsd_diropres, ptr %3, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %fh_maxsize.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 32, ptr %fh_maxsize.i, align 4
  %name18 = getelementptr inbounds %struct.nfsd_createargs, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %name18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name18, align 8
  %len19 = getelementptr inbounds %struct.nfsd_createargs, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %len19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len19, align 4
  %call22 = tail call i32 @nfsd_create(ptr noundef %rqstp, ptr noundef %1, ptr noundef %16, i32 noundef %18, ptr noundef %attrs, i32 noundef 16384, i32 noundef 0, ptr noundef %fh5) #6
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call22, ptr %3, align 8
  tail call void @fh_put(ptr noundef %1) #6
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.not = icmp eq i32 %21, 0
  br i1 %cmp.not, label %if.end26, label %if.end13.out_crit_edge

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end26:                                         ; preds = %if.end13
  %stat = getelementptr inbounds %struct.nfsd_diropres, ptr %3, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p.i) #6
  %22 = getelementptr inbounds %struct.path, ptr %p.i, i32 0, i32 1
  %fh_export.i = getelementptr inbounds %struct.nfsd_diropres, ptr %3, i32 0, i32 1, i32 3
  %23 = ptrtoint ptr %fh_export.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fh_export.i, align 4
  %ex_path.i = getelementptr inbounds %struct.svc_export, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %ex_path.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ex_path.i, align 8
  %27 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %p.i, align 4
  %28 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fh_dentry, align 8
  %30 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %22, align 4
  %call.i = call i32 @vfs_getattr(ptr noundef nonnull %p.i, ptr noundef %stat, i32 noundef 2047, i32 noundef 0) #6
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end26
  %i.045.i.i = phi i32 [ 0, %if.end26 ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %syserr.i.i = getelementptr [38 x %struct.anon.156], ptr @nfserrno.nfs_errtbl, i32 0, i32 %i.045.i.i, i32 1
  %31 = ptrtoint ptr %syserr.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %syserr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %call.i)
  %cmp1.i.i = icmp eq i32 %32, %call.i
  br i1 %cmp1.i.i, label %if.then.i.i, label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i = getelementptr [38 x %struct.anon.156], ptr @nfserrno.nfs_errtbl, i32 0, i32 %i.045.i.i
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i.i, align 4
  br label %fh_getattr.exit

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.045.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 38
  br i1 %exitcond.not.i.i, label %land.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

land.end.i.i:                                     ; preds = %for.inc.i.i
  %.b43.i.i = load i1, ptr @nfserrno.__already_done, align 1
  br i1 %.b43.i.i, label %land.end.i.i.fh_getattr.exit_crit_edge, label %if.then7.i.i, !prof !159

land.end.i.i.fh_getattr.exit_crit_edge:           ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fh_getattr.exit

if.then7.i.i:                                     ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @nfserrno.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 889, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %call.i) #6
  br label %fh_getattr.exit

fh_getattr.exit:                                  ; preds = %if.then7.i.i, %land.end.i.i.fh_getattr.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %34, %if.then.i.i ], [ 5, %if.then7.i.i ], [ 5, %land.end.i.i.fh_getattr.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p.i) #6
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %retval.0.i.i, ptr %3, align 8
  br label %out

out:                                              ; preds = %fh_getattr.exit, %if.end13.out_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd_proc_rmdir(ptr noundef %rqstp) #1 align 64 {
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
  %len = getelementptr inbounds %struct.nfsd_diropargs, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %name = getelementptr inbounds %struct.nfsd_diropargs, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %call, i32 noundef %6, ptr noundef %8) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %name6 = getelementptr inbounds %struct.nfsd_diropargs, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %name6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name6, align 8
  %len7 = getelementptr inbounds %struct.nfsd_diropargs, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %len7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len7, align 4
  %call8 = tail call i32 @nfsd_unlink(ptr noundef %rqstp, ptr noundef %1, i32 noundef 16384, ptr noundef %10, i32 noundef %12) #6
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call8, ptr %3, align 4
  tail call void @fh_put(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd_proc_readdir(ptr noundef %rqstp) #1 align 64 {
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
  %count = getelementptr inbounds %struct.nfsd_readdirargs, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count, align 4
  %cookie = getelementptr inbounds %struct.nfsd_readdirargs, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cookie, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %call, i32 noundef %6, i32 noundef %8) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %count5 = getelementptr inbounds %struct.nfsd_readdirargs, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %count5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count5, align 4
  %dirlist.i = getelementptr inbounds %struct.nfsd_readdirres, ptr %3, i32 0, i32 3
  %xdr1.i = getelementptr inbounds %struct.nfsd_readdirres, ptr %3, i32 0, i32 2
  %11 = tail call i32 @llvm.umax.i32(i32 %10, i32 8) #6
  %call.i = tail call i32 @svc_max_payload(ptr noundef %rqstp) #6
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 %call.i) #6
  %13 = call ptr @memset(ptr %dirlist.i, i32 0, i32 44)
  %sub.i = add i32 %12, -8
  %buflen.i = getelementptr inbounds %struct.nfsd_readdirres, ptr %3, i32 0, i32 3, i32 7
  %14 = ptrtoint ptr %buflen.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub.i, ptr %buflen.i, align 4
  %rq_next_page.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 22
  %15 = ptrtoint ptr %rq_next_page.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rq_next_page.i, align 8
  %pages.i = getelementptr inbounds %struct.nfsd_readdirres, ptr %3, i32 0, i32 3, i32 3
  %17 = ptrtoint ptr %pages.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %pages.i, align 4
  %18 = load ptr, ptr %rq_next_page.i, align 8
  %incdec.ptr.i = getelementptr ptr, ptr %18, i32 1
  store ptr %incdec.ptr.i, ptr %rq_next_page.i, align 8
  %scratch.i.i = getelementptr inbounds %struct.nfsd_readdirres, ptr %3, i32 0, i32 2, i32 4
  %19 = ptrtoint ptr %scratch.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %scratch.i.i, align 4
  %iov_len.i.i = getelementptr inbounds %struct.nfsd_readdirres, ptr %3, i32 0, i32 2, i32 4, i32 1
  %20 = ptrtoint ptr %iov_len.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %iov_len.i.i, align 4
  %buf9.i = getelementptr inbounds %struct.nfsd_readdirres, ptr %3, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %buf9.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dirlist.i, ptr %buf9.i, align 4
  %22 = load ptr, ptr %pages.i, align 4
  %page_ptr.i = getelementptr inbounds %struct.nfsd_readdirres, ptr %3, i32 0, i32 2, i32 5
  %23 = ptrtoint ptr %page_ptr.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %page_ptr.i, align 4
  %iov.i = getelementptr inbounds %struct.nfsd_readdirres, ptr %3, i32 0, i32 2, i32 3
  %24 = ptrtoint ptr %iov.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %iov.i, align 4
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %22, align 4
  %call12.i = tail call ptr @page_address(ptr noundef %26) #6
  %27 = ptrtoint ptr %xdr1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call12.i, ptr %xdr1.i, align 4
  %28 = ptrtoint ptr %buflen.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %buflen.i, align 4
  %30 = tail call i32 @llvm.umin.i32(i32 %29, i32 4096) #6
  %add.ptr.i = getelementptr i8, ptr %call12.i, i32 %30
  %end.i = getelementptr inbounds %struct.nfsd_readdirres, ptr %3, i32 0, i32 2, i32 2
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr.i, ptr %end.i, align 4
  %rqst.i = getelementptr inbounds %struct.nfsd_readdirres, ptr %3, i32 0, i32 2, i32 7
  %32 = ptrtoint ptr %rqst.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %rqst.i, align 4
  %common = getelementptr inbounds %struct.nfsd_readdirres, ptr %3, i32 0, i32 4
  %33 = ptrtoint ptr %common to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %common, align 4
  %cookie_offset = getelementptr inbounds %struct.nfsd_readdirres, ptr %3, i32 0, i32 5
  %34 = ptrtoint ptr %cookie_offset to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %cookie_offset, align 4
  %cookie6 = getelementptr inbounds %struct.nfsd_readdirargs, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %cookie6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cookie6, align 8
  %conv = zext i32 %36 to i64
  %37 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %conv, ptr %offset, align 8
  %call9 = call i32 @nfsd_readdir(ptr noundef %rqstp, ptr noundef %1, ptr noundef nonnull %offset, ptr noundef %common, ptr noundef nonnull @nfssvc_encode_entry) #6
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call9, ptr %3, align 4
  %39 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %offset, align 8
  %conv10 = trunc i64 %40 to i32
  call void @nfssvc_encode_nfscookie(ptr noundef %3, i32 noundef %conv10) #6
  call void @fh_put(ptr noundef %1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %offset) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfssvc_decode_readdirargs(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfssvc_encode_readdirres(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd_proc_statfs(ptr noundef %rqstp) #1 align 64 {
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
  %stats = getelementptr inbounds %struct.nfsd_statfsres, ptr %3, i32 0, i32 1
  %call6 = tail call i32 @nfsd_statfs(ptr noundef %rqstp, ptr noundef %1, ptr noundef %stats, i32 noundef 256) #6
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call6, ptr %3, align 8
  tail call void @fh_put(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfssvc_encode_statfsres(ptr noundef, ptr noundef) #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @SVCFH_fmt(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fh_verify(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_getattr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setattr_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_setattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_lookup(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @fh_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_readlink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_read(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_reserve(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_fill_write_vector(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_write(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_one_len(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fh_compose(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_permission(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_create_locked(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

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
declare dso_local i32 @nfsd_unlink(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_rename(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_link(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @svc_fill_symlink_pathname(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_symlink(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_readdir(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfssvc_encode_entry(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfssvc_encode_nfscookie(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_max_payload(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_statfs(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !51, !52, !53, !55, !57, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !108, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !145, !147, !148, !149}
!llvm.module.flags = !{!150, !151, !152, !153, !154, !155, !156, !157}
!llvm.ident = !{!158}

!0 = !{ptr @nfsd_version2, !1, !"nfsd_version2", i1 false, i1 false}
!1 = !{!"../fs/nfsd/nfsproc.c", i32 823, i32 26}
!2 = !{ptr @nfserrno.nfs_errtbl, !3, !"nfs_errtbl", i1 false, i1 false}
!3 = !{!"../fs/nfsd/nfsproc.c", i32 841, i32 4}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../fs/nfsd/nfsproc.c", i32 889, i32 2}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @nfsd_count2, !9, !"nfsd_count2", i1 false, i1 false}
!9 = !{!"../fs/nfsd/nfsproc.c", i32 822, i32 21}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/nfsd/nfsproc.c", i32 641, i32 14}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/nfsd/nfsproc.c", i32 652, i32 14}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/nfsd/nfsproc.c", i32 663, i32 14}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/nfsd/nfsproc.c", i32 673, i32 14}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/nfsd/nfsproc.c", i32 684, i32 14}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/nfsd/nfsproc.c", i32 694, i32 14}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/nfsd/nfsproc.c", i32 705, i32 14}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/nfsd/nfsproc.c", i32 715, i32 14}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/nfsd/nfsproc.c", i32 726, i32 14}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/nfsd/nfsproc.c", i32 737, i32 14}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/nfsd/nfsproc.c", i32 747, i32 14}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/nfsd/nfsproc.c", i32 757, i32 14}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/nfsd/nfsproc.c", i32 767, i32 14}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/nfsd/nfsproc.c", i32 777, i32 14}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/nfsd/nfsproc.c", i32 788, i32 14}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/nfsd/nfsproc.c", i32 798, i32 14}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/nfsd/nfsproc.c", i32 807, i32 14}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/nfsd/nfsproc.c", i32 817, i32 14}
!46 = !{ptr @nfsd_procedures2, !47, !"nfsd_procedures2", i1 false, i1 false}
!47 = !{!"../fs/nfsd/nfsproc.c", i32 632, i32 35}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/nfsd/nfsproc.c", i32 32, i32 2}
!50 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @nfsd_proc_getattr._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @nfsd_proc_getattr._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/nfsd/nfsfh.h", i32 228, i32 2}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/nfsd/nfsproc.c", i32 56, i32 2}
!57 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @nfsd_proc_setattr._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @nfsd_proc_setattr._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/nfsd/nfsproc.c", i32 131, i32 2}
!62 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @nfsd_proc_lookup._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @nfsd_proc_lookup._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/nfsd/nfsproc.c", i32 155, i32 2}
!67 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @nfsd_proc_readlink._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @nfsd_proc_readlink._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/nfsd/nfsproc.c", i32 180, i32 2}
!72 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @nfsd_proc_read._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @nfsd_proc_read._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/nfsd/nfsproc.c", i32 233, i32 2}
!77 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @nfsd_proc_write._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @nfsd_proc_write._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/nfsd/nfsproc.c", i32 269, i32 2}
!82 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @nfsd_proc_create._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @nfsd_proc_create._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/nfsd/nfsproc.c", i32 308, i32 4}
!87 = !{ptr @nfsd_proc_create._entry.35, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @nfsd_proc_create._entry_ptr.37, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/nfsd/nfsproc.c", i32 391, i32 3}
!91 = !{ptr @nfsd_proc_create._entry.38, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @nfsd_proc_create._entry_ptr.40, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/nfsd/nfsfh.h", i32 363, i32 3}
!95 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @fh_lock_nested._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @fh_lock_nested._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/nfsd/nfsproc.c", i32 422, i32 2}
!100 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @nfsd_proc_remove._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @nfsd_proc_remove._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/nfsd/nfsproc.c", i32 438, i32 2}
!105 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @nfsd_proc_rename._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @nfsd_proc_rename._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/nfsd/nfsproc.c", i32 440, i32 2}
!110 = !{ptr @nfsd_proc_rename._entry.47, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @nfsd_proc_rename._entry_ptr.49, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/nfsd/nfsproc.c", i32 456, i32 2}
!114 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @nfsd_proc_link._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @nfsd_proc_link._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/nfsd/nfsproc.c", i32 458, i32 2}
!119 = !{ptr @nfsd_proc_link._entry.52, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @nfsd_proc_link._entry_ptr.54, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../fs/nfsd/nfsproc.c", i32 490, i32 2}
!123 = !{ptr @.str.56, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @nfsd_proc_symlink._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @nfsd_proc_symlink._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/nfsd/nfsproc.c", i32 515, i32 2}
!128 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @nfsd_proc_mkdir._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @nfsd_proc_mkdir._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.60, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../fs/nfsd/nfsproc.c", i32 518, i32 3}
!133 = !{ptr @nfsd_proc_mkdir._entry.59, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @nfsd_proc_mkdir._entry_ptr.61, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.62, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../fs/nfsd/nfsproc.c", i32 544, i32 2}
!137 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @nfsd_proc_rmdir._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @nfsd_proc_rmdir._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/nfsd/nfsproc.c", i32 589, i32 2}
!142 = !{ptr @.str.65, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @nfsd_proc_readdir._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @nfsd_proc_readdir._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.66, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../fs/nfsd/nfsproc.c", i32 615, i32 2}
!147 = !{ptr @.str.67, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @nfsd_proc_statfs._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @nfsd_proc_statfs._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{i32 1, !"wchar_size", i32 2}
!151 = !{i32 1, !"min_enum_size", i32 4}
!152 = !{i32 8, !"branch-target-enforcement", i32 0}
!153 = !{i32 8, !"sign-return-address", i32 0}
!154 = !{i32 8, !"sign-return-address-all", i32 0}
!155 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!156 = !{i32 7, !"uwtable", i32 1}
!157 = !{i32 7, !"frame-pointer", i32 2}
!158 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!159 = !{!"branch_weights", i32 2000, i32 1}
!160 = !{i8 0, i8 2}
!161 = !{!"auto-init"}
!162 = !{!"branch_weights", i32 1, i32 2000}
!163 = !{i64 2157401395, i64 2157401875, i64 2157401432, i64 2157401488, i64 2157401522, i64 2157401546, i64 2157401587, i64 2157401608, i64 2157401636, i64 2157401670}
