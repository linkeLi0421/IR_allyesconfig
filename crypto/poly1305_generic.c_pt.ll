; ModuleID = '/llk/IR_all_yes/crypto/poly1305_generic.c_pt.bc'
source_filename = "../crypto/poly1305_generic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.shash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [84 x i8], i32, i32, [120 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, %union.anon.44, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.44 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }
%struct.poly1305_desc_ctx = type { [16 x i8], i32, i16, i8, [4 x i32], %struct.poly1305_state, %union.anon.48 }
%struct.poly1305_state = type { %union.anon.47 }
%union.anon.47 = type { [3 x i64] }
%union.anon.48 = type { [9 x %struct.poly1305_key] }
%struct.poly1305_key = type { %union.anon.49 }
%union.anon.49 = type { [3 x i64] }

@poly1305_alg = internal global %struct.shash_alg { ptr @crypto_poly1305_init, ptr @crypto_poly1305_update, ptr @crypto_poly1305_final, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 280, [84 x i8] undef, i32 16, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"poly1305\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"poly1305-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } }, align 128
@__initcall__kmod_poly1305_generic__175_142_poly1305_mod_init4 = internal global ptr @poly1305_mod_init, section ".initcall4.init", align 4
@__exitcall_poly1305_mod_exit = internal global ptr @poly1305_mod_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file176 = internal constant [46 x i8] c"poly1305_generic.file=crypto/poly1305_generic\00", section ".modinfo", align 1
@__UNIQUE_ID_license177 = internal constant [29 x i8] c"poly1305_generic.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author178 = internal constant [61 x i8] c"poly1305_generic.author=Martin Willi <martin@strongswan.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description179 = internal constant [52 x i8] c"poly1305_generic.description=Poly1305 authenticator\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace180 = internal constant [32 x i8] c"poly1305_generic.alias=poly1305\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto181 = internal constant [39 x i8] c"poly1305_generic.alias=crypto-poly1305\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace182 = internal constant [40 x i8] c"poly1305_generic.alias=poly1305-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto183 = internal constant [47 x i8] c"poly1305_generic.alias=crypto-poly1305-generic\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_alias_crypto181, ptr @__UNIQUE_ID_alias_crypto183, ptr @__UNIQUE_ID_alias_userspace180, ptr @__UNIQUE_ID_alias_userspace182, ptr @__UNIQUE_ID_author178, ptr @__UNIQUE_ID_description179, ptr @__UNIQUE_ID_file176, ptr @__UNIQUE_ID_license177, ptr @__exitcall_poly1305_mod_exit, ptr @__initcall__kmod_poly1305_generic__175_142_poly1305_mod_init4, ptr @poly1305_mod_exit], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @poly1305_mod_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_shash(ptr noundef nonnull @poly1305_alg) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_shash(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @poly1305_mod_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_shash(ptr noundef nonnull @poly1305_alg) #5
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @crypto_poly1305_init(ptr nocapture noundef writeonly %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %h = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 6
  %0 = call ptr @memset(ptr %h, i32 0, i32 24)
  %buflen = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 3
  %1 = ptrtoint ptr %buflen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %buflen, align 8
  %rset = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 3, i32 1
  %2 = ptrtoint ptr %rset to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %rset, align 4
  %sset = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 3, i32 1, i32 2
  %3 = ptrtoint ptr %sset to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %sset, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_poly1305_update(ptr noundef %desc, ptr noundef %src, i32 noundef %srclen) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %buflen = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 3
  %0 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buflen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %if.then, !prof !28

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then:                                          ; preds = %entry
  %sub = sub i32 16, %1
  %2 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %srclen)
  %add.ptr = getelementptr i8, ptr %__ctx.i, i32 %1
  %3 = call ptr @memcpy(ptr %add.ptr, ptr %src, i32 %2)
  %add.ptr5 = getelementptr i8, ptr %src, i32 %2
  %sub6 = sub i32 %srclen, %2
  %4 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buflen, align 8
  %add = add i32 %5, %2
  store i32 %add, ptr %buflen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add)
  %cmp9 = icmp eq i32 %add, 16
  br i1 %cmp9, label %if.then10, label %if.then.if.end14_crit_edge

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @poly1305_blocks(ptr noundef %__ctx.i, ptr noundef %__ctx.i, i32 noundef 16)
  %6 = ptrtoint ptr %buflen to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %buflen, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.then.if.end14_crit_edge, %entry.if.end14_crit_edge
  %srclen.addr.0 = phi i32 [ %sub6, %if.then10 ], [ %sub6, %if.then.if.end14_crit_edge ], [ %srclen, %entry.if.end14_crit_edge ]
  %src.addr.0 = phi ptr [ %add.ptr5, %if.then10 ], [ %add.ptr5, %if.then.if.end14_crit_edge ], [ %src, %entry.if.end14_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %srclen.addr.0)
  %cmp15 = icmp ugt i32 %srclen.addr.0, 15
  br i1 %cmp15, label %if.then22, label %if.end14.if.end26_crit_edge, !prof !28

if.end14.if.end26_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then22:                                        ; preds = %if.end14
  %sset.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 3, i32 1, i32 2
  %7 = ptrtoint ptr %sset.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sset.i, align 2, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then22.poly1305_blocks.exit_crit_edge, !prof !30

if.then22.poly1305_blocks.exit_crit_edge:         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %poly1305_blocks.exit

if.then.i:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call fastcc i32 @crypto_poly1305_setdesckey(ptr noundef %__ctx.i, ptr noundef %src.addr.0, i32 noundef %srclen.addr.0) #5
  %sub.i = sub i32 %srclen.addr.0, %call.i
  %add.ptr.i = getelementptr i8, ptr %src.addr.0, i32 %sub.i
  br label %poly1305_blocks.exit

poly1305_blocks.exit:                             ; preds = %if.then.i, %if.then22.poly1305_blocks.exit_crit_edge
  %src.addr.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ %src.addr.0, %if.then22.poly1305_blocks.exit_crit_edge ]
  %srclen.addr.0.i = phi i32 [ %call.i, %if.then.i ], [ %srclen.addr.0, %if.then22.poly1305_blocks.exit_crit_edge ]
  %h.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 6
  %9 = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 9
  %div12.i = lshr i32 %srclen.addr.0.i, 4
  tail call void @poly1305_core_blocks(ptr noundef %h.i, ptr noundef %9, ptr noundef %src.addr.0.i, i32 noundef %div12.i, i32 noundef 1) #5
  %rem = and i32 %srclen.addr.0, 15
  %sub23 = and i32 %srclen.addr.0, -16
  %add.ptr24 = getelementptr i8, ptr %src.addr.0, i32 %sub23
  br label %if.end26

if.end26:                                         ; preds = %poly1305_blocks.exit, %if.end14.if.end26_crit_edge
  %srclen.addr.1 = phi i32 [ %rem, %poly1305_blocks.exit ], [ %srclen.addr.0, %if.end14.if.end26_crit_edge ]
  %src.addr.1 = phi ptr [ %add.ptr24, %poly1305_blocks.exit ], [ %src.addr.0, %if.end14.if.end26_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %srclen.addr.1)
  %tobool27.not = icmp eq i32 %srclen.addr.1, 0
  br i1 %tobool27.not, label %if.end26.if.end38_crit_edge, label %if.then34, !prof !28

if.end26.if.end38_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then34:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %buflen to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %srclen.addr.1, ptr %buflen, align 8
  %11 = call ptr @memcpy(ptr %__ctx.i, ptr %src.addr.1, i32 %srclen.addr.1)
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %if.end26.if.end38_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_poly1305_final(ptr noundef %desc, ptr noundef %dst) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sset = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 3, i32 1, i32 2
  %0 = ptrtoint ptr %sset to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sset, align 2, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !30

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  tail call void @poly1305_final_generic(ptr noundef %__ctx.i, ptr noundef %dst) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -126, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @poly1305_blocks(ptr noundef %dctx, ptr noundef %src, i32 noundef %srclen) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sset = getelementptr inbounds %struct.poly1305_desc_ctx, ptr %dctx, i32 0, i32 3
  %0 = ptrtoint ptr %sset to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sset, align 2, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge, !prof !30

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call fastcc i32 @crypto_poly1305_setdesckey(ptr noundef %dctx, ptr noundef %src, i32 noundef %srclen)
  %sub = sub i32 %srclen, %call
  %add.ptr = getelementptr i8, ptr %src, i32 %sub
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %src.addr.0 = phi ptr [ %add.ptr, %if.then ], [ %src, %entry.if.end_crit_edge ]
  %srclen.addr.0 = phi i32 [ %call, %if.then ], [ %srclen, %entry.if.end_crit_edge ]
  %h = getelementptr inbounds %struct.poly1305_desc_ctx, ptr %dctx, i32 0, i32 5
  %2 = getelementptr inbounds %struct.poly1305_desc_ctx, ptr %dctx, i32 0, i32 6
  %div12 = lshr i32 %srclen.addr.0, 4
  tail call void @poly1305_core_blocks(ptr noundef %h, ptr noundef %2, ptr noundef %src.addr.0, i32 noundef %div12, i32 noundef 1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @crypto_poly1305_setdesckey(ptr noundef %dctx, ptr noundef %src, i32 noundef %srclen) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sset = getelementptr inbounds %struct.poly1305_desc_ctx, ptr %dctx, i32 0, i32 3
  %0 = ptrtoint ptr %sset to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sset, align 2, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end23_crit_edge

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then:                                          ; preds = %entry
  %rset = getelementptr inbounds %struct.poly1305_desc_ctx, ptr %dctx, i32 0, i32 2
  %2 = ptrtoint ptr %rset to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rset, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool1.not = icmp eq i16 %3, 0
  br i1 %tobool1.not, label %if.then2, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %4 = getelementptr inbounds %struct.poly1305_desc_ctx, ptr %dctx, i32 0, i32 6
  tail call void @poly1305_core_setkey(ptr noundef %4, ptr noundef %src) #5
  %add.ptr = getelementptr i8, ptr %src, i32 16
  %sub = add i32 %srclen, -16
  %5 = ptrtoint ptr %rset to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 2, ptr %rset, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %src.addr.0 = phi ptr [ %src, %if.then.if.end_crit_edge ], [ %add.ptr, %if.then2 ]
  %srclen.addr.0 = phi i32 [ %srclen, %if.then.if.end_crit_edge ], [ %sub, %if.then2 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %srclen.addr.0)
  %cmp4 = icmp ugt i32 %srclen.addr.0, 15
  br i1 %cmp4, label %if.then5, label %if.end.if.end23_crit_edge

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %src.addr.0 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %src.addr.0, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  %s = getelementptr inbounds %struct.poly1305_desc_ctx, ptr %dctx, i32 0, i32 4
  %9 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %s, align 8
  %add.ptr7 = getelementptr i8, ptr %src.addr.0, i32 4
  %10 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %add.ptr7, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #5
  %arrayidx10 = getelementptr %struct.poly1305_desc_ctx, ptr %dctx, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx10, align 4
  %add.ptr11 = getelementptr i8, ptr %src.addr.0, i32 8
  %14 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %add.ptr11, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #5
  %arrayidx14 = getelementptr %struct.poly1305_desc_ctx, ptr %dctx, i32 0, i32 4, i32 2
  %17 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx14, align 8
  %add.ptr15 = getelementptr i8, ptr %src.addr.0, i32 12
  %18 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %add.ptr15, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #5
  %arrayidx18 = getelementptr %struct.poly1305_desc_ctx, ptr %dctx, i32 0, i32 4, i32 3
  %21 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx18, align 4
  %sub20 = add i32 %srclen.addr.0, -16
  %22 = ptrtoint ptr %sset to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %sset, align 2
  br label %if.end23

if.end23:                                         ; preds = %if.then5, %if.end.if.end23_crit_edge, %entry.if.end23_crit_edge
  %srclen.addr.1 = phi i32 [ %srclen, %entry.if.end23_crit_edge ], [ %sub20, %if.then5 ], [ %srclen.addr.0, %if.end.if.end23_crit_edge ]
  ret i32 %srclen.addr.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @poly1305_core_blocks(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @poly1305_core_setkey(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @poly1305_final_generic(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_shash(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @__initcall__kmod_poly1305_generic__175_142_poly1305_mod_init4, !1, !"__initcall__kmod_poly1305_generic__175_142_poly1305_mod_init4", i1 false, i1 false}
!1 = !{!"../crypto/poly1305_generic.c", i32 142, i32 1}
!2 = !{ptr @__exitcall_poly1305_mod_exit, !3, !"__exitcall_poly1305_mod_exit", i1 false, i1 false}
!3 = !{!"../crypto/poly1305_generic.c", i32 143, i32 1}
!4 = !{ptr @__UNIQUE_ID_file176, !5, !"__UNIQUE_ID_file176", i1 false, i1 false}
!5 = !{!"../crypto/poly1305_generic.c", i32 145, i32 1}
!6 = !{ptr @__UNIQUE_ID_license177, !5, !"__UNIQUE_ID_license177", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author178, !8, !"__UNIQUE_ID_author178", i1 false, i1 false}
!8 = !{!"../crypto/poly1305_generic.c", i32 146, i32 1}
!9 = !{ptr @__UNIQUE_ID_description179, !10, !"__UNIQUE_ID_description179", i1 false, i1 false}
!10 = !{!"../crypto/poly1305_generic.c", i32 147, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias_userspace180, !12, !"__UNIQUE_ID_alias_userspace180", i1 false, i1 false}
!12 = !{!"../crypto/poly1305_generic.c", i32 148, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias_crypto181, !12, !"__UNIQUE_ID_alias_crypto181", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_alias_userspace182, !15, !"__UNIQUE_ID_alias_userspace182", i1 false, i1 false}
!15 = !{!"../crypto/poly1305_generic.c", i32 149, i32 1}
!16 = !{ptr @__UNIQUE_ID_alias_crypto183, !15, !"__UNIQUE_ID_alias_crypto183", i1 false, i1 false}
!17 = !{ptr @poly1305_alg, !18, !"poly1305_alg", i1 false, i1 false}
!18 = !{!"../crypto/poly1305_generic.c", i32 117, i32 25}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{!"branch_weights", i32 2000, i32 1}
!29 = !{i8 0, i8 2}
!30 = !{!"branch_weights", i32 1, i32 2000}
