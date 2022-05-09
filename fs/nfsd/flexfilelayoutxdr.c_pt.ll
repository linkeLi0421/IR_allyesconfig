; ModuleID = '/llk/IR_all_yes/fs/nfsd/flexfilelayoutxdr.c_pt.bc'
source_filename = "../fs/nfsd/flexfilelayoutxdr.c"
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
%struct.ff_idmap = type { [11 x i8], i32 }
%struct.nfsd4_layoutget = type { i64, i32, i32, i32, %struct.stateid_t, %struct.nfsd4_layout_seg, ptr }
%struct.stateid_t = type { i32, %struct.stateid_opaque_t }
%struct.stateid_opaque_t = type { %struct.clientid_t, i32 }
%struct.clientid_t = type { i32, i32 }
%struct.nfsd4_layout_seg = type { i32, i64, i64 }
%struct.pnfs_ff_layout = type { i32, i32, %struct.kuid_t, %struct.kgid_t, %struct.nfsd4_deviceid, %struct.stateid_t, %struct.nfs_fh }
%struct.nfsd4_deviceid = type { i64, i32, i32 }
%struct.nfs_fh = type { i16, [128 x i8] }
%struct.nfsd4_getdeviceinfo = type { %struct.nfsd4_deviceid, i32, i32, i32, ptr }
%struct.pnfs_ff_netaddr = type { [5 x i8], [57 x i8], i32, i32 }
%struct.pnfs_ff_device_addr = type { %struct.pnfs_ff_netaddr, i32, i32, i32, i32, i8 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [31 x i8] c"../fs/nfsd/flexfilelayoutxdr.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 35, i32 29 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd4_ff_encode_layoutget(ptr noundef %xdr, ptr nocapture noundef readonly %lgp) local_unnamed_addr #0 align 64 {
entry:
  %uid = alloca %struct.ff_idmap, align 4
  %gid = alloca %struct.ff_idmap, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lg_content = getelementptr inbounds %struct.nfsd4_layoutget, ptr %lgp, i32 0, i32 6
  %0 = ptrtoint ptr %lg_content to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lg_content, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %uid) #4
  %2 = call ptr @memset(ptr %uid, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %gid) #4
  %3 = call ptr @memset(ptr %gid, i32 255, i32 12)
  %fh = getelementptr inbounds %struct.pnfs_ff_layout, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %fh to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fh, align 8
  %conv = zext i16 %5 to i32
  %uid1 = getelementptr inbounds %struct.pnfs_ff_layout, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %uid1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.unpack = load i32, ptr %uid1, align 8
  %7 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %7) #4
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %uid, ptr noundef nonnull @.str, i32 noundef %call)
  %len3 = getelementptr inbounds %struct.ff_idmap, ptr %uid, i32 0, i32 1
  %8 = ptrtoint ptr %len3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call2, ptr %len3, align 4
  %gid6 = getelementptr inbounds %struct.pnfs_ff_layout, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %gid6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.unpack77 = load i32, ptr %gid6, align 4
  %10 = insertvalue [1 x i32] undef, i32 %.unpack77, 0
  %call8 = tail call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %10) #4
  %call9 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %gid, ptr noundef nonnull @.str, i32 noundef %call8)
  %len10 = getelementptr inbounds %struct.ff_idmap, ptr %gid, i32 0, i32 1
  %11 = ptrtoint ptr %len10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call9, ptr %len10, align 4
  %add14 = add nuw nsw i32 %conv, 56
  %add15 = add i32 %add14, %call9
  %add17 = add i32 %add15, %call2
  %add20 = add i32 %add17, 28
  %call21 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add20) #4
  %tobool.not = icmp eq ptr %call21, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add19 = add i32 %add17, 24
  %incdec.ptr = getelementptr i32, ptr %call21, i32 1
  %12 = ptrtoint ptr %call21 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add19, ptr %call21, align 4
  %13 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 0, ptr %incdec.ptr, align 1
  %add.ptr.i = getelementptr i32, ptr %call21, i32 3
  %incdec.ptr23 = getelementptr i32, ptr %call21, i32 4
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %add.ptr.i, align 4
  %incdec.ptr24 = getelementptr i32, ptr %call21, i32 5
  %15 = ptrtoint ptr %incdec.ptr23 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %incdec.ptr23, align 4
  %deviceid = getelementptr inbounds %struct.pnfs_ff_layout, ptr %1, i32 0, i32 4
  %call25 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef %incdec.ptr24, ptr noundef %deviceid, i32 noundef 16) #4
  %incdec.ptr26 = getelementptr i32, ptr %call25, i32 1
  %16 = ptrtoint ptr %call25 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %call25, align 4
  %stateid = getelementptr inbounds %struct.pnfs_ff_layout, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %stateid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %stateid, align 8
  %incdec.ptr27 = getelementptr i32, ptr %call25, i32 2
  %19 = ptrtoint ptr %incdec.ptr26 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %incdec.ptr26, align 4
  %si_opaque = getelementptr inbounds %struct.pnfs_ff_layout, ptr %1, i32 0, i32 5, i32 1
  %call29 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef %incdec.ptr27, ptr noundef %si_opaque, i32 noundef 12) #4
  %incdec.ptr30 = getelementptr i32, ptr %call29, i32 1
  %20 = ptrtoint ptr %call29 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %call29, align 4
  %data = getelementptr inbounds %struct.pnfs_ff_layout, ptr %1, i32 0, i32 6, i32 1
  %21 = ptrtoint ptr %fh to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %fh, align 8
  %conv35 = zext i16 %22 to i32
  %call36 = tail call ptr @xdr_encode_opaque(ptr noundef %incdec.ptr30, ptr noundef %data, i32 noundef %conv35) #4
  %23 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len3, align 4
  %call40 = call ptr @xdr_encode_opaque(ptr noundef %call36, ptr noundef nonnull %uid, i32 noundef %24) #4
  %25 = ptrtoint ptr %len10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len10, align 4
  %call44 = call ptr @xdr_encode_opaque(ptr noundef %call40, ptr noundef nonnull %gid, i32 noundef %26) #4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %1, align 8
  %incdec.ptr45 = getelementptr i32, ptr %call44, i32 1
  %29 = ptrtoint ptr %call44 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %call44, align 4
  %30 = ptrtoint ptr %incdec.ptr45 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %incdec.ptr45, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 10005, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %gid) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %uid) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_reserve_space(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_encode_opaque_fixed(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_encode_opaque(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd4_ff_encode_getdeviceinfo(ptr noundef %xdr, ptr nocapture noundef readonly %gdp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %gd_device = getelementptr inbounds %struct.nfsd4_getdeviceinfo, ptr %gdp, i32 0, i32 4
  %0 = ptrtoint ptr %gd_device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gd_device, align 4
  %netid_len = getelementptr inbounds %struct.pnfs_ff_netaddr, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %netid_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %netid_len, align 4
  %add = add i32 %3, 16
  %addr_len2 = getelementptr inbounds %struct.pnfs_ff_netaddr, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %addr_len2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr_len2, align 4
  %add3 = add i32 %add, %5
  %add7 = add i32 %add3, 32
  %call = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add7) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add6 = add i32 %add3, 28
  %incdec.ptr = getelementptr i32, ptr %call, i32 1
  %6 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add6, ptr %call, align 4
  %incdec.ptr8 = getelementptr i32, ptr %call, i32 2
  %7 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %incdec.ptr, align 4
  %8 = ptrtoint ptr %netid_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %netid_len, align 4
  %call12 = tail call ptr @xdr_encode_opaque(ptr noundef %incdec.ptr8, ptr noundef %1, i32 noundef %9) #4
  %addr = getelementptr inbounds %struct.pnfs_ff_netaddr, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %addr_len2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr_len2, align 4
  %call17 = tail call ptr @xdr_encode_opaque(ptr noundef %call12, ptr noundef %addr, i32 noundef %11) #4
  %incdec.ptr18 = getelementptr i32, ptr %call17, i32 1
  %12 = ptrtoint ptr %call17 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %call17, align 4
  %version = getelementptr inbounds %struct.pnfs_ff_device_addr, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %version, align 4
  %incdec.ptr19 = getelementptr i32, ptr %call17, i32 2
  %15 = ptrtoint ptr %incdec.ptr18 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %incdec.ptr18, align 4
  %minor_version = getelementptr inbounds %struct.pnfs_ff_device_addr, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %minor_version to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %minor_version, align 4
  %incdec.ptr20 = getelementptr i32, ptr %call17, i32 3
  %18 = ptrtoint ptr %incdec.ptr19 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %incdec.ptr19, align 4
  %rsize = getelementptr inbounds %struct.pnfs_ff_device_addr, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rsize, align 4
  %incdec.ptr21 = getelementptr i32, ptr %call17, i32 4
  %21 = ptrtoint ptr %incdec.ptr20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %incdec.ptr20, align 4
  %wsize = getelementptr inbounds %struct.pnfs_ff_device_addr, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %wsize to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %wsize, align 4
  %incdec.ptr22 = getelementptr i32, ptr %call17, i32 5
  %24 = ptrtoint ptr %incdec.ptr21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %incdec.ptr21, align 4
  %tightly_coupled = getelementptr inbounds %struct.pnfs_ff_device_addr, ptr %1, i32 0, i32 5
  %25 = ptrtoint ptr %tightly_coupled to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %tightly_coupled, align 4, !range !11
  %27 = zext i8 %26 to i32
  %28 = ptrtoint ptr %incdec.ptr22 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %incdec.ptr22, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 10018, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

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
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/nfsd/flexfilelayoutxdr.c", i32 35, i32 29}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i8 0, i8 2}
