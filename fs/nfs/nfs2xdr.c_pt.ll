; ModuleID = '/llk/IR_all_yes/fs/nfs/nfs2xdr.c_pt.bc'
source_filename = "../fs/nfs/nfs2xdr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rpc_procinfo = type { i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.rpc_version = type { i32, i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.78 }
%struct.atomic_t = type { i32 }
%union.anon.78 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.anon.165 = type { i32, i32 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.10 }
%union.anon.10 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
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
%struct.nfs_entry = type { i64, i64, i64, ptr, i32, i32, ptr, ptr, i8, ptr }
%struct.nfs_fh = type { i16, [128 x i8] }
%struct.rpc_rqst = type { ptr, %struct.xdr_buf, %struct.xdr_buf, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.anon.155, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.xdr_buf, i32, i32, i32, i64, i32, i32, %struct.atomic_t, i32, i64, i32, %struct.list_head, i32, %struct.list_head }
%union.anon.155 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.kvec = type { ptr, i32 }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.130, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.130 = type { %struct.work_struct }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, ptr, %union.anon.132, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%union.anon.132 = type { %struct.work_struct }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.51 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.51 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.nfs_sattrargs = type { ptr, ptr }
%struct.nfs_diropargs = type { ptr, ptr, i32 }
%struct.nfs_diropok = type { ptr, ptr }
%struct.nfs_readlinkargs = type { ptr, i32, i32, ptr }
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
%struct.nfs_createargs = type { ptr, ptr, i32, ptr }
%struct.nfs_removeargs = type { %struct.nfs4_sequence_args, ptr, %struct.qstr }
%struct.qstr = type { %union.anon.5, ptr }
%union.anon.5 = type { i64 }
%struct.nfs_renameargs = type { %struct.nfs4_sequence_args, ptr, ptr, ptr, ptr }
%struct.nfs_linkargs = type { ptr, ptr, ptr, i32 }
%struct.nfs_symlinkargs = type { ptr, ptr, i32, ptr, i32, ptr }
%struct.nfs_readdirargs = type { ptr, i32, i32, ptr }
%struct.nfs2_fsstat = type { i32, i32, i32, i32, i32 }
%struct.nfs_fattr = type { i32, i16, i32, %struct.kuid_t, %struct.kgid_t, i32, i64, %union.anon.134, %struct.nfs_fsid, i64, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64, i64, %struct.timespec64, %struct.timespec64, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.134 = type { %struct.anon.136 }
%struct.anon.136 = type { i64 }
%struct.nfs_fsid = type { i64, i64 }
%struct.timespec64 = type { i64, i32 }
%struct.anon.135 = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GETATTR\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SETATTR\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LOOKUP\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"READLINK\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"READ\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WRITE\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CREATE\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"REMOVE\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RENAME\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LINK\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SYMLINK\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MKDIR\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RMDIR\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"READDIR\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"STATFS\00", [25 x i8] zeroinitializer }, align 32
@nfs_procedures = dso_local constant { [18 x %struct.rpc_procinfo], [128 x i8] } { [18 x %struct.rpc_procinfo] [%struct.rpc_procinfo zeroinitializer, %struct.rpc_procinfo { i32 1, ptr @nfs2_xdr_enc_fhandle, ptr @nfs2_xdr_dec_attrstat, i32 8, i32 18, i32 1, i32 1, ptr @.str }, %struct.rpc_procinfo { i32 2, ptr @nfs2_xdr_enc_sattrargs, ptr @nfs2_xdr_dec_attrstat, i32 16, i32 18, i32 0, i32 2, ptr @.str.1 }, %struct.rpc_procinfo zeroinitializer, %struct.rpc_procinfo { i32 4, ptr @nfs2_xdr_enc_diropargs, ptr @nfs2_xdr_dec_diropres, i32 72, i32 26, i32 2, i32 4, ptr @.str.2 }, %struct.rpc_procinfo { i32 5, ptr @nfs2_xdr_enc_readlinkargs, ptr @nfs2_xdr_dec_readlinkres, i32 8, i32 3, i32 3, i32 5, ptr @.str.3 }, %struct.rpc_procinfo { i32 6, ptr @nfs2_xdr_enc_readargs, ptr @nfs2_xdr_dec_readres, i32 11, i32 20, i32 3, i32 6, ptr @.str.4 }, %struct.rpc_procinfo zeroinitializer, %struct.rpc_procinfo { i32 8, ptr @nfs2_xdr_enc_writeargs, ptr @nfs2_xdr_dec_writeres, i32 12, i32 18, i32 4, i32 8, ptr @.str.5 }, %struct.rpc_procinfo { i32 9, ptr @nfs2_xdr_enc_createargs, ptr @nfs2_xdr_dec_diropres, i32 80, i32 26, i32 0, i32 9, ptr @.str.6 }, %struct.rpc_procinfo { i32 10, ptr @nfs2_xdr_enc_removeargs, ptr @nfs2_xdr_dec_stat, i32 72, i32 1, i32 0, i32 10, ptr @.str.7 }, %struct.rpc_procinfo { i32 11, ptr @nfs2_xdr_enc_renameargs, ptr @nfs2_xdr_dec_stat, i32 144, i32 1, i32 0, i32 11, ptr @.str.8 }, %struct.rpc_procinfo { i32 12, ptr @nfs2_xdr_enc_linkargs, ptr @nfs2_xdr_dec_stat, i32 80, i32 1, i32 0, i32 12, ptr @.str.9 }, %struct.rpc_procinfo { i32 13, ptr @nfs2_xdr_enc_symlinkargs, ptr @nfs2_xdr_dec_stat, i32 81, i32 1, i32 0, i32 13, ptr @.str.10 }, %struct.rpc_procinfo { i32 14, ptr @nfs2_xdr_enc_createargs, ptr @nfs2_xdr_dec_diropres, i32 80, i32 26, i32 0, i32 14, ptr @.str.11 }, %struct.rpc_procinfo { i32 15, ptr @nfs2_xdr_enc_diropargs, ptr @nfs2_xdr_dec_stat, i32 72, i32 1, i32 0, i32 15, ptr @.str.12 }, %struct.rpc_procinfo { i32 16, ptr @nfs2_xdr_enc_readdirargs, ptr @nfs2_xdr_dec_readdirres, i32 10, i32 2, i32 3, i32 16, ptr @.str.13 }, %struct.rpc_procinfo { i32 17, ptr @nfs2_xdr_enc_fhandle, ptr @nfs2_xdr_dec_statfsres, i32 8, i32 6, i32 0, i32 17, ptr @.str.14 }], [128 x i8] zeroinitializer }, align 32
@nfs_version2_counts = internal global { [18 x i32], [56 x i8] } zeroinitializer, align 32
@nfs_version2 = dso_local constant { %struct.rpc_version, [16 x i8] } { %struct.rpc_version { i32 2, i32 18, ptr @nfs_procedures, ptr @nfs_version2_counts }, [16 x i8] zeroinitializer }, align 32
@nfs_debug = external dso_local local_unnamed_addr global i32, align 4
@decode_filename_inline._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.17, i32 412, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"NFS: returned filename too long: %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"decode_filename_inline\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/nfs/nfs2xdr.c\00", [47 x i8] zeroinitializer }, align 32
@decode_filename_inline._entry_ptr = internal global ptr @decode_filename_inline._entry, section ".printk_index", align 4
@__tracepoint_nfs_xdr_status = external dso_local global %struct.tracepoint, align 4
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/nfs/nfstrace.h\00", [46 x i8] zeroinitializer }, align 32
@trace_nfs_xdr_status.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@decode_fattr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.17, i32 311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"NFS: returned invalid uid\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"decode_fattr\00", [19 x i8] zeroinitializer }, align 32
@decode_fattr._entry_ptr = internal global ptr @decode_fattr._entry, section ".printk_index", align 4
@decode_fattr._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.17, i32 314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"NFS: returned invalid gid\0A\00", [37 x i8] zeroinitializer }, align 32
@decode_fattr._entry_ptr.25 = internal global ptr @decode_fattr._entry.23, section ".printk_index", align 4
@nfs_errtbl = internal constant { [30 x %struct.anon.165], [48 x i8] } { [30 x %struct.anon.165] [%struct.anon.165 zeroinitializer, %struct.anon.165 { i32 1, i32 -1 }, %struct.anon.165 { i32 2, i32 -2 }, %struct.anon.165 { i32 5, i32 -5 }, %struct.anon.165 { i32 6, i32 -6 }, %struct.anon.165 { i32 13, i32 -13 }, %struct.anon.165 { i32 17, i32 -17 }, %struct.anon.165 { i32 18, i32 -18 }, %struct.anon.165 { i32 19, i32 -19 }, %struct.anon.165 { i32 20, i32 -20 }, %struct.anon.165 { i32 21, i32 -21 }, %struct.anon.165 { i32 22, i32 -22 }, %struct.anon.165 { i32 27, i32 -27 }, %struct.anon.165 { i32 28, i32 -28 }, %struct.anon.165 { i32 30, i32 -30 }, %struct.anon.165 { i32 31, i32 -31 }, %struct.anon.165 { i32 63, i32 -36 }, %struct.anon.165 { i32 66, i32 -39 }, %struct.anon.165 { i32 69, i32 -122 }, %struct.anon.165 { i32 70, i32 -116 }, %struct.anon.165 { i32 71, i32 -66 }, %struct.anon.165 { i32 10001, i32 -521 }, %struct.anon.165 { i32 10002, i32 -522 }, %struct.anon.165 { i32 10003, i32 -523 }, %struct.anon.165 { i32 10004, i32 -524 }, %struct.anon.165 { i32 10005, i32 -525 }, %struct.anon.165 { i32 10006, i32 -121 }, %struct.anon.165 { i32 10007, i32 -527 }, %struct.anon.165 { i32 10008, i32 -528 }, %struct.anon.165 { i32 -1, i32 -5 }], [48 x i8] zeroinitializer }, align 32
@nfs_stat_to_errno._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.17, i32 1118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"NFS: Unrecognized nfs status value: %u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nfs_stat_to_errno\00", [46 x i8] zeroinitializer }, align 32
@nfs_stat_to_errno._entry_ptr = internal global ptr @nfs_stat_to_errno._entry, section ".printk_index", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@encode_filename.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@decode_path._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.17, i32 447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"NFS: returned pathname too long: %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"decode_path\00", [20 x i8] zeroinitializer }, align 32
@decode_path._entry_ptr = internal global ptr @decode_path._entry, section ".printk_index", align 4
@decode_path._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.17, i32 451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"NFS: server cheating in pathname result: length %u > received %u\0A\00", [62 x i8] zeroinitializer }, align 32
@decode_path._entry_ptr.32 = internal global ptr @decode_path._entry.30, section ".printk_index", align 4
@decode_nfsdata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.17, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"NFS: server cheating in read result: count %u > recvd %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"decode_nfsdata\00", [17 x i8] zeroinitializer }, align 32
@decode_nfsdata._entry_ptr = internal global ptr @decode_nfsdata._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [31 x i64] [i64 29, i64 32, i64 0, i64 1, i64 2, i64 5, i64 6, i64 13, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 27, i64 28, i64 30, i64 31, i64 63, i64 66, i64 69, i64 70, i64 71, i64 10001, i64 10002, i64 10003, i64 10004, i64 10005, i64 10006, i64 10007, i64 10008]
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1134, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1135, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1136, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1137, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1138, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1139, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1140, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1141, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1142, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1143, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1144, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1145, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1146, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1147, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1148, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [15 x i8] c"nfs_procedures\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1133, i32 27 }
@___asan_gen_.83 = private unnamed_addr constant [20 x i8] c"nfs_version2_counts\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1151, i32 21 }
@___asan_gen_.86 = private unnamed_addr constant [13 x i8] c"nfs_version2\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1152, i32 26 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 412, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [21 x i8] c"../fs/nfs/nfstrace.h\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 1450, i32 1 }
@___asan_gen_.108 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 108, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 311, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 314, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [11 x i8] c"nfs_errtbl\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1066, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1118, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 447, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 450, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.159 = private constant [20 x i8] c"../fs/nfs/nfs2xdr.c\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 114, i32 2 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @decode_fattr._entry, ptr @decode_fattr._entry.23, ptr @decode_fattr._entry_ptr, ptr @decode_fattr._entry_ptr.25, ptr @decode_filename_inline._entry, ptr @decode_filename_inline._entry_ptr, ptr @decode_nfsdata._entry, ptr @decode_nfsdata._entry_ptr, ptr @decode_path._entry, ptr @decode_path._entry.30, ptr @decode_path._entry_ptr, ptr @decode_path._entry_ptr.32, ptr @nfs_stat_to_errno._entry, ptr @nfs_stat_to_errno._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @nfs_procedures, ptr @nfs_version2_counts, ptr @nfs_version2, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @nfs_errtbl, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_procedures to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_version2_counts to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_version2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_filename_inline._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_fattr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_fattr._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_errtbl to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_stat_to_errno._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_path._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_path._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_nfsdata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs2_decode_dirent(ptr noundef %xdr, ptr nocapture noundef %entry1, i1 noundef zeroext %plus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !92

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %call6 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #5
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %cmp, label %if.then5, label %if.end22

if.then5:                                         ; preds = %if.end
  br i1 %tobool7.not, label %if.then5.cleanup_crit_edge, label %if.end17, !prof !92

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17:                                         ; preds = %if.then5
  %2 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp19 = icmp eq i32 %3, 0
  br i1 %cmp19, label %if.end17.cleanup_crit_edge, label %if.end21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %eof = getelementptr inbounds %struct.nfs_entry, ptr %entry1, i32 0, i32 5
  %4 = ptrtoint ptr %eof to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %eof, align 8
  br label %cleanup

if.end22:                                         ; preds = %if.end
  br i1 %tobool7.not, label %if.end22.cleanup_crit_edge, label %if.end34, !prof !92

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end34:                                         ; preds = %if.end22
  %5 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call6, align 4
  %conv = zext i32 %6 to i64
  %7 = ptrtoint ptr %entry1 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv, ptr %entry1, align 8
  %name = getelementptr inbounds %struct.nfs_entry, ptr %entry1, i32 0, i32 3
  %len = getelementptr inbounds %struct.nfs_entry, ptr %entry1, i32 0, i32 4
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end34.cleanup_crit_edge, label %if.end.i, !prof !92

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end34
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %9)
  %cmp.i = icmp ugt i32 %9, 255
  br i1 %cmp.i, label %do.body.i, label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i
  %call7.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %9) #5
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %if.end6.i.cleanup_crit_edge, label %if.end45, !prof !92

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %10 = load i32, ptr @nfs_debug, align 4
  %and.i = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool19.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool19.not.i, label %do.body.i.cleanup_crit_edge, label %do.end.i, !prof !93

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %9) #8
  br label %cleanup

if.end45:                                         ; preds = %if.end6.i
  %11 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i, ptr %name, align 4
  %12 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %len, align 4
  %cookie = getelementptr inbounds %struct.nfs_entry, ptr %entry1, i32 0, i32 1
  %13 = ptrtoint ptr %cookie to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %cookie, align 8
  %prev_cookie = getelementptr inbounds %struct.nfs_entry, ptr %entry1, i32 0, i32 2
  %15 = ptrtoint ptr %prev_cookie to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %prev_cookie, align 8
  %call46 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #5
  %tobool47.not = icmp eq ptr %call46, null
  br i1 %tobool47.not, label %if.end45.cleanup_crit_edge, label %if.end57, !prof !92

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end57:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %call46 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call46, align 4
  %conv59 = zext i32 %17 to i64
  %18 = ptrtoint ptr %cookie to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv59, ptr %cookie, align 8
  %d_type = getelementptr inbounds %struct.nfs_entry, ptr %entry1, i32 0, i32 8
  %19 = ptrtoint ptr %d_type to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %d_type, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.end45.cleanup_crit_edge, %do.end.i, %do.body.i.cleanup_crit_edge, %if.end6.i.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end21, %if.end17.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -523, %if.end21 ], [ 0, %if.end57 ], [ -11, %entry.cleanup_crit_edge ], [ -11, %if.then5.cleanup_crit_edge ], [ -11, %if.end17.cleanup_crit_edge ], [ -11, %if.end22.cleanup_crit_edge ], [ -11, %if.end45.cleanup_crit_edge ], [ -36, %do.body.i.cleanup_crit_edge ], [ -36, %do.end.i ], [ -5, %if.end6.i.cleanup_crit_edge ], [ -5, %if.end34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_inline_decode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs2_xdr_enc_fhandle(ptr nocapture noundef readnone %req, ptr noundef %xdr, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 32) #5
  %data.i = getelementptr inbounds %struct.nfs_fh, ptr %data, i32 0, i32 1
  %0 = call ptr @memcpy(ptr %call.i, ptr %data.i, i32 32)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs2_xdr_dec_attrstat(ptr nocapture noundef readonly %req, ptr noundef %xdr, ptr nocapture noundef %result) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_task.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %rq_task.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_task.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.rpc_rqst_userns.exit_crit_edge, label %if.then.i

entry.rpc_rqst_userns.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rpc_rqst_userns.exit

if.then.i:                                        ; preds = %entry
  %tk_client.i = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %tk_client.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tk_client.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.then.i.rpc_rqst_userns.exit_crit_edge, label %land.lhs.true.i.i

if.then.i.rpc_rqst_userns.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rpc_rqst_userns.exit

land.lhs.true.i.i:                                ; preds = %if.then.i
  %cl_cred.i.i = getelementptr inbounds %struct.rpc_clnt, ptr %3, i32 0, i32 29
  %4 = ptrtoint ptr %cl_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cl_cred.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rpc_rqst_userns.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %user_ns.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns.i.i, align 4
  br label %rpc_rqst_userns.exit

rpc_rqst_userns.exit:                             ; preds = %if.then.i.i, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, %if.then.i.rpc_rqst_userns.exit_crit_edge, %entry.rpc_rqst_userns.exit_crit_edge
  %retval.0.i = phi ptr [ @init_user_ns, %entry.rpc_rqst_userns.exit_crit_edge ], [ %7, %if.then.i.i ], [ @init_user_ns, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge ], [ @init_user_ns, %if.then.i.rpc_rqst_userns.exit_crit_edge ]
  %call.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #5
  %tobool.not.i.i2 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i2, label %rpc_rqst_userns.exit.decode_attrstat.exit_crit_edge, label %if.end.i.i, !prof !92

rpc_rqst_userns.exit.decode_attrstat.exit_crit_edge: ; preds = %rpc_rqst_userns.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %decode_attrstat.exit

if.end.i.i:                                       ; preds = %rpc_rqst_userns.exit
  %8 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i.i, label %if.end7.i, label %out_default.i, !prof !93

if.end7.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call8.i = tail call fastcc i32 @decode_fattr(ptr noundef %xdr, ptr noundef %result, ptr noundef %retval.0.i) #5
  br label %decode_attrstat.exit

out_default.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @trace_nfs_xdr_status(ptr noundef %xdr, i32 noundef %9) #5
  %call9.i = tail call fastcc i32 @nfs_stat_to_errno(i32 noundef %9) #5
  br label %decode_attrstat.exit

decode_attrstat.exit:                             ; preds = %out_default.i, %if.end7.i, %rpc_rqst_userns.exit.decode_attrstat.exit_crit_edge
  %retval.0.i3 = phi i32 [ %call9.i, %out_default.i ], [ %call8.i, %if.end7.i ], [ -5, %rpc_rqst_userns.exit.decode_attrstat.exit_crit_edge ]
  ret i32 %retval.0.i3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs2_xdr_enc_sattrargs(ptr nocapture noundef readonly %req, ptr noundef %xdr, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 32) #5
  %data.i = getelementptr inbounds %struct.nfs_fh, ptr %1, i32 0, i32 1
  %2 = call ptr @memcpy(ptr %call.i, ptr %data.i, i32 32)
  %sattr = getelementptr inbounds %struct.nfs_sattrargs, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %sattr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sattr, align 4
  %rq_task.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 3
  %5 = ptrtoint ptr %rq_task.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rq_task.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %entry.rpc_rqst_userns.exit_crit_edge, label %if.then.i

entry.rpc_rqst_userns.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rpc_rqst_userns.exit

if.then.i:                                        ; preds = %entry
  %tk_client.i = getelementptr inbounds %struct.rpc_task, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %tk_client.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tk_client.i, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.then.i.rpc_rqst_userns.exit_crit_edge, label %land.lhs.true.i.i

if.then.i.rpc_rqst_userns.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rpc_rqst_userns.exit

land.lhs.true.i.i:                                ; preds = %if.then.i
  %cl_cred.i.i = getelementptr inbounds %struct.rpc_clnt, ptr %8, i32 0, i32 29
  %9 = ptrtoint ptr %cl_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cl_cred.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %10, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rpc_rqst_userns.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %user_ns.i.i = getelementptr inbounds %struct.cred, ptr %10, i32 0, i32 25
  %11 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %user_ns.i.i, align 4
  br label %rpc_rqst_userns.exit

rpc_rqst_userns.exit:                             ; preds = %if.then.i.i, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, %if.then.i.rpc_rqst_userns.exit_crit_edge, %entry.rpc_rqst_userns.exit_crit_edge
  %retval.0.i = phi ptr [ @init_user_ns, %entry.rpc_rqst_userns.exit_crit_edge ], [ %12, %if.then.i.i ], [ @init_user_ns, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge ], [ @init_user_ns, %if.then.i.rpc_rqst_userns.exit_crit_edge ]
  tail call fastcc void @encode_sattr(ptr noundef %xdr, ptr noundef %4, ptr noundef %retval.0.i)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs2_xdr_enc_diropargs(ptr nocapture noundef readnone %req, ptr noundef %xdr, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %name = getelementptr inbounds %struct.nfs_diropargs, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %len = getelementptr inbounds %struct.nfs_diropargs, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %call.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 32) #5
  %data.i.i = getelementptr inbounds %struct.nfs_fh, ptr %1, i32 0, i32 1
  %6 = call ptr @memcpy(ptr %call.i.i, ptr %data.i.i, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %5)
  %cmp.i.i = icmp ugt i32 %5, 255
  br i1 %cmp.i.i, label %land.rhs.i.i, label %entry.encode_diropargs.exit_crit_edge

entry.encode_diropargs.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %encode_diropargs.exit

land.rhs.i.i:                                     ; preds = %entry
  %.b40.i.i = load i1, ptr @encode_filename.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs.i.i.encode_diropargs.exit_crit_edge, label %if.then.i.i, !prof !93

land.rhs.i.i.encode_diropargs.exit_crit_edge:     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %encode_diropargs.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @encode_filename.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 388, i32 noundef 9, ptr noundef null) #5
  br label %encode_diropargs.exit

encode_diropargs.exit:                            ; preds = %if.then.i.i, %land.rhs.i.i.encode_diropargs.exit_crit_edge, %entry.encode_diropargs.exit_crit_edge
  %add.i.i = add i32 %5, 4
  %call.i2.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i.i) #5
  %call35.i.i = tail call ptr @xdr_encode_opaque(ptr noundef %call.i2.i, ptr noundef %3, i32 noundef %5) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs2_xdr_dec_diropres(ptr nocapture noundef readonly %req, ptr noundef %xdr, ptr nocapture noundef readonly %result) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_task.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %rq_task.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_task.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.rpc_rqst_userns.exit_crit_edge, label %if.then.i

entry.rpc_rqst_userns.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rpc_rqst_userns.exit

if.then.i:                                        ; preds = %entry
  %tk_client.i = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %tk_client.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tk_client.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.then.i.rpc_rqst_userns.exit_crit_edge, label %land.lhs.true.i.i

if.then.i.rpc_rqst_userns.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rpc_rqst_userns.exit

land.lhs.true.i.i:                                ; preds = %if.then.i
  %cl_cred.i.i = getelementptr inbounds %struct.rpc_clnt, ptr %3, i32 0, i32 29
  %4 = ptrtoint ptr %cl_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cl_cred.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rpc_rqst_userns.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %user_ns.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns.i.i, align 4
  br label %rpc_rqst_userns.exit

rpc_rqst_userns.exit:                             ; preds = %if.then.i.i, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, %if.then.i.rpc_rqst_userns.exit_crit_edge, %entry.rpc_rqst_userns.exit_crit_edge
  %retval.0.i = phi ptr [ @init_user_ns, %entry.rpc_rqst_userns.exit_crit_edge ], [ %7, %if.then.i.i ], [ @init_user_ns, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge ], [ @init_user_ns, %if.then.i.rpc_rqst_userns.exit_crit_edge ]
  %call.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #5
  %tobool.not.i.i2 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i2, label %rpc_rqst_userns.exit.decode_diropres.exit_crit_edge, label %if.end.i.i, !prof !92

rpc_rqst_userns.exit.decode_diropres.exit_crit_edge: ; preds = %rpc_rqst_userns.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %decode_diropres.exit

if.end.i.i:                                       ; preds = %rpc_rqst_userns.exit
  %8 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i.i, label %if.end4.i, label %out_default.i, !prof !93

if.end4.i:                                        ; preds = %if.end.i.i
  %10 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %result, align 4
  %call.i.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 32) #5
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end4.i.decode_diropres.exit_crit_edge, label %if.end.i10.i, !prof !92

if.end4.i.decode_diropres.exit_crit_edge:         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %decode_diropres.exit

if.end.i10.i:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 32, ptr %11, align 2
  %data.i.i.i = getelementptr inbounds %struct.nfs_fh, ptr %11, i32 0, i32 1
  %13 = call ptr @memcpy(ptr %data.i.i.i, ptr %call.i.i.i, i32 32)
  %fattr.i.i = getelementptr inbounds %struct.nfs_diropok, ptr %result, i32 0, i32 1
  %14 = ptrtoint ptr %fattr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fattr.i.i, align 4
  %call3.i.i = tail call fastcc i32 @decode_fattr(ptr noundef %xdr, ptr noundef %15, ptr noundef %retval.0.i) #5
  br label %decode_diropres.exit

out_default.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @trace_nfs_xdr_status(ptr noundef %xdr, i32 noundef %9) #5
  %call6.i = tail call fastcc i32 @nfs_stat_to_errno(i32 noundef %9) #5
  br label %decode_diropres.exit

decode_diropres.exit:                             ; preds = %out_default.i, %if.end.i10.i, %if.end4.i.decode_diropres.exit_crit_edge, %rpc_rqst_userns.exit.decode_diropres.exit_crit_edge
  %retval.0.i3 = phi i32 [ %call6.i, %out_default.i ], [ -5, %rpc_rqst_userns.exit.decode_diropres.exit_crit_edge ], [ %call3.i.i, %if.end.i10.i ], [ -5, %if.end4.i.decode_diropres.exit_crit_edge ]
  ret i32 %retval.0.i3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs2_xdr_enc_readlinkargs(ptr noundef %req, ptr noundef %xdr, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 32) #5
  %data.i = getelementptr inbounds %struct.nfs_fh, ptr %1, i32 0, i32 1
  %2 = call ptr @memcpy(ptr %call.i, ptr %data.i, i32 32)
  %pages = getelementptr inbounds %struct.nfs_readlinkargs, ptr %data, i32 0, i32 3
  %3 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pages, align 4
  %pgbase = getelementptr inbounds %struct.nfs_readlinkargs, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %pgbase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pgbase, align 4
  %pglen = getelementptr inbounds %struct.nfs_readlinkargs, ptr %data, i32 0, i32 2
  %7 = ptrtoint ptr %pglen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pglen, align 4
  tail call void @rpc_prepare_reply_pages(ptr noundef %req, ptr noundef %4, i32 noundef %6, i32 noundef %8, i32 noundef 2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs2_xdr_dec_readlinkres(ptr nocapture noundef readnone %req, ptr noundef %xdr, ptr nocapture noundef readnone %__unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !92

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 0
  br i1 %cmp.not.i, label %if.end4, label %out_default, !prof !93

if.end4:                                          ; preds = %if.end.i
  %call.i10 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #5
  %tobool.not.i11 = icmp eq ptr %call.i10, null
  br i1 %tobool.not.i11, label %if.end4.cleanup_crit_edge, label %if.end.i13, !prof !92

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i13:                                       ; preds = %if.end4
  %2 = ptrtoint ptr %call.i10 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call.i10, align 4
  %buf.i = getelementptr inbounds %struct.xdr_stream, ptr %xdr, i32 0, i32 1
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buf.i, align 4
  %page_len.i = getelementptr inbounds %struct.xdr_buf, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %page_len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %page_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %7)
  %cmp.not.i12 = icmp uge i32 %3, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %3)
  %cmp5.i = icmp ugt i32 %3, 1024
  %spec.select.i = or i1 %cmp5.i, %cmp.not.i12
  br i1 %spec.select.i, label %do.body.i, label %if.end13.i, !prof !92

if.end13.i:                                       ; preds = %if.end.i13
  %call14.i = tail call i32 @xdr_read_pages(ptr noundef %xdr, i32 noundef %3) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %call14.i)
  %cmp15.i = icmp ugt i32 %3, %call14.i
  br i1 %cmp15.i, label %do.body38.i, label %if.end23.i, !prof !92

if.end23.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buf.i, align 4
  tail call void @xdr_terminate_string(ptr noundef %9, i32 noundef %3) #5
  br label %cleanup

do.body.i:                                        ; preds = %if.end.i13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %10 = load i32, ptr @nfs_debug, align 4
  %and.i = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool25.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool25.not.i, label %do.body.i.cleanup_crit_edge, label %do.end.i, !prof !93

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %call34.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %3) #8
  br label %cleanup

do.body38.i:                                      ; preds = %if.end13.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %11 = load i32, ptr @nfs_debug, align 4
  %and39.i = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  br i1 %tobool40.not.i, label %do.body38.i.cleanup_crit_edge, label %do.end50.i, !prof !93

do.body38.i.cleanup_crit_edge:                    ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end50.i:                                       ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #7
  %call52.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %3, i32 noundef %call14.i) #8
  br label %cleanup

out_default:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @trace_nfs_xdr_status(ptr noundef %xdr, i32 noundef %1) #5
  %call6 = tail call fastcc i32 @nfs_stat_to_errno(i32 noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %out_default, %do.end50.i, %do.body38.i.cleanup_crit_edge, %do.end.i, %do.body.i.cleanup_crit_edge, %if.end23.i, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %out_default ], [ -5, %entry.cleanup_crit_edge ], [ 0, %if.end23.i ], [ -5, %if.end4.cleanup_crit_edge ], [ -36, %do.end.i ], [ -36, %do.body.i.cleanup_crit_edge ], [ -5, %do.end50.i ], [ -5, %do.body38.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs2_xdr_enc_readargs(ptr noundef %req, ptr noundef %xdr, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %offset1.i = getelementptr inbounds %struct.nfs_pgio_args, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %offset1.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %offset1.i, align 8
  %conv.i = trunc i64 %1 to i32
  %count2.i = getelementptr inbounds %struct.nfs_pgio_args, ptr %data, i32 0, i32 6
  %2 = ptrtoint ptr %count2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count2.i, align 8
  %fh.i = getelementptr inbounds %struct.nfs_pgio_args, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %fh.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fh.i, align 8
  %call.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 32) #5
  %data.i.i = getelementptr inbounds %struct.nfs_fh, ptr %5, i32 0, i32 1
  %6 = call ptr @memcpy(ptr %call.i.i, ptr %data.i.i, i32 32)
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 12) #5
  %incdec.ptr.i = getelementptr i32, ptr %call.i, i32 1
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv.i, ptr %call.i, align 4
  %incdec.ptr3.i = getelementptr i32, ptr %call.i, i32 2
  %8 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %3, ptr %incdec.ptr.i, align 4
  %9 = ptrtoint ptr %incdec.ptr3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %3, ptr %incdec.ptr3.i, align 4
  %pages = getelementptr inbounds %struct.nfs_pgio_args, ptr %data, i32 0, i32 8
  %10 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pages, align 8
  %pgbase = getelementptr inbounds %struct.nfs_pgio_args, ptr %data, i32 0, i32 7
  %12 = ptrtoint ptr %pgbase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pgbase, align 4
  %14 = ptrtoint ptr %count2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count2.i, align 8
  tail call void @rpc_prepare_reply_pages(ptr noundef %req, ptr noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef 19) #5
  %flags = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 2, i32 6
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 8
  %or = or i32 %17, 1
  store i32 %or, ptr %flags, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs2_xdr_dec_readres(ptr nocapture noundef readonly %req, ptr noundef %xdr, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !92

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 0
  br i1 %cmp.not.i, label %if.end4, label %out_default, !prof !93

if.end4:                                          ; preds = %if.end.i
  %op_status37 = getelementptr inbounds %struct.nfs_pgio_res, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %op_status37 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %op_status37, align 8
  %fattr = getelementptr inbounds %struct.nfs_pgio_res, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fattr, align 8
  %rq_task.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 3
  %5 = ptrtoint ptr %rq_task.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rq_task.i, align 4
  %tobool.not.i26 = icmp eq ptr %6, null
  br i1 %tobool.not.i26, label %if.end4.rpc_rqst_userns.exit_crit_edge, label %if.then.i

if.end4.rpc_rqst_userns.exit_crit_edge:           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %rpc_rqst_userns.exit

if.then.i:                                        ; preds = %if.end4
  %tk_client.i = getelementptr inbounds %struct.rpc_task, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %tk_client.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tk_client.i, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.then.i.rpc_rqst_userns.exit_crit_edge, label %land.lhs.true.i.i

if.then.i.rpc_rqst_userns.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rpc_rqst_userns.exit

land.lhs.true.i.i:                                ; preds = %if.then.i
  %cl_cred.i.i = getelementptr inbounds %struct.rpc_clnt, ptr %8, i32 0, i32 29
  %9 = ptrtoint ptr %cl_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cl_cred.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %10, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rpc_rqst_userns.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %user_ns.i.i = getelementptr inbounds %struct.cred, ptr %10, i32 0, i32 25
  %11 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %user_ns.i.i, align 4
  br label %rpc_rqst_userns.exit

rpc_rqst_userns.exit:                             ; preds = %if.then.i.i, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, %if.then.i.rpc_rqst_userns.exit_crit_edge, %if.end4.rpc_rqst_userns.exit_crit_edge
  %retval.0.i27 = phi ptr [ @init_user_ns, %if.end4.rpc_rqst_userns.exit_crit_edge ], [ %12, %if.then.i.i ], [ @init_user_ns, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge ], [ @init_user_ns, %if.then.i.rpc_rqst_userns.exit_crit_edge ]
  %call6 = tail call fastcc i32 @decode_fattr(ptr noundef %xdr, ptr noundef %4, ptr noundef %retval.0.i27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end15, label %rpc_rqst_userns.exit.cleanup_crit_edge, !prof !93

rpc_rqst_userns.exit.cleanup_crit_edge:           ; preds = %rpc_rqst_userns.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %rpc_rqst_userns.exit
  %call.i28 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #5
  %tobool.not.i29 = icmp eq ptr %call.i28, null
  br i1 %tobool.not.i29, label %if.end15.cleanup_crit_edge, label %if.end.i30, !prof !92

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i30:                                       ; preds = %if.end15
  %13 = ptrtoint ptr %call.i28 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call.i28, align 4
  %call5.i = tail call i32 @xdr_read_pages(ptr noundef %xdr, i32 noundef %14) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %call5.i)
  %cmp.i = icmp ugt i32 %14, %call5.i
  br i1 %cmp.i, label %do.body.i, label %if.end.i30.out.i_crit_edge, !prof !92

if.end.i30.out.i_crit_edge:                       ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.i

out.i:                                            ; preds = %do.end.i, %do.body.i.out.i_crit_edge, %if.end.i30.out.i_crit_edge
  %count.0.i = phi i32 [ %14, %if.end.i30.out.i_crit_edge ], [ %call5.i, %do.end.i ], [ %call5.i, %do.body.i.out.i_crit_edge ]
  %eof.i = getelementptr inbounds %struct.nfs_pgio_res, ptr %data, i32 0, i32 4, i32 0, i32 1
  %15 = ptrtoint ptr %eof.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %eof.i, align 4
  %conv.i = zext i32 %count.0.i to i64
  %count14.i = getelementptr inbounds %struct.nfs_pgio_res, ptr %data, i32 0, i32 2
  %16 = ptrtoint ptr %count14.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv.i, ptr %count14.i, align 8
  br label %cleanup

do.body.i:                                        ; preds = %if.end.i30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %17 = load i32, ptr @nfs_debug, align 4
  %and.i = and i32 %17, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool15.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool15.not.i, label %do.body.i.out.i_crit_edge, label %do.end.i, !prof !93

do.body.i.out.i_crit_edge:                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %14, i32 noundef %call5.i) #8
  br label %out.i

out_default:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @trace_nfs_xdr_status(ptr noundef %xdr, i32 noundef %1) #5
  %op_status = getelementptr inbounds %struct.nfs_pgio_res, ptr %data, i32 0, i32 3
  %18 = ptrtoint ptr %op_status to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %1, ptr %op_status, align 8
  %call17 = tail call fastcc i32 @nfs_stat_to_errno(i32 noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %out_default, %out.i, %if.end15.cleanup_crit_edge, %rpc_rqst_userns.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %out_default ], [ %call6, %rpc_rqst_userns.exit.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ], [ %count.0.i, %out.i ], [ -5, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs2_xdr_enc_writeargs(ptr nocapture noundef readnone %req, ptr noundef %xdr, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %offset1.i = getelementptr inbounds %struct.nfs_pgio_args, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %offset1.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %offset1.i, align 8
  %conv.i = trunc i64 %1 to i32
  %count2.i = getelementptr inbounds %struct.nfs_pgio_args, ptr %data, i32 0, i32 6
  %2 = ptrtoint ptr %count2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count2.i, align 8
  %fh.i = getelementptr inbounds %struct.nfs_pgio_args, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %fh.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fh.i, align 8
  %call.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 32) #5
  %data.i.i = getelementptr inbounds %struct.nfs_fh, ptr %5, i32 0, i32 1
  %6 = call ptr @memcpy(ptr %call.i.i, ptr %data.i.i, i32 32)
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 16) #5
  %incdec.ptr.i = getelementptr i32, ptr %call.i, i32 1
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv.i, ptr %call.i, align 4
  %incdec.ptr3.i = getelementptr i32, ptr %call.i, i32 2
  %8 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv.i, ptr %incdec.ptr.i, align 4
  %incdec.ptr4.i = getelementptr i32, ptr %call.i, i32 3
  %9 = ptrtoint ptr %incdec.ptr3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %3, ptr %incdec.ptr3.i, align 4
  %10 = ptrtoint ptr %incdec.ptr4.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %3, ptr %incdec.ptr4.i, align 4
  %pages.i = getelementptr inbounds %struct.nfs_pgio_args, ptr %data, i32 0, i32 8
  %11 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pages.i, align 8
  %pgbase.i = getelementptr inbounds %struct.nfs_pgio_args, ptr %data, i32 0, i32 7
  %13 = ptrtoint ptr %pgbase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pgbase.i, align 4
  tail call void @xdr_write_pages(ptr noundef %xdr, ptr noundef %12, i32 noundef %14, i32 noundef %3) #5
  %buf = getelementptr inbounds %struct.xdr_stream, ptr %xdr, i32 0, i32 1
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buf, align 4
  %flags = getelementptr inbounds %struct.xdr_buf, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 4
  %or = or i32 %18, 2
  store i32 %or, ptr %flags, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs2_xdr_dec_writeres(ptr nocapture noundef readonly %req, ptr noundef %xdr, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.nfs_pgio_res, ptr %data, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %committed = getelementptr inbounds %struct.nfs_writeverf, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %committed to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %committed, align 4
  %fattr = getelementptr inbounds %struct.nfs_pgio_res, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fattr, align 8
  %op_status = getelementptr inbounds %struct.nfs_pgio_res, ptr %data, i32 0, i32 3
  %rq_task.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 3
  %6 = ptrtoint ptr %rq_task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rq_task.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.rpc_rqst_userns.exit_crit_edge, label %if.then.i

entry.rpc_rqst_userns.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rpc_rqst_userns.exit

if.then.i:                                        ; preds = %entry
  %tk_client.i = getelementptr inbounds %struct.rpc_task, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %tk_client.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tk_client.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.then.i.rpc_rqst_userns.exit_crit_edge, label %land.lhs.true.i.i

if.then.i.rpc_rqst_userns.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rpc_rqst_userns.exit

land.lhs.true.i.i:                                ; preds = %if.then.i
  %cl_cred.i.i = getelementptr inbounds %struct.rpc_clnt, ptr %9, i32 0, i32 29
  %10 = ptrtoint ptr %cl_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cl_cred.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rpc_rqst_userns.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %user_ns.i.i = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 25
  %12 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %user_ns.i.i, align 4
  br label %rpc_rqst_userns.exit

rpc_rqst_userns.exit:                             ; preds = %if.then.i.i, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, %if.then.i.rpc_rqst_userns.exit_crit_edge, %entry.rpc_rqst_userns.exit_crit_edge
  %retval.0.i = phi ptr [ @init_user_ns, %entry.rpc_rqst_userns.exit_crit_edge ], [ %13, %if.then.i.i ], [ @init_user_ns, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge ], [ @init_user_ns, %if.then.i.rpc_rqst_userns.exit_crit_edge ]
  %call.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #5
  %tobool.not.i.i4 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i4, label %rpc_rqst_userns.exit.decode_attrstat.exit_crit_edge, label %if.end.i.i, !prof !92

rpc_rqst_userns.exit.decode_attrstat.exit_crit_edge: ; preds = %rpc_rqst_userns.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %decode_attrstat.exit

if.end.i.i:                                       ; preds = %rpc_rqst_userns.exit
  %14 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not.i.i = icmp eq i32 %15, 0
  br i1 %cmp.not.i.i, label %if.end.i.i.if.end.i_crit_edge, label %out_status.i.i, !prof !93

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

out_status.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @trace_nfs_xdr_status(ptr noundef %xdr, i32 noundef %15) #5
  br label %if.end.i

if.end.i:                                         ; preds = %out_status.i.i, %if.end.i.i.if.end.i_crit_edge
  %tobool3.not.i = icmp eq ptr %op_status, null
  br i1 %tobool3.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then4.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %op_status to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %op_status, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %if.end.i.if.end5.i_crit_edge
  br i1 %cmp.not.i.i, label %if.end7.i, label %out_default.i

if.end7.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  %call8.i = tail call fastcc i32 @decode_fattr(ptr noundef %xdr, ptr noundef %5, ptr noundef %retval.0.i) #5
  br label %decode_attrstat.exit

out_default.i:                                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  %call9.i = tail call fastcc i32 @nfs_stat_to_errno(i32 noundef %15) #5
  br label %decode_attrstat.exit

decode_attrstat.exit:                             ; preds = %out_default.i, %if.end7.i, %rpc_rqst_userns.exit.decode_attrstat.exit_crit_edge
  %retval.0.i5 = phi i32 [ %call9.i, %out_default.i ], [ %call8.i, %if.end7.i ], [ -5, %rpc_rqst_userns.exit.decode_attrstat.exit_crit_edge ]
  ret i32 %retval.0.i5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs2_xdr_enc_createargs(ptr nocapture noundef readonly %req, ptr noundef %xdr, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %name = getelementptr inbounds %struct.nfs_createargs, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %len = getelementptr inbounds %struct.nfs_createargs, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %call.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 32) #5
  %data.i.i = getelementptr inbounds %struct.nfs_fh, ptr %1, i32 0, i32 1
  %6 = call ptr @memcpy(ptr %call.i.i, ptr %data.i.i, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %5)
  %cmp.i.i = icmp ugt i32 %5, 255
  br i1 %cmp.i.i, label %land.rhs.i.i, label %entry.encode_diropargs.exit_crit_edge

entry.encode_diropargs.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %encode_diropargs.exit

land.rhs.i.i:                                     ; preds = %entry
  %.b40.i.i = load i1, ptr @encode_filename.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs.i.i.encode_diropargs.exit_crit_edge, label %if.then.i.i, !prof !93

land.rhs.i.i.encode_diropargs.exit_crit_edge:     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %encode_diropargs.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @encode_filename.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 388, i32 noundef 9, ptr noundef null) #5
  br label %encode_diropargs.exit

encode_diropargs.exit:                            ; preds = %if.then.i.i, %land.rhs.i.i.encode_diropargs.exit_crit_edge, %entry.encode_diropargs.exit_crit_edge
  %add.i.i = add i32 %5, 4
  %call.i2.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i.i) #5
  %call35.i.i = tail call ptr @xdr_encode_opaque(ptr noundef %call.i2.i, ptr noundef %3, i32 noundef %5) #5
  %sattr = getelementptr inbounds %struct.nfs_createargs, ptr %data, i32 0, i32 3
  %7 = ptrtoint ptr %sattr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sattr, align 4
  %rq_task.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 3
  %9 = ptrtoint ptr %rq_task.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rq_task.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %encode_diropargs.exit.rpc_rqst_userns.exit_crit_edge, label %if.then.i

encode_diropargs.exit.rpc_rqst_userns.exit_crit_edge: ; preds = %encode_diropargs.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %rpc_rqst_userns.exit

if.then.i:                                        ; preds = %encode_diropargs.exit
  %tk_client.i = getelementptr inbounds %struct.rpc_task, ptr %10, i32 0, i32 13
  %11 = ptrtoint ptr %tk_client.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tk_client.i, align 4
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.then.i.rpc_rqst_userns.exit_crit_edge, label %land.lhs.true.i.i

if.then.i.rpc_rqst_userns.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rpc_rqst_userns.exit

land.lhs.true.i.i:                                ; preds = %if.then.i
  %cl_cred.i.i = getelementptr inbounds %struct.rpc_clnt, ptr %12, i32 0, i32 29
  %13 = ptrtoint ptr %cl_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cl_cred.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %14, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, label %if.then.i.i5

land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rpc_rqst_userns.exit

if.then.i.i5:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %user_ns.i.i = getelementptr inbounds %struct.cred, ptr %14, i32 0, i32 25
  %15 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %user_ns.i.i, align 4
  br label %rpc_rqst_userns.exit

rpc_rqst_userns.exit:                             ; preds = %if.then.i.i5, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, %if.then.i.rpc_rqst_userns.exit_crit_edge, %encode_diropargs.exit.rpc_rqst_userns.exit_crit_edge
  %retval.0.i = phi ptr [ @init_user_ns, %encode_diropargs.exit.rpc_rqst_userns.exit_crit_edge ], [ %16, %if.then.i.i5 ], [ @init_user_ns, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge ], [ @init_user_ns, %if.then.i.rpc_rqst_userns.exit_crit_edge ]
  tail call fastcc void @encode_sattr(ptr noundef %xdr, ptr noundef %8, ptr noundef %retval.0.i)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs2_xdr_enc_removeargs(ptr nocapture noundef readnone %req, ptr noundef %xdr, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %call.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 32) #5
  %data.i.i = getelementptr inbounds %struct.nfs_fh, ptr %1, i32 0, i32 1
  %6 = call ptr @memcpy(ptr %call.i.i, ptr %data.i.i, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %5)
  %cmp.i.i = icmp ugt i32 %5, 255
  br i1 %cmp.i.i, label %land.rhs.i.i, label %entry.encode_diropargs.exit_crit_edge

entry.encode_diropargs.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %encode_diropargs.exit

land.rhs.i.i:                                     ; preds = %entry
  %.b40.i.i = load i1, ptr @encode_filename.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs.i.i.encode_diropargs.exit_crit_edge, label %if.then.i.i, !prof !93

land.rhs.i.i.encode_diropargs.exit_crit_edge:     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %encode_diropargs.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @encode_filename.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 388, i32 noundef 9, ptr noundef null) #5
  br label %encode_diropargs.exit

encode_diropargs.exit:                            ; preds = %if.then.i.i, %land.rhs.i.i.encode_diropargs.exit_crit_edge, %entry.encode_diropargs.exit_crit_edge
  %add.i.i = add i32 %5, 4
  %call.i2.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i.i) #5
  %call35.i.i = tail call ptr @xdr_encode_opaque(ptr noundef %call.i2.i, ptr noundef %3, i32 noundef %5) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs2_xdr_dec_stat(ptr nocapture noundef readnone %req, ptr noundef %xdr, ptr nocapture noundef readnone %__unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !92

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 0
  br i1 %cmp.not.i, label %if.end.i.cleanup_crit_edge, label %out_default, !prof !93

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

out_default:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @trace_nfs_xdr_status(ptr noundef %xdr, i32 noundef %1) #5
  %call5 = tail call fastcc i32 @nfs_stat_to_errno(i32 noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %out_default, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %out_default ], [ -5, %entry.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs2_xdr_enc_renameargs(ptr nocapture noundef readnone %req, ptr noundef %xdr, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %call.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 32) #5
  %data.i.i = getelementptr inbounds %struct.nfs_fh, ptr %5, i32 0, i32 1
  %10 = call ptr @memcpy(ptr %call.i.i, ptr %data.i.i, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %9)
  %cmp.i.i = icmp ugt i32 %9, 255
  br i1 %cmp.i.i, label %land.rhs.i.i, label %entry.encode_diropargs.exit_crit_edge

entry.encode_diropargs.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %encode_diropargs.exit

land.rhs.i.i:                                     ; preds = %entry
  %.b40.i.i = load i1, ptr @encode_filename.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs.i.i.encode_diropargs.exit_crit_edge, label %if.then.i.i, !prof !93

land.rhs.i.i.encode_diropargs.exit_crit_edge:     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %encode_diropargs.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @encode_filename.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 388, i32 noundef 9, ptr noundef null) #5
  br label %encode_diropargs.exit

encode_diropargs.exit:                            ; preds = %if.then.i.i, %land.rhs.i.i.encode_diropargs.exit_crit_edge, %entry.encode_diropargs.exit_crit_edge
  %add.i.i = add i32 %9, 4
  %call.i2.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i.i) #5
  %call35.i.i = tail call ptr @xdr_encode_opaque(ptr noundef %call.i2.i, ptr noundef %7, i32 noundef %9) #5
  %new_dir = getelementptr inbounds %struct.nfs_renameargs, ptr %data, i32 0, i32 2
  %11 = ptrtoint ptr %new_dir to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %new_dir, align 4
  %name1 = getelementptr inbounds %struct.qstr, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name1, align 8
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %3, align 8
  %call.i.i9 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 32) #5
  %data.i.i10 = getelementptr inbounds %struct.nfs_fh, ptr %12, i32 0, i32 1
  %17 = call ptr @memcpy(ptr %call.i.i9, ptr %data.i.i10, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %16)
  %cmp.i.i11 = icmp ugt i32 %16, 255
  br i1 %cmp.i.i11, label %land.rhs.i.i13, label %encode_diropargs.exit.encode_diropargs.exit18_crit_edge

encode_diropargs.exit.encode_diropargs.exit18_crit_edge: ; preds = %encode_diropargs.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %encode_diropargs.exit18

land.rhs.i.i13:                                   ; preds = %encode_diropargs.exit
  %.b40.i.i12 = load i1, ptr @encode_filename.__already_done, align 1
  br i1 %.b40.i.i12, label %land.rhs.i.i13.encode_diropargs.exit18_crit_edge, label %if.then.i.i14, !prof !93

land.rhs.i.i13.encode_diropargs.exit18_crit_edge: ; preds = %land.rhs.i.i13
  call void @__sanitizer_cov_trace_pc() #7
  br label %encode_diropargs.exit18

if.then.i.i14:                                    ; preds = %land.rhs.i.i13
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @encode_filename.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 388, i32 noundef 9, ptr noundef null) #5
  br label %encode_diropargs.exit18

encode_diropargs.exit18:                          ; preds = %if.then.i.i14, %land.rhs.i.i13.encode_diropargs.exit18_crit_edge, %encode_diropargs.exit.encode_diropargs.exit18_crit_edge
  %add.i.i15 = add i32 %16, 4
  %call.i2.i16 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i.i15) #5
  %call35.i.i17 = tail call ptr @xdr_encode_opaque(ptr noundef %call.i2.i16, ptr noundef %14, i32 noundef %16) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs2_xdr_enc_linkargs(ptr nocapture noundef readnone %req, ptr noundef %xdr, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 32) #5
  %data.i = getelementptr inbounds %struct.nfs_fh, ptr %1, i32 0, i32 1
  %2 = call ptr @memcpy(ptr %call.i, ptr %data.i, i32 32)
  %tofh = getelementptr inbounds %struct.nfs_linkargs, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %tofh to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tofh, align 4
  %toname = getelementptr inbounds %struct.nfs_linkargs, ptr %data, i32 0, i32 2
  %5 = ptrtoint ptr %toname to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %toname, align 4
  %tolen = getelementptr inbounds %struct.nfs_linkargs, ptr %data, i32 0, i32 3
  %7 = ptrtoint ptr %tolen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tolen, align 4
  %call.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 32) #5
  %data.i.i = getelementptr inbounds %struct.nfs_fh, ptr %4, i32 0, i32 1
  %9 = call ptr @memcpy(ptr %call.i.i, ptr %data.i.i, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %8)
  %cmp.i.i = icmp ugt i32 %8, 255
  br i1 %cmp.i.i, label %land.rhs.i.i, label %entry.encode_diropargs.exit_crit_edge

entry.encode_diropargs.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %encode_diropargs.exit

land.rhs.i.i:                                     ; preds = %entry
  %.b40.i.i = load i1, ptr @encode_filename.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs.i.i.encode_diropargs.exit_crit_edge, label %if.then.i.i, !prof !93

land.rhs.i.i.encode_diropargs.exit_crit_edge:     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %encode_diropargs.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @encode_filename.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 388, i32 noundef 9, ptr noundef null) #5
  br label %encode_diropargs.exit

encode_diropargs.exit:                            ; preds = %if.then.i.i, %land.rhs.i.i.encode_diropargs.exit_crit_edge, %entry.encode_diropargs.exit_crit_edge
  %add.i.i = add i32 %8, 4
  %call.i2.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i.i) #5
  %call35.i.i = tail call ptr @xdr_encode_opaque(ptr noundef %call.i2.i, ptr noundef %6, i32 noundef %8) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs2_xdr_enc_symlinkargs(ptr nocapture noundef readonly %req, ptr noundef %xdr, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %fromname = getelementptr inbounds %struct.nfs_symlinkargs, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %fromname to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fromname, align 4
  %fromlen = getelementptr inbounds %struct.nfs_symlinkargs, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %fromlen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fromlen, align 4
  %call.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 32) #5
  %data.i.i = getelementptr inbounds %struct.nfs_fh, ptr %1, i32 0, i32 1
  %6 = call ptr @memcpy(ptr %call.i.i, ptr %data.i.i, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %5)
  %cmp.i.i = icmp ugt i32 %5, 255
  br i1 %cmp.i.i, label %land.rhs.i.i, label %entry.encode_diropargs.exit_crit_edge

entry.encode_diropargs.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %encode_diropargs.exit

land.rhs.i.i:                                     ; preds = %entry
  %.b40.i.i = load i1, ptr @encode_filename.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs.i.i.encode_diropargs.exit_crit_edge, label %if.then.i.i, !prof !93

land.rhs.i.i.encode_diropargs.exit_crit_edge:     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %encode_diropargs.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @encode_filename.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 388, i32 noundef 9, ptr noundef null) #5
  br label %encode_diropargs.exit

encode_diropargs.exit:                            ; preds = %if.then.i.i, %land.rhs.i.i.encode_diropargs.exit_crit_edge, %entry.encode_diropargs.exit_crit_edge
  %add.i.i = add i32 %5, 4
  %call.i2.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i.i) #5
  %call35.i.i = tail call ptr @xdr_encode_opaque(ptr noundef %call.i2.i, ptr noundef %3, i32 noundef %5) #5
  %pages = getelementptr inbounds %struct.nfs_symlinkargs, ptr %data, i32 0, i32 3
  %7 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pages, align 4
  %pathlen = getelementptr inbounds %struct.nfs_symlinkargs, ptr %data, i32 0, i32 4
  %9 = ptrtoint ptr %pathlen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pathlen, align 4
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #5
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %call.i, align 4
  tail call void @xdr_write_pages(ptr noundef %xdr, ptr noundef %8, i32 noundef 0, i32 noundef %10) #5
  %sattr = getelementptr inbounds %struct.nfs_symlinkargs, ptr %data, i32 0, i32 5
  %12 = ptrtoint ptr %sattr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sattr, align 4
  %rq_task.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 3
  %14 = ptrtoint ptr %rq_task.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rq_task.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %encode_diropargs.exit.rpc_rqst_userns.exit_crit_edge, label %if.then.i

encode_diropargs.exit.rpc_rqst_userns.exit_crit_edge: ; preds = %encode_diropargs.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %rpc_rqst_userns.exit

if.then.i:                                        ; preds = %encode_diropargs.exit
  %tk_client.i = getelementptr inbounds %struct.rpc_task, ptr %15, i32 0, i32 13
  %16 = ptrtoint ptr %tk_client.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tk_client.i, align 4
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %if.then.i.rpc_rqst_userns.exit_crit_edge, label %land.lhs.true.i.i

if.then.i.rpc_rqst_userns.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rpc_rqst_userns.exit

land.lhs.true.i.i:                                ; preds = %if.then.i
  %cl_cred.i.i = getelementptr inbounds %struct.rpc_clnt, ptr %17, i32 0, i32 29
  %18 = ptrtoint ptr %cl_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cl_cred.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %19, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, label %if.then.i.i8

land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rpc_rqst_userns.exit

if.then.i.i8:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %user_ns.i.i = getelementptr inbounds %struct.cred, ptr %19, i32 0, i32 25
  %20 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %user_ns.i.i, align 4
  br label %rpc_rqst_userns.exit

rpc_rqst_userns.exit:                             ; preds = %if.then.i.i8, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge, %if.then.i.rpc_rqst_userns.exit_crit_edge, %encode_diropargs.exit.rpc_rqst_userns.exit_crit_edge
  %retval.0.i = phi ptr [ @init_user_ns, %encode_diropargs.exit.rpc_rqst_userns.exit_crit_edge ], [ %21, %if.then.i.i8 ], [ @init_user_ns, %land.lhs.true.i.i.rpc_rqst_userns.exit_crit_edge ], [ @init_user_ns, %if.then.i.rpc_rqst_userns.exit_crit_edge ]
  tail call fastcc void @encode_sattr(ptr noundef %xdr, ptr noundef %13, ptr noundef %retval.0.i)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs2_xdr_enc_readdirargs(ptr noundef %req, ptr noundef %xdr, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 32) #5
  %data.i.i = getelementptr inbounds %struct.nfs_fh, ptr %1, i32 0, i32 1
  %2 = call ptr @memcpy(ptr %call.i.i, ptr %data.i.i, i32 32)
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 8) #5
  %cookie.i = getelementptr inbounds %struct.nfs_readdirargs, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cookie.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %call.i, i32 1
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %call.i, align 4
  %count.i = getelementptr inbounds %struct.nfs_readdirargs, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 4
  %8 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %incdec.ptr.i, align 4
  %pages = getelementptr inbounds %struct.nfs_readdirargs, ptr %data, i32 0, i32 3
  %9 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pages, align 4
  %11 = load i32, ptr %count.i, align 4
  tail call void @rpc_prepare_reply_pages(ptr noundef %req, ptr noundef %10, i32 noundef 0, i32 noundef %11, i32 noundef 1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs2_xdr_dec_readdirres(ptr nocapture noundef readnone %req, ptr noundef %xdr, ptr nocapture noundef readnone %__unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !92

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 0
  br i1 %cmp.not.i, label %if.end4, label %out_default, !prof !93

if.end4:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %buf.i = getelementptr inbounds %struct.xdr_stream, ptr %xdr, i32 0, i32 1
  %2 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf.i, align 4
  %page_len.i = getelementptr inbounds %struct.xdr_buf, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %page_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %page_len.i, align 4
  %call.i10 = tail call i32 @xdr_read_pages(ptr noundef %xdr, i32 noundef %5) #5
  br label %cleanup

out_default:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @trace_nfs_xdr_status(ptr noundef %xdr, i32 noundef %1) #5
  %call6 = tail call fastcc i32 @nfs_stat_to_errno(i32 noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %out_default, %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %out_default ], [ %call.i10, %if.end4 ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs2_xdr_dec_statfsres(ptr nocapture noundef readnone %req, ptr noundef %xdr, ptr nocapture noundef writeonly %result) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !92

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 0
  br i1 %cmp.not.i, label %if.end4, label %out_default, !prof !93

if.end4:                                          ; preds = %if.end.i
  %call.i10 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 20) #5
  %tobool.not.i11 = icmp eq ptr %call.i10, null
  br i1 %tobool.not.i11, label %if.end4.cleanup_crit_edge, label %if.end.i12, !prof !92

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i12:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr.i = getelementptr i32, ptr %call.i10, i32 1
  %2 = ptrtoint ptr %call.i10 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call.i10, align 4
  %4 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %result, align 4
  %incdec.ptr5.i = getelementptr i32, ptr %call.i10, i32 2
  %5 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %incdec.ptr.i, align 4
  %bsize.i = getelementptr inbounds %struct.nfs2_fsstat, ptr %result, i32 0, i32 1
  %7 = ptrtoint ptr %bsize.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %bsize.i, align 4
  %incdec.ptr7.i = getelementptr i32, ptr %call.i10, i32 3
  %8 = ptrtoint ptr %incdec.ptr5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %incdec.ptr5.i, align 4
  %blocks.i = getelementptr inbounds %struct.nfs2_fsstat, ptr %result, i32 0, i32 2
  %10 = ptrtoint ptr %blocks.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %blocks.i, align 4
  %incdec.ptr9.i = getelementptr i32, ptr %call.i10, i32 4
  %11 = ptrtoint ptr %incdec.ptr7.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %incdec.ptr7.i, align 4
  %bfree.i = getelementptr inbounds %struct.nfs2_fsstat, ptr %result, i32 0, i32 3
  %13 = ptrtoint ptr %bfree.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %bfree.i, align 4
  %14 = ptrtoint ptr %incdec.ptr9.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %incdec.ptr9.i, align 4
  %bavail.i = getelementptr inbounds %struct.nfs2_fsstat, ptr %result, i32 0, i32 4
  %16 = ptrtoint ptr %bavail.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %bavail.i, align 4
  br label %cleanup

out_default:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @trace_nfs_xdr_status(ptr noundef %xdr, i32 noundef %1) #5
  %call6 = tail call fastcc i32 @nfs_stat_to_errno(i32 noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %out_default, %if.end.i12, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %out_default ], [ -5, %entry.cleanup_crit_edge ], [ 0, %if.end.i12 ], [ -5, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_reserve_space(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @decode_fattr(ptr noundef %xdr, ptr nocapture noundef %fattr, ptr noundef %userns) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 68) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !92

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fattr, align 8
  %or = or i32 %1, 163199
  store i32 %or, ptr %fattr, align 8
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp.i = icmp ugt i32 %3, 8
  br i1 %cmp.i, label %if.then.i, label %if.end.xdr_decode_ftype.exit_crit_edge, !prof !92

if.end.xdr_decode_ftype.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %xdr_decode_ftype.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %xdr_decode_ftype.exit

xdr_decode_ftype.exit:                            ; preds = %if.then.i, %if.end.xdr_decode_ftype.exit_crit_edge
  %storemerge.i = phi i32 [ 7, %if.then.i ], [ %3, %if.end.xdr_decode_ftype.exit_crit_edge ]
  %incdec.ptr.i = getelementptr i32, ptr %call, i32 1
  %incdec.ptr = getelementptr i32, ptr %call, i32 2
  %4 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %incdec.ptr.i, align 4
  %conv = trunc i32 %5 to i16
  %mode = getelementptr inbounds %struct.nfs_fattr, ptr %fattr, i32 0, i32 1
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %mode, align 4
  %incdec.ptr6 = getelementptr i32, ptr %call, i32 3
  %7 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %incdec.ptr, align 4
  %nlink = getelementptr inbounds %struct.nfs_fattr, ptr %fattr, i32 0, i32 2
  %9 = ptrtoint ptr %nlink to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %nlink, align 8
  %uid = getelementptr inbounds %struct.nfs_fattr, ptr %fattr, i32 0, i32 3
  %10 = ptrtoint ptr %incdec.ptr6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %incdec.ptr6, align 4
  %call10 = tail call i32 @make_kuid(ptr noundef %userns, i32 noundef %11) #5
  %12 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call10, ptr %uid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call10)
  %cmp.i133.not = icmp eq i32 %call10, -1
  br i1 %cmp.i133.not, label %do.body, label %if.end15

if.end15:                                         ; preds = %xdr_decode_ftype.exit
  %incdec.ptr8 = getelementptr i32, ptr %call, i32 4
  %gid = getelementptr inbounds %struct.nfs_fattr, ptr %fattr, i32 0, i32 4
  %13 = ptrtoint ptr %incdec.ptr8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %incdec.ptr8, align 4
  %call19 = tail call i32 @make_kgid(ptr noundef %userns, i32 noundef %14) #5
  %15 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call19, ptr %gid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call19)
  %cmp.i134.not = icmp eq i32 %call19, -1
  br i1 %cmp.i134.not, label %do.body76, label %if.end25

if.end25:                                         ; preds = %if.end15
  %incdec.ptr17 = getelementptr i32, ptr %call, i32 5
  %incdec.ptr26 = getelementptr i32, ptr %call, i32 6
  %16 = ptrtoint ptr %incdec.ptr17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %incdec.ptr17, align 4
  %conv28 = zext i32 %17 to i64
  %size = getelementptr inbounds %struct.nfs_fattr, ptr %fattr, i32 0, i32 6
  %18 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv28, ptr %size, align 8
  %incdec.ptr29 = getelementptr i32, ptr %call, i32 7
  %19 = ptrtoint ptr %incdec.ptr26 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %incdec.ptr26, align 4
  %du = getelementptr inbounds %struct.nfs_fattr, ptr %fattr, i32 0, i32 7
  %21 = ptrtoint ptr %du to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %du, align 8
  %incdec.ptr31 = getelementptr i32, ptr %call, i32 8
  %22 = ptrtoint ptr %incdec.ptr29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %incdec.ptr29, align 4
  %and1.i = and i32 %23, 255
  %shr2.i = lshr i32 %23, 12
  %and3.i = and i32 %shr2.i, 1048320
  %or.i = or i32 %and3.i, %and1.i
  %24 = shl i32 %23, 12
  %shl.i = and i32 %24, -1048576
  %or4.i = or i32 %or.i, %shl.i
  %rdev34 = getelementptr inbounds %struct.nfs_fattr, ptr %fattr, i32 0, i32 5
  %25 = ptrtoint ptr %rdev34 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or4.i, ptr %rdev34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %storemerge.i)
  %cmp = icmp eq i32 %storemerge.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp36 = icmp eq i32 %23, -1
  %or.cond = and i1 %cmp, %cmp36
  br i1 %or.cond, label %if.then38, label %if.end25.if.end45_crit_edge

if.end25.if.end45_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.then38:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %mode, align 4
  %28 = and i16 %27, 4095
  %29 = or i16 %28, 4096
  store i16 %29, ptr %mode, align 4
  %30 = ptrtoint ptr %rdev34 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %rdev34, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then38, %if.end25.if.end45_crit_edge
  %incdec.ptr46 = getelementptr i32, ptr %call, i32 9
  %31 = ptrtoint ptr %incdec.ptr31 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %incdec.ptr31, align 4
  %blocks = getelementptr inbounds %struct.anon.135, ptr %du, i32 0, i32 1
  %33 = ptrtoint ptr %blocks to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %blocks, align 4
  %incdec.ptr49 = getelementptr i32, ptr %call, i32 10
  %34 = ptrtoint ptr %incdec.ptr46 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %incdec.ptr46, align 4
  %conv51 = zext i32 %35 to i64
  %fsid = getelementptr inbounds %struct.nfs_fattr, ptr %fattr, i32 0, i32 8
  %36 = ptrtoint ptr %fsid to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %conv51, ptr %fsid, align 8
  %minor = getelementptr inbounds %struct.nfs_fattr, ptr %fattr, i32 0, i32 8, i32 1
  %37 = ptrtoint ptr %minor to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 0, ptr %minor, align 8
  %incdec.ptr53 = getelementptr i32, ptr %call, i32 11
  %38 = ptrtoint ptr %incdec.ptr49 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %incdec.ptr49, align 4
  %conv55 = zext i32 %39 to i64
  %fileid = getelementptr inbounds %struct.nfs_fattr, ptr %fattr, i32 0, i32 9
  %40 = ptrtoint ptr %fileid to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %conv55, ptr %fileid, align 8
  %atime = getelementptr inbounds %struct.nfs_fattr, ptr %fattr, i32 0, i32 11
  %incdec.ptr.i135 = getelementptr i32, ptr %call, i32 12
  %41 = ptrtoint ptr %incdec.ptr53 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %incdec.ptr53, align 4
  %conv.i = zext i32 %42 to i64
  %43 = ptrtoint ptr %atime to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %conv.i, ptr %atime, align 8
  %incdec.ptr1.i = getelementptr i32, ptr %call, i32 13
  %44 = ptrtoint ptr %incdec.ptr.i135 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %incdec.ptr.i135, align 4
  %mul.i = mul i32 %45, 1000
  %tv_nsec.i = getelementptr inbounds %struct.nfs_fattr, ptr %fattr, i32 0, i32 11, i32 1
  %46 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %mul.i, ptr %tv_nsec.i, align 8
  %mtime = getelementptr inbounds %struct.nfs_fattr, ptr %fattr, i32 0, i32 12
  %incdec.ptr.i136 = getelementptr i32, ptr %call, i32 14
  %47 = ptrtoint ptr %incdec.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %incdec.ptr1.i, align 4
  %conv.i137 = zext i32 %48 to i64
  %49 = ptrtoint ptr %mtime to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %conv.i137, ptr %mtime, align 8
  %incdec.ptr1.i138 = getelementptr i32, ptr %call, i32 15
  %50 = ptrtoint ptr %incdec.ptr.i136 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %incdec.ptr.i136, align 4
  %mul.i139 = mul i32 %51, 1000
  %tv_nsec.i140 = getelementptr inbounds %struct.nfs_fattr, ptr %fattr, i32 0, i32 12, i32 1
  %52 = ptrtoint ptr %tv_nsec.i140 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %mul.i139, ptr %tv_nsec.i140, align 8
  %ctime = getelementptr inbounds %struct.nfs_fattr, ptr %fattr, i32 0, i32 13
  %incdec.ptr.i141 = getelementptr i32, ptr %call, i32 16
  %53 = ptrtoint ptr %incdec.ptr1.i138 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %incdec.ptr1.i138, align 4
  %conv.i142 = zext i32 %54 to i64
  %55 = ptrtoint ptr %ctime to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %conv.i142, ptr %ctime, align 8
  %56 = ptrtoint ptr %incdec.ptr.i141 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %incdec.ptr.i141, align 4
  %mul.i144 = mul i32 %57, 1000
  %tv_nsec.i145 = getelementptr inbounds %struct.nfs_fattr, ptr %fattr, i32 0, i32 13, i32 1
  %58 = ptrtoint ptr %tv_nsec.i145 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %mul.i144, ptr %tv_nsec.i145, align 8
  %shl.i146 = shl nuw nsw i64 %conv.i142, 30
  %conv.i148 = sext i32 %mul.i144 to i64
  %add.i = add nsw i64 %shl.i146, %conv.i148
  %change_attr = getelementptr inbounds %struct.nfs_fattr, ptr %fattr, i32 0, i32 14
  %59 = ptrtoint ptr %change_attr to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %add.i, ptr %change_attr, align 8
  br label %cleanup

do.body:                                          ; preds = %xdr_decode_ftype.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %60 = load i32, ptr @nfs_debug, align 4
  %and61 = and i32 %60, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %do.body.cleanup_crit_edge, label %do.end, !prof !93

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #8
  br label %cleanup

do.body76:                                        ; preds = %if.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %61 = load i32, ptr @nfs_debug, align 4
  %and77 = and i32 %61, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %do.body76.cleanup_crit_edge, label %do.end88, !prof !93

do.body76.cleanup_crit_edge:                      ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end88:                                         ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #7
  %call90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end88, %do.body76.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %if.end45, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end45 ], [ -5, %entry.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %do.end88 ], [ -22, %do.body76.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfs_stat_to_errno(i32 noundef %status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %status to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge50:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.28:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %1 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.inc.28.cleanup_crit_edge, label %do.end, !prof !93

for.inc.28.cleanup_crit_edge:                     ; preds = %for.inc.28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %for.inc.28
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %status) #8
  br label %cleanup

cleanup.fold.split24:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.fold.split25:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.fold.split26:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.fold.split27:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.fold.split28:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.fold.split29:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.fold.split30:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.fold.split31:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.fold.split32:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.fold.split33:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.fold.split34:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.fold.split35:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.fold.split36:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.fold.split37:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.fold.split38:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.fold.split39:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.fold.split40:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.fold.split41:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.fold.split42:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.fold.split43:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.fold.split44:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.fold.split45:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.fold.split46:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.fold.split47:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.fold.split48:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.fold.split49:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.fold.split49, %cleanup.fold.split48, %cleanup.fold.split47, %cleanup.fold.split46, %cleanup.fold.split45, %cleanup.fold.split44, %cleanup.fold.split43, %cleanup.fold.split42, %cleanup.fold.split41, %cleanup.fold.split40, %cleanup.fold.split39, %cleanup.fold.split38, %cleanup.fold.split37, %cleanup.fold.split36, %cleanup.fold.split35, %cleanup.fold.split34, %cleanup.fold.split33, %cleanup.fold.split32, %cleanup.fold.split31, %cleanup.fold.split30, %cleanup.fold.split29, %cleanup.fold.split28, %cleanup.fold.split27, %cleanup.fold.split26, %cleanup.fold.split25, %cleanup.fold.split24, %do.end, %for.inc.28.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge50, %entry.cleanup_crit_edge51
  %i.020 = phi i32 [ 29, %for.inc.28.cleanup_crit_edge ], [ 29, %do.end ], [ %status, %entry.cleanup_crit_edge ], [ 3, %cleanup.fold.split24 ], [ 4, %cleanup.fold.split25 ], [ 5, %cleanup.fold.split26 ], [ 6, %cleanup.fold.split27 ], [ 7, %cleanup.fold.split28 ], [ 8, %cleanup.fold.split29 ], [ 9, %cleanup.fold.split30 ], [ 10, %cleanup.fold.split31 ], [ 11, %cleanup.fold.split32 ], [ 12, %cleanup.fold.split33 ], [ 13, %cleanup.fold.split34 ], [ 14, %cleanup.fold.split35 ], [ 15, %cleanup.fold.split36 ], [ 16, %cleanup.fold.split37 ], [ 17, %cleanup.fold.split38 ], [ 18, %cleanup.fold.split39 ], [ 19, %cleanup.fold.split40 ], [ 20, %cleanup.fold.split41 ], [ 21, %cleanup.fold.split42 ], [ 22, %cleanup.fold.split43 ], [ 23, %cleanup.fold.split44 ], [ 24, %cleanup.fold.split45 ], [ 25, %cleanup.fold.split46 ], [ 26, %cleanup.fold.split47 ], [ 27, %cleanup.fold.split48 ], [ 28, %cleanup.fold.split49 ], [ %status, %entry.cleanup_crit_edge50 ], [ %status, %entry.cleanup_crit_edge51 ]
  %retval.0.in = getelementptr [30 x %struct.anon.165], ptr @nfs_errtbl, i32 0, i32 %i.020, i32 1
  %2 = ptrtoint ptr %retval.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %retval.0 = load i32, ptr %retval.0.in, align 4
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfs_xdr_status(ptr noundef %xdr, i32 noundef %error) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_xdr_status, i32 0, i32 1), ptr blockaddress(@trace_nfs_xdr_status, %do.body)) #5
          to label %if.end48 [label %do.body], !srcloc !94

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !82) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !93

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #7
  %9 = tail call i32 @llvm.read_register.i32(metadata !82) #5
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !95
  %call42 = tail call i32 @__traceiter_nfs_xdr_status(ptr noundef null, ptr noundef %xdr, i32 noundef %error) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !96
  %13 = tail call i32 @llvm.read_register.i32(metadata !82) #5
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !82) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !93

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !82) #5
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !97
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_xdr_status, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_xdr_status, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfs_xdr_status.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @trace_nfs_xdr_status.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 1450, ptr noundef nonnull @.str.19) #5
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !98
  %31 = tail call i32 @llvm.read_register.i32(metadata !82) #5
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
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs_xdr_status(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @encode_sattr(ptr noundef %xdr, ptr nocapture noundef readonly %attr, ptr noundef %userns) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 32) #5
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %attr, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %ia_mode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ia_mode, align 4
  %conv = zext i16 %3 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %storemerge = phi i32 [ %conv, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %p.0 = getelementptr i32, ptr %call, i32 1
  %4 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %storemerge, ptr %call, align 4
  %5 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %attr, align 8
  %and3 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end10_crit_edge, label %if.then5

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %ia_uid = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 2
  %7 = ptrtoint ptr %ia_uid to i32
  call void @__asan_load4_noabort(i32 %7)
  %.unpack94 = load i32, ptr %ia_uid, align 8
  %8 = insertvalue [1 x i32] undef, i32 %.unpack94, 0
  %call6 = tail call i32 @from_kuid_munged(ptr noundef %userns, [1 x i32] %8) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.end.if.end10_crit_edge
  %storemerge91 = phi i32 [ %call6, %if.then5 ], [ -1, %if.end.if.end10_crit_edge ]
  %p.1 = getelementptr i32, ptr %call, i32 2
  %9 = ptrtoint ptr %p.0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %storemerge91, ptr %p.0, align 4
  %10 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %attr, align 8
  %and12 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end10.if.end20_crit_edge, label %if.then14

if.end10.if.end20_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %ia_gid = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 3
  %12 = ptrtoint ptr %ia_gid to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack = load i32, ptr %ia_gid, align 4
  %13 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call16 = tail call i32 @from_kgid_munged(ptr noundef %userns, [1 x i32] %13) #5
  br label %if.end20

if.end20:                                         ; preds = %if.then14, %if.end10.if.end20_crit_edge
  %storemerge92 = phi i32 [ %call16, %if.then14 ], [ -1, %if.end10.if.end20_crit_edge ]
  %p.2 = getelementptr i32, ptr %call, i32 3
  %14 = ptrtoint ptr %p.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %storemerge92, ptr %p.1, align 4
  %15 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %attr, align 8
  %and22 = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end20.if.end29_crit_edge, label %if.then24

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %ia_size = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 4
  %17 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %ia_size, align 8
  %conv25 = trunc i64 %18 to i32
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %if.end20.if.end29_crit_edge
  %storemerge93 = phi i32 [ %conv25, %if.then24 ], [ -1, %if.end20.if.end29_crit_edge ]
  %p.3 = getelementptr i32, ptr %call, i32 4
  %19 = ptrtoint ptr %p.2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %storemerge93, ptr %p.2, align 4
  %20 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %attr, align 8
  %and31 = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.else35, label %if.then33

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %ia_atime = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 5
  %22 = ptrtoint ptr %ia_atime to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %ia_atime, align 8
  %conv.i = trunc i64 %23 to i32
  %24 = ptrtoint ptr %p.3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv.i, ptr %p.3, align 4
  %tv_nsec.i = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 5, i32 1
  %25 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tv_nsec.i, align 8
  %div.i = sdiv i32 %26, 1000
  %incdec.ptr.i = getelementptr i32, ptr %call, i32 5
  %27 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %div.i, ptr %incdec.ptr.i, align 4
  br label %if.end45

if.else35:                                        ; preds = %if.end29
  %and37 = and i32 %21, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.else42, label %if.then39

if.then39:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #7
  %ia_atime40 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 5
  %28 = ptrtoint ptr %ia_atime40 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %ia_atime40, align 8
  %conv.i95 = trunc i64 %29 to i32
  %incdec.ptr.i96 = getelementptr i32, ptr %call, i32 5
  %30 = ptrtoint ptr %p.3 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv.i95, ptr %p.3, align 4
  %31 = ptrtoint ptr %incdec.ptr.i96 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1000000, ptr %incdec.ptr.i96, align 4
  br label %if.end45

if.else42:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr.i97 = getelementptr i32, ptr %call, i32 5
  %32 = ptrtoint ptr %p.3 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %p.3, align 4
  %33 = ptrtoint ptr %incdec.ptr.i97 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %incdec.ptr.i97, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.else42, %if.then39, %if.then33
  %p.4 = getelementptr i32, ptr %call, i32 6
  %34 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %attr, align 8
  %and47 = and i32 %35, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.else51, label %if.then49

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  %ia_mtime = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 6
  %36 = ptrtoint ptr %ia_mtime to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ia_mtime, align 8
  %conv.i99 = trunc i64 %37 to i32
  %38 = ptrtoint ptr %p.4 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv.i99, ptr %p.4, align 4
  %tv_nsec.i100 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 6, i32 1
  %39 = ptrtoint ptr %tv_nsec.i100 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tv_nsec.i100, align 8
  %div.i101 = sdiv i32 %40, 1000
  %incdec.ptr.i103 = getelementptr i32, ptr %call, i32 7
  %41 = ptrtoint ptr %incdec.ptr.i103 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %div.i101, ptr %incdec.ptr.i103, align 4
  br label %if.end61

if.else51:                                        ; preds = %if.end45
  %and53 = and i32 %35, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.else58, label %if.then55

if.then55:                                        ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #7
  %ia_mtime56 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 6
  %42 = ptrtoint ptr %ia_mtime56 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %ia_mtime56, align 8
  %conv.i104 = trunc i64 %43 to i32
  %incdec.ptr.i105 = getelementptr i32, ptr %call, i32 7
  %44 = ptrtoint ptr %p.4 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv.i104, ptr %p.4, align 4
  %45 = ptrtoint ptr %incdec.ptr.i105 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1000000, ptr %incdec.ptr.i105, align 4
  br label %if.end61

if.else58:                                        ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr.i107 = getelementptr i32, ptr %call, i32 7
  %46 = ptrtoint ptr %p.4 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %p.4, align 4
  %47 = ptrtoint ptr %incdec.ptr.i107 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %incdec.ptr.i107, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.else58, %if.then55, %if.then49
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_encode_opaque(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_prepare_reply_pages(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdr_read_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_terminate_string(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_write_pages(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !66, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81}
!llvm.named.register.sp = !{!82}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/nfs/nfs2xdr.c", i32 1134, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/nfs/nfs2xdr.c", i32 1135, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/nfs/nfs2xdr.c", i32 1136, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/nfs/nfs2xdr.c", i32 1137, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/nfs/nfs2xdr.c", i32 1138, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/nfs/nfs2xdr.c", i32 1139, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/nfs/nfs2xdr.c", i32 1140, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/nfs/nfs2xdr.c", i32 1141, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/nfs/nfs2xdr.c", i32 1142, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/nfs/nfs2xdr.c", i32 1143, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/nfs/nfs2xdr.c", i32 1144, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/nfs/nfs2xdr.c", i32 1145, i32 2}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/nfs/nfs2xdr.c", i32 1146, i32 2}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/nfs/nfs2xdr.c", i32 1147, i32 2}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/nfs/nfs2xdr.c", i32 1148, i32 2}
!30 = !{ptr @nfs_procedures, !31, !"nfs_procedures", i1 false, i1 false}
!31 = !{!"../fs/nfs/nfs2xdr.c", i32 1133, i32 27}
!32 = !{ptr @nfs_version2, !33, !"nfs_version2", i1 false, i1 false}
!33 = !{!"../fs/nfs/nfs2xdr.c", i32 1152, i32 26}
!34 = !{ptr @nfs_version2_counts, !35, !"nfs_version2_counts", i1 false, i1 false}
!35 = !{!"../fs/nfs/nfs2xdr.c", i32 1151, i32 21}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/nfs/nfs2xdr.c", i32 412, i32 2}
!38 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @decode_filename_inline._entry, !37, !"_entry", i1 false, i1 false}
!41 = !{ptr @decode_filename_inline._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../fs/nfs/nfstrace.h", i32 1450, i32 1}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!46 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!49 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/nfs/nfs2xdr.c", i32 311, i32 2}
!52 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @decode_fattr._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @decode_fattr._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/nfs/nfs2xdr.c", i32 314, i32 2}
!57 = !{ptr @decode_fattr._entry.23, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @decode_fattr._entry_ptr.25, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/nfs/nfs2xdr.c", i32 1118, i32 2}
!61 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @nfs_stat_to_errno._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @nfs_stat_to_errno._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @nfs_errtbl, !65, !"nfs_errtbl", i1 false, i1 false}
!65 = !{!"../fs/nfs/nfs2xdr.c", i32 1066, i32 3}
!66 = distinct !{null, !67, !"__already_done", i1 false, i1 false}
!67 = !{!"../fs/nfs/nfs2xdr.c", i32 388, i32 2}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/nfs/nfs2xdr.c", i32 447, i32 2}
!70 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @decode_path._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @decode_path._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/nfs/nfs2xdr.c", i32 450, i32 2}
!75 = !{ptr @decode_path._entry.30, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @decode_path._entry_ptr.32, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/nfs/nfs2xdr.c", i32 114, i32 2}
!79 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @decode_nfsdata._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @decode_nfsdata._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{!"sp"}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{!"branch_weights", i32 1, i32 2000}
!93 = !{!"branch_weights", i32 2000, i32 1}
!94 = !{i64 2148875169, i64 2148875174, i64 2148875187, i64 2148875231, i64 2148875265, i64 2148875286}
!95 = !{i64 2158849993}
!96 = !{i64 2158850204}
!97 = !{i64 2150057397}
!98 = !{i64 2150058433}
