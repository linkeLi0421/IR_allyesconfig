; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c_pt.bc'
source_filename = "../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ieee80211_crypto_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], [20 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i8, i32, ptr, ptr, [112 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, ptr, i32, [48 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.prism2_wep_data = type { i32, [14 x i8], i8, i8, %struct.arc4_ctx, %struct.arc4_ctx }
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

@__UNIQUE_ID_author339 = internal constant [21 x i8] c"author=Jouni Malinen\00", section ".modinfo", align 1
@__UNIQUE_ID_description340 = internal constant [31 x i8] c"description=Host AP crypt: WEP\00", section ".modinfo", align 1
@__UNIQUE_ID_license341 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@ieee80211_crypt_wep = internal global { %struct.ieee80211_crypto_ops, [44 x i8] } { %struct.ieee80211_crypto_ops { ptr @.str, ptr @prism2_wep_init, ptr @prism2_wep_deinit, ptr @prism2_wep_encrypt, ptr @prism2_wep_decrypt, ptr null, ptr null, ptr @prism2_wep_set_key, ptr @prism2_wep_get_key, ptr @prism2_wep_print_stats, i32 4, i32 4, ptr @__this_module }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"WEP\00", [28 x i8] zeroinitializer }, align 32
@__this_module = external dso_local global %struct.module, align 128
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"key[%d] alg=WEP len=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [20 x i8] c"ieee80211_crypt_wep\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 222, i32 36 }
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 223, i32 12 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private constant [60 x i8] c"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 216, i32 18 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author339, ptr @__UNIQUE_ID_description340, ptr @__UNIQUE_ID_license341, ptr @ieee80211_crypt_wep, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_crypt_wep to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_crypto_wep_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ieee80211_register_crypto_ops_rsl(ptr noundef nonnull @ieee80211_crypt_wep) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_register_crypto_ops_rsl(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_crypto_wep_exit() local_unnamed_addr #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @ieee80211_unregister_crypto_ops_rsl(ptr noundef nonnull @ieee80211_crypt_wep) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_unregister_crypto_ops_rsl(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @prism2_wep_init(i32 noundef %keyidx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2084) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = trunc i32 %keyidx to i8
  %key_idx = getelementptr inbounds %struct.prism2_wep_data, ptr %call7.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %key_idx to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %key_idx, align 1
  tail call void @get_random_bytes(ptr noundef nonnull %call7.i.i, i32 noundef 4) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @prism2_wep_deinit(ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree_sensitive(ptr noundef %priv) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_wep_encrypt(ptr noundef %skb, i32 noundef %hdr_len, ptr noundef %priv) #2 align 64 {
entry:
  %key = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %key) #10
  %0 = getelementptr inbounds [16 x i8], ptr %key, i32 0, i32 1
  %1 = getelementptr inbounds [16 x i8], ptr %key, i32 0, i32 2
  %2 = getelementptr inbounds [16 x i8], ptr %key, i32 0, i32 3
  %add.ptr = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %3 = getelementptr inbounds i8, ptr %key, i32 3
  %4 = call ptr @memset(ptr %3, i32 255, i32 13)
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %7 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub.i)
  %cmp = icmp ult i32 %sub.ptr.sub.i, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %9 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not.i = icmp eq i32 %10, 0
  br i1 %tobool.i.not.i, label %skb_tailroom.exit, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

skb_tailroom.exit:                                ; preds = %lor.lhs.false
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %11 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %13 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i117 = ptrtoint ptr %12 to i32
  %sub.ptr.rhs.cast.i118 = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i119 = sub i32 %sub.ptr.lhs.cast.i117, %sub.ptr.rhs.cast.i118
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub.i119)
  %cmp2 = icmp slt i32 %sub.ptr.sub.i119, 4
  br i1 %cmp2, label %skb_tailroom.exit.cleanup_crit_edge, label %lor.lhs.false3

skb_tailroom.exit.cleanup_crit_edge:              ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false3:                                   ; preds = %skb_tailroom.exit
  %len4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %15 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %hdr_len)
  %cmp5 = icmp ult i32 %16, %hdr_len
  br i1 %cmp5, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %sub = sub i32 %16, %hdr_len
  %call7 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 4) #10
  %add.ptr8 = getelementptr i8, ptr %call7, i32 4
  %17 = call ptr @memmove(ptr %call7, ptr %add.ptr8, i32 %hdr_len)
  %add.ptr9 = getelementptr i8, ptr %call7, i32 %hdr_len
  %key_len = getelementptr inbounds %struct.prism2_wep_data, ptr %priv, i32 0, i32 2
  %18 = ptrtoint ptr %key_len to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %key_len, align 2
  %conv = zext i8 %19 to i32
  %add = add nuw nsw i32 %conv, 3
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %priv, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %priv, align 4
  %and = and i32 %inc, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 65280, i32 %and)
  %cmp11 = icmp eq i32 %and, 65280
  br i1 %cmp11, label %if.then13, label %if.end.if.end27_crit_edge

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then13:                                        ; preds = %if.end
  %shr = lshr i32 %inc, 16
  %conv17 = and i32 %shr, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv17)
  %cmp18 = icmp ugt i32 %conv17, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %conv17, i32 %add)
  %cmp21 = icmp ult i32 %conv17, %add
  %or.cond = select i1 %cmp18, i1 %cmp21, i1 false
  br i1 %or.cond, label %if.then23, label %if.then13.if.end27_crit_edge

if.then13.if.end27_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then23:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  %add25 = add i32 %21, 257
  %22 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add25, ptr %priv, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.then13.if.end27_crit_edge, %if.end.if.end27_crit_edge
  %23 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %priv, align 4
  %shr29 = lshr i32 %24, 16
  %conv31 = trunc i32 %shr29 to i8
  %25 = ptrtoint ptr %key to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv31, ptr %key, align 1
  %incdec.ptr = getelementptr i8, ptr %add.ptr9, i32 1
  %26 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv31, ptr %add.ptr9, align 1
  %27 = load i32, ptr %priv, align 4
  %shr33 = lshr i32 %27, 8
  %conv35 = trunc i32 %shr33 to i8
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv35, ptr %0, align 1
  %incdec.ptr37 = getelementptr i8, ptr %incdec.ptr, i32 1
  %29 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv35, ptr %incdec.ptr, align 1
  %30 = load i32, ptr %priv, align 4
  %conv40 = trunc i32 %30 to i8
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv40, ptr %1, align 1
  %incdec.ptr42 = getelementptr i8, ptr %incdec.ptr37, i32 1
  %32 = ptrtoint ptr %incdec.ptr37 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv40, ptr %incdec.ptr37, align 1
  %key_idx = getelementptr inbounds %struct.prism2_wep_data, ptr %priv, i32 0, i32 3
  %33 = ptrtoint ptr %key_idx to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %key_idx, align 1
  %shl = shl i8 %34, 6
  %35 = ptrtoint ptr %incdec.ptr42 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %shl, ptr %incdec.ptr42, align 1
  %key48 = getelementptr inbounds %struct.prism2_wep_data, ptr %priv, i32 0, i32 1
  %36 = ptrtoint ptr %key_len to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %key_len, align 2
  %conv51 = zext i8 %37 to i32
  %38 = call ptr @memcpy(ptr %2, ptr %key48, i32 %conv51)
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load = load i8, ptr %add.ptr, align 2
  %bf.clear = and i8 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear)
  %tobool.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool.not, label %if.then52, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then52:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr45 = getelementptr i8, ptr %incdec.ptr42, i32 1
  %call53 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %incdec.ptr45, i32 noundef %sub) #14
  %neg = xor i32 %call53, -1
  %call54 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 4) #10
  %conv55 = trunc i32 %neg to i8
  %40 = ptrtoint ptr %call54 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv55, ptr %call54, align 1
  %shr57 = lshr i32 %neg, 8
  %conv58 = trunc i32 %shr57 to i8
  %arrayidx59 = getelementptr i8, ptr %call54, i32 1
  %41 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv58, ptr %arrayidx59, align 1
  %shr60 = lshr i32 %neg, 16
  %conv61 = trunc i32 %shr60 to i8
  %arrayidx62 = getelementptr i8, ptr %call54, i32 2
  %42 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv61, ptr %arrayidx62, align 1
  %shr63 = lshr i32 %neg, 24
  %conv64 = trunc i32 %shr63 to i8
  %arrayidx65 = getelementptr i8, ptr %call54, i32 3
  %43 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv64, ptr %arrayidx65, align 1
  %tx_ctx_arc4 = getelementptr inbounds %struct.prism2_wep_data, ptr %priv, i32 0, i32 5
  %call67 = call i32 @arc4_setkey(ptr noundef %tx_ctx_arc4, ptr noundef nonnull %key, i32 noundef %add) #10
  %add69 = add i32 %sub, 4
  call void @arc4_crypt(ptr noundef %tx_ctx_arc4, ptr noundef %incdec.ptr45, ptr noundef %incdec.ptr45, i32 noundef %add69) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then52, %if.end27.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %skb_tailroom.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %lor.lhs.false3.cleanup_crit_edge ], [ -1, %skb_tailroom.exit.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ 0, %if.then52 ], [ 0, %if.end27.cleanup_crit_edge ], [ -1, %lor.lhs.false.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %key) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_wep_decrypt(ptr noundef %skb, i32 noundef %hdr_len, ptr noundef %priv) #2 align 64 {
entry:
  %key = alloca [16 x i8], align 1
  %icv = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %key) #10
  %0 = getelementptr inbounds [16 x i8], ptr %key, i32 0, i32 3
  %add.ptr = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %1 = getelementptr inbounds i8, ptr %key, i32 3
  %2 = call ptr @memset(ptr %1, i32 255, i32 13)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %icv) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = getelementptr inbounds [16 x i8], ptr %key, i32 0, i32 2
  %9 = getelementptr inbounds [16 x i8], ptr %key, i32 0, i32 1
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %add.ptr1 = getelementptr i8, ptr %11, i32 %hdr_len
  %incdec.ptr = getelementptr i8, ptr %add.ptr1, i32 1
  %12 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr1, align 1
  %14 = ptrtoint ptr %key to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %key, align 1
  %incdec.ptr2 = getelementptr i8, ptr %incdec.ptr, i32 1
  %15 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %incdec.ptr, align 1
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %9, align 1
  %incdec.ptr4 = getelementptr i8, ptr %incdec.ptr2, i32 1
  %18 = ptrtoint ptr %incdec.ptr2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %incdec.ptr2, align 1
  %20 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %8, align 1
  %incdec.ptr6 = getelementptr i8, ptr %incdec.ptr4, i32 1
  %21 = ptrtoint ptr %incdec.ptr4 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %incdec.ptr4, align 1
  %23 = lshr i8 %22, 6
  %key_idx = getelementptr inbounds %struct.prism2_wep_data, ptr %priv, i32 0, i32 3
  %24 = ptrtoint ptr %key_idx to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %key_idx, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %25)
  %cmp10.not = icmp eq i8 %23, %25
  br i1 %cmp10.not, label %if.end13, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %key_len = getelementptr inbounds %struct.prism2_wep_data, ptr %priv, i32 0, i32 2
  %26 = ptrtoint ptr %key_len to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %key_len, align 2
  %conv14 = zext i8 %27 to i32
  %key18 = getelementptr inbounds %struct.prism2_wep_data, ptr %priv, i32 0, i32 1
  %28 = call ptr @memcpy(ptr %0, ptr %key18, i32 %conv14)
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load = load i8, ptr %add.ptr, align 2
  %bf.clear = and i8 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear)
  %tobool.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool.not, label %if.then24, label %if.end13.if.end47_crit_edge

if.end13.if.end47_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then24:                                        ; preds = %if.end13
  %sub = sub i32 %7, %hdr_len
  %sub23 = add i32 %sub, -8
  %add15 = add nuw nsw i32 %conv14, 3
  %rx_ctx_arc4 = getelementptr inbounds %struct.prism2_wep_data, ptr %priv, i32 0, i32 4
  %call = call i32 @arc4_setkey(ptr noundef %rx_ctx_arc4, ptr noundef nonnull %key, i32 noundef %add15) #10
  %add27 = add i32 %sub, -4
  call void @arc4_crypt(ptr noundef %rx_ctx_arc4, ptr noundef %incdec.ptr6, ptr noundef %incdec.ptr6, i32 noundef %add27) #10
  %call28 = call i32 @crc32_le(i32 noundef -1, ptr noundef %incdec.ptr6, i32 noundef %sub23) #14
  %neg = xor i32 %call28, -1
  %conv29 = trunc i32 %neg to i8
  %30 = ptrtoint ptr %icv to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv29, ptr %icv, align 1
  %shr31 = lshr i32 %neg, 8
  %conv32 = trunc i32 %shr31 to i8
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv32, ptr %3, align 1
  %shr34 = lshr i32 %neg, 16
  %conv35 = trunc i32 %shr34 to i8
  %32 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv35, ptr %4, align 1
  %shr37 = lshr i32 %neg, 24
  %conv38 = trunc i32 %shr37 to i8
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv38, ptr %5, align 1
  %add.ptr41 = getelementptr i8, ptr %incdec.ptr6, i32 %sub23
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %icv, ptr noundef dereferenceable(4) %add.ptr41, i32 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp43.not = icmp eq i32 %bcmp, 0
  br i1 %cmp43.not, label %if.then24.if.end47_crit_edge, label %if.then24.cleanup_crit_edge

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then24.if.end47_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.end47:                                         ; preds = %if.then24.if.end47_crit_edge, %if.end13.if.end47_crit_edge
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 4
  %add.ptr49 = getelementptr i8, ptr %35, i32 4
  %36 = call ptr @memmove(ptr %add.ptr49, ptr %35, i32 %hdr_len)
  %call51 = call ptr @skb_pull(ptr noundef %skb, i32 noundef 4) #10
  %37 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len, align 4
  %sub53 = add i32 %38, -4
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub53) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.then24.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end47 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -2, %if.then24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %icv) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %key) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @prism2_wep_set_key(ptr nocapture noundef readonly %key, i32 noundef %len, ptr nocapture noundef readnone %seq, ptr nocapture noundef writeonly %priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %len)
  %0 = icmp ugt i32 %len, 13
  br i1 %0, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %key2 = getelementptr inbounds %struct.prism2_wep_data, ptr %priv, i32 0, i32 1
  %1 = call ptr @memcpy(ptr %key2, ptr %key, i32 %len)
  %conv = trunc i32 %len to i8
  %key_len = getelementptr inbounds %struct.prism2_wep_data, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %key_len to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %key_len, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @prism2_wep_get_key(ptr nocapture noundef writeonly %key, i32 noundef %len, ptr nocapture noundef readnone %seq, ptr nocapture noundef readonly %priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %key_len = getelementptr inbounds %struct.prism2_wep_data, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %key_len to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %key_len, align 2
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %len)
  %cmp = icmp sgt i32 %conv, %len
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %key2 = getelementptr inbounds %struct.prism2_wep_data, ptr %priv, i32 0, i32 1
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

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @prism2_wep_print_stats(ptr noundef writeonly %p, ptr nocapture noundef readonly %priv) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %key_idx = getelementptr inbounds %struct.prism2_wep_data, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %key_idx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %key_idx, align 1
  %conv = zext i8 %1 to i32
  %key_len = getelementptr inbounds %struct.prism2_wep_data, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %key_len to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %key_len, align 2
  %conv1 = zext i8 %3 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %p, ptr noundef nonnull @.str.1, i32 noundef %conv, i32 noundef %conv1)
  %add.ptr = getelementptr i8, ptr %p, i32 %call
  ret ptr %add.ptr
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arc4_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arc4_crypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind readonly willreturn }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @__UNIQUE_ID_author339, !1, !"__UNIQUE_ID_author339", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c", i32 21, i32 1}
!2 = !{ptr @__UNIQUE_ID_description340, !3, !"__UNIQUE_ID_description340", i1 false, i1 false}
!3 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c", i32 22, i32 1}
!4 = !{ptr @__UNIQUE_ID_license341, !5, !"__UNIQUE_ID_license341", i1 false, i1 false}
!5 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c", i32 23, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c", i32 223, i32 12}
!8 = !{ptr @ieee80211_crypt_wep, !9, !"ieee80211_crypt_wep", i1 false, i1 false}
!9 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c", i32 222, i32 36}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c", i32 216, i32 18}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
