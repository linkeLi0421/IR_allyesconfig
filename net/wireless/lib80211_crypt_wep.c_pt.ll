; ModuleID = '/llk/IR_all_yes/net/wireless/lib80211_crypt_wep.c_pt.bc'
source_filename = "../net/wireless/lib80211_crypt_wep.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lib80211_crypto_ops = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.lib80211_wep_data = type { i32, [14 x i8], i8, i8, %struct.arc4_ctx, %struct.arc4_ctx }
%struct.arc4_ctx = type { [256 x i32], i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.97, %union.anon.98, [48 x i8], %union.anon.99, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.101, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.97 = type { ptr }
%union.anon.98 = type { i64 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { i32, ptr }
%union.anon.101 = type { %struct.anon.102 }
%struct.anon.102 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.103, i32, i32, i32, i16, i16, %union.anon.105, i32, %union.anon.106, %union.anon.107, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.103 = type { i32 }
%union.anon.105 = type { i32 }
%union.anon.106 = type { i32 }
%union.anon.107 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@__UNIQUE_ID_author339 = internal constant [40 x i8] c"lib80211_crypt_wep.author=Jouni Malinen\00", section ".modinfo", align 1
@__UNIQUE_ID_description340 = internal constant [51 x i8] c"lib80211_crypt_wep.description=lib80211 crypt: WEP\00", section ".modinfo", align 1
@__UNIQUE_ID_file341 = internal constant [56 x i8] c"lib80211_crypt_wep.file=net/wireless/lib80211_crypt_wep\00", section ".modinfo", align 1
@__UNIQUE_ID_license342 = internal constant [31 x i8] c"lib80211_crypt_wep.license=GPL\00", section ".modinfo", align 1
@lib80211_crypt_wep = internal global { %struct.lib80211_crypto_ops, [52 x i8] } { %struct.lib80211_crypto_ops { ptr @.str, %struct.list_head zeroinitializer, ptr @lib80211_wep_init, ptr @lib80211_wep_deinit, ptr @lib80211_wep_encrypt, ptr @lib80211_wep_decrypt, ptr null, ptr null, ptr @lib80211_wep_set_key, ptr @lib80211_wep_get_key, ptr @lib80211_wep_print_stats, ptr null, ptr null, i32 4, i32 4, i32 0, i32 0, ptr null }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_lib80211_crypt_wep__343_255_lib80211_crypto_wep_init6 = internal global ptr @lib80211_crypto_wep_init, section ".initcall6.init", align 4
@__exitcall_lib80211_crypto_wep_exit = internal global ptr @lib80211_crypto_wep_exit, section ".exitcall.exit", align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"WEP\00", [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"key[%d] alg=WEP len=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [19 x i8] c"lib80211_crypt_wep\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 229, i32 35 }
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 230, i32 10 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private constant [37 x i8] c"../net/wireless/lib80211_crypt_wep.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 226, i32 16 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_author339, ptr @__UNIQUE_ID_description340, ptr @__UNIQUE_ID_file341, ptr @__UNIQUE_ID_license342, ptr @__exitcall_lib80211_crypto_wep_exit, ptr @__initcall__kmod_lib80211_crypt_wep__343_255_lib80211_crypto_wep_init6, ptr @lib80211_crypto_wep_exit, ptr @lib80211_crypt_wep, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lib80211_crypt_wep to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lib80211_crypto_wep_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @lib80211_unregister_crypto_ops(ptr noundef nonnull @lib80211_crypt_wep) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lib80211_unregister_crypto_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lib80211_crypto_wep_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @lib80211_register_crypto_ops(ptr noundef nonnull @lib80211_crypt_wep) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @lib80211_wep_init(i32 noundef %keyidx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 2084) #11
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i32 %keyidx to i8
  %key_idx = getelementptr inbounds %struct.lib80211_wep_data, ptr %call7.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %key_idx to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %key_idx, align 1
  tail call void @get_random_bytes(ptr noundef nonnull %call7.i.i, i32 noundef 4) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lib80211_wep_deinit(ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree_sensitive(ptr noundef %priv) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lib80211_wep_encrypt(ptr noundef %skb, i32 noundef %hdr_len, ptr noundef %priv) #2 align 64 {
entry:
  %key = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %key) #8
  %0 = getelementptr inbounds [16 x i8], ptr %key, i32 0, i32 3
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %1 = getelementptr inbounds i8, ptr %key, i32 3
  %2 = call ptr @memset(ptr %1, i32 255, i32 13)
  %3 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not.i = icmp eq i32 %4, 0
  br i1 %tobool.i.not.i, label %skb_tailroom.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

skb_tailroom.exit:                                ; preds = %entry
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %5 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %7 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub.i)
  %cmp = icmp slt i32 %sub.ptr.sub.i, 4
  br i1 %cmp, label %skb_tailroom.exit.cleanup_crit_edge, label %if.end

skb_tailroom.exit.cleanup_crit_edge:              ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %skb_tailroom.exit
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %11 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub.i.i)
  %cmp.i = icmp ult i32 %sub.ptr.sub.i.i, 4
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %lor.lhs.false.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %13 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %hdr_len)
  %cmp1.i = icmp ult i32 %14, %hdr_len
  br i1 %cmp1.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call2.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 4) #8
  %add.ptr.i = getelementptr i8, ptr %call2.i, i32 4
  %15 = call ptr @memmove(ptr %call2.i, ptr %add.ptr.i, i32 %hdr_len)
  %add.ptr3.i = getelementptr i8, ptr %call2.i, i32 %hdr_len
  %key_len.i = getelementptr inbounds %struct.lib80211_wep_data, ptr %priv, i32 0, i32 2
  %16 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %key_len.i, align 2
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %priv, align 4
  %inc.i = add i32 %19, 1
  store i32 %inc.i, ptr %priv, align 4
  %and.i = and i32 %inc.i, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 65280, i32 %and.i)
  %cmp5.i = icmp eq i32 %and.i, 65280
  br i1 %cmp5.i, label %if.then7.i, label %if.end.i.if.end3_crit_edge

if.end.i.if.end3_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then7.i:                                       ; preds = %if.end.i
  %conv.i = zext i8 %17 to i32
  %add.i = add nuw nsw i32 %conv.i, 3
  %shr.i = lshr i32 %inc.i, 16
  %conv11.i = and i32 %shr.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv11.i)
  %cmp12.i = icmp ugt i32 %conv11.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11.i, i32 %add.i)
  %cmp15.i = icmp ult i32 %conv11.i, %add.i
  %or.cond.i = select i1 %cmp12.i, i1 %cmp15.i, i1 false
  br i1 %or.cond.i, label %if.then17.i, label %if.then7.i.if.end3_crit_edge

if.then7.i.if.end3_crit_edge:                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then17.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  %add19.i = add i32 %19, 257
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add19.i, ptr %priv, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then17.i, %if.then7.i.if.end3_crit_edge, %if.end.i.if.end3_crit_edge
  %21 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %priv, align 4
  %shr23.i = lshr i32 %22, 16
  %conv25.i = trunc i32 %shr23.i to i8
  %incdec.ptr.i = getelementptr i8, ptr %add.ptr3.i, i32 1
  %23 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv25.i, ptr %add.ptr3.i, align 1
  %24 = load i32, ptr %priv, align 4
  %shr27.i = lshr i32 %24, 8
  %conv29.i = trunc i32 %shr27.i to i8
  %incdec.ptr30.i = getelementptr i8, ptr %incdec.ptr.i, i32 1
  %25 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv29.i, ptr %incdec.ptr.i, align 1
  %26 = load i32, ptr %priv, align 4
  %conv33.i = trunc i32 %26 to i8
  %incdec.ptr34.i = getelementptr i8, ptr %incdec.ptr30.i, i32 1
  %27 = ptrtoint ptr %incdec.ptr30.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv33.i, ptr %incdec.ptr30.i, align 1
  %key_idx.i = getelementptr inbounds %struct.lib80211_wep_data, ptr %priv, i32 0, i32 3
  %28 = ptrtoint ptr %key_idx.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %key_idx.i, align 1
  %shl.i = shl i8 %29, 6
  %30 = ptrtoint ptr %incdec.ptr34.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %shl.i, ptr %incdec.ptr34.i, align 1
  %31 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i56 = getelementptr i8, ptr %32, i32 %hdr_len
  %33 = call ptr @memcpy(ptr %key, ptr %add.ptr.i56, i32 3)
  %key5 = getelementptr inbounds %struct.lib80211_wep_data, ptr %priv, i32 0, i32 1
  %34 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %key_len.i, align 2
  %conv = zext i8 %35 to i32
  %36 = call ptr @memcpy(ptr %0, ptr %key5, i32 %conv)
  %37 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len.i, align 4
  %sub = sub i32 %38, %hdr_len
  %sub8 = add i32 %sub, -4
  %add.ptr10 = getelementptr i8, ptr %add.ptr.i56, i32 4
  %add = add nuw nsw i32 %conv, 3
  %call13 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %add.ptr10, i32 noundef %sub8) #12
  %neg = xor i32 %call13, -1
  %call14 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 4) #8
  %conv15 = trunc i32 %neg to i8
  %39 = ptrtoint ptr %call14 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv15, ptr %call14, align 1
  %shr = lshr i32 %neg, 8
  %conv16 = trunc i32 %shr to i8
  %arrayidx17 = getelementptr i8, ptr %call14, i32 1
  %40 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv16, ptr %arrayidx17, align 1
  %shr18 = lshr i32 %neg, 16
  %conv19 = trunc i32 %shr18 to i8
  %arrayidx20 = getelementptr i8, ptr %call14, i32 2
  %41 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv19, ptr %arrayidx20, align 1
  %shr21 = lshr i32 %neg, 24
  %conv22 = trunc i32 %shr21 to i8
  %arrayidx23 = getelementptr i8, ptr %call14, i32 3
  %42 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv22, ptr %arrayidx23, align 1
  %tx_ctx = getelementptr inbounds %struct.lib80211_wep_data, ptr %priv, i32 0, i32 4
  %call25 = call i32 @arc4_setkey(ptr noundef %tx_ctx, ptr noundef nonnull %key, i32 noundef %add) #8
  call void @arc4_crypt(ptr noundef %tx_ctx, ptr noundef %add.ptr10, ptr noundef %add.ptr10, i32 noundef %sub) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %lor.lhs.false.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %skb_tailroom.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -1, %skb_tailroom.exit.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ -1, %lor.lhs.false.i.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %key) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lib80211_wep_decrypt(ptr noundef %skb, i32 noundef %hdr_len, ptr noundef %priv) #2 align 64 {
entry:
  %key = alloca [16 x i8], align 1
  %icv = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %key) #8
  %0 = getelementptr inbounds [16 x i8], ptr %key, i32 0, i32 3
  %1 = getelementptr inbounds i8, ptr %key, i32 3
  %2 = call ptr @memset(ptr %1, i32 255, i32 13)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %icv) #8
  %3 = getelementptr inbounds [4 x i8], ptr %icv, i32 0, i32 1
  %4 = getelementptr inbounds [4 x i8], ptr %icv, i32 0, i32 2
  %5 = getelementptr inbounds [4 x i8], ptr %icv, i32 0, i32 3
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %add = add i32 %hdr_len, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add)
  %cmp = icmp ult i32 %7, %add
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = getelementptr inbounds [16 x i8], ptr %key, i32 0, i32 2
  %9 = getelementptr inbounds [16 x i8], ptr %key, i32 0, i32 1
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 %hdr_len
  %incdec.ptr = getelementptr i8, ptr %add.ptr, i32 1
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr, align 1
  %14 = ptrtoint ptr %key to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %key, align 1
  %incdec.ptr1 = getelementptr i8, ptr %incdec.ptr, i32 1
  %15 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %incdec.ptr, align 1
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %9, align 1
  %incdec.ptr3 = getelementptr i8, ptr %incdec.ptr1, i32 1
  %18 = ptrtoint ptr %incdec.ptr1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %incdec.ptr1, align 1
  %20 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %8, align 1
  %21 = ptrtoint ptr %incdec.ptr3 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %incdec.ptr3, align 1
  %23 = lshr i8 %22, 6
  %key_idx = getelementptr inbounds %struct.lib80211_wep_data, ptr %priv, i32 0, i32 3
  %24 = ptrtoint ptr %key_idx to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %key_idx, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %25)
  %cmp9.not = icmp eq i8 %23, %25
  br i1 %cmp9.not, label %if.end12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %incdec.ptr5 = getelementptr i8, ptr %incdec.ptr3, i32 1
  %key_len = getelementptr inbounds %struct.lib80211_wep_data, ptr %priv, i32 0, i32 2
  %26 = ptrtoint ptr %key_len to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %key_len, align 2
  %conv13 = zext i8 %27 to i32
  %add14 = add nuw nsw i32 %conv13, 3
  %key16 = getelementptr inbounds %struct.lib80211_wep_data, ptr %priv, i32 0, i32 1
  %28 = call ptr @memcpy(ptr %0, ptr %key16, i32 %conv13)
  %sub = sub i32 %7, %hdr_len
  %sub21 = add i32 %sub, -8
  %rx_ctx = getelementptr inbounds %struct.lib80211_wep_data, ptr %priv, i32 0, i32 5
  %call = call i32 @arc4_setkey(ptr noundef %rx_ctx, ptr noundef nonnull %key, i32 noundef %add14) #8
  %add24 = add i32 %sub, -4
  call void @arc4_crypt(ptr noundef %rx_ctx, ptr noundef %incdec.ptr5, ptr noundef %incdec.ptr5, i32 noundef %add24) #8
  %call25 = call i32 @crc32_le(i32 noundef -1, ptr noundef %incdec.ptr5, i32 noundef %sub21) #12
  %neg = xor i32 %call25, -1
  %conv26 = trunc i32 %neg to i8
  %29 = ptrtoint ptr %icv to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv26, ptr %icv, align 1
  %shr28 = lshr i32 %neg, 8
  %conv29 = trunc i32 %shr28 to i8
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv29, ptr %3, align 1
  %shr31 = lshr i32 %neg, 16
  %conv32 = trunc i32 %shr31 to i8
  %31 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv32, ptr %4, align 1
  %shr34 = lshr i32 %neg, 24
  %conv35 = trunc i32 %shr34 to i8
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv35, ptr %5, align 1
  %add.ptr38 = getelementptr i8, ptr %incdec.ptr5, i32 %sub21
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %icv, ptr noundef dereferenceable(4) %add.ptr38, i32 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp40.not = icmp eq i32 %bcmp, 0
  br i1 %cmp40.not, label %if.end43, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end43:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 4
  %add.ptr45 = getelementptr i8, ptr %34, i32 4
  %35 = call ptr @memmove(ptr %add.ptr45, ptr %34, i32 %hdr_len)
  %call47 = call ptr @skb_pull(ptr noundef %skb, i32 noundef 4) #8
  %36 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len, align 4
  %sub49 = add i32 %37, -4
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub49) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end43 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -2, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %icv) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %key) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lib80211_wep_set_key(ptr nocapture noundef readonly %key, i32 noundef %len, ptr nocapture noundef readnone %seq, ptr nocapture noundef writeonly %priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %len)
  %0 = icmp ugt i32 %len, 13
  br i1 %0, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %key2 = getelementptr inbounds %struct.lib80211_wep_data, ptr %priv, i32 0, i32 1
  %1 = call ptr @memcpy(ptr %key2, ptr %key, i32 %len)
  %conv = trunc i32 %len to i8
  %key_len = getelementptr inbounds %struct.lib80211_wep_data, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %key_len to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %key_len, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lib80211_wep_get_key(ptr nocapture noundef writeonly %key, i32 noundef %len, ptr nocapture noundef readnone %seq, ptr nocapture noundef readonly %priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %key_len = getelementptr inbounds %struct.lib80211_wep_data, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %key_len to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %key_len, align 2
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %len)
  %cmp = icmp sgt i32 %conv, %len
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %key2 = getelementptr inbounds %struct.lib80211_wep_data, ptr %priv, i32 0, i32 1
  %2 = call ptr @memcpy(ptr %key, ptr %key2, i32 %conv)
  %3 = ptrtoint ptr %key_len to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %key_len, align 2
  %conv6 = zext i8 %4 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv6, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lib80211_wep_print_stats(ptr noundef %m, ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %key_idx = getelementptr inbounds %struct.lib80211_wep_data, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %key_idx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %key_idx, align 1
  %conv = zext i8 %1 to i32
  %key_len = getelementptr inbounds %struct.lib80211_wep_data, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %key_len to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %key_len, align 2
  %conv1 = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.1, i32 noundef %conv, i32 noundef %conv1) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arc4_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arc4_crypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lib80211_register_crypto_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind readonly willreturn }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @__UNIQUE_ID_author339, !1, !"__UNIQUE_ID_author339", i1 false, i1 false}
!1 = !{!"../net/wireless/lib80211_crypt_wep.c", i32 25, i32 1}
!2 = !{ptr @__UNIQUE_ID_description340, !3, !"__UNIQUE_ID_description340", i1 false, i1 false}
!3 = !{!"../net/wireless/lib80211_crypt_wep.c", i32 26, i32 1}
!4 = !{ptr @__UNIQUE_ID_file341, !5, !"__UNIQUE_ID_file341", i1 false, i1 false}
!5 = !{!"../net/wireless/lib80211_crypt_wep.c", i32 27, i32 1}
!6 = !{ptr @__UNIQUE_ID_license342, !5, !"__UNIQUE_ID_license342", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_lib80211_crypt_wep__343_255_lib80211_crypto_wep_init6, !8, !"__initcall__kmod_lib80211_crypt_wep__343_255_lib80211_crypto_wep_init6", i1 false, i1 false}
!8 = !{!"../net/wireless/lib80211_crypt_wep.c", i32 255, i32 1}
!9 = !{ptr @__exitcall_lib80211_crypto_wep_exit, !10, !"__exitcall_lib80211_crypto_wep_exit", i1 false, i1 false}
!10 = !{!"../net/wireless/lib80211_crypt_wep.c", i32 256, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/wireless/lib80211_crypt_wep.c", i32 230, i32 10}
!13 = !{ptr @lib80211_crypt_wep, !14, !"lib80211_crypt_wep", i1 false, i1 false}
!14 = !{!"../net/wireless/lib80211_crypt_wep.c", i32 229, i32 35}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/wireless/lib80211_crypt_wep.c", i32 226, i32 16}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
