; ModuleID = '/llk/IR_all_yes/fs/nfsd/nfs3acl.c_pt.bc'
source_filename = "../fs/nfsd/nfs3acl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.svc_procedure = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.svc_version = type { i32, i32, ptr, ptr, i32, i8, i8, i8, ptr }
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.posix_acl = type { %struct.refcount_struct, %struct.callback_head, i32, [0 x %struct.posix_acl_entry] }
%struct.posix_acl_entry = type { i16, i16, %union.anon.137 }
%union.anon.137 = type { %struct.kuid_t }
%struct.nfsd3_attrstat = type { i32, %struct.svc_fh, %struct.kstat }
%struct.svc_export = type { %struct.cache_head, ptr, i32, %struct.path, %struct.kuid_t, %struct.kgid_t, i32, ptr, %struct.nfsd4_fs_locations, i32, [8 x %struct.exp_flavor_info], i32, ptr, ptr, %struct.callback_head, %struct.export_stats }
%struct.cache_head = type { %struct.hlist_node, i64, i64, %struct.kref, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.path = type { ptr, ptr }
%struct.nfsd4_fs_locations = type { i32, ptr, i32 }
%struct.exp_flavor_info = type { i32, i32 }
%struct.export_stats = type { i64, [3 x %struct.percpu_counter] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
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

@nfsd_acl_procedures3 = internal constant { [3 x %struct.svc_procedure], [52 x i8] } { [3 x %struct.svc_procedure] [%struct.svc_procedure { ptr @nfsd3_proc_null, ptr @nfssvc_decode_voidarg, ptr @nfssvc_encode_voidres, ptr null, i32 0, i32 0, i32 0, i32 1, ptr @.str }, %struct.svc_procedure { ptr @nfsd3_proc_getacl, ptr @nfs3svc_decode_getaclargs, ptr @nfs3svc_encode_getaclres, ptr @nfs3svc_release_getacl, i32 368, i32 528, i32 0, i32 6150, ptr @.str.1 }, %struct.svc_procedure { ptr @nfsd3_proc_setacl, ptr @nfs3svc_decode_setaclargs, ptr @nfs3svc_encode_setaclres, ptr @nfs3svc_release_fhandle, i32 376, i32 512, i32 0, i32 23, ptr @.str.2 }], [52 x i8] zeroinitializer }, align 32
@nfsd_acl_count3 = internal global { [3 x i32], [20 x i8] } zeroinitializer, align 32
@nfsd_acl_version3 = dso_local constant { %struct.svc_version, [36 x i8] } { %struct.svc_version { i32 3, i32 3, ptr @nfsd_acl_procedures3, ptr @nfsd_acl_count3, i32 832, i8 0, i8 0, i8 0, ptr @nfsd_dispatch }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NULL\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GETACL\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SETACL\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/nfsd/nfsfh.h\00", [16 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@fh_lock_nested._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014fh_lock: %pd2 already locked!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fh_lock_nested\00", [17 x i8] zeroinitializer }, align 32
@fh_lock_nested._entry_ptr = internal global ptr @fh_lock_nested._entry, section ".printk_index", align 4
@___asan_gen_.6 = private unnamed_addr constant [21 x i8] c"nfsd_acl_procedures3\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 249, i32 35 }
@___asan_gen_.9 = private unnamed_addr constant [16 x i8] c"nfsd_acl_count3\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 284, i32 21 }
@___asan_gen_.12 = private unnamed_addr constant [18 x i8] c"nfsd_acl_version3\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 285, i32 26 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 258, i32 14 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 269, i32 14 }
@___asan_gen_.22 = private constant [21 x i8] c"../fs/nfsd/nfs3acl.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 280, i32 14 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 228, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [19 x i8] c"../fs/nfsd/nfsfh.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 363, i32 3 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @fh_lock_nested._entry, ptr @fh_lock_nested._entry_ptr, ptr @nfsd_acl_procedures3, ptr @nfsd_acl_count3, ptr @nfsd_acl_version3, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_acl_procedures3 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_acl_count3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_acl_version3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fh_lock_nested._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
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
define internal i32 @nfsd3_proc_getacl(ptr noundef %rqstp) #2 align 64 {
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
  %fh1 = getelementptr inbounds %struct.nfsd3_getaclres, ptr %3, i32 0, i32 1
  %fh_dentry.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %fh_dentry.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fh_dentry.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %lor.rhs.i, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i:                                        ; preds = %entry
  %fh_locked.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fh_locked.i, align 8, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not.i = icmp eq i8 %7, 0
  br i1 %tobool1.not.i, label %lor.rhs.i.fh_copy.exit_crit_edge, label %lor.rhs.i.do.end.i_crit_edge, !prof !29

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i.fh_copy.exit_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fh_copy.exit

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 228, i32 noundef 9, ptr noundef null) #6
  br label %fh_copy.exit

fh_copy.exit:                                     ; preds = %do.end.i, %lor.rhs.i.fh_copy.exit_crit_edge
  %8 = call ptr @memcpy(ptr %fh1, ptr %1, i32 360)
  %call4 = tail call i32 @fh_verify(ptr noundef %rqstp, ptr noundef %fh1, i16 noundef zeroext 0, i32 noundef 0) #6
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call4, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp.not = icmp eq i32 %call4, 0
  br i1 %cmp.not, label %if.end, label %fh_copy.exit.out_crit_edge

fh_copy.exit.out_crit_edge:                       ; preds = %fh_copy.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %fh_copy.exit
  %fh_dentry = getelementptr inbounds %struct.nfsd3_getaclres, ptr %3, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fh_dentry, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_inode.i, align 8
  %mask = getelementptr inbounds %struct.nfsd3_getaclargs, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mask, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %15)
  %tobool.not = icmp ult i32 %15, 16
  br i1 %tobool.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 22, ptr %3, align 8
  br label %out

if.end9:                                          ; preds = %if.end
  %mask11 = getelementptr inbounds %struct.nfsd3_getaclres, ptr %3, i32 0, i32 2
  %17 = ptrtoint ptr %mask11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %15, ptr %mask11, align 8
  %and13 = and i32 %15, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end9.if.end27_crit_edge, label %if.then15

if.end9.if.end27_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then15:                                        ; preds = %if.end9
  %call16 = tail call ptr @get_acl(ptr noundef %13, i32 noundef 32768) #6
  %cmp17 = icmp eq ptr %call16, null
  br i1 %cmp17, label %if.then18, label %if.then15.if.end20_crit_edge

if.then15.if.end20_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then18:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %13, align 8
  %call19 = tail call ptr @posix_acl_from_mode(i16 noundef zeroext %19, i32 noundef 3264) #6
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.then15.if.end20_crit_edge
  %acl.0 = phi ptr [ %call19, %if.then18 ], [ %call16, %if.then15.if.end20_crit_edge ]
  %cmp.i = icmp ugt ptr %acl.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end20.fail_crit_edge, label %if.end26

if.end20.fail_crit_edge:                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %acl_access = getelementptr inbounds %struct.nfsd3_getaclres, ptr %3, i32 0, i32 3
  %20 = ptrtoint ptr %acl_access to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %acl.0, ptr %acl_access, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end9.if.end27_crit_edge
  %21 = ptrtoint ptr %mask11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mask11, align 8
  %and29 = and i32 %22, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end27.out_crit_edge, label %if.then31

if.end27.out_crit_edge:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then31:                                        ; preds = %if.end27
  %call32 = tail call ptr @get_acl(ptr noundef %13, i32 noundef 16384) #6
  %cmp.i67 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i67, label %if.then31.fail_crit_edge, label %if.end38

if.then31.fail_crit_edge:                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end38:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  %acl_default = getelementptr inbounds %struct.nfsd3_getaclres, ptr %3, i32 0, i32 4
  %23 = ptrtoint ptr %acl_default to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call32, ptr %acl_default, align 8
  br label %out

out:                                              ; preds = %do.end.i79, %if.then10.i.i.i.i77, %if.end5.i.i.i.i76.out_crit_edge, %posix_acl_release.exit.out_crit_edge, %if.end38, %if.end27.out_crit_edge, %if.then7, %fh_copy.exit.out_crit_edge
  ret i32 0

fail:                                             ; preds = %if.then31.fail_crit_edge, %if.end20.fail_crit_edge
  %call32.sink = phi ptr [ %acl.0, %if.end20.fail_crit_edge ], [ %call32, %if.then31.fail_crit_edge ]
  %24 = ptrtoint ptr %call32.sink to i32
  %call36 = tail call i32 @nfserrno(i32 noundef %24) #6
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call36, ptr %3, align 8
  %acl_access40 = getelementptr inbounds %struct.nfsd3_getaclres, ptr %3, i32 0, i32 3
  %26 = ptrtoint ptr %acl_access40 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %acl_access40, align 4
  %tobool.not.i68 = icmp eq ptr %27, null
  br i1 %tobool.not.i68, label %fail.posix_acl_release.exit_crit_edge, label %land.lhs.true.i

fail.posix_acl_release.exit_crit_edge:            ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #8
  br label %posix_acl_release.exit

land.lhs.true.i:                                  ; preds = %fail
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %27, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !30
  tail call void @llvm.prefetch.p0(ptr nonnull %27, i32 1, i32 3, i32 1) #6
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %27, ptr nonnull %27, i32 1, ptr nonnull elementtype(i32) %27) #6, !srcloc !31
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i69, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.posix_acl_release.exit_crit_edge, label %if.then10.i.i.i.i, !prof !29

if.end5.i.i.i.i.posix_acl_release.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %posix_acl_release.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef nonnull %27, i32 noundef 3) #6
  br label %posix_acl_release.exit

do.end.i69:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !32
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %27, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #6
  br label %posix_acl_release.exit

posix_acl_release.exit:                           ; preds = %do.end.i69, %if.then10.i.i.i.i, %if.end5.i.i.i.i.posix_acl_release.exit_crit_edge, %fail.posix_acl_release.exit_crit_edge
  %acl_default41 = getelementptr inbounds %struct.nfsd3_getaclres, ptr %3, i32 0, i32 4
  %29 = ptrtoint ptr %acl_default41 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %acl_default41, align 8
  %tobool.not.i70 = icmp eq ptr %30, null
  br i1 %tobool.not.i70, label %posix_acl_release.exit.out_crit_edge, label %land.lhs.true.i74

posix_acl_release.exit.out_crit_edge:             ; preds = %posix_acl_release.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

land.lhs.true.i74:                                ; preds = %posix_acl_release.exit
  %call.i.i.i.i.i.i71 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %30, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !30
  tail call void @llvm.prefetch.p0(ptr nonnull %30, i32 1, i32 3, i32 1) #6
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %30, ptr nonnull %30, i32 1, ptr nonnull elementtype(i32) %30) #6, !srcloc !31
  %asmresult.i.i.i.i.i.i.i72 = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i72)
  %cmp.i.i.i.i73 = icmp eq i32 %asmresult.i.i.i.i.i.i.i72, 1
  br i1 %cmp.i.i.i.i73, label %do.end.i79, label %if.end5.i.i.i.i76

if.end5.i.i.i.i76:                                ; preds = %land.lhs.true.i74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i72)
  %.not.i.i.i.i75 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i72, 0
  br i1 %.not.i.i.i.i75, label %if.end5.i.i.i.i76.out_crit_edge, label %if.then10.i.i.i.i77, !prof !29

if.end5.i.i.i.i76.out_crit_edge:                  ; preds = %if.end5.i.i.i.i76
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then10.i.i.i.i77:                              ; preds = %if.end5.i.i.i.i76
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef nonnull %30, i32 noundef 3) #6
  br label %out

do.end.i79:                                       ; preds = %land.lhs.true.i74
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !32
  %a_rcu.i78 = getelementptr inbounds %struct.posix_acl, ptr %30, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu.i78, ptr noundef nonnull inttoptr (i32 4 to ptr)) #6
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nfs3svc_decode_getaclargs(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %call = tail call zeroext i1 @svcxdr_decode_nfs_fh3(ptr noundef %xdr, ptr noundef %1) #6
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %xdr_stream_decode_u32.exit, !prof !33

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

xdr_stream_decode_u32.exit:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
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
define internal zeroext i1 @nfs3svc_encode_getaclres(ptr noundef %rqstp, ptr noundef %xdr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %rq_res = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 8
  %call = tail call zeroext i1 @svcxdr_encode_nfsstat3(ptr noundef %xdr, i32 noundef %5) #6
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cond51 = icmp eq i32 %7, 0
  br i1 %cond51, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_inode.i, align 8
  %call5 = tail call zeroext i1 @svcxdr_encode_post_op_attr(ptr noundef %rqstp, ptr noundef %xdr, ptr noundef %fh) #6
  br i1 %call5, label %if.end7, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %sw.bb
  %mask = getelementptr inbounds %struct.nfsd3_getaclres, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask, align 8
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end7.cleanup_crit_edge, label %if.end10, !prof !33

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %call.i, align 4
  %13 = ptrtoint ptr %xdr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xdr, align 4
  %15 = ptrtoint ptr %rq_res to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rq_res, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %14 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %16 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %17 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mask, align 8
  %and = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end10.cond.end_crit_edge, label %cond.true

if.end10.cond.end_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %acl_access = getelementptr inbounds %struct.nfsd3_getaclres, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %acl_access to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %acl_access, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end10.cond.end_crit_edge
  %cond = phi ptr [ %20, %cond.true ], [ null, %if.end10.cond.end_crit_edge ]
  %and13 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %cond.end.cond.end17_crit_edge, label %cond.true15

cond.end.cond.end17_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end17

cond.true15:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %acl_default = getelementptr inbounds %struct.nfsd3_getaclres, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %acl_default to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %acl_default, align 8
  br label %cond.end17

cond.end17:                                       ; preds = %cond.true15, %cond.end.cond.end17_crit_edge
  %cond18 = phi ptr [ %22, %cond.true15 ], [ null, %cond.end.cond.end17_crit_edge ]
  %tobool.not.i81 = icmp eq ptr %cond, null
  br i1 %tobool.not.i81, label %cond.end17.cond.end.thread.i_crit_edge, label %cond.end.i

cond.end17.cond.end.thread.i_crit_edge:           ; preds = %cond.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.thread.i

cond.end.i:                                       ; preds = %cond.end17
  call void @__sanitizer_cov_trace_pc() #8
  %a_count.i = getelementptr inbounds %struct.posix_acl, ptr %cond, i32 0, i32 2
  %23 = ptrtoint ptr %a_count.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %a_count.i, align 4
  %25 = tail call i32 @llvm.smax.i32(i32 %24, i32 4) #6
  %phi.bo25.i = mul i32 %25, 12
  %phi.bo26.i = add i32 %phi.bo25.i, 16
  br label %cond.end.thread.i

cond.end.thread.i:                                ; preds = %cond.end.i, %cond.end17.cond.end.thread.i_crit_edge
  %26 = phi i32 [ 64, %cond.end17.cond.end.thread.i_crit_edge ], [ %phi.bo26.i, %cond.end.i ]
  %tobool5.not.i = icmp eq ptr %cond18, null
  br i1 %tobool5.not.i, label %cond.end.thread.i.nfsacl_size.exit_crit_edge, label %if.then.i

cond.end.thread.i.nfsacl_size.exit_crit_edge:     ; preds = %cond.end.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfsacl_size.exit

if.then.i:                                        ; preds = %cond.end.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  %a_count6.i = getelementptr inbounds %struct.posix_acl, ptr %cond18, i32 0, i32 2
  %27 = ptrtoint ptr %a_count6.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %a_count6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %28)
  %cmp8.i = icmp sgt i32 %28, 4
  %phi.bo.i = mul i32 %28, 12
  %cond12.i = select i1 %cmp8.i, i32 %phi.bo.i, i32 48
  %add14.i = add i32 %cond12.i, %26
  br label %nfsacl_size.exit

nfsacl_size.exit:                                 ; preds = %if.then.i, %cond.end.thread.i.nfsacl_size.exit_crit_edge
  %w.0.i = phi i32 [ %add14.i, %if.then.i ], [ %26, %cond.end.thread.i.nfsacl_size.exit_crit_edge ]
  %page_len = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 5
  %29 = ptrtoint ptr %page_len to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %w.0.i, ptr %page_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %w.0.i)
  %cmp2187 = icmp sgt i32 %w.0.i, 0
  br i1 %cmp2187, label %while.body.lr.ph, label %nfsacl_size.exit.while.end_crit_edge

nfsacl_size.exit.while.end_crit_edge:             ; preds = %nfsacl_size.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %nfsacl_size.exit
  %rq_next_page = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 22
  br label %while.body

while.cond:                                       ; preds = %while.body
  %sub = add nsw i32 %w.088, -4096
  %cmp21 = icmp sgt i32 %w.088, 4096
  br i1 %cmp21, label %while.cond.while.body_crit_edge, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.body.lr.ph
  %w.088 = phi i32 [ %w.0.i, %while.body.lr.ph ], [ %sub, %while.cond.while.body_crit_edge ]
  %30 = ptrtoint ptr %rq_next_page to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rq_next_page, align 8
  %incdec.ptr = getelementptr ptr, ptr %31, i32 1
  store ptr %incdec.ptr, ptr %rq_next_page, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %tobool22.not = icmp eq ptr %33, null
  br i1 %tobool22.not, label %while.body.cleanup_crit_edge, label %while.cond

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %nfsacl_size.exit.while.end_crit_edge
  %acl_access26 = getelementptr inbounds %struct.nfsd3_getaclres, ptr %1, i32 0, i32 3
  %34 = ptrtoint ptr %acl_access26 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %acl_access26, align 4
  %36 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mask, align 8
  %and28 = and i32 %37, 1
  %call29 = tail call i32 @nfsacl_encode(ptr noundef %rq_res, i32 noundef %sub.ptr.sub, ptr noundef %9, ptr noundef %35, i32 noundef %and28, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp sgt i32 %call29, 0
  br i1 %cmp30, label %if.end37, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end37:                                         ; preds = %while.end
  %add = add i32 %call29, %sub.ptr.sub
  %acl_default33 = getelementptr inbounds %struct.nfsd3_getaclres, ptr %1, i32 0, i32 4
  %38 = ptrtoint ptr %acl_default33 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %acl_default33, align 8
  %40 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mask, align 8
  %and35 = and i32 %41, 4
  %call36 = tail call i32 @nfsacl_encode(ptr noundef %rq_res, i32 noundef %add, ptr noundef %9, ptr noundef %39, i32 noundef %and35, i32 noundef 4096) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call36)
  %cmp38 = icmp slt i32 %call36, 1
  br i1 %cmp38, label %if.end37.cleanup_crit_edge, label %if.end37.sw.epilog_crit_edge

if.end37.sw.epilog_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.default:                                       ; preds = %if.end
  %call42 = tail call zeroext i1 @svcxdr_encode_post_op_attr(ptr noundef %rqstp, ptr noundef %xdr, ptr noundef %fh) #6
  br i1 %call42, label %sw.default.sw.epilog_crit_edge, label %sw.default.cleanup_crit_edge

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default.sw.epilog_crit_edge, %if.end37.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %while.end.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %sw.epilog ], [ false, %entry.cleanup_crit_edge ], [ false, %sw.bb.cleanup_crit_edge ], [ false, %if.end37.cleanup_crit_edge ], [ false, %sw.default.cleanup_crit_edge ], [ false, %if.end7.cleanup_crit_edge ], [ false, %while.end.cleanup_crit_edge ], [ false, %while.body.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs3svc_release_getacl(ptr nocapture noundef readonly %rqstp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %0 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_resp, align 4
  %fh = getelementptr inbounds %struct.nfsd3_getaclres, ptr %1, i32 0, i32 1
  tail call void @fh_put(ptr noundef %fh) #6
  %acl_access = getelementptr inbounds %struct.nfsd3_getaclres, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %acl_access to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %acl_access, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.posix_acl_release.exit_crit_edge, label %land.lhs.true.i

entry.posix_acl_release.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %posix_acl_release.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %3, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !30
  tail call void @llvm.prefetch.p0(ptr nonnull %3, i32 1, i32 3, i32 1) #6
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %3, ptr nonnull %3, i32 1, ptr nonnull elementtype(i32) %3) #6, !srcloc !31
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.posix_acl_release.exit_crit_edge, label %if.then10.i.i.i.i, !prof !29

if.end5.i.i.i.i.posix_acl_release.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %posix_acl_release.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef nonnull %3, i32 noundef 3) #6
  br label %posix_acl_release.exit

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !32
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %3, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #6
  br label %posix_acl_release.exit

posix_acl_release.exit:                           ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.posix_acl_release.exit_crit_edge, %entry.posix_acl_release.exit_crit_edge
  %acl_default = getelementptr inbounds %struct.nfsd3_getaclres, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %acl_default to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %acl_default, align 8
  %tobool.not.i3 = icmp eq ptr %6, null
  br i1 %tobool.not.i3, label %posix_acl_release.exit.posix_acl_release.exit13_crit_edge, label %land.lhs.true.i7

posix_acl_release.exit.posix_acl_release.exit13_crit_edge: ; preds = %posix_acl_release.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %posix_acl_release.exit13

land.lhs.true.i7:                                 ; preds = %posix_acl_release.exit
  %call.i.i.i.i.i.i4 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %6, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !30
  tail call void @llvm.prefetch.p0(ptr nonnull %6, i32 1, i32 3, i32 1) #6
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %6, ptr nonnull %6, i32 1, ptr nonnull elementtype(i32) %6) #6, !srcloc !31
  %asmresult.i.i.i.i.i.i.i5 = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i5)
  %cmp.i.i.i.i6 = icmp eq i32 %asmresult.i.i.i.i.i.i.i5, 1
  br i1 %cmp.i.i.i.i6, label %do.end.i12, label %if.end5.i.i.i.i9

if.end5.i.i.i.i9:                                 ; preds = %land.lhs.true.i7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i5)
  %.not.i.i.i.i8 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i5, 0
  br i1 %.not.i.i.i.i8, label %if.end5.i.i.i.i9.posix_acl_release.exit13_crit_edge, label %if.then10.i.i.i.i10, !prof !29

if.end5.i.i.i.i9.posix_acl_release.exit13_crit_edge: ; preds = %if.end5.i.i.i.i9
  call void @__sanitizer_cov_trace_pc() #8
  br label %posix_acl_release.exit13

if.then10.i.i.i.i10:                              ; preds = %if.end5.i.i.i.i9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef nonnull %6, i32 noundef 3) #6
  br label %posix_acl_release.exit13

do.end.i12:                                       ; preds = %land.lhs.true.i7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !32
  %a_rcu.i11 = getelementptr inbounds %struct.posix_acl, ptr %6, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu.i11, ptr noundef nonnull inttoptr (i32 4 to ptr)) #6
  br label %posix_acl_release.exit13

posix_acl_release.exit13:                         ; preds = %do.end.i12, %if.then10.i.i.i.i10, %if.end5.i.i.i.i9.posix_acl_release.exit13_crit_edge, %posix_acl_release.exit.posix_acl_release.exit13_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd3_proc_setacl(ptr noundef %rqstp) #2 align 64 {
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
  %fh1 = getelementptr inbounds %struct.nfsd3_attrstat, ptr %3, i32 0, i32 1
  %fh_dentry.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %fh_dentry.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fh_dentry.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %lor.rhs.i, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i:                                        ; preds = %entry
  %fh_locked.i = getelementptr inbounds %struct.svc_fh, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fh_locked.i, align 8, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not.i = icmp eq i8 %7, 0
  br i1 %tobool1.not.i, label %lor.rhs.i.fh_copy.exit_crit_edge, label %lor.rhs.i.do.end.i_crit_edge, !prof !29

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i.fh_copy.exit_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fh_copy.exit

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 228, i32 noundef 9, ptr noundef null) #6
  br label %fh_copy.exit

fh_copy.exit:                                     ; preds = %do.end.i, %lor.rhs.i.fh_copy.exit_crit_edge
  %8 = call ptr @memcpy(ptr %fh1, ptr %1, i32 360)
  %call4 = tail call i32 @fh_verify(ptr noundef %rqstp, ptr noundef %fh1, i16 noundef zeroext 0, i32 noundef 8) #6
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call4, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp.not = icmp eq i32 %call4, 0
  br i1 %cmp.not, label %if.end, label %fh_copy.exit.out_crit_edge

fh_copy.exit.out_crit_edge:                       ; preds = %fh_copy.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %fh_copy.exit
  %fh_dentry = getelementptr inbounds %struct.nfsd3_attrstat, ptr %3, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fh_dentry, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_inode.i, align 8
  %fh_want_write.i = getelementptr inbounds %struct.nfsd3_attrstat, ptr %3, i32 0, i32 1, i32 5
  %14 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %fh_want_write.i, align 1, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i36 = icmp eq i8 %15, 0
  br i1 %tobool.not.i36, label %if.end.i, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.end.i:                                         ; preds = %if.end
  %fh_export.i = getelementptr inbounds %struct.nfsd3_attrstat, ptr %3, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %fh_export.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fh_export.i, align 4
  %ex_path.i = getelementptr inbounds %struct.svc_export, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %ex_path.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ex_path.i, align 8
  %call.i = tail call i32 @mnt_want_write(ptr noundef %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i37 = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i37, label %if.then2.i, label %if.end.i.out_errno_crit_edge

if.end.i.out_errno_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_errno

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %fh_want_write.i, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then2.i, %if.end.if.end9_crit_edge
  %21 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fh_dentry, align 8
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !33

do.body4.i.i:                                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfsd/nfsfh.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 360, 0\0A.popsection", ""() #6, !srcloc !34
  unreachable

do.end9.i.i:                                      ; preds = %if.end9
  %fh_locked.i.i = getelementptr inbounds %struct.nfsd3_attrstat, ptr %3, i32 0, i32 1, i32 4
  %23 = ptrtoint ptr %fh_locked.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %fh_locked.i.i, align 8, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool10.not.i.i = icmp eq i8 %24, 0
  br i1 %tobool10.not.i.i, label %if.end15.i.i, label %do.end14.i.i

do.end14.i.i:                                     ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull %22) #9
  br label %fh_lock.exit

if.end15.i.i:                                     ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %22, i32 0, i32 5
  %25 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %d_inode.i.i.i, align 8
  %i_rwsem.i.i.i = getelementptr inbounds %struct.inode, ptr %26, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i.i.i, i32 noundef 0) #6
  tail call void @fh_fill_pre_attrs(ptr noundef %fh1) #6
  %27 = ptrtoint ptr %fh_locked.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %fh_locked.i.i, align 8
  br label %fh_lock.exit

fh_lock.exit:                                     ; preds = %if.end15.i.i, %do.end14.i.i
  %acl_access = getelementptr inbounds %struct.nfsd3_setaclargs, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %acl_access to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %acl_access, align 4
  %call10 = tail call i32 @set_posix_acl(ptr noundef nonnull @init_user_ns, ptr noundef %13, i32 noundef 32768, ptr noundef %29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %fh_lock.exit.out_drop_lock_crit_edge

fh_lock.exit.out_drop_lock_crit_edge:             ; preds = %fh_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_drop_lock

if.end13:                                         ; preds = %fh_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  %acl_default = getelementptr inbounds %struct.nfsd3_setaclargs, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %acl_default to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %acl_default, align 8
  %call14 = tail call i32 @set_posix_acl(ptr noundef nonnull @init_user_ns, ptr noundef %13, i32 noundef 16384, ptr noundef %31) #6
  br label %out_drop_lock

out_drop_lock:                                    ; preds = %if.end13, %fh_lock.exit.out_drop_lock_crit_edge
  %error.0 = phi i32 [ %call10, %fh_lock.exit.out_drop_lock_crit_edge ], [ %call14, %if.end13 ]
  %32 = ptrtoint ptr %fh_locked.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %fh_locked.i.i, align 8, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i39 = icmp eq i8 %33, 0
  br i1 %tobool.not.i39, label %out_drop_lock.fh_unlock.exit_crit_edge, label %if.then.i

out_drop_lock.fh_unlock.exit_crit_edge:           ; preds = %out_drop_lock
  call void @__sanitizer_cov_trace_pc() #8
  br label %fh_unlock.exit

if.then.i:                                        ; preds = %out_drop_lock
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @fh_fill_post_attrs(ptr noundef %fh1) #6
  %34 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fh_dentry, align 8
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %37, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i.i) #6
  %38 = ptrtoint ptr %fh_locked.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %fh_locked.i.i, align 8
  br label %fh_unlock.exit

fh_unlock.exit:                                   ; preds = %if.then.i, %out_drop_lock.fh_unlock.exit_crit_edge
  %39 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %fh_want_write.i, align 1, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i43 = icmp eq i8 %40, 0
  br i1 %tobool.not.i43, label %fh_unlock.exit.out_errno_crit_edge, label %if.then.i46

fh_unlock.exit.out_errno_crit_edge:               ; preds = %fh_unlock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_errno

if.then.i46:                                      ; preds = %fh_unlock.exit
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %fh_want_write.i, align 1
  %fh_export.i44 = getelementptr inbounds %struct.nfsd3_attrstat, ptr %3, i32 0, i32 1, i32 3
  %42 = ptrtoint ptr %fh_export.i44 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fh_export.i44, align 4
  %ex_path.i45 = getelementptr inbounds %struct.svc_export, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %ex_path.i45 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ex_path.i45, align 8
  tail call void @mnt_drop_write(ptr noundef %45) #6
  br label %out_errno

out_errno:                                        ; preds = %if.then.i46, %fh_unlock.exit.out_errno_crit_edge, %if.end.i.out_errno_crit_edge
  %error.1 = phi i32 [ %call.i, %if.end.i.out_errno_crit_edge ], [ %error.0, %fh_unlock.exit.out_errno_crit_edge ], [ %error.0, %if.then.i46 ]
  %call15 = tail call i32 @nfserrno(i32 noundef %error.1) #6
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call15, ptr %3, align 8
  br label %out

out:                                              ; preds = %out_errno, %fh_copy.exit.out_crit_edge
  %acl_access17 = getelementptr inbounds %struct.nfsd3_setaclargs, ptr %1, i32 0, i32 2
  %47 = ptrtoint ptr %acl_access17 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %acl_access17, align 4
  %tobool.not.i48 = icmp eq ptr %48, null
  br i1 %tobool.not.i48, label %out.posix_acl_release.exit_crit_edge, label %land.lhs.true.i

out.posix_acl_release.exit_crit_edge:             ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %posix_acl_release.exit

land.lhs.true.i:                                  ; preds = %out
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %48, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !30
  tail call void @llvm.prefetch.p0(ptr nonnull %48, i32 1, i32 3, i32 1) #6
  %49 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %48, ptr nonnull %48, i32 1, ptr nonnull elementtype(i32) %48) #6, !srcloc !31
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i49, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.posix_acl_release.exit_crit_edge, label %if.then10.i.i.i.i, !prof !29

if.end5.i.i.i.i.posix_acl_release.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %posix_acl_release.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef nonnull %48, i32 noundef 3) #6
  br label %posix_acl_release.exit

do.end.i49:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !32
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %48, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #6
  br label %posix_acl_release.exit

posix_acl_release.exit:                           ; preds = %do.end.i49, %if.then10.i.i.i.i, %if.end5.i.i.i.i.posix_acl_release.exit_crit_edge, %out.posix_acl_release.exit_crit_edge
  %acl_default18 = getelementptr inbounds %struct.nfsd3_setaclargs, ptr %1, i32 0, i32 3
  %50 = ptrtoint ptr %acl_default18 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %acl_default18, align 8
  %tobool.not.i50 = icmp eq ptr %51, null
  br i1 %tobool.not.i50, label %posix_acl_release.exit.posix_acl_release.exit60_crit_edge, label %land.lhs.true.i54

posix_acl_release.exit.posix_acl_release.exit60_crit_edge: ; preds = %posix_acl_release.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %posix_acl_release.exit60

land.lhs.true.i54:                                ; preds = %posix_acl_release.exit
  %call.i.i.i.i.i.i51 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %51, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !30
  tail call void @llvm.prefetch.p0(ptr nonnull %51, i32 1, i32 3, i32 1) #6
  %52 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %51, ptr nonnull %51, i32 1, ptr nonnull elementtype(i32) %51) #6, !srcloc !31
  %asmresult.i.i.i.i.i.i.i52 = extractvalue { i32, i32, i32 } %52, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i52)
  %cmp.i.i.i.i53 = icmp eq i32 %asmresult.i.i.i.i.i.i.i52, 1
  br i1 %cmp.i.i.i.i53, label %do.end.i59, label %if.end5.i.i.i.i56

if.end5.i.i.i.i56:                                ; preds = %land.lhs.true.i54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i52)
  %.not.i.i.i.i55 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i52, 0
  br i1 %.not.i.i.i.i55, label %if.end5.i.i.i.i56.posix_acl_release.exit60_crit_edge, label %if.then10.i.i.i.i57, !prof !29

if.end5.i.i.i.i56.posix_acl_release.exit60_crit_edge: ; preds = %if.end5.i.i.i.i56
  call void @__sanitizer_cov_trace_pc() #8
  br label %posix_acl_release.exit60

if.then10.i.i.i.i57:                              ; preds = %if.end5.i.i.i.i56
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef nonnull %51, i32 noundef 3) #6
  br label %posix_acl_release.exit60

do.end.i59:                                       ; preds = %land.lhs.true.i54
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !32
  %a_rcu.i58 = getelementptr inbounds %struct.posix_acl, ptr %51, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu.i58, ptr noundef nonnull inttoptr (i32 4 to ptr)) #6
  br label %posix_acl_release.exit60

posix_acl_release.exit60:                         ; preds = %do.end.i59, %if.then10.i.i.i.i57, %if.end5.i.i.i.i56.posix_acl_release.exit60_crit_edge, %posix_acl_release.exit.posix_acl_release.exit60_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nfs3svc_decode_setaclargs(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %call = tail call zeroext i1 @svcxdr_decode_nfs_fh3(ptr noundef %xdr, ptr noundef %1) #6
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %mask = getelementptr inbounds %struct.nfsd3_setaclargs, ptr %1, i32 0, i32 1
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end3, !prof !33

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %and8 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %acl_access = getelementptr inbounds %struct.nfsd3_setaclargs, ptr %1, i32 0, i32 2
  %spec.select = select i1 %tobool9.not, ptr null, ptr %acl_access
  %call10 = tail call zeroext i1 @nfs_stream_decode_acl(ptr noundef %xdr, ptr noundef null, ptr noundef %spec.select) #6
  br i1 %call10, label %if.end12, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mask, align 8
  %and14 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %acl_default = getelementptr inbounds %struct.nfsd3_setaclargs, ptr %1, i32 0, i32 3
  %spec.select32 = select i1 %tobool15.not, ptr null, ptr %acl_default
  %call20 = tail call zeroext i1 @nfs_stream_decode_acl(ptr noundef %xdr, ptr noundef null, ptr noundef %spec.select32) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.end3.cleanup_crit_edge ], [ false, %if.end6.cleanup_crit_edge ], [ %call20, %if.end12 ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nfs3svc_encode_setaclres(ptr noundef %rqstp, ptr noundef %xdr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %0 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_resp, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %call = tail call zeroext i1 @svcxdr_encode_nfsstat3(ptr noundef %xdr, i32 noundef %3) #6
  br i1 %call, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %fh = getelementptr inbounds %struct.nfsd3_attrstat, ptr %1, i32 0, i32 1
  %call1 = tail call zeroext i1 @svcxdr_encode_post_op_attr(ptr noundef %rqstp, ptr noundef %xdr, ptr noundef %fh) #6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i1 [ false, %entry.land.end_crit_edge ], [ %call1, %land.rhs ]
  ret i1 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs3svc_release_fhandle(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fh_verify(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_acl(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @posix_acl_from_mode(i16 noundef zeroext, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfserrno(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @svcxdr_decode_nfs_fh3(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_inline_decode(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @svcxdr_encode_nfsstat3(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @svcxdr_encode_post_op_attr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsacl_encode(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_reserve_space(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @fh_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_posix_acl(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_want_write(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @nfsd_acl_version3, !1, !"nfsd_acl_version3", i1 false, i1 false}
!1 = !{!"../fs/nfsd/nfs3acl.c", i32 285, i32 26}
!2 = !{ptr @nfsd_acl_count3, !3, !"nfsd_acl_count3", i1 false, i1 false}
!3 = !{!"../fs/nfsd/nfs3acl.c", i32 284, i32 21}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/nfsd/nfs3acl.c", i32 258, i32 14}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/nfsd/nfs3acl.c", i32 269, i32 14}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/nfsd/nfs3acl.c", i32 280, i32 14}
!10 = !{ptr @nfsd_acl_procedures3, !11, !"nfsd_acl_procedures3", i1 false, i1 false}
!11 = !{!"../fs/nfsd/nfs3acl.c", i32 249, i32 35}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/nfsd/nfsfh.h", i32 228, i32 2}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/nfsd/nfsfh.h", i32 363, i32 3}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @fh_lock_nested._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @fh_lock_nested._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{i8 0, i8 2}
!29 = !{!"branch_weights", i32 2000, i32 1}
!30 = !{i64 2148425140}
!31 = !{i64 2148339580, i64 2148339612, i64 2148339641, i64 2148339675, i64 2148339706, i64 2148339729}
!32 = !{i64 2149731843}
!33 = !{!"branch_weights", i32 1, i32 2000}
!34 = !{i64 2157399674, i64 2157400154, i64 2157399711, i64 2157399767, i64 2157399801, i64 2157399825, i64 2157399866, i64 2157399887, i64 2157399915, i64 2157399949}
