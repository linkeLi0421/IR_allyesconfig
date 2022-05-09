; ModuleID = '/llk/IR_all_yes/fs/nfsd/nfsxdr.c_pt.bc'
source_filename = "../fs/nfsd/nfsxdr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.25 }
%union.anon.25 = type { [5 x %struct.uid_gid_extent] }
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
%struct.ctl_table_header = type { %union.anon.27, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.svc_fh = type { %struct.knfsd_fh, i32, ptr, ptr, i8, i8, i8, i8, i32, i8, i8, i64, %struct.timespec64, %struct.timespec64, i64, %struct.kstat, i64 }
%struct.knfsd_fh = type { i32, %union.anon.150 }
%union.anon.150 = type { %struct.anon.151, [124 x i8] }
%struct.anon.151 = type { i8, i8, i8, i8, [0 x i32] }
%struct.timespec64 = type { i64, i32 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.svc_rqst = type { %struct.list_head, %struct.callback_head, ptr, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, ptr, ptr, %struct.svc_cred, ptr, ptr, i32, %struct.xdr_buf, %struct.xdr_stream, %struct.xdr_stream, ptr, %struct.xdr_buf, [260 x ptr], ptr, ptr, ptr, %struct.pagevec, [259 x %struct.kvec], [259 x %struct.bio_vec], i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i64, %struct.cache_req, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.154 }
%union.anon.154 = type { ptr, [124 x i8] }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cache_req = type { ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.svc_xprt = type { ptr, ptr, %struct.kref, %struct.list_head, %struct.list_head, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.mutex, %struct.spinlock, ptr, %struct.list_head, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, [58 x i8], %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.29 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.29 = type { %struct.callback_head }
%struct.svc_export = type { %struct.cache_head, ptr, i32, %struct.path, %struct.kuid_t, %struct.kgid_t, i32, ptr, %struct.nfsd4_fs_locations, i32, [8 x %struct.exp_flavor_info], i32, ptr, ptr, %struct.callback_head, %struct.export_stats }
%struct.cache_head = type { %struct.hlist_node, i64, i64, %struct.kref, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.nfsd4_fs_locations = type { i32, ptr, i32 }
%struct.exp_flavor_info = type { i32, i32 }
%struct.export_stats = type { i64, [3 x %struct.percpu_counter] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.114, %struct.list_head, %struct.list_head, %union.anon.115 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.5, ptr }
%union.anon.5 = type { i64 }
%struct.lockref = type { %union.anon.7 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.spinlock, i32 }
%union.anon.114 = type { %struct.list_head }
%union.anon.115 = type { %struct.hlist_node }
%struct.nfsd_sattrargs = type { %struct.svc_fh, %struct.iattr }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.nfsd_diropargs = type { %struct.svc_fh, ptr, i32 }
%struct.nfsd_readargs = type { %struct.svc_fh, i32, i32 }
%struct.nfsd_writeargs = type { %struct.svc_fh, i32, i32, %struct.xdr_buf }
%struct.nfsd_createargs = type { %struct.svc_fh, ptr, i32, %struct.iattr }
%struct.nfsd_renameargs = type { %struct.svc_fh, ptr, i32, %struct.svc_fh, ptr, i32 }
%struct.nfsd_linkargs = type { %struct.svc_fh, %struct.svc_fh, ptr, i32 }
%struct.nfsd_symlinkargs = type { %struct.svc_fh, ptr, i32, ptr, i32, %struct.iattr, %struct.kvec }
%struct.nfsd_readdirargs = type { %struct.svc_fh, i32, i32 }
%struct.nfsd_attrstat = type { i32, %struct.svc_fh, %struct.kstat }
%struct.nfsd_diropres = type { i32, %struct.svc_fh, %struct.kstat }
%struct.nfsd_readlinkres = type { i32, i32, ptr }
%struct.nfsd_readres = type { i32, %struct.svc_fh, i32, %struct.kstat, ptr }
%struct.nfsd_readdirres = type { i32, i32, %struct.xdr_stream, %struct.xdr_buf, %struct.readdir_cd, i32 }
%struct.readdir_cd = type { i32 }
%struct.nfsd_statfsres = type { i32, %struct.kstatfs }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }

@nfs_ftypes = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 0, i32 4, i32 4, i32 7, i32 2, i32 7, i32 3, i32 7, i32 1, i32 7, i32 5, i32 7, i32 6, i32 7, i32 5, i32 7], [32 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 8192, i64 24576]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 65535, i64 4294967295]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 47]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 47]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 47]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 47]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 47]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 47]
@___asan_gen_.9 = private unnamed_addr constant [11 x i8] c"nfs_ftypes\00", align 1
@___asan_gen_.10 = private constant [20 x i8] c"../fs/nfsd/nfsxdr.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 15, i32 18 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @nfs_ftypes], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_ftypes to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @svcxdr_encode_stat(ptr noundef %xdr, i32 noundef %status) local_unnamed_addr #0 align 64 {
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_reserve_space(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @svcxdr_decode_fhandle(ptr noundef %xdr, ptr nocapture noundef writeonly %fhp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 32) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = call ptr @memset(ptr %fhp, i32 0, i32 360)
  %fh_maxsize.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 1
  %1 = ptrtoint ptr %fh_maxsize.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 32, ptr %fh_maxsize.i, align 4
  %2 = getelementptr inbounds %struct.knfsd_fh, ptr %fhp, i32 0, i32 1
  %3 = call ptr @memcpy(ptr %2, ptr %call, i32 32)
  %4 = ptrtoint ptr %fhp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 32, ptr %fhp, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %5 = xor i1 %tobool.not, true
  ret i1 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_inline_decode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @svcxdr_encode_fattr(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr, ptr noundef %fhp, ptr nocapture noundef readonly %stat) local_unnamed_addr #0 align 64 {
entry:
  %time = alloca %struct.timespec64, align 8
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
  %fh_dentry = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 2
  %6 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fh_dentry, align 8
  %mode = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 1
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mode, align 4
  %10 = and i16 %9, -4096
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %time) #4
  %call1 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 68) #4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %nfsd_user_namespace.exit.cleanup_crit_edge, label %if.end

nfsd_user_namespace.exit.cleanup_crit_edge:       ; preds = %nfsd_user_namespace.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %nfsd_user_namespace.exit
  %11 = lshr i16 %9, 12
  %12 = zext i16 %11 to i32
  %arrayidx = getelementptr [16 x i32], ptr @nfs_ftypes, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %incdec.ptr = getelementptr i32, ptr %call1, i32 1
  %15 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %call1, align 4
  %16 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %mode, align 4
  %conv3 = zext i16 %17 to i32
  %incdec.ptr4 = getelementptr i32, ptr %call1, i32 2
  %18 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv3, ptr %incdec.ptr, align 4
  %nlink = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 2
  %19 = ptrtoint ptr %nlink to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nlink, align 8
  %incdec.ptr5 = getelementptr i32, ptr %call1, i32 3
  %21 = ptrtoint ptr %incdec.ptr4 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %incdec.ptr4, align 4
  %uid = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 9
  %22 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %22)
  %.unpack = load i32, ptr %uid, align 8
  %23 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call6 = tail call i32 @from_kuid_munged(ptr noundef %cond.i, [1 x i32] %23) #4
  %incdec.ptr7 = getelementptr i32, ptr %call1, i32 4
  %24 = ptrtoint ptr %incdec.ptr5 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call6, ptr %incdec.ptr5, align 4
  %gid = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 10
  %25 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %25)
  %.unpack107 = load i32, ptr %gid, align 4
  %26 = insertvalue [1 x i32] undef, i32 %.unpack107, 0
  %call9 = tail call i32 @from_kgid_munged(ptr noundef %cond.i, [1 x i32] %26) #4
  %incdec.ptr10 = getelementptr i32, ptr %call1, i32 5
  %27 = ptrtoint ptr %incdec.ptr7 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call9, ptr %incdec.ptr7, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %10)
  %cmp = icmp eq i16 %10, -24576
  %size = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 11
  %28 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %size, align 8
  br i1 %cmp, label %land.lhs.true, label %if.end20

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 1024, i64 %29)
  %cmp13 = icmp sgt i64 %29, 1024
  br i1 %cmp13, label %if.end20.thread, label %if.end20.thread130

if.end20.thread130:                               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %size, align 8
  %conv18132 = trunc i64 %31 to i32
  %p.0133 = getelementptr i32, ptr %call1, i32 6
  %32 = ptrtoint ptr %incdec.ptr10 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv18132, ptr %incdec.ptr10, align 4
  %blksize134 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 3
  %33 = ptrtoint ptr %blksize134 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %blksize134, align 4
  %35 = ptrtoint ptr %p.0133 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %p.0133, align 4
  br label %if.end33

if.end20.thread:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %p.0126 = getelementptr i32, ptr %call1, i32 6
  %36 = ptrtoint ptr %incdec.ptr10 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1024, ptr %incdec.ptr10, align 4
  %blksize127 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 3
  %37 = ptrtoint ptr %blksize127 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %blksize127, align 4
  %39 = ptrtoint ptr %p.0126 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %p.0126, align 4
  br label %if.end33

if.end20:                                         ; preds = %if.end
  %conv18 = trunc i64 %29 to i32
  %p.0 = getelementptr i32, ptr %call1, i32 6
  %40 = ptrtoint ptr %incdec.ptr10 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv18, ptr %incdec.ptr10, align 4
  %blksize = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 3
  %41 = ptrtoint ptr %blksize to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %blksize, align 4
  %43 = ptrtoint ptr %p.0 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %p.0, align 4
  %44 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values)
  switch i16 %10, label %if.end20.if.end33_crit_edge [
    i16 8192, label %if.end20.if.then28_crit_edge
    i16 24576, label %if.end20.if.then28_crit_edge136
  ]

if.end20.if.then28_crit_edge136:                  ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then28

if.end20.if.then28_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then28

if.end20.if.end33_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

if.then28:                                        ; preds = %if.end20.if.then28_crit_edge, %if.end20.if.then28_crit_edge136
  %rdev = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 8
  %45 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rdev, align 4
  %and1.i = and i32 %46, 255
  %47 = lshr i32 %46, 12
  %shl.i = and i32 %47, 1048320
  %or.i = or i32 %shl.i, %and1.i
  %and2.i = shl i32 %46, 12
  %shl3.i = and i32 %and2.i, -1048576
  %or4.i = or i32 %or.i, %shl3.i
  br label %if.end33

if.end33:                                         ; preds = %if.then28, %if.end20.if.end33_crit_edge, %if.end20.thread, %if.end20.thread130
  %storemerge108 = phi i32 [ %or4.i, %if.then28 ], [ -1, %if.end20.if.end33_crit_edge ], [ -1, %if.end20.thread ], [ -1, %if.end20.thread130 ]
  %incdec.ptr21129 = getelementptr i32, ptr %call1, i32 7
  %p.1 = getelementptr i32, ptr %call1, i32 8
  %48 = ptrtoint ptr %incdec.ptr21129 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %storemerge108, ptr %incdec.ptr21129, align 4
  %blocks = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 16
  %49 = ptrtoint ptr %blocks to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %blocks, align 8
  %conv34 = trunc i64 %50 to i32
  %incdec.ptr35 = getelementptr i32, ptr %call1, i32 9
  %51 = ptrtoint ptr %p.1 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv34, ptr %p.1, align 4
  %call36 = tail call i32 @fsid_source(ptr noundef %fhp) #4
  %52 = zext i32 %call36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %call36, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb37
  ]

sw.bb:                                            ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  %fh_export = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 3
  %53 = ptrtoint ptr %fh_export to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fh_export, align 4
  %ex_fsid = getelementptr inbounds %struct.svc_export, ptr %54, i32 0, i32 6
  %55 = ptrtoint ptr %ex_fsid to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ex_fsid, align 8
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  %fh_export38 = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 3
  %57 = ptrtoint ptr %fh_export38 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fh_export38, align 4
  %ex_uuid = getelementptr inbounds %struct.svc_export, ptr %58, i32 0, i32 7
  %59 = ptrtoint ptr %ex_uuid to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ex_uuid, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 4
  %arrayidx42 = getelementptr i32, ptr %60, i32 1
  %63 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx42, align 4
  %xor = xor i32 %64, %62
  %arrayidx45 = getelementptr i32, ptr %60, i32 2
  %65 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx45, align 4
  %xor46 = xor i32 %xor, %66
  %arrayidx49 = getelementptr i32, ptr %60, i32 3
  %67 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx49, align 4
  %xor50 = xor i32 %xor46, %68
  br label %sw.epilog

sw.default:                                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 7
  %69 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %dev, align 8
  %and1.i109 = and i32 %70, 255
  %71 = lshr i32 %70, 12
  %shl.i110 = and i32 %71, 1048320
  %or.i111 = or i32 %shl.i110, %and1.i109
  %and2.i112 = shl i32 %70, 12
  %shl3.i113 = and i32 %and2.i112, -1048576
  %or4.i114 = or i32 %or.i111, %shl3.i113
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb37, %sw.bb
  %fsid.0 = phi i32 [ %or4.i114, %sw.default ], [ %xor50, %sw.bb37 ], [ %56, %sw.bb ]
  %incdec.ptr52 = getelementptr i32, ptr %call1, i32 10
  %72 = ptrtoint ptr %incdec.ptr35 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %fsid.0, ptr %incdec.ptr35, align 4
  %ino = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 6
  %73 = ptrtoint ptr %ino to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %ino, align 8
  %conv53 = trunc i64 %74 to i32
  %incdec.ptr54 = getelementptr i32, ptr %call1, i32 11
  %75 = ptrtoint ptr %incdec.ptr52 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %conv53, ptr %incdec.ptr52, align 4
  %atime = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 12
  %76 = ptrtoint ptr %atime to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %atime, align 8
  %conv.i = trunc i64 %77 to i32
  %78 = ptrtoint ptr %incdec.ptr54 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %conv.i, ptr %incdec.ptr54, align 4
  %tv_nsec.i = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 12, i32 1
  %79 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tv_nsec.i, align 8
  %div.i = sdiv i32 %80, 1000
  %p.addr.0.i = getelementptr i32, ptr %call1, i32 13
  %incdec.ptr.i = getelementptr i32, ptr %call1, i32 12
  %81 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %div.i, ptr %incdec.ptr.i, align 4
  %mtime = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 13
  %82 = call ptr @memcpy(ptr %time, ptr %mtime, i32 16)
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 5
  %83 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %d_inode.i, align 8
  call void @lease_get_mtime(ptr noundef %84, ptr noundef nonnull %time) #4
  %85 = ptrtoint ptr %time to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %time, align 8
  %conv.i115 = trunc i64 %86 to i32
  %87 = ptrtoint ptr %p.addr.0.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %conv.i115, ptr %p.addr.0.i, align 4
  %tv_nsec.i116 = getelementptr inbounds %struct.timespec64, ptr %time, i32 0, i32 1
  %88 = ptrtoint ptr %tv_nsec.i116 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %tv_nsec.i116, align 8
  %div.i117 = sdiv i32 %89, 1000
  %p.addr.0.i118 = getelementptr i32, ptr %call1, i32 15
  %incdec.ptr.i119 = getelementptr i32, ptr %call1, i32 14
  %90 = ptrtoint ptr %incdec.ptr.i119 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %div.i117, ptr %incdec.ptr.i119, align 4
  %ctime = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 14
  %91 = ptrtoint ptr %ctime to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %ctime, align 8
  %conv.i120 = trunc i64 %92 to i32
  %93 = ptrtoint ptr %p.addr.0.i118 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %conv.i120, ptr %p.addr.0.i118, align 4
  %tv_nsec.i121 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 14, i32 1
  %94 = ptrtoint ptr %tv_nsec.i121 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %tv_nsec.i121, align 8
  %div.i122 = sdiv i32 %95, 1000
  %incdec.ptr.i124 = getelementptr i32, ptr %call1, i32 16
  %96 = ptrtoint ptr %incdec.ptr.i124 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %div.i122, ptr %incdec.ptr.i124, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %nfsd_user_namespace.exit.cleanup_crit_edge
  %97 = xor i1 %tobool.not, true
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %time) #4
  ret i1 %97
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsid_source(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lease_get_mtime(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfssvc_decode_fhandleargs(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 32) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.svcxdr_decode_fhandle.exit_crit_edge, label %if.end.i

entry.svcxdr_decode_fhandle.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %svcxdr_decode_fhandle.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = call ptr @memset(ptr %1, i32 0, i32 360)
  %fh_maxsize.i.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %fh_maxsize.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 32, ptr %fh_maxsize.i.i, align 4
  %4 = getelementptr inbounds %struct.knfsd_fh, ptr %1, i32 0, i32 1
  %5 = call ptr @memcpy(ptr %4, ptr %call.i, i32 32)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 32, ptr %1, align 8
  br label %svcxdr_decode_fhandle.exit

svcxdr_decode_fhandle.exit:                       ; preds = %if.end.i, %entry.svcxdr_decode_fhandle.exit_crit_edge
  %7 = xor i1 %tobool.not.i, true
  ret i1 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfssvc_decode_sattrargs(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 32) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = call ptr @memset(ptr %1, i32 0, i32 360)
  %fh_maxsize.i.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %fh_maxsize.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 32, ptr %fh_maxsize.i.i, align 4
  %4 = getelementptr inbounds %struct.knfsd_fh, ptr %1, i32 0, i32 1
  %5 = call ptr @memcpy(ptr %4, ptr %call.i, i32 32)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 32, ptr %1, align 8
  %attrs = getelementptr inbounds %struct.nfsd_sattrargs, ptr %1, i32 0, i32 1
  %call1 = tail call fastcc zeroext i1 @svcxdr_decode_sattr(ptr noundef %rqstp, ptr noundef %xdr, ptr noundef %attrs)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %7 = phi i1 [ %call1, %land.rhs ], [ false, %entry.land.end_crit_edge ]
  ret i1 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @svcxdr_decode_sattr(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr, ptr noundef %iap) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 32) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %iap to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %iap, align 8
  %incdec.ptr = getelementptr i32, ptr %call, i32 1
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %2, label %if.then3 [
    i32 -1, label %if.end.if.end5_crit_edge
    i32 65535, label %if.end.if.end5_crit_edge138
  ]

if.end.if.end5_crit_edge138:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %iap to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %iap, align 8
  %conv = trunc i32 %2 to i16
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %iap, i32 0, i32 1
  %5 = ptrtoint ptr %ia_mode to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %ia_mode, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge, %if.end.if.end5_crit_edge138
  %incdec.ptr6 = getelementptr i32, ptr %call, i32 2
  %6 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %incdec.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp8.not = icmp eq i32 %7, -1
  br i1 %cmp8.not, label %if.end5.if.end20_crit_edge, label %if.then10

if.end5.if.end20_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.then10:                                        ; preds = %if.end5
  %ia_uid = getelementptr inbounds %struct.iattr, ptr %iap, i32 0, i32 2
  %rq_xprt.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %8 = ptrtoint ptr %rq_xprt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rq_xprt.i, align 8
  %xpt_cred.i = getelementptr inbounds %struct.svc_xprt, ptr %9, i32 0, i32 20
  %10 = ptrtoint ptr %xpt_cred.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xpt_cred.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then10.nfsd_user_namespace.exit_crit_edge, label %cond.true.i

if.then10.nfsd_user_namespace.exit_crit_edge:     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfsd_user_namespace.exit

cond.true.i:                                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 25
  %12 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %user_ns.i, align 4
  br label %nfsd_user_namespace.exit

nfsd_user_namespace.exit:                         ; preds = %cond.true.i, %if.then10.nfsd_user_namespace.exit_crit_edge
  %cond.i = phi ptr [ %13, %cond.true.i ], [ @init_user_ns, %if.then10.nfsd_user_namespace.exit_crit_edge ]
  %call12 = tail call i32 @make_kuid(ptr noundef %cond.i, i32 noundef %7) #4
  %14 = ptrtoint ptr %ia_uid to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call12, ptr %ia_uid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call12)
  %cmp.i.not = icmp eq i32 %call12, -1
  br i1 %cmp.i.not, label %nfsd_user_namespace.exit.if.end20_crit_edge, label %if.then16

nfsd_user_namespace.exit.if.end20_crit_edge:      ; preds = %nfsd_user_namespace.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.then16:                                        ; preds = %nfsd_user_namespace.exit
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %iap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iap, align 8
  %or18 = or i32 %16, 2
  store i32 %or18, ptr %iap, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %nfsd_user_namespace.exit.if.end20_crit_edge, %if.end5.if.end20_crit_edge
  %incdec.ptr21 = getelementptr i32, ptr %call, i32 3
  %17 = ptrtoint ptr %incdec.ptr6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %incdec.ptr6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp23.not = icmp eq i32 %18, -1
  br i1 %cmp23.not, label %if.end20.if.end37_crit_edge, label %if.then25

if.end20.if.end37_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

if.then25:                                        ; preds = %if.end20
  %ia_gid = getelementptr inbounds %struct.iattr, ptr %iap, i32 0, i32 3
  %rq_xprt.i130 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %19 = ptrtoint ptr %rq_xprt.i130 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rq_xprt.i130, align 8
  %xpt_cred.i131 = getelementptr inbounds %struct.svc_xprt, ptr %20, i32 0, i32 20
  %21 = ptrtoint ptr %xpt_cred.i131 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %xpt_cred.i131, align 4
  %tobool.not.i132 = icmp eq ptr %22, null
  br i1 %tobool.not.i132, label %if.then25.nfsd_user_namespace.exit136_crit_edge, label %cond.true.i134

if.then25.nfsd_user_namespace.exit136_crit_edge:  ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfsd_user_namespace.exit136

cond.true.i134:                                   ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #6
  %user_ns.i133 = getelementptr inbounds %struct.cred, ptr %22, i32 0, i32 25
  %23 = ptrtoint ptr %user_ns.i133 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %user_ns.i133, align 4
  br label %nfsd_user_namespace.exit136

nfsd_user_namespace.exit136:                      ; preds = %cond.true.i134, %if.then25.nfsd_user_namespace.exit136_crit_edge
  %cond.i135 = phi ptr [ %24, %cond.true.i134 ], [ @init_user_ns, %if.then25.nfsd_user_namespace.exit136_crit_edge ]
  %call28 = tail call i32 @make_kgid(ptr noundef %cond.i135, i32 noundef %18) #4
  %25 = ptrtoint ptr %ia_gid to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call28, ptr %ia_gid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call28)
  %cmp.i137.not = icmp eq i32 %call28, -1
  br i1 %cmp.i137.not, label %nfsd_user_namespace.exit136.if.end37_crit_edge, label %if.then33

nfsd_user_namespace.exit136.if.end37_crit_edge:   ; preds = %nfsd_user_namespace.exit136
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

if.then33:                                        ; preds = %nfsd_user_namespace.exit136
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %iap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %iap, align 8
  %or35 = or i32 %27, 4
  store i32 %or35, ptr %iap, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %nfsd_user_namespace.exit136.if.end37_crit_edge, %if.end20.if.end37_crit_edge
  %incdec.ptr38 = getelementptr i32, ptr %call, i32 4
  %28 = ptrtoint ptr %incdec.ptr21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %incdec.ptr21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp40.not = icmp eq i32 %29, -1
  br i1 %cmp40.not, label %if.end37.if.end46_crit_edge, label %if.then42

if.end37.if.end46_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46

if.then42:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %iap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %iap, align 8
  %or44 = or i32 %31, 8
  store i32 %or44, ptr %iap, align 8
  %conv45 = zext i32 %29 to i64
  %ia_size = getelementptr inbounds %struct.iattr, ptr %iap, i32 0, i32 4
  %32 = ptrtoint ptr %ia_size to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv45, ptr %ia_size, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %if.end37.if.end46_crit_edge
  %incdec.ptr47 = getelementptr i32, ptr %call, i32 5
  %33 = ptrtoint ptr %incdec.ptr38 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %incdec.ptr38, align 4
  %incdec.ptr49 = getelementptr i32, ptr %call, i32 6
  %35 = ptrtoint ptr %incdec.ptr47 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %incdec.ptr47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp51.not = icmp eq i32 %34, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %cmp54.not = icmp eq i32 %36, -1
  %or.cond = select i1 %cmp51.not, i1 true, i1 %cmp54.not
  br i1 %or.cond, label %if.end46.if.end61_crit_edge, label %if.then56

if.end46.if.end61_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end61

if.then56:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  %37 = ptrtoint ptr %iap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %iap, align 8
  %or58 = or i32 %38, 144
  store i32 %or58, ptr %iap, align 8
  %conv59 = zext i32 %34 to i64
  %ia_atime = getelementptr inbounds %struct.iattr, ptr %iap, i32 0, i32 5
  %39 = ptrtoint ptr %ia_atime to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv59, ptr %ia_atime, align 8
  %mul = mul i32 %36, 1000
  %tv_nsec = getelementptr inbounds %struct.iattr, ptr %iap, i32 0, i32 5, i32 1
  %40 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %mul, ptr %tv_nsec, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.then56, %if.end46.if.end61_crit_edge
  %incdec.ptr62 = getelementptr i32, ptr %call, i32 7
  %41 = ptrtoint ptr %incdec.ptr49 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %incdec.ptr49, align 4
  %43 = ptrtoint ptr %incdec.ptr62 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %incdec.ptr62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %cmp66.not = icmp eq i32 %42, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %cmp69.not = icmp eq i32 %44, -1
  %or.cond129 = select i1 %cmp66.not, i1 true, i1 %cmp69.not
  br i1 %or.cond129, label %if.end61.cleanup_crit_edge, label %if.then71

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then71:                                        ; preds = %if.end61
  %45 = ptrtoint ptr %iap to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %iap, align 8
  %or73 = or i32 %46, 288
  store i32 %or73, ptr %iap, align 8
  %conv74 = zext i32 %42 to i64
  %ia_mtime = getelementptr inbounds %struct.iattr, ptr %iap, i32 0, i32 6
  %47 = ptrtoint ptr %ia_mtime to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %conv74, ptr %ia_mtime, align 8
  %mul76 = mul i32 %44, 1000
  %tv_nsec78 = getelementptr inbounds %struct.iattr, ptr %iap, i32 0, i32 6, i32 1
  %48 = ptrtoint ptr %tv_nsec78 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %mul76, ptr %tv_nsec78, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %44)
  %cmp79 = icmp eq i32 %44, 1000000
  br i1 %cmp79, label %if.then81, label %if.then71.cleanup_crit_edge

if.then71.cleanup_crit_edge:                      ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then81:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #6
  %and = and i32 %or73, -385
  %49 = ptrtoint ptr %iap to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %and, ptr %iap, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then81, %if.then71.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %entry.cleanup_crit_edge
  %50 = xor i1 %tobool.not, true
  ret i1 %50
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfssvc_decode_diropargs(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %name = getelementptr inbounds %struct.nfsd_diropargs, ptr %1, i32 0, i32 1
  %len = getelementptr inbounds %struct.nfsd_diropargs, ptr %1, i32 0, i32 2
  %call.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 32) #4
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.svcxdr_decode_diropargs.exit_crit_edge, label %land.rhs.i

entry.svcxdr_decode_diropargs.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %svcxdr_decode_diropargs.exit

land.rhs.i:                                       ; preds = %entry
  %2 = call ptr @memset(ptr %1, i32 0, i32 360)
  %fh_maxsize.i.i.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %fh_maxsize.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 32, ptr %fh_maxsize.i.i.i, align 4
  %4 = getelementptr inbounds %struct.knfsd_fh, ptr %1, i32 0, i32 1
  %5 = call ptr @memcpy(ptr %4, ptr %call.i.i, i32 32)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 32, ptr %1, align 8
  %call.i.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %land.rhs.i.svcxdr_decode_diropargs.exit_crit_edge, label %if.end.i3.i, !prof !11

land.rhs.i.svcxdr_decode_diropargs.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %svcxdr_decode_diropargs.exit

if.end.i3.i:                                      ; preds = %land.rhs.i
  %7 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call.i.i.i, align 4
  %9 = add i32 %8, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255, i32 %9)
  %10 = icmp ult i32 %9, -255
  br i1 %10, label %if.end.i3.i.svcxdr_decode_diropargs.exit_crit_edge, label %if.end4.i.i

if.end.i3.i.svcxdr_decode_diropargs.exit_crit_edge: ; preds = %if.end.i3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %svcxdr_decode_diropargs.exit

if.end4.i.i:                                      ; preds = %if.end.i3.i
  %call5.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %8) #4
  %tobool.not.i4.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not.i4.i, label %if.end4.i.i.svcxdr_decode_diropargs.exit_crit_edge, label %for.body.preheader.i.i

if.end4.i.i.svcxdr_decode_diropargs.exit_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %svcxdr_decode_diropargs.exit

for.body.preheader.i.i:                           ; preds = %if.end4.i.i
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %8, ptr %len, align 4
  %12 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call5.i.i, ptr %name, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %c.033.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %call5.i.i, %for.body.preheader.i.i ]
  %i.032.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %13 = ptrtoint ptr %c.033.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %c.033.i.i, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %14, label %for.inc.i.i [
    i8 0, label %for.body.i.i.svcxdr_decode_diropargs.exit_crit_edge
    i8 47, label %for.body.i.i.svcxdr_decode_diropargs.exit_crit_edge3
  ]

for.body.i.i.svcxdr_decode_diropargs.exit_crit_edge3: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %svcxdr_decode_diropargs.exit

for.body.i.i.svcxdr_decode_diropargs.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %svcxdr_decode_diropargs.exit

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.032.i.i, 1
  %incdec.ptr.i.i = getelementptr i8, ptr %c.033.i.i, i32 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %8
  br i1 %exitcond.not.i.i, label %for.inc.i.i.svcxdr_decode_diropargs.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

for.inc.i.i.svcxdr_decode_diropargs.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %svcxdr_decode_diropargs.exit

svcxdr_decode_diropargs.exit:                     ; preds = %for.inc.i.i.svcxdr_decode_diropargs.exit_crit_edge, %for.body.i.i.svcxdr_decode_diropargs.exit_crit_edge, %for.body.i.i.svcxdr_decode_diropargs.exit_crit_edge3, %if.end4.i.i.svcxdr_decode_diropargs.exit_crit_edge, %if.end.i3.i.svcxdr_decode_diropargs.exit_crit_edge, %land.rhs.i.svcxdr_decode_diropargs.exit_crit_edge, %entry.svcxdr_decode_diropargs.exit_crit_edge
  %16 = phi i1 [ false, %entry.svcxdr_decode_diropargs.exit_crit_edge ], [ false, %if.end.i3.i.svcxdr_decode_diropargs.exit_crit_edge ], [ false, %if.end4.i.i.svcxdr_decode_diropargs.exit_crit_edge ], [ false, %land.rhs.i.svcxdr_decode_diropargs.exit_crit_edge ], [ false, %for.body.i.i.svcxdr_decode_diropargs.exit_crit_edge ], [ false, %for.body.i.i.svcxdr_decode_diropargs.exit_crit_edge3 ], [ true, %for.inc.i.i.svcxdr_decode_diropargs.exit_crit_edge ]
  ret i1 %16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfssvc_decode_readargs(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 32) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = call ptr @memset(ptr %1, i32 0, i32 360)
  %fh_maxsize.i.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %fh_maxsize.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 32, ptr %fh_maxsize.i.i, align 4
  %4 = getelementptr inbounds %struct.knfsd_fh, ptr %1, i32 0, i32 1
  %5 = call ptr @memcpy(ptr %4, ptr %call.i, i32 32)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 32, ptr %1, align 8
  %call.i18 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i19 = icmp eq ptr %call.i18, null
  br i1 %tobool.not.i19, label %if.end.cleanup_crit_edge, label %if.end3, !prof !11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %offset = getelementptr inbounds %struct.nfsd_readargs, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %call.i18 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call.i18, align 4
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %offset, align 4
  %call.i21 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i22 = icmp eq ptr %call.i21, null
  br i1 %tobool.not.i22, label %if.end3.cleanup_crit_edge, label %if.end7, !prof !11

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %count = getelementptr inbounds %struct.nfsd_readargs, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %call.i21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call.i21, align 4
  %12 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %count, align 4
  %call.i26 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i27 = icmp eq ptr %call.i26, null
  br i1 %tobool.not.i27, label %13, label %if.end7.cleanup_crit_edge, !prof !11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

13:                                               ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %13, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %13 ], [ true, %if.end7.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.end3.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfssvc_decode_writeargs(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 32) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = call ptr @memset(ptr %1, i32 0, i32 360)
  %fh_maxsize.i.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %fh_maxsize.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 32, ptr %fh_maxsize.i.i, align 4
  %4 = getelementptr inbounds %struct.knfsd_fh, ptr %1, i32 0, i32 1
  %5 = call ptr @memcpy(ptr %4, ptr %call.i, i32 32)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 32, ptr %1, align 8
  %call.i36 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i37 = icmp eq ptr %call.i36, null
  br i1 %tobool.not.i37, label %if.end.cleanup_crit_edge, label %if.end3, !prof !11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call.i39 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i40 = icmp eq ptr %call.i39, null
  br i1 %tobool.not.i40, label %if.end3.cleanup_crit_edge, label %if.end7, !prof !11

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %offset = getelementptr inbounds %struct.nfsd_writeargs, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %call.i39 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call.i39, align 4
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %offset, align 4
  %call.i44 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i45 = icmp eq ptr %call.i44, null
  br i1 %tobool.not.i45, label %if.end7.cleanup_crit_edge, label %if.end11, !prof !11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %call.i49 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i50 = icmp eq ptr %call.i49, null
  br i1 %tobool.not.i50, label %if.end11.cleanup_crit_edge, label %if.end15, !prof !11

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %len = getelementptr inbounds %struct.nfsd_writeargs, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %call.i49 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call.i49, align 4
  %12 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %11)
  %cmp17 = icmp sgt i32 %11, 8192
  br i1 %cmp17, label %if.end15.cleanup_crit_edge, label %if.end19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %payload = getelementptr inbounds %struct.nfsd_writeargs, ptr %1, i32 0, i32 3
  %call21 = tail call zeroext i1 @xdr_stream_subsegment(ptr noundef %xdr, ptr noundef %payload, i32 noundef %11) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end15.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end15.cleanup_crit_edge ], [ %call21, %if.end19 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.end3.cleanup_crit_edge ], [ false, %if.end7.cleanup_crit_edge ], [ false, %if.end11.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xdr_stream_subsegment(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfssvc_decode_createargs(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %name = getelementptr inbounds %struct.nfsd_createargs, ptr %1, i32 0, i32 1
  %len = getelementptr inbounds %struct.nfsd_createargs, ptr %1, i32 0, i32 2
  %call.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 32) #4
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.land.end_crit_edge, label %land.rhs.i

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.rhs.i:                                       ; preds = %entry
  %2 = call ptr @memset(ptr %1, i32 0, i32 360)
  %fh_maxsize.i.i.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %fh_maxsize.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 32, ptr %fh_maxsize.i.i.i, align 4
  %4 = getelementptr inbounds %struct.knfsd_fh, ptr %1, i32 0, i32 1
  %5 = call ptr @memcpy(ptr %4, ptr %call.i.i, i32 32)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 32, ptr %1, align 8
  %call.i.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %land.rhs.i.land.end_crit_edge, label %if.end.i3.i, !prof !11

land.rhs.i.land.end_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

if.end.i3.i:                                      ; preds = %land.rhs.i
  %7 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call.i.i.i, align 4
  %9 = add i32 %8, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255, i32 %9)
  %10 = icmp ult i32 %9, -255
  br i1 %10, label %if.end.i3.i.land.end_crit_edge, label %if.end4.i.i

if.end.i3.i.land.end_crit_edge:                   ; preds = %if.end.i3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

if.end4.i.i:                                      ; preds = %if.end.i3.i
  %call5.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %8) #4
  %tobool.not.i4.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not.i4.i, label %if.end4.i.i.land.end_crit_edge, label %for.body.preheader.i.i

if.end4.i.i.land.end_crit_edge:                   ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

for.body.preheader.i.i:                           ; preds = %if.end4.i.i
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %8, ptr %len, align 4
  %12 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call5.i.i, ptr %name, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %c.033.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %call5.i.i, %for.body.preheader.i.i ]
  %i.032.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %13 = ptrtoint ptr %c.033.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %c.033.i.i, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %14, label %for.inc.i.i [
    i8 0, label %for.body.i.i.land.end_crit_edge
    i8 47, label %for.body.i.i.land.end_crit_edge7
  ]

for.body.i.i.land.end_crit_edge7:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

for.body.i.i.land.end_crit_edge:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.032.i.i, 1
  %incdec.ptr.i.i = getelementptr i8, ptr %c.033.i.i, i32 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %8
  br i1 %exitcond.not.i.i, label %land.rhs, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

land.rhs:                                         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %attrs = getelementptr inbounds %struct.nfsd_createargs, ptr %1, i32 0, i32 3
  %call1 = tail call fastcc zeroext i1 @svcxdr_decode_sattr(ptr noundef %rqstp, ptr noundef %xdr, ptr noundef %attrs)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body.i.i.land.end_crit_edge, %for.body.i.i.land.end_crit_edge7, %if.end4.i.i.land.end_crit_edge, %if.end.i3.i.land.end_crit_edge, %land.rhs.i.land.end_crit_edge, %entry.land.end_crit_edge
  %16 = phi i1 [ %call1, %land.rhs ], [ false, %entry.land.end_crit_edge ], [ false, %if.end.i3.i.land.end_crit_edge ], [ false, %if.end4.i.i.land.end_crit_edge ], [ false, %land.rhs.i.land.end_crit_edge ], [ false, %for.body.i.i.land.end_crit_edge ], [ false, %for.body.i.i.land.end_crit_edge7 ]
  ret i1 %16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfssvc_decode_renameargs(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %fname = getelementptr inbounds %struct.nfsd_renameargs, ptr %1, i32 0, i32 1
  %flen = getelementptr inbounds %struct.nfsd_renameargs, ptr %1, i32 0, i32 2
  %call.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 32) #4
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.land.end_crit_edge, label %land.rhs.i

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.rhs.i:                                       ; preds = %entry
  %2 = call ptr @memset(ptr %1, i32 0, i32 360)
  %fh_maxsize.i.i.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %fh_maxsize.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 32, ptr %fh_maxsize.i.i.i, align 4
  %4 = getelementptr inbounds %struct.knfsd_fh, ptr %1, i32 0, i32 1
  %5 = call ptr @memcpy(ptr %4, ptr %call.i.i, i32 32)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 32, ptr %1, align 8
  %call.i.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %land.rhs.i.land.end_crit_edge, label %if.end.i3.i, !prof !11

land.rhs.i.land.end_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

if.end.i3.i:                                      ; preds = %land.rhs.i
  %7 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call.i.i.i, align 4
  %9 = add i32 %8, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255, i32 %9)
  %10 = icmp ult i32 %9, -255
  br i1 %10, label %if.end.i3.i.land.end_crit_edge, label %if.end4.i.i

if.end.i3.i.land.end_crit_edge:                   ; preds = %if.end.i3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

if.end4.i.i:                                      ; preds = %if.end.i3.i
  %call5.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %8) #4
  %tobool.not.i4.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not.i4.i, label %if.end4.i.i.land.end_crit_edge, label %for.body.preheader.i.i

if.end4.i.i.land.end_crit_edge:                   ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

for.body.preheader.i.i:                           ; preds = %if.end4.i.i
  %11 = ptrtoint ptr %flen to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %8, ptr %flen, align 4
  %12 = ptrtoint ptr %fname to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call5.i.i, ptr %fname, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %c.033.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %call5.i.i, %for.body.preheader.i.i ]
  %i.032.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %13 = ptrtoint ptr %c.033.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %c.033.i.i, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %14, label %for.inc.i.i [
    i8 0, label %for.body.i.i.land.end_crit_edge
    i8 47, label %for.body.i.i.land.end_crit_edge32
  ]

for.body.i.i.land.end_crit_edge32:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

for.body.i.i.land.end_crit_edge:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.032.i.i, 1
  %incdec.ptr.i.i = getelementptr i8, ptr %c.033.i.i, i32 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %8
  br i1 %exitcond.not.i.i, label %land.rhs, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

land.rhs:                                         ; preds = %for.inc.i.i
  %tname = getelementptr inbounds %struct.nfsd_renameargs, ptr %1, i32 0, i32 4
  %tlen = getelementptr inbounds %struct.nfsd_renameargs, ptr %1, i32 0, i32 5
  %call.i.i8 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 32) #4
  %tobool.not.i.i9 = icmp eq ptr %call.i.i8, null
  br i1 %tobool.not.i.i9, label %land.rhs.land.end_crit_edge, label %land.rhs.i13

land.rhs.land.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.rhs.i13:                                     ; preds = %land.rhs
  %tfh = getelementptr inbounds %struct.nfsd_renameargs, ptr %1, i32 0, i32 3
  %16 = call ptr @memset(ptr %tfh, i32 0, i32 360)
  %fh_maxsize.i.i.i10 = getelementptr inbounds %struct.nfsd_renameargs, ptr %1, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %fh_maxsize.i.i.i10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 32, ptr %fh_maxsize.i.i.i10, align 4
  %18 = getelementptr inbounds %struct.nfsd_renameargs, ptr %1, i32 0, i32 3, i32 0, i32 1
  %19 = call ptr @memcpy(ptr %18, ptr %call.i.i8, i32 32)
  %20 = ptrtoint ptr %tfh to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 32, ptr %tfh, align 8
  %call.i.i.i11 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i.i.i12 = icmp eq ptr %call.i.i.i11, null
  br i1 %tobool.not.i.i.i12, label %land.rhs.i13.land.end_crit_edge, label %if.end.i3.i14, !prof !11

land.rhs.i13.land.end_crit_edge:                  ; preds = %land.rhs.i13
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

if.end.i3.i14:                                    ; preds = %land.rhs.i13
  %21 = ptrtoint ptr %call.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %call.i.i.i11, align 4
  %23 = add i32 %22, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255, i32 %23)
  %24 = icmp ult i32 %23, -255
  br i1 %24, label %if.end.i3.i14.land.end_crit_edge, label %if.end4.i.i17

if.end.i3.i14.land.end_crit_edge:                 ; preds = %if.end.i3.i14
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

if.end4.i.i17:                                    ; preds = %if.end.i3.i14
  %call5.i.i15 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %22) #4
  %tobool.not.i4.i16 = icmp eq ptr %call5.i.i15, null
  br i1 %tobool.not.i4.i16, label %if.end4.i.i17.land.end_crit_edge, label %for.body.preheader.i.i18

if.end4.i.i17.land.end_crit_edge:                 ; preds = %if.end4.i.i17
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

for.body.preheader.i.i18:                         ; preds = %if.end4.i.i17
  %25 = ptrtoint ptr %tlen to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %22, ptr %tlen, align 4
  %26 = ptrtoint ptr %tname to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call5.i.i15, ptr %tname, align 4
  br label %for.body.i.i21

for.body.i.i21:                                   ; preds = %for.inc.i.i25.for.body.i.i21_crit_edge, %for.body.preheader.i.i18
  %c.033.i.i19 = phi ptr [ %incdec.ptr.i.i23, %for.inc.i.i25.for.body.i.i21_crit_edge ], [ %call5.i.i15, %for.body.preheader.i.i18 ]
  %i.032.i.i20 = phi i32 [ %inc.i.i22, %for.inc.i.i25.for.body.i.i21_crit_edge ], [ 0, %for.body.preheader.i.i18 ]
  %27 = ptrtoint ptr %c.033.i.i19 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %c.033.i.i19, align 1
  %29 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %28, label %for.inc.i.i25 [
    i8 0, label %for.body.i.i21.land.end_crit_edge
    i8 47, label %for.body.i.i21.land.end_crit_edge33
  ]

for.body.i.i21.land.end_crit_edge33:              ; preds = %for.body.i.i21
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

for.body.i.i21.land.end_crit_edge:                ; preds = %for.body.i.i21
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

for.inc.i.i25:                                    ; preds = %for.body.i.i21
  %inc.i.i22 = add nuw nsw i32 %i.032.i.i20, 1
  %incdec.ptr.i.i23 = getelementptr i8, ptr %c.033.i.i19, i32 1
  %exitcond.not.i.i24 = icmp eq i32 %inc.i.i22, %22
  br i1 %exitcond.not.i.i24, label %for.inc.i.i25.land.end_crit_edge, label %for.inc.i.i25.for.body.i.i21_crit_edge

for.inc.i.i25.for.body.i.i21_crit_edge:           ; preds = %for.inc.i.i25
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i21

for.inc.i.i25.land.end_crit_edge:                 ; preds = %for.inc.i.i25
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.end:                                         ; preds = %for.inc.i.i25.land.end_crit_edge, %for.body.i.i21.land.end_crit_edge, %for.body.i.i21.land.end_crit_edge33, %if.end4.i.i17.land.end_crit_edge, %if.end.i3.i14.land.end_crit_edge, %land.rhs.i13.land.end_crit_edge, %land.rhs.land.end_crit_edge, %for.body.i.i.land.end_crit_edge, %for.body.i.i.land.end_crit_edge32, %if.end4.i.i.land.end_crit_edge, %if.end.i3.i.land.end_crit_edge, %land.rhs.i.land.end_crit_edge, %entry.land.end_crit_edge
  %30 = phi i1 [ false, %land.rhs.land.end_crit_edge ], [ false, %if.end.i3.i14.land.end_crit_edge ], [ false, %if.end4.i.i17.land.end_crit_edge ], [ false, %land.rhs.i13.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ], [ false, %if.end.i3.i.land.end_crit_edge ], [ false, %if.end4.i.i.land.end_crit_edge ], [ false, %land.rhs.i.land.end_crit_edge ], [ false, %for.body.i.i21.land.end_crit_edge ], [ false, %for.body.i.i21.land.end_crit_edge33 ], [ true, %for.inc.i.i25.land.end_crit_edge ], [ false, %for.body.i.i.land.end_crit_edge ], [ false, %for.body.i.i.land.end_crit_edge32 ]
  ret i1 %30
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfssvc_decode_linkargs(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 32) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.rhs:                                         ; preds = %entry
  %2 = call ptr @memset(ptr %1, i32 0, i32 360)
  %fh_maxsize.i.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %fh_maxsize.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 32, ptr %fh_maxsize.i.i, align 4
  %4 = getelementptr inbounds %struct.knfsd_fh, ptr %1, i32 0, i32 1
  %5 = call ptr @memcpy(ptr %4, ptr %call.i, i32 32)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 32, ptr %1, align 8
  %tname = getelementptr inbounds %struct.nfsd_linkargs, ptr %1, i32 0, i32 2
  %tlen = getelementptr inbounds %struct.nfsd_linkargs, ptr %1, i32 0, i32 3
  %call.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 32) #4
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %land.rhs.land.end_crit_edge, label %land.rhs.i

land.rhs.land.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.rhs.i:                                       ; preds = %land.rhs
  %tfh = getelementptr inbounds %struct.nfsd_linkargs, ptr %1, i32 0, i32 1
  %7 = call ptr @memset(ptr %tfh, i32 0, i32 360)
  %fh_maxsize.i.i.i = getelementptr inbounds %struct.nfsd_linkargs, ptr %1, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %fh_maxsize.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 32, ptr %fh_maxsize.i.i.i, align 4
  %9 = getelementptr inbounds %struct.nfsd_linkargs, ptr %1, i32 0, i32 1, i32 0, i32 1
  %10 = call ptr @memcpy(ptr %9, ptr %call.i.i, i32 32)
  %11 = ptrtoint ptr %tfh to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 32, ptr %tfh, align 8
  %call.i.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %land.rhs.i.land.end_crit_edge, label %if.end.i3.i, !prof !11

land.rhs.i.land.end_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

if.end.i3.i:                                      ; preds = %land.rhs.i
  %12 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call.i.i.i, align 4
  %14 = add i32 %13, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255, i32 %14)
  %15 = icmp ult i32 %14, -255
  br i1 %15, label %if.end.i3.i.land.end_crit_edge, label %if.end4.i.i

if.end.i3.i.land.end_crit_edge:                   ; preds = %if.end.i3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

if.end4.i.i:                                      ; preds = %if.end.i3.i
  %call5.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %13) #4
  %tobool.not.i4.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not.i4.i, label %if.end4.i.i.land.end_crit_edge, label %for.body.preheader.i.i

if.end4.i.i.land.end_crit_edge:                   ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

for.body.preheader.i.i:                           ; preds = %if.end4.i.i
  %16 = ptrtoint ptr %tlen to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %13, ptr %tlen, align 4
  %17 = ptrtoint ptr %tname to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call5.i.i, ptr %tname, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %c.033.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %call5.i.i, %for.body.preheader.i.i ]
  %i.032.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %18 = ptrtoint ptr %c.033.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %c.033.i.i, align 1
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %19, label %for.inc.i.i [
    i8 0, label %for.body.i.i.land.end_crit_edge
    i8 47, label %for.body.i.i.land.end_crit_edge6
  ]

for.body.i.i.land.end_crit_edge6:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

for.body.i.i.land.end_crit_edge:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.032.i.i, 1
  %incdec.ptr.i.i = getelementptr i8, ptr %c.033.i.i, i32 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %13
  br i1 %exitcond.not.i.i, label %for.inc.i.i.land.end_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

for.inc.i.i.land.end_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.end:                                         ; preds = %for.inc.i.i.land.end_crit_edge, %for.body.i.i.land.end_crit_edge, %for.body.i.i.land.end_crit_edge6, %if.end4.i.i.land.end_crit_edge, %if.end.i3.i.land.end_crit_edge, %land.rhs.i.land.end_crit_edge, %land.rhs.land.end_crit_edge, %entry.land.end_crit_edge
  %21 = phi i1 [ false, %entry.land.end_crit_edge ], [ false, %land.rhs.land.end_crit_edge ], [ false, %if.end.i3.i.land.end_crit_edge ], [ false, %if.end4.i.i.land.end_crit_edge ], [ false, %land.rhs.i.land.end_crit_edge ], [ false, %for.body.i.i.land.end_crit_edge ], [ false, %for.body.i.i.land.end_crit_edge6 ], [ true, %for.inc.i.i.land.end_crit_edge ]
  ret i1 %21
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfssvc_decode_symlinkargs(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %fname = getelementptr inbounds %struct.nfsd_symlinkargs, ptr %1, i32 0, i32 1
  %flen = getelementptr inbounds %struct.nfsd_symlinkargs, ptr %1, i32 0, i32 2
  %call.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 32) #4
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %land.rhs.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.rhs.i:                                       ; preds = %entry
  %2 = call ptr @memset(ptr %1, i32 0, i32 360)
  %fh_maxsize.i.i.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %fh_maxsize.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 32, ptr %fh_maxsize.i.i.i, align 4
  %4 = getelementptr inbounds %struct.knfsd_fh, ptr %1, i32 0, i32 1
  %5 = call ptr @memcpy(ptr %4, ptr %call.i.i, i32 32)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 32, ptr %1, align 8
  %call.i.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %land.rhs.i.cleanup_crit_edge, label %if.end.i3.i, !prof !11

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i3.i:                                      ; preds = %land.rhs.i
  %7 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call.i.i.i, align 4
  %9 = add i32 %8, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255, i32 %9)
  %10 = icmp ult i32 %9, -255
  br i1 %10, label %if.end.i3.i.cleanup_crit_edge, label %if.end4.i.i

if.end.i3.i.cleanup_crit_edge:                    ; preds = %if.end.i3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4.i.i:                                      ; preds = %if.end.i3.i
  %call5.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %8) #4
  %tobool.not.i4.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not.i4.i, label %if.end4.i.i.cleanup_crit_edge, label %for.body.preheader.i.i

if.end4.i.i.cleanup_crit_edge:                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.preheader.i.i:                           ; preds = %if.end4.i.i
  %11 = ptrtoint ptr %flen to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %8, ptr %flen, align 4
  %12 = ptrtoint ptr %fname to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call5.i.i, ptr %fname, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %c.033.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %call5.i.i, %for.body.preheader.i.i ]
  %i.032.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %13 = ptrtoint ptr %c.033.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %c.033.i.i, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %14, label %for.inc.i.i [
    i8 0, label %for.body.i.i.cleanup_crit_edge
    i8 47, label %for.body.i.i.cleanup_crit_edge37
  ]

for.body.i.i.cleanup_crit_edge37:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.i.i.cleanup_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.032.i.i, 1
  %incdec.ptr.i.i = getelementptr i8, ptr %c.033.i.i, i32 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %8
  br i1 %exitcond.not.i.i, label %if.end, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

if.end:                                           ; preds = %for.inc.i.i
  %tlen = getelementptr inbounds %struct.nfsd_symlinkargs, ptr %1, i32 0, i32 4
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end4, !prof !11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call.i, align 4
  %18 = ptrtoint ptr %tlen to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %tlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp6 = icmp eq i32 %17, 0
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %iov_len = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 0, i32 0, i32 1
  %19 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iov_len, align 4
  %call9 = tail call i32 @xdr_stream_pos(ptr noundef %xdr) #4
  %sub = sub i32 %20, %call9
  %first = getelementptr inbounds %struct.nfsd_symlinkargs, ptr %1, i32 0, i32 6
  %iov_len10 = getelementptr inbounds %struct.nfsd_symlinkargs, ptr %1, i32 0, i32 6, i32 1
  %21 = ptrtoint ptr %iov_len10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub, ptr %iov_len10, align 4
  %22 = ptrtoint ptr %tlen to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tlen, align 4
  %call12 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %23) #4
  %24 = ptrtoint ptr %first to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call12, ptr %first, align 8
  %tobool.not = icmp eq ptr %call12, null
  br i1 %tobool.not, label %if.end8.cleanup_crit_edge, label %if.end17

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %attrs = getelementptr inbounds %struct.nfsd_symlinkargs, ptr %1, i32 0, i32 5
  %call18 = tail call fastcc zeroext i1 @svcxdr_decode_sattr(ptr noundef %rqstp, ptr noundef %xdr, ptr noundef %attrs)
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.body.i.i.cleanup_crit_edge, %for.body.i.i.cleanup_crit_edge37, %if.end4.i.i.cleanup_crit_edge, %if.end.i3.i.cleanup_crit_edge, %land.rhs.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %call18, %if.end17 ], [ false, %if.end4.cleanup_crit_edge ], [ false, %if.end8.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.i3.i.cleanup_crit_edge ], [ false, %if.end4.i.i.cleanup_crit_edge ], [ false, %land.rhs.i.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %for.body.i.i.cleanup_crit_edge ], [ false, %for.body.i.i.cleanup_crit_edge37 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdr_stream_pos(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfssvc_decode_readdirargs(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 32) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = call ptr @memset(ptr %1, i32 0, i32 360)
  %fh_maxsize.i.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %fh_maxsize.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 32, ptr %fh_maxsize.i.i, align 4
  %4 = getelementptr inbounds %struct.knfsd_fh, ptr %1, i32 0, i32 1
  %5 = call ptr @memcpy(ptr %4, ptr %call.i, i32 32)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 32, ptr %1, align 8
  %call.i12 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i13 = icmp eq ptr %call.i12, null
  br i1 %tobool.not.i13, label %if.end.cleanup_crit_edge, label %if.end3, !prof !11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %cookie = getelementptr inbounds %struct.nfsd_readdirargs, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %call.i12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call.i12, align 4
  %9 = ptrtoint ptr %cookie to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %cookie, align 4
  %call.i15 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i16 = icmp eq ptr %call.i15, null
  br i1 %tobool.not.i16, label %if.end3.cleanup_crit_edge, label %xdr_stream_decode_u32.exit19, !prof !11

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

xdr_stream_decode_u32.exit19:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %count = getelementptr inbounds %struct.nfsd_readdirargs, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %call.i15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call.i15, align 4
  %12 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %count, align 4
  br label %cleanup

cleanup:                                          ; preds = %xdr_stream_decode_u32.exit19, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ true, %xdr_stream_decode_u32.exit19 ], [ false, %if.end3.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfssvc_encode_statres(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.svcxdr_encode_stat.exit_crit_edge, label %if.end.i

entry.svcxdr_encode_stat.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %svcxdr_encode_stat.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %call.i, align 4
  br label %svcxdr_encode_stat.exit

svcxdr_encode_stat.exit:                          ; preds = %if.end.i, %entry.svcxdr_encode_stat.exit_crit_edge
  %5 = xor i1 %tobool.not.i, true
  ret i1 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfssvc_encode_attrstatres(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
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
  %fh = getelementptr inbounds %struct.nfsd_attrstat, ptr %1, i32 0, i32 1
  %stat = getelementptr inbounds %struct.nfsd_attrstat, ptr %1, i32 0, i32 2
  %call2 = tail call zeroext i1 @svcxdr_encode_fattr(ptr noundef %rqstp, ptr noundef %xdr, ptr noundef %fh, ptr noundef %stat)
  br i1 %call2, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

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
define dso_local zeroext i1 @nfssvc_encode_diropres(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
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
  %call.i16 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 32) #4
  %tobool.not.i17 = icmp eq ptr %call.i16, null
  br i1 %tobool.not.i17, label %sw.bb.cleanup_crit_edge, label %if.end4

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %sw.bb
  %fh = getelementptr inbounds %struct.nfsd_diropres, ptr %1, i32 0, i32 1
  %7 = getelementptr inbounds %struct.nfsd_diropres, ptr %1, i32 0, i32 1, i32 0, i32 1
  %8 = call ptr @memcpy(ptr %call.i16, ptr %7, i32 32)
  %stat = getelementptr inbounds %struct.nfsd_diropres, ptr %1, i32 0, i32 2
  %call6 = tail call zeroext i1 @svcxdr_encode_fattr(ptr noundef %rqstp, ptr noundef %xdr, ptr noundef %fh, ptr noundef %stat)
  br i1 %call6, label %if.end4.sw.epilog_crit_edge, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4.sw.epilog_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end4.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end4.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %sw.epilog ], [ false, %if.end4.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %sw.bb.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfssvc_encode_readlinkres(ptr noundef %rqstp, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
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
  br i1 %cond, label %sw.bb, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %len = getelementptr inbounds %struct.nfsd_readlinkres, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  %call.i22 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i23 = icmp eq ptr %call.i22, null
  br i1 %tobool.not.i23, label %sw.bb.cleanup_crit_edge, label %if.end5, !prof !11

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %sw.bb
  %9 = ptrtoint ptr %call.i22 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %call.i22, align 4
  %page = getelementptr inbounds %struct.nfsd_readlinkres, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  tail call void @xdr_write_pages(ptr noundef %xdr, ptr noundef %page, i32 noundef 0, i32 noundef %11) #4
  %iov_len = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iov_len, align 4
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  %call8 = tail call i32 @svc_encode_result_payload(ptr noundef %rqstp, i32 noundef %13, i32 noundef %15) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end5.cleanup_crit_edge, label %if.end5.sw.epilog_crit_edge

if.end5.sw.epilog_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.epilog:                                        ; preds = %if.end5.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end5.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %sw.epilog ], [ false, %if.end5.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %sw.bb.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_write_pages(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_encode_result_payload(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfssvc_encode_readres(ptr noundef %rqstp, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
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
  %fh = getelementptr inbounds %struct.nfsd_readres, ptr %1, i32 0, i32 1
  %stat = getelementptr inbounds %struct.nfsd_readres, ptr %1, i32 0, i32 3
  %call3 = tail call zeroext i1 @svcxdr_encode_fattr(ptr noundef %rqstp, ptr noundef %xdr, ptr noundef %fh, ptr noundef %stat)
  br i1 %call3, label %if.end5, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %sw.bb
  %count = getelementptr inbounds %struct.nfsd_readres, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count, align 8
  %call.i31 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i32 = icmp eq ptr %call.i31, null
  br i1 %tobool.not.i32, label %if.end5.cleanup_crit_edge, label %if.end8, !prof !11

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %9 = ptrtoint ptr %call.i31 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %call.i31, align 4
  %pages = getelementptr inbounds %struct.nfsd_readres, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pages, align 8
  %page_base = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 4
  %12 = ptrtoint ptr %page_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %page_base, align 8
  %14 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count, align 8
  tail call void @xdr_write_pages(ptr noundef %xdr, ptr noundef %11, i32 noundef %13, i32 noundef %15) #4
  %iov_len = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iov_len, align 4
  %18 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count, align 8
  %call12 = tail call i32 @svc_encode_result_payload(ptr noundef %rqstp, i32 noundef %17, i32 noundef %19) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end8.cleanup_crit_edge, label %if.end8.sw.epilog_crit_edge

if.end8.sw.epilog_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.epilog:                                        ; preds = %if.end8.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end8.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %sw.epilog ], [ false, %sw.bb.cleanup_crit_edge ], [ false, %if.end8.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end5.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfssvc_encode_readdirres(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
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
  br i1 %cond, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %pages = getelementptr inbounds %struct.nfsd_readdirres, ptr %1, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pages, align 4
  %len = getelementptr inbounds %struct.nfsd_readdirres, ptr %1, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  tail call void @xdr_write_pages(ptr noundef %xdr, ptr noundef %8, i32 noundef 0, i32 noundef %10) #4
  %call.i20 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i21 = icmp eq ptr %call.i20, null
  br i1 %tobool.not.i21, label %sw.bb.cleanup_crit_edge, label %if.end5, !prof !11

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %sw.bb
  %11 = ptrtoint ptr %call.i20 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %call.i20, align 4
  %common = getelementptr inbounds %struct.nfsd_readdirres, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %common, align 4
  %call.i23 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #4
  %tobool.not.i24 = icmp eq ptr %call.i23, null
  br i1 %tobool.not.i24, label %if.end5.cleanup_crit_edge, label %xdr_stream_encode_bool.exit, !prof !11

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

xdr_stream_encode_bool.exit:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 30001, i32 %13)
  %cmp6 = icmp eq i32 %13, 30001
  %cond.i.i = zext i1 %cmp6 to i32
  %14 = ptrtoint ptr %call.i23 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cond.i.i, ptr %call.i23, align 4
  br label %cleanup

cleanup:                                          ; preds = %xdr_stream_encode_bool.exit, %if.end5.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ true, %xdr_stream_encode_bool.exit ], [ true, %if.end.cleanup_crit_edge ], [ false, %sw.bb.cleanup_crit_edge ], [ false, %if.end5.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfssvc_encode_statfsres(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
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
  br i1 %cond, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %call2 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 20) #4
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %if.end4

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %incdec.ptr = getelementptr i32, ptr %call2, i32 1
  %7 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8192, ptr %call2, align 4
  %f_bsize = getelementptr inbounds %struct.nfsd_statfsres, ptr %1, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %f_bsize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f_bsize, align 4
  %incdec.ptr5 = getelementptr i32, ptr %call2, i32 2
  %10 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %incdec.ptr, align 4
  %f_blocks = getelementptr inbounds %struct.nfsd_statfsres, ptr %1, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %f_blocks to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %f_blocks, align 8
  %conv = trunc i64 %12 to i32
  %incdec.ptr6 = getelementptr i32, ptr %call2, i32 3
  %13 = ptrtoint ptr %incdec.ptr5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %incdec.ptr5, align 4
  %f_bfree = getelementptr inbounds %struct.nfsd_statfsres, ptr %1, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %f_bfree to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %f_bfree, align 8
  %conv7 = trunc i64 %15 to i32
  %incdec.ptr8 = getelementptr i32, ptr %call2, i32 4
  %16 = ptrtoint ptr %incdec.ptr6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv7, ptr %incdec.ptr6, align 4
  %f_bavail = getelementptr inbounds %struct.nfsd_statfsres, ptr %1, i32 0, i32 1, i32 4
  %17 = ptrtoint ptr %f_bavail to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %f_bavail, align 8
  %conv9 = trunc i64 %18 to i32
  %19 = ptrtoint ptr %incdec.ptr8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv9, ptr %incdec.ptr8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %sw.bb.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ], [ true, %if.end4 ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfssvc_encode_nfscookie(ptr noundef %resp, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  %cookie = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cookie) #4
  %0 = ptrtoint ptr %cookie to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %offset, ptr %cookie, align 4
  %cookie_offset = getelementptr inbounds %struct.nfsd_readdirres, ptr %resp, i32 0, i32 5
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
  %dirlist = getelementptr inbounds %struct.nfsd_readdirres, ptr %resp, i32 0, i32 3
  %call = call i32 @write_bytes_to_xdr_buf(ptr noundef %dirlist, i32 noundef %2, ptr noundef nonnull %cookie, i32 noundef 4) #4
  %3 = ptrtoint ptr %cookie_offset to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %cookie_offset, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cookie) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @write_bytes_to_xdr_buf(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfssvc_encode_entry(ptr noundef %data, ptr noundef %name, i32 noundef %namlen, i64 noundef %offset, i64 noundef %ino, i32 noundef %d_type) local_unnamed_addr #0 align 64 {
entry:
  %cookie.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr i8, ptr %data, i32 -4
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %conv = trunc i64 %offset to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cookie.i) #4
  %2 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %cookie.i, align 4
  %cookie_offset.i = getelementptr i8, ptr %data, i32 4
  %3 = ptrtoint ptr %cookie_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cookie_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.nfssvc_encode_nfscookie.exit_crit_edge, label %if.end.i

entry.nfssvc_encode_nfscookie.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfssvc_encode_nfscookie.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dirlist.i = getelementptr i8, ptr %data, i32 -44
  %call.i = call i32 @write_bytes_to_xdr_buf(ptr noundef %dirlist.i, i32 noundef %4, ptr noundef nonnull %cookie.i, i32 noundef 4) #4
  %5 = ptrtoint ptr %cookie_offset.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %cookie_offset.i, align 4
  br label %nfssvc_encode_nfscookie.exit

nfssvc_encode_nfscookie.exit:                     ; preds = %if.end.i, %entry.nfssvc_encode_nfscookie.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cookie.i) #4
  %xdr2.i = getelementptr i8, ptr %data, i32 -80
  %call.i.i = call ptr @xdr_reserve_space(ptr noundef %xdr2.i, i32 noundef 4) #4
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %nfssvc_encode_nfscookie.exit.out_toosmall_crit_edge, label %if.end.i15, !prof !11

nfssvc_encode_nfscookie.exit.out_toosmall_crit_edge: ; preds = %nfssvc_encode_nfscookie.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_toosmall

if.end.i15:                                       ; preds = %nfssvc_encode_nfscookie.exit
  %6 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %call.i.i, align 4
  %call.i1.i = call ptr @xdr_reserve_space(ptr noundef %xdr2.i, i32 noundef 4) #4
  %tobool.not.i2.i = icmp eq ptr %call.i1.i, null
  br i1 %tobool.not.i2.i, label %if.end.i15.out_toosmall_crit_edge, label %if.end7.i, !prof !11

if.end.i15.out_toosmall_crit_edge:                ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_toosmall

if.end7.i:                                        ; preds = %if.end.i15
  %conv.i = trunc i64 %ino to i32
  %7 = ptrtoint ptr %call.i1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv.i, ptr %call.i1.i, align 4
  %8 = call i32 @llvm.smin.i32(i32 %namlen, i32 255) #4
  %9 = add nsw i32 %8, 7
  %add.i.i = and i32 %9, -4
  %call1.i.i = call ptr @xdr_reserve_space(ptr noundef %xdr2.i, i32 noundef %add.i.i) #4
  %tobool.not.i5.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i5.i, label %if.end7.i.out_toosmall_crit_edge, label %xdr_stream_encode_opaque.exit.i, !prof !11

if.end7.i.out_toosmall_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_toosmall

xdr_stream_encode_opaque.exit.i:                  ; preds = %if.end7.i
  %call5.i.i = call ptr @xdr_encode_opaque(ptr noundef nonnull %call1.i.i, ptr noundef %name, i32 noundef %8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i)
  %cmp11.i = icmp slt i32 %add.i.i, 0
  br i1 %cmp11.i, label %xdr_stream_encode_opaque.exit.i.out_toosmall_crit_edge, label %if.end14.i

xdr_stream_encode_opaque.exit.i.out_toosmall_crit_edge: ; preds = %xdr_stream_encode_opaque.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_toosmall

if.end14.i:                                       ; preds = %xdr_stream_encode_opaque.exit.i
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %12 = ptrtoint ptr %cookie_offset.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %cookie_offset.i, align 4
  %call.i8.i = call ptr @xdr_reserve_space(ptr noundef %xdr2.i, i32 noundef 4) #4
  %tobool.not.i9.i = icmp eq ptr %call.i8.i, null
  br i1 %tobool.not.i9.i, label %if.end14.i.out_toosmall_crit_edge, label %if.end, !prof !11

if.end14.i.out_toosmall_crit_edge:                ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_toosmall

if.end:                                           ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %call.i8.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %call.i8.i, align 4
  call void @xdr_commit_encode(ptr noundef %xdr2.i) #4
  %14 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %data, align 4
  br label %cleanup

out_toosmall:                                     ; preds = %if.end14.i.out_toosmall_crit_edge, %xdr_stream_encode_opaque.exit.i.out_toosmall_crit_edge, %if.end7.i.out_toosmall_crit_edge, %if.end.i15.out_toosmall_crit_edge, %nfssvc_encode_nfscookie.exit.out_toosmall_crit_edge
  %15 = ptrtoint ptr %cookie_offset.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %cookie_offset.i, align 4
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 10005, ptr %data, align 4
  %17 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %1, ptr %len, align 4
  br label %cleanup

cleanup:                                          ; preds = %out_toosmall, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %out_toosmall ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_commit_encode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfssvc_release_attrstat(ptr nocapture noundef readonly %rqstp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %0 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_resp, align 4
  %fh = getelementptr inbounds %struct.nfsd_attrstat, ptr %1, i32 0, i32 1
  tail call void @fh_put(ptr noundef %fh) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fh_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfssvc_release_diropres(ptr nocapture noundef readonly %rqstp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %0 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_resp, align 4
  %fh = getelementptr inbounds %struct.nfsd_diropres, ptr %1, i32 0, i32 1
  tail call void @fh_put(ptr noundef %fh) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfssvc_release_readres(ptr nocapture noundef readonly %rqstp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %0 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_resp, align 4
  %fh = getelementptr inbounds %struct.nfsd_readres, ptr %1, i32 0, i32 1
  tail call void @fh_put(ptr noundef %fh) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_encode_opaque(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @nfs_ftypes, !1, !"nfs_ftypes", i1 false, i1 false}
!1 = !{!"../fs/nfsd/nfsxdr.c", i32 15, i32 18}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"branch_weights", i32 1, i32 2000}
