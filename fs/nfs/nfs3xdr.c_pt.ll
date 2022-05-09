; ModuleID = '/llk/IR_all_yes/fs/nfs/nfs3xdr.c_pt.bc'
source_filename = "../fs/nfs/nfs3xdr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rpc_procinfo = type { i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.rpc_version = type { i32, i32, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.10 }
%union.anon.10 = type { [5 x %struct.uid_gid_extent] }
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
%struct.ctl_table_header = type { %union.anon.20, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.78 }
%union.anon.78 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.anon.166 = type { i32, i32 }
%struct.nfs_entry = type { i64, i64, i64, ptr, i32, i32, ptr, ptr, i8, ptr }
%struct.nfs_server = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_fsid, i64, %struct.timespec64, i32, ptr, i32, %struct.nfs_auth_info, ptr, ptr, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, %struct.rpc_wait_queue, ptr, %struct.rb_root, %struct.ida, %struct.ida, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, ptr, %struct.atomic_t, %struct.__kernel_sockaddr_storage, i32, i32, i16, i16, %struct.rpc_wait_queue, i32, ptr, i8 }
%struct.nfs_fsid = type { i64, i64 }
%struct.timespec64 = type { i64, i32 }
%struct.nfs_auth_info = type { i32, [12 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.__kernel_sockaddr_storage = type { %union.anon.128 }
%union.anon.128 = type { ptr, [124 x i8] }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, ptr, %union.anon.132, ptr, i32 }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%union.anon.132 = type { %struct.work_struct }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.51 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.51 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.nfs_fattr = type { i32, i16, i32, %struct.kuid_t, %struct.kgid_t, i32, i64, %union.anon.134, %struct.nfs_fsid, i64, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64, i64, %struct.timespec64, %struct.timespec64, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.134 = type { %struct.anon.136 }
%struct.anon.136 = type { i64 }
%struct.nfs_fh = type { i16, [128 x i8] }
%struct.rpc_rqst = type { ptr, %struct.xdr_buf, %struct.xdr_buf, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.anon.155, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.xdr_buf, i32, i32, i32, i64, i32, i32, %struct.atomic_t, i32, i64, i32, %struct.list_head, i32, %struct.list_head }
%union.anon.155 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.kvec = type { ptr, i32 }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.130, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.130 = type { %struct.work_struct }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.nfs3_sattrargs = type { ptr, ptr, i32, %struct.timespec64 }
%struct.nfs3_diropargs = type { ptr, ptr, i32 }
%struct.nfs3_diropres = type { ptr, ptr, ptr }
%struct.nfs3_accessargs = type { ptr, i32 }
%struct.nfs3_accessres = type { ptr, i32 }
%struct.nfs3_readlinkargs = type { ptr, i32, i32, ptr }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.nfs_pgio_args = type { %struct.nfs4_sequence_args, ptr, ptr, ptr, %struct.nfs4_stateid_struct, i64, i32, i32, ptr, %union.anon.139 }
%struct.nfs4_sequence_args = type { ptr, i8 }
%struct.nfs4_stateid_struct = type { %union.anon.137, i32 }
%union.anon.137 = type { %struct.anon.138 }
%struct.anon.138 = type { i32, [12 x i8] }
%union.anon.139 = type { %struct.anon.140 }
%struct.anon.140 = type { ptr, [3 x i32], i32 }
%struct.nfs_pgio_res = type { %struct.nfs4_sequence_res, ptr, i64, i32, %union.anon.141 }
%struct.nfs4_sequence_res = type { ptr, i32, i32, i32, i32, i32 }
%union.anon.141 = type { %struct.anon.142 }
%struct.anon.142 = type { i32, i32 }
%struct.nfs_writeverf = type { %struct.nfs_write_verifier, i32 }
%struct.nfs_write_verifier = type { [8 x i8] }
%struct.nfs3_createargs = type { ptr, ptr, i32, ptr, i32, [2 x i32] }
%struct.nfs3_mkdirargs = type { ptr, ptr, i32, ptr }
%struct.nfs3_symlinkargs = type { ptr, ptr, i32, ptr, i32, ptr }
%struct.nfs3_mknodargs = type { ptr, ptr, i32, i32, ptr, i32 }
%struct.nfs_removeargs = type { %struct.nfs4_sequence_args, ptr, %struct.qstr }
%struct.qstr = type { %union.anon.5, ptr }
%union.anon.5 = type { i64 }
%struct.nfs_removeres = type { %struct.nfs4_sequence_res, ptr, ptr, %struct.nfs4_change_info }
%struct.nfs4_change_info = type { i32, i64, i64 }
%struct.nfs_renameargs = type { %struct.nfs4_sequence_args, ptr, ptr, ptr, ptr }
%struct.nfs_renameres = type { %struct.nfs4_sequence_res, ptr, %struct.nfs4_change_info, ptr, %struct.nfs4_change_info, ptr }
%struct.nfs3_linkargs = type { ptr, ptr, ptr, i32 }
%struct.nfs3_linkres = type { ptr, ptr }
%struct.nfs3_readdirargs = type { ptr, i64, [2 x i32], i8, i32, ptr }
%struct.nfs3_readdirres = type { ptr, ptr, i8 }
%struct.nfs_fsstat = type { ptr, i64, i64, i64, i64, i64, i64 }
%struct.nfs_fsinfo = type { ptr, i32, i32, i32, i32, i32, i32, i32, i64, %struct.timespec64, i32, i32, [8 x i32], i32, i32, i32, i32 }
%struct.nfs_pathconf = type { ptr, i32, i32 }
%struct.nfs_commitargs = type { %struct.nfs4_sequence_args, ptr, i64, i32, ptr }
%struct.nfs_commitres = type { %struct.nfs4_sequence_res, i32, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.nfs3_getaclargs = type { ptr, i32, ptr }
%struct.nfs3_getaclres = type { ptr, i32, i32, i32, ptr, ptr }
%struct.nfs3_setaclargs = type { ptr, i32, ptr, ptr, i32, i32, ptr }

@nfs_debug = external dso_local local_unnamed_addr global i32, align 4
@nfs3_decode_dirent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 2036, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"NFS: directory entry contains invalid file handle\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfs3_decode_dirent\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/nfs/nfs3xdr.c\00", [47 x i8] zeroinitializer }, align 32
@nfs3_decode_dirent._entry_ptr = internal global ptr @nfs3_decode_dirent._entry, section ".printk_index", align 4
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GETATTR\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SETATTR\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LOOKUP\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ACCESS\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"READLINK\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"READ\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WRITE\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CREATE\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MKDIR\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SYMLINK\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MKNOD\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"REMOVE\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RMDIR\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RENAME\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LINK\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"READDIR\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"READDIRPLUS\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"FSSTAT\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"FSINFO\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PATHCONF\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"COMMIT\00", [25 x i8] zeroinitializer }, align 32
@nfs3_procedures = dso_local constant { [22 x %struct.rpc_procinfo], [160 x i8] } { [22 x %struct.rpc_procinfo] [%struct.rpc_procinfo zeroinitializer, %struct.rpc_procinfo { i32 1, ptr @nfs3_xdr_enc_getattr3args, ptr @nfs3_xdr_dec_getattr3res, i32 17, i32 22, i32 1, i32 1, ptr @.str.3 }, %struct.rpc_procinfo { i32 2, ptr @nfs3_xdr_enc_setattr3args, ptr @nfs3_xdr_dec_setattr3res, i32 35, i32 30, i32 0, i32 2, ptr @.str.4 }, %struct.rpc_procinfo { i32 3, ptr @nfs3_xdr_enc_lookup3args, ptr @nfs3_xdr_dec_lookup3res, i32 81, i32 62, i32 2, i32 3, ptr @.str.5 }, %struct.rpc_procinfo { i32 4, ptr @nfs3_xdr_enc_access3args, ptr @nfs3_xdr_dec_access3res, i32 18, i32 24, i32 1, i32 4, ptr @.str.6 }, %struct.rpc_procinfo { i32 5, ptr @nfs3_xdr_enc_readlink3args, ptr @nfs3_xdr_dec_readlink3res, i32 17, i32 25, i32 3, i32 5, ptr @.str.7 }, %struct.rpc_procinfo { i32 6, ptr @nfs3_xdr_enc_read3args, ptr @nfs3_xdr_dec_read3res, i32 20, i32 27, i32 3, i32 6, ptr @.str.8 }, %struct.rpc_procinfo { i32 7, ptr @nfs3_xdr_enc_write3args, ptr @nfs3_xdr_dec_write3res, i32 22, i32 34, i32 4, i32 7, ptr @.str.9 }, %struct.rpc_procinfo { i32 8, ptr @nfs3_xdr_enc_create3args, ptr @nfs3_xdr_dec_create3res, i32 96, i32 70, i32 0, i32 8, ptr @.str.10 }, %struct.rpc_procinfo { i32 9, ptr @nfs3_xdr_enc_mkdir3args, ptr @nfs3_xdr_dec_create3res, i32 96, i32 70, i32 0, i32 9, ptr @.str.11 }, %struct.rpc_procinfo { i32 10, ptr @nfs3_xdr_enc_symlink3args, ptr @nfs3_xdr_dec_create3res, i32 97, i32 70, i32 0, i32 10, ptr @.str.12 }, %struct.rpc_procinfo { i32 11, ptr @nfs3_xdr_enc_mknod3args, ptr @nfs3_xdr_dec_create3res, i32 98, i32 70, i32 0, i32 11, ptr @.str.13 }, %struct.rpc_procinfo { i32 12, ptr @nfs3_xdr_enc_remove3args, ptr @nfs3_xdr_dec_remove3res, i32 81, i32 30, i32 0, i32 12, ptr @.str.14 }, %struct.rpc_procinfo { i32 13, ptr @nfs3_xdr_enc_lookup3args, ptr @nfs3_xdr_dec_setattr3res, i32 81, i32 30, i32 0, i32 13, ptr @.str.15 }, %struct.rpc_procinfo { i32 14, ptr @nfs3_xdr_enc_rename3args, ptr @nfs3_xdr_dec_rename3res, i32 162, i32 59, i32 0, i32 14, ptr @.str.16 }, %struct.rpc_procinfo { i32 15, ptr @nfs3_xdr_enc_link3args, ptr @nfs3_xdr_dec_link3res, i32 98, i32 52, i32 0, i32 15, ptr @.str.17 }, %struct.rpc_procinfo { i32 16, ptr @nfs3_xdr_enc_readdir3args, ptr @nfs3_xdr_dec_readdir3res, i32 22, i32 26, i32 3, i32 16, ptr @.str.18 }, %struct.rpc_procinfo { i32 17, ptr @nfs3_xdr_enc_readdirplus3args, ptr @nfs3_xdr_dec_readdir3res, i32 23, i32 26, i32 3, i32 17, ptr @.str.19 }, %struct.rpc_procinfo { i32 18, ptr @nfs3_xdr_enc_getattr3args, ptr @nfs3_xdr_dec_fsstat3res, i32 17, i32 36, i32 0, i32 18, ptr @.str.20 }, %struct.rpc_procinfo { i32 19, ptr @nfs3_xdr_enc_getattr3args, ptr @nfs3_xdr_dec_fsinfo3res, i32 17, i32 35, i32 0, i32 19, ptr @.str.21 }, %struct.rpc_procinfo { i32 20, ptr @nfs3_xdr_enc_getattr3args, ptr @nfs3_xdr_dec_pathconf3res, i32 17, i32 29, i32 0, i32 20, ptr @.str.22 }, %struct.rpc_procinfo { i32 21, ptr @nfs3_xdr_enc_commit3args, ptr @nfs3_xdr_dec_commit3res, i32 20, i32 32, i32 5, i32 21, ptr @.str.23 }], [160 x i8] zeroinitializer }, align 32
@nfs_version3_counts = internal global { [22 x i32], [40 x i8] } zeroinitializer, align 32
@nfs_version3 = dso_local constant { %struct.rpc_version, [16 x i8] } { %struct.rpc_version { i32 3, i32 22, ptr @nfs3_procedures, ptr @nfs_version3_counts }, [16 x i8] zeroinitializer }, align 32
@nfs3_acl_procedures = internal constant { [3 x %struct.rpc_procinfo], [32 x i8] } { [3 x %struct.rpc_procinfo] [%struct.rpc_procinfo zeroinitializer, %struct.rpc_procinfo { i32 1, ptr @nfs3_xdr_enc_getacl3args, ptr @nfs3_xdr_dec_getacl3res, i32 18, i32 59, i32 1, i32 0, ptr @.str.48 }, %struct.rpc_procinfo { i32 2, ptr @nfs3_xdr_enc_setacl3args, ptr @nfs3_xdr_dec_setacl3res, i32 52, i32 23, i32 0, i32 0, ptr @.str.49 }], [32 x i8] zeroinitializer }, align 32
@nfs3_acl_counts = internal global { [3 x i32], [20 x i8] } zeroinitializer, align 32
@nfsacl_version3 = dso_local constant { %struct.rpc_version, [16 x i8] } { %struct.rpc_version { i32 3, i32 3, ptr @nfs3_acl_procedures, ptr @nfs3_acl_counts }, [16 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@decode_inline_filename3._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"NFS: returned filename too long: %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"decode_inline_filename3\00", [40 x i8] zeroinitializer }, align 32
@decode_inline_filename3._entry_ptr = internal global ptr @decode_inline_filename3._entry, section ".printk_index", align 4
@decode_fattr3._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"NFS: returned invalid uid\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"decode_fattr3\00", [18 x i8] zeroinitializer }, align 32
@decode_fattr3._entry_ptr = internal global ptr @decode_fattr3._entry, section ".printk_index", align 4
@decode_fattr3._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"NFS: returned invalid gid\0A\00", [37 x i8] zeroinitializer }, align 32
@decode_fattr3._entry_ptr.30 = internal global ptr @decode_fattr3._entry.28, section ".printk_index", align 4
@nfs_type2fmt = internal constant { [9 x i16], [46 x i8] } { [9 x i16] [i16 0, i16 -32768, i16 16384, i16 24576, i16 8192, i16 -24576, i16 -16384, i16 4096, i16 0], [46 x i8] zeroinitializer }, align 32
@__tracepoint_nfs_xdr_bad_filehandle = external dso_local global %struct.tracepoint, align 4
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/nfs/nfstrace.h\00", [46 x i8] zeroinitializer }, align 32
@trace_nfs_xdr_bad_filehandle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@encode_nfs_fh3.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_nfs_xdr_status = external dso_local global %struct.tracepoint, align 4
@trace_nfs_xdr_status.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfs_errtbl = internal constant { [30 x %struct.anon.166], [48 x i8] } { [30 x %struct.anon.166] [%struct.anon.166 zeroinitializer, %struct.anon.166 { i32 1, i32 -1 }, %struct.anon.166 { i32 2, i32 -2 }, %struct.anon.166 { i32 5, i32 -5 }, %struct.anon.166 { i32 6, i32 -6 }, %struct.anon.166 { i32 13, i32 -13 }, %struct.anon.166 { i32 17, i32 -17 }, %struct.anon.166 { i32 18, i32 -18 }, %struct.anon.166 { i32 19, i32 -19 }, %struct.anon.166 { i32 20, i32 -20 }, %struct.anon.166 { i32 21, i32 -21 }, %struct.anon.166 { i32 22, i32 -22 }, %struct.anon.166 { i32 27, i32 -27 }, %struct.anon.166 { i32 28, i32 -28 }, %struct.anon.166 { i32 30, i32 -30 }, %struct.anon.166 { i32 31, i32 -31 }, %struct.anon.166 { i32 63, i32 -36 }, %struct.anon.166 { i32 66, i32 -39 }, %struct.anon.166 { i32 69, i32 -122 }, %struct.anon.166 { i32 70, i32 -116 }, %struct.anon.166 { i32 71, i32 -66 }, %struct.anon.166 { i32 10001, i32 -521 }, %struct.anon.166 { i32 10002, i32 -522 }, %struct.anon.166 { i32 10003, i32 -523 }, %struct.anon.166 { i32 10004, i32 -524 }, %struct.anon.166 { i32 10005, i32 -525 }, %struct.anon.166 { i32 10006, i32 -121 }, %struct.anon.166 { i32 10007, i32 -527 }, %struct.anon.166 { i32 10008, i32 -528 }, %struct.anon.166 { i32 -1, i32 -5 }], [48 x i8] zeroinitializer }, align 32
@nfs3_stat_to_errno._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 2511, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"NFS: Unrecognized nfs status value: %u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfs3_stat_to_errno\00", [45 x i8] zeroinitializer }, align 32
@nfs3_stat_to_errno._entry_ptr = internal global ptr @nfs3_stat_to_errno._entry, section ".printk_index", align 4
@encode_filename3.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@decode_nfspath3._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"NFS: returned pathname too long: %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"decode_nfspath3\00", [16 x i8] zeroinitializer }, align 32
@decode_nfspath3._entry_ptr = internal global ptr @decode_nfspath3._entry, section ".printk_index", align 4
@decode_nfspath3._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"NFS: server cheating in pathname result: count %u > recvd %u\0A\00", [34 x i8] zeroinitializer }, align 32
@decode_nfspath3._entry_ptr.40 = internal global ptr @decode_nfspath3._entry.38, section ".printk_index", align 4
@decode_read3resok._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 1627, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"NFS: READ count doesn't match length of opaque: count %u != ocount %u\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"decode_read3resok\00", [46 x i8] zeroinitializer }, align 32
@decode_read3resok._entry_ptr = internal global ptr @decode_read3resok._entry, section ".printk_index", align 4
@decode_read3resok._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.2, i32 1631, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"NFS: server cheating in read result: count %u > recvd %u\0A\00", [38 x i8] zeroinitializer }, align 32
@decode_read3resok._entry_ptr.45 = internal global ptr @decode_read3resok._entry.43, section ".printk_index", align 4
@decode_write3resok._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 1706, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"NFS: bad stable_how value: %u\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"decode_write3resok\00", [45 x i8] zeroinitializer }, align 32
@decode_write3resok._entry_ptr = internal global ptr @decode_write3resok._entry, section ".printk_index", align 4
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GETACL\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SETACL\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.50 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 6, i64 7]
@__sancov_gen_cov_switch_values.51 = internal global [31 x i64] [i64 29, i64 32, i64 0, i64 1, i64 2, i64 5, i64 6, i64 13, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 27, i64 28, i64 30, i64 31, i64 63, i64 66, i64 69, i64 70, i64 71, i64 10001, i64 10002, i64 10003, i64 10004, i64 10005, i64 10006, i64 10007, i64 10008]
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 2036, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 2529, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 2530, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 2531, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 2532, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 2533, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 2534, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 2535, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 2536, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 2537, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 2538, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 2539, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 2540, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 2541, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 2542, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 2543, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 2544, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 2545, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 2546, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 2547, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 2548, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 2549, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [16 x i8] c"nfs3_procedures\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 2528, i32 27 }
@___asan_gen_.130 = private unnamed_addr constant [20 x i8] c"nfs_version3_counts\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 2552, i32 21 }
@___asan_gen_.133 = private unnamed_addr constant [13 x i8] c"nfs_version3\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 2553, i32 26 }
@___asan_gen_.136 = private unnamed_addr constant [20 x i8] c"nfs3_acl_procedures\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 2561, i32 34 }
@___asan_gen_.139 = private unnamed_addr constant [16 x i8] c"nfs3_acl_counts\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 2582, i32 21 }
@___asan_gen_.142 = private unnamed_addr constant [16 x i8] c"nfsacl_version3\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 2583, i32 26 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 213, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 660, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 663, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant [13 x i8] c"nfs_type2fmt\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 99, i32 22 }
@___asan_gen_.176 = private unnamed_addr constant [21 x i8] c"../fs/nfs/nfstrace.h\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1451, i32 1 }
@___asan_gen_.179 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 108, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant [11 x i8] c"nfs_errtbl\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 2459, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 2511, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 247, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 250, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1626, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1630, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1706, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 2569, i32 13 }
@___asan_gen_.235 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.236 = private constant [20 x i8] c"../fs/nfs/nfs3xdr.c\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 2578, i32 13 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @decode_fattr3._entry, ptr @decode_fattr3._entry.28, ptr @decode_fattr3._entry_ptr, ptr @decode_fattr3._entry_ptr.30, ptr @decode_inline_filename3._entry, ptr @decode_inline_filename3._entry_ptr, ptr @decode_nfspath3._entry, ptr @decode_nfspath3._entry.38, ptr @decode_nfspath3._entry_ptr, ptr @decode_nfspath3._entry_ptr.40, ptr @decode_read3resok._entry, ptr @decode_read3resok._entry.43, ptr @decode_read3resok._entry_ptr, ptr @decode_read3resok._entry_ptr.45, ptr @decode_write3resok._entry, ptr @decode_write3resok._entry_ptr, ptr @nfs3_decode_dirent._entry, ptr @nfs3_decode_dirent._entry_ptr, ptr @nfs3_stat_to_errno._entry, ptr @nfs3_stat_to_errno._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @nfs3_procedures, ptr @nfs_version3_counts, ptr @nfs_version3, ptr @nfs3_acl_procedures, ptr @nfs3_acl_counts, ptr @nfsacl_version3, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @nfs_type2fmt, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @nfs_errtbl, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs3_decode_dirent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs3_procedures to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_version3_counts to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_version3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs3_acl_procedures to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs3_acl_counts to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsacl_version3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_inline_filename3._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_fattr3._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_fattr3._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_type2fmt to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_errtbl to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs3_stat_to_errno._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_nfspath3._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_nfspath3._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_read3resok._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_read3resok._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_write3resok._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs3_decode_dirent(ptr noundef %xdr, ptr nocapture noundef %entry1, i1 noundef zeroext %plus) local_unnamed_addr #0 align 64 {
entry:
  %old = alloca %struct.nfs_entry, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %server = getelementptr inbounds %struct.nfs_entry, ptr %entry1, i32 0, i32 9
  %0 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %server, align 8
  %client = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.rpc_userns.exit_crit_edge, label %land.lhs.true.i

entry.rpc_userns.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_userns.exit

land.lhs.true.i:                                  ; preds = %entry
  %cl_cred.i = getelementptr inbounds %struct.rpc_clnt, ptr %3, i32 0, i32 29
  %4 = ptrtoint ptr %cl_cred.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cl_cred.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.rpc_userns.exit_crit_edge, label %if.then.i

land.lhs.true.i.rpc_userns.exit_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_userns.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns.i, align 4
  br label %rpc_userns.exit

rpc_userns.exit:                                  ; preds = %if.then.i, %land.lhs.true.i.rpc_userns.exit_crit_edge, %entry.rpc_userns.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.then.i ], [ @init_user_ns, %land.lhs.true.i.rpc_userns.exit_crit_edge ], [ @init_user_ns, %entry.rpc_userns.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %old)
  %8 = call ptr @memcpy(ptr %old, ptr %entry1, i32 56)
  %call2 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %rpc_userns.exit.cleanup_crit_edge, label %if.end, !prof !135

rpc_userns.exit.cleanup_crit_edge:                ; preds = %rpc_userns.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %rpc_userns.exit
  %9 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then6, label %if.end22

if.then6:                                         ; preds = %if.end
  %call7 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.then6.cleanup_crit_edge, label %if.end18, !prof !135

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %if.then6
  %11 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp19 = icmp eq i32 %12, 0
  br i1 %cmp19, label %if.end18.cleanup_crit_edge, label %if.end21

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %eof = getelementptr inbounds %struct.nfs_entry, ptr %entry1, i32 0, i32 5
  %13 = ptrtoint ptr %eof to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %eof, align 8
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %call.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 8) #6
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end22.cleanup_crit_edge, label %if.end32, !prof !135

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end32:                                         ; preds = %if.end22
  %14 = ptrtoint ptr %call.i.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %15 = load i64, ptr %call.i.i, align 1
  %16 = ptrtoint ptr %entry1 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %entry1, align 8
  %name = getelementptr inbounds %struct.nfs_entry, ptr %entry1, i32 0, i32 3
  %len = getelementptr inbounds %struct.nfs_entry, ptr %entry1, i32 0, i32 4
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i176 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i176, label %if.end32.cleanup_crit_edge, label %if.end.i, !prof !135

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end32
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %18)
  %cmp.i = icmp ugt i32 %18, 255
  br i1 %cmp.i, label %do.body.i, label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i
  %call7.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %18) #6
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %if.end6.i.cleanup_crit_edge, label %if.end42, !prof !135

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %19 = load i32, ptr @nfs_debug, align 4
  %and.i = and i32 %19, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool19.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool19.not.i, label %do.body.i.cleanup_crit_edge, label %do.end.i, !prof !136

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %18) #9
  br label %cleanup

if.end42:                                         ; preds = %if.end6.i
  %20 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i, ptr %name, align 4
  %21 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %18, ptr %len, align 4
  %call.i.i178 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 8) #6
  %tobool.not.i.i179 = icmp eq ptr %call.i.i178, null
  br i1 %tobool.not.i.i179, label %if.end42.cleanup_crit_edge, label %if.end52, !prof !135

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end52:                                         ; preds = %if.end42
  %22 = ptrtoint ptr %call.i.i178 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %23 = load i64, ptr %call.i.i178, align 1
  %d_type = getelementptr inbounds %struct.nfs_entry, ptr %entry1, i32 0, i32 8
  %24 = ptrtoint ptr %d_type to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %d_type, align 4
  br i1 %plus, label %if.then54, label %if.end52.if.end112_crit_edge

if.end52.if.end112_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end112

if.then54:                                        ; preds = %if.end52
  %fattr = getelementptr inbounds %struct.nfs_entry, ptr %entry1, i32 0, i32 7
  %25 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fattr, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %26, align 8
  %28 = load ptr, ptr %fattr, align 8
  %call.i182 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i183 = icmp eq ptr %call.i182, null
  br i1 %tobool.not.i183, label %if.then54.cleanup_crit_edge, label %if.end.i184, !prof !135

if.then54.cleanup_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i184:                                      ; preds = %if.then54
  %29 = ptrtoint ptr %call.i182 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call.i182, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.not.i = icmp eq i32 %30, 0
  br i1 %cmp.not.i, label %if.end.i184.if.end65_crit_edge, label %decode_post_op_attr.exit

if.end.i184.if.end65_crit_edge:                   ; preds = %if.end.i184
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

decode_post_op_attr.exit:                         ; preds = %if.end.i184
  %call5.i = tail call fastcc i32 @decode_fattr3(ptr noundef %xdr, ptr noundef %28, ptr noundef %retval.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool57.not = icmp eq i32 %call5.i, 0
  br i1 %tobool57.not, label %decode_post_op_attr.exit.if.end65_crit_edge, label %decode_post_op_attr.exit.cleanup_crit_edge, !prof !136

decode_post_op_attr.exit.cleanup_crit_edge:       ; preds = %decode_post_op_attr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

decode_post_op_attr.exit.if.end65_crit_edge:      ; preds = %decode_post_op_attr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.end65:                                         ; preds = %decode_post_op_attr.exit.if.end65_crit_edge, %if.end.i184.if.end65_crit_edge
  %31 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fattr, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 8
  %and = and i32 %34, 163455
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool68.not = icmp eq i32 %and, 0
  br i1 %tobool68.not, label %if.end65.if.end73_crit_edge, label %if.then69

if.end65.if.end73_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

if.then69:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  %mode = getelementptr inbounds %struct.nfs_fattr, ptr %32, i32 0, i32 1
  %35 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %mode, align 4
  %37 = lshr i16 %36, 12
  %conv1.i = trunc i16 %37 to i8
  %38 = ptrtoint ptr %d_type to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv1.i, ptr %d_type, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then69, %if.end65.if.end73_crit_edge
  %fileid = getelementptr inbounds %struct.nfs_fattr, ptr %32, i32 0, i32 9
  %39 = ptrtoint ptr %fileid to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %fileid, align 8
  %41 = ptrtoint ptr %entry1 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %entry1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %40, i64 %42)
  %cmp76.not = icmp eq i64 %40, %42
  br i1 %cmp76.not, label %if.end73.if.end82_crit_edge, label %if.then77

if.end73.if.end82_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82

if.then77:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  %mounted_on_fileid = getelementptr inbounds %struct.nfs_fattr, ptr %32, i32 0, i32 10
  %43 = ptrtoint ptr %mounted_on_fileid to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %mounted_on_fileid, align 8
  %44 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fattr, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 8
  %or = or i32 %47, 4194304
  store i32 %or, ptr %45, align 8
  br label %if.end82

if.end82:                                         ; preds = %if.then77, %if.end73.if.end82_crit_edge
  %call83 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool84.not = icmp eq ptr %call83, null
  br i1 %tobool84.not, label %if.end82.cleanup_crit_edge, label %if.end94, !prof !135

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end94:                                         ; preds = %if.end82
  %48 = ptrtoint ptr %call83 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %call83, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp95.not = icmp eq i32 %49, 0
  %fh110 = getelementptr inbounds %struct.nfs_entry, ptr %entry1, i32 0, i32 6
  %50 = ptrtoint ptr %fh110 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fh110, align 4
  br i1 %cmp95.not, label %if.else, label %if.then96

if.then96:                                        ; preds = %if.end94
  %call.i186 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i187 = icmp eq ptr %call.i186, null
  br i1 %tobool.not.i187, label %if.then96.cleanup_crit_edge, label %if.end.i188, !prof !135

if.then96.cleanup_crit_edge:                      ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i188:                                      ; preds = %if.then96
  %52 = ptrtoint ptr %call.i186 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %call.i186, align 4
  %54 = add i32 %53, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64, i32 %54)
  %55 = icmp ult i32 %54, -64
  br i1 %55, label %do.body, label %if.end13.i, !prof !135

if.end13.i:                                       ; preds = %if.end.i188
  %call14.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %53) #6
  %tobool15.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool15.not.i, label %if.end13.i.cleanup_crit_edge, label %decode_nfs_fh3.exit.thread204, !prof !135

if.end13.i.cleanup_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

decode_nfs_fh3.exit.thread204:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = trunc i32 %53 to i16
  %56 = ptrtoint ptr %51 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv.i, ptr %51, align 2
  %data.i = getelementptr inbounds %struct.nfs_fh, ptr %51, i32 0, i32 1
  %57 = call ptr @memcpy(ptr %data.i, ptr %call14.i, i32 %53)
  br label %if.end112

if.else:                                          ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #8
  %58 = call ptr @memset(ptr %51, i32 0, i32 130)
  br label %if.end112

if.end112:                                        ; preds = %if.else, %decode_nfs_fh3.exit.thread204, %if.end52.if.end112_crit_edge
  %cookie = getelementptr inbounds %struct.nfs_entry, ptr %entry1, i32 0, i32 1
  %59 = ptrtoint ptr %cookie to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %cookie, align 8
  %prev_cookie = getelementptr inbounds %struct.nfs_entry, ptr %entry1, i32 0, i32 2
  %61 = ptrtoint ptr %prev_cookie to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %prev_cookie, align 8
  store i64 %23, ptr %cookie, align 8
  br label %cleanup

do.body:                                          ; preds = %if.end.i188
  tail call fastcc void @trace_nfs_xdr_bad_filehandle(ptr noundef %xdr) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %62 = load i32, ptr @nfs_debug, align 4
  %and114 = and i32 %62, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %do.body.do.end127_crit_edge, label %do.end, !prof !136

do.body.do.end127_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end127

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call124 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %do.end127

do.end127:                                        ; preds = %do.end, %do.body.do.end127_crit_edge
  %63 = call ptr @memcpy(ptr %entry1, ptr %old, i32 56)
  br label %cleanup

cleanup:                                          ; preds = %do.end127, %if.end112, %if.end13.i.cleanup_crit_edge, %if.then96.cleanup_crit_edge, %if.end82.cleanup_crit_edge, %decode_post_op_attr.exit.cleanup_crit_edge, %if.then54.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %do.end.i, %do.body.i.cleanup_crit_edge, %if.end6.i.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end21, %if.end18.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %rpc_userns.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -523, %if.end21 ], [ -11, %do.end127 ], [ 0, %if.end112 ], [ -11, %rpc_userns.exit.cleanup_crit_edge ], [ -11, %if.then6.cleanup_crit_edge ], [ -11, %if.end18.cleanup_crit_edge ], [ %call5.i, %decode_post_op_attr.exit.cleanup_crit_edge ], [ -11, %if.end82.cleanup_crit_edge ], [ -5, %if.end22.cleanup_crit_edge ], [ -5, %if.end42.cleanup_crit_edge ], [ -36, %do.body.i.cleanup_crit_edge ], [ -36, %do.end.i ], [ -5, %if.end6.i.cleanup_crit_edge ], [ -5, %if.end32.cleanup_crit_edge ], [ -5, %if.then54.cleanup_crit_edge ], [ -5, %if.then96.cleanup_crit_edge ], [ -5, %if.end13.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %old)
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_inline_decode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs3_xdr_enc_getattr3args(ptr nocapture noundef readnone %req, ptr noundef %xdr, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %data, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %1)
  %cmp.i = icmp ugt i16 %1, 64
  br i1 %cmp.i, label %land.rhs.i, label %entry.encode_nfs_fh3.exit_crit_edge

entry.encode_nfs_fh3.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %encode_nfs_fh3.exit

land.rhs.i:                                       ; preds = %entry
  %.b47.i = load i1, ptr @encode_nfs_fh3.__already_done, align 1
  br i1 %.b47.i, label %land.rhs.i.encode_nfs_fh3.exit_crit_edge, label %if.then.i, !prof !136

land.rhs.i.encode_nfs_fh3.exit_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %encode_nfs_fh3.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @encode_nfs_fh3.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 422, i32 noundef 9, ptr noundef null) #6
  br label %encode_nfs_fh3.exit

encode_nfs_fh3.exit:                              ; preds = %if.then.i, %land.rhs.i.encode_nfs_fh3.exit_crit_edge, %entry.encode_nfs_fh3.exit_crit_edge
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %data, align 2
  %conv38.i = zext i16 %3 to i32
  %add.i = add nuw nsw i32 %conv38.i, 4
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i) #6
  %data.i = getelementptr inbounds %struct.nfs_fh, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %data, align 2
  %conv40.i = zext i16 %5 to i32
  %call41.i = tail call ptr @xdr_encode_opaque(ptr noundef %call.i, ptr noundef %data.i, i32 noundef %conv40.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs3_xdr_dec_getattr3res(ptr nocapture noundef readonly %req, ptr noundef %xdr, ptr nocapture noundef %result) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !135

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 0
  br i1 %cmp.not.i, label %if.end4, label %out_default, !prof !136

if.end4:                                          ; preds = %if.end.i
  %rq_task.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 3
  %2 = ptrtoint ptr %rq_task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_task.i, align 4
  %tobool.not.i11 = icmp eq ptr %3, null
  br i1 %tobool.not.i11, label %if.end4.rpc_rqst_userns.exit_crit_edge, label %if.then.i

if.end4.rpc_rqst_userns.exit_crit_edge:           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

if.then.i:                                        ; preds = %if.end4
  %tk_client.i = getelementptr inbounds %struct.rpc_task, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %tk_client.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tk_client.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.then.i.rpc_rqst_userns.exit_crit_edge, label %land.lhs.true.i.i

if.then.i.rpc_rqst_userns.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

land.lhs.true.i.i:                                ; preds = %if.then.i
  %cl_cred.i.i = getelementptr inbounds %struct.rpc_clnt, ptr %5, i32 0, i32 29
  %6 = ptrtoint ptr %cl_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cl_cred.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %user_ns.i.i = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 25
  %8 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %user_ns.i.i, align 4
  br label %rpc_rqst_userns.exit

rpc_rqst_userns.exit:                             ; preds = %if.then.i.i, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, %if.then.i.rpc_rqst_userns.exit_crit_edge, %if.end4.rpc_rqst_userns.exit_crit_edge
  %retval.0.i12 = phi ptr [ @init_user_ns, %if.end4.rpc_rqst_userns.exit_crit_edge ], [ %9, %if.then.i.i ], [ @init_user_ns, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge ], [ @init_user_ns, %if.then.i.rpc_rqst_userns.exit_crit_edge ]
  %call6 = tail call fastcc i32 @decode_fattr3(ptr noundef %xdr, ptr noundef %result, ptr noundef %retval.0.i12)
  br label %cleanup

out_default:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @trace_nfs_xdr_status(ptr noundef %xdr, i32 noundef %1) #6
  %call7 = tail call fastcc i32 @nfs3_stat_to_errno(i32 noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %out_default, %rpc_rqst_userns.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %out_default ], [ %call6, %rpc_rqst_userns.exit ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs3_xdr_enc_setattr3args(ptr nocapture noundef readonly %req, ptr noundef %xdr, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %3)
  %cmp.i = icmp ugt i16 %3, 64
  br i1 %cmp.i, label %land.rhs.i, label %entry.encode_nfs_fh3.exit_crit_edge

entry.encode_nfs_fh3.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %encode_nfs_fh3.exit

land.rhs.i:                                       ; preds = %entry
  %.b47.i = load i1, ptr @encode_nfs_fh3.__already_done, align 1
  br i1 %.b47.i, label %land.rhs.i.encode_nfs_fh3.exit_crit_edge, label %if.then.i, !prof !136

land.rhs.i.encode_nfs_fh3.exit_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %encode_nfs_fh3.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @encode_nfs_fh3.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 422, i32 noundef 9, ptr noundef null) #6
  br label %encode_nfs_fh3.exit

encode_nfs_fh3.exit:                              ; preds = %if.then.i, %land.rhs.i.encode_nfs_fh3.exit_crit_edge, %entry.encode_nfs_fh3.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %1, align 2
  %conv38.i = zext i16 %5 to i32
  %add.i = add nuw nsw i32 %conv38.i, 4
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i) #6
  %data.i = getelementptr inbounds %struct.nfs_fh, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %1, align 2
  %conv40.i = zext i16 %7 to i32
  %call41.i = tail call ptr @xdr_encode_opaque(ptr noundef %call.i, ptr noundef %data.i, i32 noundef %conv40.i) #6
  %sattr = getelementptr inbounds %struct.nfs3_sattrargs, ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %sattr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sattr, align 4
  %rq_task.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 3
  %10 = ptrtoint ptr %rq_task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rq_task.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %encode_nfs_fh3.exit.rpc_rqst_userns.exit_crit_edge, label %if.then.i5

encode_nfs_fh3.exit.rpc_rqst_userns.exit_crit_edge: ; preds = %encode_nfs_fh3.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

if.then.i5:                                       ; preds = %encode_nfs_fh3.exit
  %tk_client.i = getelementptr inbounds %struct.rpc_task, ptr %11, i32 0, i32 13
  %12 = ptrtoint ptr %tk_client.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tk_client.i, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.then.i5.rpc_rqst_userns.exit_crit_edge, label %land.lhs.true.i.i

if.then.i5.rpc_rqst_userns.exit_crit_edge:        ; preds = %if.then.i5
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

land.lhs.true.i.i:                                ; preds = %if.then.i5
  %cl_cred.i.i = getelementptr inbounds %struct.rpc_clnt, ptr %13, i32 0, i32 29
  %14 = ptrtoint ptr %cl_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cl_cred.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %15, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %user_ns.i.i = getelementptr inbounds %struct.cred, ptr %15, i32 0, i32 25
  %16 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %user_ns.i.i, align 4
  br label %rpc_rqst_userns.exit

rpc_rqst_userns.exit:                             ; preds = %if.then.i.i, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, %if.then.i5.rpc_rqst_userns.exit_crit_edge, %encode_nfs_fh3.exit.rpc_rqst_userns.exit_crit_edge
  %retval.0.i = phi ptr [ @init_user_ns, %encode_nfs_fh3.exit.rpc_rqst_userns.exit_crit_edge ], [ %17, %if.then.i.i ], [ @init_user_ns, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge ], [ @init_user_ns, %if.then.i5.rpc_rqst_userns.exit_crit_edge ]
  tail call fastcc void @encode_sattr3(ptr noundef %xdr, ptr noundef %9, ptr noundef %retval.0.i)
  %guard.i = getelementptr inbounds %struct.nfs3_sattrargs, ptr %data, i32 0, i32 2
  %18 = ptrtoint ptr %guard.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %guard.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i6 = icmp eq i32 %19, 0
  br i1 %tobool.not.i6, label %if.else.i, label %if.then.i8

if.then.i8:                                       ; preds = %rpc_rqst_userns.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i7 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 12) #6
  %incdec.ptr.i = getelementptr i32, ptr %call.i7, i32 1
  %20 = ptrtoint ptr %call.i7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %call.i7, align 4
  %guardtime.i = getelementptr inbounds %struct.nfs3_sattrargs, ptr %data, i32 0, i32 3
  %21 = ptrtoint ptr %guardtime.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %guardtime.i, align 8
  %conv.i.i = trunc i64 %22 to i32
  %incdec.ptr.i.i = getelementptr i32, ptr %call.i7, i32 2
  %23 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv.i.i, ptr %incdec.ptr.i, align 4
  %tv_nsec.i.i = getelementptr inbounds %struct.nfs3_sattrargs, ptr %data, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tv_nsec.i.i, align 8
  %26 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %incdec.ptr.i.i, align 4
  br label %encode_sattrguard3.exit

if.else.i:                                        ; preds = %rpc_rqst_userns.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #6
  %27 = ptrtoint ptr %call2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %call2.i, align 4
  br label %encode_sattrguard3.exit

encode_sattrguard3.exit:                          ; preds = %if.else.i, %if.then.i8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs3_xdr_dec_setattr3res(ptr nocapture noundef readonly %req, ptr noundef %xdr, ptr nocapture noundef %result) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !135

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 0
  br i1 %cmp.not.i, label %if.end.i.if.end_crit_edge, label %out_status.i, !prof !136

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

out_status.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @trace_nfs_xdr_status(ptr noundef %xdr, i32 noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %out_status.i, %if.end.i.if.end_crit_edge
  %rq_task.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 3
  %2 = ptrtoint ptr %rq_task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_task.i, align 4
  %tobool.not.i21 = icmp eq ptr %3, null
  br i1 %tobool.not.i21, label %if.end.rpc_rqst_userns.exit_crit_edge, label %if.then.i

if.end.rpc_rqst_userns.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

if.then.i:                                        ; preds = %if.end
  %tk_client.i = getelementptr inbounds %struct.rpc_task, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %tk_client.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tk_client.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.then.i.rpc_rqst_userns.exit_crit_edge, label %land.lhs.true.i.i

if.then.i.rpc_rqst_userns.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

land.lhs.true.i.i:                                ; preds = %if.then.i
  %cl_cred.i.i = getelementptr inbounds %struct.rpc_clnt, ptr %5, i32 0, i32 29
  %6 = ptrtoint ptr %cl_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cl_cred.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %user_ns.i.i = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 25
  %8 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %user_ns.i.i, align 4
  br label %rpc_rqst_userns.exit

rpc_rqst_userns.exit:                             ; preds = %if.then.i.i, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, %if.then.i.rpc_rqst_userns.exit_crit_edge, %if.end.rpc_rqst_userns.exit_crit_edge
  %retval.0.i22 = phi ptr [ @init_user_ns, %if.end.rpc_rqst_userns.exit_crit_edge ], [ %9, %if.then.i.i ], [ @init_user_ns, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge ], [ @init_user_ns, %if.then.i.rpc_rqst_userns.exit_crit_edge ]
  %call4 = tail call fastcc i32 @decode_wcc_data(ptr noundef %xdr, ptr noundef %result, ptr noundef %retval.0.i22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp ne i32 %call4, 0
  %brmerge = select i1 %tobool5.not, i1 true, i1 %cmp.not.i
  br i1 %brmerge, label %rpc_rqst_userns.exit.cleanup_crit_edge, label %out_status, !prof !137

rpc_rqst_userns.exit.cleanup_crit_edge:           ; preds = %rpc_rqst_userns.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

out_status:                                       ; preds = %rpc_rqst_userns.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = tail call fastcc i32 @nfs3_stat_to_errno(i32 noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %out_status, %rpc_rqst_userns.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %out_status ], [ %call4, %rpc_rqst_userns.exit.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs3_xdr_enc_lookup3args(ptr nocapture noundef readnone %req, ptr noundef %xdr, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %name = getelementptr inbounds %struct.nfs3_diropargs, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %len = getelementptr inbounds %struct.nfs3_diropargs, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  tail call fastcc void @encode_diropargs3(ptr noundef %xdr, ptr noundef %1, ptr noundef %3, i32 noundef %5)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs3_xdr_dec_lookup3res(ptr nocapture noundef readonly %req, ptr noundef %xdr, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_task.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %rq_task.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_task.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.rpc_rqst_userns.exit_crit_edge, label %if.then.i

entry.rpc_rqst_userns.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

if.then.i:                                        ; preds = %entry
  %tk_client.i = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %tk_client.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tk_client.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.then.i.rpc_rqst_userns.exit_crit_edge, label %land.lhs.true.i.i

if.then.i.rpc_rqst_userns.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

land.lhs.true.i.i:                                ; preds = %if.then.i
  %cl_cred.i.i = getelementptr inbounds %struct.rpc_clnt, ptr %3, i32 0, i32 29
  %4 = ptrtoint ptr %cl_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cl_cred.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %user_ns.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns.i.i, align 4
  br label %rpc_rqst_userns.exit

rpc_rqst_userns.exit:                             ; preds = %if.then.i.i, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, %if.then.i.rpc_rqst_userns.exit_crit_edge, %entry.rpc_rqst_userns.exit_crit_edge
  %retval.0.i = phi ptr [ @init_user_ns, %entry.rpc_rqst_userns.exit_crit_edge ], [ %7, %if.then.i.i ], [ @init_user_ns, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge ], [ @init_user_ns, %if.then.i.rpc_rqst_userns.exit_crit_edge ]
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i55 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i55, label %rpc_rqst_userns.exit.cleanup_crit_edge, label %if.end.i, !prof !135

rpc_rqst_userns.exit.cleanup_crit_edge:           ; preds = %rpc_rqst_userns.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %rpc_rqst_userns.exit
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i, label %if.end5, label %out_default, !prof !136

if.end5:                                          ; preds = %if.end.i
  %fh = getelementptr inbounds %struct.nfs3_diropres, ptr %data, i32 0, i32 1
  %10 = ptrtoint ptr %fh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fh, align 4
  %call.i57 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i58 = icmp eq ptr %call.i57, null
  br i1 %tobool.not.i58, label %if.end5.cleanup_crit_edge, label %if.end.i59, !prof !135

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i59:                                       ; preds = %if.end5
  %12 = ptrtoint ptr %call.i57 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call.i57, align 4
  %14 = add i32 %13, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64, i32 %14)
  %15 = icmp ult i32 %14, -64
  br i1 %15, label %out_toobig.i, label %if.end13.i, !prof !135

if.end13.i:                                       ; preds = %if.end.i59
  %call14.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %13) #6
  %tobool15.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool15.not.i, label %if.end13.i.cleanup_crit_edge, label %if.end15, !prof !135

if.end13.i.cleanup_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

out_toobig.i:                                     ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @trace_nfs_xdr_bad_filehandle(ptr noundef %xdr) #6
  br label %cleanup

if.end15:                                         ; preds = %if.end13.i
  %conv.i = trunc i32 %13 to i16
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i, ptr %11, align 2
  %data.i = getelementptr inbounds %struct.nfs_fh, ptr %11, i32 0, i32 1
  %17 = call ptr @memcpy(ptr %data.i, ptr %call14.i, i32 %13)
  %fattr = getelementptr inbounds %struct.nfs3_diropres, ptr %data, i32 0, i32 2
  %18 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fattr, align 4
  %call.i61 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i62 = icmp eq ptr %call.i61, null
  br i1 %tobool.not.i62, label %if.end15.cleanup_crit_edge, label %if.end.i64, !prof !135

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i64:                                       ; preds = %if.end15
  %20 = ptrtoint ptr %call.i61 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call.i61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.not.i63 = icmp eq i32 %21, 0
  br i1 %cmp.not.i63, label %if.end.i64.if.end25_crit_edge, label %decode_post_op_attr.exit

if.end.i64.if.end25_crit_edge:                    ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

decode_post_op_attr.exit:                         ; preds = %if.end.i64
  %call5.i = tail call fastcc i32 @decode_fattr3(ptr noundef %xdr, ptr noundef %19, ptr noundef %retval.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool17.not = icmp eq i32 %call5.i, 0
  br i1 %tobool17.not, label %decode_post_op_attr.exit.if.end25_crit_edge, label %decode_post_op_attr.exit.cleanup_crit_edge, !prof !136

decode_post_op_attr.exit.cleanup_crit_edge:       ; preds = %decode_post_op_attr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

decode_post_op_attr.exit.if.end25_crit_edge:      ; preds = %decode_post_op_attr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.end25:                                         ; preds = %decode_post_op_attr.exit.if.end25_crit_edge, %if.end.i64.if.end25_crit_edge
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %call.i66 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i67 = icmp eq ptr %call.i66, null
  br i1 %tobool.not.i67, label %if.end25.cleanup_crit_edge, label %if.end.i69, !prof !135

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i69:                                       ; preds = %if.end25
  %24 = ptrtoint ptr %call.i66 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %call.i66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.not.i68 = icmp eq i32 %25, 0
  br i1 %cmp.not.i68, label %if.end.i69.cleanup_crit_edge, label %if.then4.i71

if.end.i69.cleanup_crit_edge:                     ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4.i71:                                     ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i70 = tail call fastcc i32 @decode_fattr3(ptr noundef %xdr, ptr noundef %23, ptr noundef %retval.0.i) #6
  br label %cleanup

out_default:                                      ; preds = %if.end.i
  tail call fastcc void @trace_nfs_xdr_status(ptr noundef %xdr, i32 noundef %9) #6
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  %call.i74 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i75 = icmp eq ptr %call.i74, null
  br i1 %tobool.not.i75, label %out_default.cleanup_crit_edge, label %if.end.i77, !prof !135

out_default.cleanup_crit_edge:                    ; preds = %out_default
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i77:                                       ; preds = %out_default
  %28 = ptrtoint ptr %call.i74 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %call.i74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.not.i76 = icmp eq i32 %29, 0
  br i1 %cmp.not.i76, label %if.end.i77.if.end37_crit_edge, label %decode_post_op_attr.exit81

if.end.i77.if.end37_crit_edge:                    ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

decode_post_op_attr.exit81:                       ; preds = %if.end.i77
  %call5.i78 = tail call fastcc i32 @decode_fattr3(ptr noundef %xdr, ptr noundef %27, ptr noundef %retval.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i78)
  %tobool29.not = icmp eq i32 %call5.i78, 0
  br i1 %tobool29.not, label %decode_post_op_attr.exit81.if.end37_crit_edge, label %decode_post_op_attr.exit81.cleanup_crit_edge, !prof !136

decode_post_op_attr.exit81.cleanup_crit_edge:     ; preds = %decode_post_op_attr.exit81
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

decode_post_op_attr.exit81.if.end37_crit_edge:    ; preds = %decode_post_op_attr.exit81
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.end37:                                         ; preds = %decode_post_op_attr.exit81.if.end37_crit_edge, %if.end.i77.if.end37_crit_edge
  %call38 = tail call fastcc i32 @nfs3_stat_to_errno(i32 noundef %9)
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %decode_post_op_attr.exit81.cleanup_crit_edge, %out_default.cleanup_crit_edge, %if.then4.i71, %if.end.i69.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %decode_post_op_attr.exit.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %out_toobig.i, %if.end13.i.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %rpc_rqst_userns.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call38, %if.end37 ], [ %call5.i78, %decode_post_op_attr.exit81.cleanup_crit_edge ], [ %call5.i, %decode_post_op_attr.exit.cleanup_crit_edge ], [ -5, %rpc_rqst_userns.exit.cleanup_crit_edge ], [ %call5.i70, %if.then4.i71 ], [ -5, %if.end25.cleanup_crit_edge ], [ 0, %if.end.i69.cleanup_crit_edge ], [ -5, %if.end13.i.cleanup_crit_edge ], [ -5, %if.end5.cleanup_crit_edge ], [ -7, %out_toobig.i ], [ -5, %if.end15.cleanup_crit_edge ], [ -5, %out_default.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs3_xdr_enc_access3args(ptr nocapture noundef readnone %req, ptr noundef %xdr, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %3)
  %cmp.i.i = icmp ugt i16 %3, 64
  br i1 %cmp.i.i, label %land.rhs.i.i, label %entry.encode_access3args.exit_crit_edge

entry.encode_access3args.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %encode_access3args.exit

land.rhs.i.i:                                     ; preds = %entry
  %.b47.i.i = load i1, ptr @encode_nfs_fh3.__already_done, align 1
  br i1 %.b47.i.i, label %land.rhs.i.i.encode_access3args.exit_crit_edge, label %if.then.i.i, !prof !136

land.rhs.i.i.encode_access3args.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %encode_access3args.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @encode_nfs_fh3.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 422, i32 noundef 9, ptr noundef null) #6
  br label %encode_access3args.exit

encode_access3args.exit:                          ; preds = %if.then.i.i, %land.rhs.i.i.encode_access3args.exit_crit_edge, %entry.encode_access3args.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %1, align 2
  %conv38.i.i = zext i16 %5 to i32
  %add.i.i = add nuw nsw i32 %conv38.i.i, 4
  %call.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i.i) #6
  %data.i.i = getelementptr inbounds %struct.nfs_fh, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %1, align 2
  %conv40.i.i = zext i16 %7 to i32
  %call41.i.i = tail call ptr @xdr_encode_opaque(ptr noundef %call.i.i, ptr noundef %data.i.i, i32 noundef %conv40.i.i) #6
  %access.i = getelementptr inbounds %struct.nfs3_accessargs, ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %access.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %access.i, align 4
  %call.i3.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #6
  %10 = ptrtoint ptr %call.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %call.i3.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs3_xdr_dec_access3res(ptr nocapture noundef readonly %req, ptr noundef %xdr, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !135

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 0
  br i1 %cmp.not.i, label %if.end.i.if.end_crit_edge, label %out_status.i, !prof !136

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

out_status.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @trace_nfs_xdr_status(ptr noundef %xdr, i32 noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %out_status.i, %if.end.i.if.end_crit_edge
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %rq_task.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 3
  %4 = ptrtoint ptr %rq_task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rq_task.i, align 4
  %tobool.not.i25 = icmp eq ptr %5, null
  br i1 %tobool.not.i25, label %if.end.rpc_rqst_userns.exit_crit_edge, label %if.then.i

if.end.rpc_rqst_userns.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

if.then.i:                                        ; preds = %if.end
  %tk_client.i = getelementptr inbounds %struct.rpc_task, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %tk_client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tk_client.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.then.i.rpc_rqst_userns.exit_crit_edge, label %land.lhs.true.i.i

if.then.i.rpc_rqst_userns.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

land.lhs.true.i.i:                                ; preds = %if.then.i
  %cl_cred.i.i = getelementptr inbounds %struct.rpc_clnt, ptr %7, i32 0, i32 29
  %8 = ptrtoint ptr %cl_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cl_cred.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %user_ns.i.i = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 25
  %10 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %user_ns.i.i, align 4
  br label %rpc_rqst_userns.exit

rpc_rqst_userns.exit:                             ; preds = %if.then.i.i, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, %if.then.i.rpc_rqst_userns.exit_crit_edge, %if.end.rpc_rqst_userns.exit_crit_edge
  %retval.0.i26 = phi ptr [ @init_user_ns, %if.end.rpc_rqst_userns.exit_crit_edge ], [ %11, %if.then.i.i ], [ @init_user_ns, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge ], [ @init_user_ns, %if.then.i.rpc_rqst_userns.exit_crit_edge ]
  %call.i27 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i28 = icmp eq ptr %call.i27, null
  br i1 %tobool.not.i28, label %rpc_rqst_userns.exit.cleanup_crit_edge, label %if.end.i30, !prof !135

rpc_rqst_userns.exit.cleanup_crit_edge:           ; preds = %rpc_rqst_userns.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i30:                                       ; preds = %rpc_rqst_userns.exit
  %12 = ptrtoint ptr %call.i27 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call.i27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not.i29 = icmp eq i32 %13, 0
  br i1 %cmp.not.i29, label %if.end.i30.if.end13_crit_edge, label %decode_post_op_attr.exit

if.end.i30.if.end13_crit_edge:                    ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

decode_post_op_attr.exit:                         ; preds = %if.end.i30
  %call5.i = tail call fastcc i32 @decode_fattr3(ptr noundef %xdr, ptr noundef %3, ptr noundef %retval.0.i26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool5.not = icmp eq i32 %call5.i, 0
  br i1 %tobool5.not, label %decode_post_op_attr.exit.if.end13_crit_edge, label %decode_post_op_attr.exit.cleanup_crit_edge, !prof !136

decode_post_op_attr.exit.cleanup_crit_edge:       ; preds = %decode_post_op_attr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

decode_post_op_attr.exit.if.end13_crit_edge:      ; preds = %decode_post_op_attr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.end13:                                         ; preds = %decode_post_op_attr.exit.if.end13_crit_edge, %if.end.i30.if.end13_crit_edge
  br i1 %cmp.not.i, label %if.end15, label %out_default

if.end15:                                         ; preds = %if.end13
  %call.i32 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i33 = icmp eq ptr %call.i32, null
  br i1 %tobool.not.i33, label %if.end15.cleanup_crit_edge, label %if.end.i34, !prof !135

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i34:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %access = getelementptr inbounds %struct.nfs3_accessres, ptr %data, i32 0, i32 1
  %14 = ptrtoint ptr %call.i32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call.i32, align 4
  %16 = ptrtoint ptr %access to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %access, align 4
  br label %cleanup

out_default:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call fastcc i32 @nfs3_stat_to_errno(i32 noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %out_default, %if.end.i34, %if.end15.cleanup_crit_edge, %decode_post_op_attr.exit.cleanup_crit_edge, %rpc_rqst_userns.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %out_default ], [ %call5.i, %decode_post_op_attr.exit.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ], [ 0, %if.end.i34 ], [ -5, %if.end15.cleanup_crit_edge ], [ -5, %rpc_rqst_userns.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs3_xdr_enc_readlink3args(ptr noundef %req, ptr noundef %xdr, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %3)
  %cmp.i = icmp ugt i16 %3, 64
  br i1 %cmp.i, label %land.rhs.i, label %entry.encode_nfs_fh3.exit_crit_edge

entry.encode_nfs_fh3.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %encode_nfs_fh3.exit

land.rhs.i:                                       ; preds = %entry
  %.b47.i = load i1, ptr @encode_nfs_fh3.__already_done, align 1
  br i1 %.b47.i, label %land.rhs.i.encode_nfs_fh3.exit_crit_edge, label %if.then.i, !prof !136

land.rhs.i.encode_nfs_fh3.exit_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %encode_nfs_fh3.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @encode_nfs_fh3.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 422, i32 noundef 9, ptr noundef null) #6
  br label %encode_nfs_fh3.exit

encode_nfs_fh3.exit:                              ; preds = %if.then.i, %land.rhs.i.encode_nfs_fh3.exit_crit_edge, %entry.encode_nfs_fh3.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %1, align 2
  %conv38.i = zext i16 %5 to i32
  %add.i = add nuw nsw i32 %conv38.i, 4
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i) #6
  %data.i = getelementptr inbounds %struct.nfs_fh, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %1, align 2
  %conv40.i = zext i16 %7 to i32
  %call41.i = tail call ptr @xdr_encode_opaque(ptr noundef %call.i, ptr noundef %data.i, i32 noundef %conv40.i) #6
  %pages = getelementptr inbounds %struct.nfs3_readlinkargs, ptr %data, i32 0, i32 3
  %8 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pages, align 4
  %pgbase = getelementptr inbounds %struct.nfs3_readlinkargs, ptr %data, i32 0, i32 1
  %10 = ptrtoint ptr %pgbase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pgbase, align 4
  %pglen = getelementptr inbounds %struct.nfs3_readlinkargs, ptr %data, i32 0, i32 2
  %12 = ptrtoint ptr %pglen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pglen, align 4
  tail call void @rpc_prepare_reply_pages(ptr noundef %req, ptr noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef 24) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs3_xdr_dec_readlink3res(ptr nocapture noundef readonly %req, ptr noundef %xdr, ptr nocapture noundef %result) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !135

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 0
  br i1 %cmp.not.i, label %if.end.i.if.end_crit_edge, label %out_status.i, !prof !136

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

out_status.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @trace_nfs_xdr_status(ptr noundef %xdr, i32 noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %out_status.i, %if.end.i.if.end_crit_edge
  %rq_task.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 3
  %2 = ptrtoint ptr %rq_task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_task.i, align 4
  %tobool.not.i23 = icmp eq ptr %3, null
  br i1 %tobool.not.i23, label %if.end.rpc_rqst_userns.exit_crit_edge, label %if.then.i

if.end.rpc_rqst_userns.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

if.then.i:                                        ; preds = %if.end
  %tk_client.i = getelementptr inbounds %struct.rpc_task, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %tk_client.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tk_client.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.then.i.rpc_rqst_userns.exit_crit_edge, label %land.lhs.true.i.i

if.then.i.rpc_rqst_userns.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

land.lhs.true.i.i:                                ; preds = %if.then.i
  %cl_cred.i.i = getelementptr inbounds %struct.rpc_clnt, ptr %5, i32 0, i32 29
  %6 = ptrtoint ptr %cl_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cl_cred.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %user_ns.i.i = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 25
  %8 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %user_ns.i.i, align 4
  br label %rpc_rqst_userns.exit

rpc_rqst_userns.exit:                             ; preds = %if.then.i.i, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, %if.then.i.rpc_rqst_userns.exit_crit_edge, %if.end.rpc_rqst_userns.exit_crit_edge
  %retval.0.i24 = phi ptr [ @init_user_ns, %if.end.rpc_rqst_userns.exit_crit_edge ], [ %9, %if.then.i.i ], [ @init_user_ns, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge ], [ @init_user_ns, %if.then.i.rpc_rqst_userns.exit_crit_edge ]
  %call.i25 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i26 = icmp eq ptr %call.i25, null
  br i1 %tobool.not.i26, label %rpc_rqst_userns.exit.cleanup_crit_edge, label %if.end.i28, !prof !135

rpc_rqst_userns.exit.cleanup_crit_edge:           ; preds = %rpc_rqst_userns.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i28:                                       ; preds = %rpc_rqst_userns.exit
  %10 = ptrtoint ptr %call.i25 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call.i25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not.i27 = icmp eq i32 %11, 0
  br i1 %cmp.not.i27, label %if.end.i28.if.end13_crit_edge, label %decode_post_op_attr.exit

if.end.i28.if.end13_crit_edge:                    ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

decode_post_op_attr.exit:                         ; preds = %if.end.i28
  %call5.i = tail call fastcc i32 @decode_fattr3(ptr noundef %xdr, ptr noundef %result, ptr noundef %retval.0.i24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool5.not = icmp eq i32 %call5.i, 0
  br i1 %tobool5.not, label %decode_post_op_attr.exit.if.end13_crit_edge, label %decode_post_op_attr.exit.cleanup_crit_edge, !prof !136

decode_post_op_attr.exit.cleanup_crit_edge:       ; preds = %decode_post_op_attr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

decode_post_op_attr.exit.if.end13_crit_edge:      ; preds = %decode_post_op_attr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.end13:                                         ; preds = %decode_post_op_attr.exit.if.end13_crit_edge, %if.end.i28.if.end13_crit_edge
  br i1 %cmp.not.i, label %if.end15, label %out_default

if.end15:                                         ; preds = %if.end13
  %call.i30 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i31 = icmp eq ptr %call.i30, null
  br i1 %tobool.not.i31, label %if.end15.cleanup_crit_edge, label %if.end.i33, !prof !135

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i33:                                       ; preds = %if.end15
  %12 = ptrtoint ptr %call.i30 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call.i30, align 4
  %buf.i = getelementptr inbounds %struct.xdr_stream, ptr %xdr, i32 0, i32 1
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buf.i, align 4
  %page_len.i = getelementptr inbounds %struct.xdr_buf, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %page_len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %page_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %17)
  %cmp.not.i32 = icmp uge i32 %13, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %13)
  %cmp5.i = icmp ugt i32 %13, 4096
  %spec.select.i = or i1 %cmp5.i, %cmp.not.i32
  br i1 %spec.select.i, label %do.body.i, label %if.end13.i, !prof !135

if.end13.i:                                       ; preds = %if.end.i33
  %call14.i = tail call i32 @xdr_read_pages(ptr noundef %xdr, i32 noundef %13) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %call14.i)
  %cmp15.i = icmp ugt i32 %13, %call14.i
  br i1 %cmp15.i, label %do.body38.i, label %if.end23.i, !prof !135

if.end23.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buf.i, align 4
  tail call void @xdr_terminate_string(ptr noundef %19, i32 noundef %13) #6
  br label %cleanup

do.body.i:                                        ; preds = %if.end.i33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %20 = load i32, ptr @nfs_debug, align 4
  %and.i = and i32 %20, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool25.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool25.not.i, label %do.body.i.cleanup_crit_edge, label %do.end.i, !prof !136

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call34.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %13) #9
  br label %cleanup

do.body38.i:                                      ; preds = %if.end13.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %21 = load i32, ptr @nfs_debug, align 4
  %and39.i = and i32 %21, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  br i1 %tobool40.not.i, label %do.body38.i.cleanup_crit_edge, label %do.end50.i, !prof !136

do.body38.i.cleanup_crit_edge:                    ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end50.i:                                       ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #8
  %call52.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %13, i32 noundef %call14.i) #9
  br label %cleanup

out_default:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call fastcc i32 @nfs3_stat_to_errno(i32 noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %out_default, %do.end50.i, %do.body38.i.cleanup_crit_edge, %do.end.i, %do.body.i.cleanup_crit_edge, %if.end23.i, %if.end15.cleanup_crit_edge, %decode_post_op_attr.exit.cleanup_crit_edge, %rpc_rqst_userns.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %out_default ], [ %call5.i, %decode_post_op_attr.exit.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ], [ 0, %if.end23.i ], [ -5, %if.end15.cleanup_crit_edge ], [ -36, %do.end.i ], [ -36, %do.body.i.cleanup_crit_edge ], [ -5, %do.end50.i ], [ -5, %do.body38.i.cleanup_crit_edge ], [ -5, %rpc_rqst_userns.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs3_xdr_enc_read3args(ptr noundef %req, ptr noundef %xdr, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.nfs_pgio_args, ptr %data, i32 0, i32 9
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  %fh.i = getelementptr inbounds %struct.nfs_pgio_args, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %fh.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fh.i, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %6)
  %cmp.i.i = icmp ugt i16 %6, 64
  br i1 %cmp.i.i, label %land.rhs.i.i, label %entry.encode_read3args.exit_crit_edge

entry.encode_read3args.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %encode_read3args.exit

land.rhs.i.i:                                     ; preds = %entry
  %.b47.i.i = load i1, ptr @encode_nfs_fh3.__already_done, align 1
  br i1 %.b47.i.i, label %land.rhs.i.i.encode_read3args.exit_crit_edge, label %if.then.i.i, !prof !136

land.rhs.i.i.encode_read3args.exit_crit_edge:     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %encode_read3args.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @encode_nfs_fh3.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 422, i32 noundef 9, ptr noundef null) #6
  br label %encode_read3args.exit

encode_read3args.exit:                            ; preds = %if.then.i.i, %land.rhs.i.i.encode_read3args.exit_crit_edge, %entry.encode_read3args.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  %spec.select = select i1 %tobool.not, i32 26, i32 %2
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %4, align 2
  %conv38.i.i = zext i16 %8 to i32
  %add.i.i = add nuw nsw i32 %conv38.i.i, 4
  %call.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i.i) #6
  %data.i.i = getelementptr inbounds %struct.nfs_fh, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %4, align 2
  %conv40.i.i = zext i16 %10 to i32
  %call41.i.i = tail call ptr @xdr_encode_opaque(ptr noundef %call.i.i, ptr noundef %data.i.i, i32 noundef %conv40.i.i) #6
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 12) #6
  %offset.i = getelementptr inbounds %struct.nfs_pgio_args, ptr %data, i32 0, i32 5
  %11 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %offset.i, align 8
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %12, ptr %call.i, align 1
  %add.ptr.i.i = getelementptr i32, ptr %call.i, i32 2
  %count.i = getelementptr inbounds %struct.nfs_pgio_args, ptr %data, i32 0, i32 6
  %14 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count.i, align 8
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %add.ptr.i.i, align 4
  %pages = getelementptr inbounds %struct.nfs_pgio_args, ptr %data, i32 0, i32 8
  %17 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pages, align 8
  %pgbase = getelementptr inbounds %struct.nfs_pgio_args, ptr %data, i32 0, i32 7
  %19 = ptrtoint ptr %pgbase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pgbase, align 4
  %21 = load i32, ptr %count.i, align 8
  tail call void @rpc_prepare_reply_pages(ptr noundef %req, ptr noundef %18, i32 noundef %20, i32 noundef %21, i32 noundef %spec.select) #6
  %flags = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 2, i32 6
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 8
  %or = or i32 %23, 1
  store i32 %or, ptr %flags, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs3_xdr_dec_read3res(ptr nocapture noundef readonly %req, ptr noundef %xdr, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xdr_stream_pos(ptr noundef %xdr) #6
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !135

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 0
  br i1 %cmp.not.i, label %if.end.i.if.end_crit_edge, label %out_status.i, !prof !136

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

out_status.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @trace_nfs_xdr_status(ptr noundef %xdr, i32 noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %out_status.i, %if.end.i.if.end_crit_edge
  %fattr = getelementptr inbounds %struct.nfs_pgio_res, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fattr, align 8
  %rq_task.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 3
  %4 = ptrtoint ptr %rq_task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rq_task.i, align 4
  %tobool.not.i32 = icmp eq ptr %5, null
  br i1 %tobool.not.i32, label %if.end.rpc_rqst_userns.exit_crit_edge, label %if.then.i

if.end.rpc_rqst_userns.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

if.then.i:                                        ; preds = %if.end
  %tk_client.i = getelementptr inbounds %struct.rpc_task, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %tk_client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tk_client.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.then.i.rpc_rqst_userns.exit_crit_edge, label %land.lhs.true.i.i

if.then.i.rpc_rqst_userns.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

land.lhs.true.i.i:                                ; preds = %if.then.i
  %cl_cred.i.i = getelementptr inbounds %struct.rpc_clnt, ptr %7, i32 0, i32 29
  %8 = ptrtoint ptr %cl_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cl_cred.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %user_ns.i.i = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 25
  %10 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %user_ns.i.i, align 4
  br label %rpc_rqst_userns.exit

rpc_rqst_userns.exit:                             ; preds = %if.then.i.i, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, %if.then.i.rpc_rqst_userns.exit_crit_edge, %if.end.rpc_rqst_userns.exit_crit_edge
  %retval.0.i33 = phi ptr [ @init_user_ns, %if.end.rpc_rqst_userns.exit_crit_edge ], [ %11, %if.then.i.i ], [ @init_user_ns, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge ], [ @init_user_ns, %if.then.i.rpc_rqst_userns.exit_crit_edge ]
  %call.i34 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i35 = icmp eq ptr %call.i34, null
  br i1 %tobool.not.i35, label %rpc_rqst_userns.exit.cleanup_crit_edge, label %if.end.i37, !prof !135

rpc_rqst_userns.exit.cleanup_crit_edge:           ; preds = %rpc_rqst_userns.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i37:                                       ; preds = %rpc_rqst_userns.exit
  %12 = ptrtoint ptr %call.i34 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call.i34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not.i36 = icmp eq i32 %13, 0
  br i1 %cmp.not.i36, label %if.end.i37.if.end14_crit_edge, label %decode_post_op_attr.exit

if.end.i37.if.end14_crit_edge:                    ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

decode_post_op_attr.exit:                         ; preds = %if.end.i37
  %call5.i = tail call fastcc i32 @decode_fattr3(ptr noundef %xdr, ptr noundef %3, ptr noundef %retval.0.i33) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not, label %decode_post_op_attr.exit.if.end14_crit_edge, label %decode_post_op_attr.exit.cleanup_crit_edge, !prof !136

decode_post_op_attr.exit.cleanup_crit_edge:       ; preds = %decode_post_op_attr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

decode_post_op_attr.exit.if.end14_crit_edge:      ; preds = %decode_post_op_attr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.end14:                                         ; preds = %decode_post_op_attr.exit.if.end14_crit_edge, %if.end.i37.if.end14_crit_edge
  %op_status = getelementptr inbounds %struct.nfs_pgio_res, ptr %data, i32 0, i32 3
  %14 = ptrtoint ptr %op_status to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %1, ptr %op_status, align 8
  br i1 %cmp.not.i, label %if.end16, label %out_status

if.end16:                                         ; preds = %if.end14
  %call17 = tail call i32 @xdr_stream_pos(ptr noundef %xdr) #6
  %sub = sub i32 %call17, %call
  %shr = lshr i32 %sub, 2
  %add = add nuw nsw i32 %shr, 3
  %15 = getelementptr inbounds %struct.nfs_pgio_res, ptr %data, i32 0, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add, ptr %15, align 4
  %call.i39 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 12) #6
  %tobool.not.i40 = icmp eq ptr %call.i39, null
  br i1 %tobool.not.i40, label %if.end16.cleanup_crit_edge, label %if.end.i42, !prof !135

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i42:                                       ; preds = %if.end16
  %17 = ptrtoint ptr %call.i39 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call.i39, align 4
  %incdec.ptr5.i = getelementptr i32, ptr %call.i39, i32 2
  %19 = ptrtoint ptr %incdec.ptr5.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %incdec.ptr5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %18)
  %cmp.not.i41 = icmp eq i32 %20, %18
  br i1 %cmp.not.i41, label %if.end16.i, label %do.body.i, !prof !136

if.end16.i:                                       ; preds = %if.end.i42
  %incdec.ptr.i = getelementptr i32, ptr %call.i39, i32 1
  %21 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %incdec.ptr.i, align 4
  %call17.i = tail call i32 @xdr_read_pages(ptr noundef %xdr, i32 noundef %18) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %call17.i)
  %cmp18.i = icmp ugt i32 %18, %call17.i
  br i1 %cmp18.i, label %do.body42.i, label %if.end16.i.out.i_crit_edge, !prof !135

if.end16.i.out.i_crit_edge:                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

out.i:                                            ; preds = %do.end54.i, %do.body42.i.out.i_crit_edge, %if.end16.i.out.i_crit_edge
  %count.0.i = phi i32 [ %18, %if.end16.i.out.i_crit_edge ], [ %call17.i, %do.end54.i ], [ %call17.i, %do.body42.i.out.i_crit_edge ]
  %eof.0.i = phi i32 [ %22, %if.end16.i.out.i_crit_edge ], [ 0, %do.end54.i ], [ 0, %do.body42.i.out.i_crit_edge ]
  %eof27.i = getelementptr inbounds %struct.nfs_pgio_res, ptr %data, i32 0, i32 4, i32 0, i32 1
  %23 = ptrtoint ptr %eof27.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %eof.0.i, ptr %eof27.i, align 4
  %conv.i = zext i32 %count.0.i to i64
  %count28.i = getelementptr inbounds %struct.nfs_pgio_res, ptr %data, i32 0, i32 2
  %24 = ptrtoint ptr %count28.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv.i, ptr %count28.i, align 8
  br label %cleanup

do.body.i:                                        ; preds = %if.end.i42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %25 = load i32, ptr @nfs_debug, align 4
  %and.i = and i32 %25, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool29.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool29.not.i, label %do.body.i.cleanup_crit_edge, label %do.end.i, !prof !136

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call38.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %18, i32 noundef %20) #9
  br label %cleanup

do.body42.i:                                      ; preds = %if.end16.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %26 = load i32, ptr @nfs_debug, align 4
  %and43.i = and i32 %26, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  br i1 %tobool44.not.i, label %do.body42.i.out.i_crit_edge, label %do.end54.i, !prof !136

do.body42.i.out.i_crit_edge:                      ; preds = %do.body42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

do.end54.i:                                       ; preds = %do.body42.i
  call void @__sanitizer_cov_trace_pc() #8
  %call56.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %18, i32 noundef %call17.i) #9
  br label %out.i

out_status:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %call19 = tail call fastcc i32 @nfs3_stat_to_errno(i32 noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %out_status, %do.end.i, %do.body.i.cleanup_crit_edge, %out.i, %if.end16.cleanup_crit_edge, %decode_post_op_attr.exit.cleanup_crit_edge, %rpc_rqst_userns.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %out_status ], [ %call5.i, %decode_post_op_attr.exit.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ], [ %count.0.i, %out.i ], [ -5, %if.end16.cleanup_crit_edge ], [ -5, %do.end.i ], [ -5, %do.body.i.cleanup_crit_edge ], [ -5, %rpc_rqst_userns.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs3_xdr_enc_write3args(ptr nocapture noundef readnone %req, ptr noundef %xdr, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fh.i = getelementptr inbounds %struct.nfs_pgio_args, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %fh.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fh.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %3)
  %cmp.i.i = icmp ugt i16 %3, 64
  br i1 %cmp.i.i, label %land.rhs.i.i, label %entry.encode_write3args.exit_crit_edge

entry.encode_write3args.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %encode_write3args.exit

land.rhs.i.i:                                     ; preds = %entry
  %.b47.i.i = load i1, ptr @encode_nfs_fh3.__already_done, align 1
  br i1 %.b47.i.i, label %land.rhs.i.i.encode_write3args.exit_crit_edge, label %if.then.i.i, !prof !136

land.rhs.i.i.encode_write3args.exit_crit_edge:    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %encode_write3args.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @encode_nfs_fh3.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 422, i32 noundef 9, ptr noundef null) #6
  br label %encode_write3args.exit

encode_write3args.exit:                           ; preds = %if.then.i.i, %land.rhs.i.i.encode_write3args.exit_crit_edge, %entry.encode_write3args.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %1, align 2
  %conv38.i.i = zext i16 %5 to i32
  %add.i.i = add nuw nsw i32 %conv38.i.i, 4
  %call.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i.i) #6
  %data.i.i = getelementptr inbounds %struct.nfs_fh, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %1, align 2
  %conv40.i.i = zext i16 %7 to i32
  %call41.i.i = tail call ptr @xdr_encode_opaque(ptr noundef %call.i.i, ptr noundef %data.i.i, i32 noundef %conv40.i.i) #6
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 20) #6
  %offset.i = getelementptr inbounds %struct.nfs_pgio_args, ptr %data, i32 0, i32 5
  %8 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %offset.i, align 8
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 %9, ptr %call.i, align 1
  %add.ptr.i.i = getelementptr i32, ptr %call.i, i32 2
  %count.i = getelementptr inbounds %struct.nfs_pgio_args, ptr %data, i32 0, i32 6
  %11 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count.i, align 8
  %incdec.ptr.i = getelementptr i32, ptr %call.i, i32 3
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %add.ptr.i.i, align 4
  %stable.i = getelementptr inbounds %struct.nfs_pgio_args, ptr %data, i32 0, i32 9, i32 0, i32 2
  %14 = ptrtoint ptr %stable.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stable.i, align 4
  %incdec.ptr2.i = getelementptr i32, ptr %call.i, i32 4
  %16 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %incdec.ptr.i, align 4
  %17 = load i32, ptr %count.i, align 8
  %18 = ptrtoint ptr %incdec.ptr2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %incdec.ptr2.i, align 4
  %pages.i = getelementptr inbounds %struct.nfs_pgio_args, ptr %data, i32 0, i32 8
  %19 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pages.i, align 8
  %pgbase.i = getelementptr inbounds %struct.nfs_pgio_args, ptr %data, i32 0, i32 7
  %21 = ptrtoint ptr %pgbase.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pgbase.i, align 4
  %23 = load i32, ptr %count.i, align 8
  tail call void @xdr_write_pages(ptr noundef %xdr, ptr noundef %20, i32 noundef %22, i32 noundef %23) #6
  %buf = getelementptr inbounds %struct.xdr_stream, ptr %xdr, i32 0, i32 1
  %24 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buf, align 4
  %flags = getelementptr inbounds %struct.xdr_buf, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 4
  %or = or i32 %27, 2
  store i32 %or, ptr %flags, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs3_xdr_dec_write3res(ptr nocapture noundef readonly %req, ptr noundef %xdr, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !135

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 0
  br i1 %cmp.not.i, label %if.end.i.if.end_crit_edge, label %out_status.i, !prof !136

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

out_status.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @trace_nfs_xdr_status(ptr noundef %xdr, i32 noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %out_status.i, %if.end.i.if.end_crit_edge
  %fattr = getelementptr inbounds %struct.nfs_pgio_res, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fattr, align 8
  %rq_task.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 3
  %4 = ptrtoint ptr %rq_task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rq_task.i, align 4
  %tobool.not.i26 = icmp eq ptr %5, null
  br i1 %tobool.not.i26, label %if.end.rpc_rqst_userns.exit_crit_edge, label %if.then.i

if.end.rpc_rqst_userns.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

if.then.i:                                        ; preds = %if.end
  %tk_client.i = getelementptr inbounds %struct.rpc_task, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %tk_client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tk_client.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.then.i.rpc_rqst_userns.exit_crit_edge, label %land.lhs.true.i.i

if.then.i.rpc_rqst_userns.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

land.lhs.true.i.i:                                ; preds = %if.then.i
  %cl_cred.i.i = getelementptr inbounds %struct.rpc_clnt, ptr %7, i32 0, i32 29
  %8 = ptrtoint ptr %cl_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cl_cred.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %user_ns.i.i = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 25
  %10 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %user_ns.i.i, align 4
  br label %rpc_rqst_userns.exit

rpc_rqst_userns.exit:                             ; preds = %if.then.i.i, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, %if.then.i.rpc_rqst_userns.exit_crit_edge, %if.end.rpc_rqst_userns.exit_crit_edge
  %retval.0.i27 = phi ptr [ @init_user_ns, %if.end.rpc_rqst_userns.exit_crit_edge ], [ %11, %if.then.i.i ], [ @init_user_ns, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge ], [ @init_user_ns, %if.then.i.rpc_rqst_userns.exit_crit_edge ]
  %call4 = tail call fastcc i32 @decode_wcc_data(ptr noundef %xdr, ptr noundef %3, ptr noundef %retval.0.i27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end13, label %rpc_rqst_userns.exit.cleanup_crit_edge, !prof !136

rpc_rqst_userns.exit.cleanup_crit_edge:           ; preds = %rpc_rqst_userns.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %rpc_rqst_userns.exit
  %op_status = getelementptr inbounds %struct.nfs_pgio_res, ptr %data, i32 0, i32 3
  %12 = ptrtoint ptr %op_status to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %1, ptr %op_status, align 8
  br i1 %cmp.not.i, label %if.end15, label %out_status

if.end15:                                         ; preds = %if.end13
  %call.i28 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 8) #6
  %tobool.not.i29 = icmp eq ptr %call.i28, null
  br i1 %tobool.not.i29, label %if.end15.cleanup_crit_edge, label %if.end.i30, !prof !135

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i30:                                       ; preds = %if.end15
  %incdec.ptr.i = getelementptr i32, ptr %call.i28, i32 1
  %13 = ptrtoint ptr %call.i28 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call.i28, align 4
  %conv.i = zext i32 %14 to i64
  %count.i = getelementptr inbounds %struct.nfs_pgio_res, ptr %data, i32 0, i32 2
  %15 = ptrtoint ptr %count.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv.i, ptr %count.i, align 8
  %16 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %incdec.ptr.i, align 4
  %18 = getelementptr inbounds %struct.nfs_pgio_res, ptr %data, i32 0, i32 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %committed.i = getelementptr inbounds %struct.nfs_writeverf, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %committed.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %17, ptr %committed.i, align 4
  %22 = load ptr, ptr %18, align 4
  %committed8.i = getelementptr inbounds %struct.nfs_writeverf, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %committed8.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %committed8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp.i = icmp sgt i32 %24, 2
  br i1 %cmp.i, label %do.body.i, label %if.end17.i, !prof !135

if.end17.i:                                       ; preds = %if.end.i30
  %call.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 8) #6
  %tobool.not.i.i31 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i31, label %if.end17.i.cleanup_crit_edge, label %if.end22.i, !prof !135

if.end17.i.cleanup_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %call.i.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %26 = load i64, ptr %call.i.i, align 4
  %27 = ptrtoint ptr %22 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 %26, ptr %22, align 1
  %28 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %count.i, align 8
  %conv24.i = trunc i64 %29 to i32
  br label %cleanup

do.body.i:                                        ; preds = %if.end.i30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %30 = load i32, ptr @nfs_debug, align 4
  %and.i = and i32 %30, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool25.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool25.not.i, label %do.body.i.cleanup_crit_edge, label %do.end.i, !prof !136

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call36.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %24) #9
  br label %cleanup

out_status:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call fastcc i32 @nfs3_stat_to_errno(i32 noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %out_status, %do.end.i, %do.body.i.cleanup_crit_edge, %if.end22.i, %if.end17.i.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %rpc_rqst_userns.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %out_status ], [ %call4, %rpc_rqst_userns.exit.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ], [ %conv24.i, %if.end22.i ], [ -5, %if.end15.cleanup_crit_edge ], [ -5, %do.end.i ], [ -5, %do.body.i.cleanup_crit_edge ], [ -5, %if.end17.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs3_xdr_enc_create3args(ptr nocapture noundef readonly %req, ptr noundef %xdr, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %name = getelementptr inbounds %struct.nfs3_createargs, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %len = getelementptr inbounds %struct.nfs3_createargs, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  tail call fastcc void @encode_diropargs3(ptr noundef %xdr, ptr noundef %1, ptr noundef %3, i32 noundef %5)
  %rq_task.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 3
  %6 = ptrtoint ptr %rq_task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rq_task.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.rpc_rqst_userns.exit_crit_edge, label %if.then.i

entry.rpc_rqst_userns.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

if.then.i:                                        ; preds = %entry
  %tk_client.i = getelementptr inbounds %struct.rpc_task, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %tk_client.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tk_client.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.then.i.rpc_rqst_userns.exit_crit_edge, label %land.lhs.true.i.i

if.then.i.rpc_rqst_userns.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

land.lhs.true.i.i:                                ; preds = %if.then.i
  %cl_cred.i.i = getelementptr inbounds %struct.rpc_clnt, ptr %9, i32 0, i32 29
  %10 = ptrtoint ptr %cl_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cl_cred.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %user_ns.i.i = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 25
  %12 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %user_ns.i.i, align 4
  br label %rpc_rqst_userns.exit

rpc_rqst_userns.exit:                             ; preds = %if.then.i.i, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, %if.then.i.rpc_rqst_userns.exit_crit_edge, %entry.rpc_rqst_userns.exit_crit_edge
  %retval.0.i = phi ptr [ @init_user_ns, %entry.rpc_rqst_userns.exit_crit_edge ], [ %13, %if.then.i.i ], [ @init_user_ns, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge ], [ @init_user_ns, %if.then.i.rpc_rqst_userns.exit_crit_edge ]
  %createmode.i = getelementptr inbounds %struct.nfs3_createargs, ptr %data, i32 0, i32 4
  %14 = ptrtoint ptr %createmode.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %createmode.i, align 4
  %call.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #6
  %16 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %call.i.i, align 4
  %17 = ptrtoint ptr %createmode.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %createmode.i, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %18, label %do.body.i [
    i32 0, label %rpc_rqst_userns.exit.sw.bb.i_crit_edge
    i32 1, label %rpc_rqst_userns.exit.sw.bb.i_crit_edge5
    i32 2, label %sw.bb2.i
  ]

rpc_rqst_userns.exit.sw.bb.i_crit_edge5:          ; preds = %rpc_rqst_userns.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

rpc_rqst_userns.exit.sw.bb.i_crit_edge:           ; preds = %rpc_rqst_userns.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %rpc_rqst_userns.exit.sw.bb.i_crit_edge, %rpc_rqst_userns.exit.sw.bb.i_crit_edge5
  %sattr.i = getelementptr inbounds %struct.nfs3_createargs, ptr %data, i32 0, i32 3
  %20 = ptrtoint ptr %sattr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sattr.i, align 4
  tail call fastcc void @encode_sattr3(ptr noundef %xdr, ptr noundef %21, ptr noundef %retval.0.i) #6
  br label %encode_createhow3.exit

sw.bb2.i:                                         ; preds = %rpc_rqst_userns.exit
  call void @__sanitizer_cov_trace_pc() #8
  %verifier.i = getelementptr inbounds %struct.nfs3_createargs, ptr %data, i32 0, i32 5
  %call.i10.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 8) #6
  %22 = ptrtoint ptr %verifier.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %23 = load i64, ptr %verifier.i, align 4
  %24 = ptrtoint ptr %call.i10.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 %23, ptr %call.i10.i, align 4
  br label %encode_createhow3.exit

do.body.i:                                        ; preds = %rpc_rqst_userns.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs3xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1032, 0\0A.popsection", ""() #6, !srcloc !138
  unreachable

encode_createhow3.exit:                           ; preds = %sw.bb2.i, %sw.bb.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs3_xdr_dec_create3res(ptr nocapture noundef readonly %req, ptr noundef %xdr, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_task.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %rq_task.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_task.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.rpc_rqst_userns.exit_crit_edge, label %if.then.i

entry.rpc_rqst_userns.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

if.then.i:                                        ; preds = %entry
  %tk_client.i = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %tk_client.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tk_client.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.then.i.rpc_rqst_userns.exit_crit_edge, label %land.lhs.true.i.i

if.then.i.rpc_rqst_userns.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

land.lhs.true.i.i:                                ; preds = %if.then.i
  %cl_cred.i.i = getelementptr inbounds %struct.rpc_clnt, ptr %3, i32 0, i32 29
  %4 = ptrtoint ptr %cl_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cl_cred.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %user_ns.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns.i.i, align 4
  br label %rpc_rqst_userns.exit

rpc_rqst_userns.exit:                             ; preds = %if.then.i.i, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, %if.then.i.rpc_rqst_userns.exit_crit_edge, %entry.rpc_rqst_userns.exit_crit_edge
  %retval.0.i = phi ptr [ @init_user_ns, %entry.rpc_rqst_userns.exit_crit_edge ], [ %7, %if.then.i.i ], [ @init_user_ns, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge ], [ @init_user_ns, %if.then.i.rpc_rqst_userns.exit_crit_edge ]
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i27 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i27, label %rpc_rqst_userns.exit.cleanup_crit_edge, label %if.end.i, !prof !135

rpc_rqst_userns.exit.cleanup_crit_edge:           ; preds = %rpc_rqst_userns.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %rpc_rqst_userns.exit
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i, label %if.end5, label %out_default, !prof !136

if.end5:                                          ; preds = %if.end.i
  %fh.i = getelementptr inbounds %struct.nfs3_diropres, ptr %data, i32 0, i32 1
  %10 = ptrtoint ptr %fh.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fh.i, align 4
  %call.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i.i29 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i29, label %if.end5.cleanup_crit_edge, label %if.end.i.i, !prof !135

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end5
  %12 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not.i.i = icmp eq i32 %13, 0
  br i1 %cmp.not.i.i, label %if.end6.i.i, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  %call.i.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then4.i.i.cleanup_crit_edge, label %if.end.i.i.i, !prof !135

if.then4.i.i.cleanup_crit_edge:                   ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i.i:                                     ; preds = %if.then4.i.i
  %14 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call.i.i.i, align 4
  %16 = add i32 %15, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64, i32 %16)
  %17 = icmp ult i32 %16, -64
  br i1 %17, label %out_toobig.i.i.i, label %if.end13.i.i.i, !prof !135

if.end13.i.i.i:                                   ; preds = %if.end.i.i.i
  %call14.i.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %15) #6
  %tobool15.not.i.i.i = icmp eq ptr %call14.i.i.i, null
  br i1 %tobool15.not.i.i.i, label %if.end13.i.i.i.cleanup_crit_edge, label %if.end25.i.i.i, !prof !135

if.end13.i.i.i.cleanup_crit_edge:                 ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25.i.i.i:                                   ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i.i = trunc i32 %15 to i16
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.i.i.i, ptr %11, align 2
  %data.i.i.i = getelementptr inbounds %struct.nfs_fh, ptr %11, i32 0, i32 1
  %19 = call ptr @memcpy(ptr %data.i.i.i, ptr %call14.i.i.i, i32 %15)
  br label %if.end.i30

out_toobig.i.i.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @trace_nfs_xdr_bad_filehandle(ptr noundef %xdr) #6
  br label %cleanup

if.end6.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = call ptr @memset(ptr %11, i32 0, i32 130)
  br label %if.end.i30

if.end.i30:                                       ; preds = %if.end6.i.i, %if.end25.i.i.i
  %fattr.i = getelementptr inbounds %struct.nfs3_diropres, ptr %data, i32 0, i32 2
  %21 = ptrtoint ptr %fattr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fattr.i, align 4
  %call.i28.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i29.i = icmp eq ptr %call.i28.i, null
  br i1 %tobool.not.i29.i, label %if.end.i30.cleanup_crit_edge, label %if.end.i31.i, !prof !135

if.end.i30.cleanup_crit_edge:                     ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i31.i:                                     ; preds = %if.end.i30
  %23 = ptrtoint ptr %call.i28.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %call.i28.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.not.i30.i = icmp eq i32 %24, 0
  br i1 %cmp.not.i30.i, label %if.end.i31.i.if.end12.i_crit_edge, label %decode_post_op_attr.exit.i

if.end.i31.i.if.end12.i_crit_edge:                ; preds = %if.end.i31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

decode_post_op_attr.exit.i:                       ; preds = %if.end.i31.i
  %call5.i.i = tail call fastcc i32 @decode_fattr3(ptr noundef %xdr, ptr noundef %22, ptr noundef %retval.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool4.not.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool4.not.i, label %decode_post_op_attr.exit.i.if.end12.i_crit_edge, label %decode_post_op_attr.exit.i.cleanup_crit_edge, !prof !136

decode_post_op_attr.exit.i.cleanup_crit_edge:     ; preds = %decode_post_op_attr.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

decode_post_op_attr.exit.i.if.end12.i_crit_edge:  ; preds = %decode_post_op_attr.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

if.end12.i:                                       ; preds = %decode_post_op_attr.exit.i.if.end12.i_crit_edge, %if.end.i31.i.if.end12.i_crit_edge
  %25 = ptrtoint ptr %fh.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fh.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %26, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %cmp.i = icmp eq i16 %28, 0
  br i1 %cmp.i, label %if.then15.i, label %if.end12.i.if.end17.i_crit_edge

if.end12.i.if.end17.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

if.then15.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %fattr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fattr.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %30, align 8
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then15.i, %if.end12.i.if.end17.i_crit_edge
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data, align 4
  %call18.i = tail call fastcc i32 @decode_wcc_data(ptr noundef %xdr, ptr noundef %33, ptr noundef %retval.0.i) #6
  br label %cleanup

out_default:                                      ; preds = %if.end.i
  tail call fastcc void @trace_nfs_xdr_status(ptr noundef %xdr, i32 noundef %9) #6
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 4
  %call7 = tail call fastcc i32 @decode_wcc_data(ptr noundef %xdr, ptr noundef %35, ptr noundef %retval.0.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end16, label %out_default.cleanup_crit_edge, !prof !136

out_default.cleanup_crit_edge:                    ; preds = %out_default
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %out_default
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call fastcc i32 @nfs3_stat_to_errno(i32 noundef %9)
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %out_default.cleanup_crit_edge, %if.end17.i, %decode_post_op_attr.exit.i.cleanup_crit_edge, %if.end.i30.cleanup_crit_edge, %out_toobig.i.i.i, %if.end13.i.i.i.cleanup_crit_edge, %if.then4.i.i.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %rpc_rqst_userns.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end16 ], [ %call7, %out_default.cleanup_crit_edge ], [ -5, %rpc_rqst_userns.exit.cleanup_crit_edge ], [ %call5.i.i, %decode_post_op_attr.exit.i.cleanup_crit_edge ], [ %call18.i, %if.end17.i ], [ -5, %if.end13.i.i.i.cleanup_crit_edge ], [ -5, %if.then4.i.i.cleanup_crit_edge ], [ -7, %out_toobig.i.i.i ], [ -5, %if.end5.cleanup_crit_edge ], [ -5, %if.end.i30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs3_xdr_enc_mkdir3args(ptr nocapture noundef readonly %req, ptr noundef %xdr, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %name = getelementptr inbounds %struct.nfs3_mkdirargs, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %len = getelementptr inbounds %struct.nfs3_mkdirargs, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  tail call fastcc void @encode_diropargs3(ptr noundef %xdr, ptr noundef %1, ptr noundef %3, i32 noundef %5)
  %sattr = getelementptr inbounds %struct.nfs3_mkdirargs, ptr %data, i32 0, i32 3
  %6 = ptrtoint ptr %sattr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sattr, align 4
  %rq_task.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 3
  %8 = ptrtoint ptr %rq_task.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rq_task.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %entry.rpc_rqst_userns.exit_crit_edge, label %if.then.i

entry.rpc_rqst_userns.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

if.then.i:                                        ; preds = %entry
  %tk_client.i = getelementptr inbounds %struct.rpc_task, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %tk_client.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tk_client.i, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.then.i.rpc_rqst_userns.exit_crit_edge, label %land.lhs.true.i.i

if.then.i.rpc_rqst_userns.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

land.lhs.true.i.i:                                ; preds = %if.then.i
  %cl_cred.i.i = getelementptr inbounds %struct.rpc_clnt, ptr %11, i32 0, i32 29
  %12 = ptrtoint ptr %cl_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cl_cred.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %13, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %user_ns.i.i = getelementptr inbounds %struct.cred, ptr %13, i32 0, i32 25
  %14 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %user_ns.i.i, align 4
  br label %rpc_rqst_userns.exit

rpc_rqst_userns.exit:                             ; preds = %if.then.i.i, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, %if.then.i.rpc_rqst_userns.exit_crit_edge, %entry.rpc_rqst_userns.exit_crit_edge
  %retval.0.i = phi ptr [ @init_user_ns, %entry.rpc_rqst_userns.exit_crit_edge ], [ %15, %if.then.i.i ], [ @init_user_ns, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge ], [ @init_user_ns, %if.then.i.rpc_rqst_userns.exit_crit_edge ]
  tail call fastcc void @encode_sattr3(ptr noundef %xdr, ptr noundef %7, ptr noundef %retval.0.i)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs3_xdr_enc_symlink3args(ptr nocapture noundef readonly %req, ptr noundef %xdr, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %fromname = getelementptr inbounds %struct.nfs3_symlinkargs, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %fromname to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fromname, align 4
  %fromlen = getelementptr inbounds %struct.nfs3_symlinkargs, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %fromlen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fromlen, align 4
  tail call fastcc void @encode_diropargs3(ptr noundef %xdr, ptr noundef %1, ptr noundef %3, i32 noundef %5)
  %rq_task.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 3
  %6 = ptrtoint ptr %rq_task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rq_task.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.rpc_rqst_userns.exit_crit_edge, label %if.then.i

entry.rpc_rqst_userns.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

if.then.i:                                        ; preds = %entry
  %tk_client.i = getelementptr inbounds %struct.rpc_task, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %tk_client.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tk_client.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.then.i.rpc_rqst_userns.exit_crit_edge, label %land.lhs.true.i.i

if.then.i.rpc_rqst_userns.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

land.lhs.true.i.i:                                ; preds = %if.then.i
  %cl_cred.i.i = getelementptr inbounds %struct.rpc_clnt, ptr %9, i32 0, i32 29
  %10 = ptrtoint ptr %cl_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cl_cred.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %user_ns.i.i = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 25
  %12 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %user_ns.i.i, align 4
  br label %rpc_rqst_userns.exit

rpc_rqst_userns.exit:                             ; preds = %if.then.i.i, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, %if.then.i.rpc_rqst_userns.exit_crit_edge, %entry.rpc_rqst_userns.exit_crit_edge
  %retval.0.i = phi ptr [ @init_user_ns, %entry.rpc_rqst_userns.exit_crit_edge ], [ %13, %if.then.i.i ], [ @init_user_ns, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge ], [ @init_user_ns, %if.then.i.rpc_rqst_userns.exit_crit_edge ]
  %sattr.i = getelementptr inbounds %struct.nfs3_symlinkargs, ptr %data, i32 0, i32 5
  %14 = ptrtoint ptr %sattr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sattr.i, align 4
  tail call fastcc void @encode_sattr3(ptr noundef %xdr, ptr noundef %15, ptr noundef %retval.0.i) #6
  %pages.i = getelementptr inbounds %struct.nfs3_symlinkargs, ptr %data, i32 0, i32 3
  %16 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pages.i, align 4
  %pathlen.i = getelementptr inbounds %struct.nfs3_symlinkargs, ptr %data, i32 0, i32 4
  %18 = ptrtoint ptr %pathlen.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pathlen.i, align 4
  %call.i.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #6
  %20 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %call.i.i.i, align 4
  tail call void @xdr_write_pages(ptr noundef %xdr, ptr noundef %17, i32 noundef 0, i32 noundef %19) #6
  %buf = getelementptr inbounds %struct.xdr_stream, ptr %xdr, i32 0, i32 1
  %21 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buf, align 4
  %flags = getelementptr inbounds %struct.xdr_buf, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 4
  %or = or i32 %24, 2
  store i32 %or, ptr %flags, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs3_xdr_enc_mknod3args(ptr nocapture noundef readonly %req, ptr noundef %xdr, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %name = getelementptr inbounds %struct.nfs3_mknodargs, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %len = getelementptr inbounds %struct.nfs3_mknodargs, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  tail call fastcc void @encode_diropargs3(ptr noundef %xdr, ptr noundef %1, ptr noundef %3, i32 noundef %5)
  %rq_task.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 3
  %6 = ptrtoint ptr %rq_task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rq_task.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.rpc_rqst_userns.exit_crit_edge, label %if.then.i

entry.rpc_rqst_userns.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

if.then.i:                                        ; preds = %entry
  %tk_client.i = getelementptr inbounds %struct.rpc_task, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %tk_client.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tk_client.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.then.i.rpc_rqst_userns.exit_crit_edge, label %land.lhs.true.i.i

if.then.i.rpc_rqst_userns.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

land.lhs.true.i.i:                                ; preds = %if.then.i
  %cl_cred.i.i = getelementptr inbounds %struct.rpc_clnt, ptr %9, i32 0, i32 29
  %10 = ptrtoint ptr %cl_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cl_cred.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %user_ns.i.i = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 25
  %12 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %user_ns.i.i, align 4
  br label %rpc_rqst_userns.exit

rpc_rqst_userns.exit:                             ; preds = %if.then.i.i, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, %if.then.i.rpc_rqst_userns.exit_crit_edge, %entry.rpc_rqst_userns.exit_crit_edge
  %retval.0.i = phi ptr [ @init_user_ns, %entry.rpc_rqst_userns.exit_crit_edge ], [ %13, %if.then.i.i ], [ @init_user_ns, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge ], [ @init_user_ns, %if.then.i.rpc_rqst_userns.exit_crit_edge ]
  %type.i = getelementptr inbounds %struct.nfs3_mknodargs, ptr %data, i32 0, i32 3
  %14 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type.i, align 4
  %call.i.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #6
  %16 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %call.i.i.i, align 4
  %17 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type.i, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %18, label %do.body.i [
    i32 4, label %rpc_rqst_userns.exit.sw.bb.i_crit_edge
    i32 3, label %rpc_rqst_userns.exit.sw.bb.i_crit_edge5
    i32 6, label %rpc_rqst_userns.exit.sw.bb2.i_crit_edge
    i32 7, label %rpc_rqst_userns.exit.sw.bb2.i_crit_edge6
    i32 1, label %rpc_rqst_userns.exit.encode_mknoddata3.exit_crit_edge
    i32 2, label %rpc_rqst_userns.exit.encode_mknoddata3.exit_crit_edge7
  ]

rpc_rqst_userns.exit.encode_mknoddata3.exit_crit_edge7: ; preds = %rpc_rqst_userns.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %encode_mknoddata3.exit

rpc_rqst_userns.exit.encode_mknoddata3.exit_crit_edge: ; preds = %rpc_rqst_userns.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %encode_mknoddata3.exit

rpc_rqst_userns.exit.sw.bb2.i_crit_edge6:         ; preds = %rpc_rqst_userns.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i

rpc_rqst_userns.exit.sw.bb2.i_crit_edge:          ; preds = %rpc_rqst_userns.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i

rpc_rqst_userns.exit.sw.bb.i_crit_edge5:          ; preds = %rpc_rqst_userns.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

rpc_rqst_userns.exit.sw.bb.i_crit_edge:           ; preds = %rpc_rqst_userns.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %rpc_rqst_userns.exit.sw.bb.i_crit_edge, %rpc_rqst_userns.exit.sw.bb.i_crit_edge5
  %sattr.i.i = getelementptr inbounds %struct.nfs3_mknodargs, ptr %data, i32 0, i32 4
  %20 = ptrtoint ptr %sattr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sattr.i.i, align 4
  tail call fastcc void @encode_sattr3(ptr noundef %xdr, ptr noundef %21, ptr noundef %retval.0.i) #6
  %rdev.i.i = getelementptr inbounds %struct.nfs3_mknodargs, ptr %data, i32 0, i32 5
  %22 = ptrtoint ptr %rdev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rdev.i.i, align 4
  %call.i.i12.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 8) #6
  %shr.i.i.i = lshr i32 %23, 20
  %incdec.ptr.i.i.i = getelementptr i32, ptr %call.i.i12.i, i32 1
  %24 = ptrtoint ptr %call.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %shr.i.i.i, ptr %call.i.i12.i, align 4
  %and.i.i.i = and i32 %23, 1048575
  %25 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and.i.i.i, ptr %incdec.ptr.i.i.i, align 4
  br label %encode_mknoddata3.exit

sw.bb2.i:                                         ; preds = %rpc_rqst_userns.exit.sw.bb2.i_crit_edge, %rpc_rqst_userns.exit.sw.bb2.i_crit_edge6
  %sattr.i = getelementptr inbounds %struct.nfs3_mknodargs, ptr %data, i32 0, i32 4
  %26 = ptrtoint ptr %sattr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sattr.i, align 4
  tail call fastcc void @encode_sattr3(ptr noundef %xdr, ptr noundef %27, ptr noundef %retval.0.i) #6
  br label %encode_mknoddata3.exit

do.body.i:                                        ; preds = %rpc_rqst_userns.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs3xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1148, 0\0A.popsection", ""() #6, !srcloc !139
  unreachable

encode_mknoddata3.exit:                           ; preds = %sw.bb2.i, %sw.bb.i, %rpc_rqst_userns.exit.encode_mknoddata3.exit_crit_edge, %rpc_rqst_userns.exit.encode_mknoddata3.exit_crit_edge7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs3_xdr_enc_remove3args(ptr nocapture noundef readnone %req, ptr noundef %xdr, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fh = getelementptr inbounds %struct.nfs_removeargs, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %fh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fh, align 8
  %name = getelementptr inbounds %struct.nfs_removeargs, ptr %data, i32 0, i32 2
  %name1 = getelementptr inbounds %struct.nfs_removeargs, ptr %data, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name1, align 8
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %name, align 8
  tail call fastcc void @encode_diropargs3(ptr noundef %xdr, ptr noundef %1, ptr noundef %3, i32 noundef %5)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs3_xdr_dec_remove3res(ptr nocapture noundef readonly %req, ptr noundef %xdr, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !135

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 0
  br i1 %cmp.not.i, label %if.end.i.if.end_crit_edge, label %out_status.i, !prof !136

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

out_status.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @trace_nfs_xdr_status(ptr noundef %xdr, i32 noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %out_status.i, %if.end.i.if.end_crit_edge
  %dir_attr = getelementptr inbounds %struct.nfs_removeres, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %dir_attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dir_attr, align 4
  %rq_task.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 3
  %4 = ptrtoint ptr %rq_task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rq_task.i, align 4
  %tobool.not.i22 = icmp eq ptr %5, null
  br i1 %tobool.not.i22, label %if.end.rpc_rqst_userns.exit_crit_edge, label %if.then.i

if.end.rpc_rqst_userns.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

if.then.i:                                        ; preds = %if.end
  %tk_client.i = getelementptr inbounds %struct.rpc_task, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %tk_client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tk_client.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.then.i.rpc_rqst_userns.exit_crit_edge, label %land.lhs.true.i.i

if.then.i.rpc_rqst_userns.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

land.lhs.true.i.i:                                ; preds = %if.then.i
  %cl_cred.i.i = getelementptr inbounds %struct.rpc_clnt, ptr %7, i32 0, i32 29
  %8 = ptrtoint ptr %cl_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cl_cred.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %user_ns.i.i = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 25
  %10 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %user_ns.i.i, align 4
  br label %rpc_rqst_userns.exit

rpc_rqst_userns.exit:                             ; preds = %if.then.i.i, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, %if.then.i.rpc_rqst_userns.exit_crit_edge, %if.end.rpc_rqst_userns.exit_crit_edge
  %retval.0.i23 = phi ptr [ @init_user_ns, %if.end.rpc_rqst_userns.exit_crit_edge ], [ %11, %if.then.i.i ], [ @init_user_ns, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge ], [ @init_user_ns, %if.then.i.rpc_rqst_userns.exit_crit_edge ]
  %call4 = tail call fastcc i32 @decode_wcc_data(ptr noundef %xdr, ptr noundef %3, ptr noundef %retval.0.i23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp ne i32 %call4, 0
  %brmerge = select i1 %tobool5.not, i1 true, i1 %cmp.not.i
  br i1 %brmerge, label %rpc_rqst_userns.exit.cleanup_crit_edge, label %out_status, !prof !137

rpc_rqst_userns.exit.cleanup_crit_edge:           ; preds = %rpc_rqst_userns.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

out_status:                                       ; preds = %rpc_rqst_userns.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = tail call fastcc i32 @nfs3_stat_to_errno(i32 noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %out_status, %rpc_rqst_userns.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %out_status ], [ %call4, %rpc_rqst_userns.exit.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs3_xdr_enc_rename3args(ptr nocapture noundef readnone %req, ptr noundef %xdr, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %old_name = getelementptr inbounds %struct.nfs_renameargs, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %old_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %old_name, align 4
  %new_name = getelementptr inbounds %struct.nfs_renameargs, ptr %data, i32 0, i32 4
  %2 = ptrtoint ptr %new_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %new_name, align 4
  %old_dir = getelementptr inbounds %struct.nfs_renameargs, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %old_dir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %old_dir, align 4
  %name = getelementptr inbounds %struct.qstr, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 8
  tail call fastcc void @encode_diropargs3(ptr noundef %xdr, ptr noundef %5, ptr noundef %7, i32 noundef %9)
  %new_dir = getelementptr inbounds %struct.nfs_renameargs, ptr %data, i32 0, i32 2
  %10 = ptrtoint ptr %new_dir to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %new_dir, align 4
  %name1 = getelementptr inbounds %struct.qstr, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name1, align 8
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %3, align 8
  tail call fastcc void @encode_diropargs3(ptr noundef %xdr, ptr noundef %11, ptr noundef %13, i32 noundef %15)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs3_xdr_dec_rename3res(ptr nocapture noundef readonly %req, ptr noundef %xdr, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_task.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %rq_task.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_task.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.rpc_rqst_userns.exit_crit_edge, label %if.then.i

entry.rpc_rqst_userns.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

if.then.i:                                        ; preds = %entry
  %tk_client.i = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %tk_client.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tk_client.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.then.i.rpc_rqst_userns.exit_crit_edge, label %land.lhs.true.i.i

if.then.i.rpc_rqst_userns.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

land.lhs.true.i.i:                                ; preds = %if.then.i
  %cl_cred.i.i = getelementptr inbounds %struct.rpc_clnt, ptr %3, i32 0, i32 29
  %4 = ptrtoint ptr %cl_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cl_cred.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %user_ns.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns.i.i, align 4
  br label %rpc_rqst_userns.exit

rpc_rqst_userns.exit:                             ; preds = %if.then.i.i, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, %if.then.i.rpc_rqst_userns.exit_crit_edge, %entry.rpc_rqst_userns.exit_crit_edge
  %retval.0.i = phi ptr [ @init_user_ns, %entry.rpc_rqst_userns.exit_crit_edge ], [ %7, %if.then.i.i ], [ @init_user_ns, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge ], [ @init_user_ns, %if.then.i.rpc_rqst_userns.exit_crit_edge ]
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i37 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i37, label %rpc_rqst_userns.exit.cleanup_crit_edge, label %if.end.i, !prof !135

rpc_rqst_userns.exit.cleanup_crit_edge:           ; preds = %rpc_rqst_userns.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %rpc_rqst_userns.exit
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i, label %if.end.i.if.end_crit_edge, label %out_status.i, !prof !136

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

out_status.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @trace_nfs_xdr_status(ptr noundef %xdr, i32 noundef %9) #6
  br label %if.end

if.end:                                           ; preds = %out_status.i, %if.end.i.if.end_crit_edge
  %old_fattr = getelementptr inbounds %struct.nfs_renameres, ptr %data, i32 0, i32 3
  %10 = ptrtoint ptr %old_fattr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %old_fattr, align 8
  %call4 = tail call fastcc i32 @decode_wcc_data(ptr noundef %xdr, ptr noundef %11, ptr noundef %retval.0.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end13, label %if.end.cleanup_crit_edge, !prof !136

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %new_fattr = getelementptr inbounds %struct.nfs_renameres, ptr %data, i32 0, i32 5
  %12 = ptrtoint ptr %new_fattr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %new_fattr, align 8
  %call14 = tail call fastcc i32 @decode_wcc_data(ptr noundef %xdr, ptr noundef %13, ptr noundef %retval.0.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp ne i32 %call14, 0
  %brmerge = select i1 %tobool15.not, i1 true, i1 %cmp.not.i
  br i1 %brmerge, label %if.end13.cleanup_crit_edge, label %out_status, !prof !137

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

out_status:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %call26 = tail call fastcc i32 @nfs3_stat_to_errno(i32 noundef %9)
  br label %cleanup

cleanup:                                          ; preds = %out_status, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %rpc_rqst_userns.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call26, %out_status ], [ %call4, %if.end.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ], [ -5, %rpc_rqst_userns.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs3_xdr_enc_link3args(ptr nocapture noundef readnone %req, ptr noundef %xdr, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %3)
  %cmp.i = icmp ugt i16 %3, 64
  br i1 %cmp.i, label %land.rhs.i, label %entry.encode_nfs_fh3.exit_crit_edge

entry.encode_nfs_fh3.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %encode_nfs_fh3.exit

land.rhs.i:                                       ; preds = %entry
  %.b47.i = load i1, ptr @encode_nfs_fh3.__already_done, align 1
  br i1 %.b47.i, label %land.rhs.i.encode_nfs_fh3.exit_crit_edge, label %if.then.i, !prof !136

land.rhs.i.encode_nfs_fh3.exit_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %encode_nfs_fh3.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @encode_nfs_fh3.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 422, i32 noundef 9, ptr noundef null) #6
  br label %encode_nfs_fh3.exit

encode_nfs_fh3.exit:                              ; preds = %if.then.i, %land.rhs.i.encode_nfs_fh3.exit_crit_edge, %entry.encode_nfs_fh3.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %1, align 2
  %conv38.i = zext i16 %5 to i32
  %add.i = add nuw nsw i32 %conv38.i, 4
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i) #6
  %data.i = getelementptr inbounds %struct.nfs_fh, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %1, align 2
  %conv40.i = zext i16 %7 to i32
  %call41.i = tail call ptr @xdr_encode_opaque(ptr noundef %call.i, ptr noundef %data.i, i32 noundef %conv40.i) #6
  %tofh = getelementptr inbounds %struct.nfs3_linkargs, ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %tofh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tofh, align 4
  %toname = getelementptr inbounds %struct.nfs3_linkargs, ptr %data, i32 0, i32 2
  %10 = ptrtoint ptr %toname to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %toname, align 4
  %tolen = getelementptr inbounds %struct.nfs3_linkargs, ptr %data, i32 0, i32 3
  %12 = ptrtoint ptr %tolen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tolen, align 4
  tail call fastcc void @encode_diropargs3(ptr noundef %xdr, ptr noundef %9, ptr noundef %11, i32 noundef %13)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs3_xdr_dec_link3res(ptr nocapture noundef readonly %req, ptr noundef %xdr, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_task.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %rq_task.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_task.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.rpc_rqst_userns.exit_crit_edge, label %if.then.i

entry.rpc_rqst_userns.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

if.then.i:                                        ; preds = %entry
  %tk_client.i = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %tk_client.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tk_client.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.then.i.rpc_rqst_userns.exit_crit_edge, label %land.lhs.true.i.i

if.then.i.rpc_rqst_userns.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

land.lhs.true.i.i:                                ; preds = %if.then.i
  %cl_cred.i.i = getelementptr inbounds %struct.rpc_clnt, ptr %3, i32 0, i32 29
  %4 = ptrtoint ptr %cl_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cl_cred.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %user_ns.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns.i.i, align 4
  br label %rpc_rqst_userns.exit

rpc_rqst_userns.exit:                             ; preds = %if.then.i.i, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, %if.then.i.rpc_rqst_userns.exit_crit_edge, %entry.rpc_rqst_userns.exit_crit_edge
  %retval.0.i = phi ptr [ @init_user_ns, %entry.rpc_rqst_userns.exit_crit_edge ], [ %7, %if.then.i.i ], [ @init_user_ns, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge ], [ @init_user_ns, %if.then.i.rpc_rqst_userns.exit_crit_edge ]
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i37 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i37, label %rpc_rqst_userns.exit.cleanup_crit_edge, label %if.end.i, !prof !135

rpc_rqst_userns.exit.cleanup_crit_edge:           ; preds = %rpc_rqst_userns.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %rpc_rqst_userns.exit
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i, label %if.end.i.if.end_crit_edge, label %out_status.i, !prof !136

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

out_status.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @trace_nfs_xdr_status(ptr noundef %xdr, i32 noundef %9) #6
  br label %if.end

if.end:                                           ; preds = %out_status.i, %if.end.i.if.end_crit_edge
  %fattr = getelementptr inbounds %struct.nfs3_linkres, ptr %data, i32 0, i32 1
  %10 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fattr, align 4
  %call.i39 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i40 = icmp eq ptr %call.i39, null
  br i1 %tobool.not.i40, label %if.end.cleanup_crit_edge, label %if.end.i42, !prof !135

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i42:                                       ; preds = %if.end
  %12 = ptrtoint ptr %call.i39 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call.i39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not.i41 = icmp eq i32 %13, 0
  br i1 %cmp.not.i41, label %if.end.i42.if.end13_crit_edge, label %decode_post_op_attr.exit

if.end.i42.if.end13_crit_edge:                    ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

decode_post_op_attr.exit:                         ; preds = %if.end.i42
  %call5.i = tail call fastcc i32 @decode_fattr3(ptr noundef %xdr, ptr noundef %11, ptr noundef %retval.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool5.not = icmp eq i32 %call5.i, 0
  br i1 %tobool5.not, label %decode_post_op_attr.exit.if.end13_crit_edge, label %decode_post_op_attr.exit.cleanup_crit_edge, !prof !136

decode_post_op_attr.exit.cleanup_crit_edge:       ; preds = %decode_post_op_attr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

decode_post_op_attr.exit.if.end13_crit_edge:      ; preds = %decode_post_op_attr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.end13:                                         ; preds = %decode_post_op_attr.exit.if.end13_crit_edge, %if.end.i42.if.end13_crit_edge
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %call14 = tail call fastcc i32 @decode_wcc_data(ptr noundef %xdr, ptr noundef %15, ptr noundef %retval.0.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp ne i32 %call14, 0
  %brmerge = select i1 %tobool15.not, i1 true, i1 %cmp.not.i
  br i1 %brmerge, label %if.end13.cleanup_crit_edge, label %out_status, !prof !137

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

out_status:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %call26 = tail call fastcc i32 @nfs3_stat_to_errno(i32 noundef %9)
  br label %cleanup

cleanup:                                          ; preds = %out_status, %if.end13.cleanup_crit_edge, %decode_post_op_attr.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %rpc_rqst_userns.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call26, %out_status ], [ %call5.i, %decode_post_op_attr.exit.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ], [ -5, %rpc_rqst_userns.exit.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs3_xdr_enc_readdir3args(ptr noundef %req, ptr noundef %xdr, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %3)
  %cmp.i.i = icmp ugt i16 %3, 64
  br i1 %cmp.i.i, label %land.rhs.i.i, label %entry.encode_readdir3args.exit_crit_edge

entry.encode_readdir3args.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %encode_readdir3args.exit

land.rhs.i.i:                                     ; preds = %entry
  %.b47.i.i = load i1, ptr @encode_nfs_fh3.__already_done, align 1
  br i1 %.b47.i.i, label %land.rhs.i.i.encode_readdir3args.exit_crit_edge, label %if.then.i.i, !prof !136

land.rhs.i.i.encode_readdir3args.exit_crit_edge:  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %encode_readdir3args.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @encode_nfs_fh3.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 422, i32 noundef 9, ptr noundef null) #6
  br label %encode_readdir3args.exit

encode_readdir3args.exit:                         ; preds = %if.then.i.i, %land.rhs.i.i.encode_readdir3args.exit_crit_edge, %entry.encode_readdir3args.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %1, align 2
  %conv38.i.i = zext i16 %5 to i32
  %add.i.i = add nuw nsw i32 %conv38.i.i, 4
  %call.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i.i) #6
  %data.i.i = getelementptr inbounds %struct.nfs_fh, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %1, align 2
  %conv40.i.i = zext i16 %7 to i32
  %call41.i.i = tail call ptr @xdr_encode_opaque(ptr noundef %call.i.i, ptr noundef %data.i.i, i32 noundef %conv40.i.i) #6
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 20) #6
  %cookie.i = getelementptr inbounds %struct.nfs3_readdirargs, ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %cookie.i, align 8
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 %9, ptr %call.i, align 1
  %add.ptr.i.i.i = getelementptr i32, ptr %call.i, i32 2
  %verf.i = getelementptr inbounds %struct.nfs3_readdirargs, ptr %data, i32 0, i32 2
  %11 = ptrtoint ptr %verf.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %verf.i, align 4
  %13 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %12, ptr %add.ptr.i.i.i, align 4
  %add.ptr.i.i = getelementptr i32, ptr %call.i, i32 4
  %count.i = getelementptr inbounds %struct.nfs3_readdirargs, ptr %data, i32 0, i32 4
  %14 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count.i, align 4
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %add.ptr.i.i, align 4
  %pages = getelementptr inbounds %struct.nfs3_readdirargs, ptr %data, i32 0, i32 5
  %17 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pages, align 8
  %19 = load i32, ptr %count.i, align 4
  tail call void @rpc_prepare_reply_pages(ptr noundef %req, ptr noundef %18, i32 noundef 0, i32 noundef %19, i32 noundef 25) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs3_xdr_dec_readdir3res(ptr nocapture noundef readonly %req, ptr noundef %xdr, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !135

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 0
  br i1 %cmp.not.i, label %if.end4, label %out_default, !prof !136

if.end4:                                          ; preds = %if.end.i
  %rq_task.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 3
  %2 = ptrtoint ptr %rq_task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_task.i, align 4
  %tobool.not.i27 = icmp eq ptr %3, null
  br i1 %tobool.not.i27, label %if.end4.rpc_rqst_userns.exit_crit_edge, label %if.then.i

if.end4.rpc_rqst_userns.exit_crit_edge:           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

if.then.i:                                        ; preds = %if.end4
  %tk_client.i = getelementptr inbounds %struct.rpc_task, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %tk_client.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tk_client.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.then.i.rpc_rqst_userns.exit_crit_edge, label %land.lhs.true.i.i

if.then.i.rpc_rqst_userns.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

land.lhs.true.i.i:                                ; preds = %if.then.i
  %cl_cred.i.i = getelementptr inbounds %struct.rpc_clnt, ptr %5, i32 0, i32 29
  %6 = ptrtoint ptr %cl_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cl_cred.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %user_ns.i.i = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 25
  %8 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %user_ns.i.i, align 4
  br label %rpc_rqst_userns.exit

rpc_rqst_userns.exit:                             ; preds = %if.then.i.i, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, %if.then.i.rpc_rqst_userns.exit_crit_edge, %if.end4.rpc_rqst_userns.exit_crit_edge
  %retval.0.i28 = phi ptr [ @init_user_ns, %if.end4.rpc_rqst_userns.exit_crit_edge ], [ %9, %if.then.i.i ], [ @init_user_ns, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge ], [ @init_user_ns, %if.then.i.rpc_rqst_userns.exit_crit_edge ]
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %call.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i.i29 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i29, label %rpc_rqst_userns.exit.cleanup_crit_edge, label %if.end.i.i, !prof !135

rpc_rqst_userns.exit.cleanup_crit_edge:           ; preds = %rpc_rqst_userns.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %rpc_rqst_userns.exit
  %12 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not.i.i = icmp eq i32 %13, 0
  br i1 %cmp.not.i.i, label %if.end.i.i.if.end.i31_crit_edge, label %decode_post_op_attr.exit.i

if.end.i.i.if.end.i31_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i31

decode_post_op_attr.exit.i:                       ; preds = %if.end.i.i
  %call5.i.i = tail call fastcc i32 @decode_fattr3(ptr noundef %xdr, ptr noundef %11, ptr noundef %retval.0.i28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool.not.i30 = icmp eq i32 %call5.i.i, 0
  br i1 %tobool.not.i30, label %decode_post_op_attr.exit.i.if.end.i31_crit_edge, label %decode_post_op_attr.exit.i.cleanup_crit_edge, !prof !136

decode_post_op_attr.exit.i.cleanup_crit_edge:     ; preds = %decode_post_op_attr.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

decode_post_op_attr.exit.i.if.end.i31_crit_edge:  ; preds = %decode_post_op_attr.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i31

if.end.i31:                                       ; preds = %decode_post_op_attr.exit.i.if.end.i31_crit_edge, %if.end.i.i.if.end.i31_crit_edge
  %verf.i = getelementptr inbounds %struct.nfs3_readdirres, ptr %data, i32 0, i32 1
  %14 = ptrtoint ptr %verf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %verf.i, align 4
  %call.i19.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 8) #6
  %tobool.not.i20.i = icmp eq ptr %call.i19.i, null
  br i1 %tobool.not.i20.i, label %if.end.i31.cleanup_crit_edge, label %if.end12.i, !prof !135

if.end.i31.cleanup_crit_edge:                     ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12.i:                                       ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %call.i19.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %call.i19.i, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 %17, ptr %15, align 4
  %buf.i.i = getelementptr inbounds %struct.xdr_stream, ptr %xdr, i32 0, i32 1
  %19 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buf.i.i, align 4
  %page_len.i.i = getelementptr inbounds %struct.xdr_buf, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %page_len.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %page_len.i.i, align 4
  %call.i23.i = tail call i32 @xdr_read_pages(ptr noundef %xdr, i32 noundef %22) #6
  br label %cleanup

out_default:                                      ; preds = %if.end.i
  tail call fastcc void @trace_nfs_xdr_status(ptr noundef %xdr, i32 noundef %1) #6
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  %rq_task.i32 = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 3
  %25 = ptrtoint ptr %rq_task.i32 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rq_task.i32, align 4
  %tobool.not.i33 = icmp eq ptr %26, null
  br i1 %tobool.not.i33, label %out_default.rpc_rqst_userns.exit43_crit_edge, label %if.then.i36

out_default.rpc_rqst_userns.exit43_crit_edge:     ; preds = %out_default
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit43

if.then.i36:                                      ; preds = %out_default
  %tk_client.i34 = getelementptr inbounds %struct.rpc_task, ptr %26, i32 0, i32 13
  %27 = ptrtoint ptr %tk_client.i34 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tk_client.i34, align 4
  %tobool.not.i.i35 = icmp eq ptr %28, null
  br i1 %tobool.not.i.i35, label %if.then.i36.rpc_rqst_userns.exit43_crit_edge, label %land.lhs.true.i.i39

if.then.i36.rpc_rqst_userns.exit43_crit_edge:     ; preds = %if.then.i36
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit43

land.lhs.true.i.i39:                              ; preds = %if.then.i36
  %cl_cred.i.i37 = getelementptr inbounds %struct.rpc_clnt, ptr %28, i32 0, i32 29
  %29 = ptrtoint ptr %cl_cred.i.i37 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cl_cred.i.i37, align 4
  %tobool1.not.i.i38 = icmp eq ptr %30, null
  br i1 %tobool1.not.i.i38, label %land.lhs.true.i.i39.rpc_rqst_userns.exit43_crit_edge, label %if.then.i.i41

land.lhs.true.i.i39.rpc_rqst_userns.exit43_crit_edge: ; preds = %land.lhs.true.i.i39
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit43

if.then.i.i41:                                    ; preds = %land.lhs.true.i.i39
  call void @__sanitizer_cov_trace_pc() #8
  %user_ns.i.i40 = getelementptr inbounds %struct.cred, ptr %30, i32 0, i32 25
  %31 = ptrtoint ptr %user_ns.i.i40 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %user_ns.i.i40, align 4
  br label %rpc_rqst_userns.exit43

rpc_rqst_userns.exit43:                           ; preds = %if.then.i.i41, %land.lhs.true.i.i39.rpc_rqst_userns.exit43_crit_edge, %if.then.i36.rpc_rqst_userns.exit43_crit_edge, %out_default.rpc_rqst_userns.exit43_crit_edge
  %retval.0.i42 = phi ptr [ @init_user_ns, %out_default.rpc_rqst_userns.exit43_crit_edge ], [ %32, %if.then.i.i41 ], [ @init_user_ns, %land.lhs.true.i.i39.rpc_rqst_userns.exit43_crit_edge ], [ @init_user_ns, %if.then.i36.rpc_rqst_userns.exit43_crit_edge ]
  %call.i44 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i45 = icmp eq ptr %call.i44, null
  br i1 %tobool.not.i45, label %rpc_rqst_userns.exit43.cleanup_crit_edge, label %if.end.i47, !prof !135

rpc_rqst_userns.exit43.cleanup_crit_edge:         ; preds = %rpc_rqst_userns.exit43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i47:                                       ; preds = %rpc_rqst_userns.exit43
  %33 = ptrtoint ptr %call.i44 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %call.i44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.not.i46 = icmp eq i32 %34, 0
  br i1 %cmp.not.i46, label %if.end.i47.if.end17_crit_edge, label %decode_post_op_attr.exit

if.end.i47.if.end17_crit_edge:                    ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

decode_post_op_attr.exit:                         ; preds = %if.end.i47
  %call5.i = tail call fastcc i32 @decode_fattr3(ptr noundef %xdr, ptr noundef %24, ptr noundef %retval.0.i42) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool9.not = icmp eq i32 %call5.i, 0
  br i1 %tobool9.not, label %decode_post_op_attr.exit.if.end17_crit_edge, label %decode_post_op_attr.exit.cleanup_crit_edge, !prof !136

decode_post_op_attr.exit.cleanup_crit_edge:       ; preds = %decode_post_op_attr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

decode_post_op_attr.exit.if.end17_crit_edge:      ; preds = %decode_post_op_attr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.end17:                                         ; preds = %decode_post_op_attr.exit.if.end17_crit_edge, %if.end.i47.if.end17_crit_edge
  %call18 = tail call fastcc i32 @nfs3_stat_to_errno(i32 noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %decode_post_op_attr.exit.cleanup_crit_edge, %rpc_rqst_userns.exit43.cleanup_crit_edge, %if.end12.i, %if.end.i31.cleanup_crit_edge, %decode_post_op_attr.exit.i.cleanup_crit_edge, %rpc_rqst_userns.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.end17 ], [ %call5.i, %decode_post_op_attr.exit.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ], [ %call5.i.i, %decode_post_op_attr.exit.i.cleanup_crit_edge ], [ %call.i23.i, %if.end12.i ], [ -5, %if.end.i31.cleanup_crit_edge ], [ -5, %rpc_rqst_userns.exit.cleanup_crit_edge ], [ -5, %rpc_rqst_userns.exit43.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs3_xdr_enc_readdirplus3args(ptr noundef %req, ptr noundef %xdr, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %3)
  %cmp.i.i = icmp ugt i16 %3, 64
  br i1 %cmp.i.i, label %land.rhs.i.i, label %entry.encode_readdirplus3args.exit_crit_edge

entry.encode_readdirplus3args.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %encode_readdirplus3args.exit

land.rhs.i.i:                                     ; preds = %entry
  %.b47.i.i = load i1, ptr @encode_nfs_fh3.__already_done, align 1
  br i1 %.b47.i.i, label %land.rhs.i.i.encode_readdirplus3args.exit_crit_edge, label %if.then.i.i, !prof !136

land.rhs.i.i.encode_readdirplus3args.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %encode_readdirplus3args.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @encode_nfs_fh3.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 422, i32 noundef 9, ptr noundef null) #6
  br label %encode_readdirplus3args.exit

encode_readdirplus3args.exit:                     ; preds = %if.then.i.i, %land.rhs.i.i.encode_readdirplus3args.exit_crit_edge, %entry.encode_readdirplus3args.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %1, align 2
  %conv38.i.i = zext i16 %5 to i32
  %add.i.i = add nuw nsw i32 %conv38.i.i, 4
  %call.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i.i) #6
  %data.i.i = getelementptr inbounds %struct.nfs_fh, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %1, align 2
  %conv40.i.i = zext i16 %7 to i32
  %call41.i.i = tail call ptr @xdr_encode_opaque(ptr noundef %call.i.i, ptr noundef %data.i.i, i32 noundef %conv40.i.i) #6
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 24) #6
  %cookie.i = getelementptr inbounds %struct.nfs3_readdirargs, ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %cookie.i, align 8
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 %9, ptr %call.i, align 1
  %add.ptr.i.i.i = getelementptr i32, ptr %call.i, i32 2
  %verf.i = getelementptr inbounds %struct.nfs3_readdirargs, ptr %data, i32 0, i32 2
  %11 = ptrtoint ptr %verf.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %verf.i, align 4
  %13 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %12, ptr %add.ptr.i.i.i, align 4
  %add.ptr.i.i = getelementptr i32, ptr %call.i, i32 4
  %count.i = getelementptr inbounds %struct.nfs3_readdirargs, ptr %data, i32 0, i32 4
  %14 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count.i, align 4
  %shr.i = lshr i32 %15, 3
  %incdec.ptr.i = getelementptr i32, ptr %call.i, i32 5
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %shr.i, ptr %add.ptr.i.i, align 4
  %17 = load i32, ptr %count.i, align 4
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %incdec.ptr.i, align 4
  %pages = getelementptr inbounds %struct.nfs3_readdirargs, ptr %data, i32 0, i32 5
  %19 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pages, align 8
  %21 = load i32, ptr %count.i, align 4
  tail call void @rpc_prepare_reply_pages(ptr noundef %req, ptr noundef %20, i32 noundef 0, i32 noundef %21, i32 noundef 25) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs3_xdr_dec_fsstat3res(ptr nocapture noundef readonly %req, ptr noundef %xdr, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !135

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 0
  br i1 %cmp.not.i, label %if.end.i.if.end_crit_edge, label %out_status.i, !prof !136

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

out_status.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @trace_nfs_xdr_status(ptr noundef %xdr, i32 noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %out_status.i, %if.end.i.if.end_crit_edge
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 8
  %rq_task.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 3
  %4 = ptrtoint ptr %rq_task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rq_task.i, align 4
  %tobool.not.i25 = icmp eq ptr %5, null
  br i1 %tobool.not.i25, label %if.end.rpc_rqst_userns.exit_crit_edge, label %if.then.i

if.end.rpc_rqst_userns.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

if.then.i:                                        ; preds = %if.end
  %tk_client.i = getelementptr inbounds %struct.rpc_task, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %tk_client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tk_client.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.then.i.rpc_rqst_userns.exit_crit_edge, label %land.lhs.true.i.i

if.then.i.rpc_rqst_userns.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

land.lhs.true.i.i:                                ; preds = %if.then.i
  %cl_cred.i.i = getelementptr inbounds %struct.rpc_clnt, ptr %7, i32 0, i32 29
  %8 = ptrtoint ptr %cl_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cl_cred.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %user_ns.i.i = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 25
  %10 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %user_ns.i.i, align 4
  br label %rpc_rqst_userns.exit

rpc_rqst_userns.exit:                             ; preds = %if.then.i.i, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, %if.then.i.rpc_rqst_userns.exit_crit_edge, %if.end.rpc_rqst_userns.exit_crit_edge
  %retval.0.i26 = phi ptr [ @init_user_ns, %if.end.rpc_rqst_userns.exit_crit_edge ], [ %11, %if.then.i.i ], [ @init_user_ns, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge ], [ @init_user_ns, %if.then.i.rpc_rqst_userns.exit_crit_edge ]
  %call.i27 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i28 = icmp eq ptr %call.i27, null
  br i1 %tobool.not.i28, label %rpc_rqst_userns.exit.cleanup_crit_edge, label %if.end.i30, !prof !135

rpc_rqst_userns.exit.cleanup_crit_edge:           ; preds = %rpc_rqst_userns.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i30:                                       ; preds = %rpc_rqst_userns.exit
  %12 = ptrtoint ptr %call.i27 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call.i27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not.i29 = icmp eq i32 %13, 0
  br i1 %cmp.not.i29, label %if.end.i30.if.end13_crit_edge, label %decode_post_op_attr.exit

if.end.i30.if.end13_crit_edge:                    ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

decode_post_op_attr.exit:                         ; preds = %if.end.i30
  %call5.i = tail call fastcc i32 @decode_fattr3(ptr noundef %xdr, ptr noundef %3, ptr noundef %retval.0.i26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool5.not = icmp eq i32 %call5.i, 0
  br i1 %tobool5.not, label %decode_post_op_attr.exit.if.end13_crit_edge, label %decode_post_op_attr.exit.cleanup_crit_edge, !prof !136

decode_post_op_attr.exit.cleanup_crit_edge:       ; preds = %decode_post_op_attr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

decode_post_op_attr.exit.if.end13_crit_edge:      ; preds = %decode_post_op_attr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.end13:                                         ; preds = %decode_post_op_attr.exit.if.end13_crit_edge, %if.end.i30.if.end13_crit_edge
  br i1 %cmp.not.i, label %if.end15, label %out_status

if.end15:                                         ; preds = %if.end13
  %call.i32 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 52) #6
  %tobool.not.i33 = icmp eq ptr %call.i32, null
  br i1 %tobool.not.i33, label %if.end15.cleanup_crit_edge, label %if.end.i34, !prof !135

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i34:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %tbytes.i = getelementptr inbounds %struct.nfs_fsstat, ptr %data, i32 0, i32 1
  %14 = ptrtoint ptr %call.i32 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %15 = load i64, ptr %call.i32, align 1
  %16 = ptrtoint ptr %tbytes.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %tbytes.i, align 8
  %add.ptr.i.i.i = getelementptr i32, ptr %call.i32, i32 2
  %fbytes.i = getelementptr inbounds %struct.nfs_fsstat, ptr %data, i32 0, i32 2
  %17 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %18 = load i64, ptr %add.ptr.i.i.i, align 1
  %19 = ptrtoint ptr %fbytes.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %fbytes.i, align 8
  %add.ptr.i.i21.i = getelementptr i32, ptr %call.i32, i32 4
  %abytes.i = getelementptr inbounds %struct.nfs_fsstat, ptr %data, i32 0, i32 3
  %20 = ptrtoint ptr %add.ptr.i.i21.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %add.ptr.i.i21.i, align 1
  %22 = ptrtoint ptr %abytes.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %abytes.i, align 8
  %add.ptr.i.i22.i = getelementptr i32, ptr %call.i32, i32 6
  %tfiles.i = getelementptr inbounds %struct.nfs_fsstat, ptr %data, i32 0, i32 4
  %23 = ptrtoint ptr %add.ptr.i.i22.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %24 = load i64, ptr %add.ptr.i.i22.i, align 1
  %25 = ptrtoint ptr %tfiles.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %tfiles.i, align 8
  %add.ptr.i.i23.i = getelementptr i32, ptr %call.i32, i32 8
  %ffiles.i = getelementptr inbounds %struct.nfs_fsstat, ptr %data, i32 0, i32 5
  %26 = ptrtoint ptr %add.ptr.i.i23.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 8)
  %27 = load i64, ptr %add.ptr.i.i23.i, align 1
  %28 = ptrtoint ptr %ffiles.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %ffiles.i, align 8
  %add.ptr.i.i24.i = getelementptr i32, ptr %call.i32, i32 10
  %afiles.i = getelementptr inbounds %struct.nfs_fsstat, ptr %data, i32 0, i32 6
  %29 = ptrtoint ptr %add.ptr.i.i24.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 8)
  %30 = load i64, ptr %add.ptr.i.i24.i, align 1
  %31 = ptrtoint ptr %afiles.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %afiles.i, align 8
  br label %cleanup

out_status:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call fastcc i32 @nfs3_stat_to_errno(i32 noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %out_status, %if.end.i34, %if.end15.cleanup_crit_edge, %decode_post_op_attr.exit.cleanup_crit_edge, %rpc_rqst_userns.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %out_status ], [ %call5.i, %decode_post_op_attr.exit.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ], [ 0, %if.end.i34 ], [ -5, %if.end15.cleanup_crit_edge ], [ -5, %rpc_rqst_userns.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs3_xdr_dec_fsinfo3res(ptr nocapture noundef readonly %req, ptr noundef %xdr, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !135

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 0
  br i1 %cmp.not.i, label %if.end.i.if.end_crit_edge, label %out_status.i, !prof !136

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

out_status.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @trace_nfs_xdr_status(ptr noundef %xdr, i32 noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %out_status.i, %if.end.i.if.end_crit_edge
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 8
  %rq_task.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 3
  %4 = ptrtoint ptr %rq_task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rq_task.i, align 4
  %tobool.not.i25 = icmp eq ptr %5, null
  br i1 %tobool.not.i25, label %if.end.rpc_rqst_userns.exit_crit_edge, label %if.then.i

if.end.rpc_rqst_userns.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

if.then.i:                                        ; preds = %if.end
  %tk_client.i = getelementptr inbounds %struct.rpc_task, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %tk_client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tk_client.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.then.i.rpc_rqst_userns.exit_crit_edge, label %land.lhs.true.i.i

if.then.i.rpc_rqst_userns.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

land.lhs.true.i.i:                                ; preds = %if.then.i
  %cl_cred.i.i = getelementptr inbounds %struct.rpc_clnt, ptr %7, i32 0, i32 29
  %8 = ptrtoint ptr %cl_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cl_cred.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %user_ns.i.i = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 25
  %10 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %user_ns.i.i, align 4
  br label %rpc_rqst_userns.exit

rpc_rqst_userns.exit:                             ; preds = %if.then.i.i, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, %if.then.i.rpc_rqst_userns.exit_crit_edge, %if.end.rpc_rqst_userns.exit_crit_edge
  %retval.0.i26 = phi ptr [ @init_user_ns, %if.end.rpc_rqst_userns.exit_crit_edge ], [ %11, %if.then.i.i ], [ @init_user_ns, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge ], [ @init_user_ns, %if.then.i.rpc_rqst_userns.exit_crit_edge ]
  %call.i27 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i28 = icmp eq ptr %call.i27, null
  br i1 %tobool.not.i28, label %rpc_rqst_userns.exit.cleanup_crit_edge, label %if.end.i30, !prof !135

rpc_rqst_userns.exit.cleanup_crit_edge:           ; preds = %rpc_rqst_userns.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i30:                                       ; preds = %rpc_rqst_userns.exit
  %12 = ptrtoint ptr %call.i27 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call.i27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not.i29 = icmp eq i32 %13, 0
  br i1 %cmp.not.i29, label %if.end.i30.if.end13_crit_edge, label %decode_post_op_attr.exit

if.end.i30.if.end13_crit_edge:                    ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

decode_post_op_attr.exit:                         ; preds = %if.end.i30
  %call5.i = tail call fastcc i32 @decode_fattr3(ptr noundef %xdr, ptr noundef %3, ptr noundef %retval.0.i26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool5.not = icmp eq i32 %call5.i, 0
  br i1 %tobool5.not, label %decode_post_op_attr.exit.if.end13_crit_edge, label %decode_post_op_attr.exit.cleanup_crit_edge, !prof !136

decode_post_op_attr.exit.cleanup_crit_edge:       ; preds = %decode_post_op_attr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

decode_post_op_attr.exit.if.end13_crit_edge:      ; preds = %decode_post_op_attr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.end13:                                         ; preds = %decode_post_op_attr.exit.if.end13_crit_edge, %if.end.i30.if.end13_crit_edge
  br i1 %cmp.not.i, label %if.end15, label %out_status

if.end15:                                         ; preds = %if.end13
  %call.i32 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 48) #6
  %tobool.not.i33 = icmp eq ptr %call.i32, null
  br i1 %tobool.not.i33, label %if.end15.cleanup_crit_edge, label %if.end.i34, !prof !135

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i34:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr.i = getelementptr i32, ptr %call.i32, i32 1
  %14 = ptrtoint ptr %call.i32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call.i32, align 4
  %rtmax.i = getelementptr inbounds %struct.nfs_fsinfo, ptr %data, i32 0, i32 1
  %16 = ptrtoint ptr %rtmax.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %rtmax.i, align 4
  %incdec.ptr5.i = getelementptr i32, ptr %call.i32, i32 2
  %17 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %incdec.ptr.i, align 4
  %rtpref.i = getelementptr inbounds %struct.nfs_fsinfo, ptr %data, i32 0, i32 2
  %19 = ptrtoint ptr %rtpref.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %rtpref.i, align 8
  %incdec.ptr7.i = getelementptr i32, ptr %call.i32, i32 3
  %20 = ptrtoint ptr %incdec.ptr5.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %incdec.ptr5.i, align 4
  %rtmult.i = getelementptr inbounds %struct.nfs_fsinfo, ptr %data, i32 0, i32 3
  %22 = ptrtoint ptr %rtmult.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %rtmult.i, align 4
  %incdec.ptr9.i = getelementptr i32, ptr %call.i32, i32 4
  %23 = ptrtoint ptr %incdec.ptr7.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %incdec.ptr7.i, align 4
  %wtmax.i = getelementptr inbounds %struct.nfs_fsinfo, ptr %data, i32 0, i32 4
  %25 = ptrtoint ptr %wtmax.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %wtmax.i, align 8
  %incdec.ptr11.i = getelementptr i32, ptr %call.i32, i32 5
  %26 = ptrtoint ptr %incdec.ptr9.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %incdec.ptr9.i, align 4
  %wtpref.i = getelementptr inbounds %struct.nfs_fsinfo, ptr %data, i32 0, i32 5
  %28 = ptrtoint ptr %wtpref.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %wtpref.i, align 4
  %incdec.ptr13.i = getelementptr i32, ptr %call.i32, i32 6
  %29 = ptrtoint ptr %incdec.ptr11.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %incdec.ptr11.i, align 4
  %wtmult.i = getelementptr inbounds %struct.nfs_fsinfo, ptr %data, i32 0, i32 6
  %31 = ptrtoint ptr %wtmult.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %wtmult.i, align 8
  %incdec.ptr15.i = getelementptr i32, ptr %call.i32, i32 7
  %32 = ptrtoint ptr %incdec.ptr13.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %incdec.ptr13.i, align 4
  %dtpref.i = getelementptr inbounds %struct.nfs_fsinfo, ptr %data, i32 0, i32 7
  %34 = ptrtoint ptr %dtpref.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %dtpref.i, align 4
  %maxfilesize.i = getelementptr inbounds %struct.nfs_fsinfo, ptr %data, i32 0, i32 8
  %35 = ptrtoint ptr %incdec.ptr15.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 8)
  %36 = load i64, ptr %incdec.ptr15.i, align 1
  %37 = ptrtoint ptr %maxfilesize.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %maxfilesize.i, align 8
  %add.ptr.i.i.i = getelementptr i32, ptr %call.i32, i32 9
  %time_delta.i = getelementptr inbounds %struct.nfs_fsinfo, ptr %data, i32 0, i32 9
  %incdec.ptr.i.i = getelementptr i32, ptr %call.i32, i32 10
  %38 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr.i.i.i, align 4
  %conv.i.i = zext i32 %39 to i64
  %40 = ptrtoint ptr %time_delta.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %conv.i.i, ptr %time_delta.i, align 8
  %41 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %incdec.ptr.i.i, align 4
  %tv_nsec.i.i = getelementptr inbounds %struct.nfs_fsinfo, ptr %data, i32 0, i32 9, i32 1
  %43 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %tv_nsec.i.i, align 8
  %lease_time.i = getelementptr inbounds %struct.nfs_fsinfo, ptr %data, i32 0, i32 10
  %44 = ptrtoint ptr %lease_time.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %lease_time.i, align 8
  %change_attr_type.i = getelementptr inbounds %struct.nfs_fsinfo, ptr %data, i32 0, i32 15
  %45 = ptrtoint ptr %change_attr_type.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 4, ptr %change_attr_type.i, align 8
  br label %cleanup

out_status:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call fastcc i32 @nfs3_stat_to_errno(i32 noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %out_status, %if.end.i34, %if.end15.cleanup_crit_edge, %decode_post_op_attr.exit.cleanup_crit_edge, %rpc_rqst_userns.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %out_status ], [ %call5.i, %decode_post_op_attr.exit.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ], [ 0, %if.end.i34 ], [ -5, %if.end15.cleanup_crit_edge ], [ -5, %rpc_rqst_userns.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs3_xdr_dec_pathconf3res(ptr nocapture noundef readonly %req, ptr noundef %xdr, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !135

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 0
  br i1 %cmp.not.i, label %if.end.i.if.end_crit_edge, label %out_status.i, !prof !136

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

out_status.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @trace_nfs_xdr_status(ptr noundef %xdr, i32 noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %out_status.i, %if.end.i.if.end_crit_edge
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %rq_task.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 3
  %4 = ptrtoint ptr %rq_task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rq_task.i, align 4
  %tobool.not.i25 = icmp eq ptr %5, null
  br i1 %tobool.not.i25, label %if.end.rpc_rqst_userns.exit_crit_edge, label %if.then.i

if.end.rpc_rqst_userns.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

if.then.i:                                        ; preds = %if.end
  %tk_client.i = getelementptr inbounds %struct.rpc_task, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %tk_client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tk_client.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.then.i.rpc_rqst_userns.exit_crit_edge, label %land.lhs.true.i.i

if.then.i.rpc_rqst_userns.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

land.lhs.true.i.i:                                ; preds = %if.then.i
  %cl_cred.i.i = getelementptr inbounds %struct.rpc_clnt, ptr %7, i32 0, i32 29
  %8 = ptrtoint ptr %cl_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cl_cred.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %user_ns.i.i = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 25
  %10 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %user_ns.i.i, align 4
  br label %rpc_rqst_userns.exit

rpc_rqst_userns.exit:                             ; preds = %if.then.i.i, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, %if.then.i.rpc_rqst_userns.exit_crit_edge, %if.end.rpc_rqst_userns.exit_crit_edge
  %retval.0.i26 = phi ptr [ @init_user_ns, %if.end.rpc_rqst_userns.exit_crit_edge ], [ %11, %if.then.i.i ], [ @init_user_ns, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge ], [ @init_user_ns, %if.then.i.rpc_rqst_userns.exit_crit_edge ]
  %call.i27 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i28 = icmp eq ptr %call.i27, null
  br i1 %tobool.not.i28, label %rpc_rqst_userns.exit.cleanup_crit_edge, label %if.end.i30, !prof !135

rpc_rqst_userns.exit.cleanup_crit_edge:           ; preds = %rpc_rqst_userns.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i30:                                       ; preds = %rpc_rqst_userns.exit
  %12 = ptrtoint ptr %call.i27 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call.i27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not.i29 = icmp eq i32 %13, 0
  br i1 %cmp.not.i29, label %if.end.i30.if.end13_crit_edge, label %decode_post_op_attr.exit

if.end.i30.if.end13_crit_edge:                    ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

decode_post_op_attr.exit:                         ; preds = %if.end.i30
  %call5.i = tail call fastcc i32 @decode_fattr3(ptr noundef %xdr, ptr noundef %3, ptr noundef %retval.0.i26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool5.not = icmp eq i32 %call5.i, 0
  br i1 %tobool5.not, label %decode_post_op_attr.exit.if.end13_crit_edge, label %decode_post_op_attr.exit.cleanup_crit_edge, !prof !136

decode_post_op_attr.exit.cleanup_crit_edge:       ; preds = %decode_post_op_attr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

decode_post_op_attr.exit.if.end13_crit_edge:      ; preds = %decode_post_op_attr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.end13:                                         ; preds = %decode_post_op_attr.exit.if.end13_crit_edge, %if.end.i30.if.end13_crit_edge
  br i1 %cmp.not.i, label %if.end15, label %out_status

if.end15:                                         ; preds = %if.end13
  %call.i32 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 24) #6
  %tobool.not.i33 = icmp eq ptr %call.i32, null
  br i1 %tobool.not.i33, label %if.end15.cleanup_crit_edge, label %if.end.i34, !prof !135

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i34:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr.i = getelementptr i32, ptr %call.i32, i32 1
  %14 = ptrtoint ptr %call.i32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call.i32, align 4
  %max_link.i = getelementptr inbounds %struct.nfs_pathconf, ptr %data, i32 0, i32 1
  %16 = ptrtoint ptr %max_link.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %max_link.i, align 4
  %17 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %incdec.ptr.i, align 4
  %max_namelen.i = getelementptr inbounds %struct.nfs_pathconf, ptr %data, i32 0, i32 2
  %19 = ptrtoint ptr %max_namelen.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %max_namelen.i, align 4
  br label %cleanup

out_status:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call fastcc i32 @nfs3_stat_to_errno(i32 noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %out_status, %if.end.i34, %if.end15.cleanup_crit_edge, %decode_post_op_attr.exit.cleanup_crit_edge, %rpc_rqst_userns.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %out_status ], [ %call5.i, %decode_post_op_attr.exit.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ], [ 0, %if.end.i34 ], [ -5, %if.end15.cleanup_crit_edge ], [ -5, %rpc_rqst_userns.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs3_xdr_enc_commit3args(ptr nocapture noundef readnone %req, ptr noundef %xdr, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fh.i = getelementptr inbounds %struct.nfs_commitargs, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %fh.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fh.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %3)
  %cmp.i.i = icmp ugt i16 %3, 64
  br i1 %cmp.i.i, label %land.rhs.i.i, label %entry.encode_commit3args.exit_crit_edge

entry.encode_commit3args.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %encode_commit3args.exit

land.rhs.i.i:                                     ; preds = %entry
  %.b47.i.i = load i1, ptr @encode_nfs_fh3.__already_done, align 1
  br i1 %.b47.i.i, label %land.rhs.i.i.encode_commit3args.exit_crit_edge, label %if.then.i.i, !prof !136

land.rhs.i.i.encode_commit3args.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %encode_commit3args.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @encode_nfs_fh3.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 422, i32 noundef 9, ptr noundef null) #6
  br label %encode_commit3args.exit

encode_commit3args.exit:                          ; preds = %if.then.i.i, %land.rhs.i.i.encode_commit3args.exit_crit_edge, %entry.encode_commit3args.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %1, align 2
  %conv38.i.i = zext i16 %5 to i32
  %add.i.i = add nuw nsw i32 %conv38.i.i, 4
  %call.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i.i) #6
  %data.i.i = getelementptr inbounds %struct.nfs_fh, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %1, align 2
  %conv40.i.i = zext i16 %7 to i32
  %call41.i.i = tail call ptr @xdr_encode_opaque(ptr noundef %call.i.i, ptr noundef %data.i.i, i32 noundef %conv40.i.i) #6
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 12) #6
  %offset.i = getelementptr inbounds %struct.nfs_commitargs, ptr %data, i32 0, i32 2
  %8 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %offset.i, align 8
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 %9, ptr %call.i, align 1
  %add.ptr.i.i = getelementptr i32, ptr %call.i, i32 2
  %count.i = getelementptr inbounds %struct.nfs_commitargs, ptr %data, i32 0, i32 3
  %11 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count.i, align 8
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %add.ptr.i.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs3_xdr_dec_commit3res(ptr nocapture noundef readonly %req, ptr noundef %xdr, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %verf1 = getelementptr inbounds %struct.nfs_commitres, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %verf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %verf1, align 4
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !135

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i, label %if.end.i.if.end_crit_edge, label %out_status.i, !prof !136

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

out_status.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @trace_nfs_xdr_status(ptr noundef %xdr, i32 noundef %3) #6
  br label %if.end

if.end:                                           ; preds = %out_status.i, %if.end.i.if.end_crit_edge
  %fattr = getelementptr inbounds %struct.nfs_commitres, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fattr, align 4
  %rq_task.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 3
  %6 = ptrtoint ptr %rq_task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rq_task.i, align 4
  %tobool.not.i33 = icmp eq ptr %7, null
  br i1 %tobool.not.i33, label %if.end.rpc_rqst_userns.exit_crit_edge, label %if.then.i

if.end.rpc_rqst_userns.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

if.then.i:                                        ; preds = %if.end
  %tk_client.i = getelementptr inbounds %struct.rpc_task, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %tk_client.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tk_client.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.then.i.rpc_rqst_userns.exit_crit_edge, label %land.lhs.true.i.i

if.then.i.rpc_rqst_userns.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

land.lhs.true.i.i:                                ; preds = %if.then.i
  %cl_cred.i.i = getelementptr inbounds %struct.rpc_clnt, ptr %9, i32 0, i32 29
  %10 = ptrtoint ptr %cl_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cl_cred.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %user_ns.i.i = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 25
  %12 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %user_ns.i.i, align 4
  br label %rpc_rqst_userns.exit

rpc_rqst_userns.exit:                             ; preds = %if.then.i.i, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, %if.then.i.rpc_rqst_userns.exit_crit_edge, %if.end.rpc_rqst_userns.exit_crit_edge
  %retval.0.i34 = phi ptr [ @init_user_ns, %if.end.rpc_rqst_userns.exit_crit_edge ], [ %13, %if.then.i.i ], [ @init_user_ns, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge ], [ @init_user_ns, %if.then.i.rpc_rqst_userns.exit_crit_edge ]
  %call5 = tail call fastcc i32 @decode_wcc_data(ptr noundef %xdr, ptr noundef %5, ptr noundef %retval.0.i34)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end14, label %rpc_rqst_userns.exit.cleanup_crit_edge, !prof !136

rpc_rqst_userns.exit.cleanup_crit_edge:           ; preds = %rpc_rqst_userns.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %rpc_rqst_userns.exit
  %op_status = getelementptr inbounds %struct.nfs_commitres, ptr %data, i32 0, i32 1
  %14 = ptrtoint ptr %op_status to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %3, ptr %op_status, align 4
  br i1 %cmp.not.i, label %if.end16, label %out_status

if.end16:                                         ; preds = %if.end14
  %call.i35 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 8) #6
  %tobool.not.i36 = icmp eq ptr %call.i35, null
  br i1 %tobool.not.i36, label %if.end16.cleanup_crit_edge, label %if.then19, !prof !135

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %call.i35 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %call.i35, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 %16, ptr %1, align 1
  %committed = getelementptr inbounds %struct.nfs_writeverf, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %committed to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %committed, align 4
  br label %cleanup

out_status:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %call21 = tail call fastcc i32 @nfs3_stat_to_errno(i32 noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %out_status, %if.then19, %if.end16.cleanup_crit_edge, %rpc_rqst_userns.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %out_status ], [ %call5, %rpc_rqst_userns.exit.cleanup_crit_edge ], [ 0, %if.then19 ], [ -5, %entry.cleanup_crit_edge ], [ -5, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @decode_fattr3(ptr noundef %xdr, ptr nocapture noundef %fattr, ptr noundef %userns) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 84) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !135

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %incdec.ptr.i = getelementptr i32, ptr %call, i32 1
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp.i = icmp ugt i32 %1, 7
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %1
  %arrayidx.i = getelementptr [9 x i16], ptr @nfs_type2fmt, i32 0, i32 %spec.store.select.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx.i, align 2
  %incdec.ptr = getelementptr i32, ptr %call, i32 2
  %4 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %incdec.ptr.i, align 4
  %6 = trunc i32 %5 to i16
  %7 = and i16 %6, 4095
  %conv6 = or i16 %7, %3
  %mode = getelementptr inbounds %struct.nfs_fattr, ptr %fattr, i32 0, i32 1
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv6, ptr %mode, align 4
  %incdec.ptr7 = getelementptr i32, ptr %call, i32 3
  %9 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %incdec.ptr, align 4
  %nlink = getelementptr inbounds %struct.nfs_fattr, ptr %fattr, i32 0, i32 2
  %11 = ptrtoint ptr %nlink to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %nlink, align 8
  %uid = getelementptr inbounds %struct.nfs_fattr, ptr %fattr, i32 0, i32 3
  %12 = ptrtoint ptr %incdec.ptr7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %incdec.ptr7, align 4
  %call11 = tail call i32 @make_kuid(ptr noundef %userns, i32 noundef %13) #6
  %14 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call11, ptr %uid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call11)
  %cmp.i104.not = icmp eq i32 %call11, -1
  br i1 %cmp.i104.not, label %do.body, label %if.end16

if.end16:                                         ; preds = %if.end
  %incdec.ptr9 = getelementptr i32, ptr %call, i32 4
  %gid = getelementptr inbounds %struct.nfs_fattr, ptr %fattr, i32 0, i32 4
  %15 = ptrtoint ptr %incdec.ptr9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %incdec.ptr9, align 4
  %call20 = tail call i32 @make_kgid(ptr noundef %userns, i32 noundef %16) #6
  %17 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call20, ptr %gid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call20)
  %cmp.i105.not = icmp eq i32 %call20, -1
  br i1 %cmp.i105.not, label %do.body54, label %if.end26

if.end26:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr18 = getelementptr i32, ptr %call, i32 5
  %size = getelementptr inbounds %struct.nfs_fattr, ptr %fattr, i32 0, i32 6
  %18 = ptrtoint ptr %incdec.ptr18 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %incdec.ptr18, align 1
  %20 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %size, align 8
  %add.ptr.i.i = getelementptr i32, ptr %call, i32 7
  %du = getelementptr inbounds %struct.nfs_fattr, ptr %fattr, i32 0, i32 7
  %21 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %add.ptr.i.i, align 1
  %23 = ptrtoint ptr %du to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %du, align 8
  %add.ptr.i.i106 = getelementptr i32, ptr %call, i32 9
  %rdev = getelementptr inbounds %struct.nfs_fattr, ptr %fattr, i32 0, i32 5
  %incdec.ptr.i107 = getelementptr i32, ptr %call, i32 10
  %24 = ptrtoint ptr %add.ptr.i.i106 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i.i106, align 4
  %26 = ptrtoint ptr %incdec.ptr.i107 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %incdec.ptr.i107, align 4
  %shl.i = shl i32 %25, 20
  %or.i = or i32 %shl.i, %27
  %shr.i = lshr i32 %or.i, 20
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %25)
  %cmp.not.i = icmp eq i32 %shr.i, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %27)
  %28 = icmp ult i32 %27, 1048576
  %or.cond.i = select i1 %cmp.not.i, i1 %28, i1 false
  %spec.store.select.i108 = select i1 %or.cond.i, i32 %or.i, i32 0
  %29 = ptrtoint ptr %rdev to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %spec.store.select.i108, ptr %rdev, align 4
  %incdec.ptr1.i = getelementptr i32, ptr %call, i32 11
  %fsid = getelementptr inbounds %struct.nfs_fattr, ptr %fattr, i32 0, i32 8
  %30 = ptrtoint ptr %incdec.ptr1.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 8)
  %31 = load i64, ptr %incdec.ptr1.i, align 1
  %32 = ptrtoint ptr %fsid to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %fsid, align 8
  %add.ptr.i = getelementptr i32, ptr %call, i32 13
  %minor = getelementptr inbounds %struct.nfs_fattr, ptr %fattr, i32 0, i32 8, i32 1
  %33 = ptrtoint ptr %minor to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 0, ptr %minor, align 8
  %fileid = getelementptr inbounds %struct.nfs_fattr, ptr %fattr, i32 0, i32 9
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 8)
  %35 = load i64, ptr %add.ptr.i, align 1
  %36 = ptrtoint ptr %fileid to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %fileid, align 8
  %add.ptr.i.i109 = getelementptr i32, ptr %call, i32 15
  %atime = getelementptr inbounds %struct.nfs_fattr, ptr %fattr, i32 0, i32 11
  %incdec.ptr.i110 = getelementptr i32, ptr %call, i32 16
  %37 = ptrtoint ptr %add.ptr.i.i109 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i.i109, align 4
  %conv.i = zext i32 %38 to i64
  %39 = ptrtoint ptr %atime to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv.i, ptr %atime, align 8
  %incdec.ptr1.i111 = getelementptr i32, ptr %call, i32 17
  %40 = ptrtoint ptr %incdec.ptr.i110 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %incdec.ptr.i110, align 4
  %tv_nsec.i = getelementptr inbounds %struct.nfs_fattr, ptr %fattr, i32 0, i32 11, i32 1
  %42 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %tv_nsec.i, align 8
  %mtime = getelementptr inbounds %struct.nfs_fattr, ptr %fattr, i32 0, i32 12
  %incdec.ptr.i112 = getelementptr i32, ptr %call, i32 18
  %43 = ptrtoint ptr %incdec.ptr1.i111 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %incdec.ptr1.i111, align 4
  %conv.i113 = zext i32 %44 to i64
  %45 = ptrtoint ptr %mtime to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %conv.i113, ptr %mtime, align 8
  %incdec.ptr1.i114 = getelementptr i32, ptr %call, i32 19
  %46 = ptrtoint ptr %incdec.ptr.i112 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %incdec.ptr.i112, align 4
  %tv_nsec.i115 = getelementptr inbounds %struct.nfs_fattr, ptr %fattr, i32 0, i32 12, i32 1
  %48 = ptrtoint ptr %tv_nsec.i115 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %tv_nsec.i115, align 8
  %ctime = getelementptr inbounds %struct.nfs_fattr, ptr %fattr, i32 0, i32 13
  %incdec.ptr.i116 = getelementptr i32, ptr %call, i32 20
  %49 = ptrtoint ptr %incdec.ptr1.i114 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %incdec.ptr1.i114, align 4
  %conv.i117 = zext i32 %50 to i64
  %51 = ptrtoint ptr %ctime to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %conv.i117, ptr %ctime, align 8
  %52 = ptrtoint ptr %incdec.ptr.i116 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %incdec.ptr.i116, align 4
  %tv_nsec.i119 = getelementptr inbounds %struct.nfs_fattr, ptr %fattr, i32 0, i32 13, i32 1
  %54 = ptrtoint ptr %tv_nsec.i119 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %tv_nsec.i119, align 8
  %shl.i120 = shl nuw nsw i64 %conv.i117, 30
  %conv.i122 = sext i32 %53 to i64
  %add.i = add nsw i64 %shl.i120, %conv.i122
  %change_attr = getelementptr inbounds %struct.nfs_fattr, ptr %fattr, i32 0, i32 14
  %55 = ptrtoint ptr %change_attr to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %add.i, ptr %change_attr, align 8
  %56 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fattr, align 8
  %or38 = or i32 %57, 163455
  store i32 %or38, ptr %fattr, align 8
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %58 = load i32, ptr @nfs_debug, align 4
  %and39 = and i32 %58, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %do.body.cleanup_crit_edge, label %do.end, !prof !136

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #9
  br label %cleanup

do.body54:                                        ; preds = %if.end16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %59 = load i32, ptr @nfs_debug, align 4
  %and55 = and i32 %59, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %do.body54.cleanup_crit_edge, label %do.end66, !prof !136

do.body54.cleanup_crit_edge:                      ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end66:                                         ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #8
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end66, %do.body54.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %if.end26, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end26 ], [ -5, %entry.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %do.end66 ], [ -22, %do.body54.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfs_xdr_bad_filehandle(ptr noundef %xdr) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_xdr_bad_filehandle, i32 0, i32 1), ptr blockaddress(@trace_nfs_xdr_bad_filehandle, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !140

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !125) #6
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !136

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.read_register.i32(metadata !125) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !141
  %call42 = tail call i32 @__traceiter_nfs_xdr_bad_filehandle(ptr noundef null, ptr noundef %xdr, i32 noundef 10001) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !142
  %13 = tail call i32 @llvm.read_register.i32(metadata !125) #6
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !125) #6
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !136

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div1.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !125) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !143
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_xdr_bad_filehandle, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_xdr_bad_filehandle, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_nfs_xdr_bad_filehandle.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_nfs_xdr_bad_filehandle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 1451, ptr noundef nonnull @.str.32) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !144
  %31 = tail call i32 @llvm.read_register.i32(metadata !125) #6
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs_xdr_bad_filehandle(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_reserve_space(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_encode_opaque(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfs3_stat_to_errno(i32 noundef %status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %status to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %status, label %for.inc.28 [
    i32 0, label %entry.cleanup_crit_edge
    i32 1, label %entry.cleanup_crit_edge50
    i32 2, label %entry.cleanup_crit_edge51
    i32 5, label %cleanup.fold.split24
    i32 6, label %cleanup.fold.split25
    i32 13, label %cleanup.fold.split26
    i32 17, label %cleanup.fold.split27
    i32 18, label %cleanup.fold.split28
    i32 19, label %cleanup.fold.split29
    i32 20, label %cleanup.fold.split30
    i32 21, label %cleanup.fold.split31
    i32 22, label %cleanup.fold.split32
    i32 27, label %cleanup.fold.split33
    i32 28, label %cleanup.fold.split34
    i32 30, label %cleanup.fold.split35
    i32 31, label %cleanup.fold.split36
    i32 63, label %cleanup.fold.split37
    i32 66, label %cleanup.fold.split38
    i32 69, label %cleanup.fold.split39
    i32 70, label %cleanup.fold.split40
    i32 71, label %cleanup.fold.split41
    i32 10001, label %cleanup.fold.split42
    i32 10002, label %cleanup.fold.split43
    i32 10003, label %cleanup.fold.split44
    i32 10004, label %cleanup.fold.split45
    i32 10005, label %cleanup.fold.split46
    i32 10006, label %cleanup.fold.split47
    i32 10007, label %cleanup.fold.split48
    i32 10008, label %cleanup.fold.split49
  ]

entry.cleanup_crit_edge51:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge50:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.28:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %1 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.inc.28.cleanup_crit_edge, label %do.end, !prof !136

for.inc.28.cleanup_crit_edge:                     ; preds = %for.inc.28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %for.inc.28
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %status) #9
  br label %cleanup

cleanup.fold.split24:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.fold.split25:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.fold.split26:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.fold.split27:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.fold.split28:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.fold.split29:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.fold.split30:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.fold.split31:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.fold.split32:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.fold.split33:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.fold.split34:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.fold.split35:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.fold.split36:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.fold.split37:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.fold.split38:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.fold.split39:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.fold.split40:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.fold.split41:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.fold.split42:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.fold.split43:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.fold.split44:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.fold.split45:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.fold.split46:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.fold.split47:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.fold.split48:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.fold.split49:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.fold.split49, %cleanup.fold.split48, %cleanup.fold.split47, %cleanup.fold.split46, %cleanup.fold.split45, %cleanup.fold.split44, %cleanup.fold.split43, %cleanup.fold.split42, %cleanup.fold.split41, %cleanup.fold.split40, %cleanup.fold.split39, %cleanup.fold.split38, %cleanup.fold.split37, %cleanup.fold.split36, %cleanup.fold.split35, %cleanup.fold.split34, %cleanup.fold.split33, %cleanup.fold.split32, %cleanup.fold.split31, %cleanup.fold.split30, %cleanup.fold.split29, %cleanup.fold.split28, %cleanup.fold.split27, %cleanup.fold.split26, %cleanup.fold.split25, %cleanup.fold.split24, %do.end, %for.inc.28.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge50, %entry.cleanup_crit_edge51
  %i.020 = phi i32 [ 29, %for.inc.28.cleanup_crit_edge ], [ 29, %do.end ], [ %status, %entry.cleanup_crit_edge ], [ 3, %cleanup.fold.split24 ], [ 4, %cleanup.fold.split25 ], [ 5, %cleanup.fold.split26 ], [ 6, %cleanup.fold.split27 ], [ 7, %cleanup.fold.split28 ], [ 8, %cleanup.fold.split29 ], [ 9, %cleanup.fold.split30 ], [ 10, %cleanup.fold.split31 ], [ 11, %cleanup.fold.split32 ], [ 12, %cleanup.fold.split33 ], [ 13, %cleanup.fold.split34 ], [ 14, %cleanup.fold.split35 ], [ 15, %cleanup.fold.split36 ], [ 16, %cleanup.fold.split37 ], [ 17, %cleanup.fold.split38 ], [ 18, %cleanup.fold.split39 ], [ 19, %cleanup.fold.split40 ], [ 20, %cleanup.fold.split41 ], [ 21, %cleanup.fold.split42 ], [ 22, %cleanup.fold.split43 ], [ 23, %cleanup.fold.split44 ], [ 24, %cleanup.fold.split45 ], [ 25, %cleanup.fold.split46 ], [ 26, %cleanup.fold.split47 ], [ 27, %cleanup.fold.split48 ], [ 28, %cleanup.fold.split49 ], [ %status, %entry.cleanup_crit_edge50 ], [ %status, %entry.cleanup_crit_edge51 ]
  %retval.0.in = getelementptr [30 x %struct.anon.166], ptr @nfs_errtbl, i32 0, i32 %i.020, i32 1
  %2 = ptrtoint ptr %retval.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %retval.0 = load i32, ptr %retval.0.in, align 4
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfs_xdr_status(ptr noundef %xdr, i32 noundef %error) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_xdr_status, i32 0, i32 1), ptr blockaddress(@trace_nfs_xdr_status, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !140

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !125) #6
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !136

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.read_register.i32(metadata !125) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !145
  %call42 = tail call i32 @__traceiter_nfs_xdr_status(ptr noundef null, ptr noundef %xdr, i32 noundef %error) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !146
  %13 = tail call i32 @llvm.read_register.i32(metadata !125) #6
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !125) #6
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !136

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !125) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !143
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_xdr_status, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_xdr_status, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfs_xdr_status.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_nfs_xdr_status.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 1450, ptr noundef nonnull @.str.32) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !144
  %31 = tail call i32 @llvm.read_register.i32(metadata !125) #6
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs_xdr_status(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @encode_sattr3(ptr noundef %xdr, ptr nocapture noundef readonly %attr, ptr noundef %userns) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %attr, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 24, i32 28
  %and2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %add5 = add nuw nsw i32 %spec.select, 4
  %nbytes.1 = select i1 %tobool3.not, i32 %spec.select, i32 %add5
  %and8 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %add11 = add nuw nsw i32 %nbytes.1, 4
  %nbytes.2 = select i1 %tobool9.not, i32 %nbytes.1, i32 %add11
  %and14 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %add17 = add nuw nsw i32 %nbytes.2, 8
  %nbytes.3 = select i1 %tobool15.not, i32 %nbytes.2, i32 %add17
  %and20 = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %add23 = add nuw nsw i32 %nbytes.3, 8
  %nbytes.4 = select i1 %tobool21.not, i32 %nbytes.3, i32 %add23
  %and26 = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  %add29 = add nuw nsw i32 %nbytes.4, 8
  %nbytes.5 = select i1 %tobool27.not, i32 %nbytes.4, i32 %add29
  %call = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %nbytes.5) #6
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %attr, align 8
  %and32 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.else, label %if.then34

if.then34:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr = getelementptr i32, ptr %call, i32 1
  %4 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %call, align 4
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 1
  %5 = ptrtoint ptr %ia_mode to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %ia_mode, align 4
  %7 = and i16 %6, 4095
  %and35 = zext i16 %7 to i32
  %8 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and35, ptr %incdec.ptr, align 4
  br label %if.end38

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %call, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then34
  %incdec.ptr.pn = phi ptr [ %incdec.ptr, %if.then34 ], [ %call, %if.else ]
  %p.0 = getelementptr i32, ptr %incdec.ptr.pn, i32 1
  %10 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %attr, align 8
  %and40 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  %incdec.ptr47 = getelementptr i32, ptr %incdec.ptr.pn, i32 2
  br i1 %tobool41.not, label %if.else46, label %if.then42

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %p.0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %p.0, align 4
  %ia_uid = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 2
  %13 = ptrtoint ptr %ia_uid to i32
  call void @__asan_load4_noabort(i32 %13)
  %.unpack144 = load i32, ptr %ia_uid, align 8
  %14 = insertvalue [1 x i32] undef, i32 %.unpack144, 0
  %call44 = tail call i32 @from_kuid_munged(ptr noundef %userns, [1 x i32] %14) #6
  %incdec.ptr45 = getelementptr i32, ptr %incdec.ptr.pn, i32 3
  %15 = ptrtoint ptr %incdec.ptr47 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call44, ptr %incdec.ptr47, align 4
  br label %if.end48

if.else46:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %p.0 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %p.0, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.else46, %if.then42
  %p.1 = phi ptr [ %incdec.ptr45, %if.then42 ], [ %incdec.ptr47, %if.else46 ]
  %17 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %attr, align 8
  %and50 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.else57, label %if.then52

if.then52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr53 = getelementptr i32, ptr %p.1, i32 1
  %19 = ptrtoint ptr %p.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %p.1, align 4
  %ia_gid = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 3
  %20 = ptrtoint ptr %ia_gid to i32
  call void @__asan_load4_noabort(i32 %20)
  %.unpack = load i32, ptr %ia_gid, align 4
  %21 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call55 = tail call i32 @from_kgid_munged(ptr noundef %userns, [1 x i32] %21) #6
  %22 = ptrtoint ptr %incdec.ptr53 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call55, ptr %incdec.ptr53, align 4
  br label %if.end59

if.else57:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %p.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %p.1, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.else57, %if.then52
  %incdec.ptr53.pn = phi ptr [ %incdec.ptr53, %if.then52 ], [ %p.1, %if.else57 ]
  %p.2 = getelementptr i32, ptr %incdec.ptr53.pn, i32 1
  %24 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %attr, align 8
  %and61 = and i32 %25, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  %incdec.ptr67 = getelementptr i32, ptr %incdec.ptr53.pn, i32 2
  br i1 %tobool62.not, label %if.else66, label %if.then63

if.then63:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %p.2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %p.2, align 4
  %ia_size = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 4
  %27 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %ia_size, align 8
  %29 = ptrtoint ptr %incdec.ptr67 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 %28, ptr %incdec.ptr67, align 1
  %add.ptr.i = getelementptr i32, ptr %incdec.ptr53.pn, i32 4
  br label %if.end68

if.else66:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %p.2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %p.2, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.else66, %if.then63
  %p.3 = phi ptr [ %add.ptr.i, %if.then63 ], [ %incdec.ptr67, %if.else66 ]
  %31 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %attr, align 8
  %and70 = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.else75, label %if.then72

if.then72:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr73 = getelementptr i32, ptr %p.3, i32 1
  %33 = ptrtoint ptr %p.3 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %p.3, align 4
  %ia_atime = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 5
  %34 = ptrtoint ptr %ia_atime to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %ia_atime, align 8
  %conv.i = trunc i64 %35 to i32
  %incdec.ptr.i = getelementptr i32, ptr %p.3, i32 2
  %36 = ptrtoint ptr %incdec.ptr73 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv.i, ptr %incdec.ptr73, align 4
  %tv_nsec.i = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 5, i32 1
  %37 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tv_nsec.i, align 8
  %incdec.ptr1.i = getelementptr i32, ptr %p.3, i32 3
  %39 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %incdec.ptr.i, align 4
  br label %if.end84

if.else75:                                        ; preds = %if.end68
  %and77 = and i32 %32, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  %incdec.ptr82 = getelementptr i32, ptr %p.3, i32 1
  br i1 %tobool78.not, label %if.else81, label %if.then79

if.then79:                                        ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %p.3 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %p.3, align 4
  br label %if.end84

if.else81:                                        ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %p.3 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %p.3, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.else81, %if.then79, %if.then72
  %p.4 = phi ptr [ %incdec.ptr1.i, %if.then72 ], [ %incdec.ptr82, %if.then79 ], [ %incdec.ptr82, %if.else81 ]
  %42 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %attr, align 8
  %and86 = and i32 %43, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.else91, label %if.then88

if.then88:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr89 = getelementptr i32, ptr %p.4, i32 1
  %44 = ptrtoint ptr %p.4 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 2, ptr %p.4, align 4
  %ia_mtime = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 6
  %45 = ptrtoint ptr %ia_mtime to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %ia_mtime, align 8
  %conv.i145 = trunc i64 %46 to i32
  %incdec.ptr.i146 = getelementptr i32, ptr %p.4, i32 2
  %47 = ptrtoint ptr %incdec.ptr89 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv.i145, ptr %incdec.ptr89, align 4
  %tv_nsec.i147 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 6, i32 1
  %48 = ptrtoint ptr %tv_nsec.i147 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tv_nsec.i147, align 8
  %50 = ptrtoint ptr %incdec.ptr.i146 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %incdec.ptr.i146, align 4
  br label %if.end98

if.else91:                                        ; preds = %if.end84
  %and93 = and i32 %43, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %if.else96, label %if.then95

if.then95:                                        ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %p.4 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %p.4, align 4
  br label %if.end98

if.else96:                                        ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %p.4 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %p.4, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.else96, %if.then95, %if.then88
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @decode_wcc_data(ptr noundef %xdr, ptr nocapture noundef %fattr, ptr noundef %userns) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.out_crit_edge, label %if.end.i, !prof !135

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 0
  br i1 %cmp.not.i, label %if.end.i.if.end_crit_edge, label %if.then4.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then4.i:                                       ; preds = %if.end.i
  %call.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 24) #6
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then4.i.out_crit_edge, label %if.end.i.i, !prof !135

if.then4.i.out_crit_edge:                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end.i.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fattr, align 8
  %or.i.i = or i32 %3, 360576
  store i32 %or.i.i, ptr %fattr, align 8
  %pre_size.i.i = getelementptr inbounds %struct.nfs_fattr, ptr %fattr, i32 0, i32 16
  %4 = ptrtoint ptr %call.i.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %call.i.i, align 1
  %6 = ptrtoint ptr %pre_size.i.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %pre_size.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i32, ptr %call.i.i, i32 2
  %pre_mtime.i.i = getelementptr inbounds %struct.nfs_fattr, ptr %fattr, i32 0, i32 17
  %incdec.ptr.i.i.i = getelementptr i32, ptr %call.i.i, i32 3
  %7 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %conv.i.i.i = zext i32 %8 to i64
  %9 = ptrtoint ptr %pre_mtime.i.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv.i.i.i, ptr %pre_mtime.i.i, align 8
  %incdec.ptr1.i.i.i = getelementptr i32, ptr %call.i.i, i32 4
  %10 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %incdec.ptr.i.i.i, align 4
  %tv_nsec.i.i.i = getelementptr inbounds %struct.nfs_fattr, ptr %fattr, i32 0, i32 17, i32 1
  %12 = ptrtoint ptr %tv_nsec.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %tv_nsec.i.i.i, align 8
  %pre_ctime.i.i = getelementptr inbounds %struct.nfs_fattr, ptr %fattr, i32 0, i32 18
  %incdec.ptr.i17.i.i = getelementptr i32, ptr %call.i.i, i32 5
  %13 = ptrtoint ptr %incdec.ptr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %incdec.ptr1.i.i.i, align 4
  %conv.i18.i.i = zext i32 %14 to i64
  %15 = ptrtoint ptr %pre_ctime.i.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv.i18.i.i, ptr %pre_ctime.i.i, align 8
  %16 = ptrtoint ptr %incdec.ptr.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %incdec.ptr.i17.i.i, align 4
  %tv_nsec.i20.i.i = getelementptr inbounds %struct.nfs_fattr, ptr %fattr, i32 0, i32 18, i32 1
  %18 = ptrtoint ptr %tv_nsec.i20.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %tv_nsec.i20.i.i, align 8
  %shl.i.i.i = shl nuw nsw i64 %conv.i18.i.i, 30
  %conv.i22.i.i = sext i32 %17 to i64
  %add.i.i.i = add nsw i64 %shl.i.i.i, %conv.i22.i.i
  %pre_change_attr.i.i = getelementptr inbounds %struct.nfs_fattr, ptr %fattr, i32 0, i32 15
  %19 = ptrtoint ptr %pre_change_attr.i.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %add.i.i.i, ptr %pre_change_attr.i.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.end.i.if.end_crit_edge
  %call.i7 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i8 = icmp eq ptr %call.i7, null
  br i1 %tobool.not.i8, label %if.end.out_crit_edge, label %if.end.i10, !prof !135

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end.i10:                                       ; preds = %if.end
  %20 = ptrtoint ptr %call.i7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call.i7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.not.i9 = icmp eq i32 %21, 0
  br i1 %cmp.not.i9, label %if.end.i10.out_crit_edge, label %if.then4.i11

if.end.i10.out_crit_edge:                         ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then4.i11:                                     ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i = tail call fastcc i32 @decode_fattr3(ptr noundef %xdr, ptr noundef %fattr, ptr noundef %userns) #6
  br label %out

out:                                              ; preds = %if.then4.i11, %if.end.i10.out_crit_edge, %if.end.out_crit_edge, %if.then4.i.out_crit_edge, %entry.out_crit_edge
  %error.0 = phi i32 [ -5, %entry.out_crit_edge ], [ -5, %if.then4.i.out_crit_edge ], [ %call5.i, %if.then4.i11 ], [ -5, %if.end.out_crit_edge ], [ 0, %if.end.i10.out_crit_edge ]
  ret i32 %error.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @encode_diropargs3(ptr noundef %xdr, ptr noundef %fh, ptr noundef %name, i32 noundef %length) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fh to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %fh, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %1)
  %cmp.i = icmp ugt i16 %1, 64
  br i1 %cmp.i, label %land.rhs.i, label %entry.encode_nfs_fh3.exit_crit_edge

entry.encode_nfs_fh3.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %encode_nfs_fh3.exit

land.rhs.i:                                       ; preds = %entry
  %.b47.i = load i1, ptr @encode_nfs_fh3.__already_done, align 1
  br i1 %.b47.i, label %land.rhs.i.encode_nfs_fh3.exit_crit_edge, label %if.then.i, !prof !136

land.rhs.i.encode_nfs_fh3.exit_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %encode_nfs_fh3.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @encode_nfs_fh3.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 422, i32 noundef 9, ptr noundef null) #6
  br label %encode_nfs_fh3.exit

encode_nfs_fh3.exit:                              ; preds = %if.then.i, %land.rhs.i.encode_nfs_fh3.exit_crit_edge, %entry.encode_nfs_fh3.exit_crit_edge
  %2 = ptrtoint ptr %fh to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %fh, align 2
  %conv38.i = zext i16 %3 to i32
  %add.i = add nuw nsw i32 %conv38.i, 4
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i) #6
  %data.i = getelementptr inbounds %struct.nfs_fh, ptr %fh, i32 0, i32 1
  %4 = ptrtoint ptr %fh to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fh, align 2
  %conv40.i = zext i16 %5 to i32
  %call41.i = tail call ptr @xdr_encode_opaque(ptr noundef %call.i, ptr noundef %data.i, i32 noundef %conv40.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %length)
  %cmp.i2 = icmp ugt i32 %length, 255
  br i1 %cmp.i2, label %land.rhs.i3, label %encode_nfs_fh3.exit.encode_filename3.exit_crit_edge

encode_nfs_fh3.exit.encode_filename3.exit_crit_edge: ; preds = %encode_nfs_fh3.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %encode_filename3.exit

land.rhs.i3:                                      ; preds = %encode_nfs_fh3.exit
  %.b40.i = load i1, ptr @encode_filename3.__already_done, align 1
  br i1 %.b40.i, label %land.rhs.i3.encode_filename3.exit_crit_edge, label %if.then.i4, !prof !136

land.rhs.i3.encode_filename3.exit_crit_edge:      ; preds = %land.rhs.i3
  call void @__sanitizer_cov_trace_pc() #8
  br label %encode_filename3.exit

if.then.i4:                                       ; preds = %land.rhs.i3
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @encode_filename3.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 188, i32 noundef 9, ptr noundef null) #6
  br label %encode_filename3.exit

encode_filename3.exit:                            ; preds = %if.then.i4, %land.rhs.i3.encode_filename3.exit_crit_edge, %encode_nfs_fh3.exit.encode_filename3.exit_crit_edge
  %add.i5 = add i32 %length, 4
  %call.i6 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i5) #6
  %call35.i = tail call ptr @xdr_encode_opaque(ptr noundef %call.i6, ptr noundef %name, i32 noundef %length) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_prepare_reply_pages(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdr_read_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_terminate_string(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdr_stream_pos(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_write_pages(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs3_xdr_enc_getacl3args(ptr noundef %req, ptr noundef %xdr, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %3)
  %cmp.i = icmp ugt i16 %3, 64
  br i1 %cmp.i, label %land.rhs.i, label %entry.encode_nfs_fh3.exit_crit_edge

entry.encode_nfs_fh3.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %encode_nfs_fh3.exit

land.rhs.i:                                       ; preds = %entry
  %.b47.i = load i1, ptr @encode_nfs_fh3.__already_done, align 1
  br i1 %.b47.i, label %land.rhs.i.encode_nfs_fh3.exit_crit_edge, label %if.then.i, !prof !136

land.rhs.i.encode_nfs_fh3.exit_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %encode_nfs_fh3.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @encode_nfs_fh3.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 422, i32 noundef 9, ptr noundef null) #6
  br label %encode_nfs_fh3.exit

encode_nfs_fh3.exit:                              ; preds = %if.then.i, %land.rhs.i.encode_nfs_fh3.exit_crit_edge, %entry.encode_nfs_fh3.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %1, align 2
  %conv38.i = zext i16 %5 to i32
  %add.i = add nuw nsw i32 %conv38.i, 4
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i) #6
  %data.i = getelementptr inbounds %struct.nfs_fh, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %1, align 2
  %conv40.i = zext i16 %7 to i32
  %call41.i = tail call ptr @xdr_encode_opaque(ptr noundef %call.i, ptr noundef %data.i, i32 noundef %conv40.i) #6
  %mask = getelementptr inbounds %struct.nfs3_getaclargs, ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask, align 4
  %call.i7 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #6
  %10 = ptrtoint ptr %call.i7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %call.i7, align 4
  %11 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mask, align 4
  %and = and i32 %12, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %encode_nfs_fh3.exit.if.end_crit_edge, label %if.then

encode_nfs_fh3.exit.if.end_crit_edge:             ; preds = %encode_nfs_fh3.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %encode_nfs_fh3.exit
  call void @__sanitizer_cov_trace_pc() #8
  %pages = getelementptr inbounds %struct.nfs3_getaclargs, ptr %data, i32 0, i32 2
  %13 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pages, align 4
  tail call void @rpc_prepare_reply_pages(ptr noundef %req, ptr noundef %14, i32 noundef 0, i32 noundef 28672, i32 noundef 58) #6
  %flags = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 2, i32 6
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 8
  %or = or i32 %16, 4
  store i32 %or, ptr %flags, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %encode_nfs_fh3.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs3_xdr_dec_getacl3res(ptr nocapture noundef readonly %req, ptr noundef %xdr, ptr noundef %result) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !135

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 0
  br i1 %cmp.not.i, label %if.end4, label %out_default, !prof !136

if.end4:                                          ; preds = %if.end.i
  %rq_task.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 3
  %2 = ptrtoint ptr %rq_task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_task.i, align 4
  %tobool.not.i11 = icmp eq ptr %3, null
  br i1 %tobool.not.i11, label %if.end4.rpc_rqst_userns.exit_crit_edge, label %if.then.i

if.end4.rpc_rqst_userns.exit_crit_edge:           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

if.then.i:                                        ; preds = %if.end4
  %tk_client.i = getelementptr inbounds %struct.rpc_task, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %tk_client.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tk_client.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.then.i.rpc_rqst_userns.exit_crit_edge, label %land.lhs.true.i.i

if.then.i.rpc_rqst_userns.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

land.lhs.true.i.i:                                ; preds = %if.then.i
  %cl_cred.i.i = getelementptr inbounds %struct.rpc_clnt, ptr %5, i32 0, i32 29
  %6 = ptrtoint ptr %cl_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cl_cred.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %user_ns.i.i = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 25
  %8 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %user_ns.i.i, align 4
  br label %rpc_rqst_userns.exit

rpc_rqst_userns.exit:                             ; preds = %if.then.i.i, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, %if.then.i.rpc_rqst_userns.exit_crit_edge, %if.end4.rpc_rqst_userns.exit_crit_edge
  %retval.0.i12 = phi ptr [ @init_user_ns, %if.end4.rpc_rqst_userns.exit_crit_edge ], [ %9, %if.then.i.i ], [ @init_user_ns, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge ], [ @init_user_ns, %if.then.i.rpc_rqst_userns.exit_crit_edge ]
  %10 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %result, align 4
  %call.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i.i13 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i13, label %rpc_rqst_userns.exit.out.i_crit_edge, label %if.end.i.i, !prof !135

rpc_rqst_userns.exit.out.i_crit_edge:             ; preds = %rpc_rqst_userns.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

if.end.i.i:                                       ; preds = %rpc_rqst_userns.exit
  %12 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not.i.i = icmp eq i32 %13, 0
  br i1 %cmp.not.i.i, label %if.end.i.i.if.end.i15_crit_edge, label %decode_post_op_attr.exit.i

if.end.i.i.if.end.i15_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i15

decode_post_op_attr.exit.i:                       ; preds = %if.end.i.i
  %call5.i.i = tail call fastcc i32 @decode_fattr3(ptr noundef %xdr, ptr noundef %11, ptr noundef %retval.0.i12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool.not.i14 = icmp eq i32 %call5.i.i, 0
  br i1 %tobool.not.i14, label %decode_post_op_attr.exit.i.if.end.i15_crit_edge, label %decode_post_op_attr.exit.i.out.i_crit_edge, !prof !136

decode_post_op_attr.exit.i.out.i_crit_edge:       ; preds = %decode_post_op_attr.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

decode_post_op_attr.exit.i.if.end.i15_crit_edge:  ; preds = %decode_post_op_attr.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i15

if.end.i15:                                       ; preds = %decode_post_op_attr.exit.i.if.end.i15_crit_edge, %if.end.i.i.if.end.i15_crit_edge
  %mask.i = getelementptr inbounds %struct.nfs3_getaclres, ptr %result, i32 0, i32 1
  %call.i85.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i86.i = icmp eq ptr %call.i85.i, null
  br i1 %tobool.not.i86.i, label %if.end.i15.out.i_crit_edge, label %if.end12.i, !prof !135

if.end.i15.out.i_crit_edge:                       ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

if.end12.i:                                       ; preds = %if.end.i15
  %14 = ptrtoint ptr %call.i85.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call.i85.i, align 4
  %16 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %15)
  %tobool14.not.i = icmp ult i32 %15, 16
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end12.i.out.i_crit_edge

if.end12.i.out.i_crit_edge:                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

if.end16.i:                                       ; preds = %if.end12.i
  %call17.i = tail call i32 @xdr_stream_pos(ptr noundef %xdr) #6
  %17 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mask.i, align 4
  %and19.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  %acl_access.i = getelementptr inbounds %struct.nfs3_getaclres, ptr %result, i32 0, i32 4
  %spec.select.i = select i1 %tobool20.not.i, ptr null, ptr %acl_access.i
  %and24.i = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  %acl_access_count.i = getelementptr inbounds %struct.nfs3_getaclres, ptr %result, i32 0, i32 2
  %aclcnt.0.i = select i1 %tobool25.not.i, ptr null, ptr %acl_access_count.i
  %buf.i = getelementptr inbounds %struct.xdr_stream, ptr %xdr, i32 0, i32 1
  %19 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buf.i, align 4
  %call28.i = tail call i32 @nfsacl_decode(ptr noundef %20, i32 noundef %call17.i, ptr noundef %aclcnt.0.i, ptr noundef %spec.select.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call28.i)
  %cmp.i = icmp slt i32 %call28.i, 1
  br i1 %cmp.i, label %if.end16.i.out.i_crit_edge, label %if.end36.i, !prof !135

if.end16.i.out.i_crit_edge:                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

if.end36.i:                                       ; preds = %if.end16.i
  %21 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mask.i, align 4
  %and38.i = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  %acl_default.i = getelementptr inbounds %struct.nfs3_getaclres, ptr %result, i32 0, i32 5
  %spec.select84.i = select i1 %tobool39.not.i, ptr null, ptr %acl_default.i
  %and43.i = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  %acl_default_count.i = getelementptr inbounds %struct.nfs3_getaclres, ptr %result, i32 0, i32 3
  %aclcnt.1.i = select i1 %tobool44.not.i, ptr null, ptr %acl_default_count.i
  %23 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buf.i, align 4
  %add.i = add i32 %call28.i, %call17.i
  %call48.i = tail call i32 @nfsacl_decode(ptr noundef %24, i32 noundef %add.i, ptr noundef %aclcnt.1.i, ptr noundef %spec.select84.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call48.i)
  %cmp49.i = icmp slt i32 %call48.i, 1
  br i1 %cmp49.i, label %if.end36.i.cleanup_crit_edge, label %if.end36.i.out.i_crit_edge, !prof !135

if.end36.i.out.i_crit_edge:                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

if.end36.i.cleanup_crit_edge:                     ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

out.i:                                            ; preds = %if.end36.i.out.i_crit_edge, %if.end16.i.out.i_crit_edge, %if.end12.i.out.i_crit_edge, %if.end.i15.out.i_crit_edge, %decode_post_op_attr.exit.i.out.i_crit_edge, %rpc_rqst_userns.exit.out.i_crit_edge
  %error.0.i = phi i32 [ %call5.i.i, %decode_post_op_attr.exit.i.out.i_crit_edge ], [ -22, %if.end12.i.out.i_crit_edge ], [ %call28.i, %if.end16.i.out.i_crit_edge ], [ 0, %if.end36.i.out.i_crit_edge ], [ -5, %if.end.i15.out.i_crit_edge ], [ -5, %rpc_rqst_userns.exit.out.i_crit_edge ]
  br label %cleanup

out_default:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @trace_nfs_xdr_status(ptr noundef %xdr, i32 noundef %1) #6
  %call7 = tail call fastcc i32 @nfs3_stat_to_errno(i32 noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %out_default, %out.i, %if.end36.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %out_default ], [ -5, %entry.cleanup_crit_edge ], [ %error.0.i, %out.i ], [ %call48.i, %if.end36.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs3_xdr_enc_setacl3args(ptr nocapture noundef readonly %req, ptr noundef %xdr, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %fh.i = getelementptr i8, ptr %1, i32 -440
  %2 = ptrtoint ptr %fh.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %fh.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %3)
  %cmp.i = icmp ugt i16 %3, 64
  br i1 %cmp.i, label %land.rhs.i, label %entry.encode_nfs_fh3.exit_crit_edge

entry.encode_nfs_fh3.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %encode_nfs_fh3.exit

land.rhs.i:                                       ; preds = %entry
  %.b47.i = load i1, ptr @encode_nfs_fh3.__already_done, align 1
  br i1 %.b47.i, label %land.rhs.i.encode_nfs_fh3.exit_crit_edge, label %if.then.i, !prof !136

land.rhs.i.encode_nfs_fh3.exit_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %encode_nfs_fh3.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @encode_nfs_fh3.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 422, i32 noundef 9, ptr noundef null) #6
  br label %encode_nfs_fh3.exit

encode_nfs_fh3.exit:                              ; preds = %if.then.i, %land.rhs.i.encode_nfs_fh3.exit_crit_edge, %entry.encode_nfs_fh3.exit_crit_edge
  %4 = ptrtoint ptr %fh.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fh.i, align 2
  %conv38.i = zext i16 %5 to i32
  %add.i = add nuw nsw i32 %conv38.i, 4
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i) #6
  %data.i = getelementptr i8, ptr %1, i32 -438
  %6 = ptrtoint ptr %fh.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %fh.i, align 2
  %conv40.i = zext i16 %7 to i32
  %call41.i = tail call ptr @xdr_encode_opaque(ptr noundef %call.i, ptr noundef %data.i, i32 noundef %conv40.i) #6
  %mask = getelementptr inbounds %struct.nfs3_setaclargs, ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask, align 4
  %call.i65 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #6
  %10 = ptrtoint ptr %call.i65 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %call.i65, align 4
  %len = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 1, i32 8
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  %npages = getelementptr inbounds %struct.nfs3_setaclargs, ptr %data, i32 0, i32 5
  %13 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %npages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not = icmp eq i32 %14, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %encode_nfs_fh3.exit
  call void @__sanitizer_cov_trace_pc() #8
  %pages = getelementptr inbounds %struct.nfs3_setaclargs, ptr %data, i32 0, i32 6
  %15 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pages, align 4
  %len1 = getelementptr inbounds %struct.nfs3_setaclargs, ptr %data, i32 0, i32 4
  %17 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len1, align 4
  tail call void @xdr_write_pages(ptr noundef %xdr, ptr noundef %16, i32 noundef 0, i32 noundef %18) #6
  br label %if.end

if.else:                                          ; preds = %encode_nfs_fh3.exit
  call void @__sanitizer_cov_trace_pc() #8
  %len2 = getelementptr inbounds %struct.nfs3_setaclargs, ptr %data, i32 0, i32 4
  %19 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len2, align 4
  %call3 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %20) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %buf = getelementptr inbounds %struct.xdr_stream, ptr %xdr, i32 0, i32 1
  %21 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buf, align 4
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  %25 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mask, align 4
  %and = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %acl_access = getelementptr inbounds %struct.nfs3_setaclargs, ptr %data, i32 0, i32 2
  %27 = ptrtoint ptr %acl_access to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %acl_access, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi ptr [ %28, %cond.true ], [ null, %if.end.cond.end_crit_edge ]
  %call6 = tail call i32 @nfsacl_encode(ptr noundef %22, i32 noundef %12, ptr noundef %24, ptr noundef %cond, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %do.body11, label %do.end17, !prof !135

do.body11:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs3xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1361, 0\0A.popsection", ""() #6, !srcloc !147
  unreachable

do.end17:                                         ; preds = %cond.end
  %29 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %buf, align 4
  %add = add i32 %call6, %12
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 4
  %33 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mask, align 4
  %and21 = and i32 %34, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %do.end17.cond.end25_crit_edge, label %cond.true23

do.end17.cond.end25_crit_edge:                    ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end25

cond.true23:                                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #8
  %acl_default = getelementptr inbounds %struct.nfs3_setaclargs, ptr %data, i32 0, i32 3
  %35 = ptrtoint ptr %acl_default to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %acl_default, align 4
  br label %cond.end25

cond.end25:                                       ; preds = %cond.true23, %do.end17.cond.end25_crit_edge
  %cond26 = phi ptr [ %36, %cond.true23 ], [ null, %do.end17.cond.end25_crit_edge ]
  %call27 = tail call i32 @nfsacl_encode(ptr noundef %30, i32 noundef %add, ptr noundef %32, ptr noundef %cond26, i32 noundef 1, i32 noundef 4096) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp29 = icmp slt i32 %call27, 0
  br i1 %cmp29, label %do.body37, label %do.end45, !prof !135

do.body37:                                        ; preds = %cond.end25
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs3xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1366, 0\0A.popsection", ""() #6, !srcloc !148
  unreachable

do.end45:                                         ; preds = %cond.end25
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs3_xdr_dec_setacl3res(ptr nocapture noundef readonly %req, ptr noundef %xdr, ptr nocapture noundef %result) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !135

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 0
  br i1 %cmp.not.i, label %if.end4, label %out_default, !prof !136

if.end4:                                          ; preds = %if.end.i
  %rq_task.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 3
  %2 = ptrtoint ptr %rq_task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_task.i, align 4
  %tobool.not.i11 = icmp eq ptr %3, null
  br i1 %tobool.not.i11, label %if.end4.rpc_rqst_userns.exit_crit_edge, label %if.then.i

if.end4.rpc_rqst_userns.exit_crit_edge:           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

if.then.i:                                        ; preds = %if.end4
  %tk_client.i = getelementptr inbounds %struct.rpc_task, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %tk_client.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tk_client.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.then.i.rpc_rqst_userns.exit_crit_edge, label %land.lhs.true.i.i

if.then.i.rpc_rqst_userns.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

land.lhs.true.i.i:                                ; preds = %if.then.i
  %cl_cred.i.i = getelementptr inbounds %struct.rpc_clnt, ptr %5, i32 0, i32 29
  %6 = ptrtoint ptr %cl_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cl_cred.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpc_rqst_userns.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %user_ns.i.i = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 25
  %8 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %user_ns.i.i, align 4
  br label %rpc_rqst_userns.exit

rpc_rqst_userns.exit:                             ; preds = %if.then.i.i, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, %if.then.i.rpc_rqst_userns.exit_crit_edge, %if.end4.rpc_rqst_userns.exit_crit_edge
  %retval.0.i12 = phi ptr [ @init_user_ns, %if.end4.rpc_rqst_userns.exit_crit_edge ], [ %9, %if.then.i.i ], [ @init_user_ns, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge ], [ @init_user_ns, %if.then.i.rpc_rqst_userns.exit_crit_edge ]
  %call.i13 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i14 = icmp eq ptr %call.i13, null
  br i1 %tobool.not.i14, label %rpc_rqst_userns.exit.cleanup_crit_edge, label %if.end.i16, !prof !135

rpc_rqst_userns.exit.cleanup_crit_edge:           ; preds = %rpc_rqst_userns.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i16:                                       ; preds = %rpc_rqst_userns.exit
  %10 = ptrtoint ptr %call.i13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call.i13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not.i15 = icmp eq i32 %11, 0
  br i1 %cmp.not.i15, label %if.end.i16.cleanup_crit_edge, label %if.then4.i

if.end.i16.cleanup_crit_edge:                     ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4.i:                                       ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i = tail call fastcc i32 @decode_fattr3(ptr noundef %xdr, ptr noundef %result, ptr noundef %retval.0.i12) #6
  br label %cleanup

out_default:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @trace_nfs_xdr_status(ptr noundef %xdr, i32 noundef %1) #6
  %call7 = tail call fastcc i32 @nfs3_stat_to_errno(i32 noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %out_default, %if.then4.i, %if.end.i16.cleanup_crit_edge, %rpc_rqst_userns.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %out_default ], [ -5, %entry.cleanup_crit_edge ], [ %call5.i, %if.then4.i ], [ -5, %rpc_rqst_userns.exit.cleanup_crit_edge ], [ 0, %if.end.i16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsacl_decode(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsacl_encode(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !74, !76, !77, !78, !79, !81, !82, !84, !86, !87, !89, !90, !91, !92, !94, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !116, !117, !118, !119, !121, !123}
!llvm.named.register.sp = !{!125}
!llvm.module.flags = !{!126, !127, !128, !129, !130, !131, !132, !133}
!llvm.ident = !{!134}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/nfs/nfs3xdr.c", i32 2036, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @nfs3_decode_dirent._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @nfs3_decode_dirent._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/nfs/nfs3xdr.c", i32 2529, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/nfs/nfs3xdr.c", i32 2530, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/nfs/nfs3xdr.c", i32 2531, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/nfs/nfs3xdr.c", i32 2532, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/nfs/nfs3xdr.c", i32 2533, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/nfs/nfs3xdr.c", i32 2534, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/nfs/nfs3xdr.c", i32 2535, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/nfs/nfs3xdr.c", i32 2536, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/nfs/nfs3xdr.c", i32 2537, i32 2}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/nfs/nfs3xdr.c", i32 2538, i32 2}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/nfs/nfs3xdr.c", i32 2539, i32 2}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/nfs/nfs3xdr.c", i32 2540, i32 2}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/nfs/nfs3xdr.c", i32 2541, i32 2}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/nfs/nfs3xdr.c", i32 2542, i32 2}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/nfs/nfs3xdr.c", i32 2543, i32 2}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/nfs/nfs3xdr.c", i32 2544, i32 2}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/nfs/nfs3xdr.c", i32 2545, i32 2}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/nfs/nfs3xdr.c", i32 2546, i32 2}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/nfs/nfs3xdr.c", i32 2547, i32 2}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/nfs/nfs3xdr.c", i32 2548, i32 2}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/nfs/nfs3xdr.c", i32 2549, i32 2}
!48 = !{ptr @nfs3_procedures, !49, !"nfs3_procedures", i1 false, i1 false}
!49 = !{!"../fs/nfs/nfs3xdr.c", i32 2528, i32 27}
!50 = !{ptr @nfs_version3, !51, !"nfs_version3", i1 false, i1 false}
!51 = !{!"../fs/nfs/nfs3xdr.c", i32 2553, i32 26}
!52 = !{ptr @nfsacl_version3, !53, !"nfsacl_version3", i1 false, i1 false}
!53 = !{!"../fs/nfs/nfs3xdr.c", i32 2583, i32 26}
!54 = !{ptr @nfs_version3_counts, !55, !"nfs_version3_counts", i1 false, i1 false}
!55 = !{!"../fs/nfs/nfs3xdr.c", i32 2552, i32 21}
!56 = !{ptr @nfs3_acl_counts, !57, !"nfs3_acl_counts", i1 false, i1 false}
!57 = !{!"../fs/nfs/nfs3xdr.c", i32 2582, i32 21}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/nfs/nfs3xdr.c", i32 213, i32 2}
!60 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @decode_inline_filename3._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @decode_inline_filename3._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/nfs/nfs3xdr.c", i32 660, i32 2}
!65 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @decode_fattr3._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @decode_fattr3._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/nfs/nfs3xdr.c", i32 663, i32 2}
!70 = !{ptr @decode_fattr3._entry.28, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @decode_fattr3._entry_ptr.30, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @nfs_type2fmt, !73, !"nfs_type2fmt", i1 false, i1 false}
!73 = !{!"../fs/nfs/nfs3xdr.c", i32 99, i32 22}
!74 = distinct !{null, !75, !"__already_done", i1 false, i1 false}
!75 = !{!"../fs/nfs/nfstrace.h", i32 1451, i32 1}
!76 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!77 = distinct !{null, !75, !"__warned", i1 false, i1 false}
!78 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!79 = distinct !{null, !80, !"__already_done", i1 false, i1 false}
!80 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!81 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!82 = distinct !{null, !83, !"__already_done", i1 false, i1 false}
!83 = !{!"../fs/nfs/nfs3xdr.c", i32 422, i32 2}
!84 = distinct !{null, !85, !"__already_done", i1 false, i1 false}
!85 = !{!"../fs/nfs/nfstrace.h", i32 1450, i32 1}
!86 = distinct !{null, !85, !"__warned", i1 false, i1 false}
!87 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/nfs/nfs3xdr.c", i32 2511, i32 2}
!89 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @nfs3_stat_to_errno._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @nfs3_stat_to_errno._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @nfs_errtbl, !93, !"nfs_errtbl", i1 false, i1 false}
!93 = !{!"../fs/nfs/nfs3xdr.c", i32 2459, i32 3}
!94 = distinct !{null, !95, !"__already_done", i1 false, i1 false}
!95 = !{!"../fs/nfs/nfs3xdr.c", i32 188, i32 2}
!96 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/nfs/nfs3xdr.c", i32 247, i32 2}
!98 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @decode_nfspath3._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @decode_nfspath3._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.39, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/nfs/nfs3xdr.c", i32 250, i32 2}
!103 = !{ptr @decode_nfspath3._entry.38, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @decode_nfspath3._entry_ptr.40, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.41, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/nfs/nfs3xdr.c", i32 1626, i32 2}
!107 = !{ptr @.str.42, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @decode_read3resok._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @decode_read3resok._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.44, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/nfs/nfs3xdr.c", i32 1630, i32 2}
!112 = !{ptr @decode_read3resok._entry.43, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @decode_read3resok._entry_ptr.45, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.46, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/nfs/nfs3xdr.c", i32 1706, i32 2}
!116 = !{ptr @.str.47, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @decode_write3resok._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @decode_write3resok._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.48, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/nfs/nfs3xdr.c", i32 2569, i32 13}
!121 = !{ptr @.str.49, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../fs/nfs/nfs3xdr.c", i32 2578, i32 13}
!123 = !{ptr @nfs3_acl_procedures, !124, !"nfs3_acl_procedures", i1 false, i1 false}
!124 = !{!"../fs/nfs/nfs3xdr.c", i32 2561, i32 34}
!125 = !{!"sp"}
!126 = !{i32 1, !"wchar_size", i32 2}
!127 = !{i32 1, !"min_enum_size", i32 4}
!128 = !{i32 8, !"branch-target-enforcement", i32 0}
!129 = !{i32 8, !"sign-return-address", i32 0}
!130 = !{i32 8, !"sign-return-address-all", i32 0}
!131 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!132 = !{i32 7, !"uwtable", i32 1}
!133 = !{i32 7, !"frame-pointer", i32 2}
!134 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!135 = !{!"branch_weights", i32 1, i32 2000}
!136 = !{!"branch_weights", i32 2000, i32 1}
!137 = !{!"branch_weights", i32 2002, i32 2000}
!138 = !{i64 2159064194, i64 2159064676, i64 2159064231, i64 2159064287, i64 2159064321, i64 2159064345, i64 2159064386, i64 2159064407, i64 2159064435, i64 2159064469}
!139 = !{i64 2159065671, i64 2159066153, i64 2159065708, i64 2159065764, i64 2159065798, i64 2159065822, i64 2159065863, i64 2159065884, i64 2159065912, i64 2159065946}
!140 = !{i64 2148905895, i64 2148905900, i64 2148905913, i64 2148905957, i64 2148905991, i64 2148906012}
!141 = !{i64 2158897581}
!142 = !{i64 2158897808}
!143 = !{i64 2150088123}
!144 = !{i64 2150089159}
!145 = !{i64 2158880719}
!146 = !{i64 2158880930}
!147 = !{i64 2159068019, i64 2159068501, i64 2159068056, i64 2159068112, i64 2159068146, i64 2159068170, i64 2159068211, i64 2159068232, i64 2159068260, i64 2159068294}
!148 = !{i64 2159069613, i64 2159070095, i64 2159069650, i64 2159069706, i64 2159069740, i64 2159069764, i64 2159069805, i64 2159069826, i64 2159069854, i64 2159069888}
