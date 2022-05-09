; ModuleID = '/llk/IR_all_yes/net/bluetooth/ecdh_helper.c_pt.bc'
source_filename = "../net/bluetooth/ecdh_helper.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ecdh_completion = type { %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.kpp_request = type { %struct.crypto_async_request, ptr, ptr, i32, i32, [88 x i8], [0 x ptr] }
%struct.ecdh = type { ptr, i16 }

@compute_ecdh_secret._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013alg: ecdh: compute shared secret failed. err %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"compute_ecdh_secret\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"net/bluetooth/ecdh_helper.c\00", [36 x i8] zeroinitializer }, align 32
@compute_ecdh_secret._entry_ptr = internal global ptr @compute_ecdh_secret._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.14 = private constant [31 x i8] c"../net/bluetooth/ecdh_helper.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 96, i32 3 }
@___asan_gen_.16 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 87, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @compute_ecdh_secret._entry, ptr @compute_ecdh_secret._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @init_completion.__key, ptr @.str.3], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @compute_ecdh_secret._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @compute_ecdh_secret(ptr noundef %tfm, ptr nocapture noundef readonly %public_key, ptr noundef %secret) local_unnamed_addr #0 align 64 {
entry:
  %result = alloca %struct.ecdh_completion, align 4
  %src = alloca %struct.scatterlist, align 4
  %dst = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %result) #7
  %0 = call ptr @memset(ptr %result, i32 255, i32 60)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %src) #7
  %1 = call ptr @memset(ptr %src, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %dst) #7
  %2 = call ptr @memset(ptr %dst, i32 255, i32 20)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 64) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end8.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %4 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %reqsize.i.i = getelementptr i8, ptr %5, i32 -104
  %6 = ptrtoint ptr %reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reqsize.i.i, align 8
  %add.i = add i32 %7, 128
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #11
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.free_tmp_crit_edge, label %if.end4, !prof !18

if.end8.i.i.free_tmp_crit_edge:                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_tmp

if.end4:                                          ; preds = %if.end8.i.i
  %tfm1.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %tfm, ptr %tfm1.i.i, align 16
  %9 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %result, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %result, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @init_completion.__key) #7
  %arrayidx.i = getelementptr i64, ptr %public_key, i32 3
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx.i, align 8
  %12 = call i64 @llvm.bswap.i64(i64 %11) #7
  %13 = ptrtoint ptr %call7.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %call7.i, align 8
  %arrayidx.1.i = getelementptr i64, ptr %public_key, i32 2
  %14 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx.1.i, align 8
  %16 = call i64 @llvm.bswap.i64(i64 %15) #7
  %arrayidx2.1.i = getelementptr i64, ptr %call7.i, i32 1
  %17 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %arrayidx2.1.i, align 8
  %arrayidx.2.i = getelementptr i64, ptr %public_key, i32 1
  %18 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx.2.i, align 8
  %20 = call i64 @llvm.bswap.i64(i64 %19) #7
  %arrayidx2.2.i = getelementptr i64, ptr %call7.i, i32 2
  %21 = ptrtoint ptr %arrayidx2.2.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %arrayidx2.2.i, align 8
  %22 = ptrtoint ptr %public_key to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %public_key, align 8
  %24 = call i64 @llvm.bswap.i64(i64 %23) #7
  %arrayidx2.3.i = getelementptr i64, ptr %call7.i, i32 3
  %25 = ptrtoint ptr %arrayidx2.3.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %arrayidx2.3.i, align 8
  %arrayidx = getelementptr i8, ptr %public_key, i32 32
  %arrayidx5 = getelementptr i8, ptr %call7.i, i32 32
  %arrayidx.i38 = getelementptr i8, ptr %public_key, i32 56
  %26 = ptrtoint ptr %arrayidx.i38 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx.i38, align 8
  %28 = call i64 @llvm.bswap.i64(i64 %27) #7
  %29 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %arrayidx5, align 8
  %arrayidx.1.i39 = getelementptr i8, ptr %public_key, i32 48
  %30 = ptrtoint ptr %arrayidx.1.i39 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx.1.i39, align 8
  %32 = call i64 @llvm.bswap.i64(i64 %31) #7
  %arrayidx2.1.i40 = getelementptr i8, ptr %call7.i, i32 40
  %33 = ptrtoint ptr %arrayidx2.1.i40 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %arrayidx2.1.i40, align 8
  %arrayidx.2.i41 = getelementptr i8, ptr %public_key, i32 40
  %34 = ptrtoint ptr %arrayidx.2.i41 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %arrayidx.2.i41, align 8
  %36 = call i64 @llvm.bswap.i64(i64 %35) #7
  %arrayidx2.2.i42 = getelementptr i8, ptr %call7.i, i32 48
  %37 = ptrtoint ptr %arrayidx2.2.i42 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %arrayidx2.2.i42, align 8
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx, align 8
  %40 = call i64 @llvm.bswap.i64(i64 %39) #7
  %arrayidx2.3.i43 = getelementptr i8, ptr %call7.i, i32 56
  %41 = ptrtoint ptr %arrayidx2.3.i43 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %arrayidx2.3.i43, align 8
  call void @sg_init_one(ptr noundef nonnull %src, ptr noundef nonnull %call7.i, i32 noundef 64) #7
  call void @sg_init_one(ptr noundef nonnull %dst, ptr noundef %secret, i32 noundef 32) #7
  %src.i = getelementptr inbounds %struct.kpp_request, ptr %call9.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %src.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %src, ptr %src.i, align 8
  %src_len.i = getelementptr inbounds %struct.kpp_request, ptr %call9.i.i, i32 0, i32 3
  %43 = ptrtoint ptr %src_len.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 64, ptr %src_len.i, align 32
  %dst.i = getelementptr inbounds %struct.kpp_request, ptr %call9.i.i, i32 0, i32 2
  %44 = ptrtoint ptr %dst.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %dst, ptr %dst.i, align 4
  %dst_len.i = getelementptr inbounds %struct.kpp_request, ptr %call9.i.i, i32 0, i32 4
  %45 = ptrtoint ptr %dst_len.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 32, ptr %dst_len.i, align 4
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @ecdh_complete, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 2
  %47 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %result, ptr %data2.i, align 4
  %flags.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 4
  %48 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1024, ptr %flags.i, align 4
  %49 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tfm1.i.i, align 16
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %__crt_alg.i.i, align 4
  call void @crypto_stats_get(ptr noundef %52) #7
  %compute_shared_secret.i = getelementptr i8, ptr %52, i32 -120
  %53 = ptrtoint ptr %compute_shared_secret.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %compute_shared_secret.i, align 8
  %call2.i = call i32 %54(ptr noundef nonnull %call9.i.i) #7
  call void @crypto_stats_kpp_compute_shared_secret(ptr noundef %52, i32 noundef %call2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call2.i)
  %cmp = icmp eq i32 %call2.i, -115
  br i1 %cmp, label %if.then7, label %if.end4.if.end10_crit_edge

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  call void @wait_for_completion(ptr noundef nonnull %result) #7
  %err9 = getelementptr inbounds %struct.ecdh_completion, ptr %result, i32 0, i32 1
  %55 = ptrtoint ptr %err9 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %err9, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end4.if.end10_crit_edge
  %err.0 = phi i32 [ %56, %if.then7 ], [ %call2.i, %if.end4.if.end10_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp11 = icmp slt i32 %err.0, 0
  br i1 %cmp11, label %do.end, label %if.end15

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %err.0) #12
  br label %free_all

if.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i44 = getelementptr i64, ptr %secret, i32 3
  %57 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %arrayidx.i44, align 8
  %59 = call i64 @llvm.bswap.i64(i64 %58) #7
  %60 = ptrtoint ptr %call7.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %call7.i, align 8
  %arrayidx.1.i45 = getelementptr i64, ptr %secret, i32 2
  %61 = ptrtoint ptr %arrayidx.1.i45 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %arrayidx.1.i45, align 8
  %63 = call i64 @llvm.bswap.i64(i64 %62) #7
  %64 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %63, ptr %arrayidx2.1.i, align 8
  %arrayidx.2.i47 = getelementptr i64, ptr %secret, i32 1
  %65 = ptrtoint ptr %arrayidx.2.i47 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %arrayidx.2.i47, align 8
  %67 = call i64 @llvm.bswap.i64(i64 %66) #7
  %68 = ptrtoint ptr %arrayidx2.2.i to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %67, ptr %arrayidx2.2.i, align 8
  %69 = ptrtoint ptr %secret to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %secret, align 8
  %71 = call i64 @llvm.bswap.i64(i64 %70) #7
  %72 = ptrtoint ptr %arrayidx2.3.i to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %71, ptr %arrayidx2.3.i, align 8
  %73 = call ptr @memcpy(ptr %secret, ptr %call7.i, i32 32)
  br label %free_all

free_all:                                         ; preds = %if.end15, %do.end
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i) #7
  br label %free_tmp

free_tmp:                                         ; preds = %free_all, %if.end8.i.i.free_tmp_crit_edge
  %err.1 = phi i32 [ %err.0, %free_all ], [ -12, %if.end8.i.i.free_tmp_crit_edge ]
  call void @kfree_sensitive(ptr noundef nonnull %call7.i) #7
  br label %cleanup

cleanup:                                          ; preds = %free_tmp, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %free_tmp ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %dst) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %src) #7
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %result) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ecdh_complete(ptr nocapture noundef readonly %req, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %err)
  %cmp = icmp eq i32 %err, -115
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %err1 = getelementptr inbounds %struct.ecdh_completion, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %err1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %err, ptr %err1, align 4
  tail call void @complete(ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @set_ecdh_privkey(ptr noundef %tfm, ptr noundef readonly %private_key) local_unnamed_addr #0 align 64 {
entry:
  %p = alloca %struct.ecdh, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p) #7
  %0 = ptrtoint ptr %p to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %p, align 8
  %tobool.not = icmp eq ptr %private_key, null
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 32) #10
  %tobool1.not = icmp eq ptr %call7.i, null
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr i64, ptr %private_key, i32 3
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx.i, align 8
  %4 = tail call i64 @llvm.bswap.i64(i64 %3) #7
  %5 = ptrtoint ptr %call7.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %call7.i, align 8
  %arrayidx.1.i = getelementptr i64, ptr %private_key, i32 2
  %6 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx.1.i, align 8
  %8 = tail call i64 @llvm.bswap.i64(i64 %7) #7
  %arrayidx2.1.i = getelementptr i64, ptr %call7.i, i32 1
  %9 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %arrayidx2.1.i, align 8
  %arrayidx.2.i = getelementptr i64, ptr %private_key, i32 1
  %10 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx.2.i, align 8
  %12 = tail call i64 @llvm.bswap.i64(i64 %11) #7
  %arrayidx2.2.i = getelementptr i64, ptr %call7.i, i32 2
  %13 = ptrtoint ptr %arrayidx2.2.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %arrayidx2.2.i, align 8
  %14 = ptrtoint ptr %private_key to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %private_key, align 8
  %16 = tail call i64 @llvm.bswap.i64(i64 %15) #7
  %arrayidx2.3.i = getelementptr i64, ptr %call7.i, i32 3
  %17 = ptrtoint ptr %arrayidx2.3.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %arrayidx2.3.i, align 8
  %18 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i, ptr %p, align 8
  %key_size = getelementptr inbounds %struct.ecdh, ptr %p, i32 0, i32 1
  %19 = ptrtoint ptr %key_size to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 32, ptr %key_size, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry.if.end3_crit_edge
  %tmp.0 = phi ptr [ %call7.i, %if.end ], [ null, %entry.if.end3_crit_edge ]
  %call4 = call i32 @crypto_ecdh_key_len(ptr noundef nonnull %p) #7
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %call4, i32 noundef 3264) #11
  %tobool6.not = icmp eq ptr %call9.i, null
  br i1 %tobool6.not, label %if.end3.free_tmp_crit_edge, label %if.end8

if.end3.free_tmp_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_tmp

if.end8:                                          ; preds = %if.end3
  %call9 = call i32 @crypto_ecdh_encode_key(ptr noundef nonnull %call9.i, i32 noundef %call4, ptr noundef nonnull %p) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.free_all_crit_edge

if.end8.free_all_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_all

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %20 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 -128
  call void @crypto_stats_get(ptr noundef %21) #7
  %22 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call1.i = call i32 %23(ptr noundef %tfm, ptr noundef nonnull %call9.i, i32 noundef %call4) #7
  call void @crypto_stats_kpp_set_secret(ptr noundef %21, i32 noundef %call1.i) #7
  br label %free_all

free_all:                                         ; preds = %if.end12, %if.end8.free_all_crit_edge
  %err.0 = phi i32 [ %call9, %if.end8.free_all_crit_edge ], [ %call1.i, %if.end12 ]
  call void @kfree_sensitive(ptr noundef nonnull %call9.i) #7
  br label %free_tmp

free_tmp:                                         ; preds = %free_all, %if.end3.free_tmp_crit_edge
  %err.1 = phi i32 [ %err.0, %free_all ], [ -12, %if.end3.free_tmp_crit_edge ]
  call void @kfree_sensitive(ptr noundef %tmp.0) #7
  br label %cleanup

cleanup:                                          ; preds = %free_tmp, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %free_tmp ], [ -12, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ecdh_key_len(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ecdh_encode_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @generate_ecdh_public_key(ptr noundef %tfm, ptr nocapture noundef writeonly %public_key) local_unnamed_addr #0 align 64 {
entry:
  %result = alloca %struct.ecdh_completion, align 4
  %dst = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %result) #7
  %0 = call ptr @memset(ptr %result, i32 255, i32 60)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %dst) #7
  %1 = call ptr @memset(ptr %dst, i32 255, i32 20)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 64) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end8.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %3 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %reqsize.i.i = getelementptr i8, ptr %4, i32 -104
  %5 = ptrtoint ptr %reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reqsize.i.i, align 8
  %add.i = add i32 %6, 128
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #11
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.free_tmp_crit_edge, label %if.end4, !prof !18

if.end8.i.i.free_tmp_crit_edge:                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_tmp

if.end4:                                          ; preds = %if.end8.i.i
  %tfm1.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %tfm, ptr %tfm1.i.i, align 16
  %8 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %result, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %result, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @init_completion.__key) #7
  call void @sg_init_one(ptr noundef nonnull %dst, ptr noundef nonnull %call7.i, i32 noundef 64) #7
  %src.i = getelementptr inbounds %struct.kpp_request, ptr %call9.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %src.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %src.i, align 8
  %src_len.i = getelementptr inbounds %struct.kpp_request, ptr %call9.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %src_len.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %src_len.i, align 32
  %dst.i = getelementptr inbounds %struct.kpp_request, ptr %call9.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %dst.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dst, ptr %dst.i, align 4
  %dst_len.i = getelementptr inbounds %struct.kpp_request, ptr %call9.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %dst_len.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 64, ptr %dst_len.i, align 4
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @ecdh_complete, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %result, ptr %data2.i, align 4
  %flags.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1024, ptr %flags.i, align 4
  %16 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tfm1.i.i, align 16
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %__crt_alg.i.i, align 4
  call void @crypto_stats_get(ptr noundef %19) #7
  %generate_public_key.i = getelementptr i8, ptr %19, i32 -124
  %20 = ptrtoint ptr %generate_public_key.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %generate_public_key.i, align 4
  %call2.i = call i32 %21(ptr noundef nonnull %call9.i.i) #7
  call void @crypto_stats_kpp_generate_public_key(ptr noundef %19, i32 noundef %call2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call2.i)
  %cmp = icmp eq i32 %call2.i, -115
  br i1 %cmp, label %if.then6, label %if.end4.if.end9_crit_edge

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  call void @wait_for_completion(ptr noundef nonnull %result) #7
  %err8 = getelementptr inbounds %struct.ecdh_completion, ptr %result, i32 0, i32 1
  %22 = ptrtoint ptr %err8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %err8, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end4.if.end9_crit_edge
  %err.0 = phi i32 [ %23, %if.then6 ], [ %call2.i, %if.end4.if.end9_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp10 = icmp slt i32 %err.0, 0
  br i1 %cmp10, label %if.end9.free_all_crit_edge, label %if.end12

if.end9.free_all_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_all

if.end12:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr i64, ptr %call7.i, i32 3
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx.i, align 8
  %26 = call i64 @llvm.bswap.i64(i64 %25) #7
  %27 = ptrtoint ptr %public_key to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %public_key, align 8
  %arrayidx.1.i = getelementptr i64, ptr %call7.i, i32 2
  %28 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx.1.i, align 8
  %30 = call i64 @llvm.bswap.i64(i64 %29) #7
  %arrayidx2.1.i = getelementptr i64, ptr %public_key, i32 1
  %31 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %arrayidx2.1.i, align 8
  %arrayidx.2.i = getelementptr i64, ptr %call7.i, i32 1
  %32 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx.2.i, align 8
  %34 = call i64 @llvm.bswap.i64(i64 %33) #7
  %arrayidx2.2.i = getelementptr i64, ptr %public_key, i32 2
  %35 = ptrtoint ptr %arrayidx2.2.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %arrayidx2.2.i, align 8
  %36 = ptrtoint ptr %call7.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %call7.i, align 8
  %38 = call i64 @llvm.bswap.i64(i64 %37) #7
  %arrayidx2.3.i = getelementptr i64, ptr %public_key, i32 3
  %39 = ptrtoint ptr %arrayidx2.3.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %arrayidx2.3.i, align 8
  %arrayidx = getelementptr i8, ptr %call7.i, i32 32
  %arrayidx13 = getelementptr i8, ptr %public_key, i32 32
  %arrayidx.i30 = getelementptr i8, ptr %call7.i, i32 56
  %40 = ptrtoint ptr %arrayidx.i30 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx.i30, align 8
  %42 = call i64 @llvm.bswap.i64(i64 %41) #7
  %43 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %arrayidx13, align 8
  %arrayidx.1.i31 = getelementptr i8, ptr %call7.i, i32 48
  %44 = ptrtoint ptr %arrayidx.1.i31 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %arrayidx.1.i31, align 8
  %46 = call i64 @llvm.bswap.i64(i64 %45) #7
  %arrayidx2.1.i32 = getelementptr i8, ptr %public_key, i32 40
  %47 = ptrtoint ptr %arrayidx2.1.i32 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %arrayidx2.1.i32, align 8
  %arrayidx.2.i33 = getelementptr i8, ptr %call7.i, i32 40
  %48 = ptrtoint ptr %arrayidx.2.i33 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %arrayidx.2.i33, align 8
  %50 = call i64 @llvm.bswap.i64(i64 %49) #7
  %arrayidx2.2.i34 = getelementptr i8, ptr %public_key, i32 48
  %51 = ptrtoint ptr %arrayidx2.2.i34 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %arrayidx2.2.i34, align 8
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %arrayidx, align 8
  %54 = call i64 @llvm.bswap.i64(i64 %53) #7
  %arrayidx2.3.i35 = getelementptr i8, ptr %public_key, i32 56
  %55 = ptrtoint ptr %arrayidx2.3.i35 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %arrayidx2.3.i35, align 8
  br label %free_all

free_all:                                         ; preds = %if.end12, %if.end9.free_all_crit_edge
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i) #7
  br label %free_tmp

free_tmp:                                         ; preds = %free_all, %if.end8.i.i.free_tmp_crit_edge
  %err.1 = phi i32 [ %err.0, %free_all ], [ -12, %if.end8.i.i.free_tmp_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup

cleanup:                                          ; preds = %free_tmp, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %free_tmp ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %dst) #7
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %result) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @generate_ecdh_keys(ptr noundef %tfm, ptr nocapture noundef writeonly %public_key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @set_ecdh_privkey(ptr noundef %tfm, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @generate_ecdh_public_key(ptr noundef %tfm, ptr noundef %public_key)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_kpp_compute_shared_secret(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_kpp_set_secret(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_kpp_generate_public_key(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/bluetooth/ecdh_helper.c", i32 96, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @compute_ecdh_secret._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @compute_ecdh_secret._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @init_completion.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../include/linux/completion.h", i32 87, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{!"branch_weights", i32 1, i32 2000}
