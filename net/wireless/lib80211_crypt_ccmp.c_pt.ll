; ModuleID = '/llk/IR_all_yes/net/wireless/lib80211_crypt_ccmp.c_pt.bc'
source_filename = "../net/wireless/lib80211_crypt_ccmp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lib80211_crypto_ops = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lib80211_ccmp_data = type { [16 x i8], i32, [6 x i8], [6 x i8], i32, i32, i32, i32, ptr, [32 x i8], [32 x i8] }
%struct.crypto_aead = type { i32, i32, [120 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
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
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.page = type { i32, %union.anon.9, %union.anon.83, %struct.atomic_t, i32 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.83 = type { %struct.atomic_t }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [84 x i8], [0 x ptr] }

@__UNIQUE_ID_author339 = internal constant [41 x i8] c"lib80211_crypt_ccmp.author=Jouni Malinen\00", section ".modinfo", align 1
@__UNIQUE_ID_description340 = internal constant [52 x i8] c"lib80211_crypt_ccmp.description=Host AP crypt: CCMP\00", section ".modinfo", align 1
@__UNIQUE_ID_file341 = internal constant [58 x i8] c"lib80211_crypt_ccmp.file=net/wireless/lib80211_crypt_ccmp\00", section ".modinfo", align 1
@__UNIQUE_ID_license342 = internal constant [32 x i8] c"lib80211_crypt_ccmp.license=GPL\00", section ".modinfo", align 1
@lib80211_crypt_ccmp = internal global { %struct.lib80211_crypto_ops, [52 x i8] } { %struct.lib80211_crypto_ops { ptr @.str, %struct.list_head zeroinitializer, ptr @lib80211_ccmp_init, ptr @lib80211_ccmp_deinit, ptr @lib80211_ccmp_encrypt, ptr @lib80211_ccmp_decrypt, ptr null, ptr null, ptr @lib80211_ccmp_set_key, ptr @lib80211_ccmp_get_key, ptr @lib80211_ccmp_print_stats, ptr null, ptr null, i32 8, i32 8, i32 0, i32 0, ptr null }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_lib80211_crypt_ccmp__343_447_lib80211_crypto_ccmp_init6 = internal global ptr @lib80211_crypto_ccmp_init, section ".initcall6.init", align 4
@__exitcall_lib80211_crypto_ccmp_exit = internal global ptr @lib80211_crypto_ccmp_exit, section ".exitcall.exit", align 4
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CCMP\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ccm(aes)\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@lib80211_ccmp_decrypt.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lib80211_crypt_ccmp\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lib80211_ccmp_decrypt\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"net/wireless/lib80211_crypt_ccmp.c\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"CCMP: received packet without ExtIV flag from %pM\0A\00", [45 x i8] zeroinitializer }, align 32
@lib80211_ccmp_decrypt.descriptor.6 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.7, i8 0, i8 71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"CCMP: RX tkey->key_idx=%d frame keyidx=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@lib80211_ccmp_decrypt.descriptor.8 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.9, i8 0, i8 72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"CCMP: received packet from %pM with keyid=%d that does not have a configured key\0A\00", [46 x i8] zeroinitializer }, align 32
@lib80211_ccmp_decrypt.descriptor.10 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.11, i8 0, i8 76, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"CCMP: replay detected: STA=%pM previous PN %02x%02x%02x%02x%02x%02x received PN %02x%02x%02x%02x%02x%02x\0A\00", [54 x i8] zeroinitializer }, align 32
@lib80211_ccmp_decrypt.descriptor.12 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.13, i8 0, i8 83, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"CCMP: decrypt failed: STA=%pM (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [137 x i8], [55 x i8] } { [137 x i8] c"key[%d] alg=CCMP key_set=%d tx_pn=%02x%02x%02x%02x%02x%02x rx_pn=%02x%02x%02x%02x%02x%02x format_errors=%d replays=%d decrypt_errors=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 16]
@___asan_gen_.15 = private unnamed_addr constant [20 x i8] c"lib80211_crypt_ccmp\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 421, i32 35 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 422, i32 10 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 68, i32 32 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 276, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 283, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 288, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 303, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 331, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private constant [38 x i8] c"../net/wireless/lib80211_crypt_ccmp.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 407, i32 6 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author339, ptr @__UNIQUE_ID_description340, ptr @__UNIQUE_ID_file341, ptr @__UNIQUE_ID_license342, ptr @__exitcall_lib80211_crypto_ccmp_exit, ptr @__initcall__kmod_lib80211_crypt_ccmp__343_447_lib80211_crypto_ccmp_init6, ptr @lib80211_crypto_ccmp_exit, ptr @lib80211_crypt_ccmp, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lib80211_crypt_ccmp to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 137, i32 192, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lib80211_crypto_ccmp_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @lib80211_unregister_crypto_ops(ptr noundef nonnull @lib80211_crypt_ccmp) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lib80211_unregister_crypto_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lib80211_crypto_ccmp_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @lib80211_register_crypto_ops(ptr noundef nonnull @lib80211_crypt_ccmp) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @lib80211_ccmp_init(i32 noundef %key_idx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 116) #12
  %cond = icmp eq ptr %call7.i.i, null
  br i1 %cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %key_idx1 = getelementptr inbounds %struct.lib80211_ccmp_data, ptr %call7.i.i, i32 0, i32 7
  %1 = ptrtoint ptr %key_idx1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %key_idx, ptr %key_idx1, align 4
  %call2 = tail call ptr @crypto_alloc_aead(ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef 128) #9
  %tfm = getelementptr inbounds %struct.lib80211_ccmp_data, ptr %call7.i.i, i32 0, i32 8
  %2 = ptrtoint ptr %tfm to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %tfm, align 8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %tfm to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %tfm, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %if.then5 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lib80211_ccmp_deinit(ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %priv, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %tfm = getelementptr inbounds %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %1, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %1, ptr noundef %base.i.i) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %priv) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lib80211_ccmp_encrypt(ptr noundef %skb, i32 noundef %hdr_len, ptr noundef %priv) #2 align 64 {
entry:
  %sg = alloca [2 x %struct.scatterlist], align 4
  %iv = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sg) #9
  %0 = call ptr @memset(ptr %sg, i32 255, i32 40)
  %tx_aad = getelementptr inbounds %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iv) #9
  %1 = getelementptr inbounds [16 x i8], ptr %iv, i32 0, i32 1
  %2 = getelementptr inbounds [16 x i8], ptr %iv, i32 0, i32 2
  %3 = getelementptr inbounds [16 x i8], ptr %iv, i32 0, i32 8
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %4 = getelementptr inbounds i8, ptr %iv, i32 14
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 -1, ptr %4, align 1
  %6 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not.i = icmp eq i32 %7, 0
  br i1 %tobool.i.not.i, label %skb_tailroom.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

skb_tailroom.exit:                                ; preds = %entry
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.ptr.sub.i)
  %cmp = icmp slt i32 %sub.ptr.sub.i, 8
  br i1 %cmp, label %skb_tailroom.exit.cleanup_crit_edge, label %lor.lhs.false

skb_tailroom.exit.cleanup_crit_edge:              ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %skb_tailroom.exit
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %12 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %hdr_len)
  %cmp2 = icmp ult i32 %13, %hdr_len
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %sub = sub i32 %13, %hdr_len
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %14 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %16 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.ptr.sub.i.i)
  %cmp.i = icmp ult i32 %sub.ptr.sub.i.i, 8
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end6.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6.i:                                        ; preds = %if.end
  %call7.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 8) #9
  %add.ptr.i = getelementptr i8, ptr %call7.i, i32 8
  %18 = call ptr @memmove(ptr %call7.i, ptr %add.ptr.i, i32 %hdr_len)
  %add.ptr8.i = getelementptr i8, ptr %call7.i, i32 %hdr_len
  %arrayidx.i = getelementptr %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 2, i32 5
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i, align 1
  %inc.i = add i8 %20, 1
  store i8 %inc.i, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %inc.i)
  %cmp12.not.i = icmp eq i8 %inc.i, 0
  br i1 %cmp12.not.i, label %while.cond.i, label %if.end6.i.if.end7_crit_edge

if.end6.i.if.end7_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

while.cond.i:                                     ; preds = %if.end6.i
  %arrayidx.1.i = getelementptr %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 2, i32 4
  %21 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.1.i, align 1
  %inc.1.i = add i8 %22, 1
  store i8 %inc.1.i, ptr %arrayidx.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %inc.1.i)
  %cmp12.not.1.i = icmp eq i8 %inc.1.i, 0
  br i1 %cmp12.not.1.i, label %while.cond.1.i, label %while.cond.i.if.end7_crit_edge

while.cond.i.if.end7_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

while.cond.1.i:                                   ; preds = %while.cond.i
  %arrayidx.2.i = getelementptr %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 2, i32 3
  %23 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.2.i, align 1
  %inc.2.i = add i8 %24, 1
  store i8 %inc.2.i, ptr %arrayidx.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %inc.2.i)
  %cmp12.not.2.i = icmp eq i8 %inc.2.i, 0
  br i1 %cmp12.not.2.i, label %while.cond.2.i, label %while.cond.1.i.if.end7_crit_edge

while.cond.1.i.if.end7_crit_edge:                 ; preds = %while.cond.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

while.cond.2.i:                                   ; preds = %while.cond.1.i
  %arrayidx.3.i = getelementptr %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 2, i32 2
  %25 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.3.i, align 1
  %inc.3.i = add i8 %26, 1
  store i8 %inc.3.i, ptr %arrayidx.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %inc.3.i)
  %cmp12.not.3.i = icmp eq i8 %inc.3.i, 0
  br i1 %cmp12.not.3.i, label %while.cond.3.i, label %while.cond.2.i.if.end7_crit_edge

while.cond.2.i.if.end7_crit_edge:                 ; preds = %while.cond.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

while.cond.3.i:                                   ; preds = %while.cond.2.i
  %arrayidx.4.i = getelementptr %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.4.i, align 1
  %inc.4.i = add i8 %28, 1
  store i8 %inc.4.i, ptr %arrayidx.4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %inc.4.i)
  %cmp12.not.4.i = icmp eq i8 %inc.4.i, 0
  br i1 %cmp12.not.4.i, label %while.cond.4.i, label %while.cond.3.i.if.end7_crit_edge

while.cond.3.i.if.end7_crit_edge:                 ; preds = %while.cond.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

while.cond.4.i:                                   ; preds = %while.cond.3.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.5.i = getelementptr %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 2, i32 0
  %29 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.5.i, align 1
  %inc.5.i = add i8 %30, 1
  store i8 %inc.5.i, ptr %arrayidx.5.i, align 1
  br label %if.end7

if.end7:                                          ; preds = %while.cond.4.i, %while.cond.3.i.if.end7_crit_edge, %while.cond.2.i.if.end7_crit_edge, %while.cond.1.i.if.end7_crit_edge, %while.cond.i.if.end7_crit_edge, %if.end6.i.if.end7_crit_edge
  %tx_pn16.i = getelementptr inbounds %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 2
  %incdec.ptr.i = getelementptr i8, ptr %add.ptr8.i, i32 1
  %31 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %inc.i, ptr %add.ptr8.i, align 1
  %arrayidx19.i = getelementptr %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 2, i32 4
  %32 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx19.i, align 4
  %incdec.ptr20.i = getelementptr i8, ptr %incdec.ptr.i, i32 1
  %34 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %incdec.ptr.i, align 1
  %incdec.ptr21.i = getelementptr i8, ptr %incdec.ptr20.i, i32 1
  %35 = ptrtoint ptr %incdec.ptr20.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %incdec.ptr20.i, align 1
  %key_idx.i = getelementptr inbounds %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 7
  %36 = ptrtoint ptr %key_idx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %key_idx.i, align 4
  %.tr.i = trunc i32 %37 to i8
  %38 = shl i8 %.tr.i, 6
  %conv22.i = or i8 %38, 32
  %incdec.ptr23.i = getelementptr i8, ptr %incdec.ptr21.i, i32 1
  %39 = ptrtoint ptr %incdec.ptr21.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv22.i, ptr %incdec.ptr21.i, align 1
  %arrayidx25.i = getelementptr %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 2, i32 3
  %40 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx25.i, align 1
  %incdec.ptr26.i = getelementptr i8, ptr %incdec.ptr23.i, i32 1
  %42 = ptrtoint ptr %incdec.ptr23.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %incdec.ptr23.i, align 1
  %arrayidx28.i = getelementptr %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 2, i32 2
  %43 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx28.i, align 2
  %incdec.ptr29.i = getelementptr i8, ptr %incdec.ptr26.i, i32 1
  %45 = ptrtoint ptr %incdec.ptr26.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %incdec.ptr26.i, align 1
  %arrayidx31.i = getelementptr %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 2, i32 1
  %46 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx31.i, align 1
  %incdec.ptr32.i = getelementptr i8, ptr %incdec.ptr29.i, i32 1
  %48 = ptrtoint ptr %incdec.ptr29.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %incdec.ptr29.i, align 1
  %49 = ptrtoint ptr %tx_pn16.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %tx_pn16.i, align 4
  %51 = ptrtoint ptr %incdec.ptr32.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %incdec.ptr32.i, align 1
  %tfm = getelementptr inbounds %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 8
  %52 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tfm, align 4
  %reqsize.i.i = getelementptr inbounds %struct.crypto_aead, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %reqsize.i.i, align 4
  %add.i = add i32 %55, 128
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 2592) #13
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end7.cleanup_crit_edge, label %if.end10, !prof !46

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %base.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %53, i32 0, i32 3
  %tfm1.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 3
  %56 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %57 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data.i.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %58, align 2
  %61 = and i16 %60, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %61)
  %cmp.i.i52 = icmp eq i16 %61, 3
  %62 = and i16 %60, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %62)
  %cmp.i75.i = icmp eq i16 %62, -30720
  %spec.select.i = select i1 %cmp.i.i52, i32 28, i32 22
  br i1 %cmp.i75.i, label %if.then5.i, label %if.end10.if.end12.i_crit_edge

if.end10.if.end12.i_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.then5.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %addr4.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %58, i32 0, i32 6
  %add.ptr.i53 = getelementptr %struct.ieee80211_hdr, ptr %58, i32 1
  %spec.select74.i = select i1 %cmp.i.i52, ptr %add.ptr.i53, ptr %addr4.i
  %63 = ptrtoint ptr %spec.select74.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %spec.select74.i, align 1
  %65 = and i8 %64, 15
  %add11.i = add nuw nsw i32 %spec.select.i, 2
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then5.i, %if.end10.if.end12.i_crit_edge
  %qc.0.i = phi i8 [ %65, %if.then5.i ], [ 0, %if.end10.if.end12.i_crit_edge ]
  %aad_len.1.i = phi i32 [ %add11.i, %if.then5.i ], [ %spec.select.i, %if.end10.if.end12.i_crit_edge ]
  %66 = ptrtoint ptr %iv to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %iv, align 1
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %qc.0.i, ptr %1, align 1
  %addr2.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %58, i32 0, i32 3
  %68 = call ptr @memcpy(ptr %2, ptr %addr2.i, i32 6)
  %69 = call ptr @memcpy(ptr %3, ptr %tx_pn16.i, i32 6)
  %70 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %58, align 1
  %72 = and i8 %71, -113
  %73 = ptrtoint ptr %tx_aad to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %tx_aad, align 1
  %arrayidx21.i = getelementptr i8, ptr %58, i32 1
  %74 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx21.i, align 1
  %76 = and i8 %75, -57
  %arrayidx25.i54 = getelementptr %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 9, i32 1
  %77 = ptrtoint ptr %arrayidx25.i54 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %arrayidx25.i54, align 1
  %add.ptr26.i = getelementptr %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 9, i32 2
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %58, i32 0, i32 2
  %78 = call ptr @memcpy(ptr %add.ptr26.i, ptr %addr1.i, i32 18)
  %seq_ctrl.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %58, i32 0, i32 5
  %79 = ptrtoint ptr %seq_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %seq_ctrl.i, align 1
  %81 = and i8 %80, 15
  %arrayidx32.i = getelementptr %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 9, i32 20
  %82 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %arrayidx32.i, align 1
  %arrayidx33.i = getelementptr %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 9, i32 21
  %83 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %arrayidx33.i, align 1
  %add.ptr34.i = getelementptr %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 9, i32 22
  %84 = ptrtoint ptr %add.ptr34.i to i32
  call void @__asan_storeN_noabort(i32 %84, i32 8)
  store i64 0, ptr %add.ptr34.i, align 1
  br i1 %cmp.i.i52, label %if.then36.i, label %if.end12.i.if.end40.i_crit_edge

if.end12.i.if.end40.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i

if.then36.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  %addr438.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %58, i32 0, i32 6
  %85 = call ptr @memcpy(ptr %add.ptr34.i, ptr %addr438.i, i32 6)
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then36.i, %if.end12.i.if.end40.i_crit_edge
  br i1 %cmp.i75.i, label %if.then42.i, label %if.end40.i.ccmp_init_iv_and_aad.exit_crit_edge

if.end40.i.ccmp_init_iv_and_aad.exit_crit_edge:   ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ccmp_init_iv_and_aad.exit

if.then42.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx44.i = getelementptr i8, ptr %tx_aad, i32 %spec.select.i
  %86 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %qc.0.i, ptr %arrayidx44.i, align 1
  br label %ccmp_init_iv_and_aad.exit

ccmp_init_iv_and_aad.exit:                        ; preds = %if.then42.i, %if.end40.i.ccmp_init_iv_and_aad.exit_crit_edge
  %call14 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 8) #9
  call void @sg_init_table(ptr noundef nonnull %sg, i32 noundef 2) #9
  %87 = ptrtoint ptr %tx_aad to i32
  %cmp.i55 = icmp ugt ptr %tx_aad, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i55, label %land.lhs.true.i, label %ccmp_init_iv_and_aad.exit.do.body5.i_crit_edge, !prof !47

ccmp_init_iv_and_aad.exit.do.body5.i_crit_edge:   ; preds = %ccmp_init_iv_and_aad.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i

land.lhs.true.i:                                  ; preds = %ccmp_init_iv_and_aad.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %88 = load ptr, ptr @high_memory, align 4
  %cmp1.i56 = icmp ugt ptr %88, %tx_aad
  br i1 %cmp1.i56, label %land.rhs.i, label %land.lhs.true.i.do.body5.i_crit_edge, !prof !47

land.lhs.true.i.do.body5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %sub.i = add i32 %87, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %89 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i57 = add i32 %89, %shr.i
  %call.i = call i32 @pfn_valid(i32 noundef %add.i57) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp eq i32 %call.i, 0
  br i1 %tobool.i, label %land.rhs.i.do.body5.i_crit_edge, label %do.end8.i, !prof !46

land.rhs.i.do.body5.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i

do.body5.i:                                       ; preds = %land.rhs.i.do.body5.i_crit_edge, %land.lhs.true.i.do.body5.i_crit_edge, %ccmp_init_iv_and_aad.exit.do.body5.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #9, !srcloc !48
  unreachable

do.end8.i:                                        ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %90 = load ptr, ptr @mem_map, align 4
  %add.ptr.i58 = getelementptr %struct.page, ptr %90, i32 %shr.i
  %91 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %sg, align 4
  %93 = ptrtoint ptr %add.ptr.i58 to i32
  %and2.i.i.i = and i32 %93, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i59 = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i59, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !47

do.body5.i.i.i:                                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !49
  unreachable

do.body11.i.i.i:                                  ; preds = %do.end8.i
  %and.i.i.i.i = and i32 %92, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_buf.exit, label %do.body19.i.i.i, !prof !47

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !50
  unreachable

sg_set_buf.exit:                                  ; preds = %do.body11.i.i.i
  %and.i = and i32 %87, 4095
  %and.i.i.i = and i32 %92, 3
  %or.i.i.i = or i32 %and.i.i.i, %93
  %94 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %or.i.i.i, ptr %sg, align 4
  %offset1.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 1
  %95 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %and.i, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 2
  %96 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %aad_len.1.i, ptr %length.i.i, align 4
  %arrayidx16 = getelementptr inbounds [2 x %struct.scatterlist], ptr %sg, i32 0, i32 1
  %97 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %data.i.i, align 4
  %add.ptr = getelementptr i8, ptr %98, i32 %hdr_len
  %add.ptr18 = getelementptr i8, ptr %add.ptr, i32 8
  %add = add i32 %sub, 8
  %99 = ptrtoint ptr %add.ptr18 to i32
  %cmp.i60 = icmp ugt ptr %add.ptr18, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i60, label %land.lhs.true.i62, label %sg_set_buf.exit.do.body5.i69_crit_edge, !prof !47

sg_set_buf.exit.do.body5.i69_crit_edge:           ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i69

land.lhs.true.i62:                                ; preds = %sg_set_buf.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %100 = load ptr, ptr @high_memory, align 4
  %cmp1.i61 = icmp ugt ptr %100, %add.ptr18
  br i1 %cmp1.i61, label %land.rhs.i68, label %land.lhs.true.i62.do.body5.i69_crit_edge, !prof !47

land.lhs.true.i62.do.body5.i69_crit_edge:         ; preds = %land.lhs.true.i62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i69

land.rhs.i68:                                     ; preds = %land.lhs.true.i62
  %sub.i63 = add i32 %99, 1073741824
  %shr.i64 = lshr i32 %sub.i63, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %101 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i65 = add i32 %101, %shr.i64
  %call.i66 = call i32 @pfn_valid(i32 noundef %add.i65) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %tobool.i67 = icmp eq i32 %call.i66, 0
  br i1 %tobool.i67, label %land.rhs.i68.do.body5.i69_crit_edge, label %do.end8.i73, !prof !46

land.rhs.i68.do.body5.i69_crit_edge:              ; preds = %land.rhs.i68
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i69

do.body5.i69:                                     ; preds = %land.rhs.i68.do.body5.i69_crit_edge, %land.lhs.true.i62.do.body5.i69_crit_edge, %sg_set_buf.exit.do.body5.i69_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #9, !srcloc !48
  unreachable

do.end8.i73:                                      ; preds = %land.rhs.i68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %102 = load ptr, ptr @mem_map, align 4
  %add.ptr.i70 = getelementptr %struct.page, ptr %102, i32 %shr.i64
  %103 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx16, align 4
  %105 = ptrtoint ptr %add.ptr.i70 to i32
  %and2.i.i.i71 = and i32 %105, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i71)
  %tobool.not.i.i.i72 = icmp eq i32 %and2.i.i.i71, 0
  br i1 %tobool.not.i.i.i72, label %do.body11.i.i.i77, label %do.body5.i.i.i74, !prof !47

do.body5.i.i.i74:                                 ; preds = %do.end8.i73
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !49
  unreachable

do.body11.i.i.i77:                                ; preds = %do.end8.i73
  %and.i.i.i.i75 = and i32 %104, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i75)
  %tobool.i.not.i.i.i76 = icmp eq i32 %and.i.i.i.i75, 0
  br i1 %tobool.i.not.i.i.i76, label %sg_set_buf.exit84, label %do.body19.i.i.i78, !prof !47

do.body19.i.i.i78:                                ; preds = %do.body11.i.i.i77
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !50
  unreachable

sg_set_buf.exit84:                                ; preds = %do.body11.i.i.i77
  call void @__sanitizer_cov_trace_pc() #11
  %and.i79 = and i32 %99, 4095
  %and.i.i.i80 = and i32 %104, 3
  %or.i.i.i81 = or i32 %and.i.i.i80, %105
  %106 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %or.i.i.i81, ptr %arrayidx16, align 4
  %offset1.i.i82 = getelementptr inbounds [2 x %struct.scatterlist], ptr %sg, i32 0, i32 1, i32 1
  %107 = ptrtoint ptr %offset1.i.i82 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %and.i79, ptr %offset1.i.i82, align 4
  %length.i.i83 = getelementptr inbounds [2 x %struct.scatterlist], ptr %sg, i32 0, i32 1, i32 2
  %108 = ptrtoint ptr %length.i.i83 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %add, ptr %length.i.i83, align 4
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 1
  %109 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr null, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 2
  %110 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr null, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 4
  %111 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %flags4.i, align 4
  %assoclen1.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i, i32 0, i32 1
  %112 = ptrtoint ptr %assoclen1.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %aad_len.1.i, ptr %assoclen1.i, align 8
  %src1.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i, i32 0, i32 4
  %113 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %sg, ptr %src1.i, align 4
  %dst2.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i, i32 0, i32 5
  %114 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %sg, ptr %dst2.i, align 8
  %cryptlen3.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i, i32 0, i32 2
  %115 = ptrtoint ptr %cryptlen3.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %sub, ptr %cryptlen3.i, align 4
  %iv4.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i, i32 0, i32 3
  %116 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %iv, ptr %iv4.i, align 32
  %call22 = call i32 @crypto_aead_encrypt(ptr noundef nonnull %call9.i.i) #9
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %sg_set_buf.exit84, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %skb_tailroom.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %sg_set_buf.exit84 ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %skb_tailroom.exit.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iv) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sg) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lib80211_ccmp_decrypt(ptr noundef %skb, i32 noundef %hdr_len, ptr noundef %priv) #2 align 64 {
entry:
  %sg = alloca [2 x %struct.scatterlist], align 4
  %iv = alloca [16 x i8], align 1
  %pn = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sg) #9
  %0 = call ptr @memset(ptr %sg, i32 255, i32 40)
  %rx_aad = getelementptr inbounds %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iv) #9
  %1 = call ptr @memset(ptr %iv, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %pn) #9
  %2 = getelementptr inbounds [6 x i8], ptr %pn, i32 0, i32 1
  %3 = getelementptr inbounds [6 x i8], ptr %pn, i32 0, i32 2
  %4 = getelementptr inbounds [6 x i8], ptr %pn, i32 0, i32 3
  %5 = getelementptr inbounds [6 x i8], ptr %pn, i32 0, i32 4
  %6 = getelementptr inbounds [6 x i8], ptr %pn, i32 0, i32 5
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  %sub = sub i32 %8, %hdr_len
  %sub1 = add i32 %sub, -8
  %add3 = add i32 %hdr_len, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %add3)
  %cmp = icmp ult i32 %8, %add3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dot11RSNAStatsCCMPFormatErrors = getelementptr inbounds %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 4
  %9 = ptrtoint ptr %dot11RSNAStatsCCMPFormatErrors to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dot11RSNAStatsCCMPFormatErrors, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %dot11RSNAStatsCCMPFormatErrors, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 %hdr_len
  %arrayidx = getelementptr i8, ptr %add.ptr, i32 3
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  %15 = and i8 %14, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %do.body, label %if.end16

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lib80211_ccmp_decrypt.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lib80211_ccmp_decrypt, %land.lhs.true)) #9
          to label %do.end [label %land.lhs.true], !srcloc !51

land.lhs.true:                                    ; preds = %do.body
  %call9 = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.do.end_crit_edge, label %if.then11

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %addr2 = getelementptr inbounds %struct.ieee80211_hdr, ptr %12, i32 0, i32 3
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lib80211_ccmp_decrypt.descriptor, ptr noundef nonnull @.str.5, ptr noundef %addr2) #9
  br label %do.end

do.end:                                           ; preds = %if.then11, %land.lhs.true.do.end_crit_edge, %do.body
  %dot11RSNAStatsCCMPFormatErrors14 = getelementptr inbounds %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 4
  %16 = ptrtoint ptr %dot11RSNAStatsCCMPFormatErrors14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dot11RSNAStatsCCMPFormatErrors14, align 4
  %inc15 = add i32 %17, 1
  store i32 %inc15, ptr %dot11RSNAStatsCCMPFormatErrors14, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %18 = lshr i8 %14, 6
  %key_idx = getelementptr inbounds %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 7
  %19 = ptrtoint ptr %key_idx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %key_idx, align 4
  %conv19 = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %conv19)
  %cmp20.not = icmp eq i32 %20, %conv19
  br i1 %cmp20.not, label %if.end44, label %do.body23

do.body23:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lib80211_ccmp_decrypt.descriptor.6, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lib80211_ccmp_decrypt, %land.lhs.true35)) #9
          to label %cleanup [label %land.lhs.true35], !srcloc !51

land.lhs.true35:                                  ; preds = %do.body23
  %call36 = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %land.lhs.true35.cleanup_crit_edge, label %if.then38

land.lhs.true35.cleanup_crit_edge:                ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then38:                                        ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %key_idx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %key_idx, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lib80211_ccmp_decrypt.descriptor.6, ptr noundef nonnull @.str.7, i32 noundef %22, i32 noundef %conv19) #9
  br label %cleanup

if.end44:                                         ; preds = %if.end16
  %key_set = getelementptr inbounds %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 1
  %23 = ptrtoint ptr %key_set to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %key_set, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool45.not = icmp eq i32 %24, 0
  br i1 %tobool45.not, label %do.body47, label %if.end69

do.body47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lib80211_ccmp_decrypt.descriptor.8, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lib80211_ccmp_decrypt, %land.lhs.true59)) #9
          to label %cleanup [label %land.lhs.true59], !srcloc !51

land.lhs.true59:                                  ; preds = %do.body47
  %call60 = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true59.cleanup_crit_edge, label %if.then62

land.lhs.true59.cleanup_crit_edge:                ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then62:                                        ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #11
  %addr263 = getelementptr inbounds %struct.ieee80211_hdr, ptr %12, i32 0, i32 3
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lib80211_ccmp_decrypt.descriptor.8, ptr noundef nonnull @.str.9, ptr noundef %addr263, i32 noundef %20) #9
  br label %cleanup

if.end69:                                         ; preds = %if.end44
  %arrayidx70 = getelementptr i8, ptr %add.ptr, i32 7
  %25 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx70, align 1
  %27 = ptrtoint ptr %pn to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %pn, align 1
  %arrayidx72 = getelementptr i8, ptr %add.ptr, i32 6
  %28 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx72, align 1
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %2, align 1
  %arrayidx74 = getelementptr i8, ptr %add.ptr, i32 5
  %31 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx74, align 1
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %3, align 1
  %arrayidx76 = getelementptr i8, ptr %add.ptr, i32 4
  %34 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx76, align 1
  %36 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %4, align 1
  %arrayidx78 = getelementptr i8, ptr %add.ptr, i32 1
  %37 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx78, align 1
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %5, align 1
  %40 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %add.ptr, align 1
  %42 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %6, align 1
  %add.ptr82 = getelementptr i8, ptr %add.ptr, i32 8
  %rx_pn = getelementptr inbounds %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 3
  %conv.i = zext i8 %26 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %conv2.i = zext i8 %29 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %conv5.i = zext i8 %32 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %conv9.i = zext i8 %35 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %conv12.i = zext i8 %38 to i32
  %shl13.i = shl nuw nsw i32 %conv12.i, 8
  %conv15.i = zext i8 %41 to i32
  %or16.i = or i32 %shl13.i, %conv15.i
  %43 = ptrtoint ptr %rx_pn to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %rx_pn, align 1
  %conv18.i = zext i8 %44 to i32
  %shl19.i = shl nuw i32 %conv18.i, 24
  %arrayidx20.i = getelementptr %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 3, i32 1
  %45 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx20.i, align 1
  %conv21.i = zext i8 %46 to i32
  %shl22.i = shl nuw nsw i32 %conv21.i, 16
  %or23.i = or i32 %shl22.i, %shl19.i
  %arrayidx24.i = getelementptr %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 3, i32 2
  %47 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx24.i, align 1
  %conv25.i = zext i8 %48 to i32
  %shl26.i = shl nuw nsw i32 %conv25.i, 8
  %or27.i = or i32 %or23.i, %shl26.i
  %arrayidx28.i = getelementptr %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 3, i32 3
  %49 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx28.i, align 1
  %conv29.i = zext i8 %50 to i32
  %or30.i = or i32 %or27.i, %conv29.i
  %arrayidx31.i = getelementptr %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 3, i32 4
  %51 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx31.i, align 1
  %conv32.i = zext i8 %52 to i32
  %shl33.i = shl nuw nsw i32 %conv32.i, 8
  %arrayidx34.i = getelementptr %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 3, i32 5
  %53 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx34.i, align 1
  %conv35.i = zext i8 %54 to i32
  %or36.i = or i32 %shl33.i, %conv35.i
  %sub.i = sub i32 %or10.i, %or30.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %or10.i, i32 %or30.i)
  %cmp38.i = icmp eq i32 %or10.i, %or30.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or16.i, i32 %or36.i)
  %cmp40.not.i = icmp ule i32 %or16.i, %or36.i
  %or.cond.i = select i1 %cmp38.i, i1 %cmp40.not.i, i1 false
  %narrow.i = select i1 %cmp.i, i1 true, i1 %or.cond.i
  br i1 %narrow.i, label %do.body88, label %if.end140

do.body88:                                        ; preds = %if.end69
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lib80211_ccmp_decrypt.descriptor.10, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lib80211_ccmp_decrypt, %land.lhs.true100)) #9
          to label %do.end138 [label %land.lhs.true100], !srcloc !51

land.lhs.true100:                                 ; preds = %do.body88
  %call101 = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %land.lhs.true100.do.end138_crit_edge, label %if.then103

land.lhs.true100.do.end138_crit_edge:             ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end138

if.then103:                                       ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #11
  %addr2104 = getelementptr inbounds %struct.ieee80211_hdr, ptr %12, i32 0, i32 3
  %55 = ptrtoint ptr %rx_pn to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %rx_pn, align 2
  %conv108 = zext i8 %56 to i32
  %57 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx20.i, align 1
  %conv111 = zext i8 %58 to i32
  %59 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx24.i, align 2
  %conv114 = zext i8 %60 to i32
  %61 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx28.i, align 1
  %conv117 = zext i8 %62 to i32
  %63 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx31.i, align 2
  %conv120 = zext i8 %64 to i32
  %65 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx34.i, align 1
  %conv123 = zext i8 %66 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lib80211_ccmp_decrypt.descriptor.10, ptr noundef nonnull @.str.11, ptr noundef %addr2104, i32 noundef %conv108, i32 noundef %conv111, i32 noundef %conv114, i32 noundef %conv117, i32 noundef %conv120, i32 noundef %conv123, i32 noundef %conv.i, i32 noundef %conv2.i, i32 noundef %conv5.i, i32 noundef %conv9.i, i32 noundef %conv12.i, i32 noundef %conv15.i) #9
  br label %do.end138

do.end138:                                        ; preds = %if.then103, %land.lhs.true100.do.end138_crit_edge, %do.body88
  %dot11RSNAStatsCCMPReplays = getelementptr inbounds %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 5
  %67 = ptrtoint ptr %dot11RSNAStatsCCMPReplays to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dot11RSNAStatsCCMPReplays, align 4
  %inc139 = add i32 %68, 1
  store i32 %inc139, ptr %dot11RSNAStatsCCMPReplays, align 4
  br label %cleanup

if.end140:                                        ; preds = %if.end69
  %tfm = getelementptr inbounds %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 8
  %69 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tfm, align 4
  %reqsize.i.i = getelementptr inbounds %struct.crypto_aead, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %reqsize.i.i, align 4
  %add.i = add i32 %72, 128
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 2592) #13
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end140.cleanup_crit_edge, label %if.end144, !prof !46

if.end140.cleanup_crit_edge:                      ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end144:                                        ; preds = %if.end140
  %base.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %70, i32 0, i32 3
  %tfm1.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 3
  %73 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %call147 = call fastcc i32 @ccmp_init_iv_and_aad(ptr noundef %12, ptr noundef nonnull %pn, ptr noundef nonnull %iv, ptr noundef %rx_aad)
  call void @sg_init_table(ptr noundef nonnull %sg, i32 noundef 2) #9
  call fastcc void @sg_set_buf(ptr noundef nonnull %sg, ptr noundef %rx_aad, i32 noundef %call147)
  %arrayidx150 = getelementptr inbounds [2 x %struct.scatterlist], ptr %sg, i32 0, i32 1
  call fastcc void @sg_set_buf(ptr noundef %arrayidx150, ptr noundef %add.ptr82, i32 noundef %sub1)
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 1
  %74 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 2
  %75 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 4
  %76 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %flags4.i, align 4
  %assoclen1.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i, i32 0, i32 1
  %77 = ptrtoint ptr %assoclen1.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %call147, ptr %assoclen1.i, align 8
  %src1.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i, i32 0, i32 4
  %78 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %sg, ptr %src1.i, align 4
  %dst2.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i, i32 0, i32 5
  %79 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %sg, ptr %dst2.i, align 8
  %cryptlen3.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i, i32 0, i32 2
  %80 = ptrtoint ptr %cryptlen3.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %sub1, ptr %cryptlen3.i, align 4
  %iv4.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i, i32 0, i32 3
  %81 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %iv, ptr %iv4.i, align 32
  %call154 = call i32 @crypto_aead_decrypt(ptr noundef nonnull %call9.i.i) #9
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %tobool155.not = icmp eq i32 %call154, 0
  br i1 %tobool155.not, label %if.end179, label %do.body157

do.body157:                                       ; preds = %if.end144
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lib80211_ccmp_decrypt.descriptor.12, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lib80211_ccmp_decrypt, %land.lhs.true169)) #9
          to label %do.end177 [label %land.lhs.true169], !srcloc !51

land.lhs.true169:                                 ; preds = %do.body157
  %call170 = call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170)
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %land.lhs.true169.do.end177_crit_edge, label %if.then172

land.lhs.true169.do.end177_crit_edge:             ; preds = %land.lhs.true169
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end177

if.then172:                                       ; preds = %land.lhs.true169
  call void @__sanitizer_cov_trace_pc() #11
  %addr2173 = getelementptr inbounds %struct.ieee80211_hdr, ptr %12, i32 0, i32 3
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lib80211_ccmp_decrypt.descriptor.12, ptr noundef nonnull @.str.13, ptr noundef %addr2173, i32 noundef %call154) #9
  br label %do.end177

do.end177:                                        ; preds = %if.then172, %land.lhs.true169.do.end177_crit_edge, %do.body157
  %dot11RSNAStatsCCMPDecryptErrors = getelementptr inbounds %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 6
  %82 = ptrtoint ptr %dot11RSNAStatsCCMPDecryptErrors to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %dot11RSNAStatsCCMPDecryptErrors, align 4
  %inc178 = add i32 %83, 1
  store i32 %inc178, ptr %dot11RSNAStatsCCMPDecryptErrors, align 4
  br label %cleanup

if.end179:                                        ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  %84 = call ptr @memcpy(ptr %rx_pn, ptr %pn, i32 6)
  %85 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %data, align 4
  %add.ptr184 = getelementptr i8, ptr %86, i32 8
  %87 = call ptr @memmove(ptr %add.ptr184, ptr %86, i32 %hdr_len)
  %call186 = call ptr @skb_pull(ptr noundef %skb, i32 noundef 8) #9
  %88 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %len, align 4
  %sub188 = add i32 %89, -8
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub188) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end179, %do.end177, %if.end140.cleanup_crit_edge, %do.end138, %if.then62, %land.lhs.true59.cleanup_crit_edge, %do.body47, %if.then38, %land.lhs.true35.cleanup_crit_edge, %do.body23, %do.end, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -4, %do.end138 ], [ -5, %do.end177 ], [ %20, %if.end179 ], [ -2, %do.end ], [ -6, %if.then38 ], [ -6, %land.lhs.true35.cleanup_crit_edge ], [ -3, %if.then62 ], [ -3, %land.lhs.true59.cleanup_crit_edge ], [ -6, %do.body23 ], [ -3, %do.body47 ], [ -12, %if.end140.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %pn) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iv) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sg) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lib80211_ccmp_set_key(ptr nocapture noundef readonly %key, i32 noundef %len, ptr noundef readonly %seq, ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm1 = getelementptr inbounds %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %tfm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm1, align 4
  %key_idx = getelementptr inbounds %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 7
  %2 = ptrtoint ptr %key_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key_idx, align 4
  %4 = call ptr @memset(ptr %priv, i32 0, i32 116)
  store i32 %3, ptr %key_idx, align 4
  store ptr %1, ptr %tfm1, align 4
  %5 = zext i32 %len to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %len, label %entry.cleanup_crit_edge [
    i32 16, label %if.then
    i32 0, label %entry.if.end36_crit_edge
  ]

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  %6 = call ptr @memcpy(ptr %priv, ptr %key, i32 16)
  %key_set = getelementptr inbounds %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 1
  %7 = ptrtoint ptr %key_set to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %key_set, align 4
  %tobool.not = icmp eq ptr %seq, null
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr i8, ptr %seq, i32 5
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %rx_pn = getelementptr inbounds %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 3
  %10 = ptrtoint ptr %rx_pn to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %rx_pn, align 2
  %arrayidx7 = getelementptr i8, ptr %seq, i32 4
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx7, align 1
  %arrayidx9 = getelementptr %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %arrayidx9, align 1
  %arrayidx10 = getelementptr i8, ptr %seq, i32 3
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx10, align 1
  %arrayidx12 = getelementptr %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %arrayidx12, align 2
  %arrayidx13 = getelementptr i8, ptr %seq, i32 2
  %17 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx13, align 1
  %arrayidx15 = getelementptr %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 3, i32 3
  %19 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %arrayidx15, align 1
  %arrayidx16 = getelementptr i8, ptr %seq, i32 1
  %20 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx16, align 1
  %arrayidx18 = getelementptr %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 3, i32 4
  %22 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx18, align 2
  %23 = ptrtoint ptr %seq to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %seq, align 1
  %arrayidx21 = getelementptr %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 3, i32 5
  %25 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %arrayidx21, align 1
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %call = tail call i32 @crypto_aead_setauthsize(ptr noundef %1, i32 noundef 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool23.not = icmp eq i32 %call, 0
  br i1 %tobool23.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %26 = ptrtoint ptr %tfm1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tfm1, align 4
  %call27 = tail call i32 @crypto_aead_setkey(ptr noundef %27, ptr noundef %priv, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %lor.lhs.false.if.end36_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.if.end36_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.end36:                                         ; preds = %lor.lhs.false.if.end36_crit_edge, %entry.if.end36_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end36 ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lib80211_ccmp_get_key(ptr nocapture noundef writeonly %key, i32 noundef %len, ptr noundef writeonly %seq, ptr nocapture noundef readonly %priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %len)
  %cmp = icmp slt i32 %len, 16
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %key_set = getelementptr inbounds %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %key_set to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key_set, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %2 = call ptr @memcpy(ptr %key, ptr %priv, i32 16)
  %tobool4.not = icmp eq ptr %seq, null
  br i1 %tobool4.not, label %if.end2.cleanup_crit_edge, label %if.then5

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %tx_pn = getelementptr inbounds %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 2
  %arrayidx = getelementptr %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 2, i32 5
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %5 = ptrtoint ptr %seq to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %seq, align 1
  %arrayidx8 = getelementptr %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 2, i32 4
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8, align 4
  %arrayidx9 = getelementptr i8, ptr %seq, i32 1
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %arrayidx9, align 1
  %arrayidx11 = getelementptr %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 2, i32 3
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx11, align 1
  %arrayidx12 = getelementptr i8, ptr %seq, i32 2
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx12, align 1
  %arrayidx14 = getelementptr %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx14, align 2
  %arrayidx15 = getelementptr i8, ptr %seq, i32 3
  %14 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx15, align 1
  %arrayidx17 = getelementptr %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx17, align 1
  %arrayidx18 = getelementptr i8, ptr %seq, i32 4
  %17 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %arrayidx18, align 1
  %18 = ptrtoint ptr %tx_pn to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tx_pn, align 4
  %arrayidx21 = getelementptr i8, ptr %seq, i32 5
  %20 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %arrayidx21, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 16, %if.then5 ], [ 16, %if.end2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lib80211_ccmp_print_stats(ptr noundef %m, ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %key_idx = getelementptr inbounds %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 7
  %0 = ptrtoint ptr %key_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key_idx, align 4
  %key_set = getelementptr inbounds %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %key_set to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key_set, align 4
  %tx_pn = getelementptr inbounds %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 2
  %4 = ptrtoint ptr %tx_pn to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tx_pn, align 4
  %conv = zext i8 %5 to i32
  %arrayidx2 = getelementptr %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %7 to i32
  %arrayidx5 = getelementptr %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx5, align 2
  %conv6 = zext i8 %9 to i32
  %arrayidx8 = getelementptr %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %11 to i32
  %arrayidx11 = getelementptr %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 2, i32 4
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx11, align 4
  %conv12 = zext i8 %13 to i32
  %arrayidx14 = getelementptr %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 2, i32 5
  %14 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %15 to i32
  %rx_pn = getelementptr inbounds %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 3
  %16 = ptrtoint ptr %rx_pn to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rx_pn, align 2
  %conv17 = zext i8 %17 to i32
  %arrayidx19 = getelementptr %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %19 to i32
  %arrayidx22 = getelementptr %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 3, i32 2
  %20 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx22, align 2
  %conv23 = zext i8 %21 to i32
  %arrayidx25 = getelementptr %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 3, i32 3
  %22 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %23 to i32
  %arrayidx28 = getelementptr %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 3, i32 4
  %24 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx28, align 2
  %conv29 = zext i8 %25 to i32
  %arrayidx31 = getelementptr %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 3, i32 5
  %26 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %27 to i32
  %dot11RSNAStatsCCMPFormatErrors = getelementptr inbounds %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 4
  %28 = ptrtoint ptr %dot11RSNAStatsCCMPFormatErrors to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dot11RSNAStatsCCMPFormatErrors, align 4
  %dot11RSNAStatsCCMPReplays = getelementptr inbounds %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 5
  %30 = ptrtoint ptr %dot11RSNAStatsCCMPReplays to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dot11RSNAStatsCCMPReplays, align 4
  %dot11RSNAStatsCCMPDecryptErrors = getelementptr inbounds %struct.lib80211_ccmp_data, ptr %priv, i32 0, i32 6
  %32 = ptrtoint ptr %dot11RSNAStatsCCMPDecryptErrors to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dot11RSNAStatsCCMPDecryptErrors, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.14, i32 noundef %1, i32 noundef %3, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv6, i32 noundef %conv9, i32 noundef %conv12, i32 noundef %conv15, i32 noundef %conv17, i32 noundef %conv20, i32 noundef %conv23, i32 noundef %conv26, i32 noundef %conv29, i32 noundef %conv32, i32 noundef %29, i32 noundef %31, i32 noundef %33) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_aead(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @ccmp_init_iv_and_aad(ptr nocapture noundef readonly %hdr, ptr nocapture noundef readonly %pn, ptr nocapture noundef writeonly %iv, ptr nocapture noundef writeonly %aad) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %hdr, align 2
  %2 = and i16 %1, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %2)
  %cmp.i = icmp eq i16 %2, 3
  %3 = and i16 %1, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %3)
  %cmp.i75 = icmp eq i16 %3, -30720
  %spec.select = select i1 %cmp.i, i32 28, i32 22
  br i1 %cmp.i75, label %if.then5, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %addr4 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 6
  %add.ptr = getelementptr %struct.ieee80211_hdr, ptr %hdr, i32 1
  %spec.select74 = select i1 %cmp.i, ptr %add.ptr, ptr %addr4
  %4 = ptrtoint ptr %spec.select74 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %spec.select74, align 1
  %6 = and i8 %5, 15
  %add11 = add nuw nsw i32 %spec.select, 2
  br label %if.end12

if.end12:                                         ; preds = %if.then5, %entry.if.end12_crit_edge
  %qc.0 = phi i8 [ %6, %if.then5 ], [ 0, %entry.if.end12_crit_edge ]
  %aad_len.1 = phi i32 [ %add11, %if.then5 ], [ %spec.select, %entry.if.end12_crit_edge ]
  %7 = ptrtoint ptr %iv to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %iv, align 1
  %arrayidx13 = getelementptr i8, ptr %iv, i32 1
  %8 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %qc.0, ptr %arrayidx13, align 1
  %add.ptr14 = getelementptr i8, ptr %iv, i32 2
  %addr2 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 3
  %9 = call ptr @memcpy(ptr %add.ptr14, ptr %addr2, i32 6)
  %add.ptr15 = getelementptr i8, ptr %iv, i32 8
  %10 = call ptr @memcpy(ptr %add.ptr15, ptr %pn, i32 6)
  %11 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %hdr, align 1
  %13 = and i8 %12, -113
  %14 = ptrtoint ptr %aad to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %aad, align 1
  %arrayidx21 = getelementptr i8, ptr %hdr, i32 1
  %15 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx21, align 1
  %17 = and i8 %16, -57
  %arrayidx25 = getelementptr i8, ptr %aad, i32 1
  %18 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %arrayidx25, align 1
  %add.ptr26 = getelementptr i8, ptr %aad, i32 2
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 2
  %19 = call ptr @memcpy(ptr %add.ptr26, ptr %addr1, i32 18)
  %seq_ctrl = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 5
  %20 = ptrtoint ptr %seq_ctrl to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %seq_ctrl, align 1
  %22 = and i8 %21, 15
  %arrayidx32 = getelementptr i8, ptr %aad, i32 20
  %23 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %arrayidx32, align 1
  %arrayidx33 = getelementptr i8, ptr %aad, i32 21
  %24 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %arrayidx33, align 1
  %add.ptr34 = getelementptr i8, ptr %aad, i32 22
  %25 = ptrtoint ptr %add.ptr34 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 0, ptr %add.ptr34, align 1
  br i1 %cmp.i, label %if.then36, label %if.end12.if.end40_crit_edge

if.end12.if.end40_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then36:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %addr438 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 6
  %26 = call ptr @memcpy(ptr %add.ptr34, ptr %addr438, i32 6)
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %if.end12.if.end40_crit_edge
  br i1 %cmp.i75, label %if.then42, label %if.end40.if.end45_crit_edge

if.end40.if.end45_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx44 = getelementptr i8, ptr %aad, i32 %spec.select
  %27 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %qc.0, ptr %arrayidx44, align 1
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %if.end40.if.end45_crit_edge
  ret i32 %aad_len.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sg_set_buf(ptr nocapture noundef %sg, ptr noundef %buf, i32 noundef %buflen) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %buf to i32
  %cmp = icmp ugt ptr %buf, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp, label %land.lhs.true, label %entry.do.body5_crit_edge, !prof !47

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5

land.lhs.true:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %1 = load ptr, ptr @high_memory, align 4
  %cmp1 = icmp ugt ptr %1, %buf
  br i1 %cmp1, label %land.rhs, label %land.lhs.true.do.body5_crit_edge, !prof !47

land.lhs.true.do.body5_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5

land.rhs:                                         ; preds = %land.lhs.true
  %sub = add i32 %0, 1073741824
  %shr = lshr i32 %sub, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %2 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %2, %shr
  %call = tail call i32 @pfn_valid(i32 noundef %add) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %land.rhs.do.body5_crit_edge, label %do.end8, !prof !46

land.rhs.do.body5_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5

do.body5:                                         ; preds = %land.rhs.do.body5_crit_edge, %land.lhs.true.do.body5_crit_edge, %entry.do.body5_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #9, !srcloc !48
  unreachable

do.end8:                                          ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %3 = load ptr, ptr @mem_map, align 4
  %add.ptr = getelementptr %struct.page, ptr %3, i32 %shr
  %4 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sg, align 4
  %6 = ptrtoint ptr %add.ptr to i32
  %and2.i.i = and i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !47

do.body5.i.i:                                     ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !49
  unreachable

do.body11.i.i:                                    ; preds = %do.end8
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !47

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !50
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and = and i32 %0, 4095
  %and.i.i = and i32 %5, 3
  %or.i.i = or i32 %and.i.i, %6
  %7 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or.i.i, ptr %sg, align 4
  %offset1.i = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 1
  %8 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and, ptr %offset1.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 2
  %9 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %buflen, ptr %length.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_decrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setauthsize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lib80211_register_crypto_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__UNIQUE_ID_author339, !1, !"__UNIQUE_ID_author339", i1 false, i1 false}
!1 = !{!"../net/wireless/lib80211_crypt_ccmp.c", i32 29, i32 1}
!2 = !{ptr @__UNIQUE_ID_description340, !3, !"__UNIQUE_ID_description340", i1 false, i1 false}
!3 = !{!"../net/wireless/lib80211_crypt_ccmp.c", i32 30, i32 1}
!4 = !{ptr @__UNIQUE_ID_file341, !5, !"__UNIQUE_ID_file341", i1 false, i1 false}
!5 = !{!"../net/wireless/lib80211_crypt_ccmp.c", i32 31, i32 1}
!6 = !{ptr @__UNIQUE_ID_license342, !5, !"__UNIQUE_ID_license342", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_lib80211_crypt_ccmp__343_447_lib80211_crypto_ccmp_init6, !8, !"__initcall__kmod_lib80211_crypt_ccmp__343_447_lib80211_crypto_ccmp_init6", i1 false, i1 false}
!8 = !{!"../net/wireless/lib80211_crypt_ccmp.c", i32 447, i32 1}
!9 = !{ptr @__exitcall_lib80211_crypto_ccmp_exit, !10, !"__exitcall_lib80211_crypto_ccmp_exit", i1 false, i1 false}
!10 = !{!"../net/wireless/lib80211_crypt_ccmp.c", i32 448, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/wireless/lib80211_crypt_ccmp.c", i32 422, i32 10}
!13 = !{ptr @lib80211_crypt_ccmp, !14, !"lib80211_crypt_ccmp", i1 false, i1 false}
!14 = !{!"../net/wireless/lib80211_crypt_ccmp.c", i32 421, i32 35}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/wireless/lib80211_crypt_ccmp.c", i32 68, i32 32}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/wireless/lib80211_crypt_ccmp.c", i32 276, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @lib80211_ccmp_decrypt.descriptor, !18, !"descriptor", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/wireless/lib80211_crypt_ccmp.c", i32 283, i32 3}
!25 = !{ptr @lib80211_ccmp_decrypt.descriptor.6, !24, !"descriptor", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/wireless/lib80211_crypt_ccmp.c", i32 288, i32 3}
!28 = !{ptr @lib80211_ccmp_decrypt.descriptor.8, !27, !"descriptor", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/wireless/lib80211_crypt_ccmp.c", i32 303, i32 3}
!31 = !{ptr @lib80211_ccmp_decrypt.descriptor.10, !30, !"descriptor", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/wireless/lib80211_crypt_ccmp.c", i32 331, i32 3}
!34 = !{ptr @lib80211_ccmp_decrypt.descriptor.12, !33, !"descriptor", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/wireless/lib80211_crypt_ccmp.c", i32 407, i32 6}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{!"branch_weights", i32 1, i32 2000}
!47 = !{!"branch_weights", i32 2000, i32 1}
!48 = !{i64 2154347203, i64 2154347695, i64 2154347240, i64 2154347296, i64 2154347330, i64 2154347354, i64 2154347395, i64 2154347416, i64 2154347444, i64 2154347478}
!49 = !{i64 2154340884, i64 2154341376, i64 2154340921, i64 2154340977, i64 2154341011, i64 2154341035, i64 2154341076, i64 2154341097, i64 2154341125, i64 2154341159}
!50 = !{i64 2154342494, i64 2154342986, i64 2154342531, i64 2154342587, i64 2154342621, i64 2154342645, i64 2154342686, i64 2154342707, i64 2154342735, i64 2154342769}
!51 = !{i64 2148700543, i64 2148700548, i64 2148700561, i64 2148700605, i64 2148700639, i64 2148700660}
