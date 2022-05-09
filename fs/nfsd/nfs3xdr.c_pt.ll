; ModuleID = '/llk/IR_all_yes/fs/nfsd/nfs3xdr.c_pt.bc'
source_filename = "../fs/nfsd/nfs3xdr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.svc_fh = type { %struct.knfsd_fh, i32, ptr, ptr, i8, i8, i8, i8, i32, i8, i8, i64, %struct.timespec64, %struct.timespec64, i64, %struct.kstat, i64 }
%struct.knfsd_fh = type { i32, %union.anon.150 }
%union.anon.150 = type { %struct.anon.151, [124 x i8] }
%struct.anon.151 = type { i8, i8, i8, i8, [0 x i32] }
%struct.timespec64 = type { i64, i32 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.25 }
%union.anon.25 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
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
%struct.ctl_table_header = type { %union.anon.27, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.path = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.114, %struct.list_head, %struct.list_head, %union.anon.115 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.5, ptr }
%union.anon.5 = type { i64 }
%struct.lockref = type { %union.anon.7 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%union.anon.114 = type { %struct.list_head }
%union.anon.115 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.svc_export = type { %struct.cache_head, ptr, i32, %struct.path, %struct.kuid_t, %struct.kgid_t, i32, ptr, %struct.nfsd4_fs_locations, i32, [8 x %struct.exp_flavor_info], i32, ptr, ptr, %struct.callback_head, %struct.export_stats }
%struct.cache_head = type { %struct.hlist_node, i64, i64, %struct.kref, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.nfsd4_fs_locations = type { i32, ptr, i32 }
%struct.exp_flavor_info = type { i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.export_stats = type { i64, [3 x %struct.percpu_counter] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.svc_rqst = type { %struct.list_head, %struct.callback_head, ptr, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, ptr, ptr, %struct.svc_cred, ptr, ptr, i32, %struct.xdr_buf, %struct.xdr_stream, %struct.xdr_stream, ptr, %struct.xdr_buf, [260 x ptr], ptr, ptr, ptr, %struct.pagevec, [259 x %struct.kvec], [259 x %struct.bio_vec], i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i64, %struct.cache_req, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.154 }
%union.anon.154 = type { ptr, [124 x i8] }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cache_req = type { ptr, i32 }
%struct.svc_xprt = type { ptr, ptr, %struct.kref, %struct.list_head, %struct.list_head, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.mutex, %struct.spinlock, ptr, %struct.list_head, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, [58 x i8], %struct.list_head, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.29 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.29 = type { %struct.callback_head }
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
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.nfsd3_sattrargs = type { %struct.svc_fh, %struct.iattr, i32, i64 }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.nfsd3_diropargs = type { %struct.svc_fh, ptr, i32 }
%struct.nfsd3_accessargs = type { %struct.svc_fh, i32 }
%struct.nfsd3_readargs = type { %struct.svc_fh, i64, i32 }
%struct.nfsd3_writeargs = type { %struct.svc_fh, i64, i32, i32, i32, %struct.xdr_buf }
%struct.nfsd3_createargs = type { %struct.svc_fh, ptr, i32, i32, %struct.iattr, ptr }
%struct.nfsd3_symlinkargs = type { %struct.svc_fh, ptr, i32, ptr, i32, %struct.iattr, %struct.kvec }
%struct.nfsd3_mknodargs = type { %struct.svc_fh, ptr, i32, i32, i32, i32, %struct.iattr }
%struct.nfsd3_renameargs = type { %struct.svc_fh, ptr, i32, %struct.svc_fh, ptr, i32 }
%struct.nfsd3_linkargs = type { %struct.svc_fh, %struct.svc_fh, ptr, i32 }
%struct.nfsd3_readdirargs = type { %struct.svc_fh, i64, i32, ptr }
%struct.nfsd3_commitargs = type { %struct.svc_fh, i64, i32 }
%struct.nfsd3_attrstat = type { i32, %struct.svc_fh, %struct.kstat }
%struct.nfsd3_diropres = type { i32, %struct.svc_fh, %struct.svc_fh }
%struct.nfsd3_accessres = type { i32, %struct.svc_fh, i32, %struct.kstat }
%struct.nfsd3_readlinkres = type { i32, %struct.svc_fh, i32, ptr }
%struct.nfsd3_readres = type { i32, %struct.svc_fh, i32, i32, ptr }
%struct.nfsd3_writeres = type { i32, %struct.svc_fh, i32, i32, [2 x i32] }
%struct.nfsd3_renameres = type { i32, %struct.svc_fh, %struct.svc_fh }
%struct.nfsd3_linkres = type { i32, %struct.svc_fh, %struct.svc_fh }
%struct.nfsd3_readdirres = type { i32, %struct.svc_fh, [2 x i32], %struct.xdr_stream, %struct.xdr_buf, %struct.svc_fh, %struct.readdir_cd, i32, ptr }
%struct.readdir_cd = type { i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.128, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.129, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.130, ptr, %struct.address_space, %struct.list_head, %union.anon.131, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.128 = type { i32 }
%union.anon.129 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.130 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.131 = type { ptr }
%struct.nfsd3_fsstatres = type { i32, %struct.kstatfs, i32 }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }
%struct.nfsd3_fsinfores = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.nfsd3_pathconfres = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.nfsd3_commitres = type { i32, %struct.svc_fh, [2 x i32] }
%struct.nfsd3_fhandle_pair = type { i32, %struct.svc_fh, %struct.svc_fh }

@nfs3svc_null_fh = internal constant { %struct.svc_fh, [88 x i8] } { %struct.svc_fh { %struct.knfsd_fh zeroinitializer, i32 0, ptr null, ptr null, i8 0, i8 0, i8 1, i8 0, i32 0, i8 0, i8 0, i64 0, %struct.timespec64 zeroinitializer, %struct.timespec64 zeroinitializer, i64 0, %struct.kstat zeroinitializer, i64 0 }, [88 x i8] zeroinitializer }, align 32
@nfs3_ftypes = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 0, i32 7, i32 4, i32 8, i32 2, i32 8, i32 3, i32 8, i32 1, i32 8, i32 5, i32 8, i32 6, i32 8, i32 5, i32 8], [32 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 47]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.5 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@___asan_gen_.6 = private unnamed_addr constant [16 x i8] c"nfs3svc_null_fh\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 20, i32 28 }
@___asan_gen_.9 = private unnamed_addr constant [12 x i8] c"nfs3_ftypes\00", align 1
@___asan_gen_.10 = private constant [21 x i8] c"../fs/nfsd/nfs3xdr.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 36, i32 18 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @nfs3svc_null_fh, ptr @nfs3_ftypes], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs3svc_null_fh to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs3_ftypes to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @svcxdr_decode_nfs_fh3(ptr noundef %xdr, ptr nocapture noundef writeonly %fhp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end, !prof !15

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call.i, align 4
  %2 = add i32 %1, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64, i32 %2)
  %3 = icmp ult i32 %2, -64
  br i1 %3, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %1) #4
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %4 = call ptr @memset(ptr %fhp, i32 0, i32 360)
  %fh_maxsize.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 1
  %5 = ptrtoint ptr %fh_maxsize.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 64, ptr %fh_maxsize.i, align 4
  %6 = ptrtoint ptr %fhp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %1, ptr %fhp, align 8
  %7 = getelementptr inbounds %struct.knfsd_fh, ptr %fhp, i32 0, i32 1
  %8 = call ptr @memcpy(ptr %7, ptr %call5, i32 %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end7 ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.end4.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_inline_decode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @svcxdr_encode_nfsstat3(ptr noundef %xdr, i32 noundef %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %status, ptr %call, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %1 = xor i1 %tobool.not, true
  ret i1 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_reserve_space(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @svcxdr_encode_post_op_attr(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr, ptr noundef %fhp) local_unnamed_addr #0 align 64 {
entry:
  %p.i = alloca %struct.path, align 4
  %stat = alloca %struct.kstat, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fh_dentry = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 2
  %0 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fh_dentry, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %stat) #4
  %2 = call ptr @memset(ptr %stat, i32 255, i32 144)
  %fh_no_wcc = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 6
  %3 = ptrtoint ptr %fh_no_wcc to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %fh_no_wcc, align 2, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp ne i8 %4, 0
  %tobool1.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %entry.no_post_op_attrs_crit_edge, label %lor.lhs.false2

entry.no_post_op_attrs_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %no_post_op_attrs

lor.lhs.false2:                                   ; preds = %entry
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d_inode.i, align 8
  %cmp.i.not = icmp eq ptr %6, null
  br i1 %cmp.i.not, label %lor.lhs.false2.no_post_op_attrs_crit_edge, label %if.end

lor.lhs.false2.no_post_op_attrs_crit_edge:        ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #6
  br label %no_post_op_attrs

if.end:                                           ; preds = %lor.lhs.false2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p.i) #4
  %7 = getelementptr inbounds %struct.path, ptr %p.i, i32 0, i32 1
  %fh_export.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 3
  %8 = ptrtoint ptr %fh_export.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fh_export.i, align 4
  %ex_path.i = getelementptr inbounds %struct.svc_export, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %ex_path.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ex_path.i, align 8
  %12 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %p.i, align 4
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %1, ptr %7, align 4
  %call.i = call i32 @vfs_getattr(ptr noundef nonnull %p.i, ptr noundef nonnull %stat, i32 noundef 2047, i32 noundef 0) #4
  %call2.i = call i32 @nfserrno(i32 noundef %call.i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.not = icmp eq i32 %call2.i, 0
  br i1 %cmp.not, label %if.end5, label %if.end.no_post_op_attrs_crit_edge

if.end.no_post_op_attrs_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %no_post_op_attrs

if.end5:                                          ; preds = %if.end
  %call.i24 = call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i = icmp eq ptr %call.i24, null
  br i1 %tobool.not.i, label %if.end5.cleanup_crit_edge, label %if.end9, !prof !15

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %call.i24 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %call.i24, align 4
  %15 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d_inode.i, align 8
  %mtime = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 13
  call void @lease_get_mtime(ptr noundef %16, ptr noundef %mtime) #4
  %call11 = call fastcc zeroext i1 @svcxdr_encode_fattr3(ptr noundef %rqstp, ptr noundef %xdr, ptr noundef %fhp, ptr noundef nonnull %stat)
  br label %cleanup

no_post_op_attrs:                                 ; preds = %if.end.no_post_op_attrs_crit_edge, %lor.lhs.false2.no_post_op_attrs_crit_edge, %entry.no_post_op_attrs_crit_edge
  %call.i26 = call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i27 = icmp eq ptr %call.i26, null
  br i1 %tobool.not.i27, label %no_post_op_attrs.xdr_stream_encode_item_absent.exit_crit_edge, label %if.end.i28, !prof !15

no_post_op_attrs.xdr_stream_encode_item_absent.exit_crit_edge: ; preds = %no_post_op_attrs
  call void @__sanitizer_cov_trace_pc() #6
  br label %xdr_stream_encode_item_absent.exit

if.end.i28:                                       ; preds = %no_post_op_attrs
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %call.i26 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %call.i26, align 4
  br label %xdr_stream_encode_item_absent.exit

xdr_stream_encode_item_absent.exit:               ; preds = %if.end.i28, %no_post_op_attrs.xdr_stream_encode_item_absent.exit_crit_edge
  %18 = xor i1 %tobool.not.i27, true
  br label %cleanup

cleanup:                                          ; preds = %xdr_stream_encode_item_absent.exit, %if.end9, %if.end5.cleanup_crit_edge
  %retval.0 = phi i1 [ %18, %xdr_stream_encode_item_absent.exit ], [ %call11, %if.end9 ], [ false, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %stat) #4
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lease_get_mtime(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @svcxdr_encode_fattr3(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr, ptr noundef %fhp, ptr nocapture noundef readonly %stat) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_xprt.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %0 = ptrtoint ptr %rq_xprt.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_xprt.i, align 8
  %xpt_cred.i = getelementptr inbounds %struct.svc_xprt, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %xpt_cred.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xpt_cred.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.nfsd_user_namespace.exit_crit_edge, label %cond.true.i

entry.nfsd_user_namespace.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfsd_user_namespace.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %user_ns.i, align 4
  br label %nfsd_user_namespace.exit

nfsd_user_namespace.exit:                         ; preds = %cond.true.i, %entry.nfsd_user_namespace.exit_crit_edge
  %cond.i = phi ptr [ %5, %cond.true.i ], [ @init_user_ns, %entry.nfsd_user_namespace.exit_crit_edge ]
  %call1 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 84) #4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %nfsd_user_namespace.exit.cleanup_crit_edge, label %if.end

nfsd_user_namespace.exit.cleanup_crit_edge:       ; preds = %nfsd_user_namespace.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %nfsd_user_namespace.exit
  %mode = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 1
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mode, align 4
  %8 = lshr i16 %7, 12
  %9 = zext i16 %8 to i32
  %arrayidx = getelementptr [16 x i32], ptr @nfs3_ftypes, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %incdec.ptr = getelementptr i32, ptr %call1, i32 1
  %12 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %call1, align 4
  %13 = load i16, ptr %mode, align 4
  %14 = and i16 %13, 4095
  %and4 = zext i16 %14 to i32
  %incdec.ptr5 = getelementptr i32, ptr %call1, i32 2
  %15 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and4, ptr %incdec.ptr, align 4
  %nlink = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 2
  %16 = ptrtoint ptr %nlink to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nlink, align 8
  %incdec.ptr6 = getelementptr i32, ptr %call1, i32 3
  %18 = ptrtoint ptr %incdec.ptr5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %incdec.ptr5, align 4
  %uid = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 9
  %19 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack = load i32, ptr %uid, align 8
  %20 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call7 = tail call i32 @from_kuid_munged(ptr noundef %cond.i, [1 x i32] %20) #4
  %incdec.ptr8 = getelementptr i32, ptr %call1, i32 4
  %21 = ptrtoint ptr %incdec.ptr6 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call7, ptr %incdec.ptr6, align 4
  %gid = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 10
  %22 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %22)
  %.unpack80 = load i32, ptr %gid, align 4
  %23 = insertvalue [1 x i32] undef, i32 %.unpack80, 0
  %call10 = tail call i32 @from_kgid_munged(ptr noundef %cond.i, [1 x i32] %23) #4
  %incdec.ptr11 = getelementptr i32, ptr %call1, i32 5
  %24 = ptrtoint ptr %incdec.ptr8 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call10, ptr %incdec.ptr8, align 4
  %25 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %mode, align 4
  %27 = and i16 %26, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %27)
  %cmp = icmp eq i16 %27, -24576
  br i1 %cmp, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %size = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 11
  %28 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4096, i64 %29)
  %cmp16 = icmp sgt i64 %29, 4096
  br i1 %cmp16, label %land.lhs.true.if.end22_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %size20 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 11
  %30 = ptrtoint ptr %size20 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %size20, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.else, %land.lhs.true.if.end22_crit_edge
  %storemerge = phi i64 [ %31, %if.else ], [ 4096, %land.lhs.true.if.end22_crit_edge ]
  %32 = ptrtoint ptr %incdec.ptr11 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 8)
  store i64 %storemerge, ptr %incdec.ptr11, align 1
  %p.0 = getelementptr i32, ptr %call1, i32 7
  %blocks = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 16
  %33 = ptrtoint ptr %blocks to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %blocks, align 8
  %shl = shl i64 %34, 9
  %35 = ptrtoint ptr %p.0 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 8)
  store i64 %shl, ptr %p.0, align 1
  %add.ptr.i82 = getelementptr i32, ptr %call1, i32 9
  %rdev = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 8
  %36 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rdev, align 4
  %shr24 = lshr i32 %37, 20
  %incdec.ptr25 = getelementptr i32, ptr %call1, i32 10
  %38 = ptrtoint ptr %add.ptr.i82 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %shr24, ptr %add.ptr.i82, align 4
  %39 = load i32, ptr %rdev, align 4
  %and27 = and i32 %39, 1048575
  %incdec.ptr28 = getelementptr i32, ptr %call1, i32 11
  %40 = ptrtoint ptr %incdec.ptr25 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %and27, ptr %incdec.ptr25, align 4
  %call29 = tail call i32 @fsid_source(ptr noundef %fhp) #4
  %41 = zext i32 %call29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call29, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb31
  ]

sw.bb:                                            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  %fh_export = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 3
  %42 = ptrtoint ptr %fh_export to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fh_export, align 4
  %ex_fsid = getelementptr inbounds %struct.svc_export, ptr %43, i32 0, i32 6
  %44 = ptrtoint ptr %ex_fsid to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ex_fsid, align 8
  %conv30 = sext i32 %45 to i64
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  %fh_export32 = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 3
  %46 = ptrtoint ptr %fh_export32 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fh_export32, align 4
  %ex_uuid = getelementptr inbounds %struct.svc_export, ptr %47, i32 0, i32 7
  %48 = ptrtoint ptr %ex_uuid to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ex_uuid, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %49, align 8
  %arrayidx36 = getelementptr i64, ptr %49, i32 1
  %52 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %arrayidx36, align 8
  %xor = xor i64 %53, %51
  br label %sw.epilog

sw.default:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  %fh_dentry = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 2
  %54 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fh_dentry, align 8
  %d_sb = getelementptr inbounds %struct.dentry, ptr %55, i32 0, i32 9
  %56 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %d_sb, align 4
  %s_dev = getelementptr inbounds %struct.super_block, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %s_dev, align 8
  %and1.i.i = and i32 %59, 255
  %60 = lshr i32 %59, 12
  %shl.i.i = and i32 %60, 1048320
  %or.i.i = or i32 %shl.i.i, %and1.i.i
  %and2.i.i = shl i32 %59, 12
  %shl3.i.i = and i32 %and2.i.i, -1048576
  %or4.i.i = or i32 %or.i.i, %shl3.i.i
  %conv.i = zext i32 %or4.i.i to i64
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb31, %sw.bb
  %fsid.0 = phi i64 [ %conv.i, %sw.default ], [ %xor, %sw.bb31 ], [ %conv30, %sw.bb ]
  %61 = ptrtoint ptr %incdec.ptr28 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 8)
  store i64 %fsid.0, ptr %incdec.ptr28, align 1
  %add.ptr.i83 = getelementptr i32, ptr %call1, i32 13
  %ino = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 6
  %62 = ptrtoint ptr %ino to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %ino, align 8
  %64 = ptrtoint ptr %add.ptr.i83 to i32
  call void @__asan_storeN_noabort(i32 %64, i32 8)
  store i64 %63, ptr %add.ptr.i83, align 1
  %add.ptr.i84 = getelementptr i32, ptr %call1, i32 15
  %atime = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 12
  %65 = ptrtoint ptr %atime to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %atime, align 8
  %conv.i85 = trunc i64 %66 to i32
  %incdec.ptr.i = getelementptr i32, ptr %call1, i32 16
  %67 = ptrtoint ptr %add.ptr.i84 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %conv.i85, ptr %add.ptr.i84, align 4
  %tv_nsec.i = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 12, i32 1
  %68 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tv_nsec.i, align 8
  %incdec.ptr1.i = getelementptr i32, ptr %call1, i32 17
  %70 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %incdec.ptr.i, align 4
  %mtime = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 13
  %71 = ptrtoint ptr %mtime to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %mtime, align 8
  %conv.i86 = trunc i64 %72 to i32
  %incdec.ptr.i87 = getelementptr i32, ptr %call1, i32 18
  %73 = ptrtoint ptr %incdec.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %conv.i86, ptr %incdec.ptr1.i, align 4
  %tv_nsec.i88 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 13, i32 1
  %74 = ptrtoint ptr %tv_nsec.i88 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tv_nsec.i88, align 8
  %incdec.ptr1.i89 = getelementptr i32, ptr %call1, i32 19
  %76 = ptrtoint ptr %incdec.ptr.i87 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %incdec.ptr.i87, align 4
  %ctime = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 14
  %77 = ptrtoint ptr %ctime to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %ctime, align 8
  %conv.i90 = trunc i64 %78 to i32
  %incdec.ptr.i91 = getelementptr i32, ptr %call1, i32 20
  %79 = ptrtoint ptr %incdec.ptr1.i89 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %conv.i90, ptr %incdec.ptr1.i89, align 4
  %tv_nsec.i92 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 14, i32 1
  %80 = ptrtoint ptr %tv_nsec.i92 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %tv_nsec.i92, align 8
  %82 = ptrtoint ptr %incdec.ptr.i91 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %incdec.ptr.i91, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %nfsd_user_namespace.exit.cleanup_crit_edge
  %83 = xor i1 %tobool.not, true
  ret i1 %83
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs3svc_decode_fhandleargs(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %call.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.svcxdr_decode_nfs_fh3.exit_crit_edge, label %if.end.i, !prof !15

entry.svcxdr_decode_nfs_fh3.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %svcxdr_decode_nfs_fh3.exit

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call.i.i, align 4
  %4 = add i32 %3, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64, i32 %4)
  %5 = icmp ult i32 %4, -64
  br i1 %5, label %if.end.i.svcxdr_decode_nfs_fh3.exit_crit_edge, label %if.end4.i

if.end.i.svcxdr_decode_nfs_fh3.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %svcxdr_decode_nfs_fh3.exit

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %3) #4
  %tobool.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool.not.i, label %if.end4.i.svcxdr_decode_nfs_fh3.exit_crit_edge, label %if.end7.i

if.end4.i.svcxdr_decode_nfs_fh3.exit_crit_edge:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %svcxdr_decode_nfs_fh3.exit

if.end7.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  %6 = call ptr @memset(ptr %1, i32 0, i32 360)
  %fh_maxsize.i.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %fh_maxsize.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 64, ptr %fh_maxsize.i.i, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %3, ptr %1, align 8
  %9 = getelementptr inbounds %struct.knfsd_fh, ptr %1, i32 0, i32 1
  %10 = call ptr @memcpy(ptr %9, ptr %call5.i, i32 %3)
  br label %svcxdr_decode_nfs_fh3.exit

svcxdr_decode_nfs_fh3.exit:                       ; preds = %if.end7.i, %if.end4.i.svcxdr_decode_nfs_fh3.exit_crit_edge, %if.end.i.svcxdr_decode_nfs_fh3.exit_crit_edge, %entry.svcxdr_decode_nfs_fh3.exit_crit_edge
  %retval.0.i = phi i1 [ true, %if.end7.i ], [ false, %if.end.i.svcxdr_decode_nfs_fh3.exit_crit_edge ], [ false, %if.end4.i.svcxdr_decode_nfs_fh3.exit_crit_edge ], [ false, %entry.svcxdr_decode_nfs_fh3.exit_crit_edge ]
  ret i1 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs3svc_decode_sattrargs(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %call.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.land.end_crit_edge, label %if.end.i, !prof !15

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call.i.i, align 4
  %4 = add i32 %3, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64, i32 %4)
  %5 = icmp ult i32 %4, -64
  br i1 %5, label %if.end.i.land.end_crit_edge, label %if.end4.i

if.end.i.land.end_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %3) #4
  %tobool.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool.not.i, label %if.end4.i.land.end_crit_edge, label %land.lhs.true

if.end4.i.land.end_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.lhs.true:                                    ; preds = %if.end4.i
  %6 = call ptr @memset(ptr %1, i32 0, i32 360)
  %fh_maxsize.i.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %fh_maxsize.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 64, ptr %fh_maxsize.i.i, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %3, ptr %1, align 8
  %9 = getelementptr inbounds %struct.knfsd_fh, ptr %1, i32 0, i32 1
  %10 = call ptr @memcpy(ptr %9, ptr %call5.i, i32 %3)
  %attrs = getelementptr inbounds %struct.nfsd3_sattrargs, ptr %1, i32 0, i32 1
  %call1 = tail call fastcc zeroext i1 @svcxdr_decode_sattr3(ptr noundef %rqstp, ptr noundef %xdr, ptr noundef %attrs)
  br i1 %call1, label %land.rhs, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %call.i.i8 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i.i9 = icmp eq ptr %call.i.i8, null
  br i1 %tobool.not.i.i9, label %land.rhs.land.end_crit_edge, label %if.end.i10, !prof !15

land.rhs.land.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

if.end.i10:                                       ; preds = %land.rhs
  %11 = ptrtoint ptr %call.i.i8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call.i.i8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i.not.i = icmp eq i32 %12, 0
  br i1 %cmp.i.not.i, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i10
  %call2.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 8) #4
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.then1.i.land.end_crit_edge, label %if.end5.i

if.then1.i.land.end_crit_edge:                    ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

if.end5.i:                                        ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #6
  %check_guard.i = getelementptr inbounds %struct.nfsd3_sattrargs, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %check_guard.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %check_guard.i, align 8
  %14 = ptrtoint ptr %call2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call2.i, align 4
  %conv.i = zext i32 %15 to i64
  %guardtime.i = getelementptr inbounds %struct.nfsd3_sattrargs, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %guardtime.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv.i, ptr %guardtime.i, align 8
  br label %land.end

if.else.i:                                        ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #6
  %check_guard7.i = getelementptr inbounds %struct.nfsd3_sattrargs, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %check_guard7.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %check_guard7.i, align 8
  br label %land.end

land.end:                                         ; preds = %if.else.i, %if.end5.i, %if.then1.i.land.end_crit_edge, %land.rhs.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %if.end4.i.land.end_crit_edge, %if.end.i.land.end_crit_edge, %entry.land.end_crit_edge
  %18 = phi i1 [ false, %land.lhs.true.land.end_crit_edge ], [ false, %if.then1.i.land.end_crit_edge ], [ true, %if.else.i ], [ true, %if.end5.i ], [ false, %land.rhs.land.end_crit_edge ], [ false, %if.end.i.land.end_crit_edge ], [ false, %if.end4.i.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ]
  ret i1 %18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @svcxdr_decode_sattr3(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr, ptr noundef %iap) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iap to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %iap, align 8
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup107_crit_edge, label %if.end, !prof !15

entry.cleanup107_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup107

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i.not = icmp eq i32 %2, 0
  br i1 %cmp.i.not, label %if.end.if.end7_crit_edge, label %if.then1

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then1:                                         ; preds = %if.end
  %call.i147 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i148 = icmp eq ptr %call.i147, null
  br i1 %tobool.not.i148, label %if.then1.cleanup107_crit_edge, label %if.end5, !prof !15

if.then1.cleanup107_crit_edge:                    ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup107

if.end5:                                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %call.i147 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call.i147, align 4
  %5 = ptrtoint ptr %iap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iap, align 8
  %or = or i32 %6, 1
  store i32 %or, ptr %iap, align 8
  %conv = trunc i32 %4 to i16
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %iap, i32 0, i32 1
  %7 = ptrtoint ptr %ia_mode to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %ia_mode, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end5, %if.end.if.end7_crit_edge
  %call.i151 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i152 = icmp eq ptr %call.i151, null
  br i1 %tobool.not.i152, label %if.end7.cleanup107_crit_edge, label %if.end12, !prof !15

if.end7.cleanup107_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup107

if.end12:                                         ; preds = %if.end7
  %8 = ptrtoint ptr %call.i151 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call.i151, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i153.not = icmp eq i32 %9, 0
  br i1 %cmp.i153.not, label %if.end12.if.end32_crit_edge, label %if.then14

if.end12.if.end32_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

if.then14:                                        ; preds = %if.end12
  %call.i158 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i159 = icmp eq ptr %call.i158, null
  br i1 %tobool.not.i159, label %if.then14.cleanup107_crit_edge, label %if.end19, !prof !15

if.then14.cleanup107_crit_edge:                   ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup107

if.end19:                                         ; preds = %if.then14
  %10 = ptrtoint ptr %call.i158 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call.i158, align 4
  %ia_uid = getelementptr inbounds %struct.iattr, ptr %iap, i32 0, i32 2
  %rq_xprt.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %12 = ptrtoint ptr %rq_xprt.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rq_xprt.i, align 8
  %xpt_cred.i = getelementptr inbounds %struct.svc_xprt, ptr %13, i32 0, i32 20
  %14 = ptrtoint ptr %xpt_cred.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xpt_cred.i, align 4
  %tobool.not.i163 = icmp eq ptr %15, null
  br i1 %tobool.not.i163, label %if.end19.nfsd_user_namespace.exit_crit_edge, label %cond.true.i

if.end19.nfsd_user_namespace.exit_crit_edge:      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfsd_user_namespace.exit

cond.true.i:                                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %15, i32 0, i32 25
  %16 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %user_ns.i, align 4
  br label %nfsd_user_namespace.exit

nfsd_user_namespace.exit:                         ; preds = %cond.true.i, %if.end19.nfsd_user_namespace.exit_crit_edge
  %cond.i = phi ptr [ %17, %cond.true.i ], [ @init_user_ns, %if.end19.nfsd_user_namespace.exit_crit_edge ]
  %call21 = tail call i32 @make_kuid(ptr noundef %cond.i, i32 noundef %11) #4
  %18 = ptrtoint ptr %ia_uid to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call21, ptr %ia_uid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call21)
  %cmp.i164.not = icmp eq i32 %call21, -1
  br i1 %cmp.i164.not, label %nfsd_user_namespace.exit.if.end32_crit_edge, label %if.then25

nfsd_user_namespace.exit.if.end32_crit_edge:      ; preds = %nfsd_user_namespace.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

if.then25:                                        ; preds = %nfsd_user_namespace.exit
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %iap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iap, align 8
  %or27 = or i32 %20, 2
  store i32 %or27, ptr %iap, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then25, %nfsd_user_namespace.exit.if.end32_crit_edge, %if.end12.if.end32_crit_edge
  %call.i165 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i166 = icmp eq ptr %call.i165, null
  br i1 %tobool.not.i166, label %if.end32.cleanup107_crit_edge, label %if.end37, !prof !15

if.end32.cleanup107_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup107

if.end37:                                         ; preds = %if.end32
  %21 = ptrtoint ptr %call.i165 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %call.i165, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i167.not = icmp eq i32 %22, 0
  br i1 %cmp.i167.not, label %if.end37.if.end59_crit_edge, label %if.then39

if.end37.if.end59_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end59

if.then39:                                        ; preds = %if.end37
  %call.i172 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i173 = icmp eq ptr %call.i172, null
  br i1 %tobool.not.i173, label %if.then39.cleanup107_crit_edge, label %if.end44, !prof !15

if.then39.cleanup107_crit_edge:                   ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup107

if.end44:                                         ; preds = %if.then39
  %23 = ptrtoint ptr %call.i172 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %call.i172, align 4
  %ia_gid = getelementptr inbounds %struct.iattr, ptr %iap, i32 0, i32 3
  %rq_xprt.i177 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %25 = ptrtoint ptr %rq_xprt.i177 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rq_xprt.i177, align 8
  %xpt_cred.i178 = getelementptr inbounds %struct.svc_xprt, ptr %26, i32 0, i32 20
  %27 = ptrtoint ptr %xpt_cred.i178 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %xpt_cred.i178, align 4
  %tobool.not.i179 = icmp eq ptr %28, null
  br i1 %tobool.not.i179, label %if.end44.nfsd_user_namespace.exit183_crit_edge, label %cond.true.i181

if.end44.nfsd_user_namespace.exit183_crit_edge:   ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfsd_user_namespace.exit183

cond.true.i181:                                   ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  %user_ns.i180 = getelementptr inbounds %struct.cred, ptr %28, i32 0, i32 25
  %29 = ptrtoint ptr %user_ns.i180 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %user_ns.i180, align 4
  br label %nfsd_user_namespace.exit183

nfsd_user_namespace.exit183:                      ; preds = %cond.true.i181, %if.end44.nfsd_user_namespace.exit183_crit_edge
  %cond.i182 = phi ptr [ %30, %cond.true.i181 ], [ @init_user_ns, %if.end44.nfsd_user_namespace.exit183_crit_edge ]
  %call47 = tail call i32 @make_kgid(ptr noundef %cond.i182, i32 noundef %24) #4
  %31 = ptrtoint ptr %ia_gid to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call47, ptr %ia_gid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call47)
  %cmp.i184.not = icmp eq i32 %call47, -1
  br i1 %cmp.i184.not, label %nfsd_user_namespace.exit183.if.end59_crit_edge, label %if.then52

nfsd_user_namespace.exit183.if.end59_crit_edge:   ; preds = %nfsd_user_namespace.exit183
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end59

if.then52:                                        ; preds = %nfsd_user_namespace.exit183
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %iap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %iap, align 8
  %or54 = or i32 %33, 4
  store i32 %or54, ptr %iap, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.then52, %nfsd_user_namespace.exit183.if.end59_crit_edge, %if.end37.if.end59_crit_edge
  %call.i185 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i186 = icmp eq ptr %call.i185, null
  br i1 %tobool.not.i186, label %if.end59.cleanup107_crit_edge, label %if.end64, !prof !15

if.end59.cleanup107_crit_edge:                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup107

if.end64:                                         ; preds = %if.end59
  %34 = ptrtoint ptr %call.i185 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %call.i185, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i187.not = icmp eq i32 %35, 0
  br i1 %cmp.i187.not, label %if.end64.if.end77_crit_edge, label %if.then66

if.end64.if.end77_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end77

if.then66:                                        ; preds = %if.end64
  %call.i192 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 8) #4
  %tobool.not.i193 = icmp eq ptr %call.i192, null
  br i1 %tobool.not.i193, label %if.then66.cleanup107_crit_edge, label %if.end71, !prof !15

if.then66.cleanup107_crit_edge:                   ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup107

if.end71:                                         ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %call.i192 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 8)
  %37 = load i64, ptr %call.i192, align 1
  %38 = ptrtoint ptr %iap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %iap, align 8
  %or73 = or i32 %39, 8
  store i32 %or73, ptr %iap, align 8
  %ia_size = getelementptr inbounds %struct.iattr, ptr %iap, i32 0, i32 4
  %40 = ptrtoint ptr %ia_size to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %37, ptr %ia_size, align 8
  br label %if.end77

if.end77:                                         ; preds = %if.end71, %if.end64.if.end77_crit_edge
  %call.i196 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i197 = icmp eq ptr %call.i196, null
  br i1 %tobool.not.i197, label %if.end77.cleanup107_crit_edge, label %if.end82, !prof !15

if.end77.cleanup107_crit_edge:                    ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup107

if.end82:                                         ; preds = %if.end77
  %41 = ptrtoint ptr %call.i196 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %call.i196, align 4
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %42, label %if.end82.cleanup107_crit_edge [
    i32 0, label %if.end82.sw.epilog_crit_edge
    i32 1, label %if.end82.sw.epilog.sink.split_crit_edge
    i32 2, label %sw.bb85
  ]

if.end82.sw.epilog.sink.split_crit_edge:          ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

if.end82.sw.epilog_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end82.cleanup107_crit_edge:                    ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup107

sw.bb85:                                          ; preds = %if.end82
  %call.i201 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 8) #4
  %tobool.not.i202 = icmp eq ptr %call.i201, null
  br i1 %tobool.not.i202, label %sw.bb85.cleanup107_crit_edge, label %if.end88

sw.bb85.cleanup107_crit_edge:                     ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup107

if.end88:                                         ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #6
  %ia_atime = getelementptr inbounds %struct.iattr, ptr %iap, i32 0, i32 5
  %incdec.ptr.i = getelementptr i32, ptr %call.i201, i32 1
  %44 = ptrtoint ptr %call.i201 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %call.i201, align 4
  %conv.i203 = zext i32 %45 to i64
  %46 = ptrtoint ptr %ia_atime to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %conv.i203, ptr %ia_atime, align 8
  %47 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %incdec.ptr.i, align 4
  %tv_nsec.i = getelementptr inbounds %struct.iattr, ptr %iap, i32 0, i32 5, i32 1
  %49 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %tv_nsec.i, align 8
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.end88, %if.end82.sw.epilog.sink.split_crit_edge
  %.sink252 = phi i32 [ 144, %if.end88 ], [ 16, %if.end82.sw.epilog.sink.split_crit_edge ]
  %50 = ptrtoint ptr %iap to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %iap, align 8
  %or90 = or i32 %51, %.sink252
  store i32 %or90, ptr %iap, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end82.sw.epilog_crit_edge
  %call.i205 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i206 = icmp eq ptr %call.i205, null
  br i1 %tobool.not.i206, label %sw.epilog.cleanup107_crit_edge, label %if.end95, !prof !15

sw.epilog.cleanup107_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup107

if.end95:                                         ; preds = %sw.epilog
  %52 = ptrtoint ptr %call.i205 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %call.i205, align 4
  %54 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %53, label %if.end95.cleanup107_crit_edge [
    i32 0, label %if.end95.sw.epilog106_crit_edge
    i32 1, label %if.end95.sw.epilog106.sink.split_crit_edge
    i32 2, label %sw.bb99
  ]

if.end95.sw.epilog106.sink.split_crit_edge:       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog106.sink.split

if.end95.sw.epilog106_crit_edge:                  ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog106

if.end95.cleanup107_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup107

sw.bb99:                                          ; preds = %if.end95
  %call.i210 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 8) #4
  %tobool.not.i211 = icmp eq ptr %call.i210, null
  br i1 %tobool.not.i211, label %sw.bb99.cleanup107_crit_edge, label %if.end102

sw.bb99.cleanup107_crit_edge:                     ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup107

if.end102:                                        ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #6
  %ia_mtime = getelementptr inbounds %struct.iattr, ptr %iap, i32 0, i32 6
  %incdec.ptr.i212 = getelementptr i32, ptr %call.i210, i32 1
  %55 = ptrtoint ptr %call.i210 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %call.i210, align 4
  %conv.i213 = zext i32 %56 to i64
  %57 = ptrtoint ptr %ia_mtime to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %conv.i213, ptr %ia_mtime, align 8
  %58 = ptrtoint ptr %incdec.ptr.i212 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %incdec.ptr.i212, align 4
  %tv_nsec.i214 = getelementptr inbounds %struct.iattr, ptr %iap, i32 0, i32 6, i32 1
  %60 = ptrtoint ptr %tv_nsec.i214 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %tv_nsec.i214, align 8
  br label %sw.epilog106.sink.split

sw.epilog106.sink.split:                          ; preds = %if.end102, %if.end95.sw.epilog106.sink.split_crit_edge
  %.sink253 = phi i32 [ 288, %if.end102 ], [ 32, %if.end95.sw.epilog106.sink.split_crit_edge ]
  %61 = ptrtoint ptr %iap to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %iap, align 8
  %or104 = or i32 %62, %.sink253
  store i32 %or104, ptr %iap, align 8
  br label %sw.epilog106

sw.epilog106:                                     ; preds = %sw.epilog106.sink.split, %if.end95.sw.epilog106_crit_edge
  br label %cleanup107

cleanup107:                                       ; preds = %sw.epilog106, %sw.bb99.cleanup107_crit_edge, %if.end95.cleanup107_crit_edge, %sw.epilog.cleanup107_crit_edge, %sw.bb85.cleanup107_crit_edge, %if.end82.cleanup107_crit_edge, %if.end77.cleanup107_crit_edge, %if.then66.cleanup107_crit_edge, %if.end59.cleanup107_crit_edge, %if.then39.cleanup107_crit_edge, %if.end32.cleanup107_crit_edge, %if.then14.cleanup107_crit_edge, %if.end7.cleanup107_crit_edge, %if.then1.cleanup107_crit_edge, %entry.cleanup107_crit_edge
  %retval.7 = phi i1 [ true, %sw.epilog106 ], [ false, %if.end82.cleanup107_crit_edge ], [ false, %if.end95.cleanup107_crit_edge ], [ false, %sw.bb85.cleanup107_crit_edge ], [ false, %sw.bb99.cleanup107_crit_edge ], [ false, %if.then1.cleanup107_crit_edge ], [ false, %if.then14.cleanup107_crit_edge ], [ false, %if.then39.cleanup107_crit_edge ], [ false, %if.then66.cleanup107_crit_edge ], [ false, %entry.cleanup107_crit_edge ], [ false, %if.end7.cleanup107_crit_edge ], [ false, %if.end32.cleanup107_crit_edge ], [ false, %if.end59.cleanup107_crit_edge ], [ false, %if.end77.cleanup107_crit_edge ], [ false, %sw.epilog.cleanup107_crit_edge ]
  ret i1 %retval.7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs3svc_decode_diropargs(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %name = getelementptr inbounds %struct.nfsd3_diropargs, ptr %1, i32 0, i32 1
  %len = getelementptr inbounds %struct.nfsd3_diropargs, ptr %1, i32 0, i32 2
  %call = tail call fastcc zeroext i1 @svcxdr_decode_diropargs3(ptr noundef %xdr, ptr noundef %1, ptr noundef %name, ptr noundef %len)
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @svcxdr_decode_diropargs3(ptr noundef %xdr, ptr nocapture noundef writeonly %fhp, ptr nocapture noundef writeonly %name, ptr nocapture noundef writeonly %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.land.end_crit_edge, label %if.end.i, !prof !15

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call.i.i, align 4
  %2 = add i32 %1, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64, i32 %2)
  %3 = icmp ult i32 %2, -64
  br i1 %3, label %if.end.i.land.end_crit_edge, label %if.end4.i

if.end.i.land.end_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %1) #4
  %tobool.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool.not.i, label %if.end4.i.land.end_crit_edge, label %land.rhs

if.end4.i.land.end_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.rhs:                                         ; preds = %if.end4.i
  %4 = call ptr @memset(ptr %fhp, i32 0, i32 360)
  %fh_maxsize.i.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 1
  %5 = ptrtoint ptr %fh_maxsize.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 64, ptr %fh_maxsize.i.i, align 4
  %6 = ptrtoint ptr %fhp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %1, ptr %fhp, align 8
  %7 = getelementptr inbounds %struct.knfsd_fh, ptr %fhp, i32 0, i32 1
  %8 = call ptr @memcpy(ptr %7, ptr %call5.i, i32 %1)
  %call.i.i3 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i.i4 = icmp eq ptr %call.i.i3, null
  br i1 %tobool.not.i.i4, label %land.rhs.land.end_crit_edge, label %if.end.i5, !prof !15

land.rhs.land.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

if.end.i5:                                        ; preds = %land.rhs
  %9 = ptrtoint ptr %call.i.i3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call.i.i3, align 4
  %11 = add i32 %10, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255, i32 %11)
  %12 = icmp ult i32 %11, -255
  br i1 %12, label %if.end.i5.land.end_crit_edge, label %if.end4.i8

if.end.i5.land.end_crit_edge:                     ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

if.end4.i8:                                       ; preds = %if.end.i5
  %call5.i6 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %10) #4
  %tobool.not.i7 = icmp eq ptr %call5.i6, null
  br i1 %tobool.not.i7, label %if.end4.i8.land.end_crit_edge, label %for.body.preheader.i

if.end4.i8.land.end_crit_edge:                    ; preds = %if.end4.i8
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

for.body.preheader.i:                             ; preds = %if.end4.i8
  %13 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %10, ptr %len, align 4
  %14 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call5.i6, ptr %name, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %c.033.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %call5.i6, %for.body.preheader.i ]
  %i.032.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %15 = ptrtoint ptr %c.033.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %c.033.i, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %16, label %for.inc.i [
    i8 0, label %for.body.i.land.end_crit_edge
    i8 47, label %for.body.i.land.end_crit_edge11
  ]

for.body.i.land.end_crit_edge11:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

for.body.i.land.end_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.032.i, 1
  %incdec.ptr.i = getelementptr i8, ptr %c.033.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %10
  br i1 %exitcond.not.i, label %for.inc.i.land.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.land.end_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.end:                                         ; preds = %for.inc.i.land.end_crit_edge, %for.body.i.land.end_crit_edge, %for.body.i.land.end_crit_edge11, %if.end4.i8.land.end_crit_edge, %if.end.i5.land.end_crit_edge, %land.rhs.land.end_crit_edge, %if.end4.i.land.end_crit_edge, %if.end.i.land.end_crit_edge, %entry.land.end_crit_edge
  %18 = phi i1 [ false, %if.end.i5.land.end_crit_edge ], [ false, %if.end4.i8.land.end_crit_edge ], [ false, %land.rhs.land.end_crit_edge ], [ false, %if.end.i.land.end_crit_edge ], [ false, %if.end4.i.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ], [ true, %for.inc.i.land.end_crit_edge ], [ false, %for.body.i.land.end_crit_edge ], [ false, %for.body.i.land.end_crit_edge11 ]
  ret i1 %18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs3svc_decode_accessargs(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %call.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !15

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call.i.i, align 4
  %4 = add i32 %3, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64, i32 %4)
  %5 = icmp ult i32 %4, -64
  br i1 %5, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %3) #4
  %tobool.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool.not.i, label %if.end4.i.cleanup_crit_edge, label %if.end

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %if.end4.i
  %6 = call ptr @memset(ptr %1, i32 0, i32 360)
  %fh_maxsize.i.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %fh_maxsize.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 64, ptr %fh_maxsize.i.i, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %3, ptr %1, align 8
  %9 = getelementptr inbounds %struct.knfsd_fh, ptr %1, i32 0, i32 1
  %10 = call ptr @memcpy(ptr %9, ptr %call5.i, i32 %3)
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i6 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i6, label %if.end.cleanup_crit_edge, label %xdr_stream_decode_u32.exit, !prof !15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

xdr_stream_decode_u32.exit:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %access = getelementptr inbounds %struct.nfsd3_accessargs, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call.i, align 4
  %13 = ptrtoint ptr %access to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %access, align 4
  br label %cleanup

cleanup:                                          ; preds = %xdr_stream_decode_u32.exit, %if.end.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %xdr_stream_decode_u32.exit ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.end.i.cleanup_crit_edge ], [ false, %if.end4.i.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs3svc_decode_readargs(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %call.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !15

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call.i.i, align 4
  %4 = add i32 %3, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64, i32 %4)
  %5 = icmp ult i32 %4, -64
  br i1 %5, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %3) #4
  %tobool.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool.not.i, label %if.end4.i.cleanup_crit_edge, label %if.end

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %if.end4.i
  %6 = call ptr @memset(ptr %1, i32 0, i32 360)
  %fh_maxsize.i.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %fh_maxsize.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 64, ptr %fh_maxsize.i.i, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %3, ptr %1, align 8
  %9 = getelementptr inbounds %struct.knfsd_fh, ptr %1, i32 0, i32 1
  %10 = call ptr @memcpy(ptr %9, ptr %call5.i, i32 %3)
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 8) #4
  %tobool.not.i12 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i12, label %if.end.cleanup_crit_edge, label %if.end3, !prof !15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %offset = getelementptr inbounds %struct.nfsd3_readargs, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %call.i, align 1
  %13 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %offset, align 8
  %call.i15 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i16 = icmp eq ptr %call.i15, null
  br i1 %tobool.not.i16, label %if.end3.cleanup_crit_edge, label %xdr_stream_decode_u32.exit, !prof !15

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

xdr_stream_decode_u32.exit:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %count = getelementptr inbounds %struct.nfsd3_readargs, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %call.i15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call.i15, align 4
  %16 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %count, align 4
  br label %cleanup

cleanup:                                          ; preds = %xdr_stream_decode_u32.exit, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %xdr_stream_decode_u32.exit ], [ false, %if.end3.cleanup_crit_edge ], [ false, %if.end.i.cleanup_crit_edge ], [ false, %if.end4.i.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs3svc_decode_writeargs(ptr noundef %rqstp, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %call = tail call i32 @svc_max_payload(ptr noundef %rqstp) #4
  %call.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !15

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call.i.i, align 4
  %4 = add i32 %3, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64, i32 %4)
  %5 = icmp ult i32 %4, -64
  br i1 %5, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %3) #4
  %tobool.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool.not.i, label %if.end4.i.cleanup_crit_edge, label %if.end

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %if.end4.i
  %6 = call ptr @memset(ptr %1, i32 0, i32 360)
  %fh_maxsize.i.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %fh_maxsize.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 64, ptr %fh_maxsize.i.i, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %3, ptr %1, align 8
  %9 = getelementptr inbounds %struct.knfsd_fh, ptr %1, i32 0, i32 1
  %10 = call ptr @memcpy(ptr %9, ptr %call5.i, i32 %3)
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 8) #4
  %tobool.not.i52 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i52, label %if.end.cleanup_crit_edge, label %if.end4, !prof !15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %offset = getelementptr inbounds %struct.nfsd3_writeargs, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %call.i, align 1
  %13 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %offset, align 8
  %count = getelementptr inbounds %struct.nfsd3_writeargs, ptr %1, i32 0, i32 2
  %call.i55 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i56 = icmp eq ptr %call.i55, null
  br i1 %tobool.not.i56, label %if.end4.cleanup_crit_edge, label %if.end8, !prof !15

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %14 = ptrtoint ptr %call.i55 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call.i55, align 4
  %16 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %count, align 4
  %call.i59 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i60 = icmp eq ptr %call.i59, null
  br i1 %tobool.not.i60, label %if.end8.cleanup_crit_edge, label %if.end12, !prof !15

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %stable = getelementptr inbounds %struct.nfsd3_writeargs, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %call.i59 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call.i59, align 4
  %19 = ptrtoint ptr %stable to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %stable, align 4
  %len = getelementptr inbounds %struct.nfsd3_writeargs, ptr %1, i32 0, i32 4
  %call.i64 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i65 = icmp eq ptr %call.i64, null
  br i1 %tobool.not.i65, label %if.end12.cleanup_crit_edge, label %if.end16, !prof !15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %20 = ptrtoint ptr %call.i64 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call.i64, align 4
  %22 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %len, align 4
  %23 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %21)
  %cmp19.not = icmp eq i32 %24, %21
  br i1 %cmp19.not, label %if.end21, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %call)
  %cmp23 = icmp ugt i32 %21, %call
  br i1 %cmp23, label %if.then24, label %if.end21.if.end27_crit_edge

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call, ptr %count, align 8
  %26 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call, ptr %len, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end21.if.end27_crit_edge
  %payload = getelementptr inbounds %struct.nfsd3_writeargs, ptr %1, i32 0, i32 5
  %27 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %count, align 8
  %call29 = tail call zeroext i1 @xdr_stream_subsegment(ptr noundef %xdr, ptr noundef %payload, i32 noundef %28) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end16.cleanup_crit_edge ], [ %call29, %if.end27 ], [ false, %if.end.i.cleanup_crit_edge ], [ false, %if.end4.i.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.end4.cleanup_crit_edge ], [ false, %if.end8.cleanup_crit_edge ], [ false, %if.end12.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_max_payload(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xdr_stream_subsegment(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs3svc_decode_createargs(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %name = getelementptr inbounds %struct.nfsd3_createargs, ptr %1, i32 0, i32 1
  %len = getelementptr inbounds %struct.nfsd3_createargs, ptr %1, i32 0, i32 2
  %call = tail call fastcc zeroext i1 @svcxdr_decode_diropargs3(ptr noundef %xdr, ptr noundef %1, ptr noundef %name, ptr noundef %len)
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end3, !prof !15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %createmode = getelementptr inbounds %struct.nfsd3_createargs, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call.i, align 4
  %4 = ptrtoint ptr %createmode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %createmode, align 4
  %5 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %3, label %if.end3.cleanup_crit_edge [
    i32 0, label %if.end3.sw.bb_crit_edge
    i32 1, label %if.end3.sw.bb_crit_edge24
    i32 2, label %sw.bb6
  ]

if.end3.sw.bb_crit_edge24:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end3.sw.bb_crit_edge:                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end3.sw.bb_crit_edge, %if.end3.sw.bb_crit_edge24
  %attrs = getelementptr inbounds %struct.nfsd3_createargs, ptr %1, i32 0, i32 4
  %call5 = tail call fastcc zeroext i1 @svcxdr_decode_sattr3(ptr noundef %rqstp, ptr noundef %xdr, ptr noundef %attrs)
  br label %cleanup

sw.bb6:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %call7 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 8) #4
  %verf = getelementptr inbounds %struct.nfsd3_createargs, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %verf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7, ptr %verf, align 8
  %tobool.not = icmp ne ptr %call7, null
  br label %cleanup

cleanup:                                          ; preds = %sw.bb6, %sw.bb, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %call5, %sw.bb ], [ false, %entry.cleanup_crit_edge ], [ %tobool.not, %sw.bb6 ], [ false, %if.end3.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs3svc_decode_mkdirargs(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %name = getelementptr inbounds %struct.nfsd3_createargs, ptr %1, i32 0, i32 1
  %len = getelementptr inbounds %struct.nfsd3_createargs, ptr %1, i32 0, i32 2
  %call = tail call fastcc zeroext i1 @svcxdr_decode_diropargs3(ptr noundef %xdr, ptr noundef %1, ptr noundef %name, ptr noundef %len)
  br i1 %call, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %attrs = getelementptr inbounds %struct.nfsd3_createargs, ptr %1, i32 0, i32 4
  %call1 = tail call fastcc zeroext i1 @svcxdr_decode_sattr3(ptr noundef %rqstp, ptr noundef %xdr, ptr noundef %attrs)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %2 = phi i1 [ false, %entry.land.end_crit_edge ], [ %call1, %land.rhs ]
  ret i1 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs3svc_decode_symlinkargs(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %fname = getelementptr inbounds %struct.nfsd3_symlinkargs, ptr %1, i32 0, i32 1
  %flen = getelementptr inbounds %struct.nfsd3_symlinkargs, ptr %1, i32 0, i32 2
  %call = tail call fastcc zeroext i1 @svcxdr_decode_diropargs3(ptr noundef %xdr, ptr noundef %1, ptr noundef %fname, ptr noundef %flen)
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %attrs = getelementptr inbounds %struct.nfsd3_symlinkargs, ptr %1, i32 0, i32 5
  %call5 = tail call fastcc zeroext i1 @svcxdr_decode_sattr3(ptr noundef %rqstp, ptr noundef %xdr, ptr noundef %attrs)
  br i1 %call5, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end7.cleanup_crit_edge, label %if.end10, !prof !15

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %tlen = getelementptr inbounds %struct.nfsd3_symlinkargs, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call.i, align 4
  %4 = ptrtoint ptr %tlen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %tlen, align 4
  %iov_len = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iov_len, align 4
  %page_len = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 5
  %7 = ptrtoint ptr %page_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %page_len, align 4
  %add = add i32 %8, %6
  %iov_len12 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %iov_len12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iov_len12, align 4
  %add13 = add i32 %add, %10
  %call14 = tail call i32 @xdr_stream_pos(ptr noundef %xdr) #4
  %sub = sub i32 %add13, %call14
  %11 = ptrtoint ptr %tlen to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tlen, align 4
  %add.i = add i32 %12, 3
  %and.i = and i32 %add.i, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %and.i)
  %cmp17 = icmp ult i32 %sub, %and.i
  br i1 %cmp17, label %if.end10.cleanup_crit_edge, label %if.end19

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end19:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %xdr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xdr, align 4
  %first = getelementptr inbounds %struct.nfsd3_symlinkargs, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %first to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %first, align 8
  %16 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iov_len, align 4
  %call21 = tail call i32 @xdr_stream_pos(ptr noundef %xdr) #4
  %sub22 = sub i32 %17, %call21
  %iov_len24 = getelementptr inbounds %struct.nfsd3_symlinkargs, ptr %1, i32 0, i32 6, i32 1
  %18 = ptrtoint ptr %iov_len24 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub22, ptr %iov_len24, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end10.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end19 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.end10.cleanup_crit_edge ], [ false, %if.end7.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdr_stream_pos(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs3svc_decode_mknodargs(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %name = getelementptr inbounds %struct.nfsd3_mknodargs, ptr %1, i32 0, i32 1
  %len = getelementptr inbounds %struct.nfsd3_mknodargs, ptr %1, i32 0, i32 2
  %call = tail call fastcc zeroext i1 @svcxdr_decode_diropargs3(ptr noundef %xdr, ptr noundef %1, ptr noundef %name, ptr noundef %len)
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end3, !prof !15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %ftype = getelementptr inbounds %struct.nfsd3_mknodargs, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call.i, align 4
  %4 = ptrtoint ptr %ftype to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %ftype, align 4
  %5 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %3, label %if.end3.cleanup_crit_edge [
    i32 4, label %if.end3.sw.bb_crit_edge
    i32 3, label %if.end3.sw.bb_crit_edge23
    i32 6, label %if.end3.sw.bb6_crit_edge
    i32 7, label %if.end3.sw.bb6_crit_edge24
    i32 1, label %if.end3.sw.epilog_crit_edge
    i32 2, label %if.end3.sw.epilog_crit_edge25
    i32 5, label %if.end3.sw.epilog_crit_edge26
  ]

if.end3.sw.epilog_crit_edge26:                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end3.sw.epilog_crit_edge25:                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end3.sw.epilog_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end3.sw.bb6_crit_edge24:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb6

if.end3.sw.bb6_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb6

if.end3.sw.bb_crit_edge23:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end3.sw.bb_crit_edge:                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end3.sw.bb_crit_edge, %if.end3.sw.bb_crit_edge23
  %attrs.i = getelementptr inbounds %struct.nfsd3_mknodargs, ptr %1, i32 0, i32 6
  %call.i20 = tail call fastcc zeroext i1 @svcxdr_decode_sattr3(ptr noundef %rqstp, ptr noundef %xdr, ptr noundef %attrs.i) #4
  br i1 %call.i20, label %land.rhs.i, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.rhs.i:                                       ; preds = %sw.bb
  %call.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 8) #4
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %land.rhs.i.svcxdr_decode_specdata3.exit.i_crit_edge, label %if.end.i.i

land.rhs.i.svcxdr_decode_specdata3.exit.i_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %svcxdr_decode_specdata3.exit.i

if.end.i.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  %incdec.ptr.i.i = getelementptr i32, ptr %call.i.i, i32 1
  %6 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call.i.i, align 4
  %major.i.i = getelementptr inbounds %struct.nfsd3_mknodargs, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %major.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %major.i.i, align 4
  %9 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %incdec.ptr.i.i, align 4
  %minor.i.i = getelementptr inbounds %struct.nfsd3_mknodargs, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %minor.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %minor.i.i, align 8
  br label %svcxdr_decode_specdata3.exit.i

svcxdr_decode_specdata3.exit.i:                   ; preds = %if.end.i.i, %land.rhs.i.svcxdr_decode_specdata3.exit.i_crit_edge
  %12 = xor i1 %tobool.not.i.i, true
  br label %cleanup

sw.bb6:                                           ; preds = %if.end3.sw.bb6_crit_edge, %if.end3.sw.bb6_crit_edge24
  %attrs = getelementptr inbounds %struct.nfsd3_mknodargs, ptr %1, i32 0, i32 6
  %call7 = tail call fastcc zeroext i1 @svcxdr_decode_sattr3(ptr noundef %rqstp, ptr noundef %xdr, ptr noundef %attrs)
  br label %cleanup

sw.epilog:                                        ; preds = %if.end3.sw.epilog_crit_edge, %if.end3.sw.epilog_crit_edge25, %if.end3.sw.epilog_crit_edge26
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb6, %svcxdr_decode_specdata3.exit.i, %sw.bb.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %sw.epilog ], [ %call7, %sw.bb6 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end3.cleanup_crit_edge ], [ false, %sw.bb.cleanup_crit_edge ], [ %12, %svcxdr_decode_specdata3.exit.i ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs3svc_decode_renameargs(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %fname = getelementptr inbounds %struct.nfsd3_renameargs, ptr %1, i32 0, i32 1
  %flen = getelementptr inbounds %struct.nfsd3_renameargs, ptr %1, i32 0, i32 2
  %call = tail call fastcc zeroext i1 @svcxdr_decode_diropargs3(ptr noundef %xdr, ptr noundef %1, ptr noundef %fname, ptr noundef %flen)
  br i1 %call, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %tfh = getelementptr inbounds %struct.nfsd3_renameargs, ptr %1, i32 0, i32 3
  %tname = getelementptr inbounds %struct.nfsd3_renameargs, ptr %1, i32 0, i32 4
  %tlen = getelementptr inbounds %struct.nfsd3_renameargs, ptr %1, i32 0, i32 5
  %call1 = tail call fastcc zeroext i1 @svcxdr_decode_diropargs3(ptr noundef %xdr, ptr noundef %tfh, ptr noundef %tname, ptr noundef %tlen)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %2 = phi i1 [ false, %entry.land.end_crit_edge ], [ %call1, %land.rhs ]
  ret i1 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs3svc_decode_linkargs(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %call.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.land.end_crit_edge, label %if.end.i, !prof !15

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call.i.i, align 4
  %4 = add i32 %3, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64, i32 %4)
  %5 = icmp ult i32 %4, -64
  br i1 %5, label %if.end.i.land.end_crit_edge, label %if.end4.i

if.end.i.land.end_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %3) #4
  %tobool.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool.not.i, label %if.end4.i.land.end_crit_edge, label %land.rhs

if.end4.i.land.end_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.rhs:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  %6 = call ptr @memset(ptr %1, i32 0, i32 360)
  %fh_maxsize.i.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %fh_maxsize.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 64, ptr %fh_maxsize.i.i, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %3, ptr %1, align 8
  %9 = getelementptr inbounds %struct.knfsd_fh, ptr %1, i32 0, i32 1
  %10 = call ptr @memcpy(ptr %9, ptr %call5.i, i32 %3)
  %tfh = getelementptr inbounds %struct.nfsd3_linkargs, ptr %1, i32 0, i32 1
  %tname = getelementptr inbounds %struct.nfsd3_linkargs, ptr %1, i32 0, i32 2
  %tlen = getelementptr inbounds %struct.nfsd3_linkargs, ptr %1, i32 0, i32 3
  %call1 = tail call fastcc zeroext i1 @svcxdr_decode_diropargs3(ptr noundef %xdr, ptr noundef %tfh, ptr noundef %tname, ptr noundef %tlen)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end4.i.land.end_crit_edge, %if.end.i.land.end_crit_edge, %entry.land.end_crit_edge
  %11 = phi i1 [ %call1, %land.rhs ], [ false, %if.end.i.land.end_crit_edge ], [ false, %if.end4.i.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ]
  ret i1 %11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs3svc_decode_readdirargs(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %call.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !15

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call.i.i, align 4
  %4 = add i32 %3, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64, i32 %4)
  %5 = icmp ult i32 %4, -64
  br i1 %5, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %3) #4
  %tobool.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool.not.i, label %if.end4.i.cleanup_crit_edge, label %if.end

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %if.end4.i
  %6 = call ptr @memset(ptr %1, i32 0, i32 360)
  %fh_maxsize.i.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %fh_maxsize.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 64, ptr %fh_maxsize.i.i, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %3, ptr %1, align 8
  %9 = getelementptr inbounds %struct.knfsd_fh, ptr %1, i32 0, i32 1
  %10 = call ptr @memcpy(ptr %9, ptr %call5.i, i32 %3)
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 8) #4
  %tobool.not.i19 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i19, label %if.end.cleanup_crit_edge, label %if.end3, !prof !15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %cookie = getelementptr inbounds %struct.nfsd3_readdirargs, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %call.i, align 1
  %13 = ptrtoint ptr %cookie to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %cookie, align 8
  %call4 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 8) #4
  %verf = getelementptr inbounds %struct.nfsd3_readdirargs, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %verf to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call4, ptr %verf, align 4
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %call.i22 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i23 = icmp eq ptr %call.i22, null
  br i1 %tobool.not.i23, label %if.end7.cleanup_crit_edge, label %xdr_stream_decode_u32.exit, !prof !15

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

xdr_stream_decode_u32.exit:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %count = getelementptr inbounds %struct.nfsd3_readdirargs, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %call.i22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call.i22, align 4
  %17 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %count, align 4
  br label %cleanup

cleanup:                                          ; preds = %xdr_stream_decode_u32.exit, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end3.cleanup_crit_edge ], [ true, %xdr_stream_decode_u32.exit ], [ false, %if.end7.cleanup_crit_edge ], [ false, %if.end.i.cleanup_crit_edge ], [ false, %if.end4.i.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs3svc_decode_readdirplusargs(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %call.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !15

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call.i.i, align 4
  %4 = add i32 %3, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64, i32 %4)
  %5 = icmp ult i32 %4, -64
  br i1 %5, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %3) #4
  %tobool.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool.not.i, label %if.end4.i.cleanup_crit_edge, label %if.end

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %if.end4.i
  %6 = call ptr @memset(ptr %1, i32 0, i32 360)
  %fh_maxsize.i.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %fh_maxsize.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 64, ptr %fh_maxsize.i.i, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %3, ptr %1, align 8
  %9 = getelementptr inbounds %struct.knfsd_fh, ptr %1, i32 0, i32 1
  %10 = call ptr @memcpy(ptr %9, ptr %call5.i, i32 %3)
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 8) #4
  %tobool.not.i25 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i25, label %if.end.cleanup_crit_edge, label %if.end3, !prof !15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %cookie = getelementptr inbounds %struct.nfsd3_readdirargs, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %call.i, align 1
  %13 = ptrtoint ptr %cookie to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %cookie, align 8
  %call4 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 8) #4
  %verf = getelementptr inbounds %struct.nfsd3_readdirargs, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %verf to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call4, ptr %verf, align 4
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %call.i28 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i29 = icmp eq ptr %call.i28, null
  br i1 %tobool.not.i29, label %if.end7.cleanup_crit_edge, label %if.end11, !prof !15

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %call.i32 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i33 = icmp eq ptr %call.i32, null
  br i1 %tobool.not.i33, label %if.end11.cleanup_crit_edge, label %xdr_stream_decode_u32.exit36, !prof !15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

xdr_stream_decode_u32.exit36:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %count = getelementptr inbounds %struct.nfsd3_readdirargs, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %call.i32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call.i32, align 4
  %17 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %count, align 4
  br label %cleanup

cleanup:                                          ; preds = %xdr_stream_decode_u32.exit36, %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end3.cleanup_crit_edge ], [ true, %xdr_stream_decode_u32.exit36 ], [ false, %if.end11.cleanup_crit_edge ], [ false, %if.end.i.cleanup_crit_edge ], [ false, %if.end4.i.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.end7.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs3svc_decode_commitargs(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %call.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !15

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call.i.i, align 4
  %4 = add i32 %3, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64, i32 %4)
  %5 = icmp ult i32 %4, -64
  br i1 %5, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %3) #4
  %tobool.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool.not.i, label %if.end4.i.cleanup_crit_edge, label %if.end

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %if.end4.i
  %6 = call ptr @memset(ptr %1, i32 0, i32 360)
  %fh_maxsize.i.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %fh_maxsize.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 64, ptr %fh_maxsize.i.i, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %3, ptr %1, align 8
  %9 = getelementptr inbounds %struct.knfsd_fh, ptr %1, i32 0, i32 1
  %10 = call ptr @memcpy(ptr %9, ptr %call5.i, i32 %3)
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 8) #4
  %tobool.not.i12 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i12, label %if.end.cleanup_crit_edge, label %if.end3, !prof !15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %offset = getelementptr inbounds %struct.nfsd3_commitargs, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %call.i, align 1
  %13 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %offset, align 8
  %call.i15 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i16 = icmp eq ptr %call.i15, null
  br i1 %tobool.not.i16, label %if.end3.cleanup_crit_edge, label %xdr_stream_decode_u32.exit, !prof !15

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

xdr_stream_decode_u32.exit:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %count = getelementptr inbounds %struct.nfsd3_commitargs, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %call.i15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call.i15, align 4
  %16 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %count, align 4
  br label %cleanup

cleanup:                                          ; preds = %xdr_stream_decode_u32.exit, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %xdr_stream_decode_u32.exit ], [ false, %if.end3.cleanup_crit_edge ], [ false, %if.end.i.cleanup_crit_edge ], [ false, %if.end4.i.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs3svc_encode_getattrres(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %0 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_resp, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %call.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cond = icmp eq i32 %6, 0
  br i1 %cond, label %sw.bb, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %fh = getelementptr inbounds %struct.nfsd3_attrstat, ptr %1, i32 0, i32 1
  %fh_dentry = getelementptr inbounds %struct.nfsd3_attrstat, ptr %1, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fh_dentry, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d_inode.i, align 8
  %stat = getelementptr inbounds %struct.nfsd3_attrstat, ptr %1, i32 0, i32 2
  %mtime = getelementptr inbounds %struct.nfsd3_attrstat, ptr %1, i32 0, i32 2, i32 13
  tail call void @lease_get_mtime(ptr noundef %10, ptr noundef %mtime) #4
  %call5 = tail call fastcc zeroext i1 @svcxdr_encode_fattr3(ptr noundef %rqstp, ptr noundef %xdr, ptr noundef %fh, ptr noundef %stat)
  br i1 %call5, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %sw.epilog ], [ false, %sw.bb.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs3svc_encode_wccstat(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %0 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_resp, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %call.i, align 4
  %fh = getelementptr inbounds %struct.nfsd3_attrstat, ptr %1, i32 0, i32 1
  %call1 = tail call fastcc zeroext i1 @svcxdr_encode_wcc_data(ptr noundef %rqstp, ptr noundef %xdr, ptr noundef %fh)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %5 = phi i1 [ %call1, %land.rhs ], [ false, %entry.land.end_crit_edge ]
  ret i1 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @svcxdr_encode_wcc_data(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr, ptr noundef %fhp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fh_dentry = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 2
  %0 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fh_dentry, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.neither_crit_edge, label %lor.lhs.false

entry.neither_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %neither

lor.lhs.false:                                    ; preds = %entry
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %cmp.i.not = icmp eq ptr %3, null
  br i1 %cmp.i.not, label %lor.lhs.false.neither_crit_edge, label %lor.lhs.false1

lor.lhs.false.neither_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %neither

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %fh_post_saved = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 9
  %4 = ptrtoint ptr %fh_post_saved to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fh_post_saved, align 8, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %lor.lhs.false1.neither_crit_edge, label %if.end

lor.lhs.false1.neither_crit_edge:                 ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #6
  br label %neither

if.end:                                           ; preds = %lor.lhs.false1
  %fh_pre_saved.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 10
  %6 = ptrtoint ptr %fh_pre_saved.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fh_pre_saved.i, align 1, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  %call.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end2.i

if.then.i:                                        ; preds = %if.end
  br i1 %tobool.not.i.i, label %if.then.i.cleanup_crit_edge, label %svcxdr_encode_pre_op_attr.exit.thread38, !prof !15

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

svcxdr_encode_pre_op_attr.exit.thread38:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %call.i.i, align 4
  br label %if.end5

if.end2.i:                                        ; preds = %if.end
  br i1 %tobool.not.i.i, label %if.end2.i.cleanup_crit_edge, label %if.end6.i, !prof !15

if.end2.i.cleanup_crit_edge:                      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6.i:                                        ; preds = %if.end2.i
  %9 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %call.i.i, align 4
  %call.i15.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 24) #4
  %tobool.not.i16.i = icmp eq ptr %call.i15.i, null
  br i1 %tobool.not.i16.i, label %if.end6.i.cleanup_crit_edge, label %svcxdr_encode_pre_op_attr.exit.thread40

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

svcxdr_encode_pre_op_attr.exit.thread40:          ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  %fh_pre_size.i.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 11
  %10 = ptrtoint ptr %fh_pre_size.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %fh_pre_size.i.i, align 8
  %12 = ptrtoint ptr %call.i15.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %11, ptr %call.i15.i, align 1
  %add.ptr.i.i.i = getelementptr i32, ptr %call.i15.i, i32 2
  %fh_pre_mtime.i.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 12
  %13 = ptrtoint ptr %fh_pre_mtime.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %fh_pre_mtime.i.i, align 8
  %conv.i.i.i = trunc i64 %14 to i32
  %incdec.ptr.i.i.i = getelementptr i32, ptr %call.i15.i, i32 3
  %15 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv.i.i.i, ptr %add.ptr.i.i.i, align 4
  %tv_nsec.i.i.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 12, i32 1
  %16 = ptrtoint ptr %tv_nsec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tv_nsec.i.i.i, align 8
  %incdec.ptr1.i.i.i = getelementptr i32, ptr %call.i15.i, i32 4
  %18 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %incdec.ptr.i.i.i, align 4
  %fh_pre_ctime.i.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 13
  %19 = ptrtoint ptr %fh_pre_ctime.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %fh_pre_ctime.i.i, align 8
  %conv.i9.i.i = trunc i64 %20 to i32
  %incdec.ptr.i10.i.i = getelementptr i32, ptr %call.i15.i, i32 5
  %21 = ptrtoint ptr %incdec.ptr1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv.i9.i.i, ptr %incdec.ptr1.i.i.i, align 4
  %tv_nsec.i11.i.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 13, i32 1
  %22 = ptrtoint ptr %tv_nsec.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tv_nsec.i11.i.i, align 8
  %24 = ptrtoint ptr %incdec.ptr.i10.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %incdec.ptr.i10.i.i, align 4
  br label %if.end5

if.end5:                                          ; preds = %svcxdr_encode_pre_op_attr.exit.thread40, %svcxdr_encode_pre_op_attr.exit.thread38
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i31 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i31, label %if.end5.cleanup_crit_edge, label %if.end8, !prof !15

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %call.i, align 4
  %fh_post_attr = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 15
  %call9 = tail call fastcc zeroext i1 @svcxdr_encode_fattr3(ptr noundef %rqstp, ptr noundef %xdr, ptr noundef %fhp, ptr noundef %fh_post_attr)
  br label %cleanup

neither:                                          ; preds = %lor.lhs.false1.neither_crit_edge, %lor.lhs.false.neither_crit_edge, %entry.neither_crit_edge
  %call.i33 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i34 = icmp eq ptr %call.i33, null
  br i1 %tobool.not.i34, label %neither.cleanup_crit_edge, label %if.end15, !prof !15

neither.cleanup_crit_edge:                        ; preds = %neither
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end15:                                         ; preds = %neither
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %call.i33 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %call.i33, align 4
  %call16 = tail call zeroext i1 @svcxdr_encode_post_op_attr(ptr noundef %rqstp, ptr noundef %xdr, ptr noundef %fhp)
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %neither.cleanup_crit_edge, %if.end8, %if.end5.cleanup_crit_edge, %if.end6.i.cleanup_crit_edge, %if.end2.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i1 [ %call9, %if.end8 ], [ %call16, %if.end15 ], [ false, %if.end6.i.cleanup_crit_edge ], [ false, %if.then.i.cleanup_crit_edge ], [ false, %if.end2.i.cleanup_crit_edge ], [ false, %if.end5.cleanup_crit_edge ], [ false, %neither.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs3svc_encode_lookupres(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %0 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_resp, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %call.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cond = icmp eq i32 %6, 0
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end
  %fh = getelementptr inbounds %struct.nfsd3_diropres, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %fh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fh, align 8
  %add.i = add i32 %8, 4
  %call.i28 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i) #4
  %tobool.not.i29 = icmp eq ptr %call.i28, null
  br i1 %tobool.not.i29, label %sw.bb.cleanup_crit_edge, label %if.end.i30

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i30:                                       ; preds = %sw.bb
  %incdec.ptr.i = getelementptr i32, ptr %call.i28, i32 1
  %9 = ptrtoint ptr %call.i28 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %call.i28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.not.i = icmp eq i32 %8, 0
  br i1 %tobool1.not.i, label %if.end.i30.if.end4_crit_edge, label %if.then2.i

if.end.i30.if.end4_crit_edge:                     ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then2.i:                                       ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #6
  %add3.i = add i32 %8, 3
  %shr.i = lshr i32 %add3.i, 2
  %arrayidx.i = getelementptr i32, ptr %call.i28, i32 %shr.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %arrayidx.i, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2.i, %if.end.i30.if.end4_crit_edge
  %11 = getelementptr inbounds %struct.nfsd3_diropres, ptr %1, i32 0, i32 2, i32 0, i32 1
  %12 = call ptr @memcpy(ptr %incdec.ptr.i, ptr %11, i32 %8)
  %call6 = tail call zeroext i1 @svcxdr_encode_post_op_attr(ptr noundef %rqstp, ptr noundef %xdr, ptr noundef %fh)
  br i1 %call6, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %dirfh = getelementptr inbounds %struct.nfsd3_diropres, ptr %1, i32 0, i32 1
  %call9 = tail call zeroext i1 @svcxdr_encode_post_op_attr(ptr noundef %rqstp, ptr noundef %xdr, ptr noundef %dirfh)
  br i1 %call9, label %if.end8.sw.epilog_crit_edge, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8.sw.epilog_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %dirfh12 = getelementptr inbounds %struct.nfsd3_diropres, ptr %1, i32 0, i32 1
  %call13 = tail call zeroext i1 @svcxdr_encode_post_op_attr(ptr noundef %rqstp, ptr noundef %xdr, ptr noundef %dirfh12)
  br i1 %call13, label %sw.default.sw.epilog_crit_edge, label %sw.default.cleanup_crit_edge

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default.sw.epilog_crit_edge, %if.end8.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %sw.epilog ], [ false, %if.end4.cleanup_crit_edge ], [ false, %if.end8.cleanup_crit_edge ], [ false, %sw.default.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %sw.bb.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs3svc_encode_accessres(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %0 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_resp, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %call.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cond = icmp eq i32 %6, 0
  %fh = getelementptr inbounds %struct.nfsd3_accessres, ptr %1, i32 0, i32 1
  %call2 = tail call zeroext i1 @svcxdr_encode_post_op_attr(ptr noundef %rqstp, ptr noundef %xdr, ptr noundef %fh)
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end
  br i1 %call2, label %if.end4, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %sw.bb
  %access = getelementptr inbounds %struct.nfsd3_accessres, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %access, align 8
  %call.i21 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i22 = icmp eq ptr %call.i21, null
  br i1 %tobool.not.i22, label %if.end4.cleanup_crit_edge, label %xdr_stream_encode_u32.exit, !prof !15

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

xdr_stream_encode_u32.exit:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %call.i21 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %call.i21, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br i1 %call2, label %sw.default.sw.epilog_crit_edge, label %sw.default.cleanup_crit_edge

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default.sw.epilog_crit_edge, %xdr_stream_encode_u32.exit
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %sw.epilog ], [ false, %sw.bb.cleanup_crit_edge ], [ false, %sw.default.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end4.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs3svc_encode_readlinkres(ptr noundef %rqstp, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %0 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_resp, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %call.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cond = icmp eq i32 %6, 0
  %fh = getelementptr inbounds %struct.nfsd3_readlinkres, ptr %1, i32 0, i32 1
  %call3 = tail call zeroext i1 @svcxdr_encode_post_op_attr(ptr noundef %rqstp, ptr noundef %xdr, ptr noundef %fh)
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end
  br i1 %call3, label %if.end5, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %sw.bb
  %len = getelementptr inbounds %struct.nfsd3_readlinkres, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 8
  %call.i35 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i36 = icmp eq ptr %call.i35, null
  br i1 %tobool.not.i36, label %if.end5.cleanup_crit_edge, label %if.end8, !prof !15

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %9 = ptrtoint ptr %call.i35 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %call.i35, align 4
  %pages = getelementptr inbounds %struct.nfsd3_readlinkres, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pages, align 4
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 8
  tail call void @xdr_write_pages(ptr noundef %xdr, ptr noundef %11, i32 noundef 0, i32 noundef %13) #4
  %iov_len = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 0, i32 0, i32 1
  %14 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iov_len, align 4
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 8
  %call11 = tail call i32 @svc_encode_result_payload(ptr noundef %rqstp, i32 noundef %15, i32 noundef %17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end8.cleanup_crit_edge, label %if.end8.sw.epilog_crit_edge

if.end8.sw.epilog_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.default:                                       ; preds = %if.end
  br i1 %call3, label %sw.default.sw.epilog_crit_edge, label %sw.default.cleanup_crit_edge

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default.sw.epilog_crit_edge, %if.end8.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %sw.epilog ], [ false, %sw.bb.cleanup_crit_edge ], [ false, %if.end8.cleanup_crit_edge ], [ false, %sw.default.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end5.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_write_pages(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_encode_result_payload(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs3svc_encode_readres(ptr noundef %rqstp, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %0 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_resp, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %call.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cond = icmp eq i32 %6, 0
  %fh = getelementptr inbounds %struct.nfsd3_readres, ptr %1, i32 0, i32 1
  %call3 = tail call zeroext i1 @svcxdr_encode_post_op_attr(ptr noundef %rqstp, ptr noundef %xdr, ptr noundef %fh)
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end
  br i1 %call3, label %if.end5, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %sw.bb
  %count = getelementptr inbounds %struct.nfsd3_readres, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count, align 8
  %call.i50 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i51 = icmp eq ptr %call.i50, null
  br i1 %tobool.not.i51, label %if.end5.cleanup_crit_edge, label %if.end8, !prof !15

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %9 = ptrtoint ptr %call.i50 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %call.i50, align 4
  %eof = getelementptr inbounds %struct.nfsd3_readres, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %eof to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %eof, align 4
  %call.i53 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i54 = icmp eq ptr %call.i53, null
  br i1 %tobool.not.i54, label %if.end8.cleanup_crit_edge, label %if.end12, !prof !15

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i = icmp ne i32 %11, 0
  %cond.i.i = zext i1 %tobool.not.i.i to i32
  %12 = ptrtoint ptr %call.i53 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %cond.i.i, ptr %call.i53, align 4
  %13 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count, align 8
  %call.i57 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i58 = icmp eq ptr %call.i57, null
  br i1 %tobool.not.i58, label %if.end12.cleanup_crit_edge, label %if.end17, !prof !15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %15 = ptrtoint ptr %call.i57 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %call.i57, align 4
  %pages = getelementptr inbounds %struct.nfsd3_readres, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pages, align 8
  %page_base = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 4
  %18 = ptrtoint ptr %page_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %page_base, align 8
  %20 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %count, align 8
  tail call void @xdr_write_pages(ptr noundef %xdr, ptr noundef %17, i32 noundef %19, i32 noundef %21) #4
  %iov_len = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 0, i32 0, i32 1
  %22 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iov_len, align 4
  %24 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %count, align 8
  %call21 = tail call i32 @svc_encode_result_payload(ptr noundef %rqstp, i32 noundef %23, i32 noundef %25) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end17.cleanup_crit_edge, label %if.end17.sw.epilog_crit_edge

if.end17.sw.epilog_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.default:                                       ; preds = %if.end
  br i1 %call3, label %sw.default.sw.epilog_crit_edge, label %sw.default.cleanup_crit_edge

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default.sw.epilog_crit_edge, %if.end17.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %sw.epilog ], [ false, %sw.bb.cleanup_crit_edge ], [ false, %if.end17.cleanup_crit_edge ], [ false, %sw.default.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end5.cleanup_crit_edge ], [ false, %if.end8.cleanup_crit_edge ], [ false, %if.end12.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs3svc_encode_writeres(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %0 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_resp, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %call.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cond = icmp eq i32 %6, 0
  %fh = getelementptr inbounds %struct.nfsd3_writeres, ptr %1, i32 0, i32 1
  %call2 = tail call fastcc zeroext i1 @svcxdr_encode_wcc_data(ptr noundef %rqstp, ptr noundef %xdr, ptr noundef %fh)
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end
  br i1 %call2, label %if.end4, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %sw.bb
  %count = getelementptr inbounds %struct.nfsd3_writeres, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count, align 8
  %call.i32 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i33 = icmp eq ptr %call.i32, null
  br i1 %tobool.not.i33, label %if.end4.cleanup_crit_edge, label %if.end7, !prof !15

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %9 = ptrtoint ptr %call.i32 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %call.i32, align 4
  %committed = getelementptr inbounds %struct.nfsd3_writeres, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %committed to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %committed, align 4
  %call.i35 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i36 = icmp eq ptr %call.i35, null
  br i1 %tobool.not.i36, label %if.end7.cleanup_crit_edge, label %if.end11, !prof !15

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %12 = ptrtoint ptr %call.i35 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %call.i35, align 4
  %call.i40 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 8) #4
  %tobool.not.i41 = icmp eq ptr %call.i40, null
  br i1 %tobool.not.i41, label %if.end11.cleanup_crit_edge, label %svcxdr_encode_writeverf3.exit.thread

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

svcxdr_encode_writeverf3.exit.thread:             ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %verf = getelementptr inbounds %struct.nfsd3_writeres, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %verf to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %verf, align 4
  %15 = ptrtoint ptr %call.i40 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 %14, ptr %call.i40, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br i1 %call2, label %sw.default.sw.epilog_crit_edge, label %sw.default.cleanup_crit_edge

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default.sw.epilog_crit_edge, %svcxdr_encode_writeverf3.exit.thread
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %sw.epilog ], [ false, %sw.bb.cleanup_crit_edge ], [ false, %sw.default.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end11.cleanup_crit_edge ], [ false, %if.end4.cleanup_crit_edge ], [ false, %if.end7.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs3svc_encode_createres(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %0 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_resp, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %call.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cond = icmp eq i32 %6, 0
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end
  %fh = getelementptr inbounds %struct.nfsd3_diropres, ptr %1, i32 0, i32 2
  %call.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %sw.bb.cleanup_crit_edge, label %if.end.i28, !prof !15

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i28:                                       ; preds = %sw.bb
  %7 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %call.i.i, align 4
  %8 = ptrtoint ptr %fh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fh, align 8
  %add.i.i = add i32 %9, 4
  %call.i5.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i.i) #4
  %tobool.not.i6.i = icmp eq ptr %call.i5.i, null
  br i1 %tobool.not.i6.i, label %if.end.i28.cleanup_crit_edge, label %if.end.i7.i

if.end.i28.cleanup_crit_edge:                     ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i7.i:                                      ; preds = %if.end.i28
  %incdec.ptr.i.i = getelementptr i32, ptr %call.i5.i, i32 1
  %10 = ptrtoint ptr %call.i5.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %call.i5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool1.not.i.i, label %if.end.i7.i.if.end4_crit_edge, label %if.then2.i.i

if.end.i7.i.if.end4_crit_edge:                    ; preds = %if.end.i7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then2.i.i:                                     ; preds = %if.end.i7.i
  call void @__sanitizer_cov_trace_pc() #6
  %add3.i.i = add i32 %9, 3
  %shr.i.i = lshr i32 %add3.i.i, 2
  %arrayidx.i.i = getelementptr i32, ptr %call.i5.i, i32 %shr.i.i
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %arrayidx.i.i, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2.i.i, %if.end.i7.i.if.end4_crit_edge
  %12 = getelementptr inbounds %struct.nfsd3_diropres, ptr %1, i32 0, i32 2, i32 0, i32 1
  %13 = call ptr @memcpy(ptr %incdec.ptr.i.i, ptr %12, i32 %9)
  %call6 = tail call zeroext i1 @svcxdr_encode_post_op_attr(ptr noundef %rqstp, ptr noundef %xdr, ptr noundef %fh)
  br i1 %call6, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %dirfh = getelementptr inbounds %struct.nfsd3_diropres, ptr %1, i32 0, i32 1
  %call9 = tail call fastcc zeroext i1 @svcxdr_encode_wcc_data(ptr noundef %rqstp, ptr noundef %xdr, ptr noundef %dirfh)
  br i1 %call9, label %if.end8.sw.epilog_crit_edge, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8.sw.epilog_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %dirfh12 = getelementptr inbounds %struct.nfsd3_diropres, ptr %1, i32 0, i32 1
  %call13 = tail call fastcc zeroext i1 @svcxdr_encode_wcc_data(ptr noundef %rqstp, ptr noundef %xdr, ptr noundef %dirfh12)
  br i1 %call13, label %sw.default.sw.epilog_crit_edge, label %sw.default.cleanup_crit_edge

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default.sw.epilog_crit_edge, %if.end8.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.i28.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %sw.epilog ], [ false, %if.end4.cleanup_crit_edge ], [ false, %if.end8.cleanup_crit_edge ], [ false, %sw.default.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.i28.cleanup_crit_edge ], [ false, %sw.bb.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs3svc_encode_renameres(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %0 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_resp, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.land.end_crit_edge, label %land.lhs.true

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %call.i, align 4
  %ffh = getelementptr inbounds %struct.nfsd3_renameres, ptr %1, i32 0, i32 1
  %call1 = tail call fastcc zeroext i1 @svcxdr_encode_wcc_data(ptr noundef %rqstp, ptr noundef %xdr, ptr noundef %ffh)
  br i1 %call1, label %land.rhs, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %tfh = getelementptr inbounds %struct.nfsd3_renameres, ptr %1, i32 0, i32 2
  %call2 = tail call fastcc zeroext i1 @svcxdr_encode_wcc_data(ptr noundef %rqstp, ptr noundef %xdr, ptr noundef %tfh)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %5 = phi i1 [ false, %land.lhs.true.land.end_crit_edge ], [ %call2, %land.rhs ], [ false, %entry.land.end_crit_edge ]
  ret i1 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs3svc_encode_linkres(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %0 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_resp, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.land.end_crit_edge, label %land.lhs.true

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %call.i, align 4
  %fh = getelementptr inbounds %struct.nfsd3_linkres, ptr %1, i32 0, i32 2
  %call1 = tail call zeroext i1 @svcxdr_encode_post_op_attr(ptr noundef %rqstp, ptr noundef %xdr, ptr noundef %fh)
  br i1 %call1, label %land.rhs, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %tfh = getelementptr inbounds %struct.nfsd3_linkres, ptr %1, i32 0, i32 1
  %call2 = tail call fastcc zeroext i1 @svcxdr_encode_wcc_data(ptr noundef %rqstp, ptr noundef %xdr, ptr noundef %tfh)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %5 = phi i1 [ false, %land.lhs.true.land.end_crit_edge ], [ %call2, %land.rhs ], [ false, %entry.land.end_crit_edge ]
  ret i1 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs3svc_encode_readdirres(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %0 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_resp, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %call.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cond = icmp eq i32 %6, 0
  %fh = getelementptr inbounds %struct.nfsd3_readdirres, ptr %1, i32 0, i32 1
  %call3 = tail call zeroext i1 @svcxdr_encode_post_op_attr(ptr noundef %rqstp, ptr noundef %xdr, ptr noundef %fh)
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end
  br i1 %call3, label %if.end5, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %sw.bb
  %call.i38 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 8) #4
  %tobool.not.i39 = icmp eq ptr %call.i38, null
  br i1 %tobool.not.i39, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %verf = getelementptr inbounds %struct.nfsd3_readdirres, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %verf to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %verf, align 4
  %9 = ptrtoint ptr %call.i38 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 %8, ptr %call.i38, align 4
  %pages = getelementptr inbounds %struct.nfsd3_readdirres, ptr %1, i32 0, i32 4, i32 3
  %10 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pages, align 4
  %len = getelementptr inbounds %struct.nfsd3_readdirres, ptr %1, i32 0, i32 4, i32 8
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  tail call void @xdr_write_pages(ptr noundef %xdr, ptr noundef %11, i32 noundef 0, i32 noundef %13) #4
  %call.i41 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i42 = icmp eq ptr %call.i41, null
  br i1 %tobool.not.i42, label %if.end8.cleanup_crit_edge, label %if.end11, !prof !15

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %14 = ptrtoint ptr %call.i41 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %call.i41, align 4
  %common = getelementptr inbounds %struct.nfsd3_readdirres, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %common, align 8
  %call.i44 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i45 = icmp eq ptr %call.i44, null
  br i1 %tobool.not.i45, label %if.end11.cleanup_crit_edge, label %xdr_stream_encode_bool.exit, !prof !15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

xdr_stream_encode_bool.exit:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 30001, i32 %16)
  %cmp12 = icmp eq i32 %16, 30001
  %cond.i.i = zext i1 %cmp12 to i32
  %17 = ptrtoint ptr %call.i44 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond.i.i, ptr %call.i44, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br i1 %call3, label %sw.default.sw.epilog_crit_edge, label %sw.default.cleanup_crit_edge

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default.sw.epilog_crit_edge, %xdr_stream_encode_bool.exit
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %sw.epilog ], [ false, %sw.bb.cleanup_crit_edge ], [ false, %sw.default.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end5.cleanup_crit_edge ], [ false, %if.end8.cleanup_crit_edge ], [ false, %if.end11.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs3svc_encode_cookie3(ptr noundef %resp, i64 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  %cookie = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cookie) #4
  %0 = ptrtoint ptr %cookie to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %offset, ptr %cookie, align 8
  %cookie_offset = getelementptr inbounds %struct.nfsd3_readdirres, ptr %resp, i32 0, i32 7
  %1 = ptrtoint ptr %cookie_offset to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cookie_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dirlist = getelementptr inbounds %struct.nfsd3_readdirres, ptr %resp, i32 0, i32 4
  %call = call i32 @write_bytes_to_xdr_buf(ptr noundef %dirlist, i32 noundef %2, ptr noundef nonnull %cookie, i32 noundef 8) #4
  %3 = ptrtoint ptr %cookie_offset to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %cookie_offset, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cookie) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @write_bytes_to_xdr_buf(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs3svc_encode_entry3(ptr noundef %data, ptr noundef %name, i32 noundef %namlen, i64 noundef %offset, i64 noundef %ino, i32 noundef %d_type) local_unnamed_addr #0 align 64 {
entry:
  %cookie.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %data, i32 -816
  %len = getelementptr i8, ptr %data, i32 -364
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cookie.i) #4
  %2 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %offset, ptr %cookie.i, align 8
  %cookie_offset.i = getelementptr i8, ptr %data, i32 4
  %3 = ptrtoint ptr %cookie_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cookie_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.nfs3svc_encode_cookie3.exit_crit_edge, label %if.end.i

entry.nfs3svc_encode_cookie3.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfs3svc_encode_cookie3.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dirlist.i = getelementptr i8, ptr %data, i32 -404
  %call.i = call i32 @write_bytes_to_xdr_buf(ptr noundef %dirlist.i, i32 noundef %4, ptr noundef nonnull %cookie.i, i32 noundef 8) #4
  %5 = ptrtoint ptr %cookie_offset.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %cookie_offset.i, align 4
  br label %nfs3svc_encode_cookie3.exit

nfs3svc_encode_cookie3.exit:                      ; preds = %if.end.i, %entry.nfs3svc_encode_cookie3.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cookie.i) #4
  %call = call fastcc zeroext i1 @svcxdr_encode_entry3_common(ptr noundef %add.ptr, ptr noundef %name, i32 noundef %namlen, i64 noundef %ino)
  br i1 %call, label %if.end, label %out_toosmall

if.end:                                           ; preds = %nfs3svc_encode_cookie3.exit
  call void @__sanitizer_cov_trace_pc() #6
  %xdr = getelementptr i8, ptr %data, i32 -440
  call void @xdr_commit_encode(ptr noundef %xdr) #4
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %data, align 8
  br label %cleanup

out_toosmall:                                     ; preds = %nfs3svc_encode_cookie3.exit
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %cookie_offset.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %cookie_offset.i, align 4
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 10005, ptr %data, align 8
  %9 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %1, ptr %len, align 4
  br label %cleanup

cleanup:                                          ; preds = %out_toosmall, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %out_toosmall ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @svcxdr_encode_entry3_common(ptr noundef %resp, ptr noundef %name, i32 noundef %namlen, i64 noundef %ino) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %xdr2 = getelementptr inbounds %struct.nfsd3_readdirres, ptr %resp, i32 0, i32 3
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr2, i32 noundef 4) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end, !prof !15

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %call.i, align 4
  %call.i1 = tail call ptr @xdr_reserve_space(ptr noundef %xdr2, i32 noundef 8) #4
  %tobool.not.i2 = icmp eq ptr %call.i1, null
  br i1 %tobool.not.i2, label %if.end.cleanup_crit_edge, label %if.end6, !prof !15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %1 = ptrtoint ptr %call.i1 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 %ino, ptr %call.i1, align 1
  %2 = tail call i32 @llvm.smin.i32(i32 %namlen, i32 255)
  %3 = add nsw i32 %2, 7
  %add.i = and i32 %3, -4
  %call1.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr2, i32 noundef %add.i) #4
  %tobool.not.i5 = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i5, label %if.end6.cleanup_crit_edge, label %xdr_stream_encode_opaque.exit, !prof !15

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

xdr_stream_encode_opaque.exit:                    ; preds = %if.end6
  %call5.i = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %call1.i, ptr noundef %name, i32 noundef %2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp9 = icmp slt i32 %add.i, 0
  br i1 %cmp9, label %xdr_stream_encode_opaque.exit.cleanup_crit_edge, label %if.end11

xdr_stream_encode_opaque.exit.cleanup_crit_edge:  ; preds = %xdr_stream_encode_opaque.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %xdr_stream_encode_opaque.exit
  %len = getelementptr inbounds %struct.nfsd3_readdirres, ptr %resp, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %cookie_offset = getelementptr inbounds %struct.nfsd3_readdirres, ptr %resp, i32 0, i32 7
  %6 = ptrtoint ptr %cookie_offset to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %cookie_offset, align 4
  %call.i8 = tail call ptr @xdr_reserve_space(ptr noundef %xdr2, i32 noundef 8) #4
  %tobool.not.i9 = icmp eq ptr %call.i8, null
  br i1 %tobool.not.i9, label %if.end11.cleanup_crit_edge, label %xdr_stream_encode_u64.exit12, !prof !15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

xdr_stream_encode_u64.exit12:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %call.i8 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 9223372036854775807, ptr %call.i8, align 1
  br label %cleanup

cleanup:                                          ; preds = %xdr_stream_encode_u64.exit12, %if.end11.cleanup_crit_edge, %xdr_stream_encode_opaque.exit.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %xdr_stream_encode_opaque.exit.cleanup_crit_edge ], [ true, %xdr_stream_encode_u64.exit12 ], [ false, %if.end11.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.end6.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_commit_encode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs3svc_encode_entryplus3(ptr noundef %data, ptr noundef %name, i32 noundef %namlen, i64 noundef %offset, i64 noundef %ino, i32 noundef %d_type) local_unnamed_addr #0 align 64 {
entry:
  %cookie.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %data, i32 -816
  %len = getelementptr i8, ptr %data, i32 -364
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cookie.i) #4
  %2 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %offset, ptr %cookie.i, align 8
  %cookie_offset.i = getelementptr i8, ptr %data, i32 4
  %3 = ptrtoint ptr %cookie_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cookie_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.nfs3svc_encode_cookie3.exit_crit_edge, label %if.end.i

entry.nfs3svc_encode_cookie3.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfs3svc_encode_cookie3.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dirlist.i = getelementptr i8, ptr %data, i32 -404
  %call.i = call i32 @write_bytes_to_xdr_buf(ptr noundef %dirlist.i, i32 noundef %4, ptr noundef nonnull %cookie.i, i32 noundef 8) #4
  %5 = ptrtoint ptr %cookie_offset.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %cookie_offset.i, align 4
  br label %nfs3svc_encode_cookie3.exit

nfs3svc_encode_cookie3.exit:                      ; preds = %if.end.i, %entry.nfs3svc_encode_cookie3.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cookie.i) #4
  %call = call fastcc zeroext i1 @svcxdr_encode_entry3_common(ptr noundef %add.ptr, ptr noundef %name, i32 noundef %namlen, i64 noundef %ino)
  br i1 %call, label %if.end, label %nfs3svc_encode_cookie3.exit.out_toosmall_crit_edge

nfs3svc_encode_cookie3.exit.out_toosmall_crit_edge: ; preds = %nfs3svc_encode_cookie3.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_toosmall

if.end:                                           ; preds = %nfs3svc_encode_cookie3.exit
  %xdr1.i = getelementptr i8, ptr %data, i32 -440
  %scratch.i = getelementptr i8, ptr %data, i32 -360
  %6 = call ptr @memset(ptr %scratch.i, i32 0, i32 360)
  %fh_maxsize.i.i = getelementptr i8, ptr %data, i32 -228
  %7 = ptrtoint ptr %fh_maxsize.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 64, ptr %fh_maxsize.i.i, align 4
  %fh.i.i = getelementptr i8, ptr %data, i32 -808
  %fh_dentry.i.i = getelementptr i8, ptr %data, i32 -672
  %8 = ptrtoint ptr %fh_dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fh_dentry.i.i, align 8
  %fh_export.i.i = getelementptr i8, ptr %data, i32 -668
  %10 = ptrtoint ptr %fh_export.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fh_export.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %namlen)
  %cmp.i.i = icmp slt i32 %namlen, 3
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end.if.else23.i.i_crit_edge

if.end.if.else23.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else23.i.i

land.lhs.true.i.i:                                ; preds = %if.end
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %13)
  %cmp2.i.i = icmp eq i8 %13, 46
  br i1 %cmp2.i.i, label %land.lhs.true4.i.i, label %land.lhs.true.i.i.if.else23.i.i_crit_edge

land.lhs.true.i.i.if.else23.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else23.i.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %namlen)
  %cond.i.i = icmp eq i32 %namlen, 1
  br i1 %cond.i.i, label %land.lhs.true4.i.i.if.else.i.i_crit_edge, label %lor.lhs.false.i.i

land.lhs.true4.i.i.if.else.i.i_crit_edge:         ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i.i

lor.lhs.false.i.i:                                ; preds = %land.lhs.true4.i.i
  %arrayidx7.i.i = getelementptr i8, ptr %name, i32 1
  %14 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx7.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %15)
  %cmp9.i.i = icmp eq i8 %15, 46
  br i1 %cmp9.i.i, label %if.then.i.i, label %lor.lhs.false.i.i.if.else23.i.i_crit_edge

lor.lhs.false.i.i.if.else23.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else23.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %namlen)
  %cmp11.i.i = icmp eq i32 %namlen, 2
  br i1 %cmp11.i.i, label %if.then13.i.i, label %if.then.i.i.if.else.i.i_crit_edge

if.then.i.i.if.else.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i.i

if.then13.i.i:                                    ; preds = %if.then.i.i
  %call.i.i = call ptr @dget_parent(ptr noundef %9) #4
  %cmp14.i.i = icmp eq ptr %call.i.i, %9
  br i1 %cmp14.i.i, label %if.then13.i.i.compose_entry_fh.exit.thread42.i_crit_edge, label %if.end.i.i

if.then13.i.i.compose_entry_fh.exit.thread42.i_crit_edge: ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %compose_entry_fh.exit.thread42.i

if.end.i.i:                                       ; preds = %if.then13.i.i
  %dentry.i.i = getelementptr inbounds %struct.svc_export, ptr %11, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dentry.i.i, align 4
  %cmp17.i.i = icmp eq ptr %9, %17
  br i1 %cmp17.i.i, label %if.end.i.i.compose_entry_fh.exit.thread42.i_crit_edge, label %if.end.i.i.if.end25.i.i_crit_edge

if.end.i.i.if.end25.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25.i.i

if.end.i.i.compose_entry_fh.exit.thread42.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %compose_entry_fh.exit.thread42.i

if.else.i.i:                                      ; preds = %if.then.i.i.if.else.i.i_crit_edge, %land.lhs.true4.i.i.if.else.i.i_crit_edge
  %tobool.not.i.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.if.end28.i.i_crit_edge, label %if.then.i.i.i

if.else.i.i.if.end28.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28.i.i

if.then.i.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %d_lockref.i.i.i = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 7
  call void @lockref_get(ptr noundef %d_lockref.i.i.i) #4
  br label %if.end25.i.i

if.else23.i.i:                                    ; preds = %lor.lhs.false.i.i.if.else23.i.i_crit_edge, %land.lhs.true.i.i.if.else23.i.i_crit_edge, %if.end.if.else23.i.i_crit_edge
  %call24.i.i = call ptr @lookup_positive_unlocked(ptr noundef %name, ptr noundef %9, i32 noundef %namlen) #4
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %if.else23.i.i, %if.then.i.i.i, %if.end.i.i.if.end25.i.i_crit_edge
  %dchild.0.i.i = phi ptr [ %call.i.i, %if.end.i.i.if.end25.i.i_crit_edge ], [ %call24.i.i, %if.else23.i.i ], [ %9, %if.then.i.i.i ]
  %cmp.i.i.i = icmp ugt ptr %dchild.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end25.i.i.out_noattrs.i_crit_edge, label %if.end25.i.i.if.end28.i.i_crit_edge

if.end25.i.i.if.end28.i.i_crit_edge:              ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28.i.i

if.end25.i.i.out_noattrs.i_crit_edge:             ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_noattrs.i

if.end28.i.i:                                     ; preds = %if.end25.i.i.if.end28.i.i_crit_edge, %if.else.i.i.if.end28.i.i_crit_edge
  %dchild.062.i.i = phi ptr [ %dchild.0.i.i, %if.end25.i.i.if.end28.i.i_crit_edge ], [ null, %if.else.i.i.if.end28.i.i_crit_edge ]
  %18 = ptrtoint ptr %dchild.062.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dchild.062.i.i, align 8
  %and.i.i.i = and i32 %19, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.end31.i.i, label %if.end28.i.i.compose_entry_fh.exit.thread42.i_crit_edge

if.end28.i.i.compose_entry_fh.exit.thread42.i_crit_edge: ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %compose_entry_fh.exit.thread42.i

if.end31.i.i:                                     ; preds = %if.end28.i.i
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %dchild.062.i.i, i32 0, i32 5
  %20 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %d_inode.i.i, align 8
  %i_ino.i.i = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i_ino.i.i, align 8
  %conv32.i.i = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv32.i.i, i64 %ino)
  %cmp33.not.i.i = icmp eq i64 %conv32.i.i, %ino
  br i1 %cmp33.not.i.i, label %compose_entry_fh.exit.i, label %if.end31.i.i.compose_entry_fh.exit.thread42.i_crit_edge

if.end31.i.i.compose_entry_fh.exit.thread42.i_crit_edge: ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %compose_entry_fh.exit.thread42.i

compose_entry_fh.exit.thread42.i:                 ; preds = %if.end31.i.i.compose_entry_fh.exit.thread42.i_crit_edge, %if.end28.i.i.compose_entry_fh.exit.thread42.i_crit_edge, %if.end.i.i.compose_entry_fh.exit.thread42.i_crit_edge, %if.then13.i.i.compose_entry_fh.exit.thread42.i_crit_edge
  %dchild.1.i.ph.i = phi ptr [ %dchild.062.i.i, %if.end31.i.i.compose_entry_fh.exit.thread42.i_crit_edge ], [ %dchild.062.i.i, %if.end28.i.i.compose_entry_fh.exit.thread42.i_crit_edge ], [ %call.i.i, %if.end.i.i.compose_entry_fh.exit.thread42.i_crit_edge ], [ %9, %if.then13.i.i.compose_entry_fh.exit.thread42.i_crit_edge ]
  call void @dput(ptr noundef %dchild.1.i.ph.i) #4
  br label %out_noattrs.i

compose_entry_fh.exit.i:                          ; preds = %if.end31.i.i
  %call38.i.i = call i32 @fh_compose(ptr noundef %scratch.i, ptr noundef %11, ptr noundef %dchild.062.i.i, ptr noundef %fh.i.i) #4
  call void @dput(ptr noundef %dchild.062.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i.i)
  %cmp.not.i = icmp eq i32 %call38.i.i, 0
  br i1 %cmp.not.i, label %if.end.i22, label %compose_entry_fh.exit.i.out_noattrs.i_crit_edge

compose_entry_fh.exit.i.out_noattrs.i_crit_edge:  ; preds = %compose_entry_fh.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_noattrs.i

if.end.i22:                                       ; preds = %compose_entry_fh.exit.i
  %rqstp.i = getelementptr i8, ptr %data, i32 8
  %24 = ptrtoint ptr %rqstp.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rqstp.i, align 8
  %call3.i = call zeroext i1 @svcxdr_encode_post_op_attr(ptr noundef %25, ptr noundef %xdr1.i, ptr noundef %scratch.i) #4
  br i1 %call3.i, label %if.end5.i, label %if.end.i22.out_toosmall.sink.split_crit_edge

if.end.i22.out_toosmall.sink.split_crit_edge:     ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_toosmall.sink.split

if.end5.i:                                        ; preds = %if.end.i22
  %call.i.i.i = call ptr @xdr_reserve_space(ptr noundef %xdr1.i, i32 noundef 4) #4
  %tobool.not.i.i29.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i29.i, label %if.end5.i.out_toosmall.sink.split_crit_edge, label %if.end.i30.i, !prof !15

if.end5.i.out_toosmall.sink.split_crit_edge:      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_toosmall.sink.split

if.end.i30.i:                                     ; preds = %if.end5.i
  %26 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %call.i.i.i, align 4
  %27 = ptrtoint ptr %scratch.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %scratch.i, align 8
  %add.i.i.i = add i32 %28, 4
  %call.i5.i.i = call ptr @xdr_reserve_space(ptr noundef %xdr1.i, i32 noundef %add.i.i.i) #4
  %tobool.not.i6.i.i = icmp eq ptr %call.i5.i.i, null
  br i1 %tobool.not.i6.i.i, label %if.end.i30.i.out_toosmall.sink.split_crit_edge, label %if.end.i7.i.i

if.end.i30.i.out_toosmall.sink.split_crit_edge:   ; preds = %if.end.i30.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_toosmall.sink.split

if.end.i7.i.i:                                    ; preds = %if.end.i30.i
  %incdec.ptr.i.i.i = getelementptr i32, ptr %call.i5.i.i, i32 1
  %29 = ptrtoint ptr %call.i5.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %call.i5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool1.not.i.i.i = icmp eq i32 %28, 0
  br i1 %tobool1.not.i.i.i, label %if.end.i7.i.i.svcxdr_encode_entry3_plus.exit.thread29_crit_edge, label %if.then2.i.i.i

if.end.i7.i.i.svcxdr_encode_entry3_plus.exit.thread29_crit_edge: ; preds = %if.end.i7.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %svcxdr_encode_entry3_plus.exit.thread29

if.then2.i.i.i:                                   ; preds = %if.end.i7.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %add3.i.i.i = add i32 %28, 3
  %shr.i.i.i = lshr i32 %add3.i.i.i, 2
  %arrayidx.i.i.i = getelementptr i32, ptr %call.i5.i.i, i32 %shr.i.i.i
  %30 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %arrayidx.i.i.i, align 4
  br label %svcxdr_encode_entry3_plus.exit.thread29

svcxdr_encode_entry3_plus.exit.thread29:          ; preds = %if.then2.i.i.i, %if.end.i7.i.i.svcxdr_encode_entry3_plus.exit.thread29_crit_edge
  %31 = getelementptr i8, ptr %data, i32 -356
  %32 = call ptr @memcpy(ptr %incdec.ptr.i.i.i, ptr %31, i32 %28)
  call void @fh_put(ptr noundef %scratch.i) #4
  br label %if.end3

out_noattrs.i:                                    ; preds = %compose_entry_fh.exit.i.out_noattrs.i_crit_edge, %compose_entry_fh.exit.thread42.i, %if.end25.i.i.out_noattrs.i_crit_edge
  %call.i32.i = call ptr @xdr_reserve_space(ptr noundef %xdr1.i, i32 noundef 4) #4
  %tobool.not.i.i = icmp eq ptr %call.i32.i, null
  br i1 %tobool.not.i.i, label %out_noattrs.i.out_toosmall_crit_edge, label %if.end12.i, !prof !15

out_noattrs.i.out_toosmall_crit_edge:             ; preds = %out_noattrs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_toosmall

if.end12.i:                                       ; preds = %out_noattrs.i
  %33 = ptrtoint ptr %call.i32.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %call.i32.i, align 4
  %call.i35.i = call ptr @xdr_reserve_space(ptr noundef %xdr1.i, i32 noundef 4) #4
  %tobool.not.i36.i = icmp eq ptr %call.i35.i, null
  br i1 %tobool.not.i36.i, label %if.end12.i.out_toosmall_crit_edge, label %svcxdr_encode_entry3_plus.exit.thread24, !prof !15

if.end12.i.out_toosmall_crit_edge:                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_toosmall

svcxdr_encode_entry3_plus.exit.thread24:          ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %call.i35.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %call.i35.i, align 4
  br label %if.end3

if.end3:                                          ; preds = %svcxdr_encode_entry3_plus.exit.thread24, %svcxdr_encode_entry3_plus.exit.thread29
  call void @xdr_commit_encode(ptr noundef %xdr1.i) #4
  %35 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %data, align 8
  br label %cleanup

out_toosmall.sink.split:                          ; preds = %if.end.i30.i.out_toosmall.sink.split_crit_edge, %if.end5.i.out_toosmall.sink.split_crit_edge, %if.end.i22.out_toosmall.sink.split_crit_edge
  call void @fh_put(ptr noundef %scratch.i) #4
  br label %out_toosmall

out_toosmall:                                     ; preds = %out_toosmall.sink.split, %if.end12.i.out_toosmall_crit_edge, %out_noattrs.i.out_toosmall_crit_edge, %nfs3svc_encode_cookie3.exit.out_toosmall_crit_edge
  %36 = ptrtoint ptr %cookie_offset.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %cookie_offset.i, align 4
  %37 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 10005, ptr %data, align 8
  %38 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %1, ptr %len, align 4
  br label %cleanup

cleanup:                                          ; preds = %out_toosmall, %if.end3
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %out_toosmall ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs3svc_encode_fsstatres(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %0 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_resp, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %call.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cond = icmp eq i32 %6, 0
  %call2 = tail call zeroext i1 @svcxdr_encode_post_op_attr(ptr noundef %rqstp, ptr noundef %xdr, ptr noundef nonnull @nfs3svc_null_fh)
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end
  br i1 %call2, label %if.end4, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %sw.bb
  %f_bsize.i = getelementptr inbounds %struct.nfsd3_fsstatres, ptr %1, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %f_bsize.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %f_bsize.i, align 4
  %call.i18 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 52) #4
  %tobool.not.i19 = icmp eq ptr %call.i18, null
  br i1 %tobool.not.i19, label %if.end4.cleanup_crit_edge, label %svcxdr_encode_fsstat3resok.exit.thread

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

svcxdr_encode_fsstat3resok.exit.thread:           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i = sext i32 %8 to i64
  %f_blocks.i = getelementptr inbounds %struct.nfsd3_fsstatres, ptr %1, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %f_blocks.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %f_blocks.i, align 8
  %mul.i = mul i64 %10, %conv.i
  %11 = ptrtoint ptr %call.i18 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %mul.i, ptr %call.i18, align 1
  %add.ptr.i.i = getelementptr i32, ptr %call.i18, i32 2
  %f_bfree.i = getelementptr inbounds %struct.nfsd3_fsstatres, ptr %1, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %f_bfree.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %f_bfree.i, align 8
  %mul2.i = mul i64 %13, %conv.i
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %mul2.i, ptr %add.ptr.i.i, align 1
  %add.ptr.i28.i = getelementptr i32, ptr %call.i18, i32 4
  %f_bavail.i = getelementptr inbounds %struct.nfsd3_fsstatres, ptr %1, i32 0, i32 1, i32 4
  %15 = ptrtoint ptr %f_bavail.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %f_bavail.i, align 8
  %mul4.i = mul i64 %16, %conv.i
  %17 = ptrtoint ptr %add.ptr.i28.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 %mul4.i, ptr %add.ptr.i28.i, align 1
  %add.ptr.i29.i = getelementptr i32, ptr %call.i18, i32 6
  %f_files.i = getelementptr inbounds %struct.nfsd3_fsstatres, ptr %1, i32 0, i32 1, i32 5
  %18 = ptrtoint ptr %f_files.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %f_files.i, align 8
  %20 = ptrtoint ptr %add.ptr.i29.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 %19, ptr %add.ptr.i29.i, align 1
  %add.ptr.i30.i = getelementptr i32, ptr %call.i18, i32 8
  %f_ffree.i = getelementptr inbounds %struct.nfsd3_fsstatres, ptr %1, i32 0, i32 1, i32 6
  %21 = ptrtoint ptr %f_ffree.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %f_ffree.i, align 8
  %23 = ptrtoint ptr %add.ptr.i30.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 %22, ptr %add.ptr.i30.i, align 1
  %add.ptr.i31.i = getelementptr i32, ptr %call.i18, i32 10
  %24 = load i64, ptr %f_ffree.i, align 8
  %25 = ptrtoint ptr %add.ptr.i31.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 %24, ptr %add.ptr.i31.i, align 1
  %add.ptr.i32.i = getelementptr i32, ptr %call.i18, i32 12
  %invarsec.i = getelementptr inbounds %struct.nfsd3_fsstatres, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %invarsec.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %invarsec.i, align 8
  %28 = ptrtoint ptr %add.ptr.i32.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %add.ptr.i32.i, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br i1 %call2, label %sw.default.sw.epilog_crit_edge, label %sw.default.cleanup_crit_edge

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default.sw.epilog_crit_edge, %svcxdr_encode_fsstat3resok.exit.thread
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %sw.epilog ], [ false, %sw.bb.cleanup_crit_edge ], [ false, %sw.default.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end4.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs3svc_encode_fsinfores(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %0 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_resp, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %call.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cond = icmp eq i32 %6, 0
  %call2 = tail call zeroext i1 @svcxdr_encode_post_op_attr(ptr noundef %rqstp, ptr noundef %xdr, ptr noundef nonnull @nfs3svc_null_fh)
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end
  br i1 %call2, label %if.end4, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %sw.bb
  %call.i18 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 48) #4
  %tobool.not.i19 = icmp eq ptr %call.i18, null
  br i1 %tobool.not.i19, label %if.end4.cleanup_crit_edge, label %svcxdr_encode_fsinfo3resok.exit.thread

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

svcxdr_encode_fsinfo3resok.exit.thread:           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %f_rtmax.i = getelementptr inbounds %struct.nfsd3_fsinfores, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %f_rtmax.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %f_rtmax.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %call.i18, i32 1
  %9 = ptrtoint ptr %call.i18 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %call.i18, align 4
  %f_rtpref.i = getelementptr inbounds %struct.nfsd3_fsinfores, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %f_rtpref.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f_rtpref.i, align 8
  %incdec.ptr1.i = getelementptr i32, ptr %call.i18, i32 2
  %12 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %incdec.ptr.i, align 4
  %f_rtmult.i = getelementptr inbounds %struct.nfsd3_fsinfores, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %f_rtmult.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %f_rtmult.i, align 4
  %incdec.ptr2.i = getelementptr i32, ptr %call.i18, i32 3
  %15 = ptrtoint ptr %incdec.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %incdec.ptr1.i, align 4
  %f_wtmax.i = getelementptr inbounds %struct.nfsd3_fsinfores, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %f_wtmax.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %f_wtmax.i, align 8
  %incdec.ptr3.i = getelementptr i32, ptr %call.i18, i32 4
  %18 = ptrtoint ptr %incdec.ptr2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %incdec.ptr2.i, align 4
  %f_wtpref.i = getelementptr inbounds %struct.nfsd3_fsinfores, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %f_wtpref.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %f_wtpref.i, align 4
  %incdec.ptr4.i = getelementptr i32, ptr %call.i18, i32 5
  %21 = ptrtoint ptr %incdec.ptr3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %incdec.ptr3.i, align 4
  %f_wtmult.i = getelementptr inbounds %struct.nfsd3_fsinfores, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %f_wtmult.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %f_wtmult.i, align 8
  %incdec.ptr5.i = getelementptr i32, ptr %call.i18, i32 6
  %24 = ptrtoint ptr %incdec.ptr4.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %incdec.ptr4.i, align 4
  %f_dtpref.i = getelementptr inbounds %struct.nfsd3_fsinfores, ptr %1, i32 0, i32 7
  %25 = ptrtoint ptr %f_dtpref.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %f_dtpref.i, align 4
  %incdec.ptr6.i = getelementptr i32, ptr %call.i18, i32 7
  %27 = ptrtoint ptr %incdec.ptr5.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %incdec.ptr5.i, align 4
  %f_maxfilesize.i = getelementptr inbounds %struct.nfsd3_fsinfores, ptr %1, i32 0, i32 8
  %28 = ptrtoint ptr %f_maxfilesize.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %f_maxfilesize.i, align 8
  %30 = ptrtoint ptr %incdec.ptr6.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 %29, ptr %incdec.ptr6.i, align 1
  %add.ptr.i.i = getelementptr i32, ptr %call.i18, i32 9
  %incdec.ptr.i.i = getelementptr i32, ptr %call.i18, i32 10
  %31 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %add.ptr.i.i, align 4
  %incdec.ptr1.i.i = getelementptr i32, ptr %call.i18, i32 11
  %32 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %incdec.ptr.i.i, align 4
  %f_properties.i = getelementptr inbounds %struct.nfsd3_fsinfores, ptr %1, i32 0, i32 9
  %33 = ptrtoint ptr %f_properties.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %f_properties.i, align 8
  %35 = ptrtoint ptr %incdec.ptr1.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %incdec.ptr1.i.i, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br i1 %call2, label %sw.default.sw.epilog_crit_edge, label %sw.default.cleanup_crit_edge

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default.sw.epilog_crit_edge, %svcxdr_encode_fsinfo3resok.exit.thread
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %sw.epilog ], [ false, %sw.bb.cleanup_crit_edge ], [ false, %sw.default.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end4.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs3svc_encode_pathconfres(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %0 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_resp, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %call.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cond = icmp eq i32 %6, 0
  %call2 = tail call zeroext i1 @svcxdr_encode_post_op_attr(ptr noundef %rqstp, ptr noundef %xdr, ptr noundef nonnull @nfs3svc_null_fh)
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end
  br i1 %call2, label %if.end4, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %sw.bb
  %call.i18 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 24) #4
  %tobool.not.i19 = icmp eq ptr %call.i18, null
  br i1 %tobool.not.i19, label %if.end4.cleanup_crit_edge, label %svcxdr_encode_pathconf3resok.exit.thread

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

svcxdr_encode_pathconf3resok.exit.thread:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %p_link_max.i = getelementptr inbounds %struct.nfsd3_pathconfres, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %p_link_max.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %p_link_max.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %call.i18, i32 1
  %9 = ptrtoint ptr %call.i18 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %call.i18, align 4
  %p_name_max.i = getelementptr inbounds %struct.nfsd3_pathconfres, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %p_name_max.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %p_name_max.i, align 4
  %incdec.ptr1.i = getelementptr i32, ptr %call.i18, i32 2
  %12 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %incdec.ptr.i, align 4
  %p_no_trunc.i = getelementptr inbounds %struct.nfsd3_pathconfres, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %p_no_trunc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %p_no_trunc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i = icmp ne i32 %14, 0
  %cond.i.i = zext i1 %tobool.not.i.i to i32
  %15 = ptrtoint ptr %incdec.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %cond.i.i, ptr %incdec.ptr1.i, align 4
  %p_chown_restricted.i = getelementptr inbounds %struct.nfsd3_pathconfres, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %p_chown_restricted.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %p_chown_restricted.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i17.i = icmp ne i32 %17, 0
  %cond.i18.i = zext i1 %tobool.not.i17.i to i32
  %18 = ptrtoint ptr %incdec.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cond.i18.i, ptr %incdec.ptr1.i, align 4
  %p_case_insensitive.i = getelementptr inbounds %struct.nfsd3_pathconfres, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %p_case_insensitive.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %p_case_insensitive.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i19.i = icmp ne i32 %20, 0
  %cond.i20.i = zext i1 %tobool.not.i19.i to i32
  %21 = ptrtoint ptr %incdec.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %cond.i20.i, ptr %incdec.ptr1.i, align 4
  %p_case_preserving.i = getelementptr inbounds %struct.nfsd3_pathconfres, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %p_case_preserving.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %p_case_preserving.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i21.i = icmp ne i32 %23, 0
  %cond.i22.i = zext i1 %tobool.not.i21.i to i32
  %24 = ptrtoint ptr %incdec.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %cond.i22.i, ptr %incdec.ptr1.i, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br i1 %call2, label %sw.default.sw.epilog_crit_edge, label %sw.default.cleanup_crit_edge

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default.sw.epilog_crit_edge, %svcxdr_encode_pathconf3resok.exit.thread
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %sw.epilog ], [ false, %sw.bb.cleanup_crit_edge ], [ false, %sw.default.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end4.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs3svc_encode_commitres(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %0 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_resp, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %call.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cond = icmp eq i32 %6, 0
  %fh = getelementptr inbounds %struct.nfsd3_commitres, ptr %1, i32 0, i32 1
  %call2 = tail call fastcc zeroext i1 @svcxdr_encode_wcc_data(ptr noundef %rqstp, ptr noundef %xdr, ptr noundef %fh)
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end
  br i1 %call2, label %if.end4, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %sw.bb
  %call.i21 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 8) #4
  %tobool.not.i22 = icmp eq ptr %call.i21, null
  br i1 %tobool.not.i22, label %if.end4.cleanup_crit_edge, label %svcxdr_encode_writeverf3.exit.thread

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

svcxdr_encode_writeverf3.exit.thread:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %verf = getelementptr inbounds %struct.nfsd3_commitres, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %verf to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %verf, align 4
  %9 = ptrtoint ptr %call.i21 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 %8, ptr %call.i21, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br i1 %call2, label %sw.default.sw.epilog_crit_edge, label %sw.default.cleanup_crit_edge

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default.sw.epilog_crit_edge, %svcxdr_encode_writeverf3.exit.thread
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %sw.epilog ], [ false, %sw.bb.cleanup_crit_edge ], [ false, %sw.default.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end4.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs3svc_release_fhandle(ptr nocapture noundef readonly %rqstp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %0 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_resp, align 4
  %fh = getelementptr inbounds %struct.nfsd3_attrstat, ptr %1, i32 0, i32 1
  tail call void @fh_put(ptr noundef %fh) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fh_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs3svc_release_fhandle2(ptr nocapture noundef readonly %rqstp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %0 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_resp, align 4
  %fh1 = getelementptr inbounds %struct.nfsd3_fhandle_pair, ptr %1, i32 0, i32 1
  tail call void @fh_put(ptr noundef %fh1) #4
  %fh2 = getelementptr inbounds %struct.nfsd3_fhandle_pair, ptr %1, i32 0, i32 2
  tail call void @fh_put(ptr noundef %fh2) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfserrno(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_getattr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsid_source(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_encode_opaque(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dget_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_positive_unlocked(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fh_compose(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @nfs3_ftypes, !1, !"nfs3_ftypes", i1 false, i1 false}
!1 = !{!"../fs/nfsd/nfs3xdr.c", i32 36, i32 18}
!2 = !{ptr @nfs3svc_null_fh, !3, !"nfs3svc_null_fh", i1 false, i1 false}
!3 = !{!"../fs/nfsd/nfs3xdr.c", i32 20, i32 28}
!4 = distinct !{null, !5, !"nfs3svc_time_delta", i1 false, i1 false}
!5 = !{!"../fs/nfsd/nfs3xdr.c", i32 28, i32 32}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i8 0, i8 2}
