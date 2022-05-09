; ModuleID = '/llk/IR_all_yes/crypto/rmd160.c_pt.bc'
source_filename = "../crypto/rmd160.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.shash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [84 x i8], i32, i32, [120 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, %union.anon.68, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.68 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }

@alg = internal global %struct.shash_alg { ptr @rmd160_init, ptr @rmd160_update, ptr @rmd160_final, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 96, [84 x i8] undef, i32 20, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"rmd160\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"rmd160-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, align 128
@__initcall__kmod_rmd160__226_361_rmd160_mod_init4 = internal global ptr @rmd160_mod_init, section ".initcall4.init", align 4
@__exitcall_rmd160_mod_fini = internal global ptr @rmd160_mod_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file227 = internal constant [26 x i8] c"rmd160.file=crypto/rmd160\00", section ".modinfo", align 1
@__UNIQUE_ID_license228 = internal constant [19 x i8] c"rmd160.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author229 = internal constant [55 x i8] c"rmd160.author=Adrian-Ken Rueegsegger <ken@codelabs.ch>\00", section ".modinfo", align 1
@__UNIQUE_ID_description230 = internal constant [45 x i8] c"rmd160.description=RIPEMD-160 Message Digest\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace231 = internal constant [20 x i8] c"rmd160.alias=rmd160\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto232 = internal constant [27 x i8] c"rmd160.alias=crypto-rmd160\00", section ".modinfo", align 1
@rmd160_final.padding = internal constant { <{ i8, [63 x i8] }>, [32 x i8] } { <{ i8, [63 x i8] }> <{ i8 -128, [63 x i8] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [8 x i8] c"padding\00", align 1
@___asan_gen_.2 = private constant [19 x i8] c"../crypto/rmd160.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 315, i32 18 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_alias_crypto232, ptr @__UNIQUE_ID_alias_userspace231, ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file227, ptr @__UNIQUE_ID_license228, ptr @__exitcall_rmd160_mod_fini, ptr @__initcall__kmod_rmd160__226_361_rmd160_mod_init4, ptr @rmd160_mod_fini, ptr @rmd160_final.padding], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmd160_final.padding to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rmd160_mod_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @crypto_unregister_shash(ptr noundef nonnull @alg) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_shash(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rmd160_mod_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_shash(ptr noundef nonnull @alg) #7
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @rmd160_init(ptr nocapture noundef writeonly %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %0 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %__ctx.i, align 8
  %state = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 2
  %1 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1732584193, ptr %state, align 8
  %arrayidx2 = getelementptr %struct.shash_desc, ptr %desc, i32 2, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -271733879, ptr %arrayidx2, align 4
  %arrayidx4 = getelementptr %struct.shash_desc, ptr %desc, i32 3
  %3 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1732584194, ptr %arrayidx4, align 8
  %arrayidx6 = getelementptr %struct.shash_desc, ptr %desc, i32 3, i32 1
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 271733878, ptr %arrayidx6, align 4
  %arrayidx8 = getelementptr %struct.shash_desc, ptr %desc, i32 4
  %5 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1009589776, ptr %arrayidx8, align 8
  %buffer = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 4, i32 1
  %6 = call ptr @memset(ptr %buffer, i32 0, i32 64)
  ret i32 0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmd160_update(ptr noundef %desc, ptr nocapture noundef readonly %data, i32 noundef %len) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %0 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %__ctx.i, align 8
  %2 = trunc i64 %1 to i32
  %3 = and i32 %2, 63
  %conv = sub nuw nsw i32 64, %3
  %conv1 = zext i32 %len to i64
  %add = add i64 %1, %conv1
  store i64 %add, ptr %__ctx.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %len)
  %cmp = icmp ugt i32 %conv, %len
  %buffer = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 4, i32 1
  %add.ptr = getelementptr i8, ptr %buffer, i32 %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = call ptr @memcpy(ptr %add.ptr, ptr %data, i32 %len)
  br label %out

if.end:                                           ; preds = %entry
  %5 = call ptr @memcpy(ptr %add.ptr, ptr %data, i32 %conv)
  %state = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 2
  tail call fastcc void @rmd160_transform(ptr noundef %state, ptr noundef %buffer)
  %add.ptr12 = getelementptr i8, ptr %data, i32 %conv
  %sub13 = sub i32 %len, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %sub13)
  %cmp1451 = icmp ugt i32 %sub13, 63
  br i1 %cmp1451, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %len.addr.053 = phi i32 [ %sub23, %while.body.while.body_crit_edge ], [ %sub13, %if.end.while.body_crit_edge ]
  %data.addr.052 = phi ptr [ %add.ptr22, %while.body.while.body_crit_edge ], [ %add.ptr12, %if.end.while.body_crit_edge ]
  %6 = call ptr @memcpy(ptr %buffer, ptr %data.addr.052, i32 64)
  tail call fastcc void @rmd160_transform(ptr noundef %state, ptr noundef %buffer)
  %add.ptr22 = getelementptr i8, ptr %data.addr.052, i32 64
  %sub23 = add i32 %len.addr.053, -64
  %cmp14 = icmp ugt i32 %sub23, 63
  br i1 %cmp14, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  %data.addr.0.lcssa = phi ptr [ %add.ptr12, %if.end.while.end_crit_edge ], [ %add.ptr22, %while.body.while.end_crit_edge ]
  %len.addr.0.lcssa = phi i32 [ %sub13, %if.end.while.end_crit_edge ], [ %sub23, %while.body.while.end_crit_edge ]
  %7 = call ptr @memcpy(ptr %buffer, ptr %data.addr.0.lcssa, i32 %len.addr.0.lcssa)
  br label %out

out:                                              ; preds = %while.end, %if.then
  ret i32 0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmd160_final(ptr noundef %desc, ptr nocapture noundef writeonly %out) #3 align 64 {
entry:
  %bits = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bits) #7
  %0 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %__ctx.i, align 8
  %shl = shl i64 %1, 3
  %2 = tail call i64 @llvm.bswap.i64(i64 %shl)
  %3 = ptrtoint ptr %bits to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %bits, align 8
  %4 = trunc i64 %1 to i32
  %conv = and i32 %4, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %conv)
  %cmp = icmp ult i32 %conv, 56
  %. = select i1 %cmp, i32 56, i32 120
  %cond = sub nsw i32 %., %conv
  %conv.i = sub nuw nsw i32 64, %conv
  %conv1.i = zext i32 %cond to i64
  %add.i = add i64 %1, %conv1.i
  %5 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %add.i, ptr %__ctx.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %conv.i)
  %cmp.i = icmp ult i32 %cond, %conv.i
  %buffer.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 4, i32 1
  %add.ptr.i = getelementptr i8, ptr %buffer.i, i32 %conv
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = call ptr @memcpy(ptr %add.ptr.i, ptr @rmd160_final.padding, i32 %cond)
  br label %rmd160_update.exit

if.end.i:                                         ; preds = %entry
  %7 = call ptr @memcpy(ptr %add.ptr.i, ptr @rmd160_final.padding, i32 %conv.i)
  %state.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 2
  tail call fastcc void @rmd160_transform(ptr noundef %state.i, ptr noundef %buffer.i) #7
  %add.ptr12.i = getelementptr i8, ptr @rmd160_final.padding, i32 %conv.i
  %sub13.i = sub nsw i32 %cond, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %sub13.i)
  %cmp1451.i = icmp ugt i32 %sub13.i, 63
  br i1 %cmp1451.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.while.end.i_crit_edge

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %len.addr.053.i = phi i32 [ %sub23.i, %while.body.i.while.body.i_crit_edge ], [ %sub13.i, %if.end.i.while.body.i_crit_edge ]
  %data.addr.052.i = phi ptr [ %add.ptr22.i, %while.body.i.while.body.i_crit_edge ], [ %add.ptr12.i, %if.end.i.while.body.i_crit_edge ]
  %8 = call ptr @memcpy(ptr %buffer.i, ptr %data.addr.052.i, i32 64)
  tail call fastcc void @rmd160_transform(ptr noundef %state.i, ptr noundef %buffer.i) #7
  %add.ptr22.i = getelementptr i8, ptr %data.addr.052.i, i32 64
  %sub23.i = add i32 %len.addr.053.i, -64
  %cmp14.i = icmp ugt i32 %sub23.i, 63
  br i1 %cmp14.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.end.i.while.end.i_crit_edge
  %data.addr.0.lcssa.i = phi ptr [ %add.ptr12.i, %if.end.i.while.end.i_crit_edge ], [ %add.ptr22.i, %while.body.i.while.end.i_crit_edge ]
  %len.addr.0.lcssa.i = phi i32 [ %sub13.i, %if.end.i.while.end.i_crit_edge ], [ %sub23.i, %while.body.i.while.end.i_crit_edge ]
  %9 = call ptr @memcpy(ptr %buffer.i, ptr %data.addr.0.lcssa.i, i32 %len.addr.0.lcssa.i)
  br label %rmd160_update.exit

rmd160_update.exit:                               ; preds = %while.end.i, %if.then.i
  %10 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %__ctx.i, align 8
  %12 = trunc i64 %11 to i32
  %13 = and i32 %12, 63
  %add.i22 = add i64 %11, 8
  store i64 %add.i22, ptr %__ctx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %13)
  %cmp.i23 = icmp ult i32 %13, 56
  %add.ptr.i25 = getelementptr i8, ptr %buffer.i, i32 %13
  br i1 %cmp.i23, label %if.then.i26, label %if.end.i31

if.then.i26:                                      ; preds = %rmd160_update.exit
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %bits to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %bits, align 8
  %16 = ptrtoint ptr %add.ptr.i25 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 %15, ptr %add.ptr.i25, align 1
  br label %rmd160_update.exit41

if.end.i31:                                       ; preds = %rmd160_update.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i21 = sub nuw nsw i32 64, %13
  %17 = call ptr @memcpy(ptr %add.ptr.i25, ptr %bits, i32 %conv.i21)
  %state.i27 = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 2
  tail call fastcc void @rmd160_transform(ptr noundef %state.i27, ptr noundef %buffer.i) #7
  %add.ptr12.i28 = getelementptr i8, ptr %bits, i32 %conv.i21
  %sub13.i29 = add nsw i32 %13, -56
  %18 = call ptr @memcpy(ptr %buffer.i, ptr %add.ptr12.i28, i32 %sub13.i29)
  br label %rmd160_update.exit41

rmd160_update.exit41:                             ; preds = %if.end.i31, %if.then.i26
  %arrayidx = getelementptr %struct.shash_desc, ptr %desc, i32 2
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #7
  %22 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %out, align 4
  %arrayidx.1 = getelementptr %struct.shash_desc, ptr %desc, i32 2, i32 1
  %23 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.1, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #7
  %arrayidx9.1 = getelementptr i32, ptr %out, i32 1
  %26 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx9.1, align 4
  %arrayidx.2 = getelementptr %struct.shash_desc, ptr %desc, i32 3
  %27 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.2, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #7
  %arrayidx9.2 = getelementptr i32, ptr %out, i32 2
  %30 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %arrayidx9.2, align 4
  %arrayidx.3 = getelementptr %struct.shash_desc, ptr %desc, i32 3, i32 1
  %31 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.3, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #7
  %arrayidx9.3 = getelementptr i32, ptr %out, i32 3
  %34 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx9.3, align 4
  %arrayidx.4 = getelementptr %struct.shash_desc, ptr %desc, i32 4
  %35 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.4, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #7
  %arrayidx9.4 = getelementptr i32, ptr %out, i32 4
  %38 = ptrtoint ptr %arrayidx9.4 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx9.4, align 4
  %39 = call ptr @memset(ptr %__ctx.i, i32 0, i32 96)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bits) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @rmd160_transform(ptr nocapture noundef %state, ptr noundef readonly %in) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %arrayidx1 = getelementptr i32, ptr %state, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr i32, ptr %state, i32 2
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr i32, ptr %state, i32 3
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr i32, ptr %state, i32 4
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4, align 4
  %xor = xor i32 %5, %3
  %xor10 = xor i32 %xor, %7
  %10 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %in, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #7
  %add = add i32 %xor10, %1
  %add13 = add i32 %add, %12
  %or.i = tail call i32 @llvm.fshl.i32(i32 %add13, i32 %add13, i32 11) #7
  %add15 = add i32 %or.i, %9
  %or.i3115 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 10) #7
  %xor17 = xor i32 %or.i3115, %3
  %xor18 = xor i32 %xor17, %add15
  %arrayidx19 = getelementptr i32, ptr %in, i32 1
  %13 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx19, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  %add21 = add i32 %15, %9
  %add23 = add i32 %add21, %xor18
  %or.i3116 = tail call i32 @llvm.fshl.i32(i32 %add23, i32 %add23, i32 14) #7
  %add25 = add i32 %or.i3116, %7
  %or.i3117 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 10) #7
  %xor27 = xor i32 %add15, %or.i3117
  %xor28 = xor i32 %xor27, %add25
  %arrayidx29 = getelementptr i32, ptr %in, i32 2
  %16 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx29, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #7
  %add31 = add i32 %18, %7
  %add33 = add i32 %add31, %xor28
  %or.i3118 = tail call i32 @llvm.fshl.i32(i32 %add33, i32 %add33, i32 15) #7
  %add35 = add i32 %or.i3118, %or.i3115
  %or.i3119 = tail call i32 @llvm.fshl.i32(i32 %add15, i32 %add15, i32 10) #7
  %xor37 = xor i32 %add25, %or.i3119
  %xor38 = xor i32 %xor37, %add35
  %arrayidx39 = getelementptr i32, ptr %in, i32 3
  %19 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx39, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #7
  %add41 = add i32 %21, %or.i3115
  %add43 = add i32 %add41, %xor38
  %or.i3120 = tail call i32 @llvm.fshl.i32(i32 %add43, i32 %add43, i32 12) #7
  %add45 = add i32 %or.i3120, %or.i3117
  %or.i3121 = tail call i32 @llvm.fshl.i32(i32 %add25, i32 %add25, i32 10) #7
  %xor47 = xor i32 %add35, %or.i3121
  %xor48 = xor i32 %xor47, %add45
  %arrayidx49 = getelementptr i32, ptr %in, i32 4
  %22 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx49, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #7
  %add51 = add i32 %24, %or.i3117
  %add53 = add i32 %add51, %xor48
  %or.i3122 = tail call i32 @llvm.fshl.i32(i32 %add53, i32 %add53, i32 5) #7
  %add55 = add i32 %or.i3122, %or.i3119
  %or.i3123 = tail call i32 @llvm.fshl.i32(i32 %add35, i32 %add35, i32 10) #7
  %xor57 = xor i32 %add45, %or.i3123
  %xor58 = xor i32 %xor57, %add55
  %arrayidx59 = getelementptr i32, ptr %in, i32 5
  %25 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx59, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #7
  %add61 = add i32 %or.i3119, %27
  %add63 = add i32 %add61, %xor58
  %or.i3124 = tail call i32 @llvm.fshl.i32(i32 %add63, i32 %add63, i32 8) #7
  %add65 = add i32 %or.i3124, %or.i3121
  %or.i3125 = tail call i32 @llvm.fshl.i32(i32 %add45, i32 %add45, i32 10) #7
  %xor67 = xor i32 %add55, %or.i3125
  %xor68 = xor i32 %xor67, %add65
  %arrayidx69 = getelementptr i32, ptr %in, i32 6
  %28 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx69, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #7
  %add71 = add i32 %or.i3121, %30
  %add73 = add i32 %add71, %xor68
  %or.i3126 = tail call i32 @llvm.fshl.i32(i32 %add73, i32 %add73, i32 7) #7
  %add75 = add i32 %or.i3126, %or.i3123
  %or.i3127 = tail call i32 @llvm.fshl.i32(i32 %add55, i32 %add55, i32 10) #7
  %xor77 = xor i32 %add65, %or.i3127
  %xor78 = xor i32 %xor77, %add75
  %arrayidx79 = getelementptr i32, ptr %in, i32 7
  %31 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx79, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #7
  %add81 = add i32 %or.i3123, %33
  %add83 = add i32 %add81, %xor78
  %or.i3128 = tail call i32 @llvm.fshl.i32(i32 %add83, i32 %add83, i32 9) #7
  %add85 = add i32 %or.i3128, %or.i3125
  %or.i3129 = tail call i32 @llvm.fshl.i32(i32 %add65, i32 %add65, i32 10) #7
  %xor87 = xor i32 %add75, %or.i3129
  %xor88 = xor i32 %xor87, %add85
  %arrayidx89 = getelementptr i32, ptr %in, i32 8
  %34 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx89, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #7
  %add91 = add i32 %or.i3125, %36
  %add93 = add i32 %add91, %xor88
  %or.i3130 = tail call i32 @llvm.fshl.i32(i32 %add93, i32 %add93, i32 11) #7
  %add95 = add i32 %or.i3130, %or.i3127
  %or.i3131 = tail call i32 @llvm.fshl.i32(i32 %add75, i32 %add75, i32 10) #7
  %xor97 = xor i32 %add85, %or.i3131
  %xor98 = xor i32 %xor97, %add95
  %arrayidx99 = getelementptr i32, ptr %in, i32 9
  %37 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx99, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #7
  %add101 = add i32 %or.i3127, %39
  %add103 = add i32 %add101, %xor98
  %or.i3132 = tail call i32 @llvm.fshl.i32(i32 %add103, i32 %add103, i32 13) #7
  %add105 = add i32 %or.i3132, %or.i3129
  %or.i3133 = tail call i32 @llvm.fshl.i32(i32 %add85, i32 %add85, i32 10) #7
  %xor107 = xor i32 %add95, %or.i3133
  %xor108 = xor i32 %xor107, %add105
  %arrayidx109 = getelementptr i32, ptr %in, i32 10
  %40 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx109, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #7
  %add111 = add i32 %or.i3129, %42
  %add113 = add i32 %add111, %xor108
  %or.i3134 = tail call i32 @llvm.fshl.i32(i32 %add113, i32 %add113, i32 14) #7
  %add115 = add i32 %or.i3134, %or.i3131
  %or.i3135 = tail call i32 @llvm.fshl.i32(i32 %add95, i32 %add95, i32 10) #7
  %xor117 = xor i32 %add105, %or.i3135
  %xor118 = xor i32 %xor117, %add115
  %arrayidx119 = getelementptr i32, ptr %in, i32 11
  %43 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx119, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #7
  %add121 = add i32 %or.i3131, %45
  %add123 = add i32 %add121, %xor118
  %or.i3136 = tail call i32 @llvm.fshl.i32(i32 %add123, i32 %add123, i32 15) #7
  %add125 = add i32 %or.i3136, %or.i3133
  %or.i3137 = tail call i32 @llvm.fshl.i32(i32 %add105, i32 %add105, i32 10) #7
  %xor127 = xor i32 %add115, %or.i3137
  %xor128 = xor i32 %xor127, %add125
  %arrayidx129 = getelementptr i32, ptr %in, i32 12
  %46 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx129, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #7
  %add131 = add i32 %or.i3133, %48
  %add133 = add i32 %add131, %xor128
  %or.i3138 = tail call i32 @llvm.fshl.i32(i32 %add133, i32 %add133, i32 6) #7
  %add135 = add i32 %or.i3138, %or.i3135
  %or.i3139 = tail call i32 @llvm.fshl.i32(i32 %add115, i32 %add115, i32 10) #7
  %xor137 = xor i32 %add125, %or.i3139
  %xor138 = xor i32 %xor137, %add135
  %arrayidx139 = getelementptr i32, ptr %in, i32 13
  %49 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx139, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #7
  %add141 = add i32 %or.i3135, %51
  %add143 = add i32 %add141, %xor138
  %or.i3140 = tail call i32 @llvm.fshl.i32(i32 %add143, i32 %add143, i32 7) #7
  %add145 = add i32 %or.i3140, %or.i3137
  %or.i3141 = tail call i32 @llvm.fshl.i32(i32 %add125, i32 %add125, i32 10) #7
  %xor147 = xor i32 %add135, %or.i3141
  %xor148 = xor i32 %xor147, %add145
  %arrayidx149 = getelementptr i32, ptr %in, i32 14
  %52 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx149, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #7
  %add151 = add i32 %or.i3137, %54
  %add153 = add i32 %add151, %xor148
  %or.i3142 = tail call i32 @llvm.fshl.i32(i32 %add153, i32 %add153, i32 9) #7
  %add155 = add i32 %or.i3142, %or.i3139
  %or.i3143 = tail call i32 @llvm.fshl.i32(i32 %add135, i32 %add135, i32 10) #7
  %xor157 = xor i32 %add145, %or.i3143
  %xor158 = xor i32 %xor157, %add155
  %arrayidx159 = getelementptr i32, ptr %in, i32 15
  %55 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx159, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #7
  %add161 = add i32 %or.i3139, %57
  %add163 = add i32 %add161, %xor158
  %or.i3144 = tail call i32 @llvm.fshl.i32(i32 %add163, i32 %add163, i32 8) #7
  %add165 = add i32 %or.i3144, %or.i3141
  %or.i3145 = tail call i32 @llvm.fshl.i32(i32 %add145, i32 %add145, i32 10) #7
  %xor167 = xor i32 %add155, %or.i3145
  %and = and i32 %add165, %xor167
  %xor168 = xor i32 %and, %or.i3145
  %add171 = add i32 %33, 1518500249
  %add172 = add i32 %add171, %or.i3141
  %add173 = add i32 %add172, %xor168
  %or.i3146 = tail call i32 @llvm.fshl.i32(i32 %add173, i32 %add173, i32 7) #7
  %add175 = add i32 %or.i3146, %or.i3143
  %or.i3147 = tail call i32 @llvm.fshl.i32(i32 %add155, i32 %add155, i32 10) #7
  %xor177 = xor i32 %add165, %or.i3147
  %and178 = and i32 %add175, %xor177
  %xor179 = xor i32 %and178, %or.i3147
  %add182 = add i32 %24, 1518500249
  %add183 = add i32 %add182, %or.i3143
  %add184 = add i32 %add183, %xor179
  %or.i3148 = tail call i32 @llvm.fshl.i32(i32 %add184, i32 %add184, i32 6) #7
  %add186 = add i32 %or.i3148, %or.i3145
  %or.i3149 = tail call i32 @llvm.fshl.i32(i32 %add165, i32 %add165, i32 10) #7
  %xor188 = xor i32 %add175, %or.i3149
  %and189 = and i32 %add186, %xor188
  %xor190 = xor i32 %and189, %or.i3149
  %add193 = add i32 %51, 1518500249
  %add194 = add i32 %add193, %or.i3145
  %add195 = add i32 %add194, %xor190
  %or.i3150 = tail call i32 @llvm.fshl.i32(i32 %add195, i32 %add195, i32 8) #7
  %add197 = add i32 %or.i3150, %or.i3147
  %or.i3151 = tail call i32 @llvm.fshl.i32(i32 %add175, i32 %add175, i32 10) #7
  %xor199 = xor i32 %add186, %or.i3151
  %and200 = and i32 %add197, %xor199
  %xor201 = xor i32 %and200, %or.i3151
  %add204 = add i32 %15, 1518500249
  %add205 = add i32 %add204, %or.i3147
  %add206 = add i32 %add205, %xor201
  %or.i3152 = tail call i32 @llvm.fshl.i32(i32 %add206, i32 %add206, i32 13) #7
  %add208 = add i32 %or.i3152, %or.i3149
  %or.i3153 = tail call i32 @llvm.fshl.i32(i32 %add186, i32 %add186, i32 10) #7
  %xor210 = xor i32 %add197, %or.i3153
  %and211 = and i32 %add208, %xor210
  %xor212 = xor i32 %and211, %or.i3153
  %add215 = add i32 %42, 1518500249
  %add216 = add i32 %add215, %or.i3149
  %add217 = add i32 %add216, %xor212
  %or.i3154 = tail call i32 @llvm.fshl.i32(i32 %add217, i32 %add217, i32 11) #7
  %add219 = add i32 %or.i3154, %or.i3151
  %or.i3155 = tail call i32 @llvm.fshl.i32(i32 %add197, i32 %add197, i32 10) #7
  %xor221 = xor i32 %add208, %or.i3155
  %and222 = and i32 %add219, %xor221
  %xor223 = xor i32 %and222, %or.i3155
  %add226 = add i32 %30, 1518500249
  %add227 = add i32 %add226, %or.i3151
  %add228 = add i32 %add227, %xor223
  %or.i3156 = tail call i32 @llvm.fshl.i32(i32 %add228, i32 %add228, i32 9) #7
  %add230 = add i32 %or.i3156, %or.i3153
  %or.i3157 = tail call i32 @llvm.fshl.i32(i32 %add208, i32 %add208, i32 10) #7
  %xor232 = xor i32 %add219, %or.i3157
  %and233 = and i32 %add230, %xor232
  %xor234 = xor i32 %and233, %or.i3157
  %add237 = add i32 %57, 1518500249
  %add238 = add i32 %add237, %or.i3153
  %add239 = add i32 %add238, %xor234
  %or.i3158 = tail call i32 @llvm.fshl.i32(i32 %add239, i32 %add239, i32 7) #7
  %add241 = add i32 %or.i3158, %or.i3155
  %or.i3159 = tail call i32 @llvm.fshl.i32(i32 %add219, i32 %add219, i32 10) #7
  %xor243 = xor i32 %add230, %or.i3159
  %and244 = and i32 %add241, %xor243
  %xor245 = xor i32 %and244, %or.i3159
  %add248 = add i32 %21, 1518500249
  %add249 = add i32 %add248, %or.i3155
  %add250 = add i32 %add249, %xor245
  %or.i3160 = tail call i32 @llvm.fshl.i32(i32 %add250, i32 %add250, i32 15) #7
  %add252 = add i32 %or.i3160, %or.i3157
  %or.i3161 = tail call i32 @llvm.fshl.i32(i32 %add230, i32 %add230, i32 10) #7
  %xor254 = xor i32 %add241, %or.i3161
  %and255 = and i32 %add252, %xor254
  %xor256 = xor i32 %and255, %or.i3161
  %add259 = add i32 %48, 1518500249
  %add260 = add i32 %add259, %or.i3157
  %add261 = add i32 %add260, %xor256
  %or.i3162 = tail call i32 @llvm.fshl.i32(i32 %add261, i32 %add261, i32 7) #7
  %add263 = add i32 %or.i3162, %or.i3159
  %or.i3163 = tail call i32 @llvm.fshl.i32(i32 %add241, i32 %add241, i32 10) #7
  %xor265 = xor i32 %add252, %or.i3163
  %and266 = and i32 %add263, %xor265
  %xor267 = xor i32 %and266, %or.i3163
  %add270 = add i32 %12, 1518500249
  %add271 = add i32 %add270, %or.i3159
  %add272 = add i32 %add271, %xor267
  %or.i3164 = tail call i32 @llvm.fshl.i32(i32 %add272, i32 %add272, i32 12) #7
  %add274 = add i32 %or.i3164, %or.i3161
  %or.i3165 = tail call i32 @llvm.fshl.i32(i32 %add252, i32 %add252, i32 10) #7
  %xor276 = xor i32 %add263, %or.i3165
  %and277 = and i32 %add274, %xor276
  %xor278 = xor i32 %and277, %or.i3165
  %add281 = add i32 %39, 1518500249
  %add282 = add i32 %add281, %or.i3161
  %add283 = add i32 %add282, %xor278
  %or.i3166 = tail call i32 @llvm.fshl.i32(i32 %add283, i32 %add283, i32 15) #7
  %add285 = add i32 %or.i3166, %or.i3163
  %or.i3167 = tail call i32 @llvm.fshl.i32(i32 %add263, i32 %add263, i32 10) #7
  %xor287 = xor i32 %add274, %or.i3167
  %and288 = and i32 %add285, %xor287
  %xor289 = xor i32 %and288, %or.i3167
  %add292 = add i32 %27, 1518500249
  %add293 = add i32 %add292, %or.i3163
  %add294 = add i32 %add293, %xor289
  %or.i3168 = tail call i32 @llvm.fshl.i32(i32 %add294, i32 %add294, i32 9) #7
  %add296 = add i32 %or.i3168, %or.i3165
  %or.i3169 = tail call i32 @llvm.fshl.i32(i32 %add274, i32 %add274, i32 10) #7
  %xor298 = xor i32 %add285, %or.i3169
  %and299 = and i32 %add296, %xor298
  %xor300 = xor i32 %and299, %or.i3169
  %add303 = add i32 %18, 1518500249
  %add304 = add i32 %add303, %or.i3165
  %add305 = add i32 %add304, %xor300
  %or.i3170 = tail call i32 @llvm.fshl.i32(i32 %add305, i32 %add305, i32 11) #7
  %add307 = add i32 %or.i3170, %or.i3167
  %or.i3171 = tail call i32 @llvm.fshl.i32(i32 %add285, i32 %add285, i32 10) #7
  %xor309 = xor i32 %add296, %or.i3171
  %and310 = and i32 %add307, %xor309
  %xor311 = xor i32 %and310, %or.i3171
  %add314 = add i32 %54, 1518500249
  %add315 = add i32 %add314, %or.i3167
  %add316 = add i32 %add315, %xor311
  %or.i3172 = tail call i32 @llvm.fshl.i32(i32 %add316, i32 %add316, i32 7) #7
  %add318 = add i32 %or.i3172, %or.i3169
  %or.i3173 = tail call i32 @llvm.fshl.i32(i32 %add296, i32 %add296, i32 10) #7
  %xor320 = xor i32 %add307, %or.i3173
  %and321 = and i32 %add318, %xor320
  %xor322 = xor i32 %and321, %or.i3173
  %add325 = add i32 %45, 1518500249
  %add326 = add i32 %add325, %or.i3169
  %add327 = add i32 %add326, %xor322
  %or.i3174 = tail call i32 @llvm.fshl.i32(i32 %add327, i32 %add327, i32 13) #7
  %add329 = add i32 %or.i3174, %or.i3171
  %or.i3175 = tail call i32 @llvm.fshl.i32(i32 %add307, i32 %add307, i32 10) #7
  %xor331 = xor i32 %add318, %or.i3175
  %and332 = and i32 %add329, %xor331
  %xor333 = xor i32 %and332, %or.i3175
  %add336 = add i32 %36, 1518500249
  %add337 = add i32 %add336, %or.i3171
  %add338 = add i32 %add337, %xor333
  %or.i3176 = tail call i32 @llvm.fshl.i32(i32 %add338, i32 %add338, i32 12) #7
  %add340 = add i32 %or.i3176, %or.i3173
  %or.i3177 = tail call i32 @llvm.fshl.i32(i32 %add318, i32 %add318, i32 10) #7
  %neg = xor i32 %add329, -1
  %or = or i32 %add340, %neg
  %xor342 = xor i32 %or, %or.i3177
  %add345 = add i32 %21, 1859775393
  %add346 = add i32 %add345, %or.i3173
  %add347 = add i32 %add346, %xor342
  %or.i3178 = tail call i32 @llvm.fshl.i32(i32 %add347, i32 %add347, i32 11) #7
  %add349 = add i32 %or.i3178, %or.i3175
  %or.i3179 = tail call i32 @llvm.fshl.i32(i32 %add329, i32 %add329, i32 10) #7
  %neg351 = xor i32 %add340, -1
  %or352 = or i32 %add349, %neg351
  %xor353 = xor i32 %or352, %or.i3179
  %add356 = add i32 %42, 1859775393
  %add357 = add i32 %add356, %or.i3175
  %add358 = add i32 %add357, %xor353
  %or.i3180 = tail call i32 @llvm.fshl.i32(i32 %add358, i32 %add358, i32 13) #7
  %add360 = add i32 %or.i3180, %or.i3177
  %or.i3181 = tail call i32 @llvm.fshl.i32(i32 %add340, i32 %add340, i32 10) #7
  %neg362 = xor i32 %add349, -1
  %or363 = or i32 %add360, %neg362
  %xor364 = xor i32 %or363, %or.i3181
  %add367 = add i32 %54, 1859775393
  %add368 = add i32 %add367, %or.i3177
  %add369 = add i32 %add368, %xor364
  %or.i3182 = tail call i32 @llvm.fshl.i32(i32 %add369, i32 %add369, i32 6) #7
  %add371 = add i32 %or.i3182, %or.i3179
  %or.i3183 = tail call i32 @llvm.fshl.i32(i32 %add349, i32 %add349, i32 10) #7
  %neg373 = xor i32 %add360, -1
  %or374 = or i32 %add371, %neg373
  %xor375 = xor i32 %or374, %or.i3183
  %add378 = add i32 %24, 1859775393
  %add379 = add i32 %add378, %or.i3179
  %add380 = add i32 %add379, %xor375
  %or.i3184 = tail call i32 @llvm.fshl.i32(i32 %add380, i32 %add380, i32 7) #7
  %add382 = add i32 %or.i3184, %or.i3181
  %or.i3185 = tail call i32 @llvm.fshl.i32(i32 %add360, i32 %add360, i32 10) #7
  %neg384 = xor i32 %add371, -1
  %or385 = or i32 %add382, %neg384
  %xor386 = xor i32 %or385, %or.i3185
  %add389 = add i32 %39, 1859775393
  %add390 = add i32 %add389, %or.i3181
  %add391 = add i32 %add390, %xor386
  %or.i3186 = tail call i32 @llvm.fshl.i32(i32 %add391, i32 %add391, i32 14) #7
  %add393 = add i32 %or.i3186, %or.i3183
  %or.i3187 = tail call i32 @llvm.fshl.i32(i32 %add371, i32 %add371, i32 10) #7
  %neg395 = xor i32 %add382, -1
  %or396 = or i32 %add393, %neg395
  %xor397 = xor i32 %or396, %or.i3187
  %add400 = add i32 %57, 1859775393
  %add401 = add i32 %add400, %or.i3183
  %add402 = add i32 %add401, %xor397
  %or.i3188 = tail call i32 @llvm.fshl.i32(i32 %add402, i32 %add402, i32 9) #7
  %add404 = add i32 %or.i3188, %or.i3185
  %or.i3189 = tail call i32 @llvm.fshl.i32(i32 %add382, i32 %add382, i32 10) #7
  %neg406 = xor i32 %add393, -1
  %or407 = or i32 %add404, %neg406
  %xor408 = xor i32 %or407, %or.i3189
  %add411 = add i32 %36, 1859775393
  %add412 = add i32 %add411, %or.i3185
  %add413 = add i32 %add412, %xor408
  %or.i3190 = tail call i32 @llvm.fshl.i32(i32 %add413, i32 %add413, i32 13) #7
  %add415 = add i32 %or.i3190, %or.i3187
  %or.i3191 = tail call i32 @llvm.fshl.i32(i32 %add393, i32 %add393, i32 10) #7
  %neg417 = xor i32 %add404, -1
  %or418 = or i32 %add415, %neg417
  %xor419 = xor i32 %or418, %or.i3191
  %add422 = add i32 %15, 1859775393
  %add423 = add i32 %add422, %or.i3187
  %add424 = add i32 %add423, %xor419
  %or.i3192 = tail call i32 @llvm.fshl.i32(i32 %add424, i32 %add424, i32 15) #7
  %add426 = add i32 %or.i3192, %or.i3189
  %or.i3193 = tail call i32 @llvm.fshl.i32(i32 %add404, i32 %add404, i32 10) #7
  %neg428 = xor i32 %add415, -1
  %or429 = or i32 %add426, %neg428
  %xor430 = xor i32 %or429, %or.i3193
  %add433 = add i32 %18, 1859775393
  %add434 = add i32 %add433, %or.i3189
  %add435 = add i32 %add434, %xor430
  %or.i3194 = tail call i32 @llvm.fshl.i32(i32 %add435, i32 %add435, i32 14) #7
  %add437 = add i32 %or.i3194, %or.i3191
  %or.i3195 = tail call i32 @llvm.fshl.i32(i32 %add415, i32 %add415, i32 10) #7
  %neg439 = xor i32 %add426, -1
  %or440 = or i32 %add437, %neg439
  %xor441 = xor i32 %or440, %or.i3195
  %add444 = add i32 %33, 1859775393
  %add445 = add i32 %add444, %or.i3191
  %add446 = add i32 %add445, %xor441
  %or.i3196 = tail call i32 @llvm.fshl.i32(i32 %add446, i32 %add446, i32 8) #7
  %add448 = add i32 %or.i3196, %or.i3193
  %or.i3197 = tail call i32 @llvm.fshl.i32(i32 %add426, i32 %add426, i32 10) #7
  %neg450 = xor i32 %add437, -1
  %or451 = or i32 %add448, %neg450
  %xor452 = xor i32 %or451, %or.i3197
  %add455 = add i32 %12, 1859775393
  %add456 = add i32 %add455, %or.i3193
  %add457 = add i32 %add456, %xor452
  %or.i3198 = tail call i32 @llvm.fshl.i32(i32 %add457, i32 %add457, i32 13) #7
  %add459 = add i32 %or.i3198, %or.i3195
  %or.i3199 = tail call i32 @llvm.fshl.i32(i32 %add437, i32 %add437, i32 10) #7
  %neg461 = xor i32 %add448, -1
  %or462 = or i32 %add459, %neg461
  %xor463 = xor i32 %or462, %or.i3199
  %add466 = add i32 %30, 1859775393
  %add467 = add i32 %add466, %or.i3195
  %add468 = add i32 %add467, %xor463
  %or.i3200 = tail call i32 @llvm.fshl.i32(i32 %add468, i32 %add468, i32 6) #7
  %add470 = add i32 %or.i3200, %or.i3197
  %or.i3201 = tail call i32 @llvm.fshl.i32(i32 %add448, i32 %add448, i32 10) #7
  %neg472 = xor i32 %add459, -1
  %or473 = or i32 %add470, %neg472
  %xor474 = xor i32 %or473, %or.i3201
  %add477 = add i32 %51, 1859775393
  %add478 = add i32 %add477, %or.i3197
  %add479 = add i32 %add478, %xor474
  %or.i3202 = tail call i32 @llvm.fshl.i32(i32 %add479, i32 %add479, i32 5) #7
  %add481 = add i32 %or.i3202, %or.i3199
  %or.i3203 = tail call i32 @llvm.fshl.i32(i32 %add459, i32 %add459, i32 10) #7
  %neg483 = xor i32 %add470, -1
  %or484 = or i32 %add481, %neg483
  %xor485 = xor i32 %or484, %or.i3203
  %add488 = add i32 %45, 1859775393
  %add489 = add i32 %add488, %or.i3199
  %add490 = add i32 %add489, %xor485
  %or.i3204 = tail call i32 @llvm.fshl.i32(i32 %add490, i32 %add490, i32 12) #7
  %add492 = add i32 %or.i3204, %or.i3201
  %or.i3205 = tail call i32 @llvm.fshl.i32(i32 %add470, i32 %add470, i32 10) #7
  %neg494 = xor i32 %add481, -1
  %or495 = or i32 %add492, %neg494
  %xor496 = xor i32 %or495, %or.i3205
  %add499 = add i32 %27, 1859775393
  %add500 = add i32 %add499, %or.i3201
  %add501 = add i32 %add500, %xor496
  %or.i3206 = tail call i32 @llvm.fshl.i32(i32 %add501, i32 %add501, i32 7) #7
  %add503 = add i32 %or.i3206, %or.i3203
  %or.i3207 = tail call i32 @llvm.fshl.i32(i32 %add481, i32 %add481, i32 10) #7
  %neg505 = xor i32 %add492, -1
  %or506 = or i32 %add503, %neg505
  %xor507 = xor i32 %or506, %or.i3207
  %add510 = add i32 %48, 1859775393
  %add511 = add i32 %add510, %or.i3203
  %add512 = add i32 %add511, %xor507
  %or.i3208 = tail call i32 @llvm.fshl.i32(i32 %add512, i32 %add512, i32 5) #7
  %add514 = add i32 %or.i3208, %or.i3205
  %or.i3209 = tail call i32 @llvm.fshl.i32(i32 %add492, i32 %add492, i32 10) #7
  %xor516 = xor i32 %add514, %add503
  %and517 = and i32 %xor516, %or.i3209
  %xor518 = xor i32 %and517, %add503
  %add521 = add i32 %15, -1894007588
  %add522 = add i32 %add521, %or.i3205
  %add523 = add i32 %add522, %xor518
  %or.i3210 = tail call i32 @llvm.fshl.i32(i32 %add523, i32 %add523, i32 11) #7
  %add525 = add i32 %or.i3210, %or.i3207
  %or.i3211 = tail call i32 @llvm.fshl.i32(i32 %add503, i32 %add503, i32 10) #7
  %xor527 = xor i32 %add525, %add514
  %and528 = and i32 %xor527, %or.i3211
  %xor529 = xor i32 %and528, %add514
  %add532 = add i32 %39, -1894007588
  %add533 = add i32 %add532, %or.i3207
  %add534 = add i32 %add533, %xor529
  %or.i3212 = tail call i32 @llvm.fshl.i32(i32 %add534, i32 %add534, i32 12) #7
  %add536 = add i32 %or.i3212, %or.i3209
  %or.i3213 = tail call i32 @llvm.fshl.i32(i32 %add514, i32 %add514, i32 10) #7
  %xor538 = xor i32 %add536, %add525
  %and539 = and i32 %xor538, %or.i3213
  %xor540 = xor i32 %and539, %add525
  %add543 = add i32 %45, -1894007588
  %add544 = add i32 %add543, %or.i3209
  %add545 = add i32 %add544, %xor540
  %or.i3214 = tail call i32 @llvm.fshl.i32(i32 %add545, i32 %add545, i32 14) #7
  %add547 = add i32 %or.i3214, %or.i3211
  %or.i3215 = tail call i32 @llvm.fshl.i32(i32 %add525, i32 %add525, i32 10) #7
  %xor549 = xor i32 %add547, %add536
  %and550 = and i32 %xor549, %or.i3215
  %xor551 = xor i32 %and550, %add536
  %add554 = add i32 %42, -1894007588
  %add555 = add i32 %add554, %or.i3211
  %add556 = add i32 %add555, %xor551
  %or.i3216 = tail call i32 @llvm.fshl.i32(i32 %add556, i32 %add556, i32 15) #7
  %add558 = add i32 %or.i3216, %or.i3213
  %or.i3217 = tail call i32 @llvm.fshl.i32(i32 %add536, i32 %add536, i32 10) #7
  %xor560 = xor i32 %add558, %add547
  %and561 = and i32 %xor560, %or.i3217
  %xor562 = xor i32 %and561, %add547
  %add565 = add i32 %12, -1894007588
  %add566 = add i32 %add565, %or.i3213
  %add567 = add i32 %add566, %xor562
  %or.i3218 = tail call i32 @llvm.fshl.i32(i32 %add567, i32 %add567, i32 14) #7
  %add569 = add i32 %or.i3218, %or.i3215
  %or.i3219 = tail call i32 @llvm.fshl.i32(i32 %add547, i32 %add547, i32 10) #7
  %xor571 = xor i32 %add569, %add558
  %and572 = and i32 %xor571, %or.i3219
  %xor573 = xor i32 %and572, %add558
  %add576 = add i32 %36, -1894007588
  %add577 = add i32 %add576, %or.i3215
  %add578 = add i32 %add577, %xor573
  %or.i3220 = tail call i32 @llvm.fshl.i32(i32 %add578, i32 %add578, i32 15) #7
  %add580 = add i32 %or.i3220, %or.i3217
  %or.i3221 = tail call i32 @llvm.fshl.i32(i32 %add558, i32 %add558, i32 10) #7
  %xor582 = xor i32 %add580, %add569
  %and583 = and i32 %xor582, %or.i3221
  %xor584 = xor i32 %and583, %add569
  %add587 = add i32 %48, -1894007588
  %add588 = add i32 %add587, %or.i3217
  %add589 = add i32 %add588, %xor584
  %or.i3222 = tail call i32 @llvm.fshl.i32(i32 %add589, i32 %add589, i32 9) #7
  %add591 = add i32 %or.i3222, %or.i3219
  %or.i3223 = tail call i32 @llvm.fshl.i32(i32 %add569, i32 %add569, i32 10) #7
  %xor593 = xor i32 %add591, %add580
  %and594 = and i32 %xor593, %or.i3223
  %xor595 = xor i32 %and594, %add580
  %add598 = add i32 %24, -1894007588
  %add599 = add i32 %add598, %or.i3219
  %add600 = add i32 %add599, %xor595
  %or.i3224 = tail call i32 @llvm.fshl.i32(i32 %add600, i32 %add600, i32 8) #7
  %add602 = add i32 %or.i3224, %or.i3221
  %or.i3225 = tail call i32 @llvm.fshl.i32(i32 %add580, i32 %add580, i32 10) #7
  %xor604 = xor i32 %add602, %add591
  %and605 = and i32 %xor604, %or.i3225
  %xor606 = xor i32 %and605, %add591
  %add609 = add i32 %51, -1894007588
  %add610 = add i32 %add609, %or.i3221
  %add611 = add i32 %add610, %xor606
  %or.i3226 = tail call i32 @llvm.fshl.i32(i32 %add611, i32 %add611, i32 9) #7
  %add613 = add i32 %or.i3226, %or.i3223
  %or.i3227 = tail call i32 @llvm.fshl.i32(i32 %add591, i32 %add591, i32 10) #7
  %xor615 = xor i32 %add613, %add602
  %and616 = and i32 %xor615, %or.i3227
  %xor617 = xor i32 %and616, %add602
  %add620 = add i32 %21, -1894007588
  %add621 = add i32 %add620, %or.i3223
  %add622 = add i32 %add621, %xor617
  %or.i3228 = tail call i32 @llvm.fshl.i32(i32 %add622, i32 %add622, i32 14) #7
  %add624 = add i32 %or.i3228, %or.i3225
  %or.i3229 = tail call i32 @llvm.fshl.i32(i32 %add602, i32 %add602, i32 10) #7
  %xor626 = xor i32 %add624, %add613
  %and627 = and i32 %xor626, %or.i3229
  %xor628 = xor i32 %and627, %add613
  %add631 = add i32 %33, -1894007588
  %add632 = add i32 %add631, %or.i3225
  %add633 = add i32 %add632, %xor628
  %or.i3230 = tail call i32 @llvm.fshl.i32(i32 %add633, i32 %add633, i32 5) #7
  %add635 = add i32 %or.i3230, %or.i3227
  %or.i3231 = tail call i32 @llvm.fshl.i32(i32 %add613, i32 %add613, i32 10) #7
  %xor637 = xor i32 %add635, %add624
  %and638 = and i32 %xor637, %or.i3231
  %xor639 = xor i32 %and638, %add624
  %add642 = add i32 %57, -1894007588
  %add643 = add i32 %add642, %or.i3227
  %add644 = add i32 %add643, %xor639
  %or.i3232 = tail call i32 @llvm.fshl.i32(i32 %add644, i32 %add644, i32 6) #7
  %add646 = add i32 %or.i3232, %or.i3229
  %or.i3233 = tail call i32 @llvm.fshl.i32(i32 %add624, i32 %add624, i32 10) #7
  %xor648 = xor i32 %add646, %add635
  %and649 = and i32 %xor648, %or.i3233
  %xor650 = xor i32 %and649, %add635
  %add653 = add i32 %54, -1894007588
  %add654 = add i32 %add653, %or.i3229
  %add655 = add i32 %add654, %xor650
  %or.i3234 = tail call i32 @llvm.fshl.i32(i32 %add655, i32 %add655, i32 8) #7
  %add657 = add i32 %or.i3234, %or.i3231
  %or.i3235 = tail call i32 @llvm.fshl.i32(i32 %add635, i32 %add635, i32 10) #7
  %xor659 = xor i32 %add657, %add646
  %and660 = and i32 %xor659, %or.i3235
  %xor661 = xor i32 %and660, %add646
  %add664 = add i32 %27, -1894007588
  %add665 = add i32 %add664, %or.i3231
  %add666 = add i32 %add665, %xor661
  %or.i3236 = tail call i32 @llvm.fshl.i32(i32 %add666, i32 %add666, i32 6) #7
  %add668 = add i32 %or.i3236, %or.i3233
  %or.i3237 = tail call i32 @llvm.fshl.i32(i32 %add646, i32 %add646, i32 10) #7
  %xor670 = xor i32 %add668, %add657
  %and671 = and i32 %xor670, %or.i3237
  %xor672 = xor i32 %and671, %add657
  %add675 = add i32 %30, -1894007588
  %add676 = add i32 %add675, %or.i3233
  %add677 = add i32 %add676, %xor672
  %or.i3238 = tail call i32 @llvm.fshl.i32(i32 %add677, i32 %add677, i32 5) #7
  %add679 = add i32 %or.i3238, %or.i3235
  %or.i3239 = tail call i32 @llvm.fshl.i32(i32 %add657, i32 %add657, i32 10) #7
  %xor681 = xor i32 %add679, %add668
  %and682 = and i32 %xor681, %or.i3239
  %xor683 = xor i32 %and682, %add668
  %add686 = add i32 %18, -1894007588
  %add687 = add i32 %add686, %or.i3235
  %add688 = add i32 %add687, %xor683
  %or.i3240 = tail call i32 @llvm.fshl.i32(i32 %add688, i32 %add688, i32 12) #7
  %add690 = add i32 %or.i3240, %or.i3237
  %or.i3241 = tail call i32 @llvm.fshl.i32(i32 %add668, i32 %add668, i32 10) #7
  %neg692 = xor i32 %or.i3241, -1
  %or693 = or i32 %add679, %neg692
  %xor694 = xor i32 %add690, %or693
  %add697 = add i32 %24, -1454113458
  %add698 = add i32 %add697, %or.i3237
  %add699 = add i32 %add698, %xor694
  %or.i3242 = tail call i32 @llvm.fshl.i32(i32 %add699, i32 %add699, i32 9) #7
  %add701 = add i32 %or.i3242, %or.i3239
  %or.i3243 = tail call i32 @llvm.fshl.i32(i32 %add679, i32 %add679, i32 10) #7
  %neg703 = xor i32 %or.i3243, -1
  %or704 = or i32 %add690, %neg703
  %xor705 = xor i32 %add701, %or704
  %add708 = add i32 %12, -1454113458
  %add709 = add i32 %add708, %or.i3239
  %add710 = add i32 %add709, %xor705
  %or.i3244 = tail call i32 @llvm.fshl.i32(i32 %add710, i32 %add710, i32 15) #7
  %add712 = add i32 %or.i3244, %or.i3241
  %or.i3245 = tail call i32 @llvm.fshl.i32(i32 %add690, i32 %add690, i32 10) #7
  %neg714 = xor i32 %or.i3245, -1
  %or715 = or i32 %add701, %neg714
  %xor716 = xor i32 %add712, %or715
  %add719 = add i32 %27, -1454113458
  %add720 = add i32 %add719, %or.i3241
  %add721 = add i32 %add720, %xor716
  %or.i3246 = tail call i32 @llvm.fshl.i32(i32 %add721, i32 %add721, i32 5) #7
  %add723 = add i32 %or.i3246, %or.i3243
  %or.i3247 = tail call i32 @llvm.fshl.i32(i32 %add701, i32 %add701, i32 10) #7
  %neg725 = xor i32 %or.i3247, -1
  %or726 = or i32 %add712, %neg725
  %xor727 = xor i32 %add723, %or726
  %add730 = add i32 %39, -1454113458
  %add731 = add i32 %add730, %or.i3243
  %add732 = add i32 %add731, %xor727
  %or.i3248 = tail call i32 @llvm.fshl.i32(i32 %add732, i32 %add732, i32 11) #7
  %add734 = add i32 %or.i3248, %or.i3245
  %or.i3249 = tail call i32 @llvm.fshl.i32(i32 %add712, i32 %add712, i32 10) #7
  %neg736 = xor i32 %or.i3249, -1
  %or737 = or i32 %add723, %neg736
  %xor738 = xor i32 %add734, %or737
  %add741 = add i32 %33, -1454113458
  %add742 = add i32 %add741, %or.i3245
  %add743 = add i32 %add742, %xor738
  %or.i3250 = tail call i32 @llvm.fshl.i32(i32 %add743, i32 %add743, i32 6) #7
  %add745 = add i32 %or.i3250, %or.i3247
  %or.i3251 = tail call i32 @llvm.fshl.i32(i32 %add723, i32 %add723, i32 10) #7
  %neg747 = xor i32 %or.i3251, -1
  %or748 = or i32 %add734, %neg747
  %xor749 = xor i32 %add745, %or748
  %add752 = add i32 %48, -1454113458
  %add753 = add i32 %add752, %or.i3247
  %add754 = add i32 %add753, %xor749
  %or.i3252 = tail call i32 @llvm.fshl.i32(i32 %add754, i32 %add754, i32 8) #7
  %add756 = add i32 %or.i3252, %or.i3249
  %or.i3253 = tail call i32 @llvm.fshl.i32(i32 %add734, i32 %add734, i32 10) #7
  %neg758 = xor i32 %or.i3253, -1
  %or759 = or i32 %add745, %neg758
  %xor760 = xor i32 %add756, %or759
  %add763 = add i32 %18, -1454113458
  %add764 = add i32 %add763, %or.i3249
  %add765 = add i32 %add764, %xor760
  %or.i3254 = tail call i32 @llvm.fshl.i32(i32 %add765, i32 %add765, i32 13) #7
  %add767 = add i32 %or.i3254, %or.i3251
  %or.i3255 = tail call i32 @llvm.fshl.i32(i32 %add745, i32 %add745, i32 10) #7
  %neg769 = xor i32 %or.i3255, -1
  %or770 = or i32 %add756, %neg769
  %xor771 = xor i32 %add767, %or770
  %add774 = add i32 %42, -1454113458
  %add775 = add i32 %add774, %or.i3251
  %add776 = add i32 %add775, %xor771
  %or.i3256 = tail call i32 @llvm.fshl.i32(i32 %add776, i32 %add776, i32 12) #7
  %add778 = add i32 %or.i3256, %or.i3253
  %or.i3257 = tail call i32 @llvm.fshl.i32(i32 %add756, i32 %add756, i32 10) #7
  %neg780 = xor i32 %or.i3257, -1
  %or781 = or i32 %add767, %neg780
  %xor782 = xor i32 %add778, %or781
  %add785 = add i32 %54, -1454113458
  %add786 = add i32 %add785, %or.i3253
  %add787 = add i32 %add786, %xor782
  %or.i3258 = tail call i32 @llvm.fshl.i32(i32 %add787, i32 %add787, i32 5) #7
  %add789 = add i32 %or.i3258, %or.i3255
  %or.i3259 = tail call i32 @llvm.fshl.i32(i32 %add767, i32 %add767, i32 10) #7
  %neg791 = xor i32 %or.i3259, -1
  %or792 = or i32 %add778, %neg791
  %xor793 = xor i32 %add789, %or792
  %add796 = add i32 %15, -1454113458
  %add797 = add i32 %add796, %or.i3255
  %add798 = add i32 %add797, %xor793
  %or.i3260 = tail call i32 @llvm.fshl.i32(i32 %add798, i32 %add798, i32 12) #7
  %add800 = add i32 %or.i3260, %or.i3257
  %or.i3261 = tail call i32 @llvm.fshl.i32(i32 %add778, i32 %add778, i32 10) #7
  %neg802 = xor i32 %or.i3261, -1
  %or803 = or i32 %add789, %neg802
  %xor804 = xor i32 %add800, %or803
  %add807 = add i32 %21, -1454113458
  %add808 = add i32 %add807, %or.i3257
  %add809 = add i32 %add808, %xor804
  %or.i3262 = tail call i32 @llvm.fshl.i32(i32 %add809, i32 %add809, i32 13) #7
  %add811 = add i32 %or.i3262, %or.i3259
  %or.i3263 = tail call i32 @llvm.fshl.i32(i32 %add789, i32 %add789, i32 10) #7
  %neg813 = xor i32 %or.i3263, -1
  %or814 = or i32 %add800, %neg813
  %xor815 = xor i32 %add811, %or814
  %add818 = add i32 %36, -1454113458
  %add819 = add i32 %add818, %or.i3259
  %add820 = add i32 %add819, %xor815
  %or.i3264 = tail call i32 @llvm.fshl.i32(i32 %add820, i32 %add820, i32 14) #7
  %add822 = add i32 %or.i3264, %or.i3261
  %or.i3265 = tail call i32 @llvm.fshl.i32(i32 %add800, i32 %add800, i32 10) #7
  %neg824 = xor i32 %or.i3265, -1
  %or825 = or i32 %add811, %neg824
  %xor826 = xor i32 %add822, %or825
  %add829 = add i32 %45, -1454113458
  %add830 = add i32 %add829, %or.i3261
  %add831 = add i32 %add830, %xor826
  %or.i3266 = tail call i32 @llvm.fshl.i32(i32 %add831, i32 %add831, i32 11) #7
  %add833 = add i32 %or.i3266, %or.i3263
  %or.i3267 = tail call i32 @llvm.fshl.i32(i32 %add811, i32 %add811, i32 10) #7
  %neg835 = xor i32 %or.i3267, -1
  %or836 = or i32 %add822, %neg835
  %xor837 = xor i32 %add833, %or836
  %add840 = add i32 %30, -1454113458
  %add841 = add i32 %add840, %or.i3263
  %add842 = add i32 %add841, %xor837
  %or.i3268 = tail call i32 @llvm.fshl.i32(i32 %add842, i32 %add842, i32 8) #7
  %add844 = add i32 %or.i3268, %or.i3265
  %or.i3269 = tail call i32 @llvm.fshl.i32(i32 %add822, i32 %add822, i32 10) #7
  %neg846 = xor i32 %or.i3269, -1
  %or847 = or i32 %add833, %neg846
  %xor848 = xor i32 %add844, %or847
  %add851 = add i32 %57, -1454113458
  %add852 = add i32 %add851, %or.i3265
  %add853 = add i32 %add852, %xor848
  %or.i3270 = tail call i32 @llvm.fshl.i32(i32 %add853, i32 %add853, i32 5) #7
  %add855 = add i32 %or.i3270, %or.i3267
  %or.i3271 = tail call i32 @llvm.fshl.i32(i32 %add833, i32 %add833, i32 10) #7
  %neg857 = xor i32 %or.i3271, -1
  %or858 = or i32 %add844, %neg857
  %xor859 = xor i32 %add855, %or858
  %add862 = add i32 %51, -1454113458
  %add863 = add i32 %add862, %or.i3267
  %add864 = add i32 %add863, %xor859
  %or.i3272 = tail call i32 @llvm.fshl.i32(i32 %add864, i32 %add864, i32 6) #7
  %or.i3273 = tail call i32 @llvm.fshl.i32(i32 %add844, i32 %add844, i32 10) #7
  %neg868 = xor i32 %7, -1
  %or869 = or i32 %5, %neg868
  %xor870 = xor i32 %or869, %3
  %add873 = add i32 %1, 1352829926
  %add874 = add i32 %add873, %xor870
  %add875 = add i32 %add874, %27
  %or.i3274 = tail call i32 @llvm.fshl.i32(i32 %add875, i32 %add875, i32 8) #7
  %add877 = add i32 %or.i3274, %9
  %neg879 = xor i32 %or.i3115, -1
  %or880 = or i32 %3, %neg879
  %xor881 = xor i32 %add877, %or880
  %add884 = add i32 %9, 1352829926
  %add885 = add i32 %add884, %xor881
  %add886 = add i32 %add885, %54
  %or.i3276 = tail call i32 @llvm.fshl.i32(i32 %add886, i32 %add886, i32 9) #7
  %add888 = add i32 %or.i3276, %7
  %neg890 = xor i32 %or.i3117, -1
  %or891 = or i32 %add877, %neg890
  %xor892 = xor i32 %add888, %or891
  %add895 = add i32 %7, 1352829926
  %add896 = add i32 %add895, %33
  %add897 = add i32 %add896, %xor892
  %or.i3278 = tail call i32 @llvm.fshl.i32(i32 %add897, i32 %add897, i32 9) #7
  %add899 = add i32 %or.i3278, %or.i3115
  %or.i3279 = tail call i32 @llvm.fshl.i32(i32 %add877, i32 %add877, i32 10) #7
  %neg901 = xor i32 %or.i3279, -1
  %or902 = or i32 %add888, %neg901
  %xor903 = xor i32 %add899, %or902
  %add906 = add i32 %or.i3115, 1352829926
  %add907 = add i32 %add906, %12
  %add908 = add i32 %add907, %xor903
  %or.i3280 = tail call i32 @llvm.fshl.i32(i32 %add908, i32 %add908, i32 11) #7
  %add910 = add i32 %or.i3280, %or.i3117
  %or.i3281 = tail call i32 @llvm.fshl.i32(i32 %add888, i32 %add888, i32 10) #7
  %neg912 = xor i32 %or.i3281, -1
  %or913 = or i32 %add899, %neg912
  %xor914 = xor i32 %add910, %or913
  %add917 = add i32 %or.i3117, 1352829926
  %add918 = add i32 %add917, %39
  %add919 = add i32 %add918, %xor914
  %or.i3282 = tail call i32 @llvm.fshl.i32(i32 %add919, i32 %add919, i32 13) #7
  %add921 = add i32 %or.i3282, %or.i3279
  %or.i3283 = tail call i32 @llvm.fshl.i32(i32 %add899, i32 %add899, i32 10) #7
  %neg923 = xor i32 %or.i3283, -1
  %or924 = or i32 %add910, %neg923
  %xor925 = xor i32 %add921, %or924
  %add928 = add i32 %18, 1352829926
  %add929 = add i32 %add928, %or.i3279
  %add930 = add i32 %add929, %xor925
  %or.i3284 = tail call i32 @llvm.fshl.i32(i32 %add930, i32 %add930, i32 15) #7
  %add932 = add i32 %or.i3284, %or.i3281
  %or.i3285 = tail call i32 @llvm.fshl.i32(i32 %add910, i32 %add910, i32 10) #7
  %neg934 = xor i32 %or.i3285, -1
  %or935 = or i32 %add921, %neg934
  %xor936 = xor i32 %add932, %or935
  %add939 = add i32 %45, 1352829926
  %add940 = add i32 %add939, %or.i3281
  %add941 = add i32 %add940, %xor936
  %or.i3286 = tail call i32 @llvm.fshl.i32(i32 %add941, i32 %add941, i32 15) #7
  %add943 = add i32 %or.i3286, %or.i3283
  %or.i3287 = tail call i32 @llvm.fshl.i32(i32 %add921, i32 %add921, i32 10) #7
  %neg945 = xor i32 %or.i3287, -1
  %or946 = or i32 %add932, %neg945
  %xor947 = xor i32 %add943, %or946
  %add950 = add i32 %24, 1352829926
  %add951 = add i32 %add950, %or.i3283
  %add952 = add i32 %add951, %xor947
  %or.i3288 = tail call i32 @llvm.fshl.i32(i32 %add952, i32 %add952, i32 5) #7
  %add954 = add i32 %or.i3288, %or.i3285
  %or.i3289 = tail call i32 @llvm.fshl.i32(i32 %add932, i32 %add932, i32 10) #7
  %neg956 = xor i32 %or.i3289, -1
  %or957 = or i32 %add943, %neg956
  %xor958 = xor i32 %add954, %or957
  %add961 = add i32 %51, 1352829926
  %add962 = add i32 %add961, %or.i3285
  %add963 = add i32 %add962, %xor958
  %or.i3290 = tail call i32 @llvm.fshl.i32(i32 %add963, i32 %add963, i32 7) #7
  %add965 = add i32 %or.i3290, %or.i3287
  %or.i3291 = tail call i32 @llvm.fshl.i32(i32 %add943, i32 %add943, i32 10) #7
  %neg967 = xor i32 %or.i3291, -1
  %or968 = or i32 %add954, %neg967
  %xor969 = xor i32 %add965, %or968
  %add972 = add i32 %30, 1352829926
  %add973 = add i32 %add972, %or.i3287
  %add974 = add i32 %add973, %xor969
  %or.i3292 = tail call i32 @llvm.fshl.i32(i32 %add974, i32 %add974, i32 7) #7
  %add976 = add i32 %or.i3292, %or.i3289
  %or.i3293 = tail call i32 @llvm.fshl.i32(i32 %add954, i32 %add954, i32 10) #7
  %neg978 = xor i32 %or.i3293, -1
  %or979 = or i32 %add965, %neg978
  %xor980 = xor i32 %add976, %or979
  %add983 = add i32 %57, 1352829926
  %add984 = add i32 %add983, %or.i3289
  %add985 = add i32 %add984, %xor980
  %or.i3294 = tail call i32 @llvm.fshl.i32(i32 %add985, i32 %add985, i32 8) #7
  %add987 = add i32 %or.i3294, %or.i3291
  %or.i3295 = tail call i32 @llvm.fshl.i32(i32 %add965, i32 %add965, i32 10) #7
  %neg989 = xor i32 %or.i3295, -1
  %or990 = or i32 %add976, %neg989
  %xor991 = xor i32 %add987, %or990
  %add994 = add i32 %36, 1352829926
  %add995 = add i32 %add994, %or.i3291
  %add996 = add i32 %add995, %xor991
  %or.i3296 = tail call i32 @llvm.fshl.i32(i32 %add996, i32 %add996, i32 11) #7
  %add998 = add i32 %or.i3296, %or.i3293
  %or.i3297 = tail call i32 @llvm.fshl.i32(i32 %add976, i32 %add976, i32 10) #7
  %neg1000 = xor i32 %or.i3297, -1
  %or1001 = or i32 %add987, %neg1000
  %xor1002 = xor i32 %add998, %or1001
  %add1005 = add i32 %15, 1352829926
  %add1006 = add i32 %add1005, %or.i3293
  %add1007 = add i32 %add1006, %xor1002
  %or.i3298 = tail call i32 @llvm.fshl.i32(i32 %add1007, i32 %add1007, i32 14) #7
  %add1009 = add i32 %or.i3298, %or.i3295
  %or.i3299 = tail call i32 @llvm.fshl.i32(i32 %add987, i32 %add987, i32 10) #7
  %neg1011 = xor i32 %or.i3299, -1
  %or1012 = or i32 %add998, %neg1011
  %xor1013 = xor i32 %add1009, %or1012
  %add1016 = add i32 %42, 1352829926
  %add1017 = add i32 %add1016, %or.i3295
  %add1018 = add i32 %add1017, %xor1013
  %or.i3300 = tail call i32 @llvm.fshl.i32(i32 %add1018, i32 %add1018, i32 14) #7
  %add1020 = add i32 %or.i3300, %or.i3297
  %or.i3301 = tail call i32 @llvm.fshl.i32(i32 %add998, i32 %add998, i32 10) #7
  %neg1022 = xor i32 %or.i3301, -1
  %or1023 = or i32 %add1009, %neg1022
  %xor1024 = xor i32 %add1020, %or1023
  %add1027 = add i32 %21, 1352829926
  %add1028 = add i32 %add1027, %or.i3297
  %add1029 = add i32 %add1028, %xor1024
  %or.i3302 = tail call i32 @llvm.fshl.i32(i32 %add1029, i32 %add1029, i32 12) #7
  %add1031 = add i32 %or.i3302, %or.i3299
  %or.i3303 = tail call i32 @llvm.fshl.i32(i32 %add1009, i32 %add1009, i32 10) #7
  %neg1033 = xor i32 %or.i3303, -1
  %or1034 = or i32 %add1020, %neg1033
  %xor1035 = xor i32 %add1031, %or1034
  %add1038 = add i32 %48, 1352829926
  %add1039 = add i32 %add1038, %or.i3299
  %add1040 = add i32 %add1039, %xor1035
  %or.i3304 = tail call i32 @llvm.fshl.i32(i32 %add1040, i32 %add1040, i32 6) #7
  %add1042 = add i32 %or.i3304, %or.i3301
  %or.i3305 = tail call i32 @llvm.fshl.i32(i32 %add1020, i32 %add1020, i32 10) #7
  %xor1044 = xor i32 %add1042, %add1031
  %and1045 = and i32 %xor1044, %or.i3305
  %xor1046 = xor i32 %and1045, %add1031
  %add1049 = add i32 %30, 1548603684
  %add1050 = add i32 %add1049, %or.i3301
  %add1051 = add i32 %add1050, %xor1046
  %or.i3306 = tail call i32 @llvm.fshl.i32(i32 %add1051, i32 %add1051, i32 9) #7
  %add1053 = add i32 %or.i3306, %or.i3303
  %or.i3307 = tail call i32 @llvm.fshl.i32(i32 %add1031, i32 %add1031, i32 10) #7
  %xor1055 = xor i32 %add1053, %add1042
  %and1056 = and i32 %xor1055, %or.i3307
  %xor1057 = xor i32 %and1056, %add1042
  %add1060 = add i32 %45, 1548603684
  %add1061 = add i32 %add1060, %or.i3303
  %add1062 = add i32 %add1061, %xor1057
  %or.i3308 = tail call i32 @llvm.fshl.i32(i32 %add1062, i32 %add1062, i32 13) #7
  %add1064 = add i32 %or.i3308, %or.i3305
  %or.i3309 = tail call i32 @llvm.fshl.i32(i32 %add1042, i32 %add1042, i32 10) #7
  %xor1066 = xor i32 %add1064, %add1053
  %and1067 = and i32 %xor1066, %or.i3309
  %xor1068 = xor i32 %and1067, %add1053
  %add1071 = add i32 %21, 1548603684
  %add1072 = add i32 %add1071, %or.i3305
  %add1073 = add i32 %add1072, %xor1068
  %or.i3310 = tail call i32 @llvm.fshl.i32(i32 %add1073, i32 %add1073, i32 15) #7
  %add1075 = add i32 %or.i3310, %or.i3307
  %or.i3311 = tail call i32 @llvm.fshl.i32(i32 %add1053, i32 %add1053, i32 10) #7
  %xor1077 = xor i32 %add1075, %add1064
  %and1078 = and i32 %xor1077, %or.i3311
  %xor1079 = xor i32 %and1078, %add1064
  %add1082 = add i32 %33, 1548603684
  %add1083 = add i32 %add1082, %or.i3307
  %add1084 = add i32 %add1083, %xor1079
  %or.i3312 = tail call i32 @llvm.fshl.i32(i32 %add1084, i32 %add1084, i32 7) #7
  %add1086 = add i32 %or.i3312, %or.i3309
  %or.i3313 = tail call i32 @llvm.fshl.i32(i32 %add1064, i32 %add1064, i32 10) #7
  %xor1088 = xor i32 %add1086, %add1075
  %and1089 = and i32 %xor1088, %or.i3313
  %xor1090 = xor i32 %and1089, %add1075
  %add1093 = add i32 %12, 1548603684
  %add1094 = add i32 %add1093, %or.i3309
  %add1095 = add i32 %add1094, %xor1090
  %or.i3314 = tail call i32 @llvm.fshl.i32(i32 %add1095, i32 %add1095, i32 12) #7
  %add1097 = add i32 %or.i3314, %or.i3311
  %or.i3315 = tail call i32 @llvm.fshl.i32(i32 %add1075, i32 %add1075, i32 10) #7
  %xor1099 = xor i32 %add1097, %add1086
  %and1100 = and i32 %xor1099, %or.i3315
  %xor1101 = xor i32 %and1100, %add1086
  %add1104 = add i32 %51, 1548603684
  %add1105 = add i32 %add1104, %or.i3311
  %add1106 = add i32 %add1105, %xor1101
  %or.i3316 = tail call i32 @llvm.fshl.i32(i32 %add1106, i32 %add1106, i32 8) #7
  %add1108 = add i32 %or.i3316, %or.i3313
  %or.i3317 = tail call i32 @llvm.fshl.i32(i32 %add1086, i32 %add1086, i32 10) #7
  %xor1110 = xor i32 %add1108, %add1097
  %and1111 = and i32 %xor1110, %or.i3317
  %xor1112 = xor i32 %and1111, %add1097
  %add1115 = add i32 %27, 1548603684
  %add1116 = add i32 %add1115, %or.i3313
  %add1117 = add i32 %add1116, %xor1112
  %or.i3318 = tail call i32 @llvm.fshl.i32(i32 %add1117, i32 %add1117, i32 9) #7
  %add1119 = add i32 %or.i3318, %or.i3315
  %or.i3319 = tail call i32 @llvm.fshl.i32(i32 %add1097, i32 %add1097, i32 10) #7
  %xor1121 = xor i32 %add1119, %add1108
  %and1122 = and i32 %xor1121, %or.i3319
  %xor1123 = xor i32 %and1122, %add1108
  %add1126 = add i32 %42, 1548603684
  %add1127 = add i32 %add1126, %or.i3315
  %add1128 = add i32 %add1127, %xor1123
  %or.i3320 = tail call i32 @llvm.fshl.i32(i32 %add1128, i32 %add1128, i32 11) #7
  %add1130 = add i32 %or.i3320, %or.i3317
  %or.i3321 = tail call i32 @llvm.fshl.i32(i32 %add1108, i32 %add1108, i32 10) #7
  %xor1132 = xor i32 %add1130, %add1119
  %and1133 = and i32 %xor1132, %or.i3321
  %xor1134 = xor i32 %and1133, %add1119
  %add1137 = add i32 %54, 1548603684
  %add1138 = add i32 %add1137, %or.i3317
  %add1139 = add i32 %add1138, %xor1134
  %or.i3322 = tail call i32 @llvm.fshl.i32(i32 %add1139, i32 %add1139, i32 7) #7
  %add1141 = add i32 %or.i3322, %or.i3319
  %or.i3323 = tail call i32 @llvm.fshl.i32(i32 %add1119, i32 %add1119, i32 10) #7
  %xor1143 = xor i32 %add1141, %add1130
  %and1144 = and i32 %xor1143, %or.i3323
  %xor1145 = xor i32 %and1144, %add1130
  %add1148 = add i32 %57, 1548603684
  %add1149 = add i32 %add1148, %or.i3319
  %add1150 = add i32 %add1149, %xor1145
  %or.i3324 = tail call i32 @llvm.fshl.i32(i32 %add1150, i32 %add1150, i32 7) #7
  %add1152 = add i32 %or.i3324, %or.i3321
  %or.i3325 = tail call i32 @llvm.fshl.i32(i32 %add1130, i32 %add1130, i32 10) #7
  %xor1154 = xor i32 %add1152, %add1141
  %and1155 = and i32 %xor1154, %or.i3325
  %xor1156 = xor i32 %and1155, %add1141
  %add1159 = add i32 %36, 1548603684
  %add1160 = add i32 %add1159, %or.i3321
  %add1161 = add i32 %add1160, %xor1156
  %or.i3326 = tail call i32 @llvm.fshl.i32(i32 %add1161, i32 %add1161, i32 12) #7
  %add1163 = add i32 %or.i3326, %or.i3323
  %or.i3327 = tail call i32 @llvm.fshl.i32(i32 %add1141, i32 %add1141, i32 10) #7
  %xor1165 = xor i32 %add1163, %add1152
  %and1166 = and i32 %xor1165, %or.i3327
  %xor1167 = xor i32 %and1166, %add1152
  %add1170 = add i32 %48, 1548603684
  %add1171 = add i32 %add1170, %or.i3323
  %add1172 = add i32 %add1171, %xor1167
  %or.i3328 = tail call i32 @llvm.fshl.i32(i32 %add1172, i32 %add1172, i32 7) #7
  %add1174 = add i32 %or.i3328, %or.i3325
  %or.i3329 = tail call i32 @llvm.fshl.i32(i32 %add1152, i32 %add1152, i32 10) #7
  %xor1176 = xor i32 %add1174, %add1163
  %and1177 = and i32 %xor1176, %or.i3329
  %xor1178 = xor i32 %and1177, %add1163
  %add1181 = add i32 %24, 1548603684
  %add1182 = add i32 %add1181, %or.i3325
  %add1183 = add i32 %add1182, %xor1178
  %or.i3330 = tail call i32 @llvm.fshl.i32(i32 %add1183, i32 %add1183, i32 6) #7
  %add1185 = add i32 %or.i3330, %or.i3327
  %or.i3331 = tail call i32 @llvm.fshl.i32(i32 %add1163, i32 %add1163, i32 10) #7
  %xor1187 = xor i32 %add1185, %add1174
  %and1188 = and i32 %xor1187, %or.i3331
  %xor1189 = xor i32 %and1188, %add1174
  %add1192 = add i32 %39, 1548603684
  %add1193 = add i32 %add1192, %or.i3327
  %add1194 = add i32 %add1193, %xor1189
  %or.i3332 = tail call i32 @llvm.fshl.i32(i32 %add1194, i32 %add1194, i32 15) #7
  %add1196 = add i32 %or.i3332, %or.i3329
  %or.i3333 = tail call i32 @llvm.fshl.i32(i32 %add1174, i32 %add1174, i32 10) #7
  %xor1198 = xor i32 %add1196, %add1185
  %and1199 = and i32 %xor1198, %or.i3333
  %xor1200 = xor i32 %and1199, %add1185
  %add1203 = add i32 %15, 1548603684
  %add1204 = add i32 %add1203, %or.i3329
  %add1205 = add i32 %add1204, %xor1200
  %or.i3334 = tail call i32 @llvm.fshl.i32(i32 %add1205, i32 %add1205, i32 13) #7
  %add1207 = add i32 %or.i3334, %or.i3331
  %or.i3335 = tail call i32 @llvm.fshl.i32(i32 %add1185, i32 %add1185, i32 10) #7
  %xor1209 = xor i32 %add1207, %add1196
  %and1210 = and i32 %xor1209, %or.i3335
  %xor1211 = xor i32 %and1210, %add1196
  %add1214 = add i32 %18, 1548603684
  %add1215 = add i32 %add1214, %or.i3331
  %add1216 = add i32 %add1215, %xor1211
  %or.i3336 = tail call i32 @llvm.fshl.i32(i32 %add1216, i32 %add1216, i32 11) #7
  %add1218 = add i32 %or.i3336, %or.i3333
  %or.i3337 = tail call i32 @llvm.fshl.i32(i32 %add1196, i32 %add1196, i32 10) #7
  %neg1220 = xor i32 %add1207, -1
  %or1221 = or i32 %add1218, %neg1220
  %xor1222 = xor i32 %or1221, %or.i3337
  %add1225 = add i32 %57, 1836072691
  %add1226 = add i32 %add1225, %or.i3333
  %add1227 = add i32 %add1226, %xor1222
  %or.i3338 = tail call i32 @llvm.fshl.i32(i32 %add1227, i32 %add1227, i32 9) #7
  %add1229 = add i32 %or.i3338, %or.i3335
  %or.i3339 = tail call i32 @llvm.fshl.i32(i32 %add1207, i32 %add1207, i32 10) #7
  %neg1231 = xor i32 %add1218, -1
  %or1232 = or i32 %add1229, %neg1231
  %xor1233 = xor i32 %or1232, %or.i3339
  %add1236 = add i32 %27, 1836072691
  %add1237 = add i32 %add1236, %or.i3335
  %add1238 = add i32 %add1237, %xor1233
  %or.i3340 = tail call i32 @llvm.fshl.i32(i32 %add1238, i32 %add1238, i32 7) #7
  %add1240 = add i32 %or.i3340, %or.i3337
  %or.i3341 = tail call i32 @llvm.fshl.i32(i32 %add1218, i32 %add1218, i32 10) #7
  %neg1242 = xor i32 %add1229, -1
  %or1243 = or i32 %add1240, %neg1242
  %xor1244 = xor i32 %or1243, %or.i3341
  %add1247 = add i32 %15, 1836072691
  %add1248 = add i32 %add1247, %or.i3337
  %add1249 = add i32 %add1248, %xor1244
  %or.i3342 = tail call i32 @llvm.fshl.i32(i32 %add1249, i32 %add1249, i32 15) #7
  %add1251 = add i32 %or.i3342, %or.i3339
  %or.i3343 = tail call i32 @llvm.fshl.i32(i32 %add1229, i32 %add1229, i32 10) #7
  %neg1253 = xor i32 %add1240, -1
  %or1254 = or i32 %add1251, %neg1253
  %xor1255 = xor i32 %or1254, %or.i3343
  %add1258 = add i32 %21, 1836072691
  %add1259 = add i32 %add1258, %or.i3339
  %add1260 = add i32 %add1259, %xor1255
  %or.i3344 = tail call i32 @llvm.fshl.i32(i32 %add1260, i32 %add1260, i32 11) #7
  %add1262 = add i32 %or.i3344, %or.i3341
  %or.i3345 = tail call i32 @llvm.fshl.i32(i32 %add1240, i32 %add1240, i32 10) #7
  %neg1264 = xor i32 %add1251, -1
  %or1265 = or i32 %add1262, %neg1264
  %xor1266 = xor i32 %or1265, %or.i3345
  %add1269 = add i32 %33, 1836072691
  %add1270 = add i32 %add1269, %or.i3341
  %add1271 = add i32 %add1270, %xor1266
  %or.i3346 = tail call i32 @llvm.fshl.i32(i32 %add1271, i32 %add1271, i32 8) #7
  %add1273 = add i32 %or.i3346, %or.i3343
  %or.i3347 = tail call i32 @llvm.fshl.i32(i32 %add1251, i32 %add1251, i32 10) #7
  %neg1275 = xor i32 %add1262, -1
  %or1276 = or i32 %add1273, %neg1275
  %xor1277 = xor i32 %or1276, %or.i3347
  %add1280 = add i32 %54, 1836072691
  %add1281 = add i32 %add1280, %or.i3343
  %add1282 = add i32 %add1281, %xor1277
  %or.i3348 = tail call i32 @llvm.fshl.i32(i32 %add1282, i32 %add1282, i32 6) #7
  %add1284 = add i32 %or.i3348, %or.i3345
  %or.i3349 = tail call i32 @llvm.fshl.i32(i32 %add1262, i32 %add1262, i32 10) #7
  %neg1286 = xor i32 %add1273, -1
  %or1287 = or i32 %add1284, %neg1286
  %xor1288 = xor i32 %or1287, %or.i3349
  %add1291 = add i32 %30, 1836072691
  %add1292 = add i32 %add1291, %or.i3345
  %add1293 = add i32 %add1292, %xor1288
  %or.i3350 = tail call i32 @llvm.fshl.i32(i32 %add1293, i32 %add1293, i32 6) #7
  %add1295 = add i32 %or.i3350, %or.i3347
  %or.i3351 = tail call i32 @llvm.fshl.i32(i32 %add1273, i32 %add1273, i32 10) #7
  %neg1297 = xor i32 %add1284, -1
  %or1298 = or i32 %add1295, %neg1297
  %xor1299 = xor i32 %or1298, %or.i3351
  %add1302 = add i32 %39, 1836072691
  %add1303 = add i32 %add1302, %or.i3347
  %add1304 = add i32 %add1303, %xor1299
  %or.i3352 = tail call i32 @llvm.fshl.i32(i32 %add1304, i32 %add1304, i32 14) #7
  %add1306 = add i32 %or.i3352, %or.i3349
  %or.i3353 = tail call i32 @llvm.fshl.i32(i32 %add1284, i32 %add1284, i32 10) #7
  %neg1308 = xor i32 %add1295, -1
  %or1309 = or i32 %add1306, %neg1308
  %xor1310 = xor i32 %or1309, %or.i3353
  %add1313 = add i32 %45, 1836072691
  %add1314 = add i32 %add1313, %or.i3349
  %add1315 = add i32 %add1314, %xor1310
  %or.i3354 = tail call i32 @llvm.fshl.i32(i32 %add1315, i32 %add1315, i32 12) #7
  %add1317 = add i32 %or.i3354, %or.i3351
  %or.i3355 = tail call i32 @llvm.fshl.i32(i32 %add1295, i32 %add1295, i32 10) #7
  %neg1319 = xor i32 %add1306, -1
  %or1320 = or i32 %add1317, %neg1319
  %xor1321 = xor i32 %or1320, %or.i3355
  %add1324 = add i32 %36, 1836072691
  %add1325 = add i32 %add1324, %or.i3351
  %add1326 = add i32 %add1325, %xor1321
  %or.i3356 = tail call i32 @llvm.fshl.i32(i32 %add1326, i32 %add1326, i32 13) #7
  %add1328 = add i32 %or.i3356, %or.i3353
  %or.i3357 = tail call i32 @llvm.fshl.i32(i32 %add1306, i32 %add1306, i32 10) #7
  %neg1330 = xor i32 %add1317, -1
  %or1331 = or i32 %add1328, %neg1330
  %xor1332 = xor i32 %or1331, %or.i3357
  %add1335 = add i32 %48, 1836072691
  %add1336 = add i32 %add1335, %or.i3353
  %add1337 = add i32 %add1336, %xor1332
  %or.i3358 = tail call i32 @llvm.fshl.i32(i32 %add1337, i32 %add1337, i32 5) #7
  %add1339 = add i32 %or.i3358, %or.i3355
  %or.i3359 = tail call i32 @llvm.fshl.i32(i32 %add1317, i32 %add1317, i32 10) #7
  %neg1341 = xor i32 %add1328, -1
  %or1342 = or i32 %add1339, %neg1341
  %xor1343 = xor i32 %or1342, %or.i3359
  %add1346 = add i32 %18, 1836072691
  %add1347 = add i32 %add1346, %or.i3355
  %add1348 = add i32 %add1347, %xor1343
  %or.i3360 = tail call i32 @llvm.fshl.i32(i32 %add1348, i32 %add1348, i32 14) #7
  %add1350 = add i32 %or.i3360, %or.i3357
  %or.i3361 = tail call i32 @llvm.fshl.i32(i32 %add1328, i32 %add1328, i32 10) #7
  %neg1352 = xor i32 %add1339, -1
  %or1353 = or i32 %add1350, %neg1352
  %xor1354 = xor i32 %or1353, %or.i3361
  %add1357 = add i32 %42, 1836072691
  %add1358 = add i32 %add1357, %or.i3357
  %add1359 = add i32 %add1358, %xor1354
  %or.i3362 = tail call i32 @llvm.fshl.i32(i32 %add1359, i32 %add1359, i32 13) #7
  %add1361 = add i32 %or.i3362, %or.i3359
  %or.i3363 = tail call i32 @llvm.fshl.i32(i32 %add1339, i32 %add1339, i32 10) #7
  %neg1363 = xor i32 %add1350, -1
  %or1364 = or i32 %add1361, %neg1363
  %xor1365 = xor i32 %or1364, %or.i3363
  %add1368 = add i32 %12, 1836072691
  %add1369 = add i32 %add1368, %or.i3359
  %add1370 = add i32 %add1369, %xor1365
  %or.i3364 = tail call i32 @llvm.fshl.i32(i32 %add1370, i32 %add1370, i32 13) #7
  %add1372 = add i32 %or.i3364, %or.i3361
  %or.i3365 = tail call i32 @llvm.fshl.i32(i32 %add1350, i32 %add1350, i32 10) #7
  %neg1374 = xor i32 %add1361, -1
  %or1375 = or i32 %add1372, %neg1374
  %xor1376 = xor i32 %or1375, %or.i3365
  %add1379 = add i32 %24, 1836072691
  %add1380 = add i32 %add1379, %or.i3361
  %add1381 = add i32 %add1380, %xor1376
  %or.i3366 = tail call i32 @llvm.fshl.i32(i32 %add1381, i32 %add1381, i32 7) #7
  %add1383 = add i32 %or.i3366, %or.i3363
  %or.i3367 = tail call i32 @llvm.fshl.i32(i32 %add1361, i32 %add1361, i32 10) #7
  %neg1385 = xor i32 %add1372, -1
  %or1386 = or i32 %add1383, %neg1385
  %xor1387 = xor i32 %or1386, %or.i3367
  %add1390 = add i32 %51, 1836072691
  %add1391 = add i32 %add1390, %or.i3363
  %add1392 = add i32 %add1391, %xor1387
  %or.i3368 = tail call i32 @llvm.fshl.i32(i32 %add1392, i32 %add1392, i32 5) #7
  %add1394 = add i32 %or.i3368, %or.i3365
  %or.i3369 = tail call i32 @llvm.fshl.i32(i32 %add1372, i32 %add1372, i32 10) #7
  %xor1396 = xor i32 %add1383, %or.i3369
  %and1397 = and i32 %add1394, %xor1396
  %xor1398 = xor i32 %and1397, %or.i3369
  %add1401 = add i32 %36, 2053994217
  %add1402 = add i32 %add1401, %or.i3365
  %add1403 = add i32 %add1402, %xor1398
  %or.i3370 = tail call i32 @llvm.fshl.i32(i32 %add1403, i32 %add1403, i32 15) #7
  %add1405 = add i32 %or.i3370, %or.i3367
  %or.i3371 = tail call i32 @llvm.fshl.i32(i32 %add1383, i32 %add1383, i32 10) #7
  %xor1407 = xor i32 %add1394, %or.i3371
  %and1408 = and i32 %add1405, %xor1407
  %xor1409 = xor i32 %and1408, %or.i3371
  %add1412 = add i32 %30, 2053994217
  %add1413 = add i32 %add1412, %or.i3367
  %add1414 = add i32 %add1413, %xor1409
  %or.i3372 = tail call i32 @llvm.fshl.i32(i32 %add1414, i32 %add1414, i32 5) #7
  %add1416 = add i32 %or.i3372, %or.i3369
  %or.i3373 = tail call i32 @llvm.fshl.i32(i32 %add1394, i32 %add1394, i32 10) #7
  %xor1418 = xor i32 %add1405, %or.i3373
  %and1419 = and i32 %add1416, %xor1418
  %xor1420 = xor i32 %and1419, %or.i3373
  %add1423 = add i32 %24, 2053994217
  %add1424 = add i32 %add1423, %or.i3369
  %add1425 = add i32 %add1424, %xor1420
  %or.i3374 = tail call i32 @llvm.fshl.i32(i32 %add1425, i32 %add1425, i32 8) #7
  %add1427 = add i32 %or.i3374, %or.i3371
  %or.i3375 = tail call i32 @llvm.fshl.i32(i32 %add1405, i32 %add1405, i32 10) #7
  %xor1429 = xor i32 %add1416, %or.i3375
  %and1430 = and i32 %add1427, %xor1429
  %xor1431 = xor i32 %and1430, %or.i3375
  %add1434 = add i32 %15, 2053994217
  %add1435 = add i32 %add1434, %or.i3371
  %add1436 = add i32 %add1435, %xor1431
  %or.i3376 = tail call i32 @llvm.fshl.i32(i32 %add1436, i32 %add1436, i32 11) #7
  %add1438 = add i32 %or.i3376, %or.i3373
  %or.i3377 = tail call i32 @llvm.fshl.i32(i32 %add1416, i32 %add1416, i32 10) #7
  %xor1440 = xor i32 %add1427, %or.i3377
  %and1441 = and i32 %add1438, %xor1440
  %xor1442 = xor i32 %and1441, %or.i3377
  %add1445 = add i32 %21, 2053994217
  %add1446 = add i32 %add1445, %or.i3373
  %add1447 = add i32 %add1446, %xor1442
  %or.i3378 = tail call i32 @llvm.fshl.i32(i32 %add1447, i32 %add1447, i32 14) #7
  %add1449 = add i32 %or.i3378, %or.i3375
  %or.i3379 = tail call i32 @llvm.fshl.i32(i32 %add1427, i32 %add1427, i32 10) #7
  %xor1451 = xor i32 %add1438, %or.i3379
  %and1452 = and i32 %add1449, %xor1451
  %xor1453 = xor i32 %and1452, %or.i3379
  %add1456 = add i32 %45, 2053994217
  %add1457 = add i32 %add1456, %or.i3375
  %add1458 = add i32 %add1457, %xor1453
  %or.i3380 = tail call i32 @llvm.fshl.i32(i32 %add1458, i32 %add1458, i32 14) #7
  %add1460 = add i32 %or.i3380, %or.i3377
  %or.i3381 = tail call i32 @llvm.fshl.i32(i32 %add1438, i32 %add1438, i32 10) #7
  %xor1462 = xor i32 %add1449, %or.i3381
  %and1463 = and i32 %add1460, %xor1462
  %xor1464 = xor i32 %and1463, %or.i3381
  %add1467 = add i32 %57, 2053994217
  %add1468 = add i32 %add1467, %or.i3377
  %add1469 = add i32 %add1468, %xor1464
  %or.i3382 = tail call i32 @llvm.fshl.i32(i32 %add1469, i32 %add1469, i32 6) #7
  %add1471 = add i32 %or.i3382, %or.i3379
  %or.i3383 = tail call i32 @llvm.fshl.i32(i32 %add1449, i32 %add1449, i32 10) #7
  %xor1473 = xor i32 %add1460, %or.i3383
  %and1474 = and i32 %add1471, %xor1473
  %xor1475 = xor i32 %and1474, %or.i3383
  %add1478 = add i32 %12, 2053994217
  %add1479 = add i32 %add1478, %or.i3379
  %add1480 = add i32 %add1479, %xor1475
  %or.i3384 = tail call i32 @llvm.fshl.i32(i32 %add1480, i32 %add1480, i32 14) #7
  %add1482 = add i32 %or.i3384, %or.i3381
  %or.i3385 = tail call i32 @llvm.fshl.i32(i32 %add1460, i32 %add1460, i32 10) #7
  %xor1484 = xor i32 %add1471, %or.i3385
  %and1485 = and i32 %add1482, %xor1484
  %xor1486 = xor i32 %and1485, %or.i3385
  %add1489 = add i32 %27, 2053994217
  %add1490 = add i32 %add1489, %or.i3381
  %add1491 = add i32 %add1490, %xor1486
  %or.i3386 = tail call i32 @llvm.fshl.i32(i32 %add1491, i32 %add1491, i32 6) #7
  %add1493 = add i32 %or.i3386, %or.i3383
  %or.i3387 = tail call i32 @llvm.fshl.i32(i32 %add1471, i32 %add1471, i32 10) #7
  %xor1495 = xor i32 %add1482, %or.i3387
  %and1496 = and i32 %add1493, %xor1495
  %xor1497 = xor i32 %and1496, %or.i3387
  %add1500 = add i32 %48, 2053994217
  %add1501 = add i32 %add1500, %or.i3383
  %add1502 = add i32 %add1501, %xor1497
  %or.i3388 = tail call i32 @llvm.fshl.i32(i32 %add1502, i32 %add1502, i32 9) #7
  %add1504 = add i32 %or.i3388, %or.i3385
  %or.i3389 = tail call i32 @llvm.fshl.i32(i32 %add1482, i32 %add1482, i32 10) #7
  %xor1506 = xor i32 %add1493, %or.i3389
  %and1507 = and i32 %add1504, %xor1506
  %xor1508 = xor i32 %and1507, %or.i3389
  %add1511 = add i32 %18, 2053994217
  %add1512 = add i32 %add1511, %or.i3385
  %add1513 = add i32 %add1512, %xor1508
  %or.i3390 = tail call i32 @llvm.fshl.i32(i32 %add1513, i32 %add1513, i32 12) #7
  %add1515 = add i32 %or.i3390, %or.i3387
  %or.i3391 = tail call i32 @llvm.fshl.i32(i32 %add1493, i32 %add1493, i32 10) #7
  %xor1517 = xor i32 %add1504, %or.i3391
  %and1518 = and i32 %add1515, %xor1517
  %xor1519 = xor i32 %and1518, %or.i3391
  %add1522 = add i32 %51, 2053994217
  %add1523 = add i32 %add1522, %or.i3387
  %add1524 = add i32 %add1523, %xor1519
  %or.i3392 = tail call i32 @llvm.fshl.i32(i32 %add1524, i32 %add1524, i32 9) #7
  %add1526 = add i32 %or.i3392, %or.i3389
  %or.i3393 = tail call i32 @llvm.fshl.i32(i32 %add1504, i32 %add1504, i32 10) #7
  %xor1528 = xor i32 %add1515, %or.i3393
  %and1529 = and i32 %add1526, %xor1528
  %xor1530 = xor i32 %and1529, %or.i3393
  %add1533 = add i32 %39, 2053994217
  %add1534 = add i32 %add1533, %or.i3389
  %add1535 = add i32 %add1534, %xor1530
  %or.i3394 = tail call i32 @llvm.fshl.i32(i32 %add1535, i32 %add1535, i32 12) #7
  %add1537 = add i32 %or.i3394, %or.i3391
  %or.i3395 = tail call i32 @llvm.fshl.i32(i32 %add1515, i32 %add1515, i32 10) #7
  %xor1539 = xor i32 %add1526, %or.i3395
  %and1540 = and i32 %add1537, %xor1539
  %xor1541 = xor i32 %and1540, %or.i3395
  %add1544 = add i32 %33, 2053994217
  %add1545 = add i32 %add1544, %or.i3391
  %add1546 = add i32 %add1545, %xor1541
  %or.i3396 = tail call i32 @llvm.fshl.i32(i32 %add1546, i32 %add1546, i32 5) #7
  %add1548 = add i32 %or.i3396, %or.i3393
  %or.i3397 = tail call i32 @llvm.fshl.i32(i32 %add1526, i32 %add1526, i32 10) #7
  %xor1550 = xor i32 %add1537, %or.i3397
  %and1551 = and i32 %add1548, %xor1550
  %xor1552 = xor i32 %and1551, %or.i3397
  %add1555 = add i32 %42, 2053994217
  %add1556 = add i32 %add1555, %or.i3393
  %add1557 = add i32 %add1556, %xor1552
  %or.i3398 = tail call i32 @llvm.fshl.i32(i32 %add1557, i32 %add1557, i32 15) #7
  %add1559 = add i32 %or.i3398, %or.i3395
  %or.i3399 = tail call i32 @llvm.fshl.i32(i32 %add1537, i32 %add1537, i32 10) #7
  %xor1561 = xor i32 %add1548, %or.i3399
  %and1562 = and i32 %add1559, %xor1561
  %xor1563 = xor i32 %and1562, %or.i3399
  %add1566 = add i32 %54, 2053994217
  %add1567 = add i32 %add1566, %or.i3395
  %add1568 = add i32 %add1567, %xor1563
  %or.i3400 = tail call i32 @llvm.fshl.i32(i32 %add1568, i32 %add1568, i32 8) #7
  %add1570 = add i32 %or.i3400, %or.i3397
  %or.i3401 = tail call i32 @llvm.fshl.i32(i32 %add1548, i32 %add1548, i32 10) #7
  %xor1572 = xor i32 %add1559, %or.i3401
  %xor1573 = xor i32 %xor1572, %add1570
  %add1576 = add i32 %or.i3397, %48
  %add1578 = add i32 %add1576, %xor1573
  %or.i3402 = tail call i32 @llvm.fshl.i32(i32 %add1578, i32 %add1578, i32 8) #7
  %add1580 = add i32 %or.i3402, %or.i3399
  %or.i3403 = tail call i32 @llvm.fshl.i32(i32 %add1559, i32 %add1559, i32 10) #7
  %xor1582 = xor i32 %add1570, %or.i3403
  %xor1583 = xor i32 %xor1582, %add1580
  %add1586 = add i32 %or.i3399, %57
  %add1588 = add i32 %add1586, %xor1583
  %or.i3404 = tail call i32 @llvm.fshl.i32(i32 %add1588, i32 %add1588, i32 5) #7
  %add1590 = add i32 %or.i3404, %or.i3401
  %or.i3405 = tail call i32 @llvm.fshl.i32(i32 %add1570, i32 %add1570, i32 10) #7
  %xor1592 = xor i32 %add1580, %or.i3405
  %xor1593 = xor i32 %xor1592, %add1590
  %add1596 = add i32 %or.i3401, %42
  %add1598 = add i32 %add1596, %xor1593
  %or.i3406 = tail call i32 @llvm.fshl.i32(i32 %add1598, i32 %add1598, i32 12) #7
  %add1600 = add i32 %or.i3406, %or.i3403
  %or.i3407 = tail call i32 @llvm.fshl.i32(i32 %add1580, i32 %add1580, i32 10) #7
  %xor1602 = xor i32 %add1590, %or.i3407
  %xor1603 = xor i32 %xor1602, %add1600
  %add1606 = add i32 %or.i3403, %24
  %add1608 = add i32 %add1606, %xor1603
  %or.i3408 = tail call i32 @llvm.fshl.i32(i32 %add1608, i32 %add1608, i32 9) #7
  %add1610 = add i32 %or.i3408, %or.i3405
  %or.i3409 = tail call i32 @llvm.fshl.i32(i32 %add1590, i32 %add1590, i32 10) #7
  %xor1612 = xor i32 %add1600, %or.i3409
  %xor1613 = xor i32 %xor1612, %add1610
  %add1616 = add i32 %or.i3405, %15
  %add1618 = add i32 %add1616, %xor1613
  %or.i3410 = tail call i32 @llvm.fshl.i32(i32 %add1618, i32 %add1618, i32 12) #7
  %add1620 = add i32 %or.i3410, %or.i3407
  %or.i3411 = tail call i32 @llvm.fshl.i32(i32 %add1600, i32 %add1600, i32 10) #7
  %xor1622 = xor i32 %add1610, %or.i3411
  %xor1623 = xor i32 %xor1622, %add1620
  %add1626 = add i32 %or.i3407, %27
  %add1628 = add i32 %add1626, %xor1623
  %or.i3412 = tail call i32 @llvm.fshl.i32(i32 %add1628, i32 %add1628, i32 5) #7
  %add1630 = add i32 %or.i3412, %or.i3409
  %or.i3413 = tail call i32 @llvm.fshl.i32(i32 %add1610, i32 %add1610, i32 10) #7
  %xor1632 = xor i32 %add1620, %or.i3413
  %xor1633 = xor i32 %xor1632, %add1630
  %add1636 = add i32 %or.i3409, %36
  %add1638 = add i32 %add1636, %xor1633
  %or.i3414 = tail call i32 @llvm.fshl.i32(i32 %add1638, i32 %add1638, i32 14) #7
  %add1640 = add i32 %or.i3414, %or.i3411
  %or.i3415 = tail call i32 @llvm.fshl.i32(i32 %add1620, i32 %add1620, i32 10) #7
  %xor1642 = xor i32 %add1630, %or.i3415
  %xor1643 = xor i32 %xor1642, %add1640
  %add1646 = add i32 %or.i3411, %33
  %add1648 = add i32 %add1646, %xor1643
  %or.i3416 = tail call i32 @llvm.fshl.i32(i32 %add1648, i32 %add1648, i32 6) #7
  %add1650 = add i32 %or.i3416, %or.i3413
  %or.i3417 = tail call i32 @llvm.fshl.i32(i32 %add1630, i32 %add1630, i32 10) #7
  %xor1652 = xor i32 %add1640, %or.i3417
  %xor1653 = xor i32 %xor1652, %add1650
  %add1656 = add i32 %or.i3413, %30
  %add1658 = add i32 %add1656, %xor1653
  %or.i3418 = tail call i32 @llvm.fshl.i32(i32 %add1658, i32 %add1658, i32 8) #7
  %add1660 = add i32 %or.i3418, %or.i3415
  %or.i3419 = tail call i32 @llvm.fshl.i32(i32 %add1640, i32 %add1640, i32 10) #7
  %xor1662 = xor i32 %add1650, %or.i3419
  %xor1663 = xor i32 %xor1662, %add1660
  %add1666 = add i32 %or.i3415, %18
  %add1668 = add i32 %add1666, %xor1663
  %or.i3420 = tail call i32 @llvm.fshl.i32(i32 %add1668, i32 %add1668, i32 13) #7
  %add1670 = add i32 %or.i3420, %or.i3417
  %or.i3421 = tail call i32 @llvm.fshl.i32(i32 %add1650, i32 %add1650, i32 10) #7
  %xor1672 = xor i32 %add1660, %or.i3421
  %xor1673 = xor i32 %xor1672, %add1670
  %add1676 = add i32 %or.i3417, %51
  %add1678 = add i32 %add1676, %xor1673
  %or.i3422 = tail call i32 @llvm.fshl.i32(i32 %add1678, i32 %add1678, i32 6) #7
  %add1680 = add i32 %or.i3422, %or.i3419
  %or.i3423 = tail call i32 @llvm.fshl.i32(i32 %add1660, i32 %add1660, i32 10) #7
  %xor1682 = xor i32 %add1670, %or.i3423
  %xor1683 = xor i32 %xor1682, %add1680
  %add1686 = add i32 %or.i3419, %54
  %add1688 = add i32 %add1686, %xor1683
  %or.i3424 = tail call i32 @llvm.fshl.i32(i32 %add1688, i32 %add1688, i32 5) #7
  %add1690 = add i32 %or.i3424, %or.i3421
  %or.i3425 = tail call i32 @llvm.fshl.i32(i32 %add1670, i32 %add1670, i32 10) #7
  %xor1692 = xor i32 %add1680, %or.i3425
  %xor1693 = xor i32 %xor1692, %add1690
  %add1696 = add i32 %or.i3421, %12
  %add1698 = add i32 %add1696, %xor1693
  %or.i3426 = tail call i32 @llvm.fshl.i32(i32 %add1698, i32 %add1698, i32 15) #7
  %add1700 = add i32 %or.i3426, %or.i3423
  %or.i3427 = tail call i32 @llvm.fshl.i32(i32 %add1680, i32 %add1680, i32 10) #7
  %xor1702 = xor i32 %add1690, %or.i3427
  %xor1703 = xor i32 %xor1702, %add1700
  %add1706 = add i32 %or.i3423, %21
  %add1708 = add i32 %add1706, %xor1703
  %or.i3428 = tail call i32 @llvm.fshl.i32(i32 %add1708, i32 %add1708, i32 13) #7
  %add1710 = add i32 %or.i3428, %or.i3425
  %or.i3429 = tail call i32 @llvm.fshl.i32(i32 %add1690, i32 %add1690, i32 10) #7
  %xor1712 = xor i32 %add1700, %or.i3429
  %xor1713 = xor i32 %xor1712, %add1710
  %add1716 = add i32 %or.i3425, %39
  %add1718 = add i32 %add1716, %xor1713
  %or.i3430 = tail call i32 @llvm.fshl.i32(i32 %add1718, i32 %add1718, i32 11) #7
  %add1720 = add i32 %or.i3430, %or.i3427
  %or.i3431 = tail call i32 @llvm.fshl.i32(i32 %add1700, i32 %add1700, i32 10) #7
  %xor1722 = xor i32 %add1710, %or.i3431
  %xor1723 = xor i32 %xor1722, %add1720
  %add1726 = add i32 %or.i3427, %45
  %add1728 = add i32 %add1726, %xor1723
  %or.i3432 = tail call i32 @llvm.fshl.i32(i32 %add1728, i32 %add1728, i32 11) #7
  %or.i3433 = tail call i32 @llvm.fshl.i32(i32 %add1710, i32 %add1710, i32 10) #7
  %add1733 = add i32 %add855, %3
  %add1734 = add i32 %add1733, %or.i3433
  %add1736 = add i32 %or.i3273, %5
  %add1737 = add i32 %add1736, %or.i3431
  %58 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %add1737, ptr %arrayidx1, align 4
  %add1740 = add i32 %or.i3271, %7
  %add1741 = add i32 %add1740, %or.i3429
  %59 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %add1741, ptr %arrayidx2, align 4
  %add1730 = add i32 %or.i3269, %9
  %add1744 = add i32 %add1730, %or.i3429
  %add1745 = add i32 %add1744, %or.i3432
  %60 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add1745, ptr %arrayidx3, align 4
  %add866 = add i32 %or.i3269, %1
  %add1748 = add i32 %add866, %or.i3272
  %add1749 = add i32 %add1748, %add1720
  %61 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %add1749, ptr %arrayidx4, align 4
  %62 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %add1734, ptr %state, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_shash(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @__initcall__kmod_rmd160__226_361_rmd160_mod_init4, !1, !"__initcall__kmod_rmd160__226_361_rmd160_mod_init4", i1 false, i1 false}
!1 = !{!"../crypto/rmd160.c", i32 361, i32 1}
!2 = !{ptr @__exitcall_rmd160_mod_fini, !3, !"__exitcall_rmd160_mod_fini", i1 false, i1 false}
!3 = !{!"../crypto/rmd160.c", i32 362, i32 1}
!4 = !{ptr @__UNIQUE_ID_file227, !5, !"__UNIQUE_ID_file227", i1 false, i1 false}
!5 = !{!"../crypto/rmd160.c", i32 364, i32 1}
!6 = !{ptr @__UNIQUE_ID_license228, !5, !"__UNIQUE_ID_license228", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author229, !8, !"__UNIQUE_ID_author229", i1 false, i1 false}
!8 = !{!"../crypto/rmd160.c", i32 365, i32 1}
!9 = !{ptr @__UNIQUE_ID_description230, !10, !"__UNIQUE_ID_description230", i1 false, i1 false}
!10 = !{!"../crypto/rmd160.c", i32 366, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias_userspace231, !12, !"__UNIQUE_ID_alias_userspace231", i1 false, i1 false}
!12 = !{!"../crypto/rmd160.c", i32 367, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias_crypto232, !12, !"__UNIQUE_ID_alias_crypto232", i1 false, i1 false}
!14 = !{ptr @alg, !15, !"alg", i1 false, i1 false}
!15 = !{!"../crypto/rmd160.c", i32 337, i32 25}
!16 = !{ptr @rmd160_final.padding, !17, !"padding", i1 false, i1 false}
!17 = !{!"../crypto/rmd160.c", i32 315, i32 18}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
