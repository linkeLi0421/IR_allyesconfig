; ModuleID = '/llk/IR_all_yes/fs/nfs_common/nfsacl.c_pt.bc'
source_filename = "../fs/nfs_common/nfsacl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nfsacl_encode\22, \22a\22\09"
module asm "\09.weak\09__crc_nfsacl_encode\09\09\09\09"
module asm "\09.long\09__crc_nfsacl_encode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfsacl_encode:\09\09\09\09\09"
module asm "\09.asciz \09\22nfsacl_encode\22\09\09\09\09\09"
module asm "__kstrtabns_nfsacl_encode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nfs_stream_encode_acl\22, \22a\22\09"
module asm "\09.weak\09__crc_nfs_stream_encode_acl\09\09\09\09"
module asm "\09.long\09__crc_nfs_stream_encode_acl\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_stream_encode_acl:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_stream_encode_acl\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_stream_encode_acl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nfsacl_decode\22, \22a\22\09"
module asm "\09.weak\09__crc_nfsacl_decode\09\09\09\09"
module asm "\09.long\09__crc_nfsacl_decode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfsacl_decode:\09\09\09\09\09"
module asm "\09.asciz \09\22nfsacl_decode\22\09\09\09\09\09"
module asm "__kstrtabns_nfsacl_decode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nfs_stream_decode_acl\22, \22a\22\09"
module asm "\09.weak\09__crc_nfs_stream_decode_acl\09\09\09\09"
module asm "\09.long\09__crc_nfs_stream_decode_acl\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_stream_decode_acl:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_stream_decode_acl\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_stream_decode_acl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.user_namespace = type opaque
%struct.nfsacl_encode_desc = type { %struct.xdr_array2_desc, i32, ptr, i32, %struct.kuid_t, %struct.kgid_t }
%struct.xdr_array2_desc = type { i32, i32, i32, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.nfsacl_simple_acl = type { %struct.posix_acl, [4 x %struct.posix_acl_entry] }
%struct.posix_acl = type { %struct.refcount_struct, %struct.callback_head, i32, [0 x %struct.posix_acl_entry] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.posix_acl_entry = type { i16, i16, %union.anon.70 }
%union.anon.70 = type { %struct.kuid_t }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.72 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.74 = type { ptr }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.nfsacl_decode_desc = type { %struct.xdr_array2_desc, i32, ptr }

@__UNIQUE_ID_file233 = internal constant [35 x i8] c"nfs_acl.file=fs/nfs_common/nfs_acl\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [20 x i8] c"nfs_acl.license=GPL\00", section ".modinfo", align 1
@__kstrtab_nfsacl_encode = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfsacl_encode = external dso_local constant [0 x i8], align 1
@__ksymtab_nfsacl_encode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfsacl_encode to i32), ptr @__kstrtab_nfsacl_encode, ptr @__kstrtabns_nfsacl_encode }, section "___ksymtab_gpl+nfsacl_encode", align 4
@__kstrtab_nfs_stream_encode_acl = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_stream_encode_acl = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_stream_encode_acl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_stream_encode_acl to i32), ptr @__kstrtab_nfs_stream_encode_acl, ptr @__kstrtabns_nfs_stream_encode_acl }, section "___ksymtab_gpl+nfs_stream_encode_acl", align 4
@__kstrtab_nfsacl_decode = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfsacl_decode = external dso_local constant [0 x i8], align 1
@__ksymtab_nfsacl_decode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfsacl_decode to i32), ptr @__kstrtab_nfsacl_decode, ptr @__kstrtabns_nfsacl_decode }, section "___ksymtab_gpl+nfsacl_decode", align 4
@__kstrtab_nfs_stream_decode_acl = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_stream_decode_acl = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_stream_decode_acl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_stream_decode_acl to i32), ptr @__kstrtab_nfs_stream_decode_acl, ptr @__kstrtabns_nfs_stream_decode_acl }, section "___ksymtab_gpl+nfs_stream_decode_acl", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 16]
@__sancov_gen_cov_switch_values.2 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 16]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 8]
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__ksymtab_nfs_stream_decode_acl, ptr @__ksymtab_nfs_stream_encode_acl, ptr @__ksymtab_nfsacl_decode, ptr @__ksymtab_nfsacl_encode], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsacl_encode(ptr noundef %buf, i32 noundef %base, ptr nocapture noundef readonly %inode, ptr noundef %acl, i32 noundef %encode_entries, i32 noundef %typeflag) #0 align 64 {
entry:
  %nfsacl_desc = alloca %struct.nfsacl_encode_desc, align 4
  %aclbuf = alloca %struct.nfsacl_simple_acl, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %acl, null
  br i1 %tobool.not, label %entry.cond.end5_crit_edge, label %land.lhs.true

entry.cond.end5_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end5

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %a_count = getelementptr inbounds %struct.posix_acl, ptr %acl, i32 0, i32 2
  %0 = ptrtoint ptr %a_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  %2 = tail call i32 @llvm.smax.i32(i32 %1, i32 4)
  %spec.select81 = select i1 %tobool1.not, i32 0, i32 %2
  br label %cond.end5

cond.end5:                                        ; preds = %land.lhs.true, %entry.cond.end5_crit_edge
  %cond6 = phi i32 [ 0, %entry.cond.end5_crit_edge ], [ %spec.select81, %land.lhs.true ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %nfsacl_desc) #6
  %3 = ptrtoint ptr %nfsacl_desc to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 12, ptr %nfsacl_desc, align 4
  %array_len = getelementptr inbounds %struct.xdr_array2_desc, ptr %nfsacl_desc, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %encode_entries)
  %tobool7.not = icmp eq i32 %encode_entries, 0
  %spec.select = select i1 %tobool7.not, i32 0, i32 %cond6
  %4 = ptrtoint ptr %array_len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %spec.select, ptr %array_len, align 4
  %array_maxlen = getelementptr inbounds %struct.xdr_array2_desc, ptr %nfsacl_desc, i32 0, i32 2
  %5 = ptrtoint ptr %array_maxlen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %array_maxlen, align 4
  %xcode = getelementptr inbounds %struct.xdr_array2_desc, ptr %nfsacl_desc, i32 0, i32 3
  %6 = ptrtoint ptr %xcode to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @xdr_nfsace_encode, ptr %xcode, align 4
  %count = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %nfsacl_desc, i32 0, i32 1
  %7 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %count, align 4
  %acl12 = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %nfsacl_desc, i32 0, i32 2
  %8 = ptrtoint ptr %acl12 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %acl, ptr %acl12, align 4
  %typeflag13 = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %nfsacl_desc, i32 0, i32 3
  %9 = ptrtoint ptr %typeflag13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %typeflag, ptr %typeflag13, align 4
  %uid = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %nfsacl_desc, i32 0, i32 4
  %i_uid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %10 = ptrtoint ptr %i_uid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_uid, align 4
  %12 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %uid, align 4
  %gid = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %nfsacl_desc, i32 0, i32 5
  %i_gid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %13 = ptrtoint ptr %i_gid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_gid, align 8
  %15 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %gid, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %aclbuf) #6
  %16 = call ptr @memset(ptr %aclbuf, i32 255, i32 48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %cond6)
  %cmp14 = icmp ugt i32 %cond6, 1024
  br i1 %cmp14, label %cond.end5.cleanup_crit_edge, label %lor.lhs.false

cond.end5.cleanup_crit_edge:                      ; preds = %cond.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %cond.end5
  %call = tail call i32 @xdr_encode_word(ptr noundef %buf, i32 noundef %base, i32 noundef %cond6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool15.not = icmp eq i32 %call, 0
  br i1 %tobool15.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %brmerge = or i1 %tobool.not, %tobool7.not
  br i1 %brmerge, label %if.end.if.end41_crit_edge, label %land.lhs.true19

if.end.if.end41_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

land.lhs.true19:                                  ; preds = %if.end
  %a_count20 = getelementptr inbounds %struct.posix_acl, ptr %acl, i32 0, i32 2
  %17 = ptrtoint ptr %a_count20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %a_count20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %cmp21 = icmp eq i32 %18, 3
  br i1 %cmp21, label %if.then22, label %land.lhs.true19.if.end41_crit_edge

land.lhs.true19.if.end41_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then22:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #8
  call void @posix_acl_init(ptr noundef nonnull %aclbuf, i32 noundef 4) #6
  %a_entries = getelementptr inbounds %struct.posix_acl, ptr %aclbuf, i32 0, i32 3
  %a_entries24 = getelementptr inbounds %struct.posix_acl, ptr %acl, i32 0, i32 3
  %19 = ptrtoint ptr %a_entries24 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %a_entries24, align 4
  %21 = ptrtoint ptr %a_entries to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 %20, ptr %a_entries, align 4
  %arrayidx27 = getelementptr inbounds %struct.posix_acl, ptr %aclbuf, i32 1, i32 1, i32 1
  %arrayidx29 = getelementptr %struct.posix_acl, ptr %acl, i32 1, i32 1, i32 1
  %22 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %23 = load i64, ptr %arrayidx29, align 4
  %24 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 %23, ptr %arrayidx27, align 4
  %arrayidx31 = getelementptr inbounds %struct.posix_acl, ptr %aclbuf, i32 2
  %25 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 %23, ptr %arrayidx31, align 4
  store i16 16, ptr %arrayidx31, align 4
  %arrayidx37 = getelementptr inbounds %struct.posix_acl, ptr %aclbuf, i32 2, i32 1, i32 1
  %arrayidx39 = getelementptr %struct.posix_acl, ptr %acl, i32 2
  %26 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 8)
  %27 = load i64, ptr %arrayidx39, align 4
  %28 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 8)
  store i64 %27, ptr %arrayidx37, align 4
  %29 = ptrtoint ptr %acl12 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %aclbuf, ptr %acl12, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then22, %land.lhs.true19.if.end41_crit_edge, %if.end.if.end41_crit_edge
  %add = add i32 %base, 4
  %call43 = call i32 @xdr_encode_array2(ptr noundef %buf, i32 noundef %add, ptr noundef nonnull %nfsacl_desc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then45, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %nfsacl_desc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nfsacl_desc, align 4
  %32 = ptrtoint ptr %array_len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %array_len, align 4
  %mul = mul i32 %33, %31
  %add50 = add i32 %mul, 8
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %if.end41.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %cond.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %cond.end5.cleanup_crit_edge ], [ %call43, %if.end41.cleanup_crit_edge ], [ %add50, %if.then45 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %aclbuf) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %nfsacl_desc) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xdr_nfsace_encode(ptr nocapture noundef %desc, ptr nocapture noundef writeonly %elem) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %acl = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %desc, i32 0, i32 2
  %0 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acl, align 4
  %count = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %desc, i32 0, i32 1
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %count, align 4
  %arrayidx = getelementptr %struct.posix_acl, ptr %1, i32 0, i32 3, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 4
  %conv = sext i16 %5 to i32
  %typeflag = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %desc, i32 0, i32 3
  %6 = ptrtoint ptr %typeflag to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %typeflag, align 4
  %or = or i32 %7, %conv
  %8 = ptrtoint ptr %elem to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %elem, align 4
  %9 = load i16, ptr %arrayidx, align 4
  %conv3 = sext i16 %9 to i32
  %10 = zext i32 %conv3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv3, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 4, label %sw.bb5
    i32 2, label %sw.bb9
    i32 8, label %sw.bb13
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %uid = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %desc, i32 0, i32 4
  %11 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack36 = load i32, ptr %uid, align 4
  %12 = insertvalue [1 x i32] undef, i32 %.unpack36, 0
  %call = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %12) #6
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %gid = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %desc, i32 0, i32 5
  %13 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %13)
  %.unpack35 = load i32, ptr %gid, align 4
  %14 = insertvalue [1 x i32] undef, i32 %.unpack35, 0
  %call7 = tail call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %14) #6
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %15 = getelementptr %struct.posix_acl, ptr %1, i32 0, i32 3, i32 %3, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack34 = load i32, ptr %15, align 4
  %17 = insertvalue [1 x i32] undef, i32 %.unpack34, 0
  %call11 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %17) #6
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %18 = getelementptr %struct.posix_acl, ptr %1, i32 0, i32 3, i32 %3, i32 2
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack = load i32, ptr %18, align 4
  %20 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call15 = tail call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %20) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb9, %sw.bb5, %sw.bb, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ %call15, %sw.bb13 ], [ %call11, %sw.bb9 ], [ %call7, %sw.bb5 ], [ %call, %sw.bb ], [ 0, %entry.sw.epilog_crit_edge ]
  %incdec.ptr = getelementptr i32, ptr %elem, i32 1
  %21 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink, ptr %incdec.ptr, align 4
  %p.0 = getelementptr i32, ptr %elem, i32 2
  %e_perm = getelementptr %struct.posix_acl, ptr %1, i32 0, i32 3, i32 %3, i32 1
  %22 = ptrtoint ptr %e_perm to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %e_perm, align 2
  %24 = and i16 %23, 7
  %and = zext i16 %24 to i32
  %25 = ptrtoint ptr %p.0 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and, ptr %p.0, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdr_encode_word(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @posix_acl_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdr_encode_array2(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs_stream_encode_acl(ptr noundef %xdr, ptr nocapture noundef readonly %inode, ptr noundef %acl, i32 noundef %encode_entries, i32 noundef %typeflag) #0 align 64 {
entry:
  %nfsacl_desc = alloca %struct.nfsacl_encode_desc, align 4
  %aclbuf = alloca %struct.nfsacl_simple_acl, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %acl, null
  br i1 %tobool.not, label %entry.cond.end5_crit_edge, label %land.lhs.true

entry.cond.end5_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end5

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %a_count = getelementptr inbounds %struct.posix_acl, ptr %acl, i32 0, i32 2
  %0 = ptrtoint ptr %a_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  %2 = tail call i32 @llvm.smax.i32(i32 %1, i32 4)
  %spec.select91 = select i1 %tobool1.not, i32 0, i32 %2
  br label %cond.end5

cond.end5:                                        ; preds = %land.lhs.true, %entry.cond.end5_crit_edge
  %cond6 = phi i32 [ 0, %entry.cond.end5_crit_edge ], [ %spec.select91, %land.lhs.true ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %nfsacl_desc) #6
  %3 = ptrtoint ptr %nfsacl_desc to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 12, ptr %nfsacl_desc, align 4
  %array_len = getelementptr inbounds %struct.xdr_array2_desc, ptr %nfsacl_desc, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %encode_entries)
  %tobool8.not = icmp eq i32 %encode_entries, 0
  %spec.select = select i1 %tobool8.not, i32 0, i32 %cond6
  %4 = ptrtoint ptr %array_len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %spec.select, ptr %array_len, align 4
  %array_maxlen = getelementptr inbounds %struct.xdr_array2_desc, ptr %nfsacl_desc, i32 0, i32 2
  %5 = ptrtoint ptr %array_maxlen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %array_maxlen, align 4
  %xcode = getelementptr inbounds %struct.xdr_array2_desc, ptr %nfsacl_desc, i32 0, i32 3
  %6 = ptrtoint ptr %xcode to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @xdr_nfsace_encode, ptr %xcode, align 4
  %count = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %nfsacl_desc, i32 0, i32 1
  %7 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %count, align 4
  %acl13 = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %nfsacl_desc, i32 0, i32 2
  %8 = ptrtoint ptr %acl13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %acl, ptr %acl13, align 4
  %typeflag14 = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %nfsacl_desc, i32 0, i32 3
  %9 = ptrtoint ptr %typeflag14 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %typeflag, ptr %typeflag14, align 4
  %uid = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %nfsacl_desc, i32 0, i32 4
  %i_uid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %10 = ptrtoint ptr %i_uid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_uid, align 4
  %12 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %uid, align 4
  %gid = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %nfsacl_desc, i32 0, i32 5
  %i_gid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %13 = ptrtoint ptr %i_gid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_gid, align 8
  %15 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %gid, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %aclbuf) #6
  %16 = call ptr @memset(ptr %aclbuf, i32 255, i32 48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %cond6)
  %cmp15 = icmp ugt i32 %cond6, 1024
  br i1 %cmp15, label %cond.end5.cleanup_crit_edge, label %if.end

cond.end5.cleanup_crit_edge:                      ; preds = %cond.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %cond.end5
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end18, !prof !20

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond6, ptr %call.i, align 4
  %brmerge = or i1 %tobool.not, %tobool8.not
  br i1 %brmerge, label %if.end18.if.end44_crit_edge, label %land.lhs.true22

if.end18.if.end44_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

land.lhs.true22:                                  ; preds = %if.end18
  %a_count23 = getelementptr inbounds %struct.posix_acl, ptr %acl, i32 0, i32 2
  %18 = ptrtoint ptr %a_count23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %a_count23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp24 = icmp eq i32 %19, 3
  br i1 %cmp24, label %if.then25, label %land.lhs.true22.if.end44_crit_edge

land.lhs.true22.if.end44_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then25:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #8
  call void @posix_acl_init(ptr noundef nonnull %aclbuf, i32 noundef 4) #6
  %a_entries = getelementptr inbounds %struct.posix_acl, ptr %aclbuf, i32 0, i32 3
  %a_entries27 = getelementptr inbounds %struct.posix_acl, ptr %acl, i32 0, i32 3
  %20 = ptrtoint ptr %a_entries27 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %a_entries27, align 4
  %22 = ptrtoint ptr %a_entries to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 %21, ptr %a_entries, align 4
  %arrayidx30 = getelementptr inbounds %struct.posix_acl, ptr %aclbuf, i32 1, i32 1, i32 1
  %arrayidx32 = getelementptr %struct.posix_acl, ptr %acl, i32 1, i32 1, i32 1
  %23 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %24 = load i64, ptr %arrayidx32, align 4
  %25 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 %24, ptr %arrayidx30, align 4
  %arrayidx34 = getelementptr inbounds %struct.posix_acl, ptr %aclbuf, i32 2
  %26 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 %24, ptr %arrayidx34, align 4
  store i16 16, ptr %arrayidx34, align 4
  %arrayidx40 = getelementptr inbounds %struct.posix_acl, ptr %aclbuf, i32 2, i32 1, i32 1
  %arrayidx42 = getelementptr %struct.posix_acl, ptr %acl, i32 2
  %27 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 8)
  %28 = load i64, ptr %arrayidx42, align 4
  %29 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 %28, ptr %arrayidx40, align 4
  %30 = ptrtoint ptr %acl13 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %aclbuf, ptr %acl13, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then25, %land.lhs.true22.if.end44_crit_edge, %if.end18.if.end44_crit_edge
  %call45 = call i32 @xdr_stream_pos(ptr noundef %xdr) #6
  %31 = ptrtoint ptr %array_len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %array_len, align 4
  %mul = mul i32 %32, 12
  %add = add i32 %mul, 4
  %call48 = call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add) #6
  %tobool49.not = icmp eq ptr %call48, null
  br i1 %tobool49.not, label %if.end44.cleanup_crit_edge, label %if.end51

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end51:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %buf = getelementptr inbounds %struct.xdr_stream, ptr %xdr, i32 0, i32 1
  %33 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %buf, align 4
  %call53 = call i32 @xdr_encode_array2(ptr noundef %34, i32 noundef %call45, ptr noundef nonnull %nfsacl_desc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %if.end44.cleanup_crit_edge, %if.end.cleanup_crit_edge, %cond.end5.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %cond.end5.cleanup_crit_edge ], [ false, %if.end44.cleanup_crit_edge ], [ %tobool54.not, %if.end51 ], [ false, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %aclbuf) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %nfsacl_desc) #6
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdr_stream_pos(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_reserve_space(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsacl_decode(ptr noundef %buf, i32 noundef %base, ptr noundef writeonly %aclcnt, ptr noundef writeonly %pacl) #0 align 64 {
entry:
  %nfsacl_desc = alloca %struct.nfsacl_decode_desc, align 4
  %entries = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %nfsacl_desc) #6
  %0 = getelementptr inbounds %struct.xdr_array2_desc, ptr %nfsacl_desc, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xdr_array2_desc, ptr %nfsacl_desc, i32 0, i32 2
  %2 = getelementptr inbounds %struct.xdr_array2_desc, ptr %nfsacl_desc, i32 0, i32 3
  %3 = getelementptr inbounds %struct.nfsacl_decode_desc, ptr %nfsacl_desc, i32 0, i32 1
  %4 = getelementptr inbounds %struct.nfsacl_decode_desc, ptr %nfsacl_desc, i32 0, i32 2
  %5 = ptrtoint ptr %nfsacl_desc to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 12, ptr %nfsacl_desc, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %0, align 4
  %tobool.not = icmp eq ptr %pacl, null
  %cond = select i1 %tobool.not, ptr null, ptr @xdr_nfsace_decode
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %cond, ptr %2, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %3, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %entries) #6
  %10 = ptrtoint ptr %entries to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %entries, align 4, !annotation !21
  %call = call i32 @xdr_decode_word(ptr noundef %buf, i32 noundef %base, ptr noundef nonnull %entries) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %11 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %12)
  %cmp = icmp ugt i32 %12, 1024
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %1, align 4
  %add = add i32 %base, 4
  %call5 = call i32 @xdr_decode_array2(ptr noundef %buf, i32 noundef %add, ptr noundef nonnull %nfsacl_desc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  br i1 %tobool.not, label %if.end8.if.end22_crit_edge, label %if.then10

if.end8.if.end22_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then10:                                        ; preds = %if.end8
  %14 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %entries, align 4
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp13.not = icmp eq i32 %15, %17
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %4, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %cmp13.not, label %lor.lhs.false14, label %if.then18

lor.lhs.false14:                                  ; preds = %if.then10
  br i1 %tobool.not.i, label %lor.lhs.false14.posix_acl_from_nfsacl.exit_crit_edge, label %if.end.i

lor.lhs.false14.posix_acl_from_nfsacl.exit_crit_edge: ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #8
  br label %posix_acl_from_nfsacl.exit

if.end.i:                                         ; preds = %lor.lhs.false14
  %a_entries.i = getelementptr inbounds %struct.posix_acl, ptr %19, i32 0, i32 3
  %a_count.i = getelementptr inbounds %struct.posix_acl, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %a_count.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %a_count.i, align 4
  call void @sort(ptr noundef %a_entries.i, i32 noundef %21, i32 noundef 8, ptr noundef nonnull @cmp_acl_entry, ptr noundef null) #6
  %22 = ptrtoint ptr %a_count.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %a_count.i, align 4
  %add.ptr.i = getelementptr %struct.posix_acl_entry, ptr %a_entries.i, i32 %23
  %cmp2.i = icmp ult ptr %a_entries.i, %add.ptr.i
  br i1 %cmp2.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.posix_acl_from_nfsacl.exit_crit_edge

if.end.i.posix_acl_from_nfsacl.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %posix_acl_from_nfsacl.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %mask.05.i = phi ptr [ %mask.1.i, %for.inc.i.for.body.i_crit_edge ], [ null, %if.end.i.for.body.i_crit_edge ]
  %group_obj.04.i = phi ptr [ %group_obj.1.i, %for.inc.i.for.body.i_crit_edge ], [ null, %if.end.i.for.body.i_crit_edge ]
  %pa.03.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %a_entries.i, %if.end.i.for.body.i_crit_edge ]
  %24 = ptrtoint ptr %pa.03.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %pa.03.i, align 4
  %conv.i = sext i16 %25 to i32
  %26 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %conv.i, label %for.body.i.for.inc.i_crit_edge [
    i32 16, label %sw.bb4.i
    i32 4, label %sw.bb.i
  ]

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

sw.bb.i:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

sw.bb4.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.bb4.i, %sw.bb.i, %for.body.i.for.inc.i_crit_edge
  %group_obj.1.i = phi ptr [ %group_obj.04.i, %for.body.i.for.inc.i_crit_edge ], [ %pa.03.i, %sw.bb.i ], [ %group_obj.04.i, %sw.bb4.i ]
  %mask.1.i = phi ptr [ %mask.05.i, %for.body.i.for.inc.i_crit_edge ], [ %mask.05.i, %sw.bb.i ], [ %pa.03.i, %sw.bb4.i ]
  %incdec.ptr.i = getelementptr %struct.posix_acl_entry, ptr %pa.03.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %23)
  %cmp6.i = icmp ne i32 %23, 4
  %tobool8.not.i = icmp eq ptr %group_obj.1.i, null
  %or.cond.i = select i1 %cmp6.i, i1 true, i1 %tobool8.not.i
  %tobool10.not.i = icmp eq ptr %mask.1.i, null
  %or.cond1.i = select i1 %or.cond.i, i1 true, i1 %tobool10.not.i
  br i1 %or.cond1.i, label %for.end.i.posix_acl_from_nfsacl.exit_crit_edge, label %land.lhs.true11.i

for.end.i.posix_acl_from_nfsacl.exit_crit_edge:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %posix_acl_from_nfsacl.exit

land.lhs.true11.i:                                ; preds = %for.end.i
  %e_perm.i = getelementptr inbounds %struct.posix_acl_entry, ptr %mask.1.i, i32 0, i32 1
  %27 = ptrtoint ptr %e_perm.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %e_perm.i, align 2
  %e_perm13.i = getelementptr inbounds %struct.posix_acl_entry, ptr %group_obj.1.i, i32 0, i32 1
  %29 = ptrtoint ptr %e_perm13.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %e_perm13.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %28, i16 %30)
  %cmp15.i = icmp eq i16 %28, %30
  br i1 %cmp15.i, label %if.then17.i, label %land.lhs.true11.i.posix_acl_from_nfsacl.exit_crit_edge

land.lhs.true11.i.posix_acl_from_nfsacl.exit_crit_edge: ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %posix_acl_from_nfsacl.exit

if.then17.i:                                      ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr18.i = getelementptr %struct.posix_acl_entry, ptr %mask.1.i, i32 1
  %sub.ptr.lhs.cast.i = ptrtoint ptr %mask.1.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %a_entries.i to i32
  %sub.ptr.sub.neg.i = add i32 %sub.ptr.rhs.cast.i, 24
  %mul.i = sub i32 %sub.ptr.sub.neg.i, %sub.ptr.lhs.cast.i
  %31 = call ptr @memmove(ptr %mask.1.i, ptr %add.ptr18.i, i32 %mul.i)
  %32 = ptrtoint ptr %a_count.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 3, ptr %a_count.i, align 4
  br label %posix_acl_from_nfsacl.exit

posix_acl_from_nfsacl.exit:                       ; preds = %if.then17.i, %land.lhs.true11.i.posix_acl_from_nfsacl.exit_crit_edge, %for.end.i.posix_acl_from_nfsacl.exit_crit_edge, %if.end.i.posix_acl_from_nfsacl.exit_crit_edge, %lor.lhs.false14.posix_acl_from_nfsacl.exit_crit_edge
  %33 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %4, align 4
  %35 = ptrtoint ptr %pacl to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %pacl, align 4
  br label %if.end22

if.then18:                                        ; preds = %if.then10
  br i1 %tobool.not.i, label %if.then18.cleanup_crit_edge, label %land.lhs.true.i

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.then18
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %19, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !22
  call void @llvm.prefetch.p0(ptr nonnull %19, i32 1, i32 3, i32 1) #6
  %36 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %19, ptr nonnull %19, i32 1, ptr nonnull elementtype(i32) %19) #6, !srcloc !23
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !24

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @refcount_warn_saturate(ptr noundef nonnull %19, i32 noundef 3) #6
  br label %cleanup

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !25
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %19, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #6
  br label %cleanup

if.end22:                                         ; preds = %posix_acl_from_nfsacl.exit, %if.end8.if.end22_crit_edge
  %tobool23.not = icmp eq ptr %aclcnt, null
  br i1 %tobool23.not, label %if.end22.if.end25_crit_edge, label %if.then24

if.end22.if.end25_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %entries, align 4
  %39 = ptrtoint ptr %aclcnt to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %aclcnt, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end22.if.end25_crit_edge
  %40 = ptrtoint ptr %nfsacl_desc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nfsacl_desc, align 4
  %42 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %0, align 4
  %mul = mul i32 %43, %41
  %add30 = add i32 %mul, 8
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then18.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add30, %if.end25 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ], [ -22, %if.then18.cleanup_crit_edge ], [ -22, %if.end5.i.i.i.i.cleanup_crit_edge ], [ -22, %if.then10.i.i.i.i ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %entries) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %nfsacl_desc) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xdr_nfsace_decode(ptr nocapture noundef %desc, ptr nocapture noundef readonly %elem) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %acl = getelementptr inbounds %struct.nfsacl_decode_desc, ptr %desc, i32 0, i32 2
  %0 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acl, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then:                                          ; preds = %entry
  %array_len = getelementptr inbounds %struct.xdr_array2_desc, ptr %desc, i32 0, i32 1
  %2 = ptrtoint ptr %array_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %array_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %3)
  %cmp = icmp ugt i32 %3, 1024
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call = tail call ptr @posix_acl_alloc(i32 noundef %3, i32 noundef 3264) #6
  %4 = ptrtoint ptr %acl to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %acl, align 4
  %tobool6.not = icmp eq ptr %call, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %count = getelementptr inbounds %struct.nfsacl_decode_desc, ptr %desc, i32 0, i32 1
  %5 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %count, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %entry.if.end9_crit_edge
  %6 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %acl, align 4
  %count11 = getelementptr inbounds %struct.nfsacl_decode_desc, ptr %desc, i32 0, i32 1
  %8 = ptrtoint ptr %count11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count11, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %count11, align 4
  %arrayidx = getelementptr %struct.posix_acl, ptr %7, i32 0, i32 3, i32 %9
  %incdec.ptr = getelementptr i32, ptr %elem, i32 1
  %10 = ptrtoint ptr %elem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %elem, align 4
  %12 = trunc i32 %11 to i16
  %conv = and i16 %12, -4097
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv, ptr %arrayidx, align 4
  %incdec.ptr12 = getelementptr i32, ptr %elem, i32 2
  %14 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %incdec.ptr, align 4
  %16 = ptrtoint ptr %incdec.ptr12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %incdec.ptr12, align 4
  %conv14 = trunc i32 %17 to i16
  %e_perm = getelementptr %struct.posix_acl, ptr %7, i32 0, i32 3, i32 %9, i32 1
  %18 = ptrtoint ptr %e_perm to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv14, ptr %e_perm, align 2
  %conv16 = sext i16 %conv to i32
  %19 = zext i32 %conv16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %conv16, label %if.end9.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 8, label %sw.bb22
    i32 1, label %if.end9.sw.bb30_crit_edge
    i32 4, label %if.end9.sw.bb30_crit_edge64
    i32 32, label %if.end9.sw.bb30_crit_edge65
    i32 16, label %sw.bb37
  ]

if.end9.sw.bb30_crit_edge65:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb30

if.end9.sw.bb30_crit_edge64:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb30

if.end9.sw.bb30_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb30

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end9
  %20 = getelementptr %struct.posix_acl, ptr %7, i32 0, i32 3, i32 %9, i32 2
  %call17 = tail call i32 @make_kuid(ptr noundef nonnull @init_user_ns, i32 noundef %15) #6
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call17, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call17)
  %cmp.i.not = icmp eq i32 %call17, -1
  br i1 %cmp.i.not, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb22:                                          ; preds = %if.end9
  %22 = getelementptr %struct.posix_acl, ptr %7, i32 0, i32 3, i32 %9, i32 2
  %call24 = tail call i32 @make_kgid(ptr noundef nonnull @init_user_ns, i32 noundef %15) #6
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call24, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call24)
  %cmp.i63.not = icmp eq i32 %call24, -1
  br i1 %cmp.i63.not, label %sw.bb22.cleanup_crit_edge, label %sw.bb22.sw.epilog_crit_edge

sw.bb22.sw.epilog_crit_edge:                      ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb22.cleanup_crit_edge:                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb30:                                          ; preds = %if.end9.sw.bb30_crit_edge, %if.end9.sw.bb30_crit_edge64, %if.end9.sw.bb30_crit_edge65
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %conv14)
  %tobool34.not = icmp ult i16 %conv14, 8
  br i1 %tobool34.not, label %sw.bb30.sw.epilog_crit_edge, label %sw.bb30.cleanup_crit_edge

sw.bb30.cleanup_crit_edge:                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb30.sw.epilog_crit_edge:                      ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %conv41 = and i16 %conv14, 7
  %24 = ptrtoint ptr %e_perm to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv41, ptr %e_perm, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb37, %sw.bb30.sw.epilog_crit_edge, %sw.bb22.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb30.cleanup_crit_edge, %sw.bb22.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %if.then.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb22.cleanup_crit_edge ], [ -22, %sw.bb30.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdr_decode_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdr_decode_array2(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs_stream_decode_acl(ptr noundef %xdr, ptr noundef writeonly %aclcnt, ptr noundef writeonly %pacl) #0 align 64 {
entry:
  %nfsacl_desc = alloca %struct.nfsacl_decode_desc, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %nfsacl_desc) #6
  %0 = getelementptr inbounds %struct.xdr_array2_desc, ptr %nfsacl_desc, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xdr_array2_desc, ptr %nfsacl_desc, i32 0, i32 2
  %2 = getelementptr inbounds %struct.xdr_array2_desc, ptr %nfsacl_desc, i32 0, i32 3
  %3 = getelementptr inbounds %struct.nfsacl_decode_desc, ptr %nfsacl_desc, i32 0, i32 1
  %4 = getelementptr inbounds %struct.nfsacl_decode_desc, ptr %nfsacl_desc, i32 0, i32 2
  %5 = ptrtoint ptr %nfsacl_desc to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 12, ptr %nfsacl_desc, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %0, align 4
  %tobool.not = icmp eq ptr %pacl, null
  %cond = select i1 %tobool.not, ptr null, ptr @xdr_nfsace_decode
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %cond, ptr %2, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %3, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %4, align 4
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end, !prof !20

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %11)
  %cmp2 = icmp ugt i32 %11, 1024
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @xdr_stream_pos(ptr noundef %xdr) #6
  %mul = mul nuw nsw i32 %11, 12
  %add = add nuw nsw i32 %mul, 4
  %call6 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %add) #6
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %1, align 4
  %buf = getelementptr inbounds %struct.xdr_stream, ptr %xdr, i32 0, i32 1
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buf, align 4
  %call13 = call i32 @xdr_decode_array2(ptr noundef %14, i32 noundef %call5, ptr noundef nonnull %nfsacl_desc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  br i1 %tobool.not, label %if.end16.if.end29_crit_edge, label %if.then18

if.end16.if.end29_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then18:                                        ; preds = %if.end16
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %16)
  %cmp21.not = icmp eq i32 %11, %16
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %4, align 4
  %tobool.not.i42 = icmp eq ptr %18, null
  br i1 %cmp21.not, label %lor.lhs.false, label %if.then25

lor.lhs.false:                                    ; preds = %if.then18
  br i1 %tobool.not.i42, label %lor.lhs.false.posix_acl_from_nfsacl.exit_crit_edge, label %if.end.i43

lor.lhs.false.posix_acl_from_nfsacl.exit_crit_edge: ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %posix_acl_from_nfsacl.exit

if.end.i43:                                       ; preds = %lor.lhs.false
  %a_entries.i = getelementptr inbounds %struct.posix_acl, ptr %18, i32 0, i32 3
  %a_count.i = getelementptr inbounds %struct.posix_acl, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %a_count.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %a_count.i, align 4
  call void @sort(ptr noundef %a_entries.i, i32 noundef %20, i32 noundef 8, ptr noundef nonnull @cmp_acl_entry, ptr noundef null) #6
  %21 = ptrtoint ptr %a_count.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %a_count.i, align 4
  %add.ptr.i = getelementptr %struct.posix_acl_entry, ptr %a_entries.i, i32 %22
  %cmp2.i = icmp ult ptr %a_entries.i, %add.ptr.i
  br i1 %cmp2.i, label %if.end.i43.for.body.i_crit_edge, label %if.end.i43.posix_acl_from_nfsacl.exit_crit_edge

if.end.i43.posix_acl_from_nfsacl.exit_crit_edge:  ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #8
  br label %posix_acl_from_nfsacl.exit

if.end.i43.for.body.i_crit_edge:                  ; preds = %if.end.i43
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i43.for.body.i_crit_edge
  %mask.05.i = phi ptr [ %mask.1.i, %for.inc.i.for.body.i_crit_edge ], [ null, %if.end.i43.for.body.i_crit_edge ]
  %group_obj.04.i = phi ptr [ %group_obj.1.i, %for.inc.i.for.body.i_crit_edge ], [ null, %if.end.i43.for.body.i_crit_edge ]
  %pa.03.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %a_entries.i, %if.end.i43.for.body.i_crit_edge ]
  %23 = ptrtoint ptr %pa.03.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %pa.03.i, align 4
  %conv.i = sext i16 %24 to i32
  %25 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %conv.i, label %for.body.i.for.inc.i_crit_edge [
    i32 16, label %sw.bb4.i
    i32 4, label %sw.bb.i
  ]

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

sw.bb.i:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

sw.bb4.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.bb4.i, %sw.bb.i, %for.body.i.for.inc.i_crit_edge
  %group_obj.1.i = phi ptr [ %group_obj.04.i, %for.body.i.for.inc.i_crit_edge ], [ %pa.03.i, %sw.bb.i ], [ %group_obj.04.i, %sw.bb4.i ]
  %mask.1.i = phi ptr [ %mask.05.i, %for.body.i.for.inc.i_crit_edge ], [ %mask.05.i, %sw.bb.i ], [ %pa.03.i, %sw.bb4.i ]
  %incdec.ptr.i = getelementptr %struct.posix_acl_entry, ptr %pa.03.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %22)
  %cmp6.i = icmp ne i32 %22, 4
  %tobool8.not.i = icmp eq ptr %group_obj.1.i, null
  %or.cond.i = select i1 %cmp6.i, i1 true, i1 %tobool8.not.i
  %tobool10.not.i = icmp eq ptr %mask.1.i, null
  %or.cond1.i = select i1 %or.cond.i, i1 true, i1 %tobool10.not.i
  br i1 %or.cond1.i, label %for.end.i.posix_acl_from_nfsacl.exit_crit_edge, label %land.lhs.true11.i

for.end.i.posix_acl_from_nfsacl.exit_crit_edge:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %posix_acl_from_nfsacl.exit

land.lhs.true11.i:                                ; preds = %for.end.i
  %e_perm.i = getelementptr inbounds %struct.posix_acl_entry, ptr %mask.1.i, i32 0, i32 1
  %26 = ptrtoint ptr %e_perm.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %e_perm.i, align 2
  %e_perm13.i = getelementptr inbounds %struct.posix_acl_entry, ptr %group_obj.1.i, i32 0, i32 1
  %28 = ptrtoint ptr %e_perm13.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %e_perm13.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %29)
  %cmp15.i = icmp eq i16 %27, %29
  br i1 %cmp15.i, label %if.then17.i, label %land.lhs.true11.i.posix_acl_from_nfsacl.exit_crit_edge

land.lhs.true11.i.posix_acl_from_nfsacl.exit_crit_edge: ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %posix_acl_from_nfsacl.exit

if.then17.i:                                      ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr18.i = getelementptr %struct.posix_acl_entry, ptr %mask.1.i, i32 1
  %sub.ptr.lhs.cast.i = ptrtoint ptr %mask.1.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %a_entries.i to i32
  %sub.ptr.sub.neg.i = add i32 %sub.ptr.rhs.cast.i, 24
  %mul.i = sub i32 %sub.ptr.sub.neg.i, %sub.ptr.lhs.cast.i
  %30 = call ptr @memmove(ptr %mask.1.i, ptr %add.ptr18.i, i32 %mul.i)
  %31 = ptrtoint ptr %a_count.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 3, ptr %a_count.i, align 4
  br label %posix_acl_from_nfsacl.exit

posix_acl_from_nfsacl.exit:                       ; preds = %if.then17.i, %land.lhs.true11.i.posix_acl_from_nfsacl.exit_crit_edge, %for.end.i.posix_acl_from_nfsacl.exit_crit_edge, %if.end.i43.posix_acl_from_nfsacl.exit_crit_edge, %lor.lhs.false.posix_acl_from_nfsacl.exit_crit_edge
  %32 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %4, align 4
  %34 = ptrtoint ptr %pacl to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %pacl, align 4
  br label %if.end29

if.then25:                                        ; preds = %if.then18
  br i1 %tobool.not.i42, label %if.then25.cleanup_crit_edge, label %land.lhs.true.i

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.then25
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %18, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !22
  call void @llvm.prefetch.p0(ptr nonnull %18, i32 1, i32 3, i32 1) #6
  %35 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %18, ptr nonnull %18, i32 1, ptr nonnull elementtype(i32) %18) #6, !srcloc !23
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !24

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @refcount_warn_saturate(ptr noundef nonnull %18, i32 noundef 3) #6
  br label %cleanup

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !25
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %18, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #6
  br label %cleanup

if.end29:                                         ; preds = %posix_acl_from_nfsacl.exit, %if.end16.if.end29_crit_edge
  %tobool30.not = icmp eq ptr %aclcnt, null
  br i1 %tobool30.not, label %if.end29.cleanup_crit_edge, label %if.then31

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %aclcnt to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %11, ptr %aclcnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.end29.cleanup_crit_edge, %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then25.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end.cleanup_crit_edge ], [ false, %if.end4.cleanup_crit_edge ], [ false, %if.end9.cleanup_crit_edge ], [ true, %if.then31 ], [ true, %if.end29.cleanup_crit_edge ], [ false, %if.then25.cleanup_crit_edge ], [ false, %if.end5.i.i.i.i.cleanup_crit_edge ], [ false, %if.then10.i.i.i.i ], [ false, %do.end.i ], [ false, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %nfsacl_desc) #6
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_inline_decode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @posix_acl_alloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cmp_acl_entry(ptr nocapture noundef readonly %x, ptr nocapture noundef readonly %y) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %x to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %x, align 4
  %2 = ptrtoint ptr %y to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %y, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp.not = icmp eq i16 %1, %3
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = sext i16 %1 to i32
  %conv2 = sext i16 %3 to i32
  %sub = sub nsw i32 %conv, %conv2
  br label %cleanup

if.else:                                          ; preds = %entry
  %4 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.4)
  switch i16 %1, label %if.else.if.else48_crit_edge [
    i16 2, label %land.lhs.true
    i16 8, label %land.lhs.true31
  ]

if.else.if.else48_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else48

land.lhs.true:                                    ; preds = %if.else
  %5 = getelementptr inbounds %struct.posix_acl_entry, ptr %x, i32 0, i32 2
  %6 = getelementptr inbounds %struct.posix_acl_entry, ptr %y, i32 0, i32 2
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.unpack69 = load i32, ptr %5, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack70 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack69, i32 %.unpack70)
  %cmp.i = icmp ugt i32 %.unpack69, %.unpack70
  br i1 %cmp.i, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true20

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true20:                                  ; preds = %land.lhs.true
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.unpack67 = load i32, ptr %5, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack68 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack67, i32 %.unpack68)
  %cmp.i71 = icmp ult i32 %.unpack67, %.unpack68
  br i1 %cmp.i71, label %land.lhs.true20.cleanup_crit_edge, label %land.lhs.true20.if.else48_crit_edge

land.lhs.true20.if.else48_crit_edge:              ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else48

land.lhs.true20.cleanup_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true31:                                  ; preds = %if.else
  %11 = getelementptr inbounds %struct.posix_acl_entry, ptr %x, i32 0, i32 2
  %12 = getelementptr inbounds %struct.posix_acl_entry, ptr %y, i32 0, i32 2
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.unpack65 = load i32, ptr %11, align 4
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack66 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack65, i32 %.unpack66)
  %cmp.i72 = icmp ugt i32 %.unpack65, %.unpack66
  br i1 %cmp.i72, label %land.lhs.true31.cleanup_crit_edge, label %land.lhs.true42

land.lhs.true31.cleanup_crit_edge:                ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true42:                                  ; preds = %land.lhs.true31
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack = load i32, ptr %11, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack64 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %.unpack64)
  %cmp.i73 = icmp ult i32 %.unpack, %.unpack64
  br i1 %cmp.i73, label %land.lhs.true42.cleanup_crit_edge, label %land.lhs.true42.if.else48_crit_edge

land.lhs.true42.if.else48_crit_edge:              ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else48

land.lhs.true42.cleanup_crit_edge:                ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else48:                                        ; preds = %land.lhs.true42.if.else48_crit_edge, %land.lhs.true20.if.else48_crit_edge, %if.else.if.else48_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.else48, %land.lhs.true42.cleanup_crit_edge, %land.lhs.true31.cleanup_crit_edge, %land.lhs.true20.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %sub, %if.then ], [ 0, %if.else48 ], [ 1, %land.lhs.true.cleanup_crit_edge ], [ -1, %land.lhs.true20.cleanup_crit_edge ], [ 1, %land.lhs.true31.cleanup_crit_edge ], [ -1, %land.lhs.true42.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @__UNIQUE_ID_file233, !1, !"__UNIQUE_ID_file233", i1 false, i1 false}
!1 = !{!"../fs/nfs_common/nfsacl.c", i32 32, i32 1}
!2 = !{ptr @__UNIQUE_ID_license234, !1, !"__UNIQUE_ID_license234", i1 false, i1 false}
!3 = !{ptr @__ksymtab_nfsacl_encode, !4, !"__ksymtab_nfsacl_encode", i1 false, i1 false}
!4 = !{!"../fs/nfs_common/nfsacl.c", i32 137, i32 1}
!5 = !{ptr @__ksymtab_nfs_stream_encode_acl, !6, !"__ksymtab_nfs_stream_encode_acl", i1 false, i1 false}
!6 = !{!"../fs/nfs_common/nfsacl.c", i32 207, i32 1}
!7 = !{ptr @__ksymtab_nfsacl_decode, !8, !"__ksymtab_nfsacl_decode", i1 false, i1 false}
!8 = !{!"../fs/nfs_common/nfsacl.c", i32 368, i32 1}
!9 = !{ptr @__ksymtab_nfs_stream_decode_acl, !10, !"__ksymtab_nfs_stream_decode_acl", i1 false, i1 false}
!10 = !{!"../fs/nfs_common/nfsacl.c", i32 420, i32 1}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{!"auto-init"}
!22 = !{i64 2148439041}
!23 = !{i64 2148353481, i64 2148353513, i64 2148353542, i64 2148353576, i64 2148353607, i64 2148353630}
!24 = !{!"branch_weights", i32 2000, i32 1}
!25 = !{i64 2149315155}
