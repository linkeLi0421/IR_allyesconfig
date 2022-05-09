; ModuleID = '/llk/IR_all_yes/fs/nfsd/flexfilelayout.c_pt.bc'
source_filename = "../fs/nfsd/flexfilelayout.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nfsd4_layout_ops = type { i32, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.4 }
%union.anon.4 = type { [5 x %struct.uid_gid_extent] }
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
%struct.ctl_table_header = type { %union.anon.14, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nfsd4_getdeviceinfo = type { %struct.nfsd4_deviceid, i32, i32, i32, ptr }
%struct.nfsd4_deviceid = type { i64, i32, i32 }
%struct.pnfs_ff_device_addr = type { %struct.pnfs_ff_netaddr, i32, i32, i32, i32, i8 }
%struct.pnfs_ff_netaddr = type { [5 x i8], [57 x i8], i32, i32 }
%struct.svc_rqst = type { %struct.list_head, %struct.callback_head, ptr, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, ptr, ptr, %struct.svc_cred, ptr, ptr, i32, %struct.xdr_buf, %struct.xdr_stream, %struct.xdr_stream, ptr, %struct.xdr_buf, [260 x ptr], ptr, ptr, ptr, %struct.pagevec, [259 x %struct.kvec], [259 x %struct.bio_vec], i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i64, %struct.cache_req, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.137 }
%union.anon.137 = type { ptr, [124 x i8] }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cache_req = type { ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.69 }
%union.anon.69 = type { [4 x i32] }
%struct.nfsd4_layoutget = type { i64, i32, i32, i32, %struct.stateid_t, %struct.nfsd4_layout_seg, ptr }
%struct.stateid_t = type { i32, %struct.stateid_opaque_t }
%struct.stateid_opaque_t = type { %struct.clientid_t, i32 }
%struct.clientid_t = type { i32, i32 }
%struct.nfsd4_layout_seg = type { i32, i64, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.123, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.124, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.125, ptr, %struct.address_space, %struct.list_head, %union.anon.126, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.123 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.124 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.125 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.126 = type { ptr }
%struct.pnfs_ff_layout = type { i32, i32, %struct.kuid_t, %struct.kgid_t, %struct.nfsd4_deviceid, %struct.stateid_t, %struct.nfs_fh }
%struct.nfs_fh = type { i16, [128 x i8] }
%struct.knfsd_fh = type { i32, %union.anon.156 }
%union.anon.156 = type { %struct.anon.157, [124 x i8] }
%struct.anon.157 = type { i8, i8, i8, i8, [0 x i32] }

@ff_layout_ops = dso_local constant { %struct.nfsd4_layout_ops, [32 x i8] } { %struct.nfsd4_layout_ops { i32 6, i8 1, ptr @nfsd4_ff_proc_getdeviceinfo, ptr @nfsd4_ff_encode_getdeviceinfo, ptr @nfsd4_ff_proc_layoutget, ptr @nfsd4_ff_encode_layoutget, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tcp6\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s.%hhu.%hhu\00", [19 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@nfsd_debug = external dso_local local_unnamed_addr global i32, align 4
@nfsd4_ff_proc_layoutget._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"GET: 0x%llx:0x%llx %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nfsd4_ff_proc_layoutget\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fs/nfsd/flexfilelayout.c\00", [39 x i8] zeroinitializer }, align 32
@nfsd4_ff_proc_layoutget._entry_ptr = internal global ptr @nfsd4_ff_proc_layoutget._entry, section ".printk_index", align 4
@___asan_gen_.6 = private unnamed_addr constant [14 x i8] c"ff_layout_ops\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 127, i32 31 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 114, i32 49 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 120, i32 5 }
@___asan_gen_.15 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private constant [28 x i8] c"../fs/nfsd/flexfilelayout.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 70, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @nfsd4_ff_proc_layoutget._entry, ptr @nfsd4_ff_proc_layoutget._entry_ptr, ptr @ff_layout_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ff_layout_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_ff_proc_layoutget._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_ff_proc_getdeviceinfo(ptr nocapture noundef readnone %sb, ptr noundef %rqstp, ptr nocapture noundef readnone %clp, ptr nocapture noundef writeonly %gdp) #0 align 64 {
entry:
  %addr = alloca [48 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %addr) #6
  %0 = call ptr @memset(ptr %addr, i32 255, i32 48)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 92) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @nfserrno(i32 noundef -12) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %gd_device = getelementptr inbounds %struct.nfsd4_getdeviceinfo, ptr %gdp, i32 0, i32 4
  %2 = ptrtoint ptr %gd_device to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %gd_device, align 4
  %version = getelementptr inbounds %struct.pnfs_ff_device_addr, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %version, align 8
  %minor_version = getelementptr inbounds %struct.pnfs_ff_device_addr, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %minor_version to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %minor_version, align 4
  %call2 = tail call i32 @svc_max_payload(ptr noundef %rqstp) #6
  %rsize = getelementptr inbounds %struct.pnfs_ff_device_addr, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %rsize to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call2, ptr %rsize, align 8
  %wsize = getelementptr inbounds %struct.pnfs_ff_device_addr, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %wsize to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call2, ptr %wsize, align 4
  %rq_daddr = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 5
  %call4 = call i32 @rpc_ntop(ptr noundef %rq_daddr, ptr noundef nonnull %addr, i32 noundef 48) #6
  %7 = ptrtoint ptr %rq_daddr to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %rq_daddr, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %8)
  %cmp = icmp eq i16 %8, 2
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %rq_daddr, i32 0, i32 1
  %9 = ptrtoint ptr %sin_port to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %sin_port, align 2
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1952673792, ptr %call7.i.i, align 8
  br label %if.end19

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %rq_daddr, i32 0, i32 1
  %12 = ptrtoint ptr %sin6_port to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %sin6_port, align 2
  %14 = call ptr @memcpy(ptr %call7.i.i, ptr @.str.1, i32 5)
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then7
  %.sink = phi i32 [ 3, %if.then7 ], [ 4, %if.else ]
  %port.0 = phi i16 [ %10, %if.then7 ], [ %13, %if.else ]
  %15 = getelementptr inbounds %struct.pnfs_ff_netaddr, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink, ptr %15, align 8
  %addr21 = getelementptr inbounds %struct.pnfs_ff_netaddr, ptr %call7.i.i, i32 0, i32 1
  %conv24 = zext i16 %port.0 to i32
  %17 = lshr i32 %conv24, 8
  %and = and i32 %conv24, 255
  %call26 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %addr21, i32 noundef 57, ptr noundef nonnull @.str.2, ptr noundef nonnull %addr, i32 noundef %17, i32 noundef %and)
  %addr_len = getelementptr inbounds %struct.pnfs_ff_netaddr, ptr %call7.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %addr_len to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call26, ptr %addr_len, align 4
  %tightly_coupled = getelementptr inbounds %struct.pnfs_ff_device_addr, ptr %call7.i.i, i32 0, i32 5
  %19 = ptrtoint ptr %tightly_coupled to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %tightly_coupled, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then
  %retval.0 = phi i32 [ 0, %if.end19 ], [ %call1, %if.then ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %addr) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd4_ff_encode_getdeviceinfo(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_ff_proc_layoutget(ptr nocapture noundef readonly %inode, ptr noundef %fhp, ptr nocapture noundef %args) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lg_seg = getelementptr inbounds %struct.nfsd4_layoutget, ptr %args, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 184) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.out_error_crit_edge, label %if.end

entry.out_error_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_error

if.end:                                           ; preds = %entry
  %lg_content = getelementptr inbounds %struct.nfsd4_layoutget, ptr %args, i32 0, i32 6
  %1 = ptrtoint ptr %lg_content to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %lg_content, align 8
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 7, ptr %call7.i.i, align 8
  %3 = ptrtoint ptr %lg_seg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lg_seg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  %i_uid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %5 = ptrtoint ptr %i_uid to i32
  call void @__asan_load4_noabort(i32 %5)
  %.unpack = load i32, ptr %i_uid, align 4
  br i1 %cmp, label %if.then1, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call2 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %6) #6
  %add = add i32 %call2, 1
  %call3 = tail call i32 @make_kuid(ptr noundef nonnull @init_user_ns, i32 noundef %add) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then1, %if.end.if.end7_crit_edge
  %.sink = phi i32 [ %call3, %if.then1 ], [ %.unpack, %if.end.if.end7_crit_edge ]
  %7 = getelementptr inbounds %struct.pnfs_ff_layout, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink, ptr %7, align 8
  %gid = getelementptr inbounds %struct.pnfs_ff_layout, ptr %call7.i.i, i32 0, i32 3
  %i_gid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %9 = ptrtoint ptr %i_gid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_gid, align 8
  %11 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %gid, align 4
  %deviceid = getelementptr inbounds %struct.pnfs_ff_layout, ptr %call7.i.i, i32 0, i32 4
  %call8 = tail call i32 @nfsd4_set_deviceid(ptr noundef %deviceid, ptr noundef %fhp, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.out_error_crit_edge

if.end7.out_error_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_error

if.end11:                                         ; preds = %if.end7
  %12 = ptrtoint ptr %fhp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fhp, align 8
  %conv = trunc i32 %13 to i16
  %fh = getelementptr inbounds %struct.pnfs_ff_layout, ptr %call7.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %fh to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv, ptr %fh, align 8
  %data = getelementptr inbounds %struct.pnfs_ff_layout, ptr %call7.i.i, i32 0, i32 6, i32 1
  %15 = getelementptr inbounds %struct.knfsd_fh, ptr %fhp, i32 0, i32 1
  %conv16 = and i32 %13, 65535
  %16 = call ptr @memcpy(ptr %data, ptr %15, i32 %conv16)
  %offset = getelementptr inbounds %struct.nfsd4_layoutget, ptr %args, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 0, ptr %offset, align 8
  %length = getelementptr inbounds %struct.nfsd4_layoutget, ptr %args, i32 0, i32 5, i32 2
  %18 = ptrtoint ptr %length to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 -1, ptr %length, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %19 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %19, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.end11.cleanup_crit_edge, label %do.end

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %lg_seg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lg_seg, align 8
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i64 noundef 0, i64 noundef -1, i32 noundef %21) #10
  br label %cleanup

out_error:                                        ; preds = %if.end7.out_error_crit_edge, %entry.out_error_crit_edge
  %error.0 = phi i32 [ %call8, %if.end7.out_error_crit_edge ], [ -12, %entry.out_error_crit_edge ]
  %length28 = getelementptr inbounds %struct.nfsd4_layoutget, ptr %args, i32 0, i32 5, i32 2
  %22 = ptrtoint ptr %length28 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 0, ptr %length28, align 8
  %call29 = tail call i32 @nfserrno(i32 noundef %error.0) #6
  br label %cleanup

cleanup:                                          ; preds = %out_error, %do.end, %if.end11.cleanup_crit_edge
  %retval.0 = phi i32 [ %call29, %out_error ], [ 0, %do.end ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd4_ff_encode_layoutget(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfserrno(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_max_payload(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_ntop(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd4_set_deviceid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @ff_layout_ops, !1, !"ff_layout_ops", i1 false, i1 false}
!1 = !{!"../fs/nfsd/flexfilelayout.c", i32 127, i32 31}
!2 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/nfsd/flexfilelayout.c", i32 107, i32 49}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/nfsd/flexfilelayout.c", i32 114, i32 49}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/nfsd/flexfilelayout.c", i32 120, i32 5}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/nfsd/flexfilelayout.c", i32 70, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @nfsd4_ff_proc_layoutget._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @nfsd4_ff_proc_layoutget._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
